
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,x_2_address0,x_2_ce0,x_2_q0,x_2_address1,x_2_ce1,x_2_q1,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [7:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [7:0] x_0_address1;
output   x_0_ce1;
input  [63:0] x_0_q1;
output  [7:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [7:0] x_1_address1;
output   x_1_ce1;
input  [63:0] x_1_q1;
output  [7:0] x_2_address0;
output   x_2_ce0;
input  [63:0] x_2_q0;
output  [7:0] x_2_address1;
output   x_2_ce1;
input  [63:0] x_2_q1;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_block_pp0_stage1_subdone;
reg   [8:0] offset_read_reg_643;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] offset_read_reg_643_pp0_iter1_reg;
reg   [8:0] offset_read_reg_643_pp0_iter2_reg;
reg   [8:0] offset_read_reg_643_pp0_iter3_reg;
reg   [8:0] offset_read_reg_643_pp0_iter4_reg;
wire   [9:0] zext_ln102_1_fu_325_p1;
reg   [9:0] zext_ln102_1_reg_650;
wire    ap_block_pp0_stage1_11001;
reg   [7:0] tmp_reg_660;
reg   [7:0] tmp_reg_660_pp0_iter5_reg;
wire   [1:0] trunc_ln103_fu_347_p1;
reg   [1:0] trunc_ln103_reg_665;
reg   [1:0] trunc_ln103_reg_665_pp0_iter7_reg;
reg   [8:0] tmp_25_reg_675;
wire   [63:0] a_y_fu_436_p9;
reg   [63:0] a_y_reg_770;
wire   [63:0] a_y_1_fu_455_p9;
reg   [63:0] a_y_1_reg_775;
wire   [63:0] a_y_2_fu_474_p9;
reg   [63:0] a_y_2_reg_780;
wire   [63:0] grp_fu_281_p9;
reg   [63:0] a_y_3_reg_785;
wire   [63:0] grp_fu_300_p9;
reg   [63:0] a_y_4_reg_790;
wire   [63:0] a_y_5_fu_493_p9;
reg   [63:0] a_y_5_reg_795;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_360_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln104_fu_375_p1;
wire   [63:0] zext_ln105_fu_391_p1;
wire   [63:0] zext_ln106_fu_407_p1;
wire   [63:0] zext_ln107_fu_423_p1;
wire   [63:0] zext_ln108_fu_430_p1;
wire   [63:0] zext_ln109_fu_521_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_537_p1;
reg    x_0_ce1_local;
reg   [7:0] x_0_address1_local;
reg    x_0_ce0_local;
reg   [7:0] x_0_address0_local;
reg    x_1_ce1_local;
reg   [7:0] x_1_address1_local;
reg    x_1_ce0_local;
reg   [7:0] x_1_address0_local;
reg    x_2_ce1_local;
reg   [7:0] x_2_address1_local;
reg    x_2_ce0_local;
reg   [7:0] x_2_address0_local;
wire   [63:0] grp_fu_281_p7;
reg   [1:0] grp_fu_281_p8;
wire   [63:0] grp_fu_300_p7;
reg   [1:0] grp_fu_300_p8;
wire   [2:0] grp_fu_319_p1;
wire   [8:0] mul_ln102_fu_331_p0;
wire   [10:0] mul_ln102_fu_331_p1;
wire   [18:0] mul_ln102_fu_331_p2;
wire   [1:0] grp_fu_319_p2;
wire   [20:0] tmp_25_fu_351_p1;
wire  signed [20:0] grp_fu_586_p3;
wire   [20:0] tmp_21_fu_366_p1;
wire  signed [20:0] grp_fu_595_p3;
wire   [8:0] tmp_21_fu_366_p4;
wire   [20:0] tmp_22_fu_382_p1;
wire  signed [20:0] grp_fu_603_p3;
wire   [8:0] tmp_22_fu_382_p4;
wire   [20:0] tmp_23_fu_398_p1;
wire  signed [20:0] grp_fu_611_p3;
wire   [8:0] tmp_23_fu_398_p4;
wire   [20:0] tmp_24_fu_414_p1;
wire  signed [20:0] grp_fu_619_p3;
wire   [8:0] tmp_24_fu_414_p4;
wire   [63:0] a_y_fu_436_p7;
wire   [63:0] a_y_1_fu_455_p7;
wire   [63:0] a_y_2_fu_474_p7;
wire   [63:0] a_y_5_fu_493_p7;
wire   [20:0] tmp_26_fu_512_p1;
wire  signed [20:0] grp_fu_627_p3;
wire   [8:0] tmp_26_fu_512_p4;
wire   [20:0] tmp_27_fu_528_p1;
wire  signed [20:0] grp_fu_635_p3;
wire   [8:0] tmp_27_fu_528_p4;
wire   [8:0] grp_fu_586_p0;
wire   [5:0] grp_fu_586_p1;
wire   [10:0] grp_fu_586_p2;
wire   [8:0] grp_fu_595_p0;
wire   [3:0] grp_fu_595_p1;
wire   [10:0] grp_fu_595_p2;
wire   [8:0] grp_fu_603_p0;
wire   [4:0] grp_fu_603_p1;
wire   [10:0] grp_fu_603_p2;
wire   [8:0] grp_fu_611_p0;
wire   [4:0] grp_fu_611_p1;
wire   [10:0] grp_fu_611_p2;
wire   [8:0] grp_fu_619_p0;
wire   [5:0] grp_fu_619_p1;
wire   [10:0] grp_fu_619_p2;
wire   [8:0] grp_fu_627_p0;
wire   [5:0] grp_fu_627_p1;
wire   [10:0] grp_fu_627_p2;
wire   [8:0] grp_fu_635_p0;
wire   [5:0] grp_fu_635_p1;
wire   [10:0] grp_fu_635_p2;
reg    grp_fu_319_ce;
reg    grp_fu_586_ce;
reg    grp_fu_595_ce;
reg    grp_fu_603_ce;
reg    grp_fu_611_ce;
reg    grp_fu_619_ce;
reg    grp_fu_627_ce;
reg    grp_fu_635_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
reg    ap_idle_pp0_0to6;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;
wire   [9:0] grp_fu_586_p00;
wire   [18:0] mul_ln102_fu_331_p00;
reg    ap_condition_201;
wire   [1:0] grp_fu_281_p1;
wire   [1:0] grp_fu_281_p3;
wire  signed [1:0] grp_fu_281_p5;
wire   [1:0] grp_fu_300_p1;
wire  signed [1:0] grp_fu_300_p3;
wire   [1:0] grp_fu_300_p5;
wire   [1:0] a_y_fu_436_p1;
wire   [1:0] a_y_fu_436_p3;
wire  signed [1:0] a_y_fu_436_p5;
wire   [1:0] a_y_1_fu_455_p1;
wire  signed [1:0] a_y_1_fu_455_p3;
wire   [1:0] a_y_1_fu_455_p5;
wire  signed [1:0] a_y_2_fu_474_p1;
wire   [1:0] a_y_2_fu_474_p3;
wire   [1:0] a_y_2_fu_474_p5;
wire  signed [1:0] a_y_5_fu_493_p1;
wire   [1:0] a_y_5_fu_493_p3;
wire   [1:0] a_y_5_fu_493_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U289(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.def(grp_fu_281_p7),.sel(grp_fu_281_p8),.dout(grp_fu_281_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U290(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.def(grp_fu_300_p7),.sel(grp_fu_300_p8),.dout(grp_fu_300_p9));
fft1D_512_urem_9ns_3ns_2_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_9ns_3ns_2_13_1_U291(.clk(ap_clk),.reset(ap_rst),.din0(offset),.din1(grp_fu_319_p1),.ce(grp_fu_319_ce),.dout(grp_fu_319_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U292(.din0(mul_ln102_fu_331_p0),.din1(mul_ln102_fu_331_p1),.dout(mul_ln102_fu_331_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U293(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.def(a_y_fu_436_p7),.sel(trunc_ln103_reg_665),.dout(a_y_fu_436_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U294(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.def(a_y_1_fu_455_p7),.sel(trunc_ln103_reg_665),.dout(a_y_1_fu_455_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U295(.din0(x_0_q1),.din1(x_1_q1),.din2(x_2_q1),.def(a_y_2_fu_474_p7),.sel(trunc_ln103_reg_665),.dout(a_y_2_fu_474_p9));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U296(.din0(x_0_q0),.din1(x_1_q0),.din2(x_2_q0),.def(a_y_5_fu_493_p7),.sel(trunc_ln103_reg_665),.dout(a_y_5_fu_493_p9));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U297(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_586_p0),.din1(grp_fu_586_p1),.din2(grp_fu_586_p2),.ce(grp_fu_586_ce),.dout(grp_fu_586_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U298(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_595_p0),.din1(grp_fu_595_p1),.din2(grp_fu_595_p2),.ce(grp_fu_595_ce),.dout(grp_fu_595_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U299(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_603_p0),.din1(grp_fu_603_p1),.din2(grp_fu_603_p2),.ce(grp_fu_603_ce),.dout(grp_fu_603_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U300(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_611_p0),.din1(grp_fu_611_p1),.din2(grp_fu_611_p2),.ce(grp_fu_611_ce),.dout(grp_fu_611_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U301(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_619_p0),.din1(grp_fu_619_p1),.din2(grp_fu_619_p2),.ce(grp_fu_619_ce),.dout(grp_fu_619_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U302(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_627_p0),.din1(grp_fu_627_p1),.din2(grp_fu_627_p2),.ce(grp_fu_627_ce),.dout(grp_fu_627_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U303(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_635_p0),.din1(grp_fu_635_p1),.din2(grp_fu_635_p2),.ce(grp_fu_635_ce),.dout(grp_fu_635_p3));
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_1_reg_775 <= a_y_1_fu_455_p9;
        a_y_2_reg_780 <= a_y_2_fu_474_p9;
        a_y_5_reg_795 <= a_y_5_fu_493_p9;
        a_y_reg_770 <= a_y_fu_436_p9;
        offset_read_reg_643 <= offset;
        offset_read_reg_643_pp0_iter1_reg <= offset_read_reg_643;
        offset_read_reg_643_pp0_iter2_reg <= offset_read_reg_643_pp0_iter1_reg;
        offset_read_reg_643_pp0_iter3_reg <= offset_read_reg_643_pp0_iter2_reg;
        offset_read_reg_643_pp0_iter4_reg <= offset_read_reg_643_pp0_iter3_reg;
        tmp_25_reg_675 <= {{tmp_25_fu_351_p1[20:12]}};
        trunc_ln103_reg_665 <= trunc_ln103_fu_347_p1;
        trunc_ln103_reg_665_pp0_iter7_reg <= trunc_ln103_reg_665;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_y_3_reg_785 <= grp_fu_281_p9;
        a_y_4_reg_790 <= grp_fu_300_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_660 <= {{mul_ln102_fu_331_p2[18:11]}};
        tmp_reg_660_pp0_iter5_reg <= tmp_reg_660;
        zext_ln102_1_reg_650[8 : 0] <= zext_ln102_1_fu_325_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_281_p8 = trunc_ln103_reg_665_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_281_p8 = trunc_ln103_reg_665;
        end else begin
            grp_fu_281_p8 = 'bx;
        end
    end else begin
        grp_fu_281_p8 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_300_p8 = trunc_ln103_reg_665_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_300_p8 = trunc_ln103_reg_665;
        end else begin
            grp_fu_300_p8 = 'bx;
        end
    end else begin
        grp_fu_300_p8 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_319_ce = 1'b1;
    end else begin
        grp_fu_319_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_586_ce = 1'b1;
    end else begin
        grp_fu_586_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_595_ce = 1'b1;
    end else begin
        grp_fu_595_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_603_ce = 1'b1;
    end else begin
        grp_fu_603_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_611_ce = 1'b1;
    end else begin
        grp_fu_611_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_619_ce = 1'b1;
    end else begin
        grp_fu_619_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_627_ce = 1'b1;
    end else begin
        grp_fu_627_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))))) begin
        grp_fu_635_ce = 1'b1;
    end else begin
        grp_fu_635_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd1))) begin
        x_0_address0_local = zext_ln110_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd0))) begin
        x_0_address0_local = zext_ln109_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2))) begin
        x_0_address0_local = zext_ln108_fu_430_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1))) begin
        x_0_address0_local = zext_ln107_fu_423_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0))) begin
        x_0_address0_local = zext_ln106_fu_407_p1;
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_201)) begin
        if ((trunc_ln103_reg_665 == 2'd2)) begin
            x_0_address1_local = zext_ln105_fu_391_p1;
        end else if ((trunc_ln103_reg_665 == 2'd1)) begin
            x_0_address1_local = zext_ln104_fu_375_p1;
        end else if ((trunc_ln103_reg_665 == 2'd0)) begin
            x_0_address1_local = zext_ln102_fu_360_p1;
        end else begin
            x_0_address1_local = 'bx;
        end
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd0)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd2))) begin
        x_1_address0_local = zext_ln110_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd1))) begin
        x_1_address0_local = zext_ln109_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0))) begin
        x_1_address0_local = zext_ln108_fu_430_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2))) begin
        x_1_address0_local = zext_ln107_fu_423_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1))) begin
        x_1_address0_local = zext_ln106_fu_407_p1;
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_201)) begin
        if ((trunc_ln103_reg_665 == 2'd0)) begin
            x_1_address1_local = zext_ln105_fu_391_p1;
        end else if ((trunc_ln103_reg_665 == 2'd2)) begin
            x_1_address1_local = zext_ln104_fu_375_p1;
        end else if ((trunc_ln103_reg_665 == 2'd1)) begin
            x_1_address1_local = zext_ln102_fu_360_p1;
        end else begin
            x_1_address1_local = 'bx;
        end
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd1)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd0))) begin
        x_2_address0_local = zext_ln110_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd2))) begin
        x_2_address0_local = zext_ln109_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1))) begin
        x_2_address0_local = zext_ln108_fu_430_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0))) begin
        x_2_address0_local = zext_ln107_fu_423_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2))) begin
        x_2_address0_local = zext_ln106_fu_407_p1;
    end else begin
        x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_201)) begin
        if ((trunc_ln103_reg_665 == 2'd1)) begin
            x_2_address1_local = zext_ln105_fu_391_p1;
        end else if ((trunc_ln103_reg_665 == 2'd0)) begin
            x_2_address1_local = zext_ln104_fu_375_p1;
        end else if ((trunc_ln103_reg_665 == 2'd2)) begin
            x_2_address1_local = zext_ln102_fu_360_p1;
        end else begin
            x_2_address1_local = 'bx;
        end
    end else begin
        x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln103_reg_665 == 2'd0)))) begin
        x_2_ce0_local = 1'b1;
    end else begin
        x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln103_reg_665 == 2'd0)))) begin
        x_2_ce1_local = 1'b1;
    end else begin
        x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((~((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_y_1_fu_455_p7 = 'bx;
assign a_y_2_fu_474_p7 = 'bx;
assign a_y_5_fu_493_p7 = 'bx;
assign a_y_fu_436_p7 = 'bx;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
always @ (*) begin
    ap_condition_201 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return_0 = a_y_reg_770;
assign ap_return_1 = a_y_1_reg_775;
assign ap_return_2 = a_y_2_reg_780;
assign ap_return_3 = a_y_3_reg_785;
assign ap_return_4 = a_y_4_reg_790;
assign ap_return_5 = a_y_5_reg_795;
assign ap_return_6 = grp_fu_281_p9;
assign ap_return_7 = grp_fu_300_p9;
assign grp_fu_281_p7 = 'bx;
assign grp_fu_300_p7 = 'bx;
assign grp_fu_319_p1 = 9'd3;
assign grp_fu_586_p0 = grp_fu_586_p00;
assign grp_fu_586_p00 = offset_read_reg_643_pp0_iter4_reg;
assign grp_fu_586_p1 = 10'd40;
assign grp_fu_586_p2 = 21'd1366;
assign grp_fu_595_p0 = zext_ln102_1_reg_650;
assign grp_fu_595_p1 = 10'd8;
assign grp_fu_595_p2 = 21'd1366;
assign grp_fu_603_p0 = zext_ln102_1_reg_650;
assign grp_fu_603_p1 = 10'd16;
assign grp_fu_603_p2 = 21'd1366;
assign grp_fu_611_p0 = zext_ln102_1_reg_650;
assign grp_fu_611_p1 = 10'd24;
assign grp_fu_611_p2 = 21'd1366;
assign grp_fu_619_p0 = zext_ln102_1_reg_650;
assign grp_fu_619_p1 = 10'd32;
assign grp_fu_619_p2 = 21'd1366;
assign grp_fu_627_p0 = zext_ln102_1_reg_650;
assign grp_fu_627_p1 = 10'd48;
assign grp_fu_627_p2 = 21'd1366;
assign grp_fu_635_p0 = zext_ln102_1_reg_650;
assign grp_fu_635_p1 = 10'd56;
assign grp_fu_635_p2 = 21'd1366;
assign mul_ln102_fu_331_p0 = mul_ln102_fu_331_p00;
assign mul_ln102_fu_331_p00 = offset_read_reg_643_pp0_iter4_reg;
assign mul_ln102_fu_331_p1 = 19'd683;
assign tmp_21_fu_366_p1 = grp_fu_595_p3;
assign tmp_21_fu_366_p4 = {{tmp_21_fu_366_p1[20:12]}};
assign tmp_22_fu_382_p1 = grp_fu_603_p3;
assign tmp_22_fu_382_p4 = {{tmp_22_fu_382_p1[20:12]}};
assign tmp_23_fu_398_p1 = grp_fu_611_p3;
assign tmp_23_fu_398_p4 = {{tmp_23_fu_398_p1[20:12]}};
assign tmp_24_fu_414_p1 = grp_fu_619_p3;
assign tmp_24_fu_414_p4 = {{tmp_24_fu_414_p1[20:12]}};
assign tmp_25_fu_351_p1 = grp_fu_586_p3;
assign tmp_26_fu_512_p1 = grp_fu_627_p3;
assign tmp_26_fu_512_p4 = {{tmp_26_fu_512_p1[20:12]}};
assign tmp_27_fu_528_p1 = grp_fu_635_p3;
assign tmp_27_fu_528_p4 = {{tmp_27_fu_528_p1[20:12]}};
assign trunc_ln103_fu_347_p1 = grp_fu_319_p2[1:0];
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
assign zext_ln102_1_fu_325_p1 = offset_read_reg_643_pp0_iter4_reg;
assign zext_ln102_fu_360_p1 = tmp_reg_660_pp0_iter5_reg;
assign zext_ln104_fu_375_p1 = tmp_21_fu_366_p4;
assign zext_ln105_fu_391_p1 = tmp_22_fu_382_p4;
assign zext_ln106_fu_407_p1 = tmp_23_fu_398_p4;
assign zext_ln107_fu_423_p1 = tmp_24_fu_414_p4;
assign zext_ln108_fu_430_p1 = tmp_25_reg_675;
assign zext_ln109_fu_521_p1 = tmp_26_fu_512_p4;
assign zext_ln110_fu_537_p1 = tmp_27_fu_528_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_650[9] <= 1'b0;
end
endmodule 
