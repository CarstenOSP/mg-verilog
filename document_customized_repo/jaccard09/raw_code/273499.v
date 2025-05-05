module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_udiv_cast,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,empty,phi_mul143,v6_address0,v6_ce0,v6_q0,v6_address1,v6_ce1,v6_q1,phi_mul,v29_4_out,v29_4_out_ap_vld,grp_fu_7753_p_din0,grp_fu_7753_p_din1,grp_fu_7753_p_opcode,grp_fu_7753_p_dout0,grp_fu_7753_p_ce,grp_fu_7757_p_din0,grp_fu_7757_p_din1,grp_fu_7757_p_dout0,grp_fu_7757_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] p_udiv_cast;
output  [7:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [7:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [7:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [7:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
input  [1:0] empty;
input  [11:0] phi_mul143;
output  [11:0] v6_address0;
output   v6_ce0;
input  [63:0] v6_q0;
output  [11:0] v6_address1;
output   v6_ce1;
input  [63:0] v6_q1;
input  [9:0] phi_mul;
output  [63:0] v29_4_out;
output   v29_4_out_ap_vld;
output  [63:0] grp_fu_7753_p_din0;
output  [63:0] grp_fu_7753_p_din1;
output  [0:0] grp_fu_7753_p_opcode;
input  [63:0] grp_fu_7753_p_dout0;
output   grp_fu_7753_p_ce;
output  [63:0] grp_fu_7757_p_din0;
output  [63:0] grp_fu_7757_p_din1;
input  [63:0] grp_fu_7757_p_dout0;
output   grp_fu_7757_p_ce;
reg ap_idle;
reg v29_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] icmp_ln68_reg_820;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_329;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_333;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_read_fu_112_p2;
wire   [1:0] tmp_reg_776;
reg   [3:0] v24_1_reg_784;
wire   [1:0] lshr_ln1_fu_355_p4;
reg   [1:0] lshr_ln1_reg_789;
wire   [0:0] icmp_ln68_fu_412_p2;
wire   [63:0] v25_fu_477_p11;
reg   [63:0] v25_reg_849;
wire   [63:0] v25_1_fu_516_p11;
reg   [63:0] v25_1_reg_854;
reg   [63:0] v6_load_1_reg_859;
wire   [63:0] v26_fu_635_p1;
wire   [63:0] v25_2_fu_656_p11;
reg   [63:0] v25_2_reg_919;
wire   [63:0] v25_3_fu_695_p11;
reg   [63:0] v25_3_reg_924;
reg   [63:0] v6_load_3_reg_929;
wire   [63:0] v26_1_fu_718_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] v26_2_fu_722_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v26_3_fu_727_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v27_reg_949;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v27_1_reg_959;
reg   [63:0] v27_2_reg_964;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v27_3_reg_969;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln69_1_fu_375_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_389_p1;
wire   [63:0] zext_ln69_2_fu_442_p1;
wire   [63:0] zext_ln70_1_fu_456_p1;
wire   [63:0] zext_ln69_5_fu_569_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_2_fu_582_p1;
wire   [63:0] zext_ln69_8_fu_617_p1;
wire   [63:0] zext_ln70_3_fu_630_p1;
reg   [63:0] v28_fu_92;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [3:0] v24_fu_96;
wire   [3:0] add_ln68_fu_735_p2;
wire    ap_block_pp0_stage31_11001;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage16_01001;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v6_ce1_local;
reg   [11:0] v6_address1_local;
reg    v6_ce0_local;
reg   [11:0] v6_address0_local;
reg   [63:0] grp_fu_320_p0;
reg   [63:0] grp_fu_320_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
reg   [63:0] grp_fu_325_p0;
reg   [63:0] grp_fu_325_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [7:0] zext_ln69_fu_365_p1;
wire   [7:0] add_ln69_fu_369_p2;
wire   [11:0] zext_ln68_fu_351_p1;
wire   [11:0] add_ln70_fu_383_p2;
wire   [2:0] tmp_2_fu_394_p4;
wire   [3:0] or_ln_fu_404_p3;
wire   [9:0] zext_ln68_2_fu_422_p1;
wire   [9:0] add_ln69_1_fu_426_p2;
wire   [7:0] lshr_ln69_1_fu_432_p4;
wire   [11:0] zext_ln68_1_fu_418_p1;
wire   [11:0] add_ln70_1_fu_450_p2;
wire   [63:0] v25_fu_477_p2;
wire   [63:0] v25_fu_477_p4;
wire   [63:0] v25_fu_477_p6;
wire   [63:0] v25_fu_477_p8;
wire   [63:0] v25_fu_477_p9;
wire   [63:0] v25_1_fu_516_p2;
wire   [63:0] v25_1_fu_516_p4;
wire   [63:0] v25_1_fu_516_p6;
wire   [63:0] v25_1_fu_516_p8;
wire   [63:0] v25_1_fu_516_p9;
wire   [3:0] or_ln68_1_fu_539_p3;
wire   [9:0] zext_ln69_4_fu_550_p1;
wire   [9:0] add_ln69_2_fu_554_p2;
wire   [7:0] lshr_ln69_2_fu_559_p4;
wire   [11:0] zext_ln69_3_fu_546_p1;
wire   [11:0] add_ln70_2_fu_577_p2;
wire   [3:0] or_ln68_2_fu_587_p3;
wire   [9:0] zext_ln69_7_fu_598_p1;
wire   [9:0] add_ln69_3_fu_602_p2;
wire   [7:0] lshr_ln69_3_fu_607_p4;
wire   [11:0] zext_ln69_6_fu_594_p1;
wire   [11:0] add_ln70_3_fu_625_p2;
wire   [63:0] v25_2_fu_656_p2;
wire   [63:0] v25_2_fu_656_p4;
wire   [63:0] v25_2_fu_656_p6;
wire   [63:0] v25_2_fu_656_p8;
wire   [63:0] v25_2_fu_656_p9;
wire   [63:0] v25_3_fu_695_p2;
wire   [63:0] v25_3_fu_695_p4;
wire   [63:0] v25_3_fu_695_p6;
wire   [63:0] v25_3_fu_695_p8;
wire   [63:0] v25_3_fu_695_p9;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_938;
reg    ap_condition_943;
reg    ap_condition_948;
reg    ap_condition_951;
reg    ap_condition_954;
reg    ap_condition_957;
reg    ap_condition_960;
reg    ap_condition_963;
reg    ap_condition_966;
reg    ap_condition_969;
reg    ap_condition_972;
reg    ap_condition_975;
wire   [1:0] v25_fu_477_p1;
wire   [1:0] v25_fu_477_p3;
wire  signed [1:0] v25_fu_477_p5;
wire  signed [1:0] v25_fu_477_p7;
wire  signed [1:0] v25_1_fu_516_p1;
wire   [1:0] v25_1_fu_516_p3;
wire   [1:0] v25_1_fu_516_p5;
wire  signed [1:0] v25_1_fu_516_p7;
wire  signed [1:0] v25_2_fu_656_p1;
wire  signed [1:0] v25_2_fu_656_p3;
wire   [1:0] v25_2_fu_656_p5;
wire   [1:0] v25_2_fu_656_p7;
wire   [1:0] v25_3_fu_695_p1;
wire  signed [1:0] v25_3_fu_695_p3;
wire  signed [1:0] v25_3_fu_695_p5;
wire   [1:0] v25_3_fu_695_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_92 = 64'd0;
#0 v24_fu_96 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(v25_fu_477_p2),.din1(v25_fu_477_p4),.din2(v25_fu_477_p6),.din3(v25_fu_477_p8),.def(v25_fu_477_p9),.sel(empty),.dout(v25_fu_477_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(v25_1_fu_516_p2),.din1(v25_1_fu_516_p4),.din2(v25_1_fu_516_p6),.din3(v25_1_fu_516_p8),.def(v25_1_fu_516_p9),.sel(empty),.dout(v25_1_fu_516_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(v25_2_fu_656_p2),.din1(v25_2_fu_656_p4),.din2(v25_2_fu_656_p6),.din3(v25_2_fu_656_p8),.def(v25_2_fu_656_p9),.sel(empty),.dout(v25_2_fu_656_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(v25_3_fu_695_p2),.din1(v25_3_fu_695_p4),.din2(v25_3_fu_695_p6),.din3(v25_3_fu_695_p8),.def(v25_3_fu_695_p9),.sel(empty),.dout(v25_3_fu_695_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_96 <= 4'd0;
    end else if (((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v24_fu_96 <= add_ln68_fu_735_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_92 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v28_fu_92 <= grp_fu_7753_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln68_reg_820 <= icmp_ln68_fu_412_p2;
        lshr_ln1_reg_789 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        v24_1_reg_784 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_329 <= v6_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_333 <= grp_fu_7753_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_1_reg_854 <= v25_1_fu_516_p11;
        v25_reg_849 <= v25_fu_477_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v25_2_reg_919 <= v25_2_fu_656_p11;
        v25_3_reg_924 <= v25_3_fu_695_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_959 <= grp_fu_7757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v27_2_reg_964 <= grp_fu_7757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v27_3_reg_969 <= grp_fu_7757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_reg_949 <= grp_fu_7757_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_load_1_reg_859 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_load_3_reg_929 <= v6_q0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_820 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_96;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_320_p0 = reg_333;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_320_p0 = v28_fu_92;
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_320_p1 = v27_3_reg_969;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_320_p1 = v27_2_reg_964;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_320_p1 = v27_1_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_320_p1 = v27_reg_949;
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_325_p0 = v25_3_reg_924;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_325_p0 = v25_2_reg_919;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_325_p0 = v25_1_reg_854;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_325_p0 = v25_reg_849;
        end else begin
            grp_fu_325_p0 = 'bx;
        end
    end else begin
        grp_fu_325_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_325_p1 = v26_3_fu_727_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_325_p1 = v26_2_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_325_p1 = v26_1_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_325_p1 = v26_fu_635_p1;
        end else begin
            grp_fu_325_p1 = 'bx;
        end
    end else begin
        grp_fu_325_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_951)) begin
            v0_0_address0_local = zext_ln69_8_fu_617_p1;
        end else if ((1'b1 == ap_condition_948)) begin
            v0_0_address0_local = zext_ln69_5_fu_569_p1;
        end else if ((1'b1 == ap_condition_943)) begin
            v0_0_address0_local = zext_ln69_2_fu_442_p1;
        end else if ((1'b1 == ap_condition_938)) begin
            v0_0_address0_local = zext_ln69_1_fu_375_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd1)) | ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd3)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_948)) begin
            v0_1_address0_local = zext_ln69_8_fu_617_p1;
        end else if ((1'b1 == ap_condition_960)) begin
            v0_1_address0_local = zext_ln69_5_fu_569_p1;
        end else if ((1'b1 == ap_condition_957)) begin
            v0_1_address0_local = zext_ln69_2_fu_442_p1;
        end else if ((1'b1 == ap_condition_954)) begin
            v0_1_address0_local = zext_ln69_1_fu_375_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd3)) | ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_960)) begin
            v0_2_address0_local = zext_ln69_8_fu_617_p1;
        end else if ((1'b1 == ap_condition_969)) begin
            v0_2_address0_local = zext_ln69_5_fu_569_p1;
        end else if ((1'b1 == ap_condition_966)) begin
            v0_2_address0_local = zext_ln69_2_fu_442_p1;
        end else if ((1'b1 == ap_condition_963)) begin
            v0_2_address0_local = zext_ln69_1_fu_375_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd0)) | ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_969)) begin
            v0_3_address0_local = zext_ln69_8_fu_617_p1;
        end else if ((1'b1 == ap_condition_951)) begin
            v0_3_address0_local = zext_ln69_5_fu_569_p1;
        end else if ((1'b1 == ap_condition_975)) begin
            v0_3_address0_local = zext_ln69_2_fu_442_p1;
        end else if ((1'b1 == ap_condition_972)) begin
            v0_3_address0_local = zext_ln69_1_fu_375_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd1)) | ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd2)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_820 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v29_4_out_ap_vld = 1'b1;
    end else begin
        v29_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address0_local = zext_ln70_3_fu_630_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address0_local = zext_ln70_1_fu_456_p1;
        end else begin
            v6_address0_local = 'bx;
        end
    end else begin
        v6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address1_local = zext_ln70_2_fu_582_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address1_local = zext_ln70_fu_389_p1;
        end else begin
            v6_address1_local = 'bx;
        end
    end else begin
        v6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce0_local = 1'b1;
    end else begin
        v6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce1_local = 1'b1;
    end else begin
        v6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage16)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln68_fu_735_p2 = (v24_1_reg_784 + 4'd4);
assign add_ln69_1_fu_426_p2 = (zext_ln68_2_fu_422_p1 + phi_mul);
assign add_ln69_2_fu_554_p2 = (zext_ln69_4_fu_550_p1 + phi_mul);
assign add_ln69_3_fu_602_p2 = (zext_ln69_7_fu_598_p1 + phi_mul);
assign add_ln69_fu_369_p2 = (zext_ln69_fu_365_p1 + p_udiv_cast);
assign add_ln70_1_fu_450_p2 = (zext_ln68_1_fu_418_p1 + phi_mul143);
assign add_ln70_2_fu_577_p2 = (zext_ln69_3_fu_546_p1 + phi_mul143);
assign add_ln70_3_fu_625_p2 = (zext_ln69_6_fu_594_p1 + phi_mul143);
assign add_ln70_fu_383_p2 = (zext_ln68_fu_351_p1 + phi_mul143);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_938 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd0));
end
always @ (*) begin
    ap_condition_943 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd3));
end
always @ (*) begin
    ap_condition_948 = ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd2));
end
always @ (*) begin
    ap_condition_951 = ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd1));
end
always @ (*) begin
    ap_condition_954 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd1));
end
always @ (*) begin
    ap_condition_957 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd0));
