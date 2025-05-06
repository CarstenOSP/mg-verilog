
module backprop_update_weights_68_69_1_Pipeline_up_weight_loop6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_7_address0,biases2_7_ce0,biases2_7_we0,biases2_7_d0,biases2_7_q0,biases2_6_address0,biases2_6_ce0,biases2_6_we0,biases2_6_d0,biases2_6_q0,biases2_5_address0,biases2_5_ce0,biases2_5_we0,biases2_5_d0,biases2_5_q0,biases2_4_address0,biases2_4_ce0,biases2_4_we0,biases2_4_d0,biases2_4_q0,biases2_3_address0,biases2_3_ce0,biases2_3_we0,biases2_3_d0,biases2_3_q0,biases2_2_address0,biases2_2_ce0,biases2_2_we0,biases2_2_d0,biases2_2_q0,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,d_biases2_0_address0,d_biases2_0_ce0,d_biases2_0_q0,d_biases2_1_address0,d_biases2_1_ce0,d_biases2_1_q0,d_biases2_2_address0,d_biases2_2_ce0,d_biases2_2_q0,d_biases2_3_address0,d_biases2_3_ce0,d_biases2_3_q0,d_biases2_4_address0,d_biases2_4_ce0,d_biases2_4_q0,d_biases2_5_address0,d_biases2_5_ce0,d_biases2_5_q0,d_biases2_6_address0,d_biases2_6_ce0,d_biases2_6_q0,d_biases2_7_address0,d_biases2_7_ce0,d_biases2_7_q0,bias_norm_4_out,bias_norm_4_out_ap_vld,grp_fu_747_p_din0,grp_fu_747_p_din1,grp_fu_747_p_opcode,grp_fu_747_p_dout0,grp_fu_747_p_ce,grp_fu_751_p_din0,grp_fu_751_p_din1,grp_fu_751_p_dout0,grp_fu_751_p_ce);  
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
output  [2:0] biases2_7_address0;
output   biases2_7_ce0;
output   biases2_7_we0;
output  [63:0] biases2_7_d0;
input  [63:0] biases2_7_q0;
output  [2:0] biases2_6_address0;
output   biases2_6_ce0;
output   biases2_6_we0;
output  [63:0] biases2_6_d0;
input  [63:0] biases2_6_q0;
output  [2:0] biases2_5_address0;
output   biases2_5_ce0;
output   biases2_5_we0;
output  [63:0] biases2_5_d0;
input  [63:0] biases2_5_q0;
output  [2:0] biases2_4_address0;
output   biases2_4_ce0;
output   biases2_4_we0;
output  [63:0] biases2_4_d0;
input  [63:0] biases2_4_q0;
output  [2:0] biases2_3_address0;
output   biases2_3_ce0;
output   biases2_3_we0;
output  [63:0] biases2_3_d0;
input  [63:0] biases2_3_q0;
output  [2:0] biases2_2_address0;
output   biases2_2_ce0;
output   biases2_2_we0;
output  [63:0] biases2_2_d0;
input  [63:0] biases2_2_q0;
output  [2:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [2:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [2:0] d_biases2_0_address0;
output   d_biases2_0_ce0;
input  [63:0] d_biases2_0_q0;
output  [2:0] d_biases2_1_address0;
output   d_biases2_1_ce0;
input  [63:0] d_biases2_1_q0;
output  [2:0] d_biases2_2_address0;
output   d_biases2_2_ce0;
input  [63:0] d_biases2_2_q0;
output  [2:0] d_biases2_3_address0;
output   d_biases2_3_ce0;
input  [63:0] d_biases2_3_q0;
output  [2:0] d_biases2_4_address0;
output   d_biases2_4_ce0;
input  [63:0] d_biases2_4_q0;
output  [2:0] d_biases2_5_address0;
output   d_biases2_5_ce0;
input  [63:0] d_biases2_5_q0;
output  [2:0] d_biases2_6_address0;
output   d_biases2_6_ce0;
input  [63:0] d_biases2_6_q0;
output  [2:0] d_biases2_7_address0;
output   d_biases2_7_ce0;
input  [63:0] d_biases2_7_q0;
output  [63:0] bias_norm_4_out;
output   bias_norm_4_out_ap_vld;
output  [63:0] grp_fu_747_p_din0;
output  [63:0] grp_fu_747_p_din1;
output  [1:0] grp_fu_747_p_opcode;
input  [63:0] grp_fu_747_p_dout0;
output   grp_fu_747_p_ce;
output  [63:0] grp_fu_751_p_din0;
output  [63:0] grp_fu_751_p_din1;
input  [63:0] grp_fu_751_p_dout0;
output   grp_fu_751_p_ce;
reg ap_idle;
reg bias_norm_4_out_ap_vld;
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
reg   [0:0] icmp_ln158_reg_532;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln158_fu_333_p2;
reg   [0:0] icmp_ln158_reg_532_pp0_iter1_reg;
reg   [0:0] icmp_ln158_reg_532_pp0_iter2_reg;
reg   [0:0] icmp_ln158_reg_532_pp0_iter3_reg;
wire   [6:0] add_ln158_fu_339_p2;
reg   [6:0] add_ln158_reg_536;
wire   [2:0] trunc_ln158_fu_345_p1;
reg   [2:0] trunc_ln158_reg_541;
reg   [2:0] trunc_ln158_reg_541_pp0_iter1_reg;
reg   [2:0] trunc_ln158_reg_541_pp0_iter2_reg;
reg   [2:0] biases2_0_addr_reg_587;
reg   [2:0] biases2_0_addr_reg_587_pp0_iter1_reg;
reg   [2:0] biases2_0_addr_reg_587_pp0_iter2_reg;
reg   [2:0] biases2_1_addr_reg_592;
reg   [2:0] biases2_1_addr_reg_592_pp0_iter1_reg;
reg   [2:0] biases2_1_addr_reg_592_pp0_iter2_reg;
reg   [2:0] biases2_2_addr_reg_597;
reg   [2:0] biases2_2_addr_reg_597_pp0_iter1_reg;
reg   [2:0] biases2_2_addr_reg_597_pp0_iter2_reg;
reg   [2:0] biases2_3_addr_reg_602;
reg   [2:0] biases2_3_addr_reg_602_pp0_iter1_reg;
reg   [2:0] biases2_3_addr_reg_602_pp0_iter2_reg;
reg   [2:0] biases2_4_addr_reg_607;
reg   [2:0] biases2_4_addr_reg_607_pp0_iter1_reg;
reg   [2:0] biases2_4_addr_reg_607_pp0_iter2_reg;
reg   [2:0] biases2_5_addr_reg_612;
reg   [2:0] biases2_5_addr_reg_612_pp0_iter1_reg;
reg   [2:0] biases2_5_addr_reg_612_pp0_iter2_reg;
reg   [2:0] biases2_6_addr_reg_617;
reg   [2:0] biases2_6_addr_reg_617_pp0_iter1_reg;
reg   [2:0] biases2_6_addr_reg_617_pp0_iter2_reg;
reg   [2:0] biases2_7_addr_reg_622;
reg   [2:0] biases2_7_addr_reg_622_pp0_iter1_reg;
reg   [2:0] biases2_7_addr_reg_622_pp0_iter2_reg;
wire   [63:0] tmp_7_fu_379_p19;
reg   [63:0] tmp_7_reg_627;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] mul3_reg_632;
wire   [63:0] tmp_8_fu_454_p19;
reg   [63:0] tmp_8_reg_637;
reg   [63:0] sub2_reg_642;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] mul6_reg_649;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln121_fu_359_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_96;
reg   [63:0] ap_sig_allocacmp_bias_norm_load_1;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] i_fu_100;
reg   [6:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage3_01001;
reg    d_biases2_0_ce0_local;
reg    d_biases2_1_ce0_local;
reg    d_biases2_2_ce0_local;
reg    d_biases2_3_ce0_local;
reg    d_biases2_4_ce0_local;
reg    d_biases2_5_ce0_local;
reg    d_biases2_6_ce0_local;
reg    d_biases2_7_ce0_local;
reg    biases2_0_ce0_local;
reg   [2:0] biases2_0_address0_local;
reg    biases2_0_we0_local;
wire   [63:0] bitcast_ln159_8_fu_493_p1;
reg    biases2_1_ce0_local;
reg   [2:0] biases2_1_address0_local;
reg    biases2_1_we0_local;
reg    biases2_2_ce0_local;
reg   [2:0] biases2_2_address0_local;
reg    biases2_2_we0_local;
reg    biases2_3_ce0_local;
reg   [2:0] biases2_3_address0_local;
reg    biases2_3_we0_local;
reg    biases2_4_ce0_local;
reg   [2:0] biases2_4_address0_local;
reg    biases2_4_we0_local;
reg    biases2_5_ce0_local;
reg   [2:0] biases2_5_address0_local;
reg    biases2_5_we0_local;
reg    biases2_6_ce0_local;
reg   [2:0] biases2_6_address0_local;
reg    biases2_6_we0_local;
reg    biases2_7_ce0_local;
reg   [2:0] biases2_7_address0_local;
reg    biases2_7_we0_local;
reg   [63:0] grp_fu_311_p0;
reg   [63:0] grp_fu_311_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_315_p0;
reg   [63:0] grp_fu_315_p1;
wire   [2:0] lshr_ln121_2_fu_349_p4;
wire   [63:0] tmp_7_fu_379_p17;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_8_fu_454_p2;
wire   [63:0] tmp_8_fu_454_p4;
wire   [63:0] tmp_8_fu_454_p6;
wire   [63:0] tmp_8_fu_454_p8;
wire   [63:0] tmp_8_fu_454_p10;
wire   [63:0] tmp_8_fu_454_p12;
wire   [63:0] tmp_8_fu_454_p14;
wire   [63:0] tmp_8_fu_454_p16;
wire   [63:0] tmp_8_fu_454_p17;
reg   [1:0] grp_fu_311_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_7_fu_379_p1;
wire   [2:0] tmp_7_fu_379_p3;
wire   [2:0] tmp_7_fu_379_p5;
wire   [2:0] tmp_7_fu_379_p7;
wire  signed [2:0] tmp_7_fu_379_p9;
wire  signed [2:0] tmp_7_fu_379_p11;
wire  signed [2:0] tmp_7_fu_379_p13;
wire  signed [2:0] tmp_7_fu_379_p15;
wire   [2:0] tmp_8_fu_454_p1;
wire   [2:0] tmp_8_fu_454_p3;
wire   [2:0] tmp_8_fu_454_p5;
wire   [2:0] tmp_8_fu_454_p7;
wire  signed [2:0] tmp_8_fu_454_p9;
wire  signed [2:0] tmp_8_fu_454_p11;
wire  signed [2:0] tmp_8_fu_454_p13;
wire  signed [2:0] tmp_8_fu_454_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_96 = 64'd0;
#0 i_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U732(.din0(d_biases2_0_q0),.din1(d_biases2_1_q0),.din2(d_biases2_2_q0),.din3(d_biases2_3_q0),.din4(d_biases2_4_q0),.din5(d_biases2_5_q0),.din6(d_biases2_6_q0),.din7(d_biases2_7_q0),.def(tmp_7_fu_379_p17),.sel(trunc_ln158_reg_541),.dout(tmp_7_fu_379_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U733(.din0(tmp_8_fu_454_p2),.din1(tmp_8_fu_454_p4),.din2(tmp_8_fu_454_p6),.din3(tmp_8_fu_454_p8),.din4(tmp_8_fu_454_p10),.din5(tmp_8_fu_454_p12),.din6(tmp_8_fu_454_p14),.din7(tmp_8_fu_454_p16),.def(tmp_8_fu_454_p17),.sel(trunc_ln158_reg_541_pp0_iter1_reg),.dout(tmp_8_fu_454_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_96 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bias_norm_fu_96 <= grp_fu_747_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_100 <= 7'd0;
    end else if (((icmp_ln158_reg_532 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_100 <= add_ln158_reg_536;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln158_reg_536 <= add_ln158_fu_339_p2;
        biases2_0_addr_reg_587 <= zext_ln121_fu_359_p1;
        biases2_0_addr_reg_587_pp0_iter1_reg <= biases2_0_addr_reg_587;
        biases2_0_addr_reg_587_pp0_iter2_reg <= biases2_0_addr_reg_587_pp0_iter1_reg;
        biases2_1_addr_reg_592 <= zext_ln121_fu_359_p1;
        biases2_1_addr_reg_592_pp0_iter1_reg <= biases2_1_addr_reg_592;
        biases2_1_addr_reg_592_pp0_iter2_reg <= biases2_1_addr_reg_592_pp0_iter1_reg;
        biases2_2_addr_reg_597 <= zext_ln121_fu_359_p1;
        biases2_2_addr_reg_597_pp0_iter1_reg <= biases2_2_addr_reg_597;
        biases2_2_addr_reg_597_pp0_iter2_reg <= biases2_2_addr_reg_597_pp0_iter1_reg;
        biases2_3_addr_reg_602 <= zext_ln121_fu_359_p1;
        biases2_3_addr_reg_602_pp0_iter1_reg <= biases2_3_addr_reg_602;
        biases2_3_addr_reg_602_pp0_iter2_reg <= biases2_3_addr_reg_602_pp0_iter1_reg;
        biases2_4_addr_reg_607 <= zext_ln121_fu_359_p1;
        biases2_4_addr_reg_607_pp0_iter1_reg <= biases2_4_addr_reg_607;
        biases2_4_addr_reg_607_pp0_iter2_reg <= biases2_4_addr_reg_607_pp0_iter1_reg;
        biases2_5_addr_reg_612 <= zext_ln121_fu_359_p1;
        biases2_5_addr_reg_612_pp0_iter1_reg <= biases2_5_addr_reg_612;
        biases2_5_addr_reg_612_pp0_iter2_reg <= biases2_5_addr_reg_612_pp0_iter1_reg;
        biases2_6_addr_reg_617 <= zext_ln121_fu_359_p1;
        biases2_6_addr_reg_617_pp0_iter1_reg <= biases2_6_addr_reg_617;
        biases2_6_addr_reg_617_pp0_iter2_reg <= biases2_6_addr_reg_617_pp0_iter1_reg;
        biases2_7_addr_reg_622 <= zext_ln121_fu_359_p1;
        biases2_7_addr_reg_622_pp0_iter1_reg <= biases2_7_addr_reg_622;
        biases2_7_addr_reg_622_pp0_iter2_reg <= biases2_7_addr_reg_622_pp0_iter1_reg;
        icmp_ln158_reg_532 <= icmp_ln158_fu_333_p2;
        icmp_ln158_reg_532_pp0_iter1_reg <= icmp_ln158_reg_532;
        icmp_ln158_reg_532_pp0_iter2_reg <= icmp_ln158_reg_532_pp0_iter1_reg;
        icmp_ln158_reg_532_pp0_iter3_reg <= icmp_ln158_reg_532_pp0_iter2_reg;
        trunc_ln158_reg_541 <= trunc_ln158_fu_345_p1;
        trunc_ln158_reg_541_pp0_iter1_reg <= trunc_ln158_reg_541;
        trunc_ln158_reg_541_pp0_iter2_reg <= trunc_ln158_reg_541_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul3_reg_632 <= grp_fu_751_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul6_reg_649 <= grp_fu_751_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub2_reg_642 <= grp_fu_747_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_7_reg_627 <= tmp_7_fu_379_p19;
        tmp_8_reg_637 <= tmp_8_fu_454_p19;
    end
end
always @ (*) begin
    if (((icmp_ln158_reg_532 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln158_reg_532_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_bias_norm_load_1 = grp_fu_747_p_dout0;
    end else begin
        ap_sig_allocacmp_bias_norm_load_1 = bias_norm_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln158_reg_532_pp0_iter3_reg == 1'd1))) begin
        bias_norm_4_out_ap_vld = 1'b1;
    end else begin
        bias_norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_address0_local = biases2_0_addr_reg_587_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address0_local = biases2_0_addr_reg_587;
    end else begin
        biases2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd0))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_1_address0_local = biases2_1_addr_reg_592_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address0_local = biases2_1_addr_reg_592;
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd1))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_2_address0_local = biases2_2_addr_reg_597_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_address0_local = biases2_2_addr_reg_597;
    end else begin
        biases2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd2))) begin
        biases2_2_we0_local = 1'b1;
    end else begin
        biases2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_3_address0_local = biases2_3_addr_reg_602_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_address0_local = biases2_3_addr_reg_602;
    end else begin
        biases2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd3))) begin
        biases2_3_we0_local = 1'b1;
    end else begin
        biases2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_4_address0_local = biases2_4_addr_reg_607_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_address0_local = biases2_4_addr_reg_607;
    end else begin
        biases2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd4))) begin
        biases2_4_we0_local = 1'b1;
    end else begin
        biases2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_5_address0_local = biases2_5_addr_reg_612_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_address0_local = biases2_5_addr_reg_612;
    end else begin
        biases2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd5))) begin
        biases2_5_we0_local = 1'b1;
    end else begin
        biases2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_6_address0_local = biases2_6_addr_reg_617_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_address0_local = biases2_6_addr_reg_617;
    end else begin
        biases2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd6))) begin
        biases2_6_we0_local = 1'b1;
    end else begin
        biases2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_7_address0_local = biases2_7_addr_reg_622_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_address0_local = biases2_7_addr_reg_622;
    end else begin
        biases2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln158_reg_541_pp0_iter2_reg == 3'd7))) begin
        biases2_7_we0_local = 1'b1;
    end else begin
        biases2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_0_ce0_local = 1'b1;
    end else begin
        d_biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_1_ce0_local = 1'b1;
    end else begin
        d_biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_2_ce0_local = 1'b1;
    end else begin
        d_biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_3_ce0_local = 1'b1;
    end else begin
        d_biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_4_ce0_local = 1'b1;
    end else begin
        d_biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_5_ce0_local = 1'b1;
    end else begin
        d_biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_6_ce0_local = 1'b1;
    end else begin
        d_biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases2_7_ce0_local = 1'b1;
    end else begin
        d_biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_opcode = 2'd0;
    end else begin
        grp_fu_311_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p0 = ap_sig_allocacmp_bias_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p0 = tmp_8_reg_637;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p1 = mul6_reg_649;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p1 = mul3_reg_632;
    end else begin
        grp_fu_311_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p0 = sub2_reg_642;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p0 = tmp_7_reg_627;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p1 = sub2_reg_642;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_315_p1 = 'bx;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln158_fu_339_p2 = (ap_sig_allocacmp_i_2 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bias_norm_4_out = bias_norm_fu_96;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_2_address0 = biases2_2_address0_local;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_2_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_2_we0 = biases2_2_we0_local;
