
module backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_address0,activations2_ce0,activations2_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,mux_case_04273_reload,mux_case_14378_reload,mux_case_24483_reload,grp_fu_8582_p_din0,grp_fu_8582_p_din1,grp_fu_8582_p_dout0,grp_fu_8582_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [2:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [2:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [2:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [2:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [2:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [2:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [2:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [4:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [4:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
input  [63:0] mux_case_04273_reload;
input  [63:0] mux_case_14378_reload;
input  [63:0] mux_case_24483_reload;
output  [63:0] grp_fu_8582_p_din0;
output  [63:0] grp_fu_8582_p_din1;
input  [63:0] grp_fu_8582_p_dout0;
output   grp_fu_8582_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln73_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln72_fu_401_p3;
reg   [1:0] select_ln72_reg_617;
wire   [2:0] trunc_ln73_fu_427_p1;
reg   [2:0] trunc_ln73_reg_622;
wire   [2:0] trunc_ln75_fu_481_p1;
reg   [2:0] trunc_ln75_reg_667;
reg   [2:0] trunc_ln75_reg_667_pp0_iter2_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter3_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter4_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter5_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter6_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter7_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter8_reg;
reg   [2:0] trunc_ln75_reg_667_pp0_iter9_reg;
reg   [4:0] lshr_ln7_reg_671;
reg   [4:0] lshr_ln7_reg_671_pp0_iter2_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter3_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter4_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter5_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter6_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter7_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter8_reg;
reg   [4:0] lshr_ln7_reg_671_pp0_iter9_reg;
wire   [63:0] tmp_s_fu_511_p19;
reg   [63:0] tmp_s_reg_676;
wire   [63:0] tmp_25_fu_550_p9;
reg   [63:0] tmp_25_reg_681;
reg   [63:0] mul_i3_reg_686;
wire   [63:0] zext_ln72_fu_441_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_566_p1;
reg   [1:0] j_fu_112;
wire   [1:0] add_ln74_fu_495_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_116;
wire   [6:0] select_ln73_fu_415_p3;
reg   [7:0] indvar_flatten_fu_120;
wire   [7:0] add_ln73_fu_378_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    activations2_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_7_ce0_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
wire   [0:0] icmp_ln74_fu_395_p2;
wire   [6:0] add_ln73_1_fu_409_p2;
wire   [2:0] lshr_ln6_fu_431_p4;
wire   [5:0] trunc_ln74_fu_453_p1;
wire   [7:0] p_shl_fu_457_p3;
wire   [7:0] zext_ln74_fu_423_p1;
wire   [7:0] zext_ln74_1_fu_471_p1;
wire   [7:0] sub_ln74_fu_465_p2;
wire   [7:0] add_ln75_fu_475_p2;
wire   [63:0] tmp_s_fu_511_p17;
wire   [63:0] tmp_25_fu_550_p7;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_s_fu_511_p1;
wire   [2:0] tmp_s_fu_511_p3;
wire   [2:0] tmp_s_fu_511_p5;
wire   [2:0] tmp_s_fu_511_p7;
wire  signed [2:0] tmp_s_fu_511_p9;
wire  signed [2:0] tmp_s_fu_511_p11;
wire  signed [2:0] tmp_s_fu_511_p13;
wire  signed [2:0] tmp_s_fu_511_p15;
wire   [1:0] tmp_25_fu_550_p1;
wire   [1:0] tmp_25_fu_550_p3;
wire  signed [1:0] tmp_25_fu_550_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 j_fu_112 = 2'd0;
#0 i_fu_116 = 7'd0;
#0 indvar_flatten_fu_120 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U457(.din0(activations2_q0),.din1(activations2_1_q0),.din2(activations2_2_q0),.din3(activations2_3_q0),.din4(activations2_4_q0),.din5(activations2_5_q0),.din6(activations2_6_q0),.din7(activations2_7_q0),.def(tmp_s_fu_511_p17),.sel(trunc_ln73_reg_622),.dout(tmp_s_fu_511_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U458(.din0(mux_case_04273_reload),.din1(mux_case_14378_reload),.din2(mux_case_24483_reload),.def(tmp_25_fu_550_p7),.sel(select_ln72_reg_617),.dout(tmp_25_fu_550_p9));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_116 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_116 <= select_ln73_fu_415_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_372_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_120 <= add_ln73_fu_378_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_112 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_112 <= add_ln74_fu_495_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln7_reg_671 <= {{add_ln75_fu_475_p2[7:3]}};
        select_ln72_reg_617 <= select_ln72_fu_401_p3;
        trunc_ln73_reg_622 <= trunc_ln73_fu_427_p1;
        trunc_ln75_reg_667 <= trunc_ln75_fu_481_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln7_reg_671_pp0_iter2_reg <= lshr_ln7_reg_671;
        lshr_ln7_reg_671_pp0_iter3_reg <= lshr_ln7_reg_671_pp0_iter2_reg;
        lshr_ln7_reg_671_pp0_iter4_reg <= lshr_ln7_reg_671_pp0_iter3_reg;
        lshr_ln7_reg_671_pp0_iter5_reg <= lshr_ln7_reg_671_pp0_iter4_reg;
        lshr_ln7_reg_671_pp0_iter6_reg <= lshr_ln7_reg_671_pp0_iter5_reg;
        lshr_ln7_reg_671_pp0_iter7_reg <= lshr_ln7_reg_671_pp0_iter6_reg;
        lshr_ln7_reg_671_pp0_iter8_reg <= lshr_ln7_reg_671_pp0_iter7_reg;
        lshr_ln7_reg_671_pp0_iter9_reg <= lshr_ln7_reg_671_pp0_iter8_reg;
        mul_i3_reg_686 <= grp_fu_8582_p_dout0;
        tmp_25_reg_681 <= tmp_25_fu_550_p9;
        tmp_s_reg_676 <= tmp_s_fu_511_p19;
        trunc_ln75_reg_667_pp0_iter2_reg <= trunc_ln75_reg_667;
        trunc_ln75_reg_667_pp0_iter3_reg <= trunc_ln75_reg_667_pp0_iter2_reg;
        trunc_ln75_reg_667_pp0_iter4_reg <= trunc_ln75_reg_667_pp0_iter3_reg;
        trunc_ln75_reg_667_pp0_iter5_reg <= trunc_ln75_reg_667_pp0_iter4_reg;
        trunc_ln75_reg_667_pp0_iter6_reg <= trunc_ln75_reg_667_pp0_iter5_reg;
        trunc_ln75_reg_667_pp0_iter7_reg <= trunc_ln75_reg_667_pp0_iter6_reg;
        trunc_ln75_reg_667_pp0_iter8_reg <= trunc_ln75_reg_667_pp0_iter7_reg;
        trunc_ln75_reg_667_pp0_iter9_reg <= trunc_ln75_reg_667_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln73_fu_372_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd2))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd3))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd4))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd5))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd6))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd7))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln75_reg_667_pp0_iter9_reg == 3'd0))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations2_1_address0 = zext_ln72_fu_441_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_441_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_441_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln72_fu_441_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln72_fu_441_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln72_fu_441_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln72_fu_441_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_address0 = zext_ln72_fu_441_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_1_fu_409_p2 = (i_fu_116 + 7'd1);
