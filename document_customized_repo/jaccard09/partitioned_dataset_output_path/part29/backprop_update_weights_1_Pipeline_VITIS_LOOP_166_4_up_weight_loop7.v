
module backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,norm_10);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
input  [63:0] norm_10;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln166_reg_545;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_177;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_181;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_173_p2;
reg   [63:0] reg_186;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln166_fu_208_p2;
reg   [0:0] icmp_ln166_reg_545_pp0_iter1_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter2_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter3_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter4_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter5_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter6_reg;
reg   [0:0] icmp_ln166_reg_545_pp0_iter7_reg;
reg   [6:0] i_6_load_reg_549;
wire   [6:0] add_ln166_1_fu_223_p2;
reg   [6:0] add_ln166_1_reg_554;
wire   [6:0] select_ln121_fu_245_p3;
reg   [6:0] select_ln121_reg_559;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] empty_fu_259_p1;
reg   [5:0] empty_reg_564;
reg   [11:0] weights2_addr_reg_574;
reg   [11:0] weights2_addr_reg_574_pp0_iter1_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter2_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter3_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter4_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter5_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter6_reg;
reg   [11:0] weights2_addr_reg_574_pp0_iter7_reg;
reg   [11:0] weights2_addr_1_reg_579;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter1_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter2_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter3_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter4_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter5_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter6_reg;
reg   [11:0] weights2_addr_1_reg_579_pp0_iter7_reg;
reg   [3:0] tmp_16_reg_585;
wire   [0:0] trunc_ln168_fu_321_p1;
reg   [0:0] trunc_ln168_reg_591;
reg   [2:0] tmp_17_reg_597;
wire   [1:0] trunc_ln168_1_fu_335_p1;
reg   [1:0] trunc_ln168_1_reg_605;
reg   [0:0] tmp_5_reg_610;
reg   [11:0] weights2_addr_2_reg_615;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter1_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter2_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter3_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter4_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter5_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter6_reg;
reg   [11:0] weights2_addr_2_reg_615_pp0_iter7_reg;
reg   [11:0] weights2_addr_3_reg_620;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter1_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter2_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter3_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter4_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter5_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter6_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter7_reg;
reg   [11:0] weights2_addr_3_reg_620_pp0_iter8_reg;
wire   [63:0] bitcast_ln168_fu_379_p1;
reg   [63:0] weights2_load_3_reg_631;
reg   [11:0] weights2_addr_4_reg_636;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter1_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter2_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter3_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter4_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter5_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter6_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter7_reg;
reg   [11:0] weights2_addr_4_reg_636_pp0_iter8_reg;
reg   [11:0] weights2_addr_5_reg_642;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter1_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter2_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter3_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter4_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter5_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter6_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter7_reg;
reg   [11:0] weights2_addr_5_reg_642_pp0_iter8_reg;
wire   [63:0] bitcast_ln168_2_fu_414_p1;
reg   [63:0] weights2_load_5_reg_652;
reg   [11:0] weights2_addr_6_reg_657;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter1_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter2_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter3_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter4_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter5_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter6_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter7_reg;
reg   [11:0] weights2_addr_6_reg_657_pp0_iter8_reg;
reg   [11:0] weights2_addr_7_reg_663;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter1_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter2_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter3_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter4_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter5_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter6_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter7_reg;
reg   [11:0] weights2_addr_7_reg_663_pp0_iter8_reg;
wire   [63:0] bitcast_ln168_4_fu_446_p1;
reg   [63:0] weights2_load_7_reg_673;
wire   [63:0] bitcast_ln168_6_fu_451_p1;
wire   [63:0] bitcast_ln168_8_fu_455_p1;
wire   [63:0] bitcast_ln168_10_fu_460_p1;
wire   [63:0] bitcast_ln168_12_fu_474_p1;
wire   [63:0] bitcast_ln168_14_fu_479_p1;
reg   [63:0] div131_4_reg_703;
reg   [63:0] div131_5_reg_708;
reg   [63:0] div131_6_reg_713;
reg   [63:0] div131_7_reg_718;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln168_fu_281_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_1_fu_306_p1;
wire   [63:0] zext_ln168_2_fu_361_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_3_fu_374_p1;
wire   [63:0] zext_ln168_4_fu_393_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln168_5_fu_409_p1;
wire   [63:0] zext_ln168_6_fu_428_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln168_7_fu_441_p1;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln167_fu_464_p2;
wire    ap_loop_init;
reg   [6:0] i_6_fu_86;
wire   [6:0] select_ln166_fu_253_p3;
reg   [6:0] ap_sig_allocacmp_i_6_load;
wire    ap_block_pp0_stage0;
reg   [9:0] indvar_flatten20_fu_90;
wire   [9:0] add_ln166_fu_214_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we1_local;
reg   [63:0] weights2_d1_local;
wire   [63:0] bitcast_ln168_1_fu_483_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln168_3_fu_488_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln168_5_fu_493_p1;
wire   [63:0] bitcast_ln168_7_fu_498_p1;
wire    ap_block_pp0_stage5;
reg    weights2_we0_local;
reg   [63:0] weights2_d0_local;
wire   [63:0] bitcast_ln168_9_fu_503_p1;
wire   [63:0] bitcast_ln168_11_fu_507_p1;
wire   [63:0] bitcast_ln168_13_fu_511_p1;
wire   [63:0] bitcast_ln168_15_fu_515_p1;
reg   [63:0] grp_fu_173_p0;
wire   [0:0] tmp_fu_237_p3;
wire   [11:0] zext_ln167_fu_271_p1;
wire   [11:0] tmp_s_fu_263_p3;
wire   [11:0] add_ln168_fu_275_p2;
wire   [4:0] tmp_15_fu_286_p4;
wire   [11:0] add_ln168_1_fu_296_p4;
wire   [11:0] add_ln168_2_fu_352_p5;
wire   [11:0] add_ln168_3_fu_366_p4;
wire   [11:0] add_ln168_4_fu_384_p5;
wire   [11:0] add_ln168_5_fu_398_p6;
wire   [11:0] add_ln168_6_fu_419_p5;
wire   [11:0] add_ln168_7_fu_433_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage0;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_82 = 7'd0;
#0 i_6_fu_86 = 7'd0;
#0 indvar_flatten20_fu_90 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U379(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_173_p0),.din1(norm_10),.ce(1'b1),.dout(grp_fu_173_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_fu_86 <= 7'd0;
    end else if (((icmp_ln166_reg_545 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_6_fu_86 <= select_ln166_fu_253_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_208_p2 == 1'd0))) begin
            indvar_flatten20_fu_90 <= add_ln166_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_90 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln167_fu_464_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_181 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_181 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln166_1_reg_554 <= add_ln166_1_fu_223_p2;
        i_6_load_reg_549 <= ap_sig_allocacmp_i_6_load;
        icmp_ln166_reg_545 <= icmp_ln166_fu_208_p2;
        icmp_ln166_reg_545_pp0_iter1_reg <= icmp_ln166_reg_545;
        icmp_ln166_reg_545_pp0_iter2_reg <= icmp_ln166_reg_545_pp0_iter1_reg;
        icmp_ln166_reg_545_pp0_iter3_reg <= icmp_ln166_reg_545_pp0_iter2_reg;
        icmp_ln166_reg_545_pp0_iter4_reg <= icmp_ln166_reg_545_pp0_iter3_reg;
        icmp_ln166_reg_545_pp0_iter5_reg <= icmp_ln166_reg_545_pp0_iter4_reg;
        icmp_ln166_reg_545_pp0_iter6_reg <= icmp_ln166_reg_545_pp0_iter5_reg;
        icmp_ln166_reg_545_pp0_iter7_reg <= icmp_ln166_reg_545_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div131_4_reg_703 <= grp_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div131_5_reg_708 <= grp_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div131_6_reg_713 <= grp_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div131_7_reg_718 <= grp_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_564 <= empty_fu_259_p1;
        select_ln121_reg_559 <= select_ln121_fu_245_p3;
        tmp_16_reg_585 <= {{select_ln121_fu_245_p3[5:2]}};
        tmp_17_reg_597 <= {{select_ln121_fu_245_p3[5:3]}};
        tmp_5_reg_610 <= select_ln121_fu_245_p3[32'd1];
        trunc_ln168_1_reg_605 <= trunc_ln168_1_fu_335_p1;
        trunc_ln168_reg_591 <= trunc_ln168_fu_321_p1;
        weights2_addr_1_reg_579[11 : 1] <= zext_ln168_1_fu_306_p1[11 : 1];
        weights2_addr_1_reg_579_pp0_iter1_reg[11 : 1] <= weights2_addr_1_reg_579[11 : 1];
        weights2_addr_1_reg_579_pp0_iter2_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter1_reg[11 : 1];
        weights2_addr_1_reg_579_pp0_iter3_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter2_reg[11 : 1];
        weights2_addr_1_reg_579_pp0_iter4_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter3_reg[11 : 1];
        weights2_addr_1_reg_579_pp0_iter5_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter4_reg[11 : 1];
        weights2_addr_1_reg_579_pp0_iter6_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter5_reg[11 : 1];
        weights2_addr_1_reg_579_pp0_iter7_reg[11 : 1] <= weights2_addr_1_reg_579_pp0_iter6_reg[11 : 1];
        weights2_addr_reg_574 <= zext_ln168_fu_281_p1;
        weights2_addr_reg_574_pp0_iter1_reg <= weights2_addr_reg_574;
        weights2_addr_reg_574_pp0_iter2_reg <= weights2_addr_reg_574_pp0_iter1_reg;
        weights2_addr_reg_574_pp0_iter3_reg <= weights2_addr_reg_574_pp0_iter2_reg;
        weights2_addr_reg_574_pp0_iter4_reg <= weights2_addr_reg_574_pp0_iter3_reg;
        weights2_addr_reg_574_pp0_iter5_reg <= weights2_addr_reg_574_pp0_iter4_reg;
        weights2_addr_reg_574_pp0_iter6_reg <= weights2_addr_reg_574_pp0_iter5_reg;
        weights2_addr_reg_574_pp0_iter7_reg <= weights2_addr_reg_574_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_177 <= weights2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_186 <= grp_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_addr_2_reg_615[0] <= zext_ln168_2_fu_361_p1[0];
weights2_addr_2_reg_615[11 : 2] <= zext_ln168_2_fu_361_p1[11 : 2];
        weights2_addr_2_reg_615_pp0_iter1_reg[0] <= weights2_addr_2_reg_615[0];
weights2_addr_2_reg_615_pp0_iter1_reg[11 : 2] <= weights2_addr_2_reg_615[11 : 2];
        weights2_addr_2_reg_615_pp0_iter2_reg[0] <= weights2_addr_2_reg_615_pp0_iter1_reg[0];
weights2_addr_2_reg_615_pp0_iter2_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter1_reg[11 : 2];
        weights2_addr_2_reg_615_pp0_iter3_reg[0] <= weights2_addr_2_reg_615_pp0_iter2_reg[0];
weights2_addr_2_reg_615_pp0_iter3_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter2_reg[11 : 2];
        weights2_addr_2_reg_615_pp0_iter4_reg[0] <= weights2_addr_2_reg_615_pp0_iter3_reg[0];
weights2_addr_2_reg_615_pp0_iter4_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter3_reg[11 : 2];
        weights2_addr_2_reg_615_pp0_iter5_reg[0] <= weights2_addr_2_reg_615_pp0_iter4_reg[0];
weights2_addr_2_reg_615_pp0_iter5_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter4_reg[11 : 2];
        weights2_addr_2_reg_615_pp0_iter6_reg[0] <= weights2_addr_2_reg_615_pp0_iter5_reg[0];
weights2_addr_2_reg_615_pp0_iter6_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter5_reg[11 : 2];
        weights2_addr_2_reg_615_pp0_iter7_reg[0] <= weights2_addr_2_reg_615_pp0_iter6_reg[0];
weights2_addr_2_reg_615_pp0_iter7_reg[11 : 2] <= weights2_addr_2_reg_615_pp0_iter6_reg[11 : 2];
        weights2_addr_3_reg_620[11 : 2] <= zext_ln168_3_fu_374_p1[11 : 2];
        weights2_addr_3_reg_620_pp0_iter1_reg[11 : 2] <= weights2_addr_3_reg_620[11 : 2];
        weights2_addr_3_reg_620_pp0_iter2_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter1_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter3_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter2_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter4_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter3_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter5_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter4_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter6_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter5_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter7_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter6_reg[11 : 2];
        weights2_addr_3_reg_620_pp0_iter8_reg[11 : 2] <= weights2_addr_3_reg_620_pp0_iter7_reg[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_addr_4_reg_636[1 : 0] <= zext_ln168_4_fu_393_p1[1 : 0];
weights2_addr_4_reg_636[11 : 3] <= zext_ln168_4_fu_393_p1[11 : 3];
        weights2_addr_4_reg_636_pp0_iter1_reg[1 : 0] <= weights2_addr_4_reg_636[1 : 0];
weights2_addr_4_reg_636_pp0_iter1_reg[11 : 3] <= weights2_addr_4_reg_636[11 : 3];
        weights2_addr_4_reg_636_pp0_iter2_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter1_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter2_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter1_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter3_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter2_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter3_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter2_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter4_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter3_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter4_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter3_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter5_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter4_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter5_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter4_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter6_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter5_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter6_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter5_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter7_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter6_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter7_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter6_reg[11 : 3];
        weights2_addr_4_reg_636_pp0_iter8_reg[1 : 0] <= weights2_addr_4_reg_636_pp0_iter7_reg[1 : 0];
weights2_addr_4_reg_636_pp0_iter8_reg[11 : 3] <= weights2_addr_4_reg_636_pp0_iter7_reg[11 : 3];
        weights2_addr_5_reg_642[1] <= zext_ln168_5_fu_409_p1[1];
weights2_addr_5_reg_642[11 : 3] <= zext_ln168_5_fu_409_p1[11 : 3];
        weights2_addr_5_reg_642_pp0_iter1_reg[1] <= weights2_addr_5_reg_642[1];
weights2_addr_5_reg_642_pp0_iter1_reg[11 : 3] <= weights2_addr_5_reg_642[11 : 3];
        weights2_addr_5_reg_642_pp0_iter2_reg[1] <= weights2_addr_5_reg_642_pp0_iter1_reg[1];
weights2_addr_5_reg_642_pp0_iter2_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter1_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter3_reg[1] <= weights2_addr_5_reg_642_pp0_iter2_reg[1];
weights2_addr_5_reg_642_pp0_iter3_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter2_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter4_reg[1] <= weights2_addr_5_reg_642_pp0_iter3_reg[1];
weights2_addr_5_reg_642_pp0_iter4_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter3_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter5_reg[1] <= weights2_addr_5_reg_642_pp0_iter4_reg[1];
weights2_addr_5_reg_642_pp0_iter5_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter4_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter6_reg[1] <= weights2_addr_5_reg_642_pp0_iter5_reg[1];
weights2_addr_5_reg_642_pp0_iter6_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter5_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter7_reg[1] <= weights2_addr_5_reg_642_pp0_iter6_reg[1];
weights2_addr_5_reg_642_pp0_iter7_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter6_reg[11 : 3];
        weights2_addr_5_reg_642_pp0_iter8_reg[1] <= weights2_addr_5_reg_642_pp0_iter7_reg[1];
weights2_addr_5_reg_642_pp0_iter8_reg[11 : 3] <= weights2_addr_5_reg_642_pp0_iter7_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_addr_6_reg_657[0] <= zext_ln168_6_fu_428_p1[0];
weights2_addr_6_reg_657[11 : 3] <= zext_ln168_6_fu_428_p1[11 : 3];
        weights2_addr_6_reg_657_pp0_iter1_reg[0] <= weights2_addr_6_reg_657[0];
weights2_addr_6_reg_657_pp0_iter1_reg[11 : 3] <= weights2_addr_6_reg_657[11 : 3];
        weights2_addr_6_reg_657_pp0_iter2_reg[0] <= weights2_addr_6_reg_657_pp0_iter1_reg[0];
weights2_addr_6_reg_657_pp0_iter2_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter1_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter3_reg[0] <= weights2_addr_6_reg_657_pp0_iter2_reg[0];
weights2_addr_6_reg_657_pp0_iter3_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter2_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter4_reg[0] <= weights2_addr_6_reg_657_pp0_iter3_reg[0];
weights2_addr_6_reg_657_pp0_iter4_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter3_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter5_reg[0] <= weights2_addr_6_reg_657_pp0_iter4_reg[0];
weights2_addr_6_reg_657_pp0_iter5_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter4_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter6_reg[0] <= weights2_addr_6_reg_657_pp0_iter5_reg[0];
weights2_addr_6_reg_657_pp0_iter6_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter5_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter7_reg[0] <= weights2_addr_6_reg_657_pp0_iter6_reg[0];
weights2_addr_6_reg_657_pp0_iter7_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter6_reg[11 : 3];
        weights2_addr_6_reg_657_pp0_iter8_reg[0] <= weights2_addr_6_reg_657_pp0_iter7_reg[0];
weights2_addr_6_reg_657_pp0_iter8_reg[11 : 3] <= weights2_addr_6_reg_657_pp0_iter7_reg[11 : 3];
        weights2_addr_7_reg_663[11 : 3] <= zext_ln168_7_fu_441_p1[11 : 3];
        weights2_addr_7_reg_663_pp0_iter1_reg[11 : 3] <= weights2_addr_7_reg_663[11 : 3];
        weights2_addr_7_reg_663_pp0_iter2_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter1_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter3_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter2_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter4_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter3_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter5_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter4_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter6_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter5_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter7_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter6_reg[11 : 3];
        weights2_addr_7_reg_663_pp0_iter8_reg[11 : 3] <= weights2_addr_7_reg_663_pp0_iter7_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_load_3_reg_631 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_load_5_reg_652 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_load_7_reg_673 <= weights2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_545 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln166_reg_545_pp0_iter7_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_6_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6_load = i_6_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_173_p0 = bitcast_ln168_14_fu_479_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_173_p0 = bitcast_ln168_12_fu_474_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_173_p0 = bitcast_ln168_10_fu_460_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_173_p0 = bitcast_ln168_8_fu_455_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_173_p0 = bitcast_ln168_6_fu_451_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_173_p0 = bitcast_ln168_4_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_173_p0 = bitcast_ln168_2_fu_414_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_173_p0 = bitcast_ln168_fu_379_p1;
    end else begin
        grp_fu_173_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address0_local = weights2_addr_7_reg_663_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address0_local = weights2_addr_6_reg_657_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address0_local = weights2_addr_5_reg_642_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address0_local = weights2_addr_4_reg_636_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address0_local = zext_ln168_7_fu_441_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address0_local = zext_ln168_5_fu_409_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address0_local = zext_ln168_3_fu_374_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address0_local = zext_ln168_1_fu_306_p1;
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address1_local = weights2_addr_3_reg_620_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address1_local = weights2_addr_2_reg_615_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address1_local = weights2_addr_1_reg_579_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address1_local = weights2_addr_reg_574_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address1_local = zext_ln168_6_fu_428_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address1_local = zext_ln168_4_fu_393_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address1_local = zext_ln168_2_fu_361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address1_local = zext_ln168_fu_281_p1;
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d0_local = bitcast_ln168_15_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_d0_local = bitcast_ln168_13_fu_511_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_d0_local = bitcast_ln168_11_fu_507_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_d0_local = bitcast_ln168_9_fu_503_p1;
    end else begin
        weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_d1_local = bitcast_ln168_7_fu_498_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d1_local = bitcast_ln168_5_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_d1_local = bitcast_ln168_3_fu_488_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_d1_local = bitcast_ln168_1_fu_483_p1;
    end else begin
        weights2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to7 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter8_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln166_1_fu_223_p2 = (ap_sig_allocacmp_i_6_load + 7'd1);
assign add_ln166_fu_214_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 10'd1);
assign add_ln167_fu_464_p2 = (select_ln121_reg_559 + 7'd8);
assign add_ln168_1_fu_296_p4 = {{{empty_fu_259_p1}, {tmp_15_fu_286_p4}}, {1'd1}};
assign add_ln168_2_fu_352_p5 = {{{{empty_reg_564}, {tmp_16_reg_585}}, {1'd1}}, {trunc_ln168_reg_591}};
assign add_ln168_3_fu_366_p4 = {{{empty_reg_564}, {tmp_16_reg_585}}, {2'd3}};
assign add_ln168_4_fu_384_p5 = {{{{empty_reg_564}, {tmp_17_reg_597}}, {1'd1}}, {trunc_ln168_1_reg_605}};
assign add_ln168_5_fu_398_p6 = {{{{{empty_reg_564}, {tmp_17_reg_597}}, {1'd1}}, {tmp_5_reg_610}}, {1'd1}};
assign add_ln168_6_fu_419_p5 = {{{{empty_reg_564}, {tmp_17_reg_597}}, {2'd3}}, {trunc_ln168_reg_591}};
assign add_ln168_7_fu_433_p4 = {{{empty_reg_564}, {tmp_17_reg_597}}, {3'd7}};
assign add_ln168_fu_275_p2 = (zext_ln167_fu_271_p1 + tmp_s_fu_263_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_10_fu_460_p1 = weights2_load_5_reg_652;
assign bitcast_ln168_11_fu_507_p1 = div131_5_reg_708;
assign bitcast_ln168_12_fu_474_p1 = reg_177;
assign bitcast_ln168_13_fu_511_p1 = div131_6_reg_713;
assign bitcast_ln168_14_fu_479_p1 = weights2_load_7_reg_673;
assign bitcast_ln168_15_fu_515_p1 = div131_7_reg_718;
assign bitcast_ln168_1_fu_483_p1 = reg_186;
assign bitcast_ln168_2_fu_414_p1 = reg_181;
assign bitcast_ln168_3_fu_488_p1 = reg_186;
assign bitcast_ln168_4_fu_446_p1 = reg_177;
assign bitcast_ln168_5_fu_493_p1 = reg_186;
assign bitcast_ln168_6_fu_451_p1 = weights2_load_3_reg_631;
assign bitcast_ln168_7_fu_498_p1 = reg_186;
assign bitcast_ln168_8_fu_455_p1 = reg_181;
assign bitcast_ln168_9_fu_503_p1 = div131_4_reg_703;
assign bitcast_ln168_fu_379_p1 = reg_177;
assign empty_fu_259_p1 = select_ln166_fu_253_p3[5:0];
assign icmp_ln166_fu_208_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 10'd512) ? 1'b1 : 1'b0);
assign select_ln121_fu_245_p3 = ((tmp_fu_237_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign select_ln166_fu_253_p3 = ((tmp_fu_237_p3[0:0] == 1'b1) ? add_ln166_1_reg_554 : i_6_load_reg_549);
assign tmp_15_fu_286_p4 = {{select_ln121_fu_245_p3[5:1]}};
assign tmp_fu_237_p3 = j_fu_82[32'd6];
assign tmp_s_fu_263_p3 = {{empty_fu_259_p1}, {6'd0}};
assign trunc_ln168_1_fu_335_p1 = select_ln121_fu_245_p3[1:0];
assign trunc_ln168_fu_321_p1 = select_ln121_fu_245_p3[0:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = weights2_d0_local;
assign weights2_d1 = weights2_d1_local;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln167_fu_271_p1 = select_ln121_fu_245_p3;
assign zext_ln168_1_fu_306_p1 = add_ln168_1_fu_296_p4;
assign zext_ln168_2_fu_361_p1 = add_ln168_2_fu_352_p5;
assign zext_ln168_3_fu_374_p1 = add_ln168_3_fu_366_p4;
assign zext_ln168_4_fu_393_p1 = add_ln168_4_fu_384_p5;
assign zext_ln168_5_fu_409_p1 = add_ln168_5_fu_398_p6;
assign zext_ln168_6_fu_428_p1 = add_ln168_6_fu_419_p5;
assign zext_ln168_7_fu_441_p1 = add_ln168_7_fu_433_p4;
assign zext_ln168_fu_281_p1 = add_ln168_fu_275_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_579[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter5_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter6_reg[0] <= 1'b1;
    weights2_addr_1_reg_579_pp0_iter7_reg[0] <= 1'b1;
    weights2_addr_2_reg_615[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter3_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter4_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter5_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter6_reg[1] <= 1'b1;
    weights2_addr_2_reg_615_pp0_iter7_reg[1] <= 1'b1;
    weights2_addr_3_reg_620[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter3_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter4_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter5_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter6_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter7_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_620_pp0_iter8_reg[1:0] <= 2'b11;
    weights2_addr_4_reg_636[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter3_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter4_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter5_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter6_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter7_reg[2] <= 1'b1;
    weights2_addr_4_reg_636_pp0_iter8_reg[2] <= 1'b1;
    weights2_addr_5_reg_642[0] <= 1'b1;
    weights2_addr_5_reg_642[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter3_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter4_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter5_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter5_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter6_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter6_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter7_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter7_reg[2] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter8_reg[0] <= 1'b1;
    weights2_addr_5_reg_642_pp0_iter8_reg[2] <= 1'b1;
    weights2_addr_6_reg_657[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter1_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter2_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter3_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter4_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter5_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter6_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter7_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_657_pp0_iter8_reg[2:1] <= 2'b11;
    weights2_addr_7_reg_663[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter1_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter2_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter3_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter4_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter5_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter6_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter7_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_663_pp0_iter8_reg[2:0] <= 3'b111;
end
endmodule 
