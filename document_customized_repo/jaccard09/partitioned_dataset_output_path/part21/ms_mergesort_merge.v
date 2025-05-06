
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
input  [10:0] start_r;
input  [10:0] m;
input  [10:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] stop_cast9_fu_295_p1;
reg   [31:0] stop_cast9_reg_588;
wire   [31:0] start_cast8_fu_299_p1;
reg   [31:0] start_cast8_reg_593;
wire   [63:0] zext_ln7_fu_303_p1;
reg   [63:0] zext_ln7_reg_598;
reg   [10:0] i_2_reg_603;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_354_p2;
reg   [10:0] add9_reg_639;
wire   [63:0] zext_ln11_1_fu_363_p1;
reg   [63:0] zext_ln11_1_reg_644;
wire   [31:0] tmp_fu_374_p11;
reg   [31:0] tmp_reg_650;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln11_fu_410_p1;
reg   [1:0] trunc_ln11_reg_658;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln12_fu_436_p2;
reg   [10:0] sub_ln12_reg_683;
wire   [31:0] tmp_1_fu_464_p11;
reg   [31:0] tmp_1_reg_709;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_j_reg_730;
wire    ap_CS_fsm_state9;
reg   [31:0] tmp_i_reg_739;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [63:0] zext_ln5_fu_330_p1;
wire   [0:0] icmp_ln7_fu_315_p2;
wire   [63:0] zext_ln7_1_fu_398_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln5_1_fu_428_p1;
wire   [0:0] icmp_ln11_fu_405_p2;
wire   [63:0] zext_ln12_fu_487_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln19_fu_499_p1;
wire   [0:0] icmp_ln18_fu_494_p2;
wire   [63:0] zext_ln20_fu_504_p1;
wire   [63:0] zext_ln5_2_fu_521_p1;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln21_fu_533_p2;
wire   [1:0] trunc_ln18_fu_509_p1;
wire   [8:0] a_2_addr_2_gep_fu_257_p3;
wire   [8:0] a_1_addr_2_gep_fu_265_p3;
wire   [8:0] a_0_addr_2_gep_fu_273_p3;
wire   [8:0] a_3_addr_2_gep_fu_281_p3;
reg   [10:0] i_fu_62;
wire   [10:0] add_ln7_fu_338_p2;
reg   [63:0] j_1_fu_70;
wire   [63:0] add_ln11_fu_441_p2;
wire   [63:0] zext_ln11_fu_359_p1;
reg   [63:0] k_fu_74;
wire   [63:0] add_ln18_fu_559_p2;
reg   [31:0] i_1_fu_78;
wire   [31:0] i_3_fu_537_p2;
reg   [31:0] j_2_fu_82;
wire   [31:0] j_4_fu_548_p2;
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
wire   [8:0] lshr_ln5_fu_320_p4;
wire   [10:0] j_fu_349_p2;
wire   [31:0] tmp_fu_374_p9;
wire   [1:0] tmp_fu_374_p10;
wire   [8:0] lshr_ln5_1_fu_418_p4;
wire   [10:0] trunc_ln11_1_fu_414_p1;
wire   [31:0] tmp_1_fu_464_p9;
wire   [8:0] lshr_ln5_2_fu_512_p4;
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
wire   [1:0] tmp_fu_374_p1;
wire   [1:0] tmp_fu_374_p3;
wire  signed [1:0] tmp_fu_374_p5;
wire  signed [1:0] tmp_fu_374_p7;
wire   [1:0] tmp_1_fu_464_p1;
wire   [1:0] tmp_1_fu_464_p3;
wire  signed [1:0] tmp_1_fu_464_p5;
wire  signed [1:0] tmp_1_fu_464_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 i_fu_62 = 11'd0;
#0 j_1_fu_70 = 64'd0;
#0 k_fu_74 = 64'd0;
#0 i_1_fu_78 = 32'd0;
#0 j_2_fu_82 = 32'd0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0_local),.ce0(temp_ce0_local),.we0(temp_we0_local),.d0(temp_d0_local),.q0(temp_q0),.address1(temp_address1),.ce1(temp_ce1_local),.q1(temp_q1));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_fu_374_p9),.sel(tmp_fu_374_p10),.dout(tmp_fu_374_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U2(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_1_fu_464_p9),.sel(trunc_ln11_reg_658),.dout(tmp_1_fu_464_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_405_p2 == 1'd1))) begin
        i_1_fu_78 <= start_cast8_reg_593;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_533_p2 == 1'd0))) begin
        i_1_fu_78 <= i_3_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_62 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_315_p2 == 1'd0))) begin
        i_fu_62 <= add_ln7_fu_338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_315_p2 == 1'd1))) begin
        j_1_fu_70 <= zext_ln11_fu_359_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_405_p2 == 1'd0))) begin
        j_1_fu_70 <= add_ln11_fu_441_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_405_p2 == 1'd1))) begin
        j_2_fu_82 <= stop_cast9_reg_588;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_533_p2 == 1'd1))) begin
        j_2_fu_82 <= j_4_fu_548_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_405_p2 == 1'd1))) begin
        k_fu_74 <= zext_ln7_reg_598;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_fu_74 <= add_ln18_fu_559_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_639 <= add9_fu_354_p2;
        i_2_reg_603 <= i_fu_62;
        zext_ln11_1_reg_644[10 : 0] <= zext_ln11_1_fu_363_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        start_cast8_reg_593[10 : 0] <= start_cast8_fu_299_p1[10 : 0];
        stop_cast9_reg_588[10 : 0] <= stop_cast9_fu_295_p1[10 : 0];
        zext_ln7_reg_598[10 : 0] <= zext_ln7_fu_303_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln12_reg_683 <= sub_ln12_fu_436_p2;
        trunc_ln11_reg_658 <= trunc_ln11_fu_410_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_1_reg_709 <= tmp_1_fu_464_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_i_reg_739 <= temp_q0;
        tmp_j_reg_730 <= temp_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_reg_650 <= tmp_fu_374_p11;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd1))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_273_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_0_address0_local = zext_ln5_1_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0_local = zext_ln5_fu_330_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0))) begin
        if ((icmp_ln21_fu_533_p2 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_730;
        end else if ((icmp_ln21_fu_533_p2 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_739;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd0) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd1))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_265_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_1_address0_local = zext_ln5_1_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0_local = zext_ln5_fu_330_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1))) begin
        if ((icmp_ln21_fu_533_p2 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_730;
        end else if ((icmp_ln21_fu_533_p2 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_739;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd1) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd1))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_257_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd0))) begin
        a_2_address0_local = zext_ln5_2_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_2_address0_local = zext_ln5_1_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_address0_local = zext_ln5_fu_330_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2))) begin
        if ((icmp_ln21_fu_533_p2 == 1'd1)) begin
            a_2_d0_local = tmp_j_reg_730;
        end else if ((icmp_ln21_fu_533_p2 == 1'd0)) begin
            a_2_d0_local = tmp_i_reg_739;
        end else begin
            a_2_d0_local = 'bx;
        end
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd2) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd1))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_281_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd0))) begin
        a_3_address0_local = zext_ln5_2_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_3_address0_local = zext_ln5_1_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_3_address0_local = zext_ln5_fu_330_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3))) begin
        if ((icmp_ln21_fu_533_p2 == 1'd1)) begin
            a_3_d0_local = tmp_j_reg_730;
        end else if ((icmp_ln21_fu_533_p2 == 1'd0)) begin
            a_3_d0_local = tmp_i_reg_739;
        end else begin
            a_3_d0_local = 'bx;
        end
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_509_p1 == 2'd3) & (icmp_ln21_fu_533_p2 == 1'd0)))) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_494_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_494_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_address0_local = zext_ln20_fu_504_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0_local = zext_ln12_fu_487_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0_local = zext_ln7_1_fu_398_p1;
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
        temp_d0_local = tmp_1_reg_709;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0_local = tmp_reg_650;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_315_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_405_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_494_p2 == 1'd1))) begin
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
assign a_0_addr_2_gep_fu_273_p3 = zext_ln5_2_fu_521_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_265_p3 = zext_ln5_2_fu_521_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_257_p3 = zext_ln5_2_fu_521_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_281_p3 = zext_ln5_2_fu_521_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign add9_fu_354_p2 = (j_fu_349_p2 + stop);
assign add_ln11_fu_441_p2 = (j_1_fu_70 + 64'd1);
assign add_ln18_fu_559_p2 = (k_fu_74 + 64'd1);
assign add_ln7_fu_338_p2 = (i_fu_62 + 11'd1);
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
assign i_3_fu_537_p2 = (i_1_fu_78 + 32'd1);
assign icmp_ln11_fu_405_p2 = (($signed(j_1_fu_70) > $signed(zext_ln11_1_reg_644)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_494_p2 = (($signed(k_fu_74) > $signed(zext_ln11_1_reg_644)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_533_p2 = (($signed(tmp_j_reg_730) < $signed(tmp_i_reg_739)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_315_p2 = ((i_fu_62 > m) ? 1'b1 : 1'b0);
assign j_4_fu_548_p2 = ($signed(j_2_fu_82) + $signed(32'd4294967295));
assign j_fu_349_p2 = (m + 11'd1);
assign lshr_ln5_1_fu_418_p4 = {{j_1_fu_70[10:2]}};
assign lshr_ln5_2_fu_512_p4 = {{k_fu_74[10:2]}};
assign lshr_ln5_fu_320_p4 = {{i_fu_62[10:2]}};
assign start_cast8_fu_299_p1 = start_r;
assign stop_cast9_fu_295_p1 = stop;
assign sub_ln12_fu_436_p2 = (add9_reg_639 - trunc_ln11_1_fu_414_p1);
assign temp_address1 = zext_ln19_fu_499_p1;
assign tmp_1_fu_464_p9 = 'bx;
assign tmp_fu_374_p10 = i_2_reg_603[1:0];
assign tmp_fu_374_p9 = 'bx;
assign trunc_ln11_1_fu_414_p1 = j_1_fu_70[10:0];
assign trunc_ln11_fu_410_p1 = j_1_fu_70[1:0];
assign trunc_ln18_fu_509_p1 = k_fu_74[1:0];
assign zext_ln11_1_fu_363_p1 = stop;
assign zext_ln11_fu_359_p1 = j_fu_349_p2;
assign zext_ln12_fu_487_p1 = sub_ln12_reg_683;
assign zext_ln19_fu_499_p1 = j_2_fu_82;
assign zext_ln20_fu_504_p1 = i_1_fu_78;
assign zext_ln5_1_fu_428_p1 = lshr_ln5_1_fu_418_p4;
assign zext_ln5_2_fu_521_p1 = lshr_ln5_2_fu_512_p4;
assign zext_ln5_fu_330_p1 = lshr_ln5_fu_320_p4;
assign zext_ln7_1_fu_398_p1 = i_2_reg_603;
assign zext_ln7_fu_303_p1 = start_r;
always @ (posedge ap_clk) begin
    stop_cast9_reg_588[31:11] <= 21'b000000000000000000000;
    start_cast8_reg_593[31:11] <= 21'b000000000000000000000;
    zext_ln7_reg_598[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln11_1_reg_644[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