assign add_ln73_fu_378_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln74_fu_495_p2 = (select_ln72_fu_401_p3 + 2'd1);
assign add_ln75_fu_475_p2 = (zext_ln74_1_fu_471_p1 + sub_ln74_fu_465_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = mul_i3_reg_686;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = mul_i3_reg_686;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = mul_i3_reg_686;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = mul_i3_reg_686;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = mul_i3_reg_686;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = mul_i3_reg_686;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = mul_i3_reg_686;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_address0 = zext_ln75_fu_566_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = mul_i3_reg_686;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign grp_fu_8582_p_ce = 1'b1;
assign grp_fu_8582_p_din0 = tmp_s_reg_676;
assign grp_fu_8582_p_din1 = tmp_25_reg_681;
assign icmp_ln73_fu_372_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln74_fu_395_p2 = ((j_fu_112 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_431_p4 = {{select_ln73_fu_415_p3[5:3]}};
assign p_shl_fu_457_p3 = {{trunc_ln74_fu_453_p1}, {2'd0}};
assign select_ln72_fu_401_p3 = ((icmp_ln74_fu_395_p2[0:0] == 1'b1) ? 2'd0 : j_fu_112);
assign select_ln73_fu_415_p3 = ((icmp_ln74_fu_395_p2[0:0] == 1'b1) ? add_ln73_1_fu_409_p2 : i_fu_116);
assign sub_ln74_fu_465_p2 = (p_shl_fu_457_p3 - zext_ln74_fu_423_p1);
assign tmp_25_fu_550_p7 = 'bx;
assign tmp_s_fu_511_p17 = 'bx;
assign trunc_ln73_fu_427_p1 = select_ln73_fu_415_p3[2:0];
assign trunc_ln74_fu_453_p1 = select_ln73_fu_415_p3[5:0];
assign trunc_ln75_fu_481_p1 = add_ln75_fu_475_p2[2:0];
assign zext_ln72_fu_441_p1 = lshr_ln6_fu_431_p4;
assign zext_ln74_1_fu_471_p1 = select_ln72_fu_401_p3;
assign zext_ln74_fu_423_p1 = select_ln73_fu_415_p3;
assign zext_ln75_fu_566_p1 = lshr_ln7_reg_671_pp0_iter9_reg;
endmodule 
