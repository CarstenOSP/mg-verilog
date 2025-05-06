
module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_4181_p_din0,grp_fu_4181_p_din1,grp_fu_4181_p_opcode,grp_fu_4181_p_dout0,grp_fu_4181_p_ce,grp_fu_2684_p_din0,grp_fu_2684_p_din1,grp_fu_2684_p_dout0,grp_fu_2684_p_ce);  
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
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [2:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [2:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [2:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [2:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [2:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [2:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [2:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [2:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
output  [63:0] grp_fu_4181_p_din0;
output  [63:0] grp_fu_4181_p_din1;
output  [0:0] grp_fu_4181_p_opcode;
input  [63:0] grp_fu_4181_p_dout0;
output   grp_fu_4181_p_ce;
output  [63:0] grp_fu_2684_p_din0;
output  [63:0] grp_fu_2684_p_din1;
input  [63:0] grp_fu_2684_p_dout0;
output   grp_fu_2684_p_ce;
reg ap_idle;
reg[63:0] activations3_10_out_o;
reg activations3_10_out_o_ap_vld;
reg[63:0] activations3_9_out_o;
reg activations3_9_out_o_ap_vld;
reg[63:0] activations3_8_out_o;
reg activations3_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln55_reg_846;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_426_p2;
wire   [0:0] tmp_fu_441_p3;
reg   [0:0] tmp_reg_850;
wire   [6:0] select_ln54_fu_449_p3;
reg   [6:0] select_ln54_reg_859;
wire   [2:0] trunc_ln57_fu_457_p1;
reg   [2:0] trunc_ln57_reg_864;
wire   [2:0] lshr_ln_fu_461_p4;
reg   [2:0] lshr_ln_reg_872;
wire   [1:0] select_ln55_3_fu_497_p3;
reg   [1:0] select_ln55_3_reg_917;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln55_3_reg_917_pp0_iter1_reg;
wire   [63:0] tmp_89_fu_523_p11;
reg   [63:0] tmp_89_reg_941;
wire   [63:0] tmp_91_fu_546_p11;
reg   [63:0] tmp_91_reg_966;
wire   [63:0] tmp_s_fu_590_p11;
reg   [63:0] tmp_s_reg_971;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_90_fu_629_p11;
reg   [63:0] tmp_90_reg_976;
reg   [63:0] mul8_i1_reg_981;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] select_ln54_1_fu_655_p3;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_1_i1_reg_991;
wire   [0:0] tmp_8_fu_710_p3;
reg   [0:0] tmp_8_reg_996;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] add11_i1_reg_1000;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln54_fu_471_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln58_fu_511_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] select_ln55_fu_684_p3;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage15;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_691_p3;
wire   [63:0] select_ln55_2_fu_698_p3;
reg   [63:0] add114_i77_fu_108;
wire    ap_block_pp0_stage10;
reg   [6:0] i_fu_112;
wire   [6:0] add_ln57_fu_705_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_fu_116;
reg   [63:0] activations3_fu_120;
reg   [63:0] activations3_1_fu_124;
reg   [63:0] activations3_2_fu_128;
reg   [6:0] indvar_flatten_fu_132;
wire   [6:0] add_ln55_fu_432_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_7_ce0_local;
reg    weights3_0_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_7_ce0_local;
reg   [63:0] grp_fu_362_p0;
reg   [63:0] grp_fu_362_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_366_p0;
reg   [63:0] grp_fu_366_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [1:0] add_ln55_1_fu_491_p2;
wire   [4:0] or_ln_fu_504_p3;
wire   [63:0] tmp_89_fu_523_p9;
wire   [63:0] tmp_91_fu_546_p9;
wire   [63:0] tmp_s_fu_590_p2;
wire   [63:0] tmp_s_fu_590_p4;
wire   [63:0] tmp_s_fu_590_p6;
wire   [63:0] tmp_s_fu_590_p8;
wire   [63:0] tmp_s_fu_590_p9;
wire   [63:0] tmp_90_fu_629_p2;
wire   [63:0] tmp_90_fu_629_p4;
wire   [63:0] tmp_90_fu_629_p6;
wire   [63:0] tmp_90_fu_629_p8;
wire   [63:0] tmp_90_fu_629_p9;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_89_fu_523_p1;
wire   [2:0] tmp_89_fu_523_p3;
wire  signed [2:0] tmp_89_fu_523_p5;
wire  signed [2:0] tmp_89_fu_523_p7;
wire   [2:0] tmp_91_fu_546_p1;
wire   [2:0] tmp_91_fu_546_p3;
wire  signed [2:0] tmp_91_fu_546_p5;
wire  signed [2:0] tmp_91_fu_546_p7;
wire   [2:0] tmp_s_fu_590_p1;
wire   [2:0] tmp_s_fu_590_p3;
wire  signed [2:0] tmp_s_fu_590_p5;
wire  signed [2:0] tmp_s_fu_590_p7;
wire   [2:0] tmp_90_fu_629_p1;
wire   [2:0] tmp_90_fu_629_p3;
wire  signed [2:0] tmp_90_fu_629_p5;
wire  signed [2:0] tmp_90_fu_629_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_108 = 64'd0;
#0 i_fu_112 = 7'd0;
#0 j_fu_116 = 2'd0;
#0 activations3_fu_120 = 64'd0;
#0 activations3_1_fu_124 = 64'd0;
#0 activations3_2_fu_128 = 64'd0;
#0 indvar_flatten_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U270(.din0(activations2_q0),.din1(activations2_2_q0),.din2(activations2_4_q0),.din3(activations2_6_q0),.def(tmp_89_fu_523_p9),.sel(trunc_ln57_reg_864),.dout(tmp_89_fu_523_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U271(.din0(activations2_1_q0),.din1(activations2_3_q0),.din2(activations2_5_q0),.din3(activations2_7_q0),.def(tmp_91_fu_546_p9),.sel(trunc_ln57_reg_864),.dout(tmp_91_fu_546_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U272(.din0(tmp_s_fu_590_p2),.din1(tmp_s_fu_590_p4),.din2(tmp_s_fu_590_p6),.din3(tmp_s_fu_590_p8),.def(tmp_s_fu_590_p9),.sel(trunc_ln57_reg_864),.dout(tmp_s_fu_590_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U273(.din0(tmp_90_fu_629_p2),.din1(tmp_90_fu_629_p4),.din2(tmp_90_fu_629_p6),.din3(tmp_90_fu_629_p8),.def(tmp_90_fu_629_p9),.sel(trunc_ln57_reg_864),.dout(tmp_90_fu_629_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_1_fu_124 <= activations3_load;
    end else if (((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_1_fu_124 <= select_ln55_1_fu_691_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_128 <= activations3_2_load;
    end else if (((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_2_fu_128 <= select_ln55_fu_684_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_120 <= activations3_1_load;
    end else if (((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_fu_120 <= select_ln55_2_fu_698_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_108 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add114_i77_fu_108 <= grp_fu_4181_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_112 <= 7'd0;
    end else if (((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_112 <= add_ln57_fu_705_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_426_p2 == 1'd0))) begin
            indvar_flatten_fu_132 <= add_ln55_fu_432_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_132 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_116 <= 2'd0;
    end else if (((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_116 <= select_ln55_3_fu_497_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_i1_reg_1000 <= grp_fu_4181_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_846 <= icmp_ln55_fu_426_p2;
        lshr_ln_reg_872 <= {{select_ln54_fu_449_p3[5:3]}};
        select_ln54_reg_859 <= select_ln54_fu_449_p3;
        tmp_reg_850 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_864 <= trunc_ln57_fu_457_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_1_i1_reg_991 <= grp_fu_2684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_i1_reg_981 <= grp_fu_2684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln55_3_reg_917 <= select_ln55_3_fu_497_p3;
        select_ln55_3_reg_917_pp0_iter1_reg <= select_ln55_3_reg_917;
        tmp_89_reg_941 <= tmp_89_fu_523_p11;
        tmp_91_reg_966 <= tmp_91_fu_546_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_8_reg_996 <= add_ln57_fu_705_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_90_reg_976 <= tmp_90_fu_629_p11;
        tmp_s_reg_971 <= tmp_s_fu_590_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_10_out_o = select_ln55_fu_684_p3;
    end else if ((~(select_ln55_3_reg_917_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_917_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        activations3_10_out_o = grp_fu_4181_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_917_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_917_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_917 == 2'd0) & ~(select_ln55_3_reg_917 == 2'd1) & (icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_8_out_o = select_ln55_2_fu_698_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (select_ln55_3_reg_917_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        activations3_8_out_o = grp_fu_4181_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_917 == 2'd0) & ~(select_ln55_3_reg_917 == 2'd1) & (icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (select_ln55_3_reg_917_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_917 == 2'd0) & ~(select_ln55_3_reg_917 == 2'd1) & (icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_9_out_o = select_ln55_1_fu_691_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (select_ln55_3_reg_917_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        activations3_9_out_o = grp_fu_4181_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_917 == 2'd0) & ~(select_ln55_3_reg_917 == 2'd1) & (icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((icmp_ln55_reg_846 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_8_fu_710_p3 == 1'd1) & (select_ln55_3_reg_917 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_8_reg_996 == 1'd1) & (select_ln55_3_reg_917_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_846 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_362_p0 = add11_i1_reg_1000;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_362_p0 = select_ln54_1_fu_655_p3;
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_362_p1 = mul8_1_i1_reg_991;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_362_p1 = mul8_i1_reg_981;
    end else begin
        grp_fu_362_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_366_p0 = tmp_90_reg_976;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_366_p0 = tmp_s_reg_971;
        end else begin
            grp_fu_366_p0 = 'bx;
        end
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_366_p1 = tmp_91_reg_966;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_366_p1 = tmp_89_reg_941;
        end else begin
            grp_fu_366_p1 = 'bx;
        end
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign activations2_1_address0 = zext_ln54_fu_471_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_471_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_471_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln54_fu_471_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln54_fu_471_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln54_fu_471_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln54_fu_471_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_address0 = zext_ln54_fu_471_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_491_p2 = (j_fu_116 + 2'd1);
assign add_ln55_fu_432_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);
assign add_ln57_fu_705_p2 = (select_ln54_reg_859 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign grp_fu_2684_p_ce = 1'b1;
assign grp_fu_2684_p_din0 = grp_fu_366_p0;
assign grp_fu_2684_p_din1 = grp_fu_366_p1;
assign grp_fu_4181_p_ce = 1'b1;
assign grp_fu_4181_p_din0 = grp_fu_362_p0;
assign grp_fu_4181_p_din1 = grp_fu_362_p1;
assign grp_fu_4181_p_opcode = 2'd0;
assign icmp_ln55_fu_426_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd96) ? 1'b1 : 1'b0);
assign lshr_ln_fu_461_p4 = {{select_ln54_fu_449_p3[5:3]}};
assign or_ln_fu_504_p3 = {{select_ln55_3_fu_497_p3}, {lshr_ln_reg_872}};
assign select_ln54_1_fu_655_p3 = ((tmp_reg_850[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_108);
assign select_ln54_fu_449_p3 = ((tmp_fu_441_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_691_p3 = ((tmp_reg_850[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_124);
assign select_ln55_2_fu_698_p3 = ((tmp_reg_850[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_120);
assign select_ln55_3_fu_497_p3 = ((tmp_reg_850[0:0] == 1'b1) ? add_ln55_1_fu_491_p2 : j_fu_116);
assign select_ln55_fu_684_p3 = ((tmp_reg_850[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_128);
assign tmp_89_fu_523_p9 = 'bx;
assign tmp_8_fu_710_p3 = add_ln57_fu_705_p2[32'd6];
assign tmp_90_fu_629_p2 = weights3_1_q0;
assign tmp_90_fu_629_p4 = weights3_3_q0;
assign tmp_90_fu_629_p6 = weights3_5_q0;
assign tmp_90_fu_629_p8 = weights3_7_q0;
assign tmp_90_fu_629_p9 = 'bx;
assign tmp_91_fu_546_p9 = 'bx;
assign tmp_fu_441_p3 = ap_sig_allocacmp_i_load[32'd6];
assign tmp_s_fu_590_p2 = weights3_0_q0;
assign tmp_s_fu_590_p4 = weights3_2_q0;
assign tmp_s_fu_590_p6 = weights3_4_q0;
assign tmp_s_fu_590_p8 = weights3_6_q0;
assign tmp_s_fu_590_p9 = 'bx;
assign trunc_ln57_fu_457_p1 = select_ln54_fu_449_p3[2:0];
assign weights3_0_address0 = zext_ln58_fu_511_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_511_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_511_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_511_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = zext_ln58_fu_511_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = zext_ln58_fu_511_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = zext_ln58_fu_511_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln58_fu_511_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign zext_ln54_fu_471_p1 = lshr_ln_fu_461_p4;
assign zext_ln58_fu_511_p1 = or_ln_fu_504_p3;
endmodule 
