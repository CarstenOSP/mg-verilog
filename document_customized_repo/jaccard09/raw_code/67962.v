module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0); 
parameter    ap_ST_fsm_state1 = 78'd1;
parameter    ap_ST_fsm_state2 = 78'd2;
parameter    ap_ST_fsm_state3 = 78'd4;
parameter    ap_ST_fsm_state4 = 78'd8;
parameter    ap_ST_fsm_state5 = 78'd16;
parameter    ap_ST_fsm_state6 = 78'd32;
parameter    ap_ST_fsm_state7 = 78'd64;
parameter    ap_ST_fsm_state8 = 78'd128;
parameter    ap_ST_fsm_state9 = 78'd256;
parameter    ap_ST_fsm_state10 = 78'd512;
parameter    ap_ST_fsm_state11 = 78'd1024;
parameter    ap_ST_fsm_state12 = 78'd2048;
parameter    ap_ST_fsm_state13 = 78'd4096;
parameter    ap_ST_fsm_state14 = 78'd8192;
parameter    ap_ST_fsm_state15 = 78'd16384;
parameter    ap_ST_fsm_state16 = 78'd32768;
parameter    ap_ST_fsm_state17 = 78'd65536;
parameter    ap_ST_fsm_state18 = 78'd131072;
parameter    ap_ST_fsm_state19 = 78'd262144;
parameter    ap_ST_fsm_state20 = 78'd524288;
parameter    ap_ST_fsm_state21 = 78'd1048576;
parameter    ap_ST_fsm_state22 = 78'd2097152;
parameter    ap_ST_fsm_state23 = 78'd4194304;
parameter    ap_ST_fsm_state24 = 78'd8388608;
parameter    ap_ST_fsm_state25 = 78'd16777216;
parameter    ap_ST_fsm_state26 = 78'd33554432;
parameter    ap_ST_fsm_state27 = 78'd67108864;
parameter    ap_ST_fsm_state28 = 78'd134217728;
parameter    ap_ST_fsm_state29 = 78'd268435456;
parameter    ap_ST_fsm_state30 = 78'd536870912;
parameter    ap_ST_fsm_state31 = 78'd1073741824;
parameter    ap_ST_fsm_state32 = 78'd2147483648;
parameter    ap_ST_fsm_state33 = 78'd4294967296;
parameter    ap_ST_fsm_state34 = 78'd8589934592;
parameter    ap_ST_fsm_state35 = 78'd17179869184;
parameter    ap_ST_fsm_state36 = 78'd34359738368;
parameter    ap_ST_fsm_state37 = 78'd68719476736;
parameter    ap_ST_fsm_state38 = 78'd137438953472;
parameter    ap_ST_fsm_state39 = 78'd274877906944;
parameter    ap_ST_fsm_state40 = 78'd549755813888;
parameter    ap_ST_fsm_state41 = 78'd1099511627776;
parameter    ap_ST_fsm_state42 = 78'd2199023255552;
parameter    ap_ST_fsm_state43 = 78'd4398046511104;
parameter    ap_ST_fsm_state44 = 78'd8796093022208;
parameter    ap_ST_fsm_state45 = 78'd17592186044416;
parameter    ap_ST_fsm_state46 = 78'd35184372088832;
parameter    ap_ST_fsm_state47 = 78'd70368744177664;
parameter    ap_ST_fsm_state48 = 78'd140737488355328;
parameter    ap_ST_fsm_state49 = 78'd281474976710656;
parameter    ap_ST_fsm_state50 = 78'd562949953421312;
parameter    ap_ST_fsm_state51 = 78'd1125899906842624;
parameter    ap_ST_fsm_state52 = 78'd2251799813685248;
parameter    ap_ST_fsm_state53 = 78'd4503599627370496;
parameter    ap_ST_fsm_state54 = 78'd9007199254740992;
parameter    ap_ST_fsm_state55 = 78'd18014398509481984;
parameter    ap_ST_fsm_state56 = 78'd36028797018963968;
parameter    ap_ST_fsm_state57 = 78'd72057594037927936;
parameter    ap_ST_fsm_state58 = 78'd144115188075855872;
parameter    ap_ST_fsm_state59 = 78'd288230376151711744;
parameter    ap_ST_fsm_state60 = 78'd576460752303423488;
parameter    ap_ST_fsm_state61 = 78'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 78'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 78'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 78'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 78'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 78'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 78'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 78'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 78'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 78'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 78'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 78'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 78'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 78'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 78'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 78'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 78'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 78'd151115727451828646838272;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [7:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [7:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [77:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_463_p2;
reg   [63:0] reg_477;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state70;
wire   [7:0] lshr_ln9_fu_490_p4;
reg   [7:0] lshr_ln9_reg_867;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln9_fu_500_p1;
reg   [63:0] zext_ln9_reg_872;
wire  signed [63:0] sext_ln16_fu_506_p1;
wire    ap_CS_fsm_state3;
wire  signed [63:0] wide_trip_count_fu_510_p1;
reg  signed [63:0] wide_trip_count_reg_893;
wire   [0:0] trunc_ln16_fu_519_p1;
reg   [0:0] trunc_ln16_reg_902;
wire    ap_CS_fsm_state4;
reg   [9:0] lshr_ln9_1_reg_907;
wire   [63:0] add_ln16_fu_533_p2;
reg   [63:0] add_ln16_reg_917;
wire   [63:0] zext_ln15_fu_561_p1;
reg   [63:0] zext_ln15_reg_922;
wire    ap_CS_fsm_state5;
wire   [0:0] trunc_ln17_fu_571_p1;
reg   [0:0] trunc_ln17_reg_944;
wire   [63:0] select_ln17_fu_581_p3;
reg   [63:0] select_ln17_reg_959;
wire    ap_CS_fsm_state6;
wire   [63:0] select_ln17_1_fu_588_p3;
reg   [63:0] select_ln17_1_reg_964;
wire   [63:0] bitcast_ln17_fu_595_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] bitcast_ln17_1_fu_599_p1;
wire   [63:0] grp_fu_455_p2;
wire    ap_CS_fsm_state21;
wire   [63:0] or_ln_fu_612_p3;
reg   [63:0] or_ln_reg_984;
wire    ap_CS_fsm_state22;
wire  signed [63:0] wide_trip_count7_fu_620_p1;
reg  signed [63:0] wide_trip_count7_reg_989;
wire   [0:0] trunc_ln16_1_fu_629_p1;
reg   [0:0] trunc_ln16_1_reg_998;
wire    ap_CS_fsm_state23;
reg   [9:0] lshr_ln9_2_reg_1003;
wire   [63:0] add_ln16_1_fu_643_p2;
reg   [63:0] add_ln16_1_reg_1013;
wire    ap_CS_fsm_state24;
wire   [0:0] trunc_ln17_1_fu_664_p1;
reg   [0:0] trunc_ln17_1_reg_1036;
wire   [63:0] select_ln17_2_fu_674_p3;
reg   [63:0] select_ln17_2_reg_1051;
wire    ap_CS_fsm_state25;
wire   [63:0] select_ln17_3_fu_681_p3;
reg   [63:0] select_ln17_3_reg_1056;
wire   [63:0] bitcast_ln17_2_fu_688_p1;
wire    ap_CS_fsm_state26;
wire   [63:0] bitcast_ln17_3_fu_692_p1;
wire    ap_CS_fsm_state40;
wire  signed [63:0] wide_trip_count11_fu_696_p1;
reg  signed [63:0] wide_trip_count11_reg_1076;
wire    ap_CS_fsm_state41;
wire   [0:0] trunc_ln16_2_fu_705_p1;
reg   [0:0] trunc_ln16_2_reg_1085;
wire    ap_CS_fsm_state42;
reg   [9:0] lshr_ln9_3_reg_1090;
wire   [63:0] add_ln16_2_fu_719_p2;
reg   [63:0] add_ln16_2_reg_1100;
wire    ap_CS_fsm_state43;
wire   [0:0] trunc_ln17_2_fu_745_p1;
reg   [0:0] trunc_ln17_2_reg_1120;
wire   [63:0] select_ln17_4_fu_755_p3;
reg   [63:0] select_ln17_4_reg_1135;
wire    ap_CS_fsm_state44;
wire   [63:0] select_ln17_5_fu_762_p3;
reg   [63:0] select_ln17_5_reg_1140;
wire   [63:0] bitcast_ln17_4_fu_769_p1;
wire    ap_CS_fsm_state45;
wire   [63:0] bitcast_ln17_5_fu_773_p1;
wire    ap_CS_fsm_state59;
wire   [63:0] add_ln15_fu_777_p2;
reg   [63:0] add_ln15_reg_1160;
wire    ap_CS_fsm_state60;
wire  signed [63:0] wide_trip_count15_fu_782_p1;
reg  signed [63:0] wide_trip_count15_reg_1165;
wire   [0:0] trunc_ln16_3_fu_791_p1;
reg   [0:0] trunc_ln16_3_reg_1173;
wire    ap_CS_fsm_state61;
reg   [9:0] lshr_ln9_4_reg_1178;
wire   [63:0] add_ln16_3_fu_805_p2;
reg   [63:0] add_ln16_3_reg_1188;
wire    ap_CS_fsm_state62;
wire   [0:0] trunc_ln17_3_fu_825_p1;
reg   [0:0] trunc_ln17_3_reg_1203;
wire   [63:0] select_ln17_6_fu_835_p3;
reg   [63:0] select_ln17_6_reg_1218;
wire    ap_CS_fsm_state63;
wire   [63:0] select_ln17_7_fu_842_p3;
reg   [63:0] select_ln17_7_reg_1223;
wire   [63:0] bitcast_ln17_6_fu_849_p1;
wire    ap_CS_fsm_state64;
wire   [63:0] bitcast_ln17_7_fu_853_p1;
wire    ap_CS_fsm_state78;
reg   [63:0] j_1_reg_367;
reg   [63:0] sum_reg_377;
reg   [63:0] j_3_reg_389;
reg   [63:0] sum_2_reg_399;
reg   [63:0] j_5_reg_411;
reg   [63:0] sum_4_reg_421;
reg   [63:0] j_7_reg_433;
reg   [63:0] sum_6_reg_443;
wire   [0:0] icmp_ln16_fu_514_p2;
wire   [63:0] zext_ln9_1_fu_566_p1;
wire   [63:0] zext_ln17_fu_575_p1;
wire   [0:0] icmp_ln16_1_fu_624_p2;
wire   [0:0] icmp_ln12_fu_654_p2;
wire   [63:0] zext_ln9_2_fu_659_p1;
wire   [63:0] zext_ln17_1_fu_668_p1;
wire   [0:0] icmp_ln16_2_fu_700_p2;
wire   [63:0] zext_ln15_1_fu_735_p1;
wire   [63:0] zext_ln9_3_fu_740_p1;
wire   [63:0] zext_ln17_2_fu_749_p1;
wire   [0:0] icmp_ln16_3_fu_786_p2;
wire   [63:0] zext_ln9_4_fu_820_p1;
wire   [63:0] zext_ln17_3_fu_829_p1;
reg   [63:0] i_fu_86;
reg    rowDelimiters_0_ce0_local;
reg   [7:0] rowDelimiters_0_address0_local;
reg    rowDelimiters_1_ce0_local;
reg   [7:0] rowDelimiters_1_address0_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    out_0_we0_local;
reg   [63:0] out_0_d0_local;
wire   [63:0] bitcast_ln20_fu_539_p1;
reg    out_0_ce0_local;
reg   [7:0] out_0_address0_local;
wire   [63:0] bitcast_ln20_2_fu_725_p1;
reg    val_0_ce0_local;
reg   [9:0] val_0_address0_local;
reg    val_1_ce0_local;
reg   [9:0] val_1_address0_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg    out_1_we0_local;
reg   [63:0] out_1_d0_local;
wire   [63:0] bitcast_ln20_1_fu_649_p1;
reg    out_1_ce0_local;
reg   [7:0] out_1_address0_local;
wire   [63:0] bitcast_ln20_3_fu_811_p1;
reg   [63:0] grp_fu_455_p0;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state33;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state71;
reg   [63:0] grp_fu_463_p0;
reg   [63:0] grp_fu_463_p1;
wire   [6:0] tmp_2_fu_544_p4;
wire   [7:0] or_ln15_1_fu_553_p3;
wire   [7:0] grp_fu_467_p4;
wire   [61:0] tmp_fu_603_p4;
wire   [7:0] add_ln15_1_fu_730_p2;
reg   [77:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
wire    ap_ST_fsm_state72_blk;
wire    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
wire    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 78'd1;
#0 i_fu_86 = 64'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_455_p0),.din1(reg_477),.ce(1'b1),.dout(grp_fu_455_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_463_p0),.din1(grp_fu_463_p1),.ce(1'b1),.dout(grp_fu_463_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_86 <= 64'd0;
    end else if (((icmp_ln16_3_fu_786_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state61))) begin
        i_fu_86 <= add_ln15_reg_1160;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        j_1_reg_367 <= add_ln16_reg_917;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_367 <= sext_ln16_fu_506_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        j_3_reg_389 <= wide_trip_count_reg_893;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        j_3_reg_389 <= add_ln16_1_reg_1013;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        j_5_reg_411 <= wide_trip_count7_reg_989;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        j_5_reg_411 <= add_ln16_2_reg_1100;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        j_7_reg_433 <= wide_trip_count11_reg_1076;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        j_7_reg_433 <= add_ln16_3_reg_1188;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        sum_2_reg_399 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        sum_2_reg_399 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        sum_4_reg_421 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        sum_4_reg_421 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        sum_6_reg_443 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        sum_6_reg_443 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sum_reg_377 <= grp_fu_455_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_reg_377 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        add_ln15_reg_1160 <= add_ln15_fu_777_p2;
        wide_trip_count15_reg_1165 <= wide_trip_count15_fu_782_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        add_ln16_1_reg_1013 <= add_ln16_1_fu_643_p2;
        lshr_ln9_2_reg_1003 <= {{j_3_reg_389[10:1]}};
        trunc_ln16_1_reg_998 <= trunc_ln16_1_fu_629_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        add_ln16_2_reg_1100 <= add_ln16_2_fu_719_p2;
        lshr_ln9_3_reg_1090 <= {{j_5_reg_411[10:1]}};
        trunc_ln16_2_reg_1085 <= trunc_ln16_2_fu_705_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        add_ln16_3_reg_1188 <= add_ln16_3_fu_805_p2;
        lshr_ln9_4_reg_1178 <= {{j_7_reg_433[10:1]}};
        trunc_ln16_3_reg_1173 <= trunc_ln16_3_fu_791_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_917 <= add_ln16_fu_533_p2;
        lshr_ln9_1_reg_907 <= {{j_1_reg_367[10:1]}};
        trunc_ln16_reg_902 <= trunc_ln16_fu_519_p1;
        zext_ln15_reg_922[7 : 1] <= zext_ln15_fu_561_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln9_reg_867 <= {{i_fu_86[8:1]}};
        zext_ln9_reg_872[7 : 0] <= zext_ln9_fu_500_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        or_ln_reg_984[63 : 2] <= or_ln_fu_612_p3[63 : 2];
        wide_trip_count7_reg_989 <= wide_trip_count7_fu_620_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_477 <= grp_fu_463_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        select_ln17_1_reg_964 <= select_ln17_1_fu_588_p3;
        select_ln17_reg_959 <= select_ln17_fu_581_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        select_ln17_2_reg_1051 <= select_ln17_2_fu_674_p3;
        select_ln17_3_reg_1056 <= select_ln17_3_fu_681_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        select_ln17_4_reg_1135 <= select_ln17_4_fu_755_p3;
        select_ln17_5_reg_1140 <= select_ln17_5_fu_762_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        select_ln17_6_reg_1218 <= select_ln17_6_fu_835_p3;
        select_ln17_7_reg_1223 <= select_ln17_7_fu_842_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln17_1_reg_1036 <= trunc_ln17_1_fu_664_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        trunc_ln17_2_reg_1120 <= trunc_ln17_2_fu_745_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        trunc_ln17_3_reg_1203 <= trunc_ln17_3_fu_825_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        trunc_ln17_reg_944 <= trunc_ln17_fu_571_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        wide_trip_count11_reg_1076 <= wide_trip_count11_fu_696_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wide_trip_count_reg_893 <= wide_trip_count_fu_510_p1;
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
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state58_blk = 1'b0;
assign ap_ST_fsm_state59_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state60_blk = 1'b0;
assign ap_ST_fsm_state61_blk = 1'b0;
assign ap_ST_fsm_state62_blk = 1'b0;
assign ap_ST_fsm_state63_blk = 1'b0;
assign ap_ST_fsm_state64_blk = 1'b0;
assign ap_ST_fsm_state65_blk = 1'b0;
assign ap_ST_fsm_state66_blk = 1'b0;
assign ap_ST_fsm_state67_blk = 1'b0;
assign ap_ST_fsm_state68_blk = 1'b0;
assign ap_ST_fsm_state69_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state70_blk = 1'b0;
assign ap_ST_fsm_state71_blk = 1'b0;
assign ap_ST_fsm_state72_blk = 1'b0;
assign ap_ST_fsm_state73_blk = 1'b0;
assign ap_ST_fsm_state74_blk = 1'b0;
assign ap_ST_fsm_state75_blk = 1'b0;
assign ap_ST_fsm_state76_blk = 1'b0;
assign ap_ST_fsm_state77_blk = 1'b0;
assign ap_ST_fsm_state78_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_654_p2 == 1'd0) & (icmp_ln16_1_fu_624_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
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
    if (((icmp_ln12_fu_654_p2 == 1'd0) & (icmp_ln16_1_fu_624_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        cols_address0_local = j_7_reg_433;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        cols_address0_local = j_5_reg_411;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        cols_address0_local = j_3_reg_389;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        cols_address0_local = j_1_reg_367;
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state4))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state71)) begin
        grp_fu_455_p0 = sum_6_reg_443;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_455_p0 = sum_4_reg_421;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_455_p0 = sum_2_reg_399;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_455_p0 = sum_reg_377;
    end else begin
        grp_fu_455_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_463_p0 = bitcast_ln17_6_fu_849_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_463_p0 = bitcast_ln17_4_fu_769_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_463_p0 = bitcast_ln17_2_fu_688_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_463_p0 = bitcast_ln17_fu_595_p1;
    end else begin
        grp_fu_463_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_463_p1 = bitcast_ln17_7_fu_853_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_463_p1 = bitcast_ln17_5_fu_773_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_463_p1 = bitcast_ln17_3_fu_692_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_463_p1 = bitcast_ln17_1_fu_599_p1;
    end else begin
        grp_fu_463_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        out_0_address0_local = zext_ln15_reg_922;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_0_address0_local = zext_ln9_reg_872;
    end else begin
        out_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state4))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        out_0_d0_local = bitcast_ln20_2_fu_725_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_0_d0_local = bitcast_ln20_fu_539_p1;
    end else begin
        out_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln16_2_fu_700_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state42)) | ((icmp_ln16_fu_514_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        out_1_address0_local = zext_ln15_reg_922;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_1_address0_local = zext_ln9_reg_872;
    end else begin
        out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state23))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        out_1_d0_local = bitcast_ln20_3_fu_811_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_1_d0_local = bitcast_ln20_1_fu_649_p1;
    end else begin
        out_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln16_3_fu_786_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state61)) | ((icmp_ln16_1_fu_624_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23)))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        rowDelimiters_0_address0_local = zext_ln15_1_fu_735_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_0_address0_local = zext_ln15_fu_561_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_address0_local = zext_ln9_fu_500_p1;
    end else begin
        rowDelimiters_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        rowDelimiters_1_address0_local = zext_ln15_reg_922;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_address0_local = zext_ln9_fu_500_p1;
    end else begin
        rowDelimiters_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        val_0_address0_local = zext_ln9_4_fu_820_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        val_0_address0_local = zext_ln9_3_fu_740_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        val_0_address0_local = zext_ln9_2_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_0_address0_local = zext_ln9_1_fu_566_p1;
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        val_1_address0_local = zext_ln9_4_fu_820_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        val_1_address0_local = zext_ln9_3_fu_740_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        val_1_address0_local = zext_ln9_2_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_1_address0_local = zext_ln9_1_fu_566_p1;
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        vec_0_address0_local = zext_ln17_3_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        vec_0_address0_local = zext_ln17_2_fu_749_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_0_address0_local = zext_ln17_1_fu_668_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_0_address0_local = zext_ln17_fu_575_p1;
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        vec_1_address0_local = zext_ln17_3_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        vec_1_address0_local = zext_ln17_2_fu_749_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_1_address0_local = zext_ln17_1_fu_668_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_1_address0_local = zext_ln17_fu_575_p1;
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
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
            if (((icmp_ln16_fu_514_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((icmp_ln12_fu_654_p2 == 1'd0) & (icmp_ln16_1_fu_624_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln12_fu_654_p2 == 1'd1) & (icmp_ln16_1_fu_624_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state41;
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
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            if (((icmp_ln16_2_fu_700_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state42))) begin
                ap_NS_fsm = ap_ST_fsm_state60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            if (((icmp_ln16_3_fu_786_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state61))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state62;
            end
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_730_p2 = (lshr_ln9_reg_867 + 8'd2);
assign add_ln15_fu_777_p2 = (i_fu_86 + 64'd4);
assign add_ln16_1_fu_643_p2 = (j_3_reg_389 + 64'd1);
assign add_ln16_2_fu_719_p2 = (j_5_reg_411 + 64'd1);
assign add_ln16_3_fu_805_p2 = (j_7_reg_433 + 64'd1);
assign add_ln16_fu_533_p2 = (j_1_reg_367 + 64'd1);
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
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];
assign ap_CS_fsm_state61 = ap_CS_fsm[32'd60];
assign ap_CS_fsm_state62 = ap_CS_fsm[32'd61];
assign ap_CS_fsm_state63 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state70 = ap_CS_fsm[32'd69];
assign ap_CS_fsm_state71 = ap_CS_fsm[32'd70];
assign ap_CS_fsm_state78 = ap_CS_fsm[32'd77];
assign bitcast_ln17_1_fu_599_p1 = select_ln17_1_reg_964;
assign bitcast_ln17_2_fu_688_p1 = select_ln17_2_reg_1051;
assign bitcast_ln17_3_fu_692_p1 = select_ln17_3_reg_1056;
assign bitcast_ln17_4_fu_769_p1 = select_ln17_4_reg_1135;
assign bitcast_ln17_5_fu_773_p1 = select_ln17_5_reg_1140;
assign bitcast_ln17_6_fu_849_p1 = select_ln17_6_reg_1218;
assign bitcast_ln17_7_fu_853_p1 = select_ln17_7_reg_1223;
assign bitcast_ln17_fu_595_p1 = select_ln17_reg_959;
assign bitcast_ln20_1_fu_649_p1 = sum_2_reg_399;
assign bitcast_ln20_2_fu_725_p1 = sum_4_reg_421;
assign bitcast_ln20_3_fu_811_p1 = sum_6_reg_443;
assign bitcast_ln20_fu_539_p1 = sum_reg_377;
assign cols_address0 = cols_address0_local;
assign cols_ce0 = cols_ce0_local;
assign grp_fu_467_p4 = {{cols_q0[8:1]}};
assign icmp_ln12_fu_654_p2 = (($signed(or_ln_reg_984) < $signed(64'd494)) ? 1'b1 : 1'b0);
assign icmp_ln16_1_fu_624_p2 = (($signed(j_3_reg_389) < $signed(wide_trip_count7_reg_989)) ? 1'b1 : 1'b0);
assign icmp_ln16_2_fu_700_p2 = (($signed(j_5_reg_411) < $signed(wide_trip_count11_reg_1076)) ? 1'b1 : 1'b0);
assign icmp_ln16_3_fu_786_p2 = (($signed(j_7_reg_433) < $signed(wide_trip_count15_reg_1165)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_514_p2 = (($signed(j_1_reg_367) < $signed(wide_trip_count_reg_893)) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_490_p4 = {{i_fu_86[8:1]}};
assign or_ln15_1_fu_553_p3 = {{tmp_2_fu_544_p4}, {1'd1}};
assign or_ln_fu_612_p3 = {{tmp_fu_603_p4}, {2'd2}};
assign out_0_address0 = out_0_address0_local;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = out_0_d0_local;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_address0_local;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = out_1_d0_local;
assign out_1_we0 = out_1_we0_local;
assign rowDelimiters_0_address0 = rowDelimiters_0_address0_local;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_1_address0 = rowDelimiters_1_address0_local;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign select_ln17_1_fu_588_p3 = ((trunc_ln17_reg_944[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_2_fu_674_p3 = ((trunc_ln16_1_reg_998[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign select_ln17_3_fu_681_p3 = ((trunc_ln17_1_reg_1036[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_4_fu_755_p3 = ((trunc_ln16_2_reg_1085[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign select_ln17_5_fu_762_p3 = ((trunc_ln17_2_reg_1120[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_6_fu_835_p3 = ((trunc_ln16_3_reg_1173[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign select_ln17_7_fu_842_p3 = ((trunc_ln17_3_reg_1203[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_fu_581_p3 = ((trunc_ln16_reg_902[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign sext_ln16_fu_506_p1 = $signed(rowDelimiters_0_q0);
assign tmp_2_fu_544_p4 = {{i_fu_86[8:2]}};
assign tmp_fu_603_p4 = {{i_fu_86[63:2]}};
assign trunc_ln16_1_fu_629_p1 = j_3_reg_389[0:0];
assign trunc_ln16_2_fu_705_p1 = j_5_reg_411[0:0];
assign trunc_ln16_3_fu_791_p1 = j_7_reg_433[0:0];
assign trunc_ln16_fu_519_p1 = j_1_reg_367[0:0];
assign trunc_ln17_1_fu_664_p1 = cols_q0[0:0];
assign trunc_ln17_2_fu_745_p1 = cols_q0[0:0];
assign trunc_ln17_3_fu_825_p1 = cols_q0[0:0];
assign trunc_ln17_fu_571_p1 = cols_q0[0:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_ce0 = val_1_ce0_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign wide_trip_count11_fu_696_p1 = $signed(rowDelimiters_1_q0);
assign wide_trip_count15_fu_782_p1 = $signed(rowDelimiters_0_q0);
assign wide_trip_count7_fu_620_p1 = $signed(rowDelimiters_0_q0);
assign wide_trip_count_fu_510_p1 = $signed(rowDelimiters_1_q0);
assign zext_ln15_1_fu_735_p1 = add_ln15_1_fu_730_p2;
assign zext_ln15_fu_561_p1 = or_ln15_1_fu_553_p3;
assign zext_ln17_1_fu_668_p1 = grp_fu_467_p4;
assign zext_ln17_2_fu_749_p1 = grp_fu_467_p4;
assign zext_ln17_3_fu_829_p1 = grp_fu_467_p4;
assign zext_ln17_fu_575_p1 = grp_fu_467_p4;
assign zext_ln9_1_fu_566_p1 = lshr_ln9_1_reg_907;
assign zext_ln9_2_fu_659_p1 = lshr_ln9_2_reg_1003;
assign zext_ln9_3_fu_740_p1 = lshr_ln9_3_reg_1090;
assign zext_ln9_4_fu_820_p1 = lshr_ln9_4_reg_1178;
assign zext_ln9_fu_500_p1 = lshr_ln9_fu_490_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_872[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln15_reg_922[0] <= 1'b1;
    zext_ln15_reg_922[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    or_ln_reg_984[1:0] <= 2'b10;
end
endmodule 