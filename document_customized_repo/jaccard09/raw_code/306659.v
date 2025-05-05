module backprop_backprop_Pipeline_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v7_4_address0,v7_4_ce0,v7_4_q0,v7_5_address0,v7_5_ce0,v7_5_q0,v7_6_address0,v7_6_ce0,v7_6_q0,v7_7_address0,v7_7_ce0,v7_7_q0,v15_5_reload,v15_3_reload,mul_ln192,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,v14_10_reload,v15_10_reload,v122_out,v122_out_ap_vld,grp_fu_50485_p_din0,grp_fu_50485_p_din1,grp_fu_50485_p_opcode,grp_fu_50485_p_dout0,grp_fu_50485_p_ce,grp_fu_21179_p_din0,grp_fu_21179_p_din1,grp_fu_21179_p_dout0,grp_fu_21179_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v14_5_reload;
input  [63:0] v14_3_reload;
input  [8:0] mul_ln168;
output  [5:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [5:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [5:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [5:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [5:0] v7_4_address0;
output   v7_4_ce0;
input  [63:0] v7_4_q0;
output  [5:0] v7_5_address0;
output   v7_5_ce0;
input  [63:0] v7_5_q0;
output  [5:0] v7_6_address0;
output   v7_6_ce0;
input  [63:0] v7_6_q0;
output  [5:0] v7_7_address0;
output   v7_7_ce0;
input  [63:0] v7_7_q0;
input  [63:0] v15_5_reload;
input  [63:0] v15_3_reload;
input  [7:0] mul_ln192;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [7:0] v2_address1;
output   v2_ce1;
input  [63:0] v2_q1;
input  [63:0] v14_10_reload;
input  [63:0] v15_10_reload;
output  [63:0] v122_out;
output   v122_out_ap_vld;
output  [63:0] grp_fu_50485_p_din0;
output  [63:0] grp_fu_50485_p_din1;
output  [1:0] grp_fu_50485_p_opcode;
input  [63:0] grp_fu_50485_p_dout0;
output   grp_fu_50485_p_ce;
output  [63:0] grp_fu_21179_p_din0;
output  [63:0] grp_fu_21179_p_din1;
input  [63:0] grp_fu_21179_p_dout0;
output   grp_fu_21179_p_ce;
reg ap_idle;
reg v122_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln192_reg_900;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_387;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v111_1_reg_871;
wire   [8:0] add_ln194_fu_410_p2;
reg   [8:0] add_ln194_reg_879;
reg   [0:0] tmp_reg_885;
reg   [2:0] trunc_ln_reg_890;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] or_ln2_fu_449_p3;
reg   [1:0] or_ln2_reg_895;
wire   [0:0] icmp_ln192_fu_456_p2;
reg   [0:0] icmp_ln192_reg_900_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_900_pp0_iter2_reg;
wire   [8:0] add_ln194_1_fu_466_p2;
reg   [8:0] add_ln194_1_reg_904;
reg   [2:0] trunc_ln194_1_reg_910;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln193_fu_508_p2;
reg   [0:0] icmp_ln193_reg_955;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] v113_fu_545_p19;
reg   [63:0] v113_reg_961;
wire   [63:0] v112_fu_596_p3;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v113_1_fu_634_p19;
reg   [63:0] v113_1_reg_1011;
reg   [63:0] v2_load_reg_1026;
reg   [63:0] v2_load_1_reg_1031;
wire   [0:0] xor_ln196_2_fu_740_p2;
reg   [0:0] xor_ln196_2_reg_1036;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [62:0] trunc_ln196_fu_746_p1;
reg   [62:0] trunc_ln196_reg_1041;
wire   [63:0] v116_fu_750_p3;
reg   [63:0] v116_reg_1046;
wire   [63:0] v115_fu_761_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] xor_ln196_fu_778_p2;
reg   [0:0] xor_ln196_reg_1056;
wire   [62:0] trunc_ln196_1_fu_784_p1;
reg   [62:0] trunc_ln196_1_reg_1061;
wire   [63:0] v115_1_fu_794_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] v118_fu_799_p1;
reg   [63:0] v117_1_reg_1076;
wire   [63:0] v118_1_fu_803_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] v119_1_reg_1091;
reg   [63:0] v121_2_reg_1096;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
reg    ap_condition_exit_pp0_iter2_stage11;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln194_fu_496_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln194_1_fu_584_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln199_fu_710_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_1_fu_723_p1;
reg   [63:0] v120_fu_122;
wire    ap_loop_init;
wire    ap_block_pp0_stage4;
reg   [1:0] v111_fu_126;
wire   [1:0] xor_ln8_fu_689_p3;
wire    ap_block_pp0_stage15_11001;
reg   [1:0] ap_sig_allocacmp_v111_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage11_01001;
reg    v7_0_ce0_local;
reg   [5:0] v7_0_address0_local;
reg    v7_1_ce0_local;
reg   [5:0] v7_1_address0_local;
reg    v7_2_ce0_local;
reg   [5:0] v7_2_address0_local;
reg    v7_3_ce0_local;
reg   [5:0] v7_3_address0_local;
reg    v7_4_ce0_local;
reg   [5:0] v7_4_address0_local;
reg    v7_5_ce0_local;
reg   [5:0] v7_5_address0_local;
reg    v7_6_ce0_local;
reg   [5:0] v7_6_address0_local;
reg    v7_7_ce0_local;
reg   [5:0] v7_7_address0_local;
reg    v2_ce1_local;
reg    v2_ce0_local;
reg   [63:0] grp_fu_378_p0;
reg   [63:0] grp_fu_378_p1;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_383_p0;
reg   [63:0] grp_fu_383_p1;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [8:0] zext_ln192_1_fu_406_p1;
wire   [8:0] grp_fu_416_p0;
wire   [6:0] grp_fu_416_p1;
wire    ap_block_pp0_stage1;
wire   [8:0] mul_ln194_fu_433_p0;
wire   [10:0] mul_ln194_fu_433_p1;
wire   [18:0] mul_ln194_fu_433_p2;
wire   [8:0] zext_ln192_3_fu_462_p1;
wire   [8:0] grp_fu_471_p0;
wire   [6:0] grp_fu_471_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] mul_ln194_1_fu_480_p0;
wire   [10:0] mul_ln194_1_fu_480_p1;
wire   [18:0] mul_ln194_1_fu_480_p2;
wire   [8:0] grp_fu_416_p2;
wire   [63:0] v113_fu_545_p2;
wire   [63:0] v113_fu_545_p4;
wire   [63:0] v113_fu_545_p6;
wire   [63:0] v113_fu_545_p8;
wire   [63:0] v113_fu_545_p10;
wire   [63:0] v113_fu_545_p12;
wire   [63:0] v113_fu_545_p14;
wire   [63:0] v113_fu_545_p16;
wire   [63:0] v113_fu_545_p17;
wire   [8:0] grp_fu_471_p2;
wire   [63:0] v113_1_fu_634_p2;
wire   [63:0] v113_1_fu_634_p4;
wire   [63:0] v113_1_fu_634_p6;
wire   [63:0] v113_1_fu_634_p8;
wire   [63:0] v113_1_fu_634_p10;
wire   [63:0] v113_1_fu_634_p12;
wire   [63:0] v113_1_fu_634_p14;
wire   [63:0] v113_1_fu_634_p16;
wire   [63:0] v113_1_fu_634_p17;
wire   [0:0] bit_sel2_fu_673_p3;
wire   [0:0] xor_ln192_fu_680_p2;
wire   [0:0] trunc_ln192_fu_686_p1;
wire   [7:0] zext_ln192_fu_702_p1;
wire   [7:0] add_ln199_fu_705_p2;
wire   [7:0] zext_ln192_2_fu_715_p1;
wire   [7:0] add_ln199_1_fu_718_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln196_fu_728_p1;
wire   [0:0] bit_sel_fu_732_p3;
wire   [63:0] xor_ln7_fu_755_p3;
wire   [63:0] bitcast_ln196_2_fu_766_p1;
wire   [0:0] bit_sel1_fu_770_p3;
wire   [63:0] xor_ln196_1_fu_788_p3;
reg   [1:0] grp_fu_378_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln194_1_fu_480_p00;
wire   [18:0] mul_ln194_fu_433_p00;
wire   [2:0] v113_fu_545_p1;
wire   [2:0] v113_fu_545_p3;
wire   [2:0] v113_fu_545_p5;
wire   [2:0] v113_fu_545_p7;
wire  signed [2:0] v113_fu_545_p9;
wire  signed [2:0] v113_fu_545_p11;
wire  signed [2:0] v113_fu_545_p13;
wire  signed [2:0] v113_fu_545_p15;
wire   [2:0] v113_1_fu_634_p1;
wire   [2:0] v113_1_fu_634_p3;
wire   [2:0] v113_1_fu_634_p5;
wire   [2:0] v113_1_fu_634_p7;
wire  signed [2:0] v113_1_fu_634_p9;
wire  signed [2:0] v113_1_fu_634_p11;
wire  signed [2:0] v113_1_fu_634_p13;
wire  signed [2:0] v113_1_fu_634_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_122 = 64'd0;
#0 v111_fu_126 = 2'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_7ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 7 ),.dout_WIDTH( 9 ))
urem_9ns_7ns_9_13_1_U320(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_416_p0),.din1(grp_fu_416_p1),.ce(1'b1),.dout(grp_fu_416_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U321(.din0(mul_ln194_fu_433_p0),.din1(mul_ln194_fu_433_p1),.dout(mul_ln194_fu_433_p2));
backprop_urem_9ns_7ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 7 ),.dout_WIDTH( 9 ))
urem_9ns_7ns_9_13_1_U322(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_471_p0),.din1(grp_fu_471_p1),.ce(1'b1),.dout(grp_fu_471_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U323(.din0(mul_ln194_1_fu_480_p0),.din1(mul_ln194_1_fu_480_p1),.dout(mul_ln194_1_fu_480_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U324(.din0(v113_fu_545_p2),.din1(v113_fu_545_p4),.din2(v113_fu_545_p6),.din3(v113_fu_545_p8),.din4(v113_fu_545_p10),.din5(v113_fu_545_p12),.din6(v113_fu_545_p14),.din7(v113_fu_545_p16),.def(v113_fu_545_p17),.sel(trunc_ln_reg_890),.dout(v113_fu_545_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U325(.din0(v113_1_fu_634_p2),.din1(v113_1_fu_634_p4),.din2(v113_1_fu_634_p6),.din3(v113_1_fu_634_p8),.din4(v113_1_fu_634_p10),.din5(v113_1_fu_634_p12),.din6(v113_1_fu_634_p14),.din7(v113_1_fu_634_p16),.def(v113_1_fu_634_p17),.sel(trunc_ln194_1_reg_910),.dout(v113_1_fu_634_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage11)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_126 <= 2'd0;
    end else if (((icmp_ln192_reg_900 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v111_fu_126 <= xor_ln8_fu_689_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_122 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v120_fu_122 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_1_reg_904 <= add_ln194_1_fu_466_p2;
        icmp_ln192_reg_900 <= icmp_ln192_fu_456_p2;
        icmp_ln192_reg_900_pp0_iter1_reg <= icmp_ln192_reg_900;
        icmp_ln192_reg_900_pp0_iter2_reg <= icmp_ln192_reg_900_pp0_iter1_reg;
        or_ln2_reg_895[1] <= or_ln2_fu_449_p3[1];
        trunc_ln_reg_890 <= {{mul_ln194_fu_433_p2[17:15]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_879 <= add_ln194_fu_410_p2;
        tmp_reg_885 <= ap_sig_allocacmp_v111_1[32'd1];
        v111_1_reg_871 <= ap_sig_allocacmp_v111_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        icmp_ln193_reg_955 <= icmp_ln193_fu_508_p2;
        v113_reg_961 <= v113_fu_545_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_387 <= grp_fu_21179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln194_1_reg_910 <= {{mul_ln194_1_fu_480_p2[17:15]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln196_1_reg_1061 <= trunc_ln196_1_fu_784_p1;
        xor_ln196_reg_1056 <= xor_ln196_fu_778_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln196_reg_1041 <= trunc_ln196_fu_746_p1;
        v116_reg_1046 <= v116_fu_750_p3;
        xor_ln196_2_reg_1036 <= xor_ln196_2_fu_740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v113_1_reg_1011 <= v113_1_fu_634_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v117_1_reg_1076 <= grp_fu_21179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v119_1_reg_1091 <= grp_fu_21179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v121_2_reg_1096 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_1_reg_1031 <= v2_q0;
        v2_load_reg_1026 <= v2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln192_reg_900 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln192_reg_900_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter2_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_1 = v111_fu_126;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln192_reg_900 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_378_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln192_reg_900_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_378_opcode = 2'd0;
    end else begin
        grp_fu_378_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_378_p0 = v121_2_reg_1096;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p0 = v120_fu_122;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_378_p0 = v14_10_reload;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_378_p0 = v112_fu_596_p3;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_378_p1 = v119_1_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p1 = reg_387;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_378_p1 = v113_1_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_378_p1 = v113_reg_961;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_383_p0 = v117_1_reg_1076;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_383_p0 = reg_387;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_383_p0 = v115_1_fu_794_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_383_p0 = v115_fu_761_p1;
        end else begin
            grp_fu_383_p0 = 'bx;
        end
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_383_p1 = v118_1_fu_803_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_383_p1 = v118_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_383_p1 = v15_10_reload;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_383_p1 = v116_reg_1046;
        end else begin
            grp_fu_383_p1 = 'bx;
        end
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (icmp_ln192_reg_900_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v122_out_ap_vld = 1'b1;
    end else begin
        v122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_0_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_0_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_0_address0_local = 'bx;
        end
    end else begin
        v7_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_1_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_1_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_1_address0_local = 'bx;
        end
    end else begin
        v7_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_2_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_2_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_2_address0_local = 'bx;
        end
    end else begin
        v7_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_3_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_3_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_3_address0_local = 'bx;
        end
    end else begin
        v7_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_4_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_4_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_4_address0_local = 'bx;
        end
    end else begin
        v7_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_4_ce0_local = 1'b1;
    end else begin
        v7_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_5_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_5_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_5_address0_local = 'bx;
        end
    end else begin
        v7_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_5_ce0_local = 1'b1;
    end else begin
        v7_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_6_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_6_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_6_address0_local = 'bx;
        end
    end else begin
        v7_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_6_ce0_local = 1'b1;
    end else begin
        v7_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_7_address0_local = zext_ln194_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_7_address0_local = zext_ln194_fu_496_p1;
        end else begin
            v7_7_address0_local = 'bx;
        end
    end else begin
        v7_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_7_ce0_local = 1'b1;
    end else begin
        v7_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln194_1_fu_466_p2 = (zext_ln192_3_fu_462_p1 + mul_ln168);
assign add_ln194_fu_410_p2 = (zext_ln192_1_fu_406_p1 + mul_ln168);
assign add_ln199_1_fu_718_p2 = (zext_ln192_2_fu_715_p1 + mul_ln192);
assign add_ln199_fu_705_p2 = (zext_ln192_fu_702_p1 + mul_ln192);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_770_p3 = bitcast_ln196_2_fu_766_p1[64'd63];
assign bit_sel2_fu_673_p3 = v111_1_reg_871[2'd1];
assign bit_sel_fu_732_p3 = bitcast_ln196_fu_728_p1[64'd63];
assign bitcast_ln196_2_fu_766_p1 = grp_fu_50485_p_dout0;
assign bitcast_ln196_fu_728_p1 = grp_fu_50485_p_dout0;
assign grp_fu_21179_p_ce = 1'b1;
assign grp_fu_21179_p_din0 = grp_fu_383_p0;
assign grp_fu_21179_p_din1 = grp_fu_383_p1;
assign grp_fu_416_p0 = (zext_ln192_1_fu_406_p1 + mul_ln168);
assign grp_fu_416_p1 = 9'd62;
assign grp_fu_471_p0 = (zext_ln192_3_fu_462_p1 + mul_ln168);
assign grp_fu_471_p1 = 9'd62;
assign grp_fu_50485_p_ce = 1'b1;
assign grp_fu_50485_p_din0 = grp_fu_378_p0;
assign grp_fu_50485_p_din1 = grp_fu_378_p1;
assign grp_fu_50485_p_opcode = grp_fu_378_opcode;
assign icmp_ln192_fu_456_p2 = ((or_ln2_fu_449_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln193_fu_508_p2 = ((v111_1_reg_871 == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln194_1_fu_480_p0 = mul_ln194_1_fu_480_p00;
assign mul_ln194_1_fu_480_p00 = add_ln194_1_reg_904;
assign mul_ln194_1_fu_480_p1 = 19'd529;
assign mul_ln194_fu_433_p0 = mul_ln194_fu_433_p00;
assign mul_ln194_fu_433_p00 = add_ln194_reg_879;
assign mul_ln194_fu_433_p1 = 19'd529;
assign or_ln2_fu_449_p3 = {{tmp_reg_885}, {1'd1}};
assign trunc_ln192_fu_686_p1 = v111_1_reg_871[0:0];
assign trunc_ln196_1_fu_784_p1 = bitcast_ln196_2_fu_766_p1[62:0];
assign trunc_ln196_fu_746_p1 = bitcast_ln196_fu_728_p1[62:0];
assign v112_fu_596_p3 = ((icmp_ln193_reg_955[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v113_1_fu_634_p10 = v7_4_q0;
assign v113_1_fu_634_p12 = v7_5_q0;
assign v113_1_fu_634_p14 = v7_6_q0;
assign v113_1_fu_634_p16 = v7_7_q0;
assign v113_1_fu_634_p17 = 'bx;
assign v113_1_fu_634_p2 = v7_0_q0;
assign v113_1_fu_634_p4 = v7_1_q0;
assign v113_1_fu_634_p6 = v7_2_q0;
assign v113_1_fu_634_p8 = v7_3_q0;
assign v113_fu_545_p10 = v7_4_q0;
assign v113_fu_545_p12 = v7_5_q0;
assign v113_fu_545_p14 = v7_6_q0;
assign v113_fu_545_p16 = v7_7_q0;
assign v113_fu_545_p17 = 'bx;
assign v113_fu_545_p2 = v7_0_q0;
assign v113_fu_545_p4 = v7_1_q0;
assign v113_fu_545_p6 = v7_2_q0;
assign v113_fu_545_p8 = v7_3_q0;
assign v115_1_fu_794_p1 = xor_ln196_1_fu_788_p3;
assign v115_fu_761_p1 = xor_ln7_fu_755_p3;
assign v116_fu_750_p3 = ((icmp_ln193_reg_955[0:0] == 1'b1) ? v15_5_reload : v15_3_reload);
assign v118_1_fu_803_p1 = v2_load_1_reg_1031;
assign v118_fu_799_p1 = v2_load_reg_1026;
assign v122_out = grp_fu_50485_p_dout0;
assign v2_address0 = zext_ln199_1_fu_723_p1;
assign v2_address1 = zext_ln199_fu_710_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v7_0_address0 = v7_0_address0_local;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = v7_1_address0_local;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = v7_2_address0_local;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = v7_3_address0_local;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_4_address0 = v7_4_address0_local;
assign v7_4_ce0 = v7_4_ce0_local;
assign v7_5_address0 = v7_5_address0_local;
assign v7_5_ce0 = v7_5_ce0_local;
assign v7_6_address0 = v7_6_address0_local;
assign v7_6_ce0 = v7_6_ce0_local;
assign v7_7_address0 = v7_7_address0_local;
assign v7_7_ce0 = v7_7_ce0_local;
assign xor_ln192_fu_680_p2 = (bit_sel2_fu_673_p3 ^ 1'd1);
assign xor_ln196_1_fu_788_p3 = {{xor_ln196_reg_1056}, {trunc_ln196_1_reg_1061}};
assign xor_ln196_2_fu_740_p2 = (bit_sel_fu_732_p3 ^ 1'd1);
assign xor_ln196_fu_778_p2 = (bit_sel1_fu_770_p3 ^ 1'd1);
assign xor_ln7_fu_755_p3 = {{xor_ln196_2_reg_1036}, {trunc_ln196_reg_1041}};
assign xor_ln8_fu_689_p3 = {{xor_ln192_fu_680_p2}, {trunc_ln192_fu_686_p1}};
assign zext_ln192_1_fu_406_p1 = ap_sig_allocacmp_v111_1;
assign zext_ln192_2_fu_715_p1 = or_ln2_reg_895;
assign zext_ln192_3_fu_462_p1 = or_ln2_fu_449_p3;
assign zext_ln192_fu_702_p1 = v111_1_reg_871;
assign zext_ln194_1_fu_584_p1 = grp_fu_471_p2;
assign zext_ln194_fu_496_p1 = grp_fu_416_p2;
assign zext_ln199_1_fu_723_p1 = add_ln199_1_fu_718_p2;
assign zext_ln199_fu_710_p1 = add_ln199_fu_705_p2;
always @ (posedge ap_clk) begin
    or_ln2_reg_895[0] <= 1'b1;
end
endmodule 