
module ms_mergesort_merge (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,start_r,m,stop);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [8:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [8:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [8:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] empty_fu_293_p1;
reg   [10:0] empty_reg_591;
wire  signed [63:0] sext_ln7_fu_297_p1;
reg  signed [63:0] sext_ln7_reg_596;
reg   [31:0] i_18_reg_601;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_352_p2;
reg   [10:0] add9_reg_637;
wire  signed [63:0] sext_ln11_1_fu_361_p1;
reg  signed [63:0] sext_ln11_1_reg_642;
wire   [31:0] tmp_fu_372_p11;
reg   [31:0] tmp_reg_648;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln11_fu_408_p1;
reg   [1:0] trunc_ln11_reg_656;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln12_fu_434_p2;
reg   [10:0] sub_ln12_reg_681;
wire   [31:0] tmp_1_fu_462_p11;
reg   [31:0] tmp_1_reg_707;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_j_reg_728;
wire    ap_CS_fsm_state9;
reg   [31:0] tmp_i_reg_737;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [63:0] zext_ln5_fu_324_p1;
wire   [0:0] icmp_ln7_fu_309_p2;
wire   [63:0] zext_ln7_fu_396_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln5_1_fu_426_p1;
wire   [0:0] icmp_ln11_fu_403_p2;
wire   [63:0] zext_ln12_fu_485_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln19_fu_497_p1;
wire   [0:0] icmp_ln18_fu_492_p2;
wire   [63:0] zext_ln20_fu_502_p1;
wire   [63:0] zext_ln5_2_fu_519_p1;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln21_fu_531_p2;
wire   [1:0] trunc_ln18_fu_507_p1;
wire   [8:0] a_2_addr_2_gep_fu_255_p3;
wire   [8:0] a_1_addr_2_gep_fu_263_p3;
wire   [8:0] a_0_addr_2_gep_fu_271_p3;
wire   [8:0] a_3_addr_2_gep_fu_279_p3;
reg   [31:0] i_fu_60;
wire   [31:0] add_ln7_fu_332_p2;
reg   [63:0] j_1_fu_68;
wire   [63:0] add_ln11_fu_439_p2;
wire  signed [63:0] sext_ln11_fu_357_p1;
reg   [63:0] k_fu_72;
wire   [63:0] add_ln18_fu_557_p2;
reg   [31:0] i_12_fu_76;
wire   [31:0] i_19_fu_535_p2;
reg   [31:0] j_2_fu_80;
wire   [31:0] j_4_fu_546_p2;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    temp_ce1_local;
wire  signed [31:0] empty_fu_293_p0;
wire  signed [31:0] sext_ln7_fu_297_p0;
wire   [8:0] lshr_ln5_fu_314_p4;
wire  signed [31:0] j_fu_343_p2;
wire   [10:0] trunc_ln5_fu_348_p1;
wire  signed [31:0] sext_ln11_1_fu_361_p0;
wire   [31:0] tmp_fu_372_p9;
wire   [1:0] tmp_fu_372_p10;
wire   [8:0] lshr_ln5_1_fu_416_p4;
wire   [10:0] trunc_ln11_1_fu_412_p1;
wire   [31:0] tmp_1_fu_462_p9;
wire   [8:0] lshr_ln5_2_fu_510_p4;
reg   [9:0] ap_NS_fsm;
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
wire   [1:0] tmp_fu_372_p1;
wire   [1:0] tmp_fu_372_p3;
wire  signed [1:0] tmp_fu_372_p5;
wire  signed [1:0] tmp_fu_372_p7;
wire   [1:0] tmp_1_fu_462_p1;
wire   [1:0] tmp_1_fu_462_p3;
wire  signed [1:0] tmp_1_fu_462_p5;
wire  signed [1:0] tmp_1_fu_462_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 i_fu_60 = 32'd0;
#0 j_1_fu_68 = 64'd0;
#0 k_fu_72 = 64'd0;
#0 i_12_fu_76 = 32'd0;
#0 j_2_fu_80 = 32'd0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0_local),.ce0(temp_ce0_local),.we0(temp_we0_local),.d0(temp_d0_local),.q0(temp_q0),.address1(temp_address1),.ce1(temp_ce1_local),.q1(temp_q1));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_fu_372_p9),.sel(tmp_fu_372_p10),.dout(tmp_fu_372_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U2(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_1_fu_462_p9),.sel(trunc_ln11_reg_656),.dout(tmp_1_fu_462_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_403_p2 == 1'd1))) begin
        i_12_fu_76 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_531_p2 == 1'd0))) begin
        i_12_fu_76 <= i_19_fu_535_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_60 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_309_p2 == 1'd0))) begin
        i_fu_60 <= add_ln7_fu_332_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_309_p2 == 1'd1))) begin
        j_1_fu_68 <= sext_ln11_fu_357_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_403_p2 == 1'd0))) begin
        j_1_fu_68 <= add_ln11_fu_439_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_403_p2 == 1'd1))) begin
        j_2_fu_80 <= stop;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_531_p2 == 1'd1))) begin
        j_2_fu_80 <= j_4_fu_546_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_403_p2 == 1'd1))) begin
        k_fu_72 <= sext_ln7_reg_596;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_fu_72 <= add_ln18_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_637 <= add9_fu_352_p2;
        i_18_reg_601 <= i_fu_60;
        sext_ln11_1_reg_642 <= sext_ln11_1_fu_361_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_591 <= empty_fu_293_p1;
        sext_ln7_reg_596 <= sext_ln7_fu_297_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln12_reg_681 <= sub_ln12_fu_434_p2;
        trunc_ln11_reg_656 <= trunc_ln11_fu_408_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_1_reg_707 <= tmp_1_fu_462_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_i_reg_737 <= temp_q0;
        tmp_j_reg_728 <= temp_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_648 <= tmp_fu_372_p11;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd1))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_271_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_0_address0_local = zext_ln5_1_fu_426_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0_local = zext_ln5_fu_324_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0))) begin
        if ((icmp_ln21_fu_531_p2 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_728;
        end else if ((icmp_ln21_fu_531_p2 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_737;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd0) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd1))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_263_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_1_address0_local = zext_ln5_1_fu_426_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0_local = zext_ln5_fu_324_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1))) begin
        if ((icmp_ln21_fu_531_p2 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_728;
        end else if ((icmp_ln21_fu_531_p2 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_737;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd1) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd1))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_255_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd0))) begin
        a_2_address0_local = zext_ln5_2_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_2_address0_local = zext_ln5_1_fu_426_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_address0_local = zext_ln5_fu_324_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2))) begin
        if ((icmp_ln21_fu_531_p2 == 1'd1)) begin
            a_2_d0_local = tmp_j_reg_728;
        end else if ((icmp_ln21_fu_531_p2 == 1'd0)) begin
            a_2_d0_local = tmp_i_reg_737;
        end else begin
            a_2_d0_local = 'bx;
        end
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd2) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd1))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_279_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd0))) begin
        a_3_address0_local = zext_ln5_2_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_3_address0_local = zext_ln5_1_fu_426_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_3_address0_local = zext_ln5_fu_324_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3))) begin
        if ((icmp_ln21_fu_531_p2 == 1'd1)) begin
            a_3_d0_local = tmp_j_reg_728;
        end else if ((icmp_ln21_fu_531_p2 == 1'd0)) begin
            a_3_d0_local = tmp_i_reg_737;
        end else begin
            a_3_d0_local = 'bx;
        end
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_507_p1 == 2'd3) & (icmp_ln21_fu_531_p2 == 1'd0)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_492_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_492_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_address0_local = zext_ln20_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0_local = zext_ln12_fu_485_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0_local = zext_ln7_fu_396_p1;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_d0_local = tmp_1_reg_707;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0_local = tmp_reg_648;
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_309_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_403_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_492_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_addr_2_gep_fu_271_p3 = zext_ln5_2_fu_519_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_263_p3 = zext_ln5_2_fu_519_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_255_p3 = zext_ln5_2_fu_519_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_279_p3 = zext_ln5_2_fu_519_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign add9_fu_352_p2 = (trunc_ln5_fu_348_p1 + empty_reg_591);
assign add_ln11_fu_439_p2 = (j_1_fu_68 + 64'd1);
assign add_ln18_fu_557_p2 = (k_fu_72 + 64'd1);
assign add_ln7_fu_332_p2 = (i_fu_60 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_fu_293_p0 = stop;
assign empty_fu_293_p1 = empty_fu_293_p0[10:0];
assign i_19_fu_535_p2 = (i_12_fu_76 + 32'd1);
assign icmp_ln11_fu_403_p2 = (($signed(j_1_fu_68) > $signed(sext_ln11_1_reg_642)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_492_p2 = (($signed(k_fu_72) > $signed(sext_ln11_1_reg_642)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_531_p2 = (($signed(tmp_j_reg_728) < $signed(tmp_i_reg_737)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_309_p2 = (($signed(i_fu_60) > $signed(m)) ? 1'b1 : 1'b0);
assign j_4_fu_546_p2 = ($signed(j_2_fu_80) + $signed(32'd4294967295));
assign j_fu_343_p2 = (m + 32'd1);
assign lshr_ln5_1_fu_416_p4 = {{j_1_fu_68[10:2]}};
assign lshr_ln5_2_fu_510_p4 = {{k_fu_72[10:2]}};
assign lshr_ln5_fu_314_p4 = {{i_fu_60[10:2]}};
assign sext_ln11_1_fu_361_p0 = stop;
assign sext_ln11_1_fu_361_p1 = sext_ln11_1_fu_361_p0;
assign sext_ln11_fu_357_p1 = j_fu_343_p2;
assign sext_ln7_fu_297_p0 = start_r;
assign sext_ln7_fu_297_p1 = sext_ln7_fu_297_p0;
assign sub_ln12_fu_434_p2 = (add9_reg_637 - trunc_ln11_1_fu_412_p1);
assign temp_address1 = zext_ln19_fu_497_p1;
assign tmp_1_fu_462_p9 = 'bx;
assign tmp_fu_372_p10 = i_18_reg_601[1:0];
assign tmp_fu_372_p9 = 'bx;
assign trunc_ln11_1_fu_412_p1 = j_1_fu_68[10:0];
assign trunc_ln11_fu_408_p1 = j_1_fu_68[1:0];
assign trunc_ln18_fu_507_p1 = k_fu_72[1:0];
assign trunc_ln5_fu_348_p1 = j_fu_343_p2[10:0];
assign zext_ln12_fu_485_p1 = sub_ln12_reg_681;
assign zext_ln19_fu_497_p1 = j_2_fu_80;
assign zext_ln20_fu_502_p1 = i_12_fu_76;
assign zext_ln5_1_fu_426_p1 = lshr_ln5_1_fu_416_p4;
assign zext_ln5_2_fu_519_p1 = lshr_ln5_2_fu_510_p4;
assign zext_ln5_fu_324_p1 = lshr_ln5_fu_314_p4;
assign zext_ln7_fu_396_p1 = i_18_reg_601;
endmodule 
