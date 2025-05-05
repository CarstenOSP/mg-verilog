module backprop_backprop_Pipeline_label_2_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,phi_mul,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v20_address0,v20_ce0,v20_we0,v20_d0,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_2_address0,v20_2_ce0,v20_2_we0,v20_2_d0,v20_3_address0,v20_3_ce0,v20_3_we0,v20_3_d0,grp_fu_4795_p_din0,grp_fu_4795_p_din1,grp_fu_4795_p_opcode,grp_fu_4795_p_dout0,grp_fu_4795_p_ce,grp_fu_4803_p_din0,grp_fu_4803_p_din1,grp_fu_4803_p_dout0,grp_fu_4803_p_ce); 
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
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
input  [11:0] phi_mul;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [3:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [3:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [3:0] v20_2_address0;
output   v20_2_ce0;
output   v20_2_we0;
output  [63:0] v20_2_d0;
output  [3:0] v20_3_address0;
output   v20_3_ce0;
output   v20_3_we0;
output  [63:0] v20_3_d0;
output  [63:0] grp_fu_4795_p_din0;
output  [63:0] grp_fu_4795_p_din1;
output  [0:0] grp_fu_4795_p_opcode;
input  [63:0] grp_fu_4795_p_dout0;
output   grp_fu_4795_p_ce;
output  [63:0] grp_fu_4803_p_din0;
output  [63:0] grp_fu_4803_p_din1;
input  [63:0] grp_fu_4803_p_dout0;
output   grp_fu_4803_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln66_reg_430;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln66_fu_222_p2;
reg   [0:0] icmp_ln66_reg_430_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_430_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_430_pp0_iter3_reg;
wire   [0:0] icmp_ln68_fu_237_p2;
reg   [0:0] icmp_ln68_reg_434;
reg   [0:0] icmp_ln68_reg_434_pp0_iter1_reg;
reg   [0:0] icmp_ln68_reg_434_pp0_iter2_reg;
reg   [0:0] icmp_ln68_reg_434_pp0_iter3_reg;
wire   [3:0] select_ln66_fu_243_p3;
reg   [3:0] select_ln66_reg_440;
reg   [3:0] select_ln66_reg_440_pp0_iter1_reg;
wire   [11:0] add_ln70_fu_259_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln70_fu_276_p2;
reg   [0:0] icmp_ln70_reg_452;
reg   [0:0] icmp_ln70_reg_452_pp0_iter1_reg;
wire   [0:0] icmp_ln68_1_fu_287_p2;
reg   [0:0] icmp_ln68_1_reg_457;
reg   [0:0] icmp_ln68_1_reg_457_pp0_iter1_reg;
reg   [0:0] icmp_ln68_1_reg_457_pp0_iter2_reg;
reg   [0:0] icmp_ln68_1_reg_457_pp0_iter3_reg;
wire   [1:0] trunc_ln66_fu_318_p1;
reg   [1:0] trunc_ln66_reg_466;
reg   [1:0] trunc_ln66_reg_466_pp0_iter2_reg;
reg   [1:0] trunc_ln66_reg_466_pp0_iter3_reg;
reg   [1:0] trunc_ln66_reg_466_pp0_iter4_reg;
reg   [3:0] lshr_ln1_reg_470;
reg   [3:0] lshr_ln1_reg_470_pp0_iter2_reg;
reg   [3:0] lshr_ln1_reg_470_pp0_iter3_reg;
reg   [3:0] lshr_ln1_reg_470_pp0_iter4_reg;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v0_load_reg_485;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] select_ln70_fu_350_p3;
reg   [63:0] select_ln70_reg_500;
wire   [63:0] v25_fu_357_p1;
wire   [63:0] v26_fu_361_p1;
reg   [63:0] v27_reg_515;
wire   [63:0] select_ln66_1_fu_368_p3;
reg   [63:0] v29_reg_525;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln69_fu_340_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_fu_344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln66_fu_381_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] v28_fu_78;
wire    ap_loop_init;
reg   [3:0] v24_fu_82;
wire   [3:0] add_ln68_fu_282_p2;
reg   [3:0] ap_sig_allocacmp_v24_load;
reg   [6:0] v23_fu_86;
wire   [6:0] select_ln66_2_fu_307_p3;
reg   [9:0] indvar_flatten_fu_90;
wire   [9:0] add_ln66_fu_228_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v0_ce0_local;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v20_2_we0_local;
reg    v20_2_ce0_local;
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v20_3_we0_local;
reg    v20_3_ce0_local;
wire    ap_block_pp0_stage2;
wire   [11:0] zext_ln68_1_fu_256_p1;
wire   [11:0] add_ln70_1_fu_270_p2;
wire   [6:0] add_ln66_1_fu_301_p2;
wire   [9:0] grp_fu_388_p3;
wire   [11:0] grp_fu_264_p2;
wire   [6:0] grp_fu_388_p0;
wire   [3:0] grp_fu_388_p1;
wire   [3:0] grp_fu_388_p2;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] grp_fu_388_p00;
wire   [9:0] grp_fu_388_p20;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_78 = 64'd0;
#0 v24_fu_82 = 4'd0;
#0 v23_fu_86 = 7'd0;
#0 indvar_flatten_fu_90 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_fu_259_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_264_p2));
backprop_mac_muladd_7ns_4ns_4ns_10_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.dout_WIDTH( 10 ))
mac_muladd_7ns_4ns_4ns_10_4_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_388_p0),.din1(grp_fu_388_p1),.din2(grp_fu_388_p2),.ce(1'b1),.dout(grp_fu_388_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln66_fu_222_p2 == 1'd0))) begin
            indvar_flatten_fu_90 <= add_ln66_fu_228_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_90 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v23_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v23_fu_86 <= select_ln66_2_fu_307_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_82 <= 4'd0;
    end else if (((icmp_ln66_reg_430 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_fu_82 <= add_ln68_fu_282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v28_fu_78 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            v28_fu_78 <= grp_fu_4795_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln66_reg_430 <= icmp_ln66_fu_222_p2;
        icmp_ln66_reg_430_pp0_iter1_reg <= icmp_ln66_reg_430;
        icmp_ln66_reg_430_pp0_iter2_reg <= icmp_ln66_reg_430_pp0_iter1_reg;
        icmp_ln66_reg_430_pp0_iter3_reg <= icmp_ln66_reg_430_pp0_iter2_reg;
        icmp_ln68_reg_434 <= icmp_ln68_fu_237_p2;
        icmp_ln68_reg_434_pp0_iter1_reg <= icmp_ln68_reg_434;
        icmp_ln68_reg_434_pp0_iter2_reg <= icmp_ln68_reg_434_pp0_iter1_reg;
        icmp_ln68_reg_434_pp0_iter3_reg <= icmp_ln68_reg_434_pp0_iter2_reg;
        lshr_ln1_reg_470 <= {{select_ln66_2_fu_307_p3[5:2]}};
        lshr_ln1_reg_470_pp0_iter2_reg <= lshr_ln1_reg_470;
        lshr_ln1_reg_470_pp0_iter3_reg <= lshr_ln1_reg_470_pp0_iter2_reg;
        lshr_ln1_reg_470_pp0_iter4_reg <= lshr_ln1_reg_470_pp0_iter3_reg;
        select_ln66_reg_440 <= select_ln66_fu_243_p3;
        select_ln66_reg_440_pp0_iter1_reg <= select_ln66_reg_440;
        trunc_ln66_reg_466 <= trunc_ln66_fu_318_p1;
        trunc_ln66_reg_466_pp0_iter2_reg <= trunc_ln66_reg_466;
        trunc_ln66_reg_466_pp0_iter3_reg <= trunc_ln66_reg_466_pp0_iter2_reg;
        trunc_ln66_reg_466_pp0_iter4_reg <= trunc_ln66_reg_466_pp0_iter3_reg;
        v27_reg_515 <= grp_fu_4803_p_dout0;
        v29_reg_525 <= grp_fu_4795_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln68_1_reg_457 <= icmp_ln68_1_fu_287_p2;
        icmp_ln68_1_reg_457_pp0_iter1_reg <= icmp_ln68_1_reg_457;
        icmp_ln68_1_reg_457_pp0_iter2_reg <= icmp_ln68_1_reg_457_pp0_iter1_reg;
        icmp_ln68_1_reg_457_pp0_iter3_reg <= icmp_ln68_1_reg_457_pp0_iter2_reg;
        icmp_ln70_reg_452 <= icmp_ln70_fu_276_p2;
        icmp_ln70_reg_452_pp0_iter1_reg <= icmp_ln70_reg_452;
        select_ln70_reg_500 <= select_ln70_fu_350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_load_reg_485 <= v0_q0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_430 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_430_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_load = v24_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln66_reg_466_pp0_iter4_reg == 2'd1) & (icmp_ln68_1_reg_457_pp0_iter3_reg == 1'd1))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_2_ce0_local = 1'b1;
    end else begin
        v20_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln66_reg_466_pp0_iter4_reg == 2'd2) & (icmp_ln68_1_reg_457_pp0_iter3_reg == 1'd1))) begin
        v20_2_we0_local = 1'b1;
    end else begin
        v20_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_3_ce0_local = 1'b1;
    end else begin
        v20_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln66_reg_466_pp0_iter4_reg == 2'd3) & (icmp_ln68_1_reg_457_pp0_iter3_reg == 1'd1))) begin
        v20_3_we0_local = 1'b1;
    end else begin
        v20_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln66_reg_466_pp0_iter4_reg == 2'd0) & (icmp_ln68_1_reg_457_pp0_iter3_reg == 1'd1))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln66_1_fu_301_p2 = (v23_fu_86 + 7'd1);
assign add_ln66_fu_228_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln68_fu_282_p2 = (select_ln66_reg_440 + 4'd1);
assign add_ln70_1_fu_270_p2 = ($signed(add_ln70_fu_259_p2) + $signed(12'd3036));
assign add_ln70_fu_259_p2 = (zext_ln68_1_fu_256_p1 + phi_mul);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_388_p0 = grp_fu_388_p00;
assign grp_fu_388_p00 = select_ln66_2_fu_307_p3;
assign grp_fu_388_p1 = 10'd13;
assign grp_fu_388_p2 = grp_fu_388_p20;
assign grp_fu_388_p20 = select_ln66_reg_440_pp0_iter1_reg;
assign grp_fu_4795_p_ce = 1'b1;
assign grp_fu_4795_p_din0 = select_ln66_1_fu_368_p3;
assign grp_fu_4795_p_din1 = v27_reg_515;
assign grp_fu_4795_p_opcode = 2'd0;
assign grp_fu_4803_p_ce = 1'b1;
assign grp_fu_4803_p_din0 = v25_fu_357_p1;
assign grp_fu_4803_p_din1 = v26_fu_361_p1;
assign icmp_ln66_fu_222_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln68_1_fu_287_p2 = ((add_ln68_fu_282_p2 == 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln68_fu_237_p2 = ((ap_sig_allocacmp_v24_load == 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln70_fu_276_p2 = ((add_ln70_1_fu_270_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign select_ln66_1_fu_368_p3 = ((icmp_ln68_reg_434_pp0_iter3_reg[0:0] == 1'b1) ? 64'd0 : v28_fu_78);
assign select_ln66_2_fu_307_p3 = ((icmp_ln68_reg_434[0:0] == 1'b1) ? add_ln66_1_fu_301_p2 : v23_fu_86);
assign select_ln66_fu_243_p3 = ((icmp_ln68_fu_237_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v24_load);
assign select_ln70_fu_350_p3 = ((icmp_ln70_reg_452_pp0_iter1_reg[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign trunc_ln66_fu_318_p1 = select_ln66_2_fu_307_p3[1:0];
assign v0_address0 = zext_ln69_fu_340_p1;
assign v0_ce0 = v0_ce0_local;
assign v20_1_address0 = zext_ln66_fu_381_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_525;
assign v20_1_we0 = v20_1_we0_local;
assign v20_2_address0 = zext_ln66_fu_381_p1;
assign v20_2_ce0 = v20_2_ce0_local;
assign v20_2_d0 = v29_reg_525;
assign v20_2_we0 = v20_2_we0_local;
assign v20_3_address0 = zext_ln66_fu_381_p1;
assign v20_3_ce0 = v20_3_ce0_local;
assign v20_3_d0 = v29_reg_525;
assign v20_3_we0 = v20_3_we0_local;
assign v20_address0 = zext_ln66_fu_381_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_525;
assign v20_we0 = v20_we0_local;
assign v25_fu_357_p1 = v0_load_reg_485;
assign v26_fu_361_p1 = select_ln70_reg_500;
assign v6_0_address0 = zext_ln70_fu_344_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln70_fu_344_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign zext_ln66_fu_381_p1 = lshr_ln1_reg_470_pp0_iter4_reg;
assign zext_ln68_1_fu_256_p1 = select_ln66_reg_440;
assign zext_ln69_fu_340_p1 = grp_fu_388_p3;
assign zext_ln70_fu_344_p1 = grp_fu_264_p2;
endmodule 