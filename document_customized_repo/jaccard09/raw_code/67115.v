module backprop_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,d_weights3_16_address0,d_weights3_16_ce0,d_weights3_16_q0,d_weights3_17_address0,d_weights3_17_ce0,d_weights3_17_q0,d_weights3_18_address0,d_weights3_18_ce0,d_weights3_18_q0,d_weights3_19_address0,d_weights3_19_ce0,d_weights3_19_q0,d_weights3_20_address0,d_weights3_20_ce0,d_weights3_20_q0,d_weights3_21_address0,d_weights3_21_ce0,d_weights3_21_q0,d_weights3_22_address0,d_weights3_22_ce0,d_weights3_22_q0,d_weights3_23_address0,d_weights3_23_ce0,d_weights3_23_q0,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_address1,weights3_ce1,weights3_q1,norm_7_out,norm_7_out_ap_vld,grp_fu_601_p_din0,grp_fu_601_p_din1,grp_fu_601_p_dout0,grp_fu_601_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [2:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [2:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [2:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [2:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [2:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [2:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [2:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [2:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [2:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [2:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [2:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [2:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [2:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [2:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [2:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [2:0] d_weights3_16_address0;
output   d_weights3_16_ce0;
input  [63:0] d_weights3_16_q0;
output  [2:0] d_weights3_17_address0;
output   d_weights3_17_ce0;
input  [63:0] d_weights3_17_q0;
output  [2:0] d_weights3_18_address0;
output   d_weights3_18_ce0;
input  [63:0] d_weights3_18_q0;
output  [2:0] d_weights3_19_address0;
output   d_weights3_19_ce0;
input  [63:0] d_weights3_19_q0;
output  [2:0] d_weights3_20_address0;
output   d_weights3_20_ce0;
input  [63:0] d_weights3_20_q0;
output  [2:0] d_weights3_21_address0;
output   d_weights3_21_ce0;
input  [63:0] d_weights3_21_q0;
output  [2:0] d_weights3_22_address0;
output   d_weights3_22_ce0;
input  [63:0] d_weights3_22_q0;
output  [2:0] d_weights3_23_address0;
output   d_weights3_23_ce0;
input  [63:0] d_weights3_23_q0;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
output  [63:0] grp_fu_601_p_din0;
output  [63:0] grp_fu_601_p_din1;
input  [63:0] grp_fu_601_p_dout0;
output   grp_fu_601_p_ce;
reg ap_idle;
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln178_reg_835;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln178_fu_546_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln178_reg_835_pp0_iter1_reg;
reg   [0:0] icmp_ln178_reg_835_pp0_iter2_reg;
reg   [0:0] icmp_ln178_reg_835_pp0_iter3_reg;
reg   [0:0] icmp_ln178_reg_835_pp0_iter4_reg;
wire   [7:0] add_ln180_fu_618_p2;
reg   [7:0] add_ln180_reg_839;
reg   [7:0] add_ln180_reg_839_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] d_weights3_0_load_reg_966;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] d_weights3_1_load_reg_971;
reg   [63:0] d_weights3_2_load_reg_976;
reg   [63:0] d_weights3_3_load_reg_981;
reg   [63:0] d_weights3_4_load_reg_986;
reg   [63:0] d_weights3_5_load_reg_991;
reg   [63:0] d_weights3_6_load_reg_996;
reg   [63:0] d_weights3_7_load_reg_1001;
reg   [63:0] d_weights3_8_load_reg_1006;
reg   [63:0] d_weights3_9_load_reg_1011;
reg   [63:0] d_weights3_10_load_reg_1016;
reg   [63:0] d_weights3_11_load_reg_1021;
reg   [63:0] d_weights3_12_load_reg_1026;
reg   [63:0] d_weights3_13_load_reg_1031;
reg   [63:0] d_weights3_14_load_reg_1036;
reg   [63:0] d_weights3_15_load_reg_1041;
reg   [63:0] d_weights3_16_load_reg_1046;
reg   [63:0] d_weights3_17_load_reg_1051;
reg   [63:0] d_weights3_18_load_reg_1056;
reg   [63:0] d_weights3_19_load_reg_1061;
reg   [63:0] d_weights3_20_load_reg_1066;
reg   [63:0] d_weights3_21_load_reg_1071;
reg   [63:0] d_weights3_22_load_reg_1076;
reg   [63:0] d_weights3_23_load_reg_1081;
wire   [63:0] tmp_7_fu_701_p51;
reg   [63:0] tmp_7_reg_1086;
wire    ap_block_pp0_stage6_11001;
reg   [7:0] weights3_addr_reg_1091;
reg   [7:0] weights3_addr_reg_1091_pp0_iter3_reg;
reg   [63:0] weights3_load_reg_1097;
reg   [63:0] mul_reg_1102;
wire   [63:0] bitcast_ln180_fu_785_p1;
wire   [63:0] grp_fu_514_p2;
reg   [63:0] sub5_reg_1112;
reg   [63:0] mul1_reg_1119;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln180_1_fu_669_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln180_fu_781_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_162;
reg   [63:0] ap_sig_allocacmp_norm_load_1;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage1;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] j_fu_166;
wire   [1:0] add_ln179_fu_624_p2;
reg   [6:0] i_fu_170;
wire   [6:0] select_ln178_fu_584_p3;
reg   [7:0] indvar_flatten27_fu_174;
wire   [7:0] add_ln178_fu_552_p2;
wire    ap_block_pp0_stage1_01001;
reg    d_weights3_0_ce0_local;
reg    d_weights3_1_ce0_local;
reg    d_weights3_2_ce0_local;
reg    d_weights3_3_ce0_local;
reg    d_weights3_4_ce0_local;
reg    d_weights3_5_ce0_local;
reg    d_weights3_6_ce0_local;
reg    d_weights3_7_ce0_local;
reg    d_weights3_8_ce0_local;
reg    d_weights3_9_ce0_local;
reg    d_weights3_10_ce0_local;
reg    d_weights3_11_ce0_local;
reg    d_weights3_12_ce0_local;
reg    d_weights3_13_ce0_local;
reg    d_weights3_14_ce0_local;
reg    d_weights3_15_ce0_local;
reg    d_weights3_16_ce0_local;
reg    d_weights3_17_ce0_local;
reg    d_weights3_18_ce0_local;
reg    d_weights3_19_ce0_local;
reg    d_weights3_20_ce0_local;
reg    d_weights3_21_ce0_local;
reg    d_weights3_22_ce0_local;
reg    d_weights3_23_ce0_local;
reg    weights3_ce1_local;
reg    weights3_we0_local;
wire   [63:0] bitcast_ln180_1_fu_789_p1;
reg    weights3_ce0_local;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_514_p0;
reg   [63:0] grp_fu_514_p1;
reg   [63:0] grp_fu_518_p0;
reg   [63:0] grp_fu_518_p1;
wire   [0:0] icmp_ln179_fu_564_p2;
wire   [6:0] add_ln178_1_fu_578_p2;
wire   [5:0] trunc_ln179_fu_596_p1;
wire   [7:0] p_shl_fu_600_p3;
wire   [7:0] zext_ln179_fu_592_p1;
wire   [1:0] select_ln121_fu_570_p3;
wire   [7:0] zext_ln179_1_fu_614_p1;
wire   [7:0] sub_ln179_fu_608_p2;
wire   [5:0] grp_fu_645_p1;
wire   [7:0] mul_ln180_fu_653_p0;
wire   [9:0] mul_ln180_fu_653_p1;
wire   [16:0] mul_ln180_fu_653_p2;
wire   [3:0] tmp_fu_659_p4;
wire   [4:0] grp_fu_645_p2;
wire    ap_block_pp0_stage6;
wire   [63:0] tmp_7_fu_701_p49;
wire   [4:0] tmp_7_fu_701_p50;
reg   [1:0] grp_fu_514_opcode;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [16:0] mul_ln180_fu_653_p00;
wire   [4:0] tmp_7_fu_701_p1;
wire   [4:0] tmp_7_fu_701_p3;
wire   [4:0] tmp_7_fu_701_p5;
wire   [4:0] tmp_7_fu_701_p7;
wire   [4:0] tmp_7_fu_701_p9;
wire   [4:0] tmp_7_fu_701_p11;
wire   [4:0] tmp_7_fu_701_p13;
wire   [4:0] tmp_7_fu_701_p15;
wire   [4:0] tmp_7_fu_701_p17;
wire   [4:0] tmp_7_fu_701_p19;
wire   [4:0] tmp_7_fu_701_p21;
wire   [4:0] tmp_7_fu_701_p23;
wire   [4:0] tmp_7_fu_701_p25;
wire   [4:0] tmp_7_fu_701_p27;
wire   [4:0] tmp_7_fu_701_p29;
wire   [4:0] tmp_7_fu_701_p31;
wire  signed [4:0] tmp_7_fu_701_p33;
wire  signed [4:0] tmp_7_fu_701_p35;
wire  signed [4:0] tmp_7_fu_701_p37;
wire  signed [4:0] tmp_7_fu_701_p39;
wire  signed [4:0] tmp_7_fu_701_p41;
wire  signed [4:0] tmp_7_fu_701_p43;
wire  signed [4:0] tmp_7_fu_701_p45;
wire  signed [4:0] tmp_7_fu_701_p47;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_162 = 64'd0;
#0 j_fu_166 = 2'd0;
#0 i_fu_170 = 7'd0;
#0 indvar_flatten27_fu_174 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U440(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_514_p0),.din1(grp_fu_514_p1),.opcode(grp_fu_514_opcode),.ce(1'b1),.dout(grp_fu_514_p2));
backprop_urem_8ns_6ns_5_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.dout_WIDTH( 5 ))
urem_8ns_6ns_5_12_1_U442(.clk(ap_clk),.reset(ap_rst),.din0(add_ln180_reg_839),.din1(grp_fu_645_p1),.ce(1'b1),.dout(grp_fu_645_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U443(.din0(mul_ln180_fu_653_p0),.din1(mul_ln180_fu_653_p1),.dout(mul_ln180_fu_653_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_49_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_49_5_64_1_1_U444(.din0(d_weights3_0_load_reg_966),.din1(d_weights3_1_load_reg_971),.din2(d_weights3_2_load_reg_976),.din3(d_weights3_3_load_reg_981),.din4(d_weights3_4_load_reg_986),.din5(d_weights3_5_load_reg_991),.din6(d_weights3_6_load_reg_996),.din7(d_weights3_7_load_reg_1001),.din8(d_weights3_8_load_reg_1006),.din9(d_weights3_9_load_reg_1011),.din10(d_weights3_10_load_reg_1016),.din11(d_weights3_11_load_reg_1021),.din12(d_weights3_12_load_reg_1026),.din13(d_weights3_13_load_reg_1031),.din14(d_weights3_14_load_reg_1036),.din15(d_weights3_15_load_reg_1041),.din16(d_weights3_16_load_reg_1046),.din17(d_weights3_17_load_reg_1051),.din18(d_weights3_18_load_reg_1056),.din19(d_weights3_19_load_reg_1061),.din20(d_weights3_20_load_reg_1066),.din21(d_weights3_21_load_reg_1071),.din22(d_weights3_22_load_reg_1076),.din23(d_weights3_23_load_reg_1081),.def(tmp_7_fu_701_p49),.sel(tmp_7_fu_701_p50),.dout(tmp_7_fu_701_p51));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_170 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln178_fu_546_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_170 <= select_ln178_fu_584_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten27_fu_174 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln178_fu_546_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten27_fu_174 <= add_ln178_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_166 <= 2'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln178_fu_546_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_166 <= add_ln179_fu_624_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_162 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        norm_fu_162 <= grp_fu_514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln180_reg_839 <= add_ln180_fu_618_p2;
        add_ln180_reg_839_pp0_iter1_reg <= add_ln180_reg_839;
        icmp_ln178_reg_835 <= icmp_ln178_fu_546_p2;
        icmp_ln178_reg_835_pp0_iter1_reg <= icmp_ln178_reg_835;
        icmp_ln178_reg_835_pp0_iter2_reg <= icmp_ln178_reg_835_pp0_iter1_reg;
        icmp_ln178_reg_835_pp0_iter3_reg <= icmp_ln178_reg_835_pp0_iter2_reg;
        icmp_ln178_reg_835_pp0_iter4_reg <= icmp_ln178_reg_835_pp0_iter3_reg;
        weights3_addr_reg_1091 <= zext_ln180_fu_781_p1;
        weights3_addr_reg_1091_pp0_iter3_reg <= weights3_addr_reg_1091;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        d_weights3_0_load_reg_966 <= d_weights3_0_q0;
        d_weights3_10_load_reg_1016 <= d_weights3_10_q0;
        d_weights3_11_load_reg_1021 <= d_weights3_11_q0;
        d_weights3_12_load_reg_1026 <= d_weights3_12_q0;
        d_weights3_13_load_reg_1031 <= d_weights3_13_q0;
        d_weights3_14_load_reg_1036 <= d_weights3_14_q0;
        d_weights3_15_load_reg_1041 <= d_weights3_15_q0;
        d_weights3_16_load_reg_1046 <= d_weights3_16_q0;
        d_weights3_17_load_reg_1051 <= d_weights3_17_q0;
        d_weights3_18_load_reg_1056 <= d_weights3_18_q0;
        d_weights3_19_load_reg_1061 <= d_weights3_19_q0;
        d_weights3_1_load_reg_971 <= d_weights3_1_q0;
        d_weights3_20_load_reg_1066 <= d_weights3_20_q0;
        d_weights3_21_load_reg_1071 <= d_weights3_21_q0;
        d_weights3_22_load_reg_1076 <= d_weights3_22_q0;
        d_weights3_23_load_reg_1081 <= d_weights3_23_q0;
        d_weights3_2_load_reg_976 <= d_weights3_2_q0;
        d_weights3_3_load_reg_981 <= d_weights3_3_q0;
        d_weights3_4_load_reg_986 <= d_weights3_4_q0;
        d_weights3_5_load_reg_991 <= d_weights3_5_q0;
        d_weights3_6_load_reg_996 <= d_weights3_6_q0;
        d_weights3_7_load_reg_1001 <= d_weights3_7_q0;
        d_weights3_8_load_reg_1006 <= d_weights3_8_q0;
        d_weights3_9_load_reg_1011 <= d_weights3_9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_1119 <= grp_fu_601_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_1102 <= grp_fu_601_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub5_reg_1112 <= grp_fu_514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_7_reg_1086 <= tmp_7_fu_701_p51;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_load_reg_1097 <= weights3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_835 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln178_reg_835_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter5_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_norm_load_1 = grp_fu_514_p2;
    end else begin
        ap_sig_allocacmp_norm_load_1 = norm_fu_162;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_10_ce0_local = 1'b1;
    end else begin
        d_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_11_ce0_local = 1'b1;
    end else begin
        d_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_12_ce0_local = 1'b1;
    end else begin
        d_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_13_ce0_local = 1'b1;
    end else begin
        d_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_14_ce0_local = 1'b1;
    end else begin
        d_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_15_ce0_local = 1'b1;
    end else begin
        d_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_16_ce0_local = 1'b1;
    end else begin
        d_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_17_ce0_local = 1'b1;
    end else begin
        d_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_18_ce0_local = 1'b1;
    end else begin
        d_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_19_ce0_local = 1'b1;
    end else begin
        d_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_20_ce0_local = 1'b1;
    end else begin
        d_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_21_ce0_local = 1'b1;
    end else begin
        d_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_22_ce0_local = 1'b1;
    end else begin
        d_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_23_ce0_local = 1'b1;
    end else begin
        d_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_8_ce0_local = 1'b1;
    end else begin
        d_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights3_9_ce0_local = 1'b1;
    end else begin
        d_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_514_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_514_opcode = 2'd0;
    end else begin
        grp_fu_514_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_514_p0 = ap_sig_allocacmp_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_514_p0 = bitcast_ln180_fu_785_p1;
    end else begin
        grp_fu_514_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_514_p1 = mul1_reg_1119;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_514_p1 = mul_reg_1102;
    end else begin
        grp_fu_514_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_518_p0 = sub5_reg_1112;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_518_p0 = tmp_7_reg_1086;
    end else begin
        grp_fu_518_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_518_p1 = sub5_reg_1112;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_518_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_518_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (icmp_ln178_reg_835_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_1_fu_578_p2 = (i_fu_170 + 7'd1);
assign add_ln178_fu_552_p2 = (indvar_flatten27_fu_174 + 8'd1);
assign add_ln179_fu_624_p2 = (select_ln121_fu_570_p3 + 2'd1);
assign add_ln180_fu_618_p2 = (zext_ln179_1_fu_614_p1 + sub_ln179_fu_608_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_1_fu_789_p1 = sub5_reg_1112;
assign bitcast_ln180_fu_785_p1 = weights3_load_reg_1097;
assign d_weights3_0_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_10_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_10_ce0 = d_weights3_10_ce0_local;
assign d_weights3_11_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_11_ce0 = d_weights3_11_ce0_local;
assign d_weights3_12_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_12_ce0 = d_weights3_12_ce0_local;
assign d_weights3_13_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_13_ce0 = d_weights3_13_ce0_local;
assign d_weights3_14_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_14_ce0 = d_weights3_14_ce0_local;
assign d_weights3_15_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_15_ce0 = d_weights3_15_ce0_local;
assign d_weights3_16_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_16_ce0 = d_weights3_16_ce0_local;
assign d_weights3_17_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_17_ce0 = d_weights3_17_ce0_local;
assign d_weights3_18_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_18_ce0 = d_weights3_18_ce0_local;
assign d_weights3_19_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_19_ce0 = d_weights3_19_ce0_local;
assign d_weights3_1_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_20_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_20_ce0 = d_weights3_20_ce0_local;
assign d_weights3_21_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_21_ce0 = d_weights3_21_ce0_local;
assign d_weights3_22_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_22_ce0 = d_weights3_22_ce0_local;
assign d_weights3_23_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_23_ce0 = d_weights3_23_ce0_local;
assign d_weights3_2_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_3_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_4_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_5_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_6_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_7_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_8_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_8_ce0 = d_weights3_8_ce0_local;
assign d_weights3_9_address0 = zext_ln180_1_fu_669_p1;
assign d_weights3_9_ce0 = d_weights3_9_ce0_local;
assign grp_fu_601_p_ce = 1'b1;
assign grp_fu_601_p_din0 = grp_fu_518_p0;
assign grp_fu_601_p_din1 = grp_fu_518_p1;
assign grp_fu_645_p1 = 8'd24;
assign icmp_ln178_fu_546_p2 = ((indvar_flatten27_fu_174 == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln179_fu_564_p2 = ((j_fu_166 == 2'd3) ? 1'b1 : 1'b0);
assign mul_ln180_fu_653_p0 = mul_ln180_fu_653_p00;
assign mul_ln180_fu_653_p00 = add_ln180_reg_839_pp0_iter1_reg;
assign mul_ln180_fu_653_p1 = 17'd342;
assign norm_7_out = norm_fu_162;
assign p_shl_fu_600_p3 = {{trunc_ln179_fu_596_p1}, {2'd0}};
assign select_ln121_fu_570_p3 = ((icmp_ln179_fu_564_p2[0:0] == 1'b1) ? 2'd0 : j_fu_166);
assign select_ln178_fu_584_p3 = ((icmp_ln179_fu_564_p2[0:0] == 1'b1) ? add_ln178_1_fu_578_p2 : i_fu_170);
assign sub_ln179_fu_608_p2 = (p_shl_fu_600_p3 - zext_ln179_fu_592_p1);
assign tmp_7_fu_701_p49 = 'bx;
assign tmp_7_fu_701_p50 = grp_fu_645_p2[4:0];
assign tmp_fu_659_p4 = {{mul_ln180_fu_653_p2[16:13]}};
assign trunc_ln179_fu_596_p1 = select_ln178_fu_584_p3[5:0];
assign weights3_address0 = weights3_addr_reg_1091_pp0_iter3_reg;
assign weights3_address1 = zext_ln180_fu_781_p1;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = bitcast_ln180_1_fu_789_p1;
assign weights3_we0 = weights3_we0_local;
assign zext_ln179_1_fu_614_p1 = select_ln121_fu_570_p3;
assign zext_ln179_fu_592_p1 = select_ln178_fu_584_p3;
assign zext_ln180_1_fu_669_p1 = tmp_fu_659_p4;
assign zext_ln180_fu_781_p1 = add_ln180_reg_839_pp0_iter1_reg;
endmodule 