end
always @ (*) begin
    ap_condition_960 = ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd3));
end
always @ (*) begin
    ap_condition_963 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd2));
end
always @ (*) begin
    ap_condition_966 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd1));
end
always @ (*) begin
    ap_condition_969 = ((icmp_ln68_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_776 == 2'd0));
end
always @ (*) begin
    ap_condition_972 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd3));
end
always @ (*) begin
    ap_condition_975 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln68_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_read_fu_112_p2 == 2'd2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign grp_fu_7753_p_ce = 1'b1;
assign grp_fu_7753_p_din0 = grp_fu_320_p0;
assign grp_fu_7753_p_din1 = grp_fu_320_p1;
assign grp_fu_7753_p_opcode = 2'd0;
assign grp_fu_7757_p_ce = 1'b1;
assign grp_fu_7757_p_din0 = grp_fu_325_p0;
assign grp_fu_7757_p_din1 = grp_fu_325_p1;
assign icmp_ln68_fu_412_p2 = ((or_ln_fu_404_p3 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_355_p4 = {{ap_sig_allocacmp_v24_1[3:2]}};
assign lshr_ln69_1_fu_432_p4 = {{add_ln69_1_fu_426_p2[9:2]}};
assign lshr_ln69_2_fu_559_p4 = {{add_ln69_2_fu_554_p2[9:2]}};
assign lshr_ln69_3_fu_607_p4 = {{add_ln69_3_fu_602_p2[9:2]}};
assign or_ln68_1_fu_539_p3 = {{lshr_ln1_reg_789}, {2'd2}};
assign or_ln68_2_fu_587_p3 = {{lshr_ln1_reg_789}, {2'd3}};
assign or_ln_fu_404_p3 = {{tmp_2_fu_394_p4}, {1'd1}};
assign tmp_2_fu_394_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign tmp_read_fu_112_p2 = empty;
assign tmp_reg_776 = empty;
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_516_p2 = v0_0_q0;
assign v25_1_fu_516_p4 = v0_1_q0;
assign v25_1_fu_516_p6 = v0_2_q0;
assign v25_1_fu_516_p8 = v0_3_q0;
assign v25_1_fu_516_p9 = 'bx;
assign v25_2_fu_656_p2 = v0_0_q0;
assign v25_2_fu_656_p4 = v0_1_q0;
assign v25_2_fu_656_p6 = v0_2_q0;
assign v25_2_fu_656_p8 = v0_3_q0;
assign v25_2_fu_656_p9 = 'bx;
assign v25_3_fu_695_p2 = v0_0_q0;
assign v25_3_fu_695_p4 = v0_1_q0;
assign v25_3_fu_695_p6 = v0_2_q0;
assign v25_3_fu_695_p8 = v0_3_q0;
assign v25_3_fu_695_p9 = 'bx;
assign v25_fu_477_p2 = v0_0_q0;
assign v25_fu_477_p4 = v0_1_q0;
assign v25_fu_477_p6 = v0_2_q0;
assign v25_fu_477_p8 = v0_3_q0;
assign v25_fu_477_p9 = 'bx;
assign v26_1_fu_718_p1 = v6_load_1_reg_859;
assign v26_2_fu_722_p1 = reg_329;
assign v26_3_fu_727_p1 = v6_load_3_reg_929;
assign v26_fu_635_p1 = reg_329;
assign v29_4_out = grp_fu_7753_p_dout0;
assign v6_address0 = v6_address0_local;
assign v6_address1 = v6_address1_local;
assign v6_ce0 = v6_ce0_local;
assign v6_ce1 = v6_ce1_local;
assign zext_ln68_1_fu_418_p1 = or_ln_fu_404_p3;
assign zext_ln68_2_fu_422_p1 = or_ln_fu_404_p3;
assign zext_ln68_fu_351_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_375_p1 = add_ln69_fu_369_p2;
assign zext_ln69_2_fu_442_p1 = lshr_ln69_1_fu_432_p4;
assign zext_ln69_3_fu_546_p1 = or_ln68_1_fu_539_p3;
assign zext_ln69_4_fu_550_p1 = or_ln68_1_fu_539_p3;
assign zext_ln69_5_fu_569_p1 = lshr_ln69_2_fu_559_p4;
assign zext_ln69_6_fu_594_p1 = or_ln68_2_fu_587_p3;
assign zext_ln69_7_fu_598_p1 = or_ln68_2_fu_587_p3;
assign zext_ln69_8_fu_617_p1 = lshr_ln69_3_fu_607_p4;
assign zext_ln69_fu_365_p1 = lshr_ln1_fu_355_p4;
assign zext_ln70_1_fu_456_p1 = add_ln70_1_fu_450_p2;
assign zext_ln70_2_fu_582_p1 = add_ln70_2_fu_577_p2;
assign zext_ln70_3_fu_630_p1 = add_ln70_3_fu_625_p2;
assign zext_ln70_fu_389_p1 = add_ln70_fu_383_p2;
endmodule 