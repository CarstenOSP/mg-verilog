module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0); 
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
(* fsm_encoding = "none" *) reg   [39:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_291_p2;
reg   [63:0] reg_305;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state32;
wire   [7:0] lshr_ln9_fu_324_p4;
reg   [7:0] lshr_ln9_reg_518;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln9_fu_334_p1;
reg   [63:0] zext_ln9_reg_523;
wire  signed [63:0] sext_ln16_fu_340_p1;
wire    ap_CS_fsm_state3;
wire  signed [63:0] wide_trip_count_fu_344_p1;
reg  signed [63:0] wide_trip_count_reg_544;
wire   [0:0] trunc_ln16_fu_353_p1;
reg   [0:0] trunc_ln16_reg_553;
wire    ap_CS_fsm_state4;
reg   [9:0] lshr_ln9_1_reg_558;
wire   [63:0] add_ln16_fu_367_p2;
reg   [63:0] add_ln16_reg_568;
wire    ap_CS_fsm_state5;
wire   [0:0] trunc_ln17_fu_393_p1;
reg   [0:0] trunc_ln17_reg_588;
wire   [63:0] select_ln17_fu_403_p3;
reg   [63:0] select_ln17_reg_603;
wire    ap_CS_fsm_state6;
wire   [63:0] select_ln17_1_fu_410_p3;
reg   [63:0] select_ln17_1_reg_608;
wire   [63:0] bitcast_ln17_fu_417_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] bitcast_ln17_1_fu_421_p1;
wire   [63:0] grp_fu_285_p2;
wire    ap_CS_fsm_state21;
wire   [8:0] add_ln15_fu_425_p2;
reg   [8:0] add_ln15_reg_628;
wire    ap_CS_fsm_state22;
wire  signed [63:0] wide_trip_count7_fu_430_p1;
reg  signed [63:0] wide_trip_count7_reg_633;
wire   [0:0] trunc_ln16_1_fu_439_p1;
reg   [0:0] trunc_ln16_1_reg_641;
wire    ap_CS_fsm_state23;
reg   [9:0] lshr_ln9_2_reg_646;
wire   [63:0] add_ln16_1_fu_453_p2;
reg   [63:0] add_ln16_1_reg_656;
wire    ap_CS_fsm_state24;
wire   [0:0] trunc_ln17_1_fu_473_p1;
reg   [0:0] trunc_ln17_1_reg_671;
wire   [63:0] select_ln17_2_fu_483_p3;
reg   [63:0] select_ln17_2_reg_686;
wire    ap_CS_fsm_state25;
wire   [63:0] select_ln17_3_fu_490_p3;
reg   [63:0] select_ln17_3_reg_691;
wire   [63:0] bitcast_ln17_2_fu_497_p1;
wire    ap_CS_fsm_state26;
wire   [63:0] bitcast_ln17_3_fu_501_p1;
wire    ap_CS_fsm_state40;
reg   [63:0] j_1_reg_241;
reg   [63:0] sum_reg_251;
reg   [63:0] j_3_reg_263;
reg   [63:0] sum_2_reg_273;
wire   [0:0] icmp_ln12_fu_318_p2;
wire   [0:0] icmp_ln16_fu_348_p2;
wire   [63:0] zext_ln15_fu_383_p1;
wire   [63:0] zext_ln9_1_fu_388_p1;
wire   [63:0] zext_ln17_fu_397_p1;
wire   [0:0] icmp_ln16_1_fu_434_p2;
wire   [63:0] zext_ln9_2_fu_468_p1;
wire   [63:0] zext_ln17_1_fu_477_p1;
reg   [8:0] i_fu_72;
reg    rowDelimiters_0_ce0_local;
reg   [7:0] rowDelimiters_0_address0_local;
reg    rowDelimiters_1_ce0_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln20_fu_373_p1;
reg    out_0_ce0_local;
reg    val_0_ce0_local;
reg   [9:0] val_0_address0_local;
reg    val_1_ce0_local;
reg   [9:0] val_1_address0_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg    out_1_we0_local;
wire   [63:0] bitcast_ln20_1_fu_459_p1;
reg    out_1_ce0_local;
reg   [63:0] grp_fu_285_p0;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state33;
reg   [63:0] grp_fu_291_p0;
reg   [63:0] grp_fu_291_p1;
wire   [7:0] add_ln15_1_fu_378_p2;
wire   [7:0] grp_fu_295_p4;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 40'd1;
#0 i_fu_72 = 9'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_285_p0),.din1(reg_305),.ce(1'b1),.dout(grp_fu_285_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_291_p0),.din1(grp_fu_291_p1),.ce(1'b1),.dout(grp_fu_291_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_72 <= 9'd0;
    end else if (((icmp_ln16_1_fu_434_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        i_fu_72 <= add_ln15_reg_628;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        j_1_reg_241 <= add_ln16_reg_568;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_241 <= sext_ln16_fu_340_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        j_3_reg_263 <= wide_trip_count_reg_544;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        j_3_reg_263 <= add_ln16_1_reg_656;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        sum_2_reg_273 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        sum_2_reg_273 <= grp_fu_285_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sum_reg_251 <= grp_fu_285_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_reg_251 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        add_ln15_reg_628 <= add_ln15_fu_425_p2;
        wide_trip_count7_reg_633 <= wide_trip_count7_fu_430_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        add_ln16_1_reg_656 <= add_ln16_1_fu_453_p2;
        lshr_ln9_2_reg_646 <= {{j_3_reg_263[10:1]}};
        trunc_ln16_1_reg_641 <= trunc_ln16_1_fu_439_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_reg_568 <= add_ln16_fu_367_p2;
        lshr_ln9_1_reg_558 <= {{j_1_reg_241[10:1]}};
        trunc_ln16_reg_553 <= trunc_ln16_fu_353_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln9_reg_518 <= {{i_fu_72[8:1]}};
        zext_ln9_reg_523[7 : 0] <= zext_ln9_fu_334_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_305 <= grp_fu_291_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        select_ln17_1_reg_608 <= select_ln17_1_fu_410_p3;
        select_ln17_reg_603 <= select_ln17_fu_403_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        select_ln17_2_reg_686 <= select_ln17_2_fu_483_p3;
        select_ln17_3_reg_691 <= select_ln17_3_fu_490_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln17_1_reg_671 <= trunc_ln17_1_fu_473_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        trunc_ln17_reg_588 <= trunc_ln17_fu_393_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wide_trip_count_reg_544 <= wide_trip_count_fu_344_p1;
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
    if (((icmp_ln12_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        cols_address0_local = j_3_reg_263;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        cols_address0_local = j_1_reg_241;
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
        grp_fu_285_p0 = sum_2_reg_273;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_285_p0 = sum_reg_251;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_291_p0 = bitcast_ln17_2_fu_497_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_291_p0 = bitcast_ln17_fu_417_p1;
    end else begin
        grp_fu_291_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_291_p1 = bitcast_ln17_3_fu_501_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_291_p1 = bitcast_ln17_1_fu_421_p1;
    end else begin
        grp_fu_291_p1 = 'bx;
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
    if (((icmp_ln16_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((icmp_ln16_1_fu_434_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_0_address0_local = zext_ln15_fu_383_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_address0_local = zext_ln9_fu_334_p1;
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
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_0_address0_local = zext_ln9_2_fu_468_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_0_address0_local = zext_ln9_1_fu_388_p1;
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
        val_1_address0_local = zext_ln9_2_fu_468_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_1_address0_local = zext_ln9_1_fu_388_p1;
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
        vec_0_address0_local = zext_ln17_1_fu_477_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_0_address0_local = zext_ln17_fu_397_p1;
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
        vec_1_address0_local = zext_ln17_1_fu_477_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_1_address0_local = zext_ln17_fu_397_p1;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_318_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((icmp_ln16_1_fu_434_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
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
assign add_ln15_1_fu_378_p2 = (lshr_ln9_reg_518 + 8'd1);
assign add_ln15_fu_425_p2 = (i_fu_72 + 9'd2);
assign add_ln16_1_fu_453_p2 = (j_3_reg_263 + 64'd1);
assign add_ln16_fu_367_p2 = (j_1_reg_241 + 64'd1);
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
assign bitcast_ln17_1_fu_421_p1 = select_ln17_1_reg_608;
assign bitcast_ln17_2_fu_497_p1 = select_ln17_2_reg_686;
assign bitcast_ln17_3_fu_501_p1 = select_ln17_3_reg_691;
assign bitcast_ln17_fu_417_p1 = select_ln17_reg_603;
assign bitcast_ln20_1_fu_459_p1 = sum_2_reg_273;
assign bitcast_ln20_fu_373_p1 = sum_reg_251;
assign cols_address0 = cols_address0_local;
assign cols_ce0 = cols_ce0_local;
assign grp_fu_295_p4 = {{cols_q0[8:1]}};
assign icmp_ln12_fu_318_p2 = ((i_fu_72 < 9'd494) ? 1'b1 : 1'b0);
assign icmp_ln16_1_fu_434_p2 = (($signed(j_3_reg_263) < $signed(wide_trip_count7_reg_633)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_348_p2 = (($signed(j_1_reg_241) < $signed(wide_trip_count_reg_544)) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_324_p4 = {{i_fu_72[8:1]}};
assign out_0_address0 = zext_ln9_reg_523;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_373_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_523;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_1_fu_459_p1;
assign out_1_we0 = out_1_we0_local;
assign rowDelimiters_0_address0 = rowDelimiters_0_address0_local;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_1_address0 = zext_ln9_fu_334_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign select_ln17_1_fu_410_p3 = ((trunc_ln17_reg_588[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_2_fu_483_p3 = ((trunc_ln16_1_reg_641[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign select_ln17_3_fu_490_p3 = ((trunc_ln17_1_reg_671[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_fu_403_p3 = ((trunc_ln16_reg_553[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign sext_ln16_fu_340_p1 = $signed(rowDelimiters_0_q0);
assign trunc_ln16_1_fu_439_p1 = j_3_reg_263[0:0];
assign trunc_ln16_fu_353_p1 = j_1_reg_241[0:0];
assign trunc_ln17_1_fu_473_p1 = cols_q0[0:0];
assign trunc_ln17_fu_393_p1 = cols_q0[0:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_ce0 = val_1_ce0_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign wide_trip_count7_fu_430_p1 = $signed(rowDelimiters_0_q0);
assign wide_trip_count_fu_344_p1 = $signed(rowDelimiters_1_q0);
assign zext_ln15_fu_383_p1 = add_ln15_1_fu_378_p2;
assign zext_ln17_1_fu_477_p1 = grp_fu_295_p4;
assign zext_ln17_fu_397_p1 = grp_fu_295_p4;
assign zext_ln9_1_fu_388_p1 = lshr_ln9_1_reg_558;
assign zext_ln9_2_fu_468_p1 = lshr_ln9_2_reg_646;
assign zext_ln9_fu_334_p1 = lshr_ln9_fu_324_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_523[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 