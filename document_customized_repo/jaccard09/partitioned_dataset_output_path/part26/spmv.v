
module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_r_address0,val_r_ce0,val_r_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_address0,rowDelimiters_ce0,rowDelimiters_q0,rowDelimiters_address1,rowDelimiters_ce1,rowDelimiters_q1,vec_address0,vec_ce0,vec_q0,out_r_address0,out_r_ce0,out_r_we0,out_r_d0);  
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
output  [10:0] val_r_address0;
output   val_r_ce0;
input  [63:0] val_r_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [8:0] rowDelimiters_address0;
output   rowDelimiters_ce0;
input  [31:0] rowDelimiters_q0;
output  [8:0] rowDelimiters_address1;
output   rowDelimiters_ce1;
input  [31:0] rowDelimiters_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [39:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_239;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state25;
reg   [63:0] reg_243;
wire   [63:0] grp_fu_235_p2;
reg   [63:0] reg_247;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state32;
wire   [63:0] zext_ln12_fu_266_p1;
reg   [63:0] zext_ln12_reg_395;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln15_fu_289_p1;
reg   [63:0] zext_ln15_reg_405;
wire  signed [63:0] sext_ln16_fu_294_p1;
wire    ap_CS_fsm_state3;
wire  signed [63:0] wide_trip_count_fu_298_p1;
reg  signed [63:0] wide_trip_count_reg_420;
wire    ap_CS_fsm_state4;
wire   [8:0] add_ln15_fu_312_p2;
reg   [8:0] add_ln15_reg_434;
wire    ap_CS_fsm_state5;
wire   [63:0] add_ln16_fu_327_p2;
reg   [63:0] add_ln16_reg_454;
wire   [63:0] bitcast_ln17_fu_333_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] bitcast_ln17_1_fu_338_p1;
wire   [63:0] grp_fu_229_p2;
wire    ap_CS_fsm_state21;
wire  signed [63:0] wide_trip_count7_fu_343_p1;
reg  signed [63:0] wide_trip_count7_reg_474;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire   [63:0] add_ln16_1_fu_352_p2;
reg   [63:0] add_ln16_1_reg_487;
wire    ap_CS_fsm_state24;
wire   [63:0] bitcast_ln17_2_fu_372_p1;
wire    ap_CS_fsm_state26;
wire   [63:0] bitcast_ln17_3_fu_377_p1;
wire    ap_CS_fsm_state40;
reg   [63:0] j_1_reg_181;
reg   [63:0] sum_reg_193;
reg   [63:0] j_3_reg_205;
reg   [63:0] sum_2_reg_217;
wire   [0:0] icmp_ln12_fu_260_p2;
wire   [0:0] icmp_ln16_fu_302_p2;
wire   [63:0] zext_ln15_1_fu_317_p1;
wire   [63:0] zext_ln17_fu_322_p1;
wire   [0:0] icmp_ln16_1_fu_347_p2;
wire   [63:0] zext_ln17_1_fu_367_p1;
reg   [8:0] i_fu_60;
reg    rowDelimiters_ce1_local;
reg    rowDelimiters_ce0_local;
reg   [8:0] rowDelimiters_address0_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    out_r_we0_local;
reg   [63:0] out_r_d0_local;
wire   [63:0] bitcast_ln20_fu_307_p1;
reg    out_r_ce0_local;
reg   [8:0] out_r_address0_local;
wire   [63:0] bitcast_ln20_1_fu_358_p1;
reg    val_r_ce0_local;
reg   [10:0] val_r_address0_local;
reg    vec_ce0_local;
reg   [8:0] vec_address0_local;
reg   [63:0] grp_fu_229_p0;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state33;
reg   [63:0] grp_fu_235_p0;
reg   [63:0] grp_fu_235_p1;
wire   [7:0] tmp_fu_271_p4;
wire   [8:0] or_ln_fu_281_p3;
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
#0 i_fu_60 = 9'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_229_p0),.din1(reg_247),.ce(1'b1),.dout(grp_fu_229_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_235_p0),.din1(grp_fu_235_p1),.ce(1'b1),.dout(grp_fu_235_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_60 <= 9'd0;
    end else if (((icmp_ln16_1_fu_347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        i_fu_60 <= add_ln15_reg_434;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        j_1_reg_181 <= add_ln16_reg_454;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_181 <= sext_ln16_fu_294_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        j_3_reg_205 <= wide_trip_count_reg_420;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        j_3_reg_205 <= add_ln16_1_reg_487;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        sum_2_reg_217 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        sum_2_reg_217 <= grp_fu_229_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sum_reg_193 <= grp_fu_229_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_reg_193 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln15_reg_434 <= add_ln15_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        add_ln16_1_reg_487 <= add_ln16_1_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln16_reg_454 <= add_ln16_fu_327_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_239 <= val_r_q0;
        reg_243 <= vec_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_247 <= grp_fu_235_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        wide_trip_count7_reg_474 <= wide_trip_count7_fu_343_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wide_trip_count_reg_420 <= wide_trip_count_fu_298_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln12_reg_395[8 : 0] <= zext_ln12_fu_266_p1[8 : 0];
        zext_ln15_reg_405[8 : 1] <= zext_ln15_fu_289_p1[8 : 1];
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
    if (((icmp_ln12_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        cols_address0_local = j_3_reg_205;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        cols_address0_local = j_1_reg_181;
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
        grp_fu_229_p0 = sum_2_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_229_p0 = sum_reg_193;
    end else begin
        grp_fu_229_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_235_p0 = bitcast_ln17_2_fu_372_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_235_p0 = bitcast_ln17_fu_333_p1;
    end else begin
        grp_fu_235_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_235_p1 = bitcast_ln17_3_fu_377_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_235_p1 = bitcast_ln17_1_fu_338_p1;
    end else begin
        grp_fu_235_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_r_address0_local = zext_ln15_reg_405;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_r_address0_local = zext_ln12_reg_395;
    end else begin
        out_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state4))) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        out_r_d0_local = bitcast_ln20_1_fu_358_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        out_r_d0_local = bitcast_ln20_fu_307_p1;
    end else begin
        out_r_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln16_1_fu_347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23)) | ((icmp_ln16_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rowDelimiters_address0_local = zext_ln15_1_fu_317_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_address0_local = zext_ln15_fu_289_p1;
    end else begin
        rowDelimiters_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        rowDelimiters_ce0_local = 1'b1;
    end else begin
        rowDelimiters_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_ce1_local = 1'b1;
    end else begin
        rowDelimiters_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        val_r_address0_local = j_3_reg_205;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        val_r_address0_local = j_1_reg_181;
    end else begin
        val_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        val_r_ce0_local = 1'b1;
    end else begin
        val_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        vec_address0_local = zext_ln17_1_fu_367_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        vec_address0_local = zext_ln17_fu_322_p1;
    end else begin
        vec_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state5))) begin
        vec_ce0_local = 1'b1;
    end else begin
        vec_ce0_local = 1'b0;
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
            if (((icmp_ln12_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
            if (((icmp_ln16_1_fu_347_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
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
assign add_ln15_fu_312_p2 = (i_fu_60 + 9'd2);
assign add_ln16_1_fu_352_p2 = (j_3_reg_205 + 64'd1);
assign add_ln16_fu_327_p2 = (j_1_reg_181 + 64'd1);
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
assign bitcast_ln17_1_fu_338_p1 = reg_243;
assign bitcast_ln17_2_fu_372_p1 = reg_239;
assign bitcast_ln17_3_fu_377_p1 = reg_243;
assign bitcast_ln17_fu_333_p1 = reg_239;
assign bitcast_ln20_1_fu_358_p1 = sum_2_reg_217;
assign bitcast_ln20_fu_307_p1 = sum_reg_193;
assign cols_address0 = cols_address0_local;
assign cols_ce0 = cols_ce0_local;
assign icmp_ln12_fu_260_p2 = ((i_fu_60 < 9'd494) ? 1'b1 : 1'b0);
assign icmp_ln16_1_fu_347_p2 = (($signed(j_3_reg_205) < $signed(wide_trip_count7_reg_474)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_302_p2 = (($signed(j_1_reg_181) < $signed(wide_trip_count_reg_420)) ? 1'b1 : 1'b0);
assign or_ln_fu_281_p3 = {{tmp_fu_271_p4}, {1'd1}};
assign out_r_address0 = out_r_address0_local;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_d0 = out_r_d0_local;
assign out_r_we0 = out_r_we0_local;
assign rowDelimiters_address0 = rowDelimiters_address0_local;
assign rowDelimiters_address1 = zext_ln12_fu_266_p1;
assign rowDelimiters_ce0 = rowDelimiters_ce0_local;
assign rowDelimiters_ce1 = rowDelimiters_ce1_local;
assign sext_ln16_fu_294_p1 = $signed(rowDelimiters_q1);
assign tmp_fu_271_p4 = {{i_fu_60[8:1]}};
assign val_r_address0 = val_r_address0_local;
assign val_r_ce0 = val_r_ce0_local;
assign vec_address0 = vec_address0_local;
assign vec_ce0 = vec_ce0_local;
assign wide_trip_count7_fu_343_p1 = $signed(rowDelimiters_q0);
assign wide_trip_count_fu_298_p1 = $signed(rowDelimiters_q0);
assign zext_ln12_fu_266_p1 = i_fu_60;
assign zext_ln15_1_fu_317_p1 = add_ln15_fu_312_p2;
assign zext_ln15_fu_289_p1 = or_ln_fu_281_p3;
assign zext_ln17_1_fu_367_p1 = cols_q0;
assign zext_ln17_fu_322_p1 = cols_q0;
always @ (posedge ap_clk) begin
    zext_ln12_reg_395[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln15_reg_405[0] <= 1'b1;
    zext_ln15_reg_405[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