assign biases2_3_address0 = biases2_3_address0_local;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_3_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_3_we0 = biases2_3_we0_local;
assign biases2_4_address0 = biases2_4_address0_local;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_4_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_4_we0 = biases2_4_we0_local;
assign biases2_5_address0 = biases2_5_address0_local;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_5_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_5_we0 = biases2_5_we0_local;
assign biases2_6_address0 = biases2_6_address0_local;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_6_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_6_we0 = biases2_6_we0_local;
assign biases2_7_address0 = biases2_7_address0_local;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_7_d0 = bitcast_ln159_8_fu_493_p1;
assign biases2_7_we0 = biases2_7_we0_local;
assign bitcast_ln159_8_fu_493_p1 = sub2_reg_642;
assign d_biases2_0_address0 = zext_ln121_fu_359_p1;
assign d_biases2_0_ce0 = d_biases2_0_ce0_local;
assign d_biases2_1_address0 = zext_ln121_fu_359_p1;
assign d_biases2_1_ce0 = d_biases2_1_ce0_local;
assign d_biases2_2_address0 = zext_ln121_fu_359_p1;
assign d_biases2_2_ce0 = d_biases2_2_ce0_local;
assign d_biases2_3_address0 = zext_ln121_fu_359_p1;
assign d_biases2_3_ce0 = d_biases2_3_ce0_local;
assign d_biases2_4_address0 = zext_ln121_fu_359_p1;
assign d_biases2_4_ce0 = d_biases2_4_ce0_local;
assign d_biases2_5_address0 = zext_ln121_fu_359_p1;
assign d_biases2_5_ce0 = d_biases2_5_ce0_local;
assign d_biases2_6_address0 = zext_ln121_fu_359_p1;
assign d_biases2_6_ce0 = d_biases2_6_ce0_local;
assign d_biases2_7_address0 = zext_ln121_fu_359_p1;
assign d_biases2_7_ce0 = d_biases2_7_ce0_local;
assign grp_fu_747_p_ce = 1'b1;
assign grp_fu_747_p_din0 = grp_fu_311_p0;
assign grp_fu_747_p_din1 = grp_fu_311_p1;
assign grp_fu_747_p_opcode = grp_fu_311_opcode;
assign grp_fu_751_p_ce = 1'b1;
assign grp_fu_751_p_din0 = grp_fu_315_p0;
assign grp_fu_751_p_din1 = grp_fu_315_p1;
assign icmp_ln158_fu_333_p2 = ((ap_sig_allocacmp_i_2 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln121_2_fu_349_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign tmp_7_fu_379_p17 = 'bx;
assign tmp_8_fu_454_p10 = biases2_4_q0;
assign tmp_8_fu_454_p12 = biases2_5_q0;
assign tmp_8_fu_454_p14 = biases2_6_q0;
assign tmp_8_fu_454_p16 = biases2_7_q0;
assign tmp_8_fu_454_p17 = 'bx;
assign tmp_8_fu_454_p2 = biases2_0_q0;
assign tmp_8_fu_454_p4 = biases2_1_q0;
assign tmp_8_fu_454_p6 = biases2_2_q0;
assign tmp_8_fu_454_p8 = biases2_3_q0;
assign trunc_ln158_fu_345_p1 = ap_sig_allocacmp_i_2[2:0];
assign zext_ln121_fu_359_p1 = lshr_ln121_2_fu_349_p4;
endmodule 
