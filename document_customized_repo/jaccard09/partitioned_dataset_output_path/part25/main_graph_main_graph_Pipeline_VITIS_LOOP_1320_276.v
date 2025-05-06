
module main_graph_main_graph_Pipeline_VITIS_LOOP_1320_276 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln1321,v36_address1,v36_ce1,v36_we1,v36_d1,v688,v689,v37_address0,v37_ce0,v37_q0,or_ln1324,v694_7,v694_8,v694_2,v694_1,v694_5,v694_3,v694_4,v694_6,v694);  
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] zext_ln1321;
output  [11:0] v36_address1;
output   v36_ce1;
output   v36_we1;
output  [7:0] v36_d1;
input  [9:0] v688;
input  [0:0] v689;
output  [13:0] v37_address0;
output   v37_ce0;
input  [6:0] v37_q0;
input  [11:0] or_ln1324;
input  [7:0] v694_7;
input  [7:0] v694_8;
input  [7:0] v694_2;
input  [7:0] v694_1;
input  [7:0] v694_5;
input  [7:0] v694_3;
input  [7:0] v694_4;
input  [7:0] v694_6;
input  [7:0] v694;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln1320_reg_621;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_260;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v690_1_reg_612;
reg   [1:0] v690_1_reg_612_pp0_iter1_reg;
wire   [0:0] icmp_ln1320_fu_272_p2;
wire   [0:0] trunc_ln1324_fu_278_p1;
reg   [0:0] trunc_ln1324_reg_625;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] v693_reg_646;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] v693_3_reg_656;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [6:0] v693_5_reg_666;
wire   [1:0] add_ln1324_fu_353_p2;
reg   [1:0] add_ln1324_reg_671;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] mul_ln1331_fu_403_p2;
reg   [7:0] mul_ln1331_reg_697;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] mul_ln1331_3_fu_431_p2;
reg   [7:0] mul_ln1331_3_reg_712;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln1331_2_fu_454_p2;
reg   [7:0] mul_ln1331_2_reg_727;
wire   [7:0] grp_fu_499_p3;
reg   [7:0] add_ln1331_4_reg_732;
wire   [7:0] mul_ln1331_6_fu_467_p2;
reg   [7:0] mul_ln1331_6_reg_742;
wire   [7:0] grp_fu_505_p3;
reg  signed [7:0] add_ln1331_reg_747;
wire   [7:0] grp_fu_511_p3;
reg  signed [7:0] add_ln1331_1_reg_752;
wire   [7:0] grp_fu_517_p3;
reg  signed [7:0] add_ln1331_3_reg_757;
wire   [7:0] v701_fu_480_p2;
reg   [7:0] v701_reg_762;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln1324_14_fu_296_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1324_1_fu_310_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln1324_15_fu_321_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln1324_17_fu_334_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln1324_3_fu_348_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln1324_12_fu_368_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln1324_11_fu_394_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln1324_13_fu_423_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln1324_16_fu_442_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln1321_2_fu_494_p1;
reg   [1:0] v690_fu_84;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v690_1;
reg    v37_ce0_local;
reg   [13:0] v37_address0_local;
reg    v36_we1_local;
reg    v36_ce1_local;
wire   [13:0] tmp_91_fu_282_p6;
wire   [13:0] tmp_s_fu_301_p5;
wire   [13:0] tmp_84_fu_315_p3;
wire   [13:0] tmp_90_fu_326_p4;
wire   [13:0] tmp_85_fu_339_p5;
wire   [13:0] tmp_88_fu_358_p5;
wire   [13:0] tmp_86_fu_385_p5;
wire   [6:0] mul_ln1331_fu_403_p0;
wire   [13:0] tmp_89_fu_412_p6;
wire   [6:0] mul_ln1331_3_fu_431_p0;
wire   [13:0] tmp_87_fu_436_p3;
wire   [6:0] mul_ln1331_2_fu_454_p0;
wire   [6:0] mul_ln1331_6_fu_467_p0;
wire  signed [7:0] add_ln1331_6_fu_476_p0;
wire   [7:0] grp_fu_523_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1331_6_fu_476_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1331_2_fu_472_p2;
wire   [11:0] zext_ln1321_1_fu_486_p1;
wire   [11:0] add_ln1321_fu_489_p2;
wire   [6:0] grp_fu_499_p1;
wire   [6:0] grp_fu_505_p1;
wire   [6:0] grp_fu_511_p1;
wire   [6:0] grp_fu_517_p1;
wire   [6:0] grp_fu_523_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_499_p10;
wire   [7:0] grp_fu_505_p10;
wire   [7:0] grp_fu_511_p10;
wire   [7:0] grp_fu_517_p10;
wire   [7:0] grp_fu_523_p10;
wire   [7:0] mul_ln1331_2_fu_454_p00;
wire   [7:0] mul_ln1331_3_fu_431_p00;
wire   [7:0] mul_ln1331_6_fu_467_p00;
wire   [7:0] mul_ln1331_fu_403_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v690_fu_84 = 2'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U532(.din0(mul_ln1331_fu_403_p0),.din1(v694_7),.dout(mul_ln1331_fu_403_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U533(.din0(mul_ln1331_3_fu_431_p0),.din1(v694_1),.dout(mul_ln1331_3_fu_431_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U534(.din0(mul_ln1331_2_fu_454_p0),.din1(v694_2),.dout(mul_ln1331_2_fu_454_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U535(.din0(mul_ln1331_6_fu_467_p0),.din1(v694_4),.dout(mul_ln1331_6_fu_467_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U536(.clk(ap_clk),.reset(ap_rst),.din0(v694_8),.din1(grp_fu_499_p1),.din2(mul_ln1331_reg_697),.ce(1'b1),.dout(grp_fu_499_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U537(.clk(ap_clk),.reset(ap_rst),.din0(v694),.din1(grp_fu_505_p1),.din2(mul_ln1331_3_reg_712),.ce(1'b1),.dout(grp_fu_505_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(v694_3),.din1(grp_fu_511_p1),.din2(mul_ln1331_2_reg_727),.ce(1'b1),.dout(grp_fu_511_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U539(.clk(ap_clk),.reset(ap_rst),.din0(v694_5),.din1(grp_fu_517_p1),.din2(mul_ln1331_6_reg_742),.ce(1'b1),.dout(grp_fu_517_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U540(.clk(ap_clk),.reset(ap_rst),.din0(v694_6),.din1(grp_fu_523_p1),.din2(add_ln1331_4_reg_732),.ce(1'b1),.dout(grp_fu_523_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v690_fu_84 <= 2'd0;
    end else if (((icmp_ln1320_reg_621 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v690_fu_84 <= add_ln1324_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln1324_reg_671 <= add_ln1324_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln1331_1_reg_752 <= grp_fu_511_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln1331_3_reg_757 <= grp_fu_517_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln1331_4_reg_732 <= grp_fu_499_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1331_reg_747 <= grp_fu_505_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1320_reg_621 <= icmp_ln1320_fu_272_p2;
        mul_ln1331_6_reg_742 <= mul_ln1331_6_fu_467_p2;
        trunc_ln1324_reg_625 <= trunc_ln1324_fu_278_p1;
        v690_1_reg_612 <= ap_sig_allocacmp_v690_1;
        v690_1_reg_612_pp0_iter1_reg <= v690_1_reg_612;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln1331_2_reg_727 <= mul_ln1331_2_fu_454_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln1331_3_reg_712 <= mul_ln1331_3_fu_431_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln1331_reg_697 <= mul_ln1331_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_260 <= v37_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v693_3_reg_656 <= v37_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v693_5_reg_666 <= v37_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v693_reg_646 <= v37_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v701_reg_762 <= v701_fu_480_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1320_reg_621 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v690_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v690_1 = v690_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v36_ce1_local = 1'b1;
    end else begin
        v36_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v36_we1_local = 1'b1;
    end else begin
        v36_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v37_address0_local = zext_ln1324_16_fu_442_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v37_address0_local = zext_ln1324_13_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v37_address0_local = zext_ln1324_11_fu_394_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v37_address0_local = zext_ln1324_12_fu_368_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v37_address0_local = zext_ln1324_3_fu_348_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v37_address0_local = zext_ln1324_17_fu_334_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v37_address0_local = zext_ln1324_15_fu_321_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v37_address0_local = zext_ln1324_1_fu_310_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v37_address0_local = zext_ln1324_14_fu_296_p1;
        end else begin
            v37_address0_local = 'bx;
        end
    end else begin
        v37_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v37_ce0_local = 1'b1;
    end else begin
        v37_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1321_fu_489_p2 = (zext_ln1321 + zext_ln1321_1_fu_486_p1);
assign add_ln1324_fu_353_p2 = (v690_1_reg_612 + 2'd1);
assign add_ln1331_2_fu_472_p2 = ($signed(add_ln1331_1_reg_752) + $signed(add_ln1331_reg_747));
assign add_ln1331_6_fu_476_p0 = grp_fu_523_p3;
assign add_ln1331_6_fu_476_p2 = ($signed(add_ln1331_6_fu_476_p0) + $signed(add_ln1331_3_reg_757));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_499_p1 = grp_fu_499_p10;
assign grp_fu_499_p10 = reg_260;
assign grp_fu_505_p1 = grp_fu_505_p10;
assign grp_fu_505_p10 = v693_reg_646;
assign grp_fu_511_p1 = grp_fu_511_p10;
assign grp_fu_511_p10 = v693_3_reg_656;
assign grp_fu_517_p1 = grp_fu_517_p10;
assign grp_fu_517_p10 = v693_5_reg_666;
assign grp_fu_523_p1 = grp_fu_523_p10;
assign grp_fu_523_p10 = reg_260;
assign icmp_ln1320_fu_272_p2 = ((ap_sig_allocacmp_v690_1 == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln1331_2_fu_454_p0 = mul_ln1331_2_fu_454_p00;
assign mul_ln1331_2_fu_454_p00 = v37_q0;
assign mul_ln1331_3_fu_431_p0 = mul_ln1331_3_fu_431_p00;
assign mul_ln1331_3_fu_431_p00 = v37_q0;
assign mul_ln1331_6_fu_467_p0 = mul_ln1331_6_fu_467_p00;
assign mul_ln1331_6_fu_467_p00 = v37_q0;
assign mul_ln1331_fu_403_p0 = mul_ln1331_fu_403_p00;
assign mul_ln1331_fu_403_p00 = v37_q0;
assign tmp_84_fu_315_p3 = {{or_ln1324}, {v690_1_reg_612}};
assign tmp_85_fu_339_p5 = {{{{v688}, {1'd1}}, {v689}}, {v690_1_reg_612}};
assign tmp_86_fu_385_p5 = {{{{v688}, {1'd0}}, {v689}}, {add_ln1324_reg_671}};
assign tmp_87_fu_436_p3 = {{or_ln1324}, {add_ln1324_reg_671}};
assign tmp_88_fu_358_p5 = {{{{v688}, {1'd1}}, {v689}}, {add_ln1324_fu_353_p2}};
assign tmp_89_fu_412_p6 = {{{{{v688}, {1'd0}}, {v689}}, {1'd1}}, {trunc_ln1324_reg_625}};
assign tmp_90_fu_326_p4 = {{{or_ln1324}, {1'd1}}, {trunc_ln1324_reg_625}};
assign tmp_91_fu_282_p6 = {{{{{v688}, {1'd1}}, {v689}}, {1'd1}}, {trunc_ln1324_fu_278_p1}};
assign tmp_s_fu_301_p5 = {{{{v688}, {1'd0}}, {v689}}, {v690_1_reg_612}};
assign trunc_ln1324_fu_278_p1 = ap_sig_allocacmp_v690_1[0:0];
assign v36_address1 = zext_ln1321_2_fu_494_p1;
assign v36_ce1 = v36_ce1_local;
assign v36_d1 = v701_reg_762;
assign v36_we1 = v36_we1_local;
assign v37_address0 = v37_address0_local;
assign v37_ce0 = v37_ce0_local;
assign v701_fu_480_p2 = (add_ln1331_6_fu_476_p2 + add_ln1331_2_fu_472_p2);
assign zext_ln1321_1_fu_486_p1 = v690_1_reg_612_pp0_iter1_reg;
assign zext_ln1321_2_fu_494_p1 = add_ln1321_fu_489_p2;
assign zext_ln1324_11_fu_394_p1 = tmp_86_fu_385_p5;
assign zext_ln1324_12_fu_368_p1 = tmp_88_fu_358_p5;
assign zext_ln1324_13_fu_423_p1 = tmp_89_fu_412_p6;
assign zext_ln1324_14_fu_296_p1 = tmp_91_fu_282_p6;
assign zext_ln1324_15_fu_321_p1 = tmp_84_fu_315_p3;
assign zext_ln1324_16_fu_442_p1 = tmp_87_fu_436_p3;
assign zext_ln1324_17_fu_334_p1 = tmp_90_fu_326_p4;
assign zext_ln1324_1_fu_310_p1 = tmp_s_fu_301_p5;
assign zext_ln1324_3_fu_348_p1 = tmp_85_fu_339_p5;
endmodule 
