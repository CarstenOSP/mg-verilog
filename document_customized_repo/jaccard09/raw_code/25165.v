module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,val_2_address0,val_2_ce0,val_2_q0,val_3_address0,val_3_ce0,val_3_q0,val_4_address0,val_4_ce0,val_4_q0,val_5_address0,val_5_ce0,val_5_q0,val_6_address0,val_6_ce0,val_6_q0,val_7_address0,val_7_ce0,val_7_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_4_address0,rowDelimiters_4_ce0,rowDelimiters_4_q0,rowDelimiters_5_address0,rowDelimiters_5_ce0,rowDelimiters_5_q0,rowDelimiters_6_address0,rowDelimiters_6_ce0,rowDelimiters_6_q0,rowDelimiters_7_address0,rowDelimiters_7_ce0,rowDelimiters_7_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,vec_2_address0,vec_2_ce0,vec_2_q0,vec_3_address0,vec_3_ce0,vec_3_q0,vec_4_address0,vec_4_ce0,vec_4_q0,vec_5_address0,vec_5_ce0,vec_5_q0,vec_6_address0,vec_6_ce0,vec_6_q0,vec_7_address0,vec_7_ce0,vec_7_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0,out_4_address0,out_4_ce0,out_4_we0,out_4_d0,out_5_address0,out_5_ce0,out_5_we0,out_5_d0,out_6_address0,out_6_ce0,out_6_we0,out_6_d0,out_7_address0,out_7_ce0,out_7_we0,out_7_d0); 
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
output  [7:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [7:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [7:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [7:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [7:0] val_4_address0;
output   val_4_ce0;
input  [63:0] val_4_q0;
output  [7:0] val_5_address0;
output   val_5_ce0;
input  [63:0] val_5_q0;
output  [7:0] val_6_address0;
output   val_6_ce0;
input  [63:0] val_6_q0;
output  [7:0] val_7_address0;
output   val_7_ce0;
input  [63:0] val_7_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [5:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [5:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [5:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [5:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [5:0] rowDelimiters_4_address0;
output   rowDelimiters_4_ce0;
input  [31:0] rowDelimiters_4_q0;
output  [5:0] rowDelimiters_5_address0;
output   rowDelimiters_5_ce0;
input  [31:0] rowDelimiters_5_q0;
output  [5:0] rowDelimiters_6_address0;
output   rowDelimiters_6_ce0;
input  [31:0] rowDelimiters_6_q0;
output  [5:0] rowDelimiters_7_address0;
output   rowDelimiters_7_ce0;
input  [31:0] rowDelimiters_7_q0;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [5:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [5:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [5:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
output  [5:0] out_4_address0;
output   out_4_ce0;
output   out_4_we0;
output  [63:0] out_4_d0;
output  [5:0] out_5_address0;
output   out_5_ce0;
output   out_5_we0;
output  [63:0] out_5_d0;
output  [5:0] out_6_address0;
output   out_6_ce0;
output   out_6_we0;
output  [63:0] out_6_d0;
output  [5:0] out_7_address0;
output   out_7_ce0;
output   out_7_we0;
output  [63:0] out_7_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [39:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_795_p2;
reg   [63:0] reg_809;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state32;
wire   [63:0] zext_ln9_fu_838_p1;
reg   [63:0] zext_ln9_reg_1380;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln12_fu_850_p1;
reg   [2:0] trunc_ln12_reg_1432;
wire    ap_CS_fsm_state3;
wire  signed [63:0] sext_ln16_fu_901_p1;
wire  signed [63:0] wide_trip_count_fu_905_p1;
reg  signed [63:0] wide_trip_count_reg_1442;
wire   [2:0] trunc_ln16_fu_914_p1;
reg   [2:0] trunc_ln16_reg_1451;
wire    ap_CS_fsm_state4;
reg   [7:0] lshr_ln9_1_reg_1456;
wire   [63:0] add_ln16_fu_928_p2;
reg   [63:0] add_ln16_reg_1466;
wire   [8:0] add_ln15_fu_942_p2;
reg   [8:0] add_ln15_reg_1471;
wire    ap_CS_fsm_state5;
wire   [2:0] trunc_ln17_fu_976_p1;
reg   [2:0] trunc_ln17_reg_1536;
wire   [63:0] tmp_fu_1024_p19;
reg   [63:0] tmp_reg_1581;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_1_fu_1095_p19;
reg   [63:0] tmp_1_reg_1586;
wire   [63:0] grp_fu_789_p2;
wire    ap_CS_fsm_state21;
wire  signed [63:0] wide_trip_count7_fu_1157_p1;
reg  signed [63:0] wide_trip_count7_reg_1596;
wire    ap_CS_fsm_state22;
wire   [2:0] trunc_ln16_1_fu_1166_p1;
reg   [2:0] trunc_ln16_1_reg_1604;
wire    ap_CS_fsm_state23;
reg   [7:0] lshr_ln9_2_reg_1609;
wire   [63:0] add_ln16_1_fu_1180_p2;
reg   [63:0] add_ln16_1_reg_1619;
wire    ap_CS_fsm_state24;
wire   [2:0] trunc_ln17_1_fu_1209_p1;
reg   [2:0] trunc_ln17_1_reg_1664;
wire   [63:0] tmp_3_fu_1257_p19;
reg   [63:0] tmp_3_reg_1709;
wire    ap_CS_fsm_state25;
wire   [63:0] tmp_4_fu_1328_p19;
reg   [63:0] tmp_4_reg_1714;
wire    ap_CS_fsm_state40;
reg   [63:0] j_1_reg_745;
reg   [63:0] sum_reg_755;
reg   [63:0] j_3_reg_767;
reg   [63:0] sum_2_reg_777;
wire   [0:0] icmp_ln12_fu_822_p2;
wire   [0:0] icmp_ln16_fu_909_p2;
wire   [63:0] zext_ln15_fu_957_p1;
wire   [63:0] zext_ln9_1_fu_965_p1;
wire   [63:0] zext_ln17_fu_980_p1;
wire   [0:0] icmp_ln16_1_fu_1161_p2;
wire   [63:0] zext_ln9_2_fu_1198_p1;
wire   [63:0] zext_ln17_1_fu_1213_p1;
reg   [8:0] i_fu_144;
reg    rowDelimiters_0_ce0_local;
reg   [5:0] rowDelimiters_0_address0_local;
reg    rowDelimiters_2_ce0_local;
reg   [5:0] rowDelimiters_2_address0_local;
reg    rowDelimiters_4_ce0_local;
reg   [5:0] rowDelimiters_4_address0_local;
reg    rowDelimiters_6_ce0_local;
reg   [5:0] rowDelimiters_6_address0_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_3_ce0_local;
reg    rowDelimiters_5_ce0_local;
reg    rowDelimiters_7_ce0_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    out_4_we0_local;
wire   [63:0] bitcast_ln20_fu_934_p1;
reg    out_4_ce0_local;
reg    out_2_we0_local;
reg    out_2_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_6_we0_local;
reg    out_6_ce0_local;
reg    val_0_ce0_local;
reg   [7:0] val_0_address0_local;
reg    val_1_ce0_local;
reg   [7:0] val_1_address0_local;
reg    val_2_ce0_local;
reg   [7:0] val_2_address0_local;
reg    val_3_ce0_local;
reg   [7:0] val_3_address0_local;
reg    val_4_ce0_local;
reg   [7:0] val_4_address0_local;
reg    val_5_ce0_local;
reg   [7:0] val_5_address0_local;
reg    val_6_ce0_local;
reg   [7:0] val_6_address0_local;
reg    val_7_ce0_local;
reg   [7:0] val_7_address0_local;
reg    vec_0_ce0_local;
reg   [5:0] vec_0_address0_local;
reg    vec_1_ce0_local;
reg   [5:0] vec_1_address0_local;
reg    vec_2_ce0_local;
reg   [5:0] vec_2_address0_local;
reg    vec_3_ce0_local;
reg   [5:0] vec_3_address0_local;
reg    vec_4_ce0_local;
reg   [5:0] vec_4_address0_local;
reg    vec_5_ce0_local;
reg   [5:0] vec_5_address0_local;
reg    vec_6_ce0_local;
reg   [5:0] vec_6_address0_local;
reg    vec_7_ce0_local;
reg   [5:0] vec_7_address0_local;
reg    out_5_we0_local;
wire   [63:0] bitcast_ln20_1_fu_1186_p1;
reg    out_5_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_7_we0_local;
reg    out_7_ce0_local;
reg   [63:0] grp_fu_789_p0;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state33;
reg   [63:0] grp_fu_795_p0;
reg   [63:0] grp_fu_795_p1;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state26;
wire   [5:0] lshr_ln9_fu_828_p4;
wire   [31:0] tmp_begin_fu_853_p9;
wire   [31:0] tmp_end_2_fu_877_p9;
wire   [31:0] tmp_begin_fu_853_p11;
wire   [31:0] tmp_end_2_fu_877_p11;
wire   [5:0] lshr_ln1_fu_947_p4;
wire   [5:0] grp_fu_799_p4;
wire   [63:0] tmp_fu_1024_p2;
wire   [63:0] tmp_fu_1024_p4;
wire   [63:0] tmp_fu_1024_p6;
wire   [63:0] tmp_fu_1024_p8;
wire   [63:0] tmp_fu_1024_p10;
wire   [63:0] tmp_fu_1024_p12;
wire   [63:0] tmp_fu_1024_p14;
wire   [63:0] tmp_fu_1024_p16;
wire   [63:0] tmp_fu_1024_p17;
wire   [63:0] tmp_1_fu_1095_p2;
wire   [63:0] tmp_1_fu_1095_p4;
wire   [63:0] tmp_1_fu_1095_p6;
wire   [63:0] tmp_1_fu_1095_p8;
wire   [63:0] tmp_1_fu_1095_p10;
wire   [63:0] tmp_1_fu_1095_p12;
wire   [63:0] tmp_1_fu_1095_p14;
wire   [63:0] tmp_1_fu_1095_p16;
wire   [63:0] tmp_1_fu_1095_p17;
wire   [31:0] tmp_end_fu_1134_p9;
wire   [31:0] tmp_end_fu_1134_p11;
wire   [63:0] tmp_3_fu_1257_p2;
wire   [63:0] tmp_3_fu_1257_p4;
wire   [63:0] tmp_3_fu_1257_p6;
wire   [63:0] tmp_3_fu_1257_p8;
wire   [63:0] tmp_3_fu_1257_p10;
wire   [63:0] tmp_3_fu_1257_p12;
wire   [63:0] tmp_3_fu_1257_p14;
wire   [63:0] tmp_3_fu_1257_p16;
wire   [63:0] tmp_3_fu_1257_p17;
wire   [63:0] tmp_4_fu_1328_p2;
wire   [63:0] tmp_4_fu_1328_p4;
wire   [63:0] tmp_4_fu_1328_p6;
wire   [63:0] tmp_4_fu_1328_p8;
wire   [63:0] tmp_4_fu_1328_p10;
wire   [63:0] tmp_4_fu_1328_p12;
wire   [63:0] tmp_4_fu_1328_p14;
wire   [63:0] tmp_4_fu_1328_p16;
wire   [63:0] tmp_4_fu_1328_p17;
reg   [39:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
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
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire   [2:0] tmp_begin_fu_853_p1;
wire   [2:0] tmp_begin_fu_853_p3;
wire  signed [2:0] tmp_begin_fu_853_p5;
wire  signed [2:0] tmp_begin_fu_853_p7;
wire   [2:0] tmp_end_2_fu_877_p1;
wire   [2:0] tmp_end_2_fu_877_p3;
wire  signed [2:0] tmp_end_2_fu_877_p5;
wire  signed [2:0] tmp_end_2_fu_877_p7;
wire   [2:0] tmp_fu_1024_p1;
wire   [2:0] tmp_fu_1024_p3;
wire   [2:0] tmp_fu_1024_p5;
wire   [2:0] tmp_fu_1024_p7;
wire  signed [2:0] tmp_fu_1024_p9;
wire  signed [2:0] tmp_fu_1024_p11;
wire  signed [2:0] tmp_fu_1024_p13;
wire  signed [2:0] tmp_fu_1024_p15;
wire   [2:0] tmp_1_fu_1095_p1;
wire   [2:0] tmp_1_fu_1095_p3;
wire   [2:0] tmp_1_fu_1095_p5;
wire   [2:0] tmp_1_fu_1095_p7;
wire  signed [2:0] tmp_1_fu_1095_p9;
wire  signed [2:0] tmp_1_fu_1095_p11;
wire  signed [2:0] tmp_1_fu_1095_p13;
wire  signed [2:0] tmp_1_fu_1095_p15;
wire  signed [2:0] tmp_end_fu_1134_p1;
wire   [2:0] tmp_end_fu_1134_p3;
wire   [2:0] tmp_end_fu_1134_p5;
wire  signed [2:0] tmp_end_fu_1134_p7;
wire   [2:0] tmp_3_fu_1257_p1;
wire   [2:0] tmp_3_fu_1257_p3;
wire   [2:0] tmp_3_fu_1257_p5;
wire   [2:0] tmp_3_fu_1257_p7;
wire  signed [2:0] tmp_3_fu_1257_p9;
wire  signed [2:0] tmp_3_fu_1257_p11;
wire  signed [2:0] tmp_3_fu_1257_p13;
wire  signed [2:0] tmp_3_fu_1257_p15;
wire   [2:0] tmp_4_fu_1328_p1;
wire   [2:0] tmp_4_fu_1328_p3;
wire   [2:0] tmp_4_fu_1328_p5;
wire   [2:0] tmp_4_fu_1328_p7;
wire  signed [2:0] tmp_4_fu_1328_p9;
wire  signed [2:0] tmp_4_fu_1328_p11;
wire  signed [2:0] tmp_4_fu_1328_p13;
wire  signed [2:0] tmp_4_fu_1328_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 40'd1;
#0 i_fu_144 = 9'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_789_p0),.din1(reg_809),.ce(1'b1),.dout(grp_fu_789_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_795_p0),.din1(grp_fu_795_p1),.ce(1'b1),.dout(grp_fu_795_p2));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U3(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_2_q0),.din2(rowDelimiters_4_q0),.din3(rowDelimiters_6_q0),.def(tmp_begin_fu_853_p9),.sel(trunc_ln12_fu_850_p1),.dout(tmp_begin_fu_853_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U4(.din0(rowDelimiters_1_q0),.din1(rowDelimiters_3_q0),.din2(rowDelimiters_5_q0),.din3(rowDelimiters_7_q0),.def(tmp_end_2_fu_877_p9),.sel(trunc_ln12_fu_850_p1),.dout(tmp_end_2_fu_877_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_fu_1024_p2),.din1(tmp_fu_1024_p4),.din2(tmp_fu_1024_p6),.din3(tmp_fu_1024_p8),.din4(tmp_fu_1024_p10),.din5(tmp_fu_1024_p12),.din6(tmp_fu_1024_p14),.din7(tmp_fu_1024_p16),.def(tmp_fu_1024_p17),.sel(trunc_ln16_reg_1451),.dout(tmp_fu_1024_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_1_fu_1095_p2),.din1(tmp_1_fu_1095_p4),.din2(tmp_1_fu_1095_p6),.din3(tmp_1_fu_1095_p8),.din4(tmp_1_fu_1095_p10),.din5(tmp_1_fu_1095_p12),.din6(tmp_1_fu_1095_p14),.din7(tmp_1_fu_1095_p16),.def(tmp_1_fu_1095_p17),.sel(trunc_ln17_reg_1536),.dout(tmp_1_fu_1095_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U7(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_2_q0),.din2(rowDelimiters_4_q0),.din3(rowDelimiters_6_q0),.def(tmp_end_fu_1134_p9),.sel(trunc_ln12_reg_1432),.dout(tmp_end_fu_1134_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_3_fu_1257_p2),.din1(tmp_3_fu_1257_p4),.din2(tmp_3_fu_1257_p6),.din3(tmp_3_fu_1257_p8),.din4(tmp_3_fu_1257_p10),.din5(tmp_3_fu_1257_p12),.din6(tmp_3_fu_1257_p14),.din7(tmp_3_fu_1257_p16),.def(tmp_3_fu_1257_p17),.sel(trunc_ln16_1_reg_1604),.dout(tmp_3_fu_1257_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_4_fu_1328_p2),.din1(tmp_4_fu_1328_p4),.din2(tmp_4_fu_1328_p6),.din3(tmp_4_fu_1328_p8),.din4(tmp_4_fu_1328_p10),.din5(tmp_4_fu_1328_p12),.din6(tmp_4_fu_1328_p14),.din7(tmp_4_fu_1328_p16),.def(tmp_4_fu_1328_p17),.sel(trunc_ln17_1_reg_1664),.dout(tmp_4_fu_1328_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_144 <= 9'd0;
    end else if (((icmp_ln16_1_fu_1161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        i_fu_144 <= add_ln15_reg_1471;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        j_1_reg_745 <= add_ln16_reg_1466;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_745 <= sext_ln16_fu_901_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        j_3_reg_767 <= wide_trip_count_reg_1442;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        j_3_reg_767 <= add_ln16_1_reg_1619;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        sum_2_reg_777 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        sum_2_reg_777 <= grp_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sum_reg_755 <= grp_fu_789_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_reg_755 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln15_reg_1471 <= add_ln15_fu_942_p2;
        add_ln16_reg_1466 <= add_ln16_fu_928_p2;
        lshr_ln9_1_reg_1456 <= {{j_1_reg_745[10:3]}};
        trunc_ln16_reg_1451 <= trunc_ln16_fu_914_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        add_ln16_1_reg_1619 <= add_ln16_1_fu_1180_p2;
        lshr_ln9_2_reg_1609 <= {{j_3_reg_767[10:3]}};
        trunc_ln16_1_reg_1604 <= trunc_ln16_1_fu_1166_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_809 <= grp_fu_795_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_1_reg_1586 <= tmp_1_fu_1095_p19;
        tmp_reg_1581 <= tmp_fu_1024_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        tmp_3_reg_1709 <= tmp_3_fu_1257_p19;
        tmp_4_reg_1714 <= tmp_4_fu_1328_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln12_reg_1432 <= trunc_ln12_fu_850_p1;
        wide_trip_count_reg_1442 <= wide_trip_count_fu_905_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln17_1_reg_1664 <= trunc_ln17_1_fu_1209_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        trunc_ln17_reg_1536 <= trunc_ln17_fu_976_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        wide_trip_count7_reg_1596 <= wide_trip_count7_fu_1157_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln9_reg_1380[5 : 0] <= zext_ln9_fu_838_p1[5 : 0];
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
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_822_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_822_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        cols_address0_local = j_3_reg_767;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        cols_address0_local = j_1_reg_745;
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state4))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_789_p0 = sum_2_reg_777;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_789_p0 = sum_reg_755;
    end else begin
        grp_fu_789_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_795_p0 = tmp_3_reg_1709;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_795_p0 = tmp_reg_1581;
    end else begin
        grp_fu_795_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_795_p1 = tmp_4_reg_1714;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_795_p1 = tmp_1_reg_1586;
    end else begin
        grp_fu_795_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_fu_909_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_1_fu_1161_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_fu_909_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd2) & (1'b1 == ap_CS_fsm_state4))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_1_fu_1161_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd2) & (1'b1 == ap_CS_fsm_state23))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_4_ce0_local = 1'b1;
    end else begin
        out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_fu_909_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd4) & (1'b1 == ap_CS_fsm_state4))) begin
        out_4_we0_local = 1'b1;
    end else begin
        out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_5_ce0_local = 1'b1;
    end else begin
        out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln16_1_fu_1161_p2 == 1'd0) & (trunc_ln12_reg_1432 == 3'd4) & (1'b1 == ap_CS_fsm_state23))) begin
        out_5_we0_local = 1'b1;
    end else begin
        out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_6_ce0_local = 1'b1;
    end else begin
        out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln12_reg_1432 == 3'd0) & ~(trunc_ln12_reg_1432 == 3'd2) & ~(trunc_ln12_reg_1432 == 3'd4) & (icmp_ln16_fu_909_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        out_6_we0_local = 1'b1;
    end else begin
        out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_7_ce0_local = 1'b1;
    end else begin
        out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln12_reg_1432 == 3'd0) & ~(trunc_ln12_reg_1432 == 3'd2) & ~(trunc_ln12_reg_1432 == 3'd4) & (icmp_ln16_1_fu_1161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        out_7_we0_local = 1'b1;
    end else begin
        out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_0_address0_local = zext_ln15_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_address0_local = zext_ln9_fu_838_p1;
    end else begin
        rowDelimiters_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_2_address0_local = zext_ln15_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_address0_local = zext_ln9_fu_838_p1;
    end else begin
        rowDelimiters_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_2_ce0_local = 1'b1;
    end else begin
        rowDelimiters_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce0_local = 1'b1;
    end else begin
        rowDelimiters_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_4_address0_local = zext_ln15_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_4_address0_local = zext_ln9_fu_838_p1;
    end else begin
        rowDelimiters_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_4_ce0_local = 1'b1;
    end else begin
        rowDelimiters_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_5_ce0_local = 1'b1;
    end else begin
        rowDelimiters_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_6_address0_local = zext_ln15_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_6_address0_local = zext_ln9_fu_838_p1;
    end else begin
        rowDelimiters_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_6_ce0_local = 1'b1;
    end else begin
        rowDelimiters_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_7_ce0_local = 1'b1;
    end else begin
        rowDelimiters_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_0_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_0_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_1_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_1_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_2_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_2_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_2_ce0_local = 1'b1;
    end else begin
        val_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_3_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_3_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_3_ce0_local = 1'b1;
    end else begin
        val_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_4_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_4_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_4_ce0_local = 1'b1;
    end else begin
        val_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_5_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_5_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_5_ce0_local = 1'b1;
    end else begin
        val_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_6_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_6_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_6_ce0_local = 1'b1;
    end else begin
        val_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_7_address0_local = zext_ln9_2_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_7_address0_local = zext_ln9_1_fu_965_p1;
    end else begin
        val_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_7_ce0_local = 1'b1;
    end else begin
        val_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_0_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_0_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_1_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_1_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_2_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_2_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_2_ce0_local = 1'b1;
    end else begin
        vec_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_3_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_3_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_3_ce0_local = 1'b1;
    end else begin
        vec_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_4_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_4_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_4_ce0_local = 1'b1;
    end else begin
        vec_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_5_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_5_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_5_ce0_local = 1'b1;
    end else begin
        vec_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_6_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_6_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_6_ce0_local = 1'b1;
    end else begin
        vec_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_7_address0_local = zext_ln17_1_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_7_address0_local = zext_ln17_fu_980_p1;
    end else begin
        vec_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_7_ce0_local = 1'b1;
    end else begin
        vec_7_ce0_local = 1'b0;
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
            if (((icmp_ln12_fu_822_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_909_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((icmp_ln16_1_fu_1161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
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
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_942_p2 = (i_fu_144 + 9'd2);
assign add_ln16_1_fu_1180_p2 = (j_3_reg_767 + 64'd1);
assign add_ln16_fu_928_p2 = (j_1_reg_745 + 64'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign bitcast_ln20_1_fu_1186_p1 = sum_2_reg_777;
assign bitcast_ln20_fu_934_p1 = sum_reg_755;
assign cols_address0 = cols_address0_local;
assign cols_ce0 = cols_ce0_local;
assign grp_fu_799_p4 = {{cols_q0[8:3]}};
assign icmp_ln12_fu_822_p2 = ((i_fu_144 < 9'd494) ? 1'b1 : 1'b0);
assign icmp_ln16_1_fu_1161_p2 = (($signed(j_3_reg_767) < $signed(wide_trip_count7_reg_1596)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_909_p2 = (($signed(j_1_reg_745) < $signed(wide_trip_count_reg_1442)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_947_p4 = {{add_ln15_fu_942_p2[8:3]}};
assign lshr_ln9_fu_828_p4 = {{i_fu_144[8:3]}};
assign out_0_address0 = zext_ln9_reg_1380;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_934_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_1380;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_1_fu_1186_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_1380;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_934_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_1380;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_1_fu_1186_p1;
assign out_3_we0 = out_3_we0_local;
assign out_4_address0 = zext_ln9_reg_1380;
assign out_4_ce0 = out_4_ce0_local;
assign out_4_d0 = bitcast_ln20_fu_934_p1;
assign out_4_we0 = out_4_we0_local;
assign out_5_address0 = zext_ln9_reg_1380;
assign out_5_ce0 = out_5_ce0_local;
assign out_5_d0 = bitcast_ln20_1_fu_1186_p1;
assign out_5_we0 = out_5_we0_local;
assign out_6_address0 = zext_ln9_reg_1380;
assign out_6_ce0 = out_6_ce0_local;
assign out_6_d0 = bitcast_ln20_fu_934_p1;
assign out_6_we0 = out_6_we0_local;
assign out_7_address0 = zext_ln9_reg_1380;
assign out_7_ce0 = out_7_ce0_local;
assign out_7_d0 = bitcast_ln20_1_fu_1186_p1;
assign out_7_we0 = out_7_we0_local;
assign rowDelimiters_0_address0 = rowDelimiters_0_address0_local;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_1_address0 = zext_ln9_fu_838_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_2_address0 = rowDelimiters_2_address0_local;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_3_address0 = zext_ln9_fu_838_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_4_address0 = rowDelimiters_4_address0_local;
assign rowDelimiters_4_ce0 = rowDelimiters_4_ce0_local;
assign rowDelimiters_5_address0 = zext_ln9_fu_838_p1;
assign rowDelimiters_5_ce0 = rowDelimiters_5_ce0_local;
assign rowDelimiters_6_address0 = rowDelimiters_6_address0_local;
assign rowDelimiters_6_ce0 = rowDelimiters_6_ce0_local;
assign rowDelimiters_7_address0 = zext_ln9_fu_838_p1;
assign rowDelimiters_7_ce0 = rowDelimiters_7_ce0_local;
assign sext_ln16_fu_901_p1 = $signed(tmp_begin_fu_853_p11);
assign tmp_1_fu_1095_p10 = vec_4_q0;
assign tmp_1_fu_1095_p12 = vec_5_q0;
assign tmp_1_fu_1095_p14 = vec_6_q0;
assign tmp_1_fu_1095_p16 = vec_7_q0;
assign tmp_1_fu_1095_p17 = 'bx;
assign tmp_1_fu_1095_p2 = vec_0_q0;
assign tmp_1_fu_1095_p4 = vec_1_q0;
assign tmp_1_fu_1095_p6 = vec_2_q0;
assign tmp_1_fu_1095_p8 = vec_3_q0;
assign tmp_3_fu_1257_p10 = val_4_q0;
assign tmp_3_fu_1257_p12 = val_5_q0;
assign tmp_3_fu_1257_p14 = val_6_q0;
assign tmp_3_fu_1257_p16 = val_7_q0;
assign tmp_3_fu_1257_p17 = 'bx;
assign tmp_3_fu_1257_p2 = val_0_q0;
assign tmp_3_fu_1257_p4 = val_1_q0;
assign tmp_3_fu_1257_p6 = val_2_q0;
assign tmp_3_fu_1257_p8 = val_3_q0;
assign tmp_4_fu_1328_p10 = vec_4_q0;
assign tmp_4_fu_1328_p12 = vec_5_q0;
assign tmp_4_fu_1328_p14 = vec_6_q0;
assign tmp_4_fu_1328_p16 = vec_7_q0;
assign tmp_4_fu_1328_p17 = 'bx;
assign tmp_4_fu_1328_p2 = vec_0_q0;
assign tmp_4_fu_1328_p4 = vec_1_q0;
assign tmp_4_fu_1328_p6 = vec_2_q0;
assign tmp_4_fu_1328_p8 = vec_3_q0;
assign tmp_begin_fu_853_p9 = 'bx;
assign tmp_end_2_fu_877_p9 = 'bx;
assign tmp_end_fu_1134_p9 = 'bx;
assign tmp_fu_1024_p10 = val_4_q0;
assign tmp_fu_1024_p12 = val_5_q0;
assign tmp_fu_1024_p14 = val_6_q0;
assign tmp_fu_1024_p16 = val_7_q0;
assign tmp_fu_1024_p17 = 'bx;
assign tmp_fu_1024_p2 = val_0_q0;
assign tmp_fu_1024_p4 = val_1_q0;
assign tmp_fu_1024_p6 = val_2_q0;
assign tmp_fu_1024_p8 = val_3_q0;
assign trunc_ln12_fu_850_p1 = i_fu_144[2:0];
assign trunc_ln16_1_fu_1166_p1 = j_3_reg_767[2:0];
assign trunc_ln16_fu_914_p1 = j_1_reg_745[2:0];
assign trunc_ln17_1_fu_1209_p1 = cols_q0[2:0];
assign trunc_ln17_fu_976_p1 = cols_q0[2:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_ce0 = val_1_ce0_local;
assign val_2_address0 = val_2_address0_local;
assign val_2_ce0 = val_2_ce0_local;
assign val_3_address0 = val_3_address0_local;
assign val_3_ce0 = val_3_ce0_local;
assign val_4_address0 = val_4_address0_local;
assign val_4_ce0 = val_4_ce0_local;
assign val_5_address0 = val_5_address0_local;
assign val_5_ce0 = val_5_ce0_local;
assign val_6_address0 = val_6_address0_local;
assign val_6_ce0 = val_6_ce0_local;
assign val_7_address0 = val_7_address0_local;
assign val_7_ce0 = val_7_ce0_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_2_address0 = vec_2_address0_local;
assign vec_2_ce0 = vec_2_ce0_local;
assign vec_3_address0 = vec_3_address0_local;
assign vec_3_ce0 = vec_3_ce0_local;
assign vec_4_address0 = vec_4_address0_local;
assign vec_4_ce0 = vec_4_ce0_local;
assign vec_5_address0 = vec_5_address0_local;
assign vec_5_ce0 = vec_5_ce0_local;
assign vec_6_address0 = vec_6_address0_local;
assign vec_6_ce0 = vec_6_ce0_local;
assign vec_7_address0 = vec_7_address0_local;
assign vec_7_ce0 = vec_7_ce0_local;
assign wide_trip_count7_fu_1157_p1 = $signed(tmp_end_fu_1134_p11);
assign wide_trip_count_fu_905_p1 = $signed(tmp_end_2_fu_877_p11);
assign zext_ln15_fu_957_p1 = lshr_ln1_fu_947_p4;
assign zext_ln17_1_fu_1213_p1 = grp_fu_799_p4;
assign zext_ln17_fu_980_p1 = grp_fu_799_p4;
assign zext_ln9_1_fu_965_p1 = lshr_ln9_1_reg_1456;
assign zext_ln9_2_fu_1198_p1 = lshr_ln9_2_reg_1609;
assign zext_ln9_fu_838_p1 = lshr_ln9_fu_828_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_1380[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 