module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_6451_p_din0,grp_fu_6451_p_din1,grp_fu_6451_p_opcode,grp_fu_6451_p_dout0,grp_fu_6451_p_ce,grp_fu_6463_p_din0,grp_fu_6463_p_din1,grp_fu_6463_p_dout0,grp_fu_6463_p_ce); 
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
input  [63:0] v18_2_load_1;
input  [63:0] v18_load_1;
input  [63:0] v18_1_load_1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [4:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_6451_p_din0;
output  [63:0] grp_fu_6451_p_din1;
output  [0:0] grp_fu_6451_p_opcode;
input  [63:0] grp_fu_6451_p_dout0;
output   grp_fu_6451_p_ce;
output  [63:0] grp_fu_6463_p_din0;
output  [63:0] grp_fu_6463_p_din1;
input  [63:0] grp_fu_6463_p_dout0;
output   grp_fu_6463_p_ce;
reg ap_idle;
reg[63:0] v18_11_out_o;
reg v18_11_out_o_ap_vld;
reg[63:0] v18_10_out_o;
reg v18_10_out_o_ap_vld;
reg[63:0] v18_9_out_o;
reg v18_9_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln122_reg_565;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_240_p2;
reg   [0:0] icmp_ln122_reg_565_pp0_iter1_reg;
reg   [0:0] icmp_ln122_reg_565_pp0_iter2_reg;
wire   [0:0] icmp_ln124_fu_258_p2;
reg   [0:0] icmp_ln124_reg_569;
reg   [0:0] icmp_ln124_reg_569_pp0_iter1_reg;
reg   [0:0] icmp_ln124_reg_569_pp0_iter2_reg;
wire   [6:0] select_ln122_fu_264_p3;
reg   [6:0] select_ln122_reg_577;
wire   [1:0] select_ln122_5_fu_278_p3;
reg   [1:0] select_ln122_5_reg_583;
reg   [1:0] select_ln122_5_reg_583_pp0_iter1_reg;
reg   [1:0] select_ln122_5_reg_583_pp0_iter2_reg;
reg   [1:0] select_ln122_5_reg_583_pp0_iter3_reg;
wire   [0:0] trunc_ln124_fu_286_p1;
reg   [0:0] trunc_ln124_reg_588;
reg   [0:0] trunc_ln124_reg_588_pp0_iter1_reg;
reg   [4:0] lshr_ln4_reg_593;
reg   [4:0] lshr_ln4_reg_593_pp0_iter1_reg;
wire   [7:0] add_ln125_fu_320_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln125_fu_338_p2;
reg   [0:0] icmp_ln125_reg_603;
reg   [0:0] icmp_ln125_reg_603_pp0_iter1_reg;
wire   [0:0] icmp_ln124_1_fu_349_p2;
reg   [0:0] icmp_ln124_1_reg_608;
reg   [0:0] icmp_ln124_1_reg_608_pp0_iter1_reg;
reg   [0:0] icmp_ln124_1_reg_608_pp0_iter2_reg;
reg   [0:0] icmp_ln124_1_reg_608_pp0_iter3_reg;
wire   [63:0] v64_fu_365_p3;
reg   [63:0] v64_reg_622;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] select_ln125_fu_378_p3;
reg   [63:0] select_ln125_reg_637;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] v63_fu_385_p1;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] v65_reg_647;
wire   [63:0] select_ln122_1_fu_413_p3;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln124_1_fu_360_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln125_fu_372_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] select_ln122_2_fu_421_p3;
wire    ap_block_pp0_stage5;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] select_ln122_3_fu_428_p3;
wire   [63:0] select_ln122_4_fu_435_p3;
reg   [63:0] v66_fu_78;
reg   [6:0] v62_fu_82;
wire   [6:0] add_ln124_fu_344_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_86;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_6_fu_90;
reg   [63:0] v18_fu_94;
reg   [63:0] v18_7_fu_98;
reg   [7:0] indvar_flatten12_fu_102;
wire   [7:0] add_ln122_fu_246_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
wire    ap_block_pp0_stage6;
wire   [1:0] add_ln122_1_fu_272_p2;
wire   [7:0] zext_ln124_fu_317_p1;
wire   [7:0] tmp_s_fu_310_p3;
wire   [7:0] add_ln125_1_fu_332_p2;
wire    ap_block_pp0_stage2;
wire   [7:0] grp_fu_326_p2;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter2_stage4;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_78 = 64'd0;
#0 v62_fu_82 = 7'd0;
#0 v61_fu_86 = 2'd0;
#0 v18_6_fu_90 = 64'd0;
#0 v18_fu_94 = 64'd0;
#0 v18_7_fu_98 = 64'd0;
#0 indvar_flatten12_fu_102 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(add_ln125_fu_320_p2),.din1(8'd96),.ce(1'b1),.dout(grp_fu_326_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_240_p2 == 1'd0))) begin
            indvar_flatten12_fu_102 <= add_ln122_fu_246_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_102 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_6_fu_90 <= v18_1_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_6_fu_90 <= select_ln122_4_fu_435_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_7_fu_98 <= v18_2_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_7_fu_98 <= select_ln122_2_fu_421_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_94 <= v18_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_fu_94 <= select_ln122_3_fu_428_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_240_p2 == 1'd0))) begin
            v61_fu_86 <= select_ln122_5_fu_278_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_86 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_82 <= 7'd0;
    end else if (((icmp_ln122_reg_565 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_fu_82 <= add_ln124_fu_344_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_78 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v66_fu_78 <= grp_fu_6451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_565 <= icmp_ln122_fu_240_p2;
        icmp_ln122_reg_565_pp0_iter1_reg <= icmp_ln122_reg_565;
        icmp_ln122_reg_565_pp0_iter2_reg <= icmp_ln122_reg_565_pp0_iter1_reg;
        icmp_ln124_reg_569 <= icmp_ln124_fu_258_p2;
        icmp_ln124_reg_569_pp0_iter1_reg <= icmp_ln124_reg_569;
        icmp_ln124_reg_569_pp0_iter2_reg <= icmp_ln124_reg_569_pp0_iter1_reg;
        lshr_ln4_reg_593 <= {{select_ln122_fu_264_p3[5:1]}};
        lshr_ln4_reg_593_pp0_iter1_reg <= lshr_ln4_reg_593;
        select_ln122_5_reg_583 <= select_ln122_5_fu_278_p3;
        select_ln122_5_reg_583_pp0_iter1_reg <= select_ln122_5_reg_583;
        select_ln122_5_reg_583_pp0_iter2_reg <= select_ln122_5_reg_583_pp0_iter1_reg;
        select_ln122_5_reg_583_pp0_iter3_reg <= select_ln122_5_reg_583_pp0_iter2_reg;
        select_ln122_reg_577 <= select_ln122_fu_264_p3;
        trunc_ln124_reg_588 <= trunc_ln124_fu_286_p1;
        trunc_ln124_reg_588_pp0_iter1_reg <= trunc_ln124_reg_588;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln124_1_reg_608 <= icmp_ln124_1_fu_349_p2;
        icmp_ln124_1_reg_608_pp0_iter1_reg <= icmp_ln124_1_reg_608;
        icmp_ln124_1_reg_608_pp0_iter2_reg <= icmp_ln124_1_reg_608_pp0_iter1_reg;
        icmp_ln124_1_reg_608_pp0_iter3_reg <= icmp_ln124_1_reg_608_pp0_iter2_reg;
        icmp_ln125_reg_603 <= icmp_ln125_fu_338_p2;
        icmp_ln125_reg_603_pp0_iter1_reg <= icmp_ln125_reg_603;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln125_reg_637 <= select_ln125_fu_378_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v64_reg_622 <= v64_fu_365_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_reg_647 <= grp_fu_6463_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_565 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln122_reg_565_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd1)))) begin
        v18_10_out_o = select_ln122_3_fu_428_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter3_reg == 2'd0))) begin
        v18_10_out_o = grp_fu_6451_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter3_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd1)))) begin
        v18_11_out_o = select_ln122_2_fu_421_p3;
    end else if ((~(select_ln122_5_reg_583_pp0_iter3_reg == 2'd1) & ~(select_ln122_5_reg_583_pp0_iter3_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1))) begin
        v18_11_out_o = grp_fu_6451_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_583_pp0_iter3_reg == 2'd1) & ~(select_ln122_5_reg_583_pp0_iter3_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd0)))) begin
        v18_9_out_o = select_ln122_4_fu_435_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter3_reg == 2'd1))) begin
        v18_9_out_o = grp_fu_6451_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_583_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_1_reg_608_pp0_iter2_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_1_reg_608_pp0_iter3_reg == 1'd1) & (select_ln122_5_reg_583_pp0_iter3_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln122_1_fu_272_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_246_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 8'd1);
assign add_ln124_fu_344_p2 = (select_ln122_reg_577 + 7'd1);
assign add_ln125_1_fu_332_p2 = ($signed(add_ln125_fu_320_p2) + $signed(8'd160));
assign add_ln125_fu_320_p2 = (zext_ln124_fu_317_p1 + tmp_s_fu_310_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_6451_p_ce = 1'b1;
assign grp_fu_6451_p_din0 = select_ln122_1_fu_413_p3;
assign grp_fu_6451_p_din1 = v65_reg_647;
assign grp_fu_6451_p_opcode = 2'd0;
assign grp_fu_6463_p_ce = 1'b1;
assign grp_fu_6463_p_din0 = v63_fu_385_p1;
assign grp_fu_6463_p_din1 = v64_reg_622;
assign icmp_ln122_fu_240_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln124_1_fu_349_p2 = ((add_ln124_fu_344_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln124_fu_258_p2 = ((ap_sig_allocacmp_v62_load == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln125_fu_338_p2 = ((add_ln125_1_fu_332_p2 < 8'd96) ? 1'b1 : 1'b0);
assign select_ln122_1_fu_413_p3 = ((icmp_ln124_reg_569_pp0_iter2_reg[0:0] == 1'b1) ? 64'd0 : v66_fu_78);
assign select_ln122_2_fu_421_p3 = ((icmp_ln124_reg_569_pp0_iter2_reg[0:0] == 1'b1) ? v18_11_out_i : v18_7_fu_98);
assign select_ln122_3_fu_428_p3 = ((icmp_ln124_reg_569_pp0_iter2_reg[0:0] == 1'b1) ? v18_10_out_i : v18_fu_94);
assign select_ln122_4_fu_435_p3 = ((icmp_ln124_reg_569_pp0_iter2_reg[0:0] == 1'b1) ? v18_9_out_i : v18_6_fu_90);
assign select_ln122_5_fu_278_p3 = ((icmp_ln124_fu_258_p2[0:0] == 1'b1) ? add_ln122_1_fu_272_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_264_p3 = ((icmp_ln124_fu_258_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v62_load);
assign select_ln125_fu_378_p3 = ((icmp_ln125_reg_603_pp0_iter1_reg[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign tmp_s_fu_310_p3 = {{select_ln122_5_reg_583}, {6'd0}};
assign trunc_ln124_fu_286_p1 = select_ln122_fu_264_p3[0:0];
assign v19_1_address0 = zext_ln124_1_fu_360_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_address0 = zext_ln124_1_fu_360_p1;
assign v19_ce0 = v19_ce0_local;
assign v2_0_address0 = zext_ln125_fu_372_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln125_fu_372_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v63_fu_385_p1 = select_ln125_reg_637;
assign v64_fu_365_p3 = ((trunc_ln124_reg_588_pp0_iter1_reg[0:0] == 1'b1) ? v19_1_q0 : v19_q0);
assign zext_ln124_1_fu_360_p1 = lshr_ln4_reg_593_pp0_iter1_reg;
assign zext_ln124_fu_317_p1 = select_ln122_reg_577;
assign zext_ln125_fu_372_p1 = grp_fu_326_p2;
endmodule 