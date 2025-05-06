
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,x_3_address0,x_3_ce0,x_3_q0,x_3_address1,x_3_ce1,x_3_q1,x_4_address0,x_4_ce0,x_4_q0,x_4_address1,x_4_ce1,x_4_q1,x_5_address0,x_5_ce0,x_5_q0,x_5_address1,x_5_ce1,x_5_q1,x_6_address0,x_6_ce0,x_6_q0,x_6_address1,x_6_ce1,x_6_q1,x_7_address0,x_7_ce0,x_7_q0,x_7_address1,x_7_ce1,x_7_q1,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7);  
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
input   ap_ce;
output  [6:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [6:0] x_0_address1;
output   x_0_ce1;
input  [63:0] x_0_q1;
output  [6:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [6:0] x_1_address1;
output   x_1_ce1;
input  [63:0] x_1_q1;
output  [6:0] x_2_address0;
output   x_2_ce0;
input  [63:0] x_2_q0;
output  [6:0] x_2_address1;
output   x_2_ce1;
input  [63:0] x_2_q1;
output  [6:0] x_3_address0;
output   x_3_ce0;
input  [63:0] x_3_q0;
output  [6:0] x_3_address1;
output   x_3_ce1;
input  [63:0] x_3_q1;
output  [6:0] x_4_address0;
output   x_4_ce0;
input  [63:0] x_4_q0;
output  [6:0] x_4_address1;
output   x_4_ce1;
input  [63:0] x_4_q1;
output  [6:0] x_5_address0;
output   x_5_ce0;
input  [63:0] x_5_q0;
output  [6:0] x_5_address1;
output   x_5_ce1;
input  [63:0] x_5_q1;
output  [6:0] x_6_address0;
output   x_6_ce0;
input  [63:0] x_6_q0;
output  [6:0] x_6_address1;
output   x_6_ce1;
input  [63:0] x_6_q1;
output  [6:0] x_7_address0;
output   x_7_ce0;
input  [63:0] x_7_q0;
output  [6:0] x_7_address1;
output   x_7_ce1;
input  [63:0] x_7_q1;
input  [8:0] offset;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;
output  [63:0] ap_return_2;
output  [63:0] ap_return_3;
output  [63:0] ap_return_4;
output  [63:0] ap_return_5;
output  [63:0] ap_return_6;
output  [63:0] ap_return_7;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_block_pp0_stage3_subdone;
wire   [2:0] trunc_ln102_fu_736_p1;
reg   [2:0] trunc_ln102_reg_1076;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln102_1_fu_740_p1;
reg   [9:0] zext_ln102_1_reg_1084;
wire   [63:0] grp_fu_658_p19;
reg   [63:0] a_y_reg_1174;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_697_p19;
reg   [63:0] a_y_1_reg_1179;
reg   [63:0] a_y_2_reg_1264;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] a_y_3_reg_1269;
reg   [63:0] a_y_4_reg_1354;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] a_y_5_reg_1359;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_754_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_782_p1;
wire   [63:0] zext_ln105_fu_809_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln106_fu_836_p1;
wire   [63:0] zext_ln107_fu_863_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln108_fu_890_p1;
wire   [63:0] zext_ln109_fu_917_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln110_fu_944_p1;
reg    x_0_ce1_local;
reg   [6:0] x_0_address1_local;
reg    x_0_ce0_local;
reg   [6:0] x_0_address0_local;
reg    x_1_ce1_local;
reg   [6:0] x_1_address1_local;
reg    x_1_ce0_local;
reg   [6:0] x_1_address0_local;
reg    x_2_ce1_local;
reg   [6:0] x_2_address1_local;
reg    x_2_ce0_local;
reg   [6:0] x_2_address0_local;
reg    x_3_ce1_local;
reg   [6:0] x_3_address1_local;
reg    x_3_ce0_local;
reg   [6:0] x_3_address0_local;
reg    x_4_ce1_local;
reg   [6:0] x_4_address1_local;
reg    x_4_ce0_local;
reg   [6:0] x_4_address0_local;
reg    x_5_ce1_local;
reg   [6:0] x_5_address1_local;
reg    x_5_ce0_local;
reg   [6:0] x_5_address0_local;
reg    x_6_ce1_local;
reg   [6:0] x_6_address1_local;
reg    x_6_ce0_local;
reg   [6:0] x_6_address0_local;
reg    x_7_ce1_local;
reg   [6:0] x_7_address1_local;
reg    x_7_ce0_local;
reg   [6:0] x_7_address0_local;
wire   [63:0] grp_fu_658_p17;
wire   [63:0] grp_fu_697_p17;
wire   [5:0] lshr_ln_fu_744_p4;
wire   [9:0] add_ln104_fu_766_p2;
wire   [6:0] lshr_ln1_fu_772_p4;
wire   [9:0] add_ln105_fu_794_p2;
wire   [6:0] lshr_ln2_fu_799_p4;
wire   [9:0] add_ln106_fu_821_p2;
wire   [6:0] lshr_ln3_fu_826_p4;
wire   [9:0] add_ln107_fu_848_p2;
wire   [6:0] lshr_ln4_fu_853_p4;
wire   [9:0] add_ln108_fu_875_p2;
wire   [6:0] lshr_ln5_fu_880_p4;
wire   [9:0] add_ln109_fu_902_p2;
wire   [6:0] lshr_ln6_fu_907_p4;
wire   [9:0] add_ln110_fu_929_p2;
wire   [6:0] lshr_ln7_fu_934_p4;
wire   [63:0] a_y_6_fu_956_p17;
wire   [63:0] a_y_7_fu_995_p17;
wire   [63:0] a_y_6_fu_956_p19;
wire   [63:0] a_y_7_fu_995_p19;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire   [2:0] grp_fu_658_p1;
wire   [2:0] grp_fu_658_p3;
wire   [2:0] grp_fu_658_p5;
wire   [2:0] grp_fu_658_p7;
wire  signed [2:0] grp_fu_658_p9;
wire  signed [2:0] grp_fu_658_p11;
wire  signed [2:0] grp_fu_658_p13;
wire  signed [2:0] grp_fu_658_p15;
wire   [2:0] grp_fu_697_p1;
wire   [2:0] grp_fu_697_p3;
wire   [2:0] grp_fu_697_p5;
wire   [2:0] grp_fu_697_p7;
wire  signed [2:0] grp_fu_697_p9;
wire  signed [2:0] grp_fu_697_p11;
wire  signed [2:0] grp_fu_697_p13;
wire  signed [2:0] grp_fu_697_p15;
wire   [2:0] a_y_6_fu_956_p1;
wire   [2:0] a_y_6_fu_956_p3;
wire   [2:0] a_y_6_fu_956_p5;
wire   [2:0] a_y_6_fu_956_p7;
wire  signed [2:0] a_y_6_fu_956_p9;
wire  signed [2:0] a_y_6_fu_956_p11;
wire  signed [2:0] a_y_6_fu_956_p13;
wire  signed [2:0] a_y_6_fu_956_p15;
wire   [2:0] a_y_7_fu_995_p1;
wire   [2:0] a_y_7_fu_995_p3;
wire   [2:0] a_y_7_fu_995_p5;
wire   [2:0] a_y_7_fu_995_p7;
wire  signed [2:0] a_y_7_fu_995_p9;
wire  signed [2:0] a_y_7_fu_995_p11;
wire  signed [2:0] a_y_7_fu_995_p13;
wire  signed [2:0] a_y_7_fu_995_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U275(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.din7(x_7_q1),.def(grp_fu_658_p17),.sel(trunc_ln102_reg_1076),.dout(grp_fu_658_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U276(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.def(grp_fu_697_p17),.sel(trunc_ln102_reg_1076),.dout(grp_fu_697_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U277(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.din3(x_3_q1),.din4(x_4_q1),.din5(x_5_q1),.din6(x_6_q1),.din7(x_7_q1),.def(a_y_6_fu_956_p17),.sel(trunc_ln102_reg_1076),.dout(a_y_6_fu_956_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U278(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.din3(x_3_q0),.din4(x_4_q0),.din5(x_5_q0),.din6(x_6_q0),.din7(x_7_q0),.def(a_y_7_fu_995_p17),.sel(trunc_ln102_reg_1076),.dout(a_y_7_fu_995_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_y_1_reg_1179 <= grp_fu_697_p19;
        a_y_reg_1174 <= grp_fu_658_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_y_2_reg_1264 <= grp_fu_658_p19;
        a_y_3_reg_1269 <= grp_fu_697_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_y_4_reg_1354 <= grp_fu_658_p19;
        a_y_5_reg_1359 <= grp_fu_697_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln102_reg_1076 <= trunc_ln102_fu_736_p1;
        zext_ln102_1_reg_1084[8 : 0] <= zext_ln102_1_fu_740_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_0_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_0_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_0_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_0_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_0_address0_local = 'bx;
        end
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_0_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_0_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_0_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_0_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_0_address1_local = 'bx;
        end
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_1_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_1_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_1_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_1_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_1_address0_local = 'bx;
        end
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_1_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_1_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_1_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_1_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_1_address1_local = 'bx;
        end
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_2_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_2_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_2_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_2_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_2_address0_local = 'bx;
        end
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_2_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_2_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_2_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_2_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_2_address1_local = 'bx;
        end
    end else begin
        x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_2_ce1_local = 1'b1;
    end else begin
        x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_3_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_3_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_3_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_3_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_3_address0_local = 'bx;
        end
    end else begin
        x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_3_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_3_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_3_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_3_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_3_address1_local = 'bx;
        end
    end else begin
        x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_3_ce0_local = 1'b1;
    end else begin
        x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_3_ce1_local = 1'b1;
    end else begin
        x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_4_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_4_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_4_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_4_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_4_address0_local = 'bx;
        end
    end else begin
        x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_4_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_4_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_4_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_4_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_4_address1_local = 'bx;
        end
    end else begin
        x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_4_ce0_local = 1'b1;
    end else begin
        x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_4_ce1_local = 1'b1;
    end else begin
        x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_5_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_5_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_5_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_5_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_5_address0_local = 'bx;
        end
    end else begin
        x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_5_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_5_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_5_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_5_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_5_address1_local = 'bx;
        end
    end else begin
        x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_5_ce0_local = 1'b1;
    end else begin
        x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_5_ce1_local = 1'b1;
    end else begin
        x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_6_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_6_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_6_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_6_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_6_address0_local = 'bx;
        end
    end else begin
        x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_6_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_6_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_6_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_6_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_6_address1_local = 'bx;
        end
    end else begin
        x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_6_ce0_local = 1'b1;
    end else begin
        x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_6_ce1_local = 1'b1;
    end else begin
        x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_7_address0_local = zext_ln110_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_7_address0_local = zext_ln108_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_7_address0_local = zext_ln106_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_7_address0_local = zext_ln104_fu_782_p1;
        end else begin
            x_7_address0_local = 'bx;
        end
    end else begin
        x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_7_address1_local = zext_ln109_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_7_address1_local = zext_ln107_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_7_address1_local = zext_ln105_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_7_address1_local = zext_ln102_fu_754_p1;
        end else begin
            x_7_address1_local = 'bx;
        end
    end else begin
        x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_7_ce0_local = 1'b1;
    end else begin
        x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_7_ce1_local = 1'b1;
    end else begin
        x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & ~((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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
assign a_y_6_fu_956_p17 = 'bx;
assign a_y_7_fu_995_p17 = 'bx;
assign add_ln104_fu_766_p2 = (zext_ln102_1_fu_740_p1 + 10'd8);
assign add_ln105_fu_794_p2 = (zext_ln102_1_reg_1084 + 10'd16);
assign add_ln106_fu_821_p2 = (zext_ln102_1_reg_1084 + 10'd24);
assign add_ln107_fu_848_p2 = (zext_ln102_1_reg_1084 + 10'd32);
assign add_ln108_fu_875_p2 = (zext_ln102_1_reg_1084 + 10'd40);
assign add_ln109_fu_902_p2 = (zext_ln102_1_reg_1084 + 10'd48);
assign add_ln110_fu_929_p2 = (zext_ln102_1_reg_1084 + 10'd56);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return_0 = a_y_reg_1174;
assign ap_return_1 = a_y_1_reg_1179;
assign ap_return_2 = a_y_2_reg_1264;
assign ap_return_3 = a_y_3_reg_1269;
assign ap_return_4 = a_y_4_reg_1354;
assign ap_return_5 = a_y_5_reg_1359;
assign ap_return_6 = a_y_6_fu_956_p19;
assign ap_return_7 = a_y_7_fu_995_p19;
assign grp_fu_658_p17 = 'bx;
assign grp_fu_697_p17 = 'bx;
assign lshr_ln1_fu_772_p4 = {{add_ln104_fu_766_p2[9:3]}};
assign lshr_ln2_fu_799_p4 = {{add_ln105_fu_794_p2[9:3]}};
assign lshr_ln3_fu_826_p4 = {{add_ln106_fu_821_p2[9:3]}};
assign lshr_ln4_fu_853_p4 = {{add_ln107_fu_848_p2[9:3]}};
assign lshr_ln5_fu_880_p4 = {{add_ln108_fu_875_p2[9:3]}};
assign lshr_ln6_fu_907_p4 = {{add_ln109_fu_902_p2[9:3]}};
assign lshr_ln7_fu_934_p4 = {{add_ln110_fu_929_p2[9:3]}};
assign lshr_ln_fu_744_p4 = {{offset[8:3]}};
assign trunc_ln102_fu_736_p1 = offset[2:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_address1 = x_0_address1_local;
assign x_0_ce0 = x_0_ce0_local;
assign x_0_ce1 = x_0_ce1_local;
assign x_1_address0 = x_1_address0_local;
assign x_1_address1 = x_1_address1_local;
assign x_1_ce0 = x_1_ce0_local;
assign x_1_ce1 = x_1_ce1_local;
assign x_2_address0 = x_2_address0_local;
assign x_2_address1 = x_2_address1_local;
assign x_2_ce0 = x_2_ce0_local;
assign x_2_ce1 = x_2_ce1_local;
assign x_3_address0 = x_3_address0_local;
assign x_3_address1 = x_3_address1_local;
assign x_3_ce0 = x_3_ce0_local;
assign x_3_ce1 = x_3_ce1_local;
assign x_4_address0 = x_4_address0_local;
assign x_4_address1 = x_4_address1_local;
assign x_4_ce0 = x_4_ce0_local;
assign x_4_ce1 = x_4_ce1_local;
assign x_5_address0 = x_5_address0_local;
assign x_5_address1 = x_5_address1_local;
assign x_5_ce0 = x_5_ce0_local;
assign x_5_ce1 = x_5_ce1_local;
assign x_6_address0 = x_6_address0_local;
assign x_6_address1 = x_6_address1_local;
assign x_6_ce0 = x_6_ce0_local;
assign x_6_ce1 = x_6_ce1_local;
assign x_7_address0 = x_7_address0_local;
assign x_7_address1 = x_7_address1_local;
assign x_7_ce0 = x_7_ce0_local;
assign x_7_ce1 = x_7_ce1_local;
assign zext_ln102_1_fu_740_p1 = offset;
assign zext_ln102_fu_754_p1 = lshr_ln_fu_744_p4;
assign zext_ln104_fu_782_p1 = lshr_ln1_fu_772_p4;
assign zext_ln105_fu_809_p1 = lshr_ln2_fu_799_p4;
assign zext_ln106_fu_836_p1 = lshr_ln3_fu_826_p4;
assign zext_ln107_fu_863_p1 = lshr_ln4_fu_853_p4;
assign zext_ln108_fu_890_p1 = lshr_ln5_fu_880_p4;
assign zext_ln109_fu_917_p1 = lshr_ln6_fu_907_p4;
assign zext_ln110_fu_944_p1 = lshr_ln7_fu_934_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_1084[9] <= 1'b0;
end
endmodule 
