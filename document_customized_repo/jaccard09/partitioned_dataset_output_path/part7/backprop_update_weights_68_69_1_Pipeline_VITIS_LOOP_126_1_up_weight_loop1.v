
module backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_719_p_din0,grp_fu_719_p_din1,grp_fu_719_p_opcode,grp_fu_719_p_dout0,grp_fu_719_p_ce,grp_fu_723_p_din0,grp_fu_723_p_din1,grp_fu_723_p_dout0,grp_fu_723_p_ce);  
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
output  [6:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [6:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [6:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [6:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [6:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [6:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [6:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [6:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [6:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [6:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [6:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [6:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [6:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [6:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [6:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [6:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_719_p_din0;
output  [63:0] grp_fu_719_p_din1;
output  [1:0] grp_fu_719_p_opcode;
input  [63:0] grp_fu_719_p_dout0;
output   grp_fu_719_p_ce;
output  [63:0] grp_fu_723_p_din0;
output  [63:0] grp_fu_723_p_din1;
input  [63:0] grp_fu_723_p_dout0;
output   grp_fu_723_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln126_reg_640;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_363_p2;
reg   [0:0] icmp_ln126_reg_640_pp0_iter1_reg;
reg   [0:0] icmp_ln126_reg_640_pp0_iter2_reg;
reg   [0:0] icmp_ln126_reg_640_pp0_iter3_reg;
wire   [9:0] add_ln126_fu_369_p2;
reg   [9:0] add_ln126_reg_644;
wire   [6:0] select_ln121_fu_387_p3;
reg   [6:0] select_ln121_reg_649;
wire   [3:0] select_ln126_fu_401_p3;
reg   [3:0] select_ln126_reg_654;
wire   [2:0] trunc_ln127_fu_409_p1;
reg   [2:0] trunc_ln127_reg_660;
reg   [2:0] trunc_ln127_reg_660_pp0_iter1_reg;
reg   [2:0] trunc_ln127_reg_660_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_666;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] weights1_0_addr_reg_711;
reg   [6:0] weights1_0_addr_reg_711_pp0_iter1_reg;
reg   [6:0] weights1_0_addr_reg_711_pp0_iter2_reg;
reg   [6:0] weights1_1_addr_reg_716;
reg   [6:0] weights1_1_addr_reg_716_pp0_iter1_reg;
reg   [6:0] weights1_1_addr_reg_716_pp0_iter2_reg;
reg   [6:0] weights1_2_addr_reg_721;
reg   [6:0] weights1_2_addr_reg_721_pp0_iter1_reg;
reg   [6:0] weights1_2_addr_reg_721_pp0_iter2_reg;
reg   [6:0] weights1_3_addr_reg_726;
reg   [6:0] weights1_3_addr_reg_726_pp0_iter1_reg;
reg   [6:0] weights1_3_addr_reg_726_pp0_iter2_reg;
reg   [6:0] weights1_4_addr_reg_731;
reg   [6:0] weights1_4_addr_reg_731_pp0_iter1_reg;
reg   [6:0] weights1_4_addr_reg_731_pp0_iter2_reg;
reg   [6:0] weights1_5_addr_reg_736;
reg   [6:0] weights1_5_addr_reg_736_pp0_iter1_reg;
reg   [6:0] weights1_5_addr_reg_736_pp0_iter2_reg;
reg   [6:0] weights1_6_addr_reg_741;
reg   [6:0] weights1_6_addr_reg_741_pp0_iter1_reg;
reg   [6:0] weights1_6_addr_reg_741_pp0_iter2_reg;
reg   [6:0] weights1_7_addr_reg_746;
reg   [6:0] weights1_7_addr_reg_746_pp0_iter1_reg;
reg   [6:0] weights1_7_addr_reg_746_pp0_iter2_reg;
wire   [63:0] tmp_2_fu_477_p19;
reg   [63:0] tmp_2_reg_751;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] mul4_reg_756;
wire   [63:0] tmp_3_fu_548_p19;
reg   [63:0] tmp_3_reg_761;
reg   [63:0] sub_reg_766;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul2_reg_773;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln128_fu_439_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_2_fu_108;
reg   [63:0] ap_sig_allocacmp_norm_2_load;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_112;
wire   [6:0] add_ln127_fu_459_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [3:0] i_fu_116;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten_fu_120;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights1_0_ce0_local;
reg    d_weights1_1_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_7_ce0_local;
reg    weights1_0_ce0_local;
reg   [6:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
wire   [63:0] bitcast_ln128_8_fu_587_p1;
reg    weights1_1_ce0_local;
reg   [6:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg    weights1_2_ce0_local;
reg   [6:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    weights1_3_ce0_local;
reg   [6:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    weights1_4_ce0_local;
reg   [6:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    weights1_5_ce0_local;
reg   [6:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    weights1_6_ce0_local;
reg   [6:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    weights1_7_ce0_local;
reg   [6:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg   [63:0] grp_fu_331_p0;
reg   [63:0] grp_fu_331_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_335_p0;
reg   [63:0] grp_fu_335_p1;
wire   [0:0] icmp_ln127_fu_381_p2;
wire   [3:0] add_ln126_1_fu_395_p2;
wire   [6:0] zext_ln128_1_fu_430_p1;
wire   [6:0] p_udiv1_fu_423_p3;
wire   [6:0] add_ln128_fu_433_p2;
wire   [63:0] tmp_2_fu_477_p17;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_3_fu_548_p2;
wire   [63:0] tmp_3_fu_548_p4;
wire   [63:0] tmp_3_fu_548_p6;
wire   [63:0] tmp_3_fu_548_p8;
wire   [63:0] tmp_3_fu_548_p10;
wire   [63:0] tmp_3_fu_548_p12;
wire   [63:0] tmp_3_fu_548_p14;
wire   [63:0] tmp_3_fu_548_p16;
wire   [63:0] tmp_3_fu_548_p17;
reg   [1:0] grp_fu_331_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_2_fu_477_p1;
wire   [2:0] tmp_2_fu_477_p3;
wire   [2:0] tmp_2_fu_477_p5;
wire   [2:0] tmp_2_fu_477_p7;
wire  signed [2:0] tmp_2_fu_477_p9;
wire  signed [2:0] tmp_2_fu_477_p11;
wire  signed [2:0] tmp_2_fu_477_p13;
wire  signed [2:0] tmp_2_fu_477_p15;
wire   [2:0] tmp_3_fu_548_p1;
wire   [2:0] tmp_3_fu_548_p3;
wire   [2:0] tmp_3_fu_548_p5;
wire   [2:0] tmp_3_fu_548_p7;
wire  signed [2:0] tmp_3_fu_548_p9;
wire  signed [2:0] tmp_3_fu_548_p11;
wire  signed [2:0] tmp_3_fu_548_p13;
wire  signed [2:0] tmp_3_fu_548_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_108 = 64'd0;
#0 j_fu_112 = 7'd0;
#0 i_fu_116 = 4'd0;
#0 indvar_flatten_fu_120 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U647(.din0(d_weights1_0_q0),.din1(d_weights1_1_q0),.din2(d_weights1_2_q0),.din3(d_weights1_3_q0),.din4(d_weights1_4_q0),.din5(d_weights1_5_q0),.din6(d_weights1_6_q0),.din7(d_weights1_7_q0),.def(tmp_2_fu_477_p17),.sel(trunc_ln127_reg_660),.dout(tmp_2_fu_477_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U648(.din0(tmp_3_fu_548_p2),.din1(tmp_3_fu_548_p4),.din2(tmp_3_fu_548_p6),.din3(tmp_3_fu_548_p8),.din4(tmp_3_fu_548_p10),.din5(tmp_3_fu_548_p12),.din6(tmp_3_fu_548_p14),.din7(tmp_3_fu_548_p16),.def(tmp_3_fu_548_p17),.sel(trunc_ln127_reg_660_pp0_iter1_reg),.dout(tmp_3_fu_548_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_116 <= 4'd0;
    end else if (((icmp_ln126_reg_640 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_116 <= select_ln126_reg_654;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_120 <= 10'd0;
    end else if (((icmp_ln126_reg_640 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_120 <= add_ln126_reg_644;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_112 <= 7'd0;
    end else if (((icmp_ln126_reg_640 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_112 <= add_ln127_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_2_fu_108 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_2_fu_108 <= grp_fu_719_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_reg_644 <= add_ln126_fu_369_p2;
        icmp_ln126_reg_640 <= icmp_ln126_fu_363_p2;
        icmp_ln126_reg_640_pp0_iter1_reg <= icmp_ln126_reg_640;
        icmp_ln126_reg_640_pp0_iter2_reg <= icmp_ln126_reg_640_pp0_iter1_reg;
        icmp_ln126_reg_640_pp0_iter3_reg <= icmp_ln126_reg_640_pp0_iter2_reg;
        lshr_ln_reg_666 <= {{select_ln121_fu_387_p3[6:3]}};
        select_ln121_reg_649 <= select_ln121_fu_387_p3;
        select_ln126_reg_654 <= select_ln126_fu_401_p3;
        trunc_ln127_reg_660 <= trunc_ln127_fu_409_p1;
        trunc_ln127_reg_660_pp0_iter1_reg <= trunc_ln127_reg_660;
        trunc_ln127_reg_660_pp0_iter2_reg <= trunc_ln127_reg_660_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_773 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul4_reg_756 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub_reg_766 <= grp_fu_719_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_751 <= tmp_2_fu_477_p19;
        tmp_3_reg_761 <= tmp_3_fu_548_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_addr_reg_711 <= zext_ln128_fu_439_p1;
        weights1_0_addr_reg_711_pp0_iter1_reg <= weights1_0_addr_reg_711;
        weights1_0_addr_reg_711_pp0_iter2_reg <= weights1_0_addr_reg_711_pp0_iter1_reg;
        weights1_1_addr_reg_716 <= zext_ln128_fu_439_p1;
        weights1_1_addr_reg_716_pp0_iter1_reg <= weights1_1_addr_reg_716;
        weights1_1_addr_reg_716_pp0_iter2_reg <= weights1_1_addr_reg_716_pp0_iter1_reg;
        weights1_2_addr_reg_721 <= zext_ln128_fu_439_p1;
        weights1_2_addr_reg_721_pp0_iter1_reg <= weights1_2_addr_reg_721;
        weights1_2_addr_reg_721_pp0_iter2_reg <= weights1_2_addr_reg_721_pp0_iter1_reg;
        weights1_3_addr_reg_726 <= zext_ln128_fu_439_p1;
        weights1_3_addr_reg_726_pp0_iter1_reg <= weights1_3_addr_reg_726;
        weights1_3_addr_reg_726_pp0_iter2_reg <= weights1_3_addr_reg_726_pp0_iter1_reg;
        weights1_4_addr_reg_731 <= zext_ln128_fu_439_p1;
        weights1_4_addr_reg_731_pp0_iter1_reg <= weights1_4_addr_reg_731;
        weights1_4_addr_reg_731_pp0_iter2_reg <= weights1_4_addr_reg_731_pp0_iter1_reg;
        weights1_5_addr_reg_736 <= zext_ln128_fu_439_p1;
        weights1_5_addr_reg_736_pp0_iter1_reg <= weights1_5_addr_reg_736;
        weights1_5_addr_reg_736_pp0_iter2_reg <= weights1_5_addr_reg_736_pp0_iter1_reg;
        weights1_6_addr_reg_741 <= zext_ln128_fu_439_p1;
        weights1_6_addr_reg_741_pp0_iter1_reg <= weights1_6_addr_reg_741;
        weights1_6_addr_reg_741_pp0_iter2_reg <= weights1_6_addr_reg_741_pp0_iter1_reg;
        weights1_7_addr_reg_746 <= zext_ln128_fu_439_p1;
        weights1_7_addr_reg_746_pp0_iter1_reg <= weights1_7_addr_reg_746;
        weights1_7_addr_reg_746_pp0_iter2_reg <= weights1_7_addr_reg_746_pp0_iter1_reg;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_640 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln126_reg_640_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_2_load = grp_fu_719_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_2_load = norm_2_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_0_ce0_local = 1'b1;
    end else begin
        d_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_1_ce0_local = 1'b1;
    end else begin
        d_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_2_ce0_local = 1'b1;
    end else begin
        d_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_3_ce0_local = 1'b1;
    end else begin
        d_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_4_ce0_local = 1'b1;
    end else begin
        d_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_5_ce0_local = 1'b1;
    end else begin
        d_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_6_ce0_local = 1'b1;
    end else begin
        d_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_7_ce0_local = 1'b1;
    end else begin
        d_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_331_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_331_opcode = 2'd0;
    end else begin
        grp_fu_331_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_331_p0 = ap_sig_allocacmp_norm_2_load;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_331_p0 = tmp_3_reg_761;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_331_p1 = mul2_reg_773;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_331_p1 = mul4_reg_756;
    end else begin
        grp_fu_331_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_335_p0 = sub_reg_766;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_335_p0 = tmp_2_reg_751;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_335_p1 = sub_reg_766;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_335_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_335_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln126_reg_640_pp0_iter3_reg == 1'd1))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = weights1_0_addr_reg_711_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = weights1_0_addr_reg_711;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = weights1_1_addr_reg_716_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = weights1_1_addr_reg_716;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_address0_local = weights1_2_addr_reg_721_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = weights1_2_addr_reg_721;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_address0_local = weights1_3_addr_reg_726_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address0_local = weights1_3_addr_reg_726;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_4_address0_local = weights1_4_addr_reg_731_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_4_address0_local = weights1_4_addr_reg_731;
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_5_address0_local = weights1_5_addr_reg_736_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_5_address0_local = weights1_5_addr_reg_736;
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_6_address0_local = weights1_6_addr_reg_741_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_6_address0_local = weights1_6_addr_reg_741;
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_7_address0_local = weights1_7_addr_reg_746_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_7_address0_local = weights1_7_addr_reg_746;
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln127_reg_660_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
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
assign add_ln126_1_fu_395_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_369_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln127_fu_459_p2 = (select_ln121_reg_649 + 7'd1);
assign add_ln128_fu_433_p2 = (zext_ln128_1_fu_430_p1 + p_udiv1_fu_423_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_8_fu_587_p1 = sub_reg_766;
assign d_weights1_0_address0 = zext_ln128_fu_439_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_1_address0 = zext_ln128_fu_439_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_2_address0 = zext_ln128_fu_439_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_3_address0 = zext_ln128_fu_439_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_4_address0 = zext_ln128_fu_439_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_5_address0 = zext_ln128_fu_439_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_6_address0 = zext_ln128_fu_439_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln128_fu_439_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign grp_fu_719_p_ce = 1'b1;
assign grp_fu_719_p_din0 = grp_fu_331_p0;
assign grp_fu_719_p_din1 = grp_fu_331_p1;
assign grp_fu_719_p_opcode = grp_fu_331_opcode;
assign grp_fu_723_p_ce = 1'b1;
assign grp_fu_723_p_din0 = grp_fu_335_p0;
assign grp_fu_723_p_din1 = grp_fu_335_p1;
assign icmp_ln126_fu_363_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln127_fu_381_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_108;
assign p_udiv1_fu_423_p3 = {{select_ln126_reg_654}, {3'd0}};
assign select_ln121_fu_387_p3 = ((icmp_ln127_fu_381_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln126_fu_401_p3 = ((icmp_ln127_fu_381_p2[0:0] == 1'b1) ? add_ln126_1_fu_395_p2 : ap_sig_allocacmp_i_load);
assign tmp_2_fu_477_p17 = 'bx;
assign tmp_3_fu_548_p10 = weights1_4_q0;
assign tmp_3_fu_548_p12 = weights1_5_q0;
assign tmp_3_fu_548_p14 = weights1_6_q0;
assign tmp_3_fu_548_p16 = weights1_7_q0;
assign tmp_3_fu_548_p17 = 'bx;
assign tmp_3_fu_548_p2 = weights1_0_q0;
assign tmp_3_fu_548_p4 = weights1_1_q0;
assign tmp_3_fu_548_p6 = weights1_2_q0;
assign tmp_3_fu_548_p8 = weights1_3_q0;
assign trunc_ln127_fu_409_p1 = select_ln121_fu_387_p3[2:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_8_fu_587_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign zext_ln128_1_fu_430_p1 = lshr_ln_reg_666;
assign zext_ln128_fu_439_p1 = add_ln128_fu_433_p2;
endmodule 
