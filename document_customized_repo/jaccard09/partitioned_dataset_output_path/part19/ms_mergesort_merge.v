
module ms_mergesort_merge (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0,start_r,m,stop);  
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
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
input  [31:0] a_4_q0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
input  [31:0] a_5_q0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
input  [31:0] a_6_q0;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
input  [31:0] a_7_q0;
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] empty_fu_457_p1;
reg   [10:0] empty_reg_803;
wire  signed [63:0] sext_ln7_fu_461_p1;
reg  signed [63:0] sext_ln7_reg_808;
reg   [31:0] i_17_reg_813;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_520_p2;
reg   [10:0] add9_reg_869;
wire  signed [63:0] sext_ln11_1_fu_529_p1;
reg  signed [63:0] sext_ln11_1_reg_874;
wire   [31:0] tmp_fu_540_p19;
reg   [31:0] tmp_reg_880;
wire    ap_CS_fsm_state3;
wire   [2:0] trunc_ln11_fu_592_p1;
reg   [2:0] trunc_ln11_reg_888;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln12_fu_622_p2;
reg   [10:0] sub_ln12_reg_933;
wire   [31:0] tmp_1_fu_650_p19;
reg   [31:0] tmp_1_reg_959;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_j_reg_980;
wire    ap_CS_fsm_state9;
reg   [31:0] tmp_i_reg_993;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [63:0] zext_ln5_fu_488_p1;
wire   [0:0] icmp_ln7_fu_473_p2;
wire   [63:0] zext_ln7_fu_580_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln5_1_fu_610_p1;
wire   [0:0] icmp_ln11_fu_587_p2;
wire   [63:0] zext_ln12_fu_689_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln19_fu_701_p1;
wire   [0:0] icmp_ln18_fu_696_p2;
wire   [63:0] zext_ln20_fu_706_p1;
wire   [63:0] zext_ln5_2_fu_723_p1;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln21_fu_743_p2;
wire   [2:0] trunc_ln18_fu_711_p1;
wire   [7:0] a_6_addr_2_gep_fu_387_p3;
wire   [7:0] a_5_addr_2_gep_fu_395_p3;
wire   [7:0] a_4_addr_2_gep_fu_403_p3;
wire   [7:0] a_3_addr_2_gep_fu_411_p3;
wire   [7:0] a_2_addr_2_gep_fu_419_p3;
wire   [7:0] a_1_addr_2_gep_fu_427_p3;
wire   [7:0] a_0_addr_2_gep_fu_435_p3;
wire   [7:0] a_7_addr_2_gep_fu_443_p3;
reg   [31:0] i_fu_76;
wire   [31:0] add_ln7_fu_500_p2;
reg   [63:0] j_1_fu_84;
wire   [63:0] add_ln11_fu_627_p2;
wire  signed [63:0] sext_ln11_fu_525_p1;
reg   [63:0] k_fu_88;
wire   [63:0] add_ln18_fu_769_p2;
reg   [31:0] i_12_fu_92;
wire   [31:0] i_18_fu_747_p2;
reg   [31:0] j_2_fu_96;
wire   [31:0] j_4_fu_758_p2;
reg    a_0_ce0_local;
reg   [7:0] a_0_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_1_ce0_local;
reg   [7:0] a_1_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_2_ce0_local;
reg   [7:0] a_2_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_3_ce0_local;
reg   [7:0] a_3_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_4_ce0_local;
reg   [7:0] a_4_address0_local;
reg    a_4_we0_local;
reg   [31:0] a_4_d0_local;
reg    a_5_ce0_local;
reg   [7:0] a_5_address0_local;
reg    a_5_we0_local;
reg   [31:0] a_5_d0_local;
reg    a_6_ce0_local;
reg   [7:0] a_6_address0_local;
reg    a_6_we0_local;
reg   [31:0] a_6_d0_local;
reg    a_7_ce0_local;
reg   [7:0] a_7_address0_local;
reg    a_7_we0_local;
reg   [31:0] a_7_d0_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    temp_ce1_local;
wire  signed [31:0] empty_fu_457_p0;
wire  signed [31:0] sext_ln7_fu_461_p0;
wire   [7:0] lshr_ln5_fu_478_p4;
wire  signed [31:0] j_fu_511_p2;
wire   [10:0] trunc_ln5_fu_516_p1;
wire  signed [31:0] sext_ln11_1_fu_529_p0;
wire   [31:0] tmp_fu_540_p17;
wire   [2:0] tmp_fu_540_p18;
wire   [7:0] lshr_ln5_1_fu_600_p4;
wire   [10:0] trunc_ln11_1_fu_596_p1;
wire   [31:0] tmp_1_fu_650_p17;
wire   [7:0] lshr_ln5_2_fu_714_p4;
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
wire   [2:0] tmp_fu_540_p1;
wire   [2:0] tmp_fu_540_p3;
wire   [2:0] tmp_fu_540_p5;
wire   [2:0] tmp_fu_540_p7;
wire  signed [2:0] tmp_fu_540_p9;
wire  signed [2:0] tmp_fu_540_p11;
wire  signed [2:0] tmp_fu_540_p13;
wire  signed [2:0] tmp_fu_540_p15;
wire   [2:0] tmp_1_fu_650_p1;
wire   [2:0] tmp_1_fu_650_p3;
wire   [2:0] tmp_1_fu_650_p5;
wire   [2:0] tmp_1_fu_650_p7;
wire  signed [2:0] tmp_1_fu_650_p9;
wire  signed [2:0] tmp_1_fu_650_p11;
wire  signed [2:0] tmp_1_fu_650_p13;
wire  signed [2:0] tmp_1_fu_650_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 i_fu_76 = 32'd0;
#0 j_1_fu_84 = 64'd0;
#0 k_fu_88 = 64'd0;
#0 i_12_fu_92 = 32'd0;
#0 j_2_fu_96 = 32'd0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0_local),.ce0(temp_ce0_local),.we0(temp_we0_local),.d0(temp_d0_local),.q0(temp_q0),.address1(temp_address1),.ce1(temp_ce1_local),.q1(temp_q1));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_fu_540_p17),.sel(tmp_fu_540_p18),.dout(tmp_fu_540_p19));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U2(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.din4(a_4_q0),.din5(a_5_q0),.din6(a_6_q0),.din7(a_7_q0),.def(tmp_1_fu_650_p17),.sel(trunc_ln11_reg_888),.dout(tmp_1_fu_650_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_587_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_12_fu_92 <= start_r;
    end else if (((icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        i_12_fu_92 <= i_18_fu_747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_76 <= start_r;
    end else if (((icmp_ln7_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_76 <= add_ln7_fu_500_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln7_fu_473_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_1_fu_84 <= sext_ln11_fu_525_p1;
    end else if (((icmp_ln11_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_1_fu_84 <= add_ln11_fu_627_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_587_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        j_2_fu_96 <= stop;
    end else if (((icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        j_2_fu_96 <= j_4_fu_758_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_587_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        k_fu_88 <= sext_ln7_reg_808;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_fu_88 <= add_ln18_fu_769_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_869 <= add9_fu_520_p2;
        i_17_reg_813 <= i_fu_76;
        sext_ln11_1_reg_874 <= sext_ln11_1_fu_529_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_803 <= empty_fu_457_p1;
        sext_ln7_reg_808 <= sext_ln7_fu_461_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln12_reg_933 <= sub_ln12_fu_622_p2;
        trunc_ln11_reg_888 <= trunc_ln11_fu_592_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_1_reg_959 <= tmp_1_fu_650_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_i_reg_993 <= temp_q0;
        tmp_j_reg_980 <= temp_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_880 <= tmp_fu_540_p19;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_435_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_0_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_0_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_993;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd0) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_427_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_1_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_1_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_993;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd1) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_419_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_2_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_2_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_2_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_2_d0_local = tmp_i_reg_993;
        end else begin
            a_2_d0_local = 'bx;
        end
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd2) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_411_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_3_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_3_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_3_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_3_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_3_d0_local = tmp_i_reg_993;
        end else begin
            a_3_d0_local = 'bx;
        end
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd3) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_4_address0_local = a_4_addr_2_gep_fu_403_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_4_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_4_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_4_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_4_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_4_d0_local = tmp_i_reg_993;
        end else begin
            a_4_d0_local = 'bx;
        end
    end else begin
        a_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd4) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_4_we0_local = 1'b1;
    end else begin
        a_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_5_address0_local = a_5_addr_2_gep_fu_395_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_5_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_5_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_5_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_5_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_5_d0_local = tmp_i_reg_993;
        end else begin
            a_5_d0_local = 'bx;
        end
    end else begin
        a_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd5) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_5_we0_local = 1'b1;
    end else begin
        a_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_6_address0_local = a_6_addr_2_gep_fu_387_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_6_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_6_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_6_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_6_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_6_d0_local = tmp_i_reg_993;
        end else begin
            a_6_d0_local = 'bx;
        end
    end else begin
        a_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd6) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_6_we0_local = 1'b1;
    end else begin
        a_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        a_7_address0_local = a_7_addr_2_gep_fu_443_p3;
    end else if (((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        a_7_address0_local = zext_ln5_2_fu_723_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_7_address0_local = zext_ln5_1_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_7_address0_local = zext_ln5_fu_488_p1;
    end else begin
        a_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_fu_711_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state10))) begin
        if ((icmp_ln21_fu_743_p2 == 1'd1)) begin
            a_7_d0_local = tmp_j_reg_980;
        end else if ((icmp_ln21_fu_743_p2 == 1'd0)) begin
            a_7_d0_local = tmp_i_reg_993;
        end else begin
            a_7_d0_local = 'bx;
        end
    end else begin
        a_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((trunc_ln18_fu_711_p1 == 3'd7) & (icmp_ln21_fu_743_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10)))) begin
        a_7_we0_local = 1'b1;
    end else begin
        a_7_we0_local = 1'b0;
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
    if ((((icmp_ln18_fu_696_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln18_fu_696_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_address0_local = zext_ln20_fu_706_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0_local = zext_ln12_fu_689_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0_local = zext_ln7_fu_580_p1;
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
        temp_d0_local = tmp_1_reg_959;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0_local = tmp_reg_880;
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
            if (((icmp_ln7_fu_473_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln11_fu_587_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((icmp_ln18_fu_696_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign a_0_addr_2_gep_fu_435_p3 = zext_ln5_2_fu_723_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_427_p3 = zext_ln5_2_fu_723_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_419_p3 = zext_ln5_2_fu_723_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_411_p3 = zext_ln5_2_fu_723_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign a_4_addr_2_gep_fu_403_p3 = zext_ln5_2_fu_723_p1;
assign a_4_address0 = a_4_address0_local;
assign a_4_ce0 = a_4_ce0_local;
assign a_4_d0 = a_4_d0_local;
assign a_4_we0 = a_4_we0_local;
assign a_5_addr_2_gep_fu_395_p3 = zext_ln5_2_fu_723_p1;
assign a_5_address0 = a_5_address0_local;
assign a_5_ce0 = a_5_ce0_local;
assign a_5_d0 = a_5_d0_local;
assign a_5_we0 = a_5_we0_local;
assign a_6_addr_2_gep_fu_387_p3 = zext_ln5_2_fu_723_p1;
assign a_6_address0 = a_6_address0_local;
assign a_6_ce0 = a_6_ce0_local;
assign a_6_d0 = a_6_d0_local;
assign a_6_we0 = a_6_we0_local;
assign a_7_addr_2_gep_fu_443_p3 = zext_ln5_2_fu_723_p1;
assign a_7_address0 = a_7_address0_local;
assign a_7_ce0 = a_7_ce0_local;
assign a_7_d0 = a_7_d0_local;
assign a_7_we0 = a_7_we0_local;
assign add9_fu_520_p2 = (trunc_ln5_fu_516_p1 + empty_reg_803);
assign add_ln11_fu_627_p2 = (j_1_fu_84 + 64'd1);
assign add_ln18_fu_769_p2 = (k_fu_88 + 64'd1);
assign add_ln7_fu_500_p2 = (i_fu_76 + 32'd1);
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
assign empty_fu_457_p0 = stop;
assign empty_fu_457_p1 = empty_fu_457_p0[10:0];
assign i_18_fu_747_p2 = (i_12_fu_92 + 32'd1);
assign icmp_ln11_fu_587_p2 = (($signed(j_1_fu_84) > $signed(sext_ln11_1_reg_874)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_696_p2 = (($signed(k_fu_88) > $signed(sext_ln11_1_reg_874)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_743_p2 = (($signed(tmp_j_reg_980) < $signed(tmp_i_reg_993)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_473_p2 = (($signed(i_fu_76) > $signed(m)) ? 1'b1 : 1'b0);
assign j_4_fu_758_p2 = ($signed(j_2_fu_96) + $signed(32'd4294967295));
assign j_fu_511_p2 = (m + 32'd1);
assign lshr_ln5_1_fu_600_p4 = {{j_1_fu_84[10:3]}};
assign lshr_ln5_2_fu_714_p4 = {{k_fu_88[10:3]}};
assign lshr_ln5_fu_478_p4 = {{i_fu_76[10:3]}};
assign sext_ln11_1_fu_529_p0 = stop;
assign sext_ln11_1_fu_529_p1 = sext_ln11_1_fu_529_p0;
assign sext_ln11_fu_525_p1 = j_fu_511_p2;
assign sext_ln7_fu_461_p0 = start_r;
assign sext_ln7_fu_461_p1 = sext_ln7_fu_461_p0;
assign sub_ln12_fu_622_p2 = (add9_reg_869 - trunc_ln11_1_fu_596_p1);
assign temp_address1 = zext_ln19_fu_701_p1;
assign tmp_1_fu_650_p17 = 'bx;
assign tmp_fu_540_p17 = 'bx;
assign tmp_fu_540_p18 = i_17_reg_813[2:0];
assign trunc_ln11_1_fu_596_p1 = j_1_fu_84[10:0];
assign trunc_ln11_fu_592_p1 = j_1_fu_84[2:0];
assign trunc_ln18_fu_711_p1 = k_fu_88[2:0];
assign trunc_ln5_fu_516_p1 = j_fu_511_p2[10:0];
assign zext_ln12_fu_689_p1 = sub_ln12_reg_933;
assign zext_ln19_fu_701_p1 = j_2_fu_96;
assign zext_ln20_fu_706_p1 = i_12_fu_92;
assign zext_ln5_1_fu_610_p1 = lshr_ln5_1_fu_600_p4;
assign zext_ln5_2_fu_723_p1 = lshr_ln5_2_fu_714_p4;
assign zext_ln5_fu_488_p1 = lshr_ln5_fu_478_p4;
assign zext_ln7_fu_580_p1 = i_17_reg_813;
endmodule 
