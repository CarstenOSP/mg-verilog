
module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,delta_weights3_address1,delta_weights3_ce1,delta_weights3_we1,delta_weights3_d1,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [5:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [5:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [5:0] delta_weights3_address1;
output   delta_weights3_ce1;
output   delta_weights3_we1;
output  [63:0] delta_weights3_d1;
output  [3:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [3:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [3:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [3:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
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
wire   [0:0] tmp_fu_311_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_7_reg_524;
reg   [6:0] i_7_reg_524_pp0_iter1_reg;
reg   [6:0] i_7_reg_524_pp0_iter2_reg;
reg   [6:0] i_7_reg_524_pp0_iter3_reg;
reg   [6:0] i_7_reg_524_pp0_iter4_reg;
reg   [6:0] i_7_reg_524_pp0_iter5_reg;
reg   [6:0] i_7_reg_524_pp0_iter6_reg;
reg   [6:0] i_7_reg_524_pp0_iter7_reg;
wire   [63:0] tmp_76_fu_357_p3;
reg   [63:0] tmp_76_reg_555;
wire   [63:0] tmp_77_fu_365_p3;
reg   [63:0] tmp_77_reg_562;
wire   [0:0] icmp_ln75_fu_373_p2;
reg   [0:0] icmp_ln75_reg_569;
reg   [0:0] icmp_ln75_reg_569_pp0_iter2_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter3_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter4_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter5_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter6_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter7_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter8_reg;
reg   [0:0] icmp_ln75_reg_569_pp0_iter9_reg;
wire   [7:0] sub_ln75_fu_393_p2;
reg   [7:0] sub_ln75_reg_573;
reg   [5:0] lshr_ln1_reg_581;
wire   [63:0] grp_fu_279_p2;
reg   [63:0] mul_i3_reg_586;
wire   [63:0] grp_fu_283_p2;
reg   [63:0] mul_16_i_reg_592;
wire   [63:0] grp_fu_287_p2;
reg   [63:0] mul_2_i_reg_598;
wire   [63:0] grp_fu_291_p2;
reg   [63:0] mul_1_i_reg_604;
wire   [63:0] grp_fu_295_p2;
reg   [63:0] mul_1_1_i_reg_610;
reg   [63:0] mul_1_1_i_reg_610_pp0_iter9_reg;
wire   [63:0] grp_fu_299_p2;
reg   [63:0] mul_1_2_i_reg_616;
reg   [63:0] mul_1_2_i_reg_616_pp0_iter9_reg;
reg   [5:0] delta_weights3_2_addr_2_reg_622;
reg   [5:0] lshr_ln75_4_reg_627;
wire   [63:0] zext_ln72_fu_329_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_409_p1;
wire   [63:0] zext_ln75_2_fu_431_p1;
wire   [63:0] zext_ln75_3_fu_452_p1;
wire   [63:0] zext_ln75_4_fu_473_p1;
wire   [63:0] zext_ln75_5_fu_494_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln73_fu_337_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [5:0] delta_weights3_address0_local;
reg    delta_weights3_we1_local;
reg    delta_weights3_ce1_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [5:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [5:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [5:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
wire   [3:0] lshr_ln_fu_319_p4;
wire   [1:0] trunc_ln73_fu_348_p1;
wire   [0:0] empty_fu_351_p2;
wire   [5:0] trunc_ln75_fu_382_p1;
wire   [7:0] p_shl_fu_385_p3;
wire   [7:0] zext_ln75_fu_379_p1;
wire   [7:0] add_ln75_fu_416_p2;
wire   [5:0] lshr_ln75_1_fu_421_p4;
wire   [7:0] empty_89_fu_437_p2;
wire   [5:0] lshr_ln75_2_fu_442_p4;
wire   [7:0] add_ln75_1_fu_458_p2;
wire   [5:0] lshr_ln75_3_fu_463_p4;
wire   [7:0] add_ln75_2_fu_479_p2;
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
#0 i_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U234(.clk(ap_clk),.reset(ap_rst),.din0(tmp_76_reg_555),.din1(p_reload86),.ce(1'b1),.dout(grp_fu_279_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U235(.clk(ap_clk),.reset(ap_rst),.din0(tmp_76_reg_555),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_283_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U236(.clk(ap_clk),.reset(ap_rst),.din0(tmp_76_reg_555),.din1(p_reload),.ce(1'b1),.dout(grp_fu_287_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U237(.clk(ap_clk),.reset(ap_rst),.din0(tmp_77_reg_562),.din1(p_reload86),.ce(1'b1),.dout(grp_fu_291_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U238(.clk(ap_clk),.reset(ap_rst),.din0(tmp_77_reg_562),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_295_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U239(.clk(ap_clk),.reset(ap_rst),.din0(tmp_77_reg_562),.din1(p_reload),.ce(1'b1),.dout(grp_fu_299_p2));
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
        if (((tmp_fu_311_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_74 <= add_ln73_fu_337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_74 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_7_reg_524 <= ap_sig_allocacmp_i_7;
        i_7_reg_524_pp0_iter1_reg <= i_7_reg_524;
        icmp_ln75_reg_569 <= icmp_ln75_fu_373_p2;
        tmp_76_reg_555 <= tmp_76_fu_357_p3;
        tmp_77_reg_562 <= tmp_77_fu_365_p3;
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
        delta_weights3_2_addr_2_reg_622 <= zext_ln75_4_fu_473_p1;
        i_7_reg_524_pp0_iter2_reg <= i_7_reg_524_pp0_iter1_reg;
        i_7_reg_524_pp0_iter3_reg <= i_7_reg_524_pp0_iter2_reg;
        i_7_reg_524_pp0_iter4_reg <= i_7_reg_524_pp0_iter3_reg;
        i_7_reg_524_pp0_iter5_reg <= i_7_reg_524_pp0_iter4_reg;
        i_7_reg_524_pp0_iter6_reg <= i_7_reg_524_pp0_iter5_reg;
        i_7_reg_524_pp0_iter7_reg <= i_7_reg_524_pp0_iter6_reg;
        icmp_ln75_reg_569_pp0_iter2_reg <= icmp_ln75_reg_569;
        icmp_ln75_reg_569_pp0_iter3_reg <= icmp_ln75_reg_569_pp0_iter2_reg;
        icmp_ln75_reg_569_pp0_iter4_reg <= icmp_ln75_reg_569_pp0_iter3_reg;
        icmp_ln75_reg_569_pp0_iter5_reg <= icmp_ln75_reg_569_pp0_iter4_reg;
        icmp_ln75_reg_569_pp0_iter6_reg <= icmp_ln75_reg_569_pp0_iter5_reg;
        icmp_ln75_reg_569_pp0_iter7_reg <= icmp_ln75_reg_569_pp0_iter6_reg;
        icmp_ln75_reg_569_pp0_iter8_reg <= icmp_ln75_reg_569_pp0_iter7_reg;
        icmp_ln75_reg_569_pp0_iter9_reg <= icmp_ln75_reg_569_pp0_iter8_reg;
        lshr_ln1_reg_581 <= {{sub_ln75_fu_393_p2[7:2]}};
        lshr_ln75_4_reg_627 <= {{add_ln75_2_fu_479_p2[7:2]}};
        mul_16_i_reg_592 <= grp_fu_283_p2;
        mul_1_1_i_reg_610 <= grp_fu_295_p2;
        mul_1_1_i_reg_610_pp0_iter9_reg <= mul_1_1_i_reg_610;
        mul_1_2_i_reg_616 <= grp_fu_299_p2;
        mul_1_2_i_reg_616_pp0_iter9_reg <= mul_1_2_i_reg_616;
        mul_1_i_reg_604 <= grp_fu_291_p2;
        mul_2_i_reg_598 <= grp_fu_287_p2;
        mul_i3_reg_586 <= grp_fu_279_p2;
        sub_ln75_reg_573 <= sub_ln75_fu_393_p2;
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
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_311_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_address1_local = zext_ln75_1_fu_409_p1;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_address1_local = zext_ln75_3_fu_452_p1;
        end else begin
            delta_weights3_1_address1_local = 'bx;
        end
    end else begin
        delta_weights3_1_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_d1_local = mul_16_i_reg_592;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_d1_local = mul_1_i_reg_604;
        end else begin
            delta_weights3_1_d1_local = 'bx;
        end
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_569_pp0_iter9_reg == 1'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_address1_local = zext_ln75_2_fu_431_p1;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_address1_local = zext_ln75_1_fu_409_p1;
        end else begin
            delta_weights3_2_address1_local = 'bx;
        end
    end else begin
        delta_weights3_2_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_d1_local = mul_2_i_reg_598;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_d1_local = mul_i3_reg_586;
        end else begin
            delta_weights3_2_d1_local = 'bx;
        end
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_569_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_address1_local = zext_ln75_3_fu_452_p1;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_409_p1;
        end else begin
            delta_weights3_3_address1_local = 'bx;
        end
    end else begin
        delta_weights3_3_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_d1_local = mul_1_i_reg_604;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_d1_local = mul_16_i_reg_592;
        end else begin
            delta_weights3_3_d1_local = 'bx;
        end
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_569_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_address0_local = zext_ln75_4_fu_473_p1;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_431_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_ce1_local = 1'b1;
    end else begin
        delta_weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_610;
        end else if ((icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_d0_local = mul_2_i_reg_598;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_569_pp0_iter8_reg == 1'd1))) begin
        delta_weights3_we1_local = 1'b1;
    end else begin
        delta_weights3_we1_local = 1'b0;
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
assign activations2_1_address0 = zext_ln72_fu_329_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_329_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_329_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_address0 = zext_ln72_fu_329_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_fu_337_p2 = (ap_sig_allocacmp_i_7 + 7'd2);
assign add_ln75_1_fu_458_p2 = (sub_ln75_reg_573 + 8'd4);
assign add_ln75_2_fu_479_p2 = (sub_ln75_reg_573 + 8'd5);
assign add_ln75_fu_416_p2 = (sub_ln75_reg_573 + 8'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = zext_ln75_5_fu_494_p1;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_1_2_i_reg_616_pp0_iter9_reg;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_addr_2_reg_622;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_1_1_i_reg_610_pp0_iter9_reg;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = zext_ln75_5_fu_494_p1;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_1_2_i_reg_616_pp0_iter9_reg;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_address1 = zext_ln75_1_fu_409_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_ce1 = delta_weights3_ce1_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_d1 = mul_i3_reg_586;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign delta_weights3_we1 = delta_weights3_we1_local;
assign empty_89_fu_437_p2 = (sub_ln75_reg_573 + 8'd3);
assign empty_fu_351_p2 = ((trunc_ln73_fu_348_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln75_fu_373_p2 = ((trunc_ln73_fu_348_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln75_1_fu_421_p4 = {{add_ln75_fu_416_p2[7:2]}};
assign lshr_ln75_2_fu_442_p4 = {{empty_89_fu_437_p2[7:2]}};
assign lshr_ln75_3_fu_463_p4 = {{add_ln75_1_fu_458_p2[7:2]}};
assign lshr_ln_fu_319_p4 = {{ap_sig_allocacmp_i_7[5:2]}};
assign p_shl_fu_385_p3 = {{trunc_ln75_fu_382_p1}, {2'd0}};
assign sub_ln75_fu_393_p2 = (p_shl_fu_385_p3 - zext_ln75_fu_379_p1);
assign tmp_76_fu_357_p3 = ((empty_fu_351_p2[0:0] == 1'b1) ? activations2_2_q0 : activations2_q0);
assign tmp_77_fu_365_p3 = ((empty_fu_351_p2[0:0] == 1'b1) ? activations2_3_q0 : activations2_1_q0);
assign tmp_fu_311_p3 = ap_sig_allocacmp_i_7[32'd6];
assign trunc_ln73_fu_348_p1 = i_7_reg_524[1:0];
assign trunc_ln75_fu_382_p1 = i_7_reg_524_pp0_iter7_reg[5:0];
assign zext_ln72_fu_329_p1 = lshr_ln_fu_319_p4;
assign zext_ln75_1_fu_409_p1 = lshr_ln1_reg_581;
assign zext_ln75_2_fu_431_p1 = lshr_ln75_1_fu_421_p4;
assign zext_ln75_3_fu_452_p1 = lshr_ln75_2_fu_442_p4;
assign zext_ln75_4_fu_473_p1 = lshr_ln75_3_fu_463_p4;
assign zext_ln75_5_fu_494_p1 = lshr_ln75_4_reg_627;
assign zext_ln75_fu_379_p1 = i_7_reg_524_pp0_iter7_reg;
endmodule 
