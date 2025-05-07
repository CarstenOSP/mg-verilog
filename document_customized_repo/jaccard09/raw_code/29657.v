module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_2157_p_din0,grp_fu_2157_p_din1,grp_fu_2157_p_opcode,grp_fu_2157_p_dout0,grp_fu_2157_p_ce,grp_fu_2161_p_din0,grp_fu_2161_p_din1,grp_fu_2161_p_opcode,grp_fu_2161_p_dout0,grp_fu_2161_p_ce,grp_fu_2165_p_din0,grp_fu_2165_p_din1,grp_fu_2165_p_opcode,grp_fu_2165_p_dout0,grp_fu_2165_p_ce,grp_fu_2169_p_din0,grp_fu_2169_p_din1,grp_fu_2169_p_opcode,grp_fu_2169_p_dout0,grp_fu_2169_p_ce,grp_fu_2173_p_din0,grp_fu_2173_p_din1,grp_fu_2173_p_opcode,grp_fu_2173_p_dout0,grp_fu_2173_p_ce,grp_fu_2177_p_din0,grp_fu_2177_p_din1,grp_fu_2177_p_opcode,grp_fu_2177_p_dout0,grp_fu_2177_p_ce,grp_fu_2181_p_din0,grp_fu_2181_p_din1,grp_fu_2181_p_opcode,grp_fu_2181_p_dout0,grp_fu_2181_p_ce,grp_fu_2185_p_din0,grp_fu_2185_p_din1,grp_fu_2185_p_opcode,grp_fu_2185_p_dout0,grp_fu_2185_p_ce,grp_fu_2189_p_din0,grp_fu_2189_p_din1,grp_fu_2189_p_opcode,grp_fu_2189_p_dout0,grp_fu_2189_p_ce,grp_fu_2193_p_din0,grp_fu_2193_p_din1,grp_fu_2193_p_opcode,grp_fu_2193_p_dout0,grp_fu_2193_p_ce,grp_fu_2197_p_din0,grp_fu_2197_p_din1,grp_fu_2197_p_dout0,grp_fu_2197_p_ce,grp_fu_2202_p_din0,grp_fu_2202_p_din1,grp_fu_2202_p_dout0,grp_fu_2202_p_ce,grp_fu_2209_p_din0,grp_fu_2209_p_din1,grp_fu_2209_p_dout0,grp_fu_2209_p_ce,grp_fu_2214_p_din0,grp_fu_2214_p_din1,grp_fu_2214_p_dout0,grp_fu_2214_p_ce); 
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
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_2157_p_din0;
output  [63:0] grp_fu_2157_p_din1;
output  [1:0] grp_fu_2157_p_opcode;
input  [63:0] grp_fu_2157_p_dout0;
output   grp_fu_2157_p_ce;
output  [63:0] grp_fu_2161_p_din0;
output  [63:0] grp_fu_2161_p_din1;
output  [1:0] grp_fu_2161_p_opcode;
input  [63:0] grp_fu_2161_p_dout0;
output   grp_fu_2161_p_ce;
output  [63:0] grp_fu_2165_p_din0;
output  [63:0] grp_fu_2165_p_din1;
output  [1:0] grp_fu_2165_p_opcode;
input  [63:0] grp_fu_2165_p_dout0;
output   grp_fu_2165_p_ce;
output  [63:0] grp_fu_2169_p_din0;
output  [63:0] grp_fu_2169_p_din1;
output  [1:0] grp_fu_2169_p_opcode;
input  [63:0] grp_fu_2169_p_dout0;
output   grp_fu_2169_p_ce;
output  [63:0] grp_fu_2173_p_din0;
output  [63:0] grp_fu_2173_p_din1;
output  [1:0] grp_fu_2173_p_opcode;
input  [63:0] grp_fu_2173_p_dout0;
output   grp_fu_2173_p_ce;
output  [63:0] grp_fu_2177_p_din0;
output  [63:0] grp_fu_2177_p_din1;
output  [1:0] grp_fu_2177_p_opcode;
input  [63:0] grp_fu_2177_p_dout0;
output   grp_fu_2177_p_ce;
output  [63:0] grp_fu_2181_p_din0;
output  [63:0] grp_fu_2181_p_din1;
output  [1:0] grp_fu_2181_p_opcode;
input  [63:0] grp_fu_2181_p_dout0;
output   grp_fu_2181_p_ce;
output  [63:0] grp_fu_2185_p_din0;
output  [63:0] grp_fu_2185_p_din1;
output  [1:0] grp_fu_2185_p_opcode;
input  [63:0] grp_fu_2185_p_dout0;
output   grp_fu_2185_p_ce;
output  [63:0] grp_fu_2189_p_din0;
output  [63:0] grp_fu_2189_p_din1;
output  [1:0] grp_fu_2189_p_opcode;
input  [63:0] grp_fu_2189_p_dout0;
output   grp_fu_2189_p_ce;
output  [63:0] grp_fu_2193_p_din0;
output  [63:0] grp_fu_2193_p_din1;
output  [1:0] grp_fu_2193_p_opcode;
input  [63:0] grp_fu_2193_p_dout0;
output   grp_fu_2193_p_ce;
output  [63:0] grp_fu_2197_p_din0;
output  [63:0] grp_fu_2197_p_din1;
input  [63:0] grp_fu_2197_p_dout0;
output   grp_fu_2197_p_ce;
output  [63:0] grp_fu_2202_p_din0;
output  [63:0] grp_fu_2202_p_din1;
input  [63:0] grp_fu_2202_p_dout0;
output   grp_fu_2202_p_ce;
output  [63:0] grp_fu_2209_p_din0;
output  [63:0] grp_fu_2209_p_din1;
input  [63:0] grp_fu_2209_p_dout0;
output   grp_fu_2209_p_ce;
output  [63:0] grp_fu_2214_p_din0;
output  [63:0] grp_fu_2214_p_din1;
input  [63:0] grp_fu_2214_p_dout0;
output   grp_fu_2214_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1708;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1698;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1698_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1698_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_904_p2;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1708_pp0_iter13_reg;
wire   [5:0] trunc_ln367_fu_956_p1;
reg   [5:0] trunc_ln367_reg_1712;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter1_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter2_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter3_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter4_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter5_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter6_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter7_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter8_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter9_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter10_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter11_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter12_reg;
reg   [5:0] trunc_ln367_reg_1712_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1917;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_2_reg_1923;
reg   [63:0] c0_y_4_reg_1929;
reg   [63:0] c0_y_5_reg_1934;
reg   [63:0] DATA_y_load_2_reg_1940;
reg   [63:0] DATA_y_1_load_2_reg_1946;
reg   [63:0] DATA_y_2_load_2_reg_1952;
reg   [63:0] DATA_y_3_load_2_reg_1957;
wire   [63:0] c0_x_fu_993_p11;
reg   [63:0] c0_x_reg_1963;
wire   [63:0] c0_x_1_fu_1017_p11;
reg   [63:0] c0_x_1_reg_1969;
wire   [63:0] c0_x_2_fu_1041_p11;
reg   [63:0] c0_x_2_reg_1975;
wire   [63:0] c0_x_3_fu_1065_p11;
reg   [63:0] c0_x_3_reg_1980;
wire   [63:0] tmp_s_fu_1089_p11;
reg   [63:0] tmp_s_reg_1986;
wire   [63:0] tmp_77_fu_1113_p11;
reg   [63:0] tmp_77_reg_1992;
wire   [63:0] tmp_78_fu_1137_p11;
reg   [63:0] tmp_78_reg_1998;
wire   [63:0] tmp_79_fu_1161_p11;
reg   [63:0] tmp_79_reg_2003;
reg   [63:0] c0_x_5_reg_2009;
reg   [63:0] c0_y_3_reg_2015;
reg   [63:0] tmp_1_reg_2021;
reg   [63:0] sub_reg_2027;
reg   [63:0] tmp_1_1_reg_2033;
reg   [63:0] tmp_1_1_reg_2033_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_2033_pp0_iter4_reg;
reg   [63:0] sub1_reg_2039;
reg   [63:0] sub1_reg_2039_pp0_iter3_reg;
reg   [63:0] sub1_reg_2039_pp0_iter4_reg;
reg   [63:0] add2_reg_2045;
reg   [63:0] add3_reg_2051;
reg   [63:0] tmp_1_2_reg_2057;
reg   [63:0] sub2_reg_2062;
reg   [63:0] c0_x_7_reg_2067;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_7_reg_2073;
reg   [63:0] c0_x_4_reg_2079;
reg   [63:0] c0_x_4_reg_2079_pp0_iter3_reg;
reg   [63:0] c0_x_4_reg_2079_pp0_iter4_reg;
reg   [63:0] c0_x_4_reg_2079_pp0_iter5_reg;
reg   [63:0] c0_x_4_reg_2079_pp0_iter6_reg;
reg   [63:0] c0_y_1_reg_2085;
reg   [63:0] c0_y_1_reg_2085_pp0_iter3_reg;
reg   [63:0] c0_y_1_reg_2085_pp0_iter4_reg;
reg   [63:0] c0_y_1_reg_2085_pp0_iter5_reg;
reg   [63:0] c0_y_1_reg_2085_pp0_iter6_reg;
reg   [63:0] add_reg_2091;
reg   [63:0] add1_reg_2097;
wire   [63:0] bitcast_ln386_1_fu_1224_p1;
wire   [63:0] bitcast_ln386_3_fu_1258_p1;
wire   [63:0] bitcast_ln386_9_fu_1292_p1;
wire   [63:0] bitcast_ln386_11_fu_1327_p1;
wire   [63:0] grp_fu_852_p2;
reg   [63:0] sub3_reg_2125;
wire   [63:0] grp_fu_856_p2;
reg   [63:0] add4_reg_2130;
reg   [63:0] mul_reg_2135;
reg   [63:0] mul1_reg_2140;
wire   [63:0] grp_fu_860_p2;
reg   [63:0] sub5_reg_2145;
wire   [63:0] grp_fu_864_p2;
reg   [63:0] add6_reg_2150;
wire   [63:0] grp_fu_868_p2;
reg   [63:0] tmp_6_reg_2155;
reg   [63:0] tmp_6_reg_2155_pp0_iter5_reg;
reg   [63:0] tmp_6_reg_2155_pp0_iter6_reg;
reg   [63:0] c0_x_9_reg_2161;
reg   [63:0] c0_y_9_reg_2167;
reg   [63:0] sub6_reg_2173;
reg   [63:0] sub6_reg_2173_pp0_iter5_reg;
reg   [63:0] sub6_reg_2173_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1362_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_1396_p1;
reg   [63:0] c0_x_8_reg_2189;
reg   [63:0] c0_x_8_reg_2189_pp0_iter5_reg;
reg   [63:0] c0_x_8_reg_2189_pp0_iter6_reg;
reg   [63:0] c0_x_8_reg_2189_pp0_iter7_reg;
reg   [63:0] c0_x_8_reg_2189_pp0_iter8_reg;
reg   [63:0] c0_y_8_reg_2195;
reg   [63:0] c0_y_8_reg_2195_pp0_iter5_reg;
reg   [63:0] c0_y_8_reg_2195_pp0_iter6_reg;
reg   [63:0] c0_y_8_reg_2195_pp0_iter7_reg;
reg   [63:0] c0_y_8_reg_2195_pp0_iter8_reg;
reg   [63:0] add7_reg_2201;
reg   [63:0] add8_reg_2207;
reg   [63:0] c0_x_6_reg_2213;
reg   [63:0] c0_y_6_reg_2219;
reg   [63:0] mul2_reg_2225;
reg   [63:0] mul3_reg_2231;
reg   [63:0] mul4_reg_2237;
reg   [63:0] mul5_reg_2242;
reg   [63:0] sub4_reg_2247;
reg   [63:0] add5_reg_2253;
reg   [63:0] sub9_reg_2259;
reg   [63:0] sub9_reg_2259_pp0_iter7_reg;
reg   [63:0] sub9_reg_2259_pp0_iter8_reg;
reg   [63:0] sub9_reg_2259_pp0_iter9_reg;
reg   [63:0] sub9_reg_2259_pp0_iter10_reg;
reg   [63:0] sub9_reg_2259_pp0_iter11_reg;
reg   [63:0] sub9_reg_2259_pp0_iter12_reg;
reg   [63:0] sub9_reg_2259_pp0_iter13_reg;
reg   [63:0] sub10_reg_2264;
reg   [63:0] sub10_reg_2264_pp0_iter7_reg;
reg   [63:0] sub10_reg_2264_pp0_iter8_reg;
reg   [63:0] sub10_reg_2264_pp0_iter9_reg;
reg   [63:0] sub10_reg_2264_pp0_iter10_reg;
reg   [63:0] sub10_reg_2264_pp0_iter11_reg;
reg   [63:0] sub10_reg_2264_pp0_iter12_reg;
reg   [63:0] sub10_reg_2264_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1430_p1;
wire   [63:0] bitcast_ln386_15_fu_1464_p1;
reg   [63:0] add9_reg_2279;
reg   [63:0] add9_reg_2279_pp0_iter8_reg;
reg   [63:0] add9_reg_2279_pp0_iter9_reg;
reg   [63:0] add9_reg_2279_pp0_iter10_reg;
reg   [63:0] add9_reg_2279_pp0_iter11_reg;
reg   [63:0] add9_reg_2279_pp0_iter12_reg;
reg   [63:0] add9_reg_2279_pp0_iter13_reg;
reg   [63:0] add10_reg_2284;
reg   [63:0] add10_reg_2284_pp0_iter8_reg;
reg   [63:0] add10_reg_2284_pp0_iter9_reg;
reg   [63:0] add10_reg_2284_pp0_iter10_reg;
reg   [63:0] add10_reg_2284_pp0_iter11_reg;
reg   [63:0] add10_reg_2284_pp0_iter12_reg;
reg   [63:0] add10_reg_2284_pp0_iter13_reg;
reg   [63:0] add13_reg_2289;
reg   [63:0] add13_reg_2289_pp0_iter9_reg;
reg   [63:0] add14_reg_2294;
reg   [63:0] add14_reg_2294_pp0_iter9_reg;
reg   [63:0] tmp_7_reg_2299;
reg   [63:0] tmp_7_reg_2299_pp0_iter9_reg;
reg   [63:0] sub13_reg_2305;
reg   [63:0] sub13_reg_2305_pp0_iter9_reg;
reg   [63:0] c0_x_11_reg_2311;
reg   [63:0] c0_y_11_reg_2316;
reg   [63:0] c0_x_10_reg_2321;
reg   [63:0] c0_x_10_reg_2321_pp0_iter9_reg;
reg   [63:0] c0_x_10_reg_2321_pp0_iter10_reg;
reg   [63:0] c0_x_10_reg_2321_pp0_iter11_reg;
reg   [63:0] c0_y_10_reg_2327;
reg   [63:0] c0_y_10_reg_2327_pp0_iter9_reg;
reg   [63:0] c0_y_10_reg_2327_pp0_iter10_reg;
reg   [63:0] c0_y_10_reg_2327_pp0_iter11_reg;
reg   [63:0] sub7_reg_2333;
reg   [63:0] sub8_reg_2339;
reg   [63:0] mul6_reg_2345;
reg   [63:0] mul7_reg_2350;
wire   [63:0] bitcast_ln386_17_fu_1498_p1;
wire   [63:0] bitcast_ln386_19_fu_1532_p1;
reg   [63:0] add11_reg_2365;
reg   [63:0] add11_reg_2365_pp0_iter11_reg;
reg   [63:0] add11_reg_2365_pp0_iter12_reg;
reg   [63:0] add15_reg_2370;
reg   [63:0] add15_reg_2370_pp0_iter11_reg;
reg   [63:0] add15_reg_2370_pp0_iter12_reg;
reg   [63:0] add16_reg_2375;
reg   [63:0] add16_reg_2375_pp0_iter11_reg;
reg   [63:0] add16_reg_2375_pp0_iter12_reg;
reg   [63:0] add12_reg_2380;
reg   [63:0] add12_reg_2380_pp0_iter12_reg;
reg   [63:0] add12_reg_2380_pp0_iter13_reg;
reg   [63:0] sub11_reg_2385;
reg   [63:0] sub11_reg_2385_pp0_iter12_reg;
reg   [63:0] sub11_reg_2385_pp0_iter13_reg;
reg   [63:0] sub11_reg_2385_pp0_iter14_reg;
reg   [63:0] sub12_reg_2390;
reg   [63:0] sub12_reg_2390_pp0_iter12_reg;
reg   [63:0] sub12_reg_2390_pp0_iter13_reg;
reg   [63:0] sub12_reg_2390_pp0_iter14_reg;
reg   [63:0] sub16_reg_2395;
reg   [63:0] sub16_reg_2395_pp0_iter12_reg;
reg   [63:0] sub16_reg_2395_pp0_iter13_reg;
reg   [63:0] sub16_reg_2395_pp0_iter14_reg;
reg   [63:0] sub17_reg_2400;
reg   [63:0] sub17_reg_2400_pp0_iter12_reg;
reg   [63:0] sub17_reg_2400_pp0_iter13_reg;
reg   [63:0] sub17_reg_2400_pp0_iter14_reg;
reg   [63:0] sub14_reg_2405;
reg   [63:0] sub15_reg_2411;
reg   [63:0] add17_reg_2417;
reg   [63:0] add18_reg_2422;
wire  signed [6:0] zext_ln390_cast_fu_1537_p3;
reg  signed [6:0] zext_ln390_cast_reg_2427;
wire  signed [7:0] zext_ln391_cast_fu_1554_p3;
reg  signed [7:0] zext_ln391_cast_reg_2433;
reg   [63:0] sub18_reg_2438;
reg   [63:0] sub19_reg_2443;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_1_fu_966_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln371_fu_982_p1;
wire   [63:0] zext_ln367_fu_920_p1;
wire   [63:0] zext_ln390_fu_1544_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1561_p1;
wire   [63:0] zext_ln365_fu_1579_p1;
wire   [63:0] zext_ln392_fu_1591_p1;
wire   [63:0] zext_ln393_1_fu_1620_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1633_p1;
wire   [63:0] zext_ln394_fu_1660_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1673_p1;
reg   [6:0] tid_fu_146;
wire   [6:0] add_ln365_fu_1185_p2;
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
reg    DATA_x_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_x_31_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1550_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1567_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1584_p1;
wire   [63:0] bitcast_ln392_fu_1597_p1;
wire   [63:0] bitcast_ln393_fu_1626_p1;
wire   [63:0] bitcast_ln395_fu_1639_p1;
wire   [63:0] bitcast_ln394_fu_1666_p1;
wire   [63:0] bitcast_ln396_fu_1679_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1571_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1575_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1601_p1;
wire   [63:0] bitcast_ln401_fu_1605_p1;
wire   [63:0] bitcast_ln402_fu_1643_p1;
wire   [63:0] bitcast_ln404_fu_1647_p1;
wire   [63:0] bitcast_ln403_fu_1683_p1;
wire   [63:0] bitcast_ln405_fu_1687_p1;
reg   [63:0] grp_fu_812_p0;
reg   [63:0] grp_fu_812_p1;
reg   [63:0] grp_fu_816_p0;
reg   [63:0] grp_fu_816_p1;
reg   [63:0] grp_fu_820_p0;
reg   [63:0] grp_fu_820_p1;
reg   [63:0] grp_fu_824_p0;
reg   [63:0] grp_fu_824_p1;
reg   [63:0] grp_fu_828_p0;
reg   [63:0] grp_fu_828_p1;
reg   [63:0] grp_fu_832_p0;
reg   [63:0] grp_fu_832_p1;
reg   [63:0] grp_fu_836_p0;
reg   [63:0] grp_fu_836_p1;
reg   [63:0] grp_fu_840_p0;
reg   [63:0] grp_fu_840_p1;
reg   [63:0] grp_fu_844_p0;
reg   [63:0] grp_fu_844_p1;
reg   [63:0] grp_fu_848_p0;
reg   [63:0] grp_fu_848_p1;
reg   [63:0] grp_fu_852_p0;
reg   [63:0] grp_fu_852_p1;
reg   [63:0] grp_fu_856_p0;
reg   [63:0] grp_fu_856_p1;
reg   [63:0] grp_fu_860_p0;
reg   [63:0] grp_fu_860_p1;
reg   [63:0] grp_fu_864_p0;
reg   [63:0] grp_fu_864_p1;
reg   [63:0] grp_fu_868_p0;
reg   [63:0] grp_fu_868_p1;
reg   [63:0] grp_fu_872_p0;
reg   [63:0] grp_fu_872_p1;
reg   [63:0] grp_fu_877_p0;
reg   [63:0] grp_fu_877_p1;
reg   [63:0] grp_fu_884_p0;
reg   [63:0] grp_fu_884_p1;
reg   [63:0] grp_fu_889_p0;
reg   [63:0] grp_fu_889_p1;
wire   [3:0] lshr_ln_fu_910_p4;
wire   [6:0] shl_ln367_fu_960_p2;
wire   [6:0] or_ln_fu_974_p3;
wire   [63:0] c0_x_fu_993_p9;
wire   [1:0] trunc_ln365_fu_990_p1;
wire   [63:0] c0_x_1_fu_1017_p9;
wire   [63:0] c0_x_2_fu_1041_p9;
wire   [63:0] c0_x_3_fu_1065_p9;
wire   [63:0] tmp_s_fu_1089_p9;
wire   [63:0] tmp_77_fu_1113_p9;
wire   [63:0] tmp_78_fu_1137_p9;
wire   [63:0] tmp_79_fu_1161_p9;
wire   [63:0] bitcast_ln386_fu_1195_p1;
wire   [0:0] bit_sel_fu_1198_p3;
wire   [0:0] xor_ln386_10_fu_1206_p2;
wire   [62:0] trunc_ln386_fu_1212_p1;
wire   [63:0] xor_ln3_fu_1216_p3;
wire   [63:0] bitcast_ln386_2_fu_1229_p1;
wire   [0:0] bit_sel1_fu_1232_p3;
wire   [0:0] xor_ln386_fu_1240_p2;
wire   [62:0] trunc_ln386_1_fu_1246_p1;
wire   [63:0] xor_ln386_1_fu_1250_p3;
wire   [63:0] bitcast_ln386_8_fu_1263_p1;
wire   [0:0] bit_sel4_fu_1266_p3;
wire   [0:0] xor_ln386_13_fu_1274_p2;
wire   [62:0] trunc_ln386_4_fu_1280_p1;
wire   [63:0] xor_ln386_4_fu_1284_p3;
wire   [63:0] bitcast_ln386_10_fu_1298_p1;
wire   [0:0] bit_sel5_fu_1301_p3;
wire   [0:0] xor_ln386_14_fu_1309_p2;
wire   [62:0] trunc_ln386_5_fu_1315_p1;
wire   [63:0] xor_ln386_5_fu_1319_p3;
wire   [63:0] bitcast_ln386_4_fu_1333_p1;
wire   [0:0] bit_sel2_fu_1336_p3;
wire   [0:0] xor_ln386_11_fu_1344_p2;
wire   [62:0] trunc_ln386_2_fu_1350_p1;
wire   [63:0] xor_ln386_2_fu_1354_p3;
wire   [63:0] bitcast_ln386_6_fu_1367_p1;
wire   [0:0] bit_sel3_fu_1370_p3;
wire   [0:0] xor_ln386_12_fu_1378_p2;
wire   [62:0] trunc_ln386_3_fu_1384_p1;
wire   [63:0] xor_ln386_3_fu_1388_p3;
wire   [63:0] bitcast_ln386_12_fu_1401_p1;
wire   [0:0] bit_sel6_fu_1404_p3;
wire   [0:0] xor_ln386_15_fu_1412_p2;
wire   [62:0] trunc_ln386_6_fu_1418_p1;
wire   [63:0] xor_ln386_6_fu_1422_p3;
wire   [63:0] bitcast_ln386_14_fu_1435_p1;
wire   [0:0] bit_sel7_fu_1438_p3;
wire   [0:0] xor_ln386_16_fu_1446_p2;
wire   [62:0] trunc_ln386_7_fu_1452_p1;
wire   [63:0] xor_ln386_7_fu_1456_p3;
wire   [63:0] bitcast_ln386_16_fu_1469_p1;
wire   [0:0] bit_sel8_fu_1472_p3;
wire   [0:0] xor_ln386_17_fu_1480_p2;
wire   [62:0] trunc_ln386_8_fu_1486_p1;
wire   [63:0] xor_ln386_8_fu_1490_p3;
wire   [63:0] bitcast_ln386_18_fu_1503_p1;
wire   [0:0] bit_sel9_fu_1506_p3;
wire   [0:0] xor_ln386_18_fu_1514_p2;
wire   [62:0] trunc_ln386_9_fu_1520_p1;
wire   [63:0] xor_ln386_9_fu_1524_p3;
wire  signed [7:0] sext_ln392_fu_1588_p1;
wire   [7:0] zext_ln393_fu_1609_p1;
wire   [8:0] zext_ln393_cast_fu_1612_p3;
wire  signed [8:0] sext_ln395_fu_1630_p1;
wire   [8:0] zext_ln365_1_fu_1651_p1;
wire   [8:0] add_ln394_fu_1654_p2;
wire  signed [8:0] sext_ln396_fu_1670_p1;
reg   [1:0] grp_fu_812_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_816_opcode;
reg   [1:0] grp_fu_820_opcode;
reg   [1:0] grp_fu_824_opcode;
reg   [1:0] grp_fu_828_opcode;
reg   [1:0] grp_fu_832_opcode;
reg   [1:0] grp_fu_836_opcode;
reg   [1:0] grp_fu_840_opcode;
reg   [1:0] grp_fu_844_opcode;
reg   [1:0] grp_fu_848_opcode;
reg   [1:0] grp_fu_852_opcode;
reg   [1:0] grp_fu_856_opcode;
reg   [1:0] grp_fu_860_opcode;
reg   [1:0] grp_fu_864_opcode;
reg   [1:0] grp_fu_868_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage2;
reg    ap_idle_pp0_0to12;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] c0_x_fu_993_p1;
wire   [1:0] c0_x_fu_993_p3;
wire  signed [1:0] c0_x_fu_993_p5;
wire  signed [1:0] c0_x_fu_993_p7;
wire   [1:0] c0_x_1_fu_1017_p1;
wire   [1:0] c0_x_1_fu_1017_p3;
wire  signed [1:0] c0_x_1_fu_1017_p5;
wire  signed [1:0] c0_x_1_fu_1017_p7;
wire   [1:0] c0_x_2_fu_1041_p1;
wire   [1:0] c0_x_2_fu_1041_p3;
wire  signed [1:0] c0_x_2_fu_1041_p5;
wire  signed [1:0] c0_x_2_fu_1041_p7;
wire   [1:0] c0_x_3_fu_1065_p1;
wire   [1:0] c0_x_3_fu_1065_p3;
wire  signed [1:0] c0_x_3_fu_1065_p5;
wire  signed [1:0] c0_x_3_fu_1065_p7;
wire   [1:0] tmp_s_fu_1089_p1;
wire   [1:0] tmp_s_fu_1089_p3;
wire  signed [1:0] tmp_s_fu_1089_p5;
wire  signed [1:0] tmp_s_fu_1089_p7;
wire   [1:0] tmp_77_fu_1113_p1;
wire   [1:0] tmp_77_fu_1113_p3;
wire  signed [1:0] tmp_77_fu_1113_p5;
wire  signed [1:0] tmp_77_fu_1113_p7;
wire   [1:0] tmp_78_fu_1137_p1;
wire   [1:0] tmp_78_fu_1137_p3;
wire  signed [1:0] tmp_78_fu_1137_p5;
wire  signed [1:0] tmp_78_fu_1137_p7;
wire   [1:0] tmp_79_fu_1161_p1;
wire   [1:0] tmp_79_fu_1161_p3;
wire  signed [1:0] tmp_79_fu_1161_p5;
wire  signed [1:0] tmp_79_fu_1161_p7;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_146 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U588(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_852_p0),.din1(grp_fu_852_p1),.opcode(grp_fu_852_opcode),.ce(1'b1),.dout(grp_fu_852_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U589(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_856_p0),.din1(grp_fu_856_p1),.opcode(grp_fu_856_opcode),.ce(1'b1),.dout(grp_fu_856_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U590(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_860_p0),.din1(grp_fu_860_p1),.opcode(grp_fu_860_opcode),.ce(1'b1),.dout(grp_fu_860_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U591(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_864_p0),.din1(grp_fu_864_p1),.opcode(grp_fu_864_opcode),.ce(1'b1),.dout(grp_fu_864_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U592(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_868_p0),.din1(grp_fu_868_p1),.opcode(grp_fu_868_opcode),.ce(1'b1),.dout(grp_fu_868_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U597(.din0(DATA_x_q0),.din1(DATA_x_8_q0),.din2(DATA_x_16_q0),.din3(DATA_x_24_q0),.def(c0_x_fu_993_p9),.sel(trunc_ln365_fu_990_p1),.dout(c0_x_fu_993_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U598(.din0(DATA_x_1_q0),.din1(DATA_x_9_q0),.din2(DATA_x_17_q0),.din3(DATA_x_25_q0),.def(c0_x_1_fu_1017_p9),.sel(trunc_ln365_fu_990_p1),.dout(c0_x_1_fu_1017_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U599(.din0(DATA_x_2_q0),.din1(DATA_x_10_q0),.din2(DATA_x_18_q0),.din3(DATA_x_26_q0),.def(c0_x_2_fu_1041_p9),.sel(trunc_ln365_fu_990_p1),.dout(c0_x_2_fu_1041_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U600(.din0(DATA_x_3_q0),.din1(DATA_x_11_q0),.din2(DATA_x_19_q0),.din3(DATA_x_27_q0),.def(c0_x_3_fu_1065_p9),.sel(trunc_ln365_fu_990_p1),.dout(c0_x_3_fu_1065_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U601(.din0(DATA_x_4_q0),.din1(DATA_x_12_q0),.din2(DATA_x_20_q0),.din3(DATA_x_28_q0),.def(tmp_s_fu_1089_p9),.sel(trunc_ln365_fu_990_p1),.dout(tmp_s_fu_1089_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U602(.din0(DATA_x_5_q0),.din1(DATA_x_13_q0),.din2(DATA_x_21_q0),.din3(DATA_x_29_q0),.def(tmp_77_fu_1113_p9),.sel(trunc_ln365_fu_990_p1),.dout(tmp_77_fu_1113_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U603(.din0(DATA_x_6_q0),.din1(DATA_x_14_q0),.din2(DATA_x_22_q0),.din3(DATA_x_30_q0),.def(tmp_78_fu_1137_p9),.sel(trunc_ln365_fu_990_p1),.dout(tmp_78_fu_1137_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U604(.din0(DATA_x_7_q0),.din1(DATA_x_15_q0),.din2(DATA_x_23_q0),.din3(DATA_x_31_q0),.def(tmp_79_fu_1161_p9),.sel(trunc_ln365_fu_990_p1),.dout(tmp_79_fu_1161_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_146 <= 7'd0;
    end else if (((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_146 <= add_ln365_fu_1185_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_2_reg_1946 <= DATA_y_1_q0;
        DATA_y_2_load_2_reg_1952 <= DATA_y_2_q0;
        DATA_y_3_load_2_reg_1957 <= DATA_y_3_q0;
        DATA_y_load_2_reg_1940 <= DATA_y_q0;
        c0_y_2_reg_1923 <= DATA_y_1_q1;
        c0_y_4_reg_1929 <= DATA_y_2_q1;
        c0_y_5_reg_1934 <= DATA_y_3_q1;
        c0_y_reg_1917 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_2284 <= grp_fu_2161_p_dout0;
        add9_reg_2279 <= grp_fu_2157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_2284_pp0_iter10_reg <= add10_reg_2284_pp0_iter9_reg;
        add10_reg_2284_pp0_iter11_reg <= add10_reg_2284_pp0_iter10_reg;
        add10_reg_2284_pp0_iter12_reg <= add10_reg_2284_pp0_iter11_reg;
        add10_reg_2284_pp0_iter13_reg <= add10_reg_2284_pp0_iter12_reg;
        add10_reg_2284_pp0_iter8_reg <= add10_reg_2284;
        add10_reg_2284_pp0_iter9_reg <= add10_reg_2284_pp0_iter8_reg;
        add12_reg_2380_pp0_iter12_reg <= add12_reg_2380;
        add12_reg_2380_pp0_iter13_reg <= add12_reg_2380_pp0_iter12_reg;
        add13_reg_2289_pp0_iter9_reg <= add13_reg_2289;
        add14_reg_2294_pp0_iter9_reg <= add14_reg_2294;
        add9_reg_2279_pp0_iter10_reg <= add9_reg_2279_pp0_iter9_reg;
        add9_reg_2279_pp0_iter11_reg <= add9_reg_2279_pp0_iter10_reg;
        add9_reg_2279_pp0_iter12_reg <= add9_reg_2279_pp0_iter11_reg;
        add9_reg_2279_pp0_iter13_reg <= add9_reg_2279_pp0_iter12_reg;
        add9_reg_2279_pp0_iter8_reg <= add9_reg_2279;
        add9_reg_2279_pp0_iter9_reg <= add9_reg_2279_pp0_iter8_reg;
        icmp_ln365_reg_1708 <= icmp_ln365_fu_904_p2;
        icmp_ln365_reg_1708_pp0_iter10_reg <= icmp_ln365_reg_1708_pp0_iter9_reg;
        icmp_ln365_reg_1708_pp0_iter11_reg <= icmp_ln365_reg_1708_pp0_iter10_reg;
        icmp_ln365_reg_1708_pp0_iter12_reg <= icmp_ln365_reg_1708_pp0_iter11_reg;
        icmp_ln365_reg_1708_pp0_iter13_reg <= icmp_ln365_reg_1708_pp0_iter12_reg;
        icmp_ln365_reg_1708_pp0_iter1_reg <= icmp_ln365_reg_1708;
        icmp_ln365_reg_1708_pp0_iter2_reg <= icmp_ln365_reg_1708_pp0_iter1_reg;
        icmp_ln365_reg_1708_pp0_iter3_reg <= icmp_ln365_reg_1708_pp0_iter2_reg;
        icmp_ln365_reg_1708_pp0_iter4_reg <= icmp_ln365_reg_1708_pp0_iter3_reg;
        icmp_ln365_reg_1708_pp0_iter5_reg <= icmp_ln365_reg_1708_pp0_iter4_reg;
        icmp_ln365_reg_1708_pp0_iter6_reg <= icmp_ln365_reg_1708_pp0_iter5_reg;
        icmp_ln365_reg_1708_pp0_iter7_reg <= icmp_ln365_reg_1708_pp0_iter6_reg;
        icmp_ln365_reg_1708_pp0_iter8_reg <= icmp_ln365_reg_1708_pp0_iter7_reg;
        icmp_ln365_reg_1708_pp0_iter9_reg <= icmp_ln365_reg_1708_pp0_iter8_reg;
        sub11_reg_2385_pp0_iter12_reg <= sub11_reg_2385;
        sub11_reg_2385_pp0_iter13_reg <= sub11_reg_2385_pp0_iter12_reg;
        sub11_reg_2385_pp0_iter14_reg <= sub11_reg_2385_pp0_iter13_reg;
        sub12_reg_2390_pp0_iter12_reg <= sub12_reg_2390;
        sub12_reg_2390_pp0_iter13_reg <= sub12_reg_2390_pp0_iter12_reg;
        sub12_reg_2390_pp0_iter14_reg <= sub12_reg_2390_pp0_iter13_reg;
        sub13_reg_2305_pp0_iter9_reg <= sub13_reg_2305;
        sub16_reg_2395_pp0_iter12_reg <= sub16_reg_2395;
        sub16_reg_2395_pp0_iter13_reg <= sub16_reg_2395_pp0_iter12_reg;
        sub16_reg_2395_pp0_iter14_reg <= sub16_reg_2395_pp0_iter13_reg;
        sub17_reg_2400_pp0_iter12_reg <= sub17_reg_2400;
        sub17_reg_2400_pp0_iter13_reg <= sub17_reg_2400_pp0_iter12_reg;
        sub17_reg_2400_pp0_iter14_reg <= sub17_reg_2400_pp0_iter13_reg;
        tid_5_reg_1698 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1698_pp0_iter10_reg <= tid_5_reg_1698_pp0_iter9_reg;
        tid_5_reg_1698_pp0_iter11_reg <= tid_5_reg_1698_pp0_iter10_reg;
        tid_5_reg_1698_pp0_iter12_reg <= tid_5_reg_1698_pp0_iter11_reg;
        tid_5_reg_1698_pp0_iter13_reg <= tid_5_reg_1698_pp0_iter12_reg;
        tid_5_reg_1698_pp0_iter14_reg <= tid_5_reg_1698_pp0_iter13_reg;
        tid_5_reg_1698_pp0_iter1_reg <= tid_5_reg_1698;
        tid_5_reg_1698_pp0_iter2_reg <= tid_5_reg_1698_pp0_iter1_reg;
        tid_5_reg_1698_pp0_iter3_reg <= tid_5_reg_1698_pp0_iter2_reg;
        tid_5_reg_1698_pp0_iter4_reg <= tid_5_reg_1698_pp0_iter3_reg;
        tid_5_reg_1698_pp0_iter5_reg <= tid_5_reg_1698_pp0_iter4_reg;
        tid_5_reg_1698_pp0_iter6_reg <= tid_5_reg_1698_pp0_iter5_reg;
        tid_5_reg_1698_pp0_iter7_reg <= tid_5_reg_1698_pp0_iter6_reg;
        tid_5_reg_1698_pp0_iter8_reg <= tid_5_reg_1698_pp0_iter7_reg;
        tid_5_reg_1698_pp0_iter9_reg <= tid_5_reg_1698_pp0_iter8_reg;
        tmp_7_reg_2299_pp0_iter9_reg <= tmp_7_reg_2299;
        trunc_ln367_reg_1712 <= trunc_ln367_fu_956_p1;
        trunc_ln367_reg_1712_pp0_iter10_reg <= trunc_ln367_reg_1712_pp0_iter9_reg;
        trunc_ln367_reg_1712_pp0_iter11_reg <= trunc_ln367_reg_1712_pp0_iter10_reg;
        trunc_ln367_reg_1712_pp0_iter12_reg <= trunc_ln367_reg_1712_pp0_iter11_reg;
        trunc_ln367_reg_1712_pp0_iter13_reg <= trunc_ln367_reg_1712_pp0_iter12_reg;
        trunc_ln367_reg_1712_pp0_iter1_reg <= trunc_ln367_reg_1712;
        trunc_ln367_reg_1712_pp0_iter2_reg <= trunc_ln367_reg_1712_pp0_iter1_reg;
        trunc_ln367_reg_1712_pp0_iter3_reg <= trunc_ln367_reg_1712_pp0_iter2_reg;
        trunc_ln367_reg_1712_pp0_iter4_reg <= trunc_ln367_reg_1712_pp0_iter3_reg;
        trunc_ln367_reg_1712_pp0_iter5_reg <= trunc_ln367_reg_1712_pp0_iter4_reg;
        trunc_ln367_reg_1712_pp0_iter6_reg <= trunc_ln367_reg_1712_pp0_iter5_reg;
        trunc_ln367_reg_1712_pp0_iter7_reg <= trunc_ln367_reg_1712_pp0_iter6_reg;
        trunc_ln367_reg_1712_pp0_iter8_reg <= trunc_ln367_reg_1712_pp0_iter7_reg;
        trunc_ln367_reg_1712_pp0_iter9_reg <= trunc_ln367_reg_1712_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_2365 <= grp_fu_2189_p_dout0;
        add15_reg_2370 <= grp_fu_2193_p_dout0;
        add16_reg_2375 <= grp_fu_852_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_2365_pp0_iter11_reg <= add11_reg_2365;
        add11_reg_2365_pp0_iter12_reg <= add11_reg_2365_pp0_iter11_reg;
        add15_reg_2370_pp0_iter11_reg <= add15_reg_2370;
        add15_reg_2370_pp0_iter12_reg <= add15_reg_2370_pp0_iter11_reg;
        add16_reg_2375_pp0_iter11_reg <= add16_reg_2375;
        add16_reg_2375_pp0_iter12_reg <= add16_reg_2375_pp0_iter11_reg;
        c0_x_8_reg_2189_pp0_iter5_reg <= c0_x_8_reg_2189;
        c0_x_8_reg_2189_pp0_iter6_reg <= c0_x_8_reg_2189_pp0_iter5_reg;
        c0_x_8_reg_2189_pp0_iter7_reg <= c0_x_8_reg_2189_pp0_iter6_reg;
        c0_x_8_reg_2189_pp0_iter8_reg <= c0_x_8_reg_2189_pp0_iter7_reg;
        c0_y_8_reg_2195_pp0_iter5_reg <= c0_y_8_reg_2195;
        c0_y_8_reg_2195_pp0_iter6_reg <= c0_y_8_reg_2195_pp0_iter5_reg;
        c0_y_8_reg_2195_pp0_iter7_reg <= c0_y_8_reg_2195_pp0_iter6_reg;
        c0_y_8_reg_2195_pp0_iter8_reg <= c0_y_8_reg_2195_pp0_iter7_reg;
        sub10_reg_2264_pp0_iter10_reg <= sub10_reg_2264_pp0_iter9_reg;
        sub10_reg_2264_pp0_iter11_reg <= sub10_reg_2264_pp0_iter10_reg;
        sub10_reg_2264_pp0_iter12_reg <= sub10_reg_2264_pp0_iter11_reg;
        sub10_reg_2264_pp0_iter13_reg <= sub10_reg_2264_pp0_iter12_reg;
        sub10_reg_2264_pp0_iter7_reg <= sub10_reg_2264;
        sub10_reg_2264_pp0_iter8_reg <= sub10_reg_2264_pp0_iter7_reg;
        sub10_reg_2264_pp0_iter9_reg <= sub10_reg_2264_pp0_iter8_reg;
        sub9_reg_2259_pp0_iter10_reg <= sub9_reg_2259_pp0_iter9_reg;
        sub9_reg_2259_pp0_iter11_reg <= sub9_reg_2259_pp0_iter10_reg;
        sub9_reg_2259_pp0_iter12_reg <= sub9_reg_2259_pp0_iter11_reg;
        sub9_reg_2259_pp0_iter13_reg <= sub9_reg_2259_pp0_iter12_reg;
        sub9_reg_2259_pp0_iter7_reg <= sub9_reg_2259;
        sub9_reg_2259_pp0_iter8_reg <= sub9_reg_2259_pp0_iter7_reg;
        sub9_reg_2259_pp0_iter9_reg <= sub9_reg_2259_pp0_iter8_reg;
        zext_ln390_cast_reg_2427[5 : 0] <= zext_ln390_cast_fu_1537_p3[5 : 0];
        zext_ln391_cast_reg_2433[6 : 0] <= zext_ln391_cast_fu_1554_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add12_reg_2380 <= grp_fu_2181_p_dout0;
        sub11_reg_2385 <= grp_fu_2185_p_dout0;
        sub12_reg_2390 <= grp_fu_2189_p_dout0;
        sub16_reg_2395 <= grp_fu_2193_p_dout0;
        sub17_reg_2400 <= grp_fu_852_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add13_reg_2289 <= grp_fu_2165_p_dout0;
        add14_reg_2294 <= grp_fu_2169_p_dout0;
        sub13_reg_2305 <= grp_fu_2177_p_dout0;
        tmp_7_reg_2299 <= grp_fu_2173_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_2417 <= grp_fu_864_p2;
        add18_reg_2422 <= grp_fu_868_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1_reg_2097 <= grp_fu_2177_p_dout0;
        add_reg_2091 <= grp_fu_2173_p_dout0;
        c0_x_4_reg_2079 <= grp_fu_2165_p_dout0;
        c0_x_7_reg_2067 <= grp_fu_2157_p_dout0;
        c0_y_1_reg_2085 <= grp_fu_2169_p_dout0;
        c0_y_7_reg_2073 <= grp_fu_2161_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add2_reg_2045 <= grp_fu_2181_p_dout0;
        add3_reg_2051 <= grp_fu_2185_p_dout0;
        c0_x_5_reg_2009 <= grp_fu_2157_p_dout0;
        c0_y_3_reg_2015 <= grp_fu_2161_p_dout0;
        sub1_reg_2039 <= grp_fu_2177_p_dout0;
        sub2_reg_2062 <= grp_fu_2193_p_dout0;
        sub_reg_2027 <= grp_fu_2169_p_dout0;
        tmp_1_1_reg_2033 <= grp_fu_2173_p_dout0;
        tmp_1_2_reg_2057 <= grp_fu_2189_p_dout0;
        tmp_1_reg_2021 <= grp_fu_2165_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add4_reg_2130 <= grp_fu_856_p2;
        add6_reg_2150 <= grp_fu_864_p2;
        mul1_reg_2140 <= grp_fu_2202_p_dout0;
        mul_reg_2135 <= grp_fu_2197_p_dout0;
        sub3_reg_2125 <= grp_fu_852_p2;
        sub5_reg_2145 <= grp_fu_860_p2;
        tmp_6_reg_2155 <= grp_fu_868_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add5_reg_2253 <= grp_fu_852_p2;
        sub4_reg_2247 <= grp_fu_2193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add7_reg_2201 <= grp_fu_2165_p_dout0;
        add8_reg_2207 <= grp_fu_2169_p_dout0;
        c0_x_8_reg_2189 <= grp_fu_2157_p_dout0;
        c0_y_8_reg_2195 <= grp_fu_2161_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_2321 <= grp_fu_864_p2;
        c0_x_11_reg_2311 <= grp_fu_856_p2;
        c0_y_10_reg_2327 <= grp_fu_868_p2;
        c0_y_11_reg_2316 <= grp_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_2321_pp0_iter10_reg <= c0_x_10_reg_2321_pp0_iter9_reg;
        c0_x_10_reg_2321_pp0_iter11_reg <= c0_x_10_reg_2321_pp0_iter10_reg;
        c0_x_10_reg_2321_pp0_iter9_reg <= c0_x_10_reg_2321;
        c0_x_4_reg_2079_pp0_iter3_reg <= c0_x_4_reg_2079;
        c0_x_4_reg_2079_pp0_iter4_reg <= c0_x_4_reg_2079_pp0_iter3_reg;
        c0_x_4_reg_2079_pp0_iter5_reg <= c0_x_4_reg_2079_pp0_iter4_reg;
        c0_x_4_reg_2079_pp0_iter6_reg <= c0_x_4_reg_2079_pp0_iter5_reg;
        c0_y_10_reg_2327_pp0_iter10_reg <= c0_y_10_reg_2327_pp0_iter9_reg;
        c0_y_10_reg_2327_pp0_iter11_reg <= c0_y_10_reg_2327_pp0_iter10_reg;
        c0_y_10_reg_2327_pp0_iter9_reg <= c0_y_10_reg_2327;
        c0_y_1_reg_2085_pp0_iter3_reg <= c0_y_1_reg_2085;
        c0_y_1_reg_2085_pp0_iter4_reg <= c0_y_1_reg_2085_pp0_iter3_reg;
        c0_y_1_reg_2085_pp0_iter5_reg <= c0_y_1_reg_2085_pp0_iter4_reg;
        c0_y_1_reg_2085_pp0_iter6_reg <= c0_y_1_reg_2085_pp0_iter5_reg;
        sub6_reg_2173_pp0_iter5_reg <= sub6_reg_2173;
        sub6_reg_2173_pp0_iter6_reg <= sub6_reg_2173_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_1_reg_1969 <= c0_x_1_fu_1017_p11;
        c0_x_2_reg_1975 <= c0_x_2_fu_1041_p11;
        c0_x_3_reg_1980 <= c0_x_3_fu_1065_p11;
        c0_x_reg_1963 <= c0_x_fu_993_p11;
        sub1_reg_2039_pp0_iter3_reg <= sub1_reg_2039;
        sub1_reg_2039_pp0_iter4_reg <= sub1_reg_2039_pp0_iter3_reg;
        tmp_1_1_reg_2033_pp0_iter3_reg <= tmp_1_1_reg_2033;
        tmp_1_1_reg_2033_pp0_iter4_reg <= tmp_1_1_reg_2033_pp0_iter3_reg;
        tmp_6_reg_2155_pp0_iter5_reg <= tmp_6_reg_2155;
        tmp_6_reg_2155_pp0_iter6_reg <= tmp_6_reg_2155_pp0_iter5_reg;
        tmp_77_reg_1992 <= tmp_77_fu_1113_p11;
        tmp_78_reg_1998 <= tmp_78_fu_1137_p11;
        tmp_79_reg_2003 <= tmp_79_fu_1161_p11;
        tmp_s_reg_1986 <= tmp_s_fu_1089_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_6_reg_2213 <= grp_fu_2197_p_dout0;
        c0_y_6_reg_2219 <= grp_fu_2202_p_dout0;
        mul2_reg_2225 <= grp_fu_2209_p_dout0;
        mul3_reg_2231 <= grp_fu_2214_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_9_reg_2161 <= grp_fu_2181_p_dout0;
        c0_y_9_reg_2167 <= grp_fu_2185_p_dout0;
        sub6_reg_2173 <= grp_fu_2189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul4_reg_2237 <= grp_fu_2209_p_dout0;
        mul5_reg_2242 <= grp_fu_2214_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul6_reg_2345 <= grp_fu_2197_p_dout0;
        mul7_reg_2350 <= grp_fu_2202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub10_reg_2264 <= grp_fu_2177_p_dout0;
        sub9_reg_2259 <= grp_fu_2173_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub14_reg_2405 <= grp_fu_856_p2;
        sub15_reg_2411 <= grp_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub18_reg_2438 <= grp_fu_856_p2;
        sub19_reg_2443 <= grp_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub7_reg_2333 <= grp_fu_2181_p_dout0;
        sub8_reg_2339 <= grp_fu_2185_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_16_ce0_local = 1'b1;
    end else begin
        DATA_x_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_18_ce0_local = 1'b1;
    end else begin
        DATA_x_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
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
        DATA_x_20_ce0_local = 1'b1;
    end else begin
        DATA_x_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_22_ce0_local = 1'b1;
    end else begin
        DATA_x_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_24_ce0_local = 1'b1;
    end else begin
        DATA_x_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_26_ce0_local = 1'b1;
    end else begin
        DATA_x_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_28_ce0_local = 1'b1;
    end else begin
        DATA_x_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
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
        DATA_x_30_ce0_local = 1'b1;
    end else begin
        DATA_x_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
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
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
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
    if (((icmp_ln365_reg_1708 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1708_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
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
        ap_sig_allocacmp_tid_5 = tid_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_812_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_812_opcode = 2'd0;
    end else begin
        grp_fu_812_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_812_p0 = c0_x_9_reg_2161;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_812_p0 = c0_x_7_reg_2067;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p0 = c0_x_reg_1963;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p0 = c0_x_1_reg_1969;
    end else begin
        grp_fu_812_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_812_p1 = add7_reg_2201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_812_p1 = add_reg_2091;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p1 = tmp_s_reg_1986;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p1 = tmp_77_reg_1992;
    end else begin
        grp_fu_812_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_816_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_816_opcode = 2'd0;
    end else begin
        grp_fu_816_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_816_p0 = c0_y_9_reg_2167;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_816_p0 = c0_y_7_reg_2073;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p0 = c0_y_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p0 = c0_y_2_reg_1923;
    end else begin
        grp_fu_816_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_816_p1 = add8_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_816_p1 = add1_reg_2097;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p1 = DATA_y_load_2_reg_1940;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p1 = DATA_y_1_load_2_reg_1946;
    end else begin
        grp_fu_816_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_820_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_820_opcode = 2'd0;
    end else begin
        grp_fu_820_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_820_p0 = c0_x_6_reg_2213;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_820_p0 = c0_x_5_reg_2009;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p0 = c0_x_reg_1963;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p0 = c0_x_1_reg_1969;
    end else begin
        grp_fu_820_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_820_p1 = mul2_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_820_p1 = add2_reg_2045;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p1 = tmp_s_reg_1986;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p1 = tmp_77_reg_1992;
    end else begin
        grp_fu_820_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_824_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_824_opcode = 2'd0;
    end else begin
        grp_fu_824_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_824_p0 = c0_y_6_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_824_p0 = c0_y_3_reg_2015;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_824_p0 = c0_y_reg_1917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_824_p0 = c0_y_2_reg_1923;
    end else begin
        grp_fu_824_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_824_p1 = mul3_reg_2231;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_824_p1 = add3_reg_2051;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_824_p1 = DATA_y_load_2_reg_1940;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_824_p1 = DATA_y_1_load_2_reg_1946;
    end else begin
        grp_fu_824_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_828_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_828_opcode = 2'd0;
    end else begin
        grp_fu_828_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_828_p0 = c0_x_6_reg_2213;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_828_p0 = c0_x_9_reg_2161;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_828_p0 = c0_x_2_reg_1975;
    end else begin
        grp_fu_828_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_828_p1 = mul2_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_828_p1 = add7_reg_2201;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_828_p1 = tmp_78_reg_1998;
    end else begin
        grp_fu_828_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_832_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_832_opcode = 2'd0;
    end else begin
        grp_fu_832_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_832_p0 = c0_y_6_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_832_p0 = c0_y_9_reg_2167;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_832_p0 = c0_y_4_reg_1929;
    end else begin
        grp_fu_832_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_832_p1 = mul3_reg_2231;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_832_p1 = add8_reg_2207;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_832_p1 = DATA_y_2_load_2_reg_1952;
    end else begin
        grp_fu_832_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_836_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_836_opcode = 2'd0;
    end else begin
        grp_fu_836_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_836_p0 = c0_y_8_reg_2195_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_836_p0 = mul4_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_836_p0 = c0_x_7_reg_2067;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_836_p0 = c0_x_3_reg_1980;
    end else begin
        grp_fu_836_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_836_p1 = sub8_reg_2339;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_836_p1 = bitcast_ln386_13_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_836_p1 = add_reg_2091;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_836_p1 = tmp_79_reg_2003;
    end else begin
        grp_fu_836_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_840_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_840_opcode = 2'd0;
    end else begin
        grp_fu_840_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_840_p0 = c0_x_8_reg_2189_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_840_p0 = bitcast_ln386_15_fu_1464_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_840_p0 = c0_y_7_reg_2073;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_840_p0 = c0_y_5_reg_1934;
    end else begin
        grp_fu_840_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_840_p1 = sub7_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_840_p1 = mul5_reg_2242;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_840_p1 = add1_reg_2097;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_840_p1 = DATA_y_3_load_2_reg_1957;
    end else begin
        grp_fu_840_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_844_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_844_opcode = 2'd0;
    end else begin
        grp_fu_844_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_844_p0 = c0_y_8_reg_2195_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_844_p0 = c0_x_8_reg_2189_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_844_p0 = c0_y_3_reg_2015;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_844_p0 = c0_x_3_reg_1980;
    end else begin
        grp_fu_844_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_844_p1 = sub8_reg_2339;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_844_p1 = sub7_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_844_p1 = add3_reg_2051;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_844_p1 = tmp_79_reg_2003;
    end else begin
        grp_fu_844_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_848_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_848_opcode = 2'd0;
    end else begin
        grp_fu_848_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_848_p0 = c0_x_11_reg_2311;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_848_p0 = mul_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_848_p0 = c0_y_5_reg_1934;
    end else begin
        grp_fu_848_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_848_p1 = add13_reg_2289_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_848_p1 = add13_reg_2289;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_848_p1 = bitcast_ln386_5_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_848_p1 = DATA_y_3_load_2_reg_1957;
    end else begin
        grp_fu_848_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_852_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_852_opcode = 2'd0;
    end else begin
        grp_fu_852_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_852_p0 = c0_y_11_reg_2316;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_852_p0 = bitcast_ln386_7_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_852_p0 = tmp_1_reg_2021;
    end else begin
        grp_fu_852_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_852_p1 = add14_reg_2294_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_852_p1 = add14_reg_2294;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_852_p1 = mul1_reg_2140;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_852_p1 = bitcast_ln386_1_fu_1224_p1;
    end else begin
        grp_fu_852_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_856_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_856_opcode = 2'd0;
    end else begin
        grp_fu_856_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_856_p0 = c0_x_10_reg_2321_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_856_p0 = mul6_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_856_p0 = c0_x_4_reg_2079_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_856_p0 = bitcast_ln386_3_fu_1258_p1;
    end else begin
        grp_fu_856_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_856_p1 = sub14_reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_856_p1 = bitcast_ln386_17_fu_1498_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_856_p1 = sub4_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_856_p1 = sub_reg_2027;
    end else begin
        grp_fu_856_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_860_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_860_opcode = 2'd0;
    end else begin
        grp_fu_860_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_860_p0 = c0_y_10_reg_2327_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_860_p0 = bitcast_ln386_19_fu_1532_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_860_p0 = c0_y_1_reg_2085_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_860_p0 = bitcast_ln386_9_fu_1292_p1;
    end else begin
        grp_fu_860_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_860_p1 = sub15_reg_2411;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_860_p1 = mul7_reg_2350;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_860_p1 = add5_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_860_p1 = bitcast_ln386_11_fu_1327_p1;
    end else begin
        grp_fu_860_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_864_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_864_opcode = 2'd0;
    end else begin
        grp_fu_864_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_864_p0 = c0_x_10_reg_2321_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_864_p0 = c0_x_4_reg_2079_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_864_p0 = bitcast_ln386_9_fu_1292_p1;
    end else begin
        grp_fu_864_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_864_p1 = sub14_reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_864_p1 = sub4_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_864_p1 = bitcast_ln386_11_fu_1327_p1;
    end else begin
        grp_fu_864_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_868_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_868_opcode = 2'd0;
    end else begin
        grp_fu_868_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_868_p0 = c0_y_10_reg_2327_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_868_p0 = c0_y_1_reg_2085_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_868_p0 = c0_x_5_reg_2009;
    end else begin
        grp_fu_868_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_868_p1 = sub15_reg_2411;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_868_p1 = add5_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_868_p1 = add2_reg_2045;
    end else begin
        grp_fu_868_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_872_p0 = tmp_7_reg_2299;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_872_p0 = sub3_reg_2125;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_872_p0 = tmp_1_1_reg_2033;
    end else begin
        grp_fu_872_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_872_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_872_p1 = 64'd0;
    end else begin
        grp_fu_872_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_877_p0 = sub13_reg_2305;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_877_p0 = add4_reg_2130;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_877_p0 = sub1_reg_2039;
    end else begin
        grp_fu_877_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_877_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_877_p1 = 64'd0;
    end else begin
        grp_fu_877_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_884_p0 = tmp_6_reg_2155;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_884_p0 = sub5_reg_2145;
        end else begin
            grp_fu_884_p0 = 'bx;
        end
    end else begin
        grp_fu_884_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_884_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_884_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_884_p1 = 'bx;
        end
    end else begin
        grp_fu_884_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_889_p0 = sub6_reg_2173;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_889_p0 = add6_reg_2150;
        end else begin
            grp_fu_889_p0 = 'bx;
        end
    end else begin
        grp_fu_889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_889_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_889_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_889_p1 = 'bx;
        end
    end else begin
        grp_fu_889_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1673_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1591_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1561_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_1579_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1544_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d0_local = bitcast_ln396_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1639_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1597_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1567_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1666_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1550_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address0_local = zext_ln396_fu_1673_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1591_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1561_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_1579_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1544_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d0_local = bitcast_ln405_fu_1687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1605_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1575_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1643_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1601_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1571_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign DATA_x_10_address0 = zext_ln367_fu_920_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_920_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_920_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_920_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_920_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_920_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_920_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_920_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_920_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_920_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_920_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_920_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_920_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_920_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_920_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_920_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_920_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_920_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_920_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_920_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_920_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_920_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_920_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_920_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_920_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_920_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_920_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_920_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_920_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_920_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_920_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_920_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln371_fu_982_p1;
assign DATA_y_1_address1 = zext_ln367_1_fu_966_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln371_fu_982_p1;
assign DATA_y_2_address1 = zext_ln367_1_fu_966_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln371_fu_982_p1;
assign DATA_y_3_address1 = zext_ln367_1_fu_966_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln371_fu_982_p1;
assign DATA_y_address1 = zext_ln367_1_fu_966_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1185_p2 = (tid_5_reg_1698 + 7'd1);
assign add_ln394_fu_1654_p2 = ($signed(zext_ln365_1_fu_1651_p1) + $signed(9'd320));
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
assign bit_sel1_fu_1232_p3 = bitcast_ln386_2_fu_1229_p1[64'd63];
assign bit_sel2_fu_1336_p3 = bitcast_ln386_4_fu_1333_p1[64'd63];
assign bit_sel3_fu_1370_p3 = bitcast_ln386_6_fu_1367_p1[64'd63];
assign bit_sel4_fu_1266_p3 = bitcast_ln386_8_fu_1263_p1[64'd63];
assign bit_sel5_fu_1301_p3 = bitcast_ln386_10_fu_1298_p1[64'd63];
assign bit_sel6_fu_1404_p3 = bitcast_ln386_12_fu_1401_p1[64'd63];
assign bit_sel7_fu_1438_p3 = bitcast_ln386_14_fu_1435_p1[64'd63];
assign bit_sel8_fu_1472_p3 = bitcast_ln386_16_fu_1469_p1[64'd63];
assign bit_sel9_fu_1506_p3 = bitcast_ln386_18_fu_1503_p1[64'd63];
assign bit_sel_fu_1198_p3 = bitcast_ln386_fu_1195_p1[64'd63];
assign bitcast_ln386_10_fu_1298_p1 = sub2_reg_2062;
assign bitcast_ln386_11_fu_1327_p1 = xor_ln386_5_fu_1319_p3;
assign bitcast_ln386_12_fu_1401_p1 = sub6_reg_2173_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1430_p1 = xor_ln386_6_fu_1422_p3;
assign bitcast_ln386_14_fu_1435_p1 = tmp_6_reg_2155_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1464_p1 = xor_ln386_7_fu_1456_p3;
assign bitcast_ln386_16_fu_1469_p1 = sub13_reg_2305_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1498_p1 = xor_ln386_8_fu_1490_p3;
assign bitcast_ln386_18_fu_1503_p1 = tmp_7_reg_2299_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1532_p1 = xor_ln386_9_fu_1524_p3;
assign bitcast_ln386_1_fu_1224_p1 = xor_ln3_fu_1216_p3;
assign bitcast_ln386_2_fu_1229_p1 = tmp_1_reg_2021;
assign bitcast_ln386_3_fu_1258_p1 = xor_ln386_1_fu_1250_p3;
assign bitcast_ln386_4_fu_1333_p1 = sub1_reg_2039_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1362_p1 = xor_ln386_2_fu_1354_p3;
assign bitcast_ln386_6_fu_1367_p1 = tmp_1_1_reg_2033_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1396_p1 = xor_ln386_3_fu_1388_p3;
assign bitcast_ln386_8_fu_1263_p1 = tmp_1_2_reg_2057;
assign bitcast_ln386_9_fu_1292_p1 = xor_ln386_4_fu_1284_p3;
assign bitcast_ln386_fu_1195_p1 = sub_reg_2027;
assign bitcast_ln389_fu_1584_p1 = add9_reg_2279_pp0_iter13_reg;
assign bitcast_ln390_fu_1550_p1 = add15_reg_2370_pp0_iter12_reg;
assign bitcast_ln391_fu_1567_p1 = add11_reg_2365_pp0_iter12_reg;
assign bitcast_ln392_fu_1597_p1 = add17_reg_2417;
assign bitcast_ln393_fu_1626_p1 = sub9_reg_2259_pp0_iter13_reg;
assign bitcast_ln394_fu_1666_p1 = sub16_reg_2395_pp0_iter14_reg;
assign bitcast_ln395_fu_1639_p1 = sub11_reg_2385_pp0_iter14_reg;
assign bitcast_ln396_fu_1679_p1 = sub18_reg_2438;
assign bitcast_ln398_fu_1601_p1 = add10_reg_2284_pp0_iter13_reg;
assign bitcast_ln399_fu_1571_p1 = add16_reg_2375_pp0_iter12_reg;
assign bitcast_ln400_fu_1575_p1 = add12_reg_2380_pp0_iter13_reg;
assign bitcast_ln401_fu_1605_p1 = add18_reg_2422;
assign bitcast_ln402_fu_1643_p1 = sub10_reg_2264_pp0_iter13_reg;
assign bitcast_ln403_fu_1683_p1 = sub17_reg_2400_pp0_iter14_reg;
assign bitcast_ln404_fu_1647_p1 = sub12_reg_2390_pp0_iter14_reg;
assign bitcast_ln405_fu_1687_p1 = sub19_reg_2443;
assign c0_x_1_fu_1017_p9 = 'bx;
assign c0_x_2_fu_1041_p9 = 'bx;
assign c0_x_3_fu_1065_p9 = 'bx;
assign c0_x_fu_993_p9 = 'bx;
assign grp_fu_2157_p_ce = 1'b1;
assign grp_fu_2157_p_din0 = grp_fu_812_p0;
assign grp_fu_2157_p_din1 = grp_fu_812_p1;
assign grp_fu_2157_p_opcode = grp_fu_812_opcode;
assign grp_fu_2161_p_ce = 1'b1;
assign grp_fu_2161_p_din0 = grp_fu_816_p0;
assign grp_fu_2161_p_din1 = grp_fu_816_p1;
assign grp_fu_2161_p_opcode = grp_fu_816_opcode;
assign grp_fu_2165_p_ce = 1'b1;
assign grp_fu_2165_p_din0 = grp_fu_820_p0;
assign grp_fu_2165_p_din1 = grp_fu_820_p1;
assign grp_fu_2165_p_opcode = grp_fu_820_opcode;
assign grp_fu_2169_p_ce = 1'b1;
assign grp_fu_2169_p_din0 = grp_fu_824_p0;
assign grp_fu_2169_p_din1 = grp_fu_824_p1;
assign grp_fu_2169_p_opcode = grp_fu_824_opcode;
assign grp_fu_2173_p_ce = 1'b1;
assign grp_fu_2173_p_din0 = grp_fu_828_p0;
assign grp_fu_2173_p_din1 = grp_fu_828_p1;
assign grp_fu_2173_p_opcode = grp_fu_828_opcode;
assign grp_fu_2177_p_ce = 1'b1;
assign grp_fu_2177_p_din0 = grp_fu_832_p0;
assign grp_fu_2177_p_din1 = grp_fu_832_p1;
assign grp_fu_2177_p_opcode = grp_fu_832_opcode;
assign grp_fu_2181_p_ce = 1'b1;
assign grp_fu_2181_p_din0 = grp_fu_836_p0;
assign grp_fu_2181_p_din1 = grp_fu_836_p1;
assign grp_fu_2181_p_opcode = grp_fu_836_opcode;
assign grp_fu_2185_p_ce = 1'b1;
assign grp_fu_2185_p_din0 = grp_fu_840_p0;
assign grp_fu_2185_p_din1 = grp_fu_840_p1;
assign grp_fu_2185_p_opcode = grp_fu_840_opcode;
assign grp_fu_2189_p_ce = 1'b1;
assign grp_fu_2189_p_din0 = grp_fu_844_p0;
assign grp_fu_2189_p_din1 = grp_fu_844_p1;
assign grp_fu_2189_p_opcode = grp_fu_844_opcode;
assign grp_fu_2193_p_ce = 1'b1;
assign grp_fu_2193_p_din0 = grp_fu_848_p0;
assign grp_fu_2193_p_din1 = grp_fu_848_p1;
assign grp_fu_2193_p_opcode = grp_fu_848_opcode;
assign grp_fu_2197_p_ce = 1'b1;
assign grp_fu_2197_p_din0 = grp_fu_872_p0;
assign grp_fu_2197_p_din1 = grp_fu_872_p1;
assign grp_fu_2202_p_ce = 1'b1;
assign grp_fu_2202_p_din0 = grp_fu_877_p0;
assign grp_fu_2202_p_din1 = grp_fu_877_p1;
assign grp_fu_2209_p_ce = 1'b1;
assign grp_fu_2209_p_din0 = grp_fu_884_p0;
assign grp_fu_2209_p_din1 = grp_fu_884_p1;
assign grp_fu_2214_p_ce = 1'b1;
assign grp_fu_2214_p_din0 = grp_fu_889_p0;
assign grp_fu_2214_p_din1 = grp_fu_889_p1;
assign icmp_ln365_fu_904_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_910_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign or_ln_fu_974_p3 = {{trunc_ln367_fu_956_p1}, {1'd1}};
assign sext_ln392_fu_1588_p1 = zext_ln390_cast_reg_2427;
assign sext_ln395_fu_1630_p1 = zext_ln391_cast_reg_2433;
assign sext_ln396_fu_1670_p1 = zext_ln390_cast_reg_2427;
assign shl_ln367_fu_960_p2 = ap_sig_allocacmp_tid_5 << 7'd1;
assign tmp_77_fu_1113_p9 = 'bx;
assign tmp_78_fu_1137_p9 = 'bx;
assign tmp_79_fu_1161_p9 = 'bx;
assign tmp_s_fu_1089_p9 = 'bx;
assign trunc_ln365_fu_990_p1 = tid_5_reg_1698[1:0];
assign trunc_ln367_fu_956_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_1_fu_1246_p1 = bitcast_ln386_2_fu_1229_p1[62:0];
assign trunc_ln386_2_fu_1350_p1 = bitcast_ln386_4_fu_1333_p1[62:0];
assign trunc_ln386_3_fu_1384_p1 = bitcast_ln386_6_fu_1367_p1[62:0];
assign trunc_ln386_4_fu_1280_p1 = bitcast_ln386_8_fu_1263_p1[62:0];
assign trunc_ln386_5_fu_1315_p1 = bitcast_ln386_10_fu_1298_p1[62:0];
assign trunc_ln386_6_fu_1418_p1 = bitcast_ln386_12_fu_1401_p1[62:0];
assign trunc_ln386_7_fu_1452_p1 = bitcast_ln386_14_fu_1435_p1[62:0];
assign trunc_ln386_8_fu_1486_p1 = bitcast_ln386_16_fu_1469_p1[62:0];
assign trunc_ln386_9_fu_1520_p1 = bitcast_ln386_18_fu_1503_p1[62:0];
assign trunc_ln386_fu_1212_p1 = bitcast_ln386_fu_1195_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_1206_p2 = (bit_sel_fu_1198_p3 ^ 1'd1);
assign xor_ln386_11_fu_1344_p2 = (bit_sel2_fu_1336_p3 ^ 1'd1);
assign xor_ln386_12_fu_1378_p2 = (bit_sel3_fu_1370_p3 ^ 1'd1);
assign xor_ln386_13_fu_1274_p2 = (bit_sel4_fu_1266_p3 ^ 1'd1);
assign xor_ln386_14_fu_1309_p2 = (bit_sel5_fu_1301_p3 ^ 1'd1);
assign xor_ln386_15_fu_1412_p2 = (bit_sel6_fu_1404_p3 ^ 1'd1);
assign xor_ln386_16_fu_1446_p2 = (bit_sel7_fu_1438_p3 ^ 1'd1);
assign xor_ln386_17_fu_1480_p2 = (bit_sel8_fu_1472_p3 ^ 1'd1);
assign xor_ln386_18_fu_1514_p2 = (bit_sel9_fu_1506_p3 ^ 1'd1);
assign xor_ln386_1_fu_1250_p3 = {{xor_ln386_fu_1240_p2}, {trunc_ln386_1_fu_1246_p1}};
assign xor_ln386_2_fu_1354_p3 = {{xor_ln386_11_fu_1344_p2}, {trunc_ln386_2_fu_1350_p1}};
assign xor_ln386_3_fu_1388_p3 = {{xor_ln386_12_fu_1378_p2}, {trunc_ln386_3_fu_1384_p1}};
assign xor_ln386_4_fu_1284_p3 = {{xor_ln386_13_fu_1274_p2}, {trunc_ln386_4_fu_1280_p1}};
assign xor_ln386_5_fu_1319_p3 = {{xor_ln386_14_fu_1309_p2}, {trunc_ln386_5_fu_1315_p1}};
assign xor_ln386_6_fu_1422_p3 = {{xor_ln386_15_fu_1412_p2}, {trunc_ln386_6_fu_1418_p1}};
assign xor_ln386_7_fu_1456_p3 = {{xor_ln386_16_fu_1446_p2}, {trunc_ln386_7_fu_1452_p1}};
assign xor_ln386_8_fu_1490_p3 = {{xor_ln386_17_fu_1480_p2}, {trunc_ln386_8_fu_1486_p1}};
assign xor_ln386_9_fu_1524_p3 = {{xor_ln386_18_fu_1514_p2}, {trunc_ln386_9_fu_1520_p1}};
assign xor_ln386_fu_1240_p2 = (bit_sel1_fu_1232_p3 ^ 1'd1);
assign xor_ln3_fu_1216_p3 = {{xor_ln386_10_fu_1206_p2}, {trunc_ln386_fu_1212_p1}};
assign zext_ln365_1_fu_1651_p1 = tid_5_reg_1698_pp0_iter14_reg;
assign zext_ln365_fu_1579_p1 = tid_5_reg_1698_pp0_iter13_reg;
assign zext_ln367_1_fu_966_p1 = shl_ln367_fu_960_p2;
assign zext_ln367_fu_920_p1 = lshr_ln_fu_910_p4;
assign zext_ln371_fu_982_p1 = or_ln_fu_974_p3;
assign zext_ln390_cast_fu_1537_p3 = {{1'd1}, {trunc_ln367_reg_1712_pp0_iter13_reg}};
assign zext_ln390_fu_1544_p1 = $unsigned(zext_ln390_cast_fu_1537_p3);
assign zext_ln391_cast_fu_1554_p3 = {{1'd1}, {tid_5_reg_1698_pp0_iter13_reg}};
assign zext_ln391_fu_1561_p1 = $unsigned(zext_ln391_cast_fu_1554_p3);
assign zext_ln392_fu_1591_p1 = $unsigned(sext_ln392_fu_1588_p1);
assign zext_ln393_1_fu_1620_p1 = zext_ln393_cast_fu_1612_p3;
assign zext_ln393_cast_fu_1612_p3 = {{1'd1}, {zext_ln393_fu_1609_p1}};
assign zext_ln393_fu_1609_p1 = tid_5_reg_1698_pp0_iter14_reg;
assign zext_ln394_fu_1660_p1 = add_ln394_fu_1654_p2;
assign zext_ln395_fu_1633_p1 = $unsigned(sext_ln395_fu_1630_p1);
assign zext_ln396_fu_1673_p1 = $unsigned(sext_ln396_fu_1670_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_2427[6] <= 1'b1;
    zext_ln391_cast_reg_2433[7] <= 1'b1;
end
endmodule 