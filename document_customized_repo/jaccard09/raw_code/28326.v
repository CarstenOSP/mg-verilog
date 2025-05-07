module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,delta_weights3_address1,delta_weights3_ce1,delta_weights3_we1,delta_weights3_d1,activations2_address0,activations2_ce0,activations2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,grp_fu_4289_p_din0,grp_fu_4289_p_din1,grp_fu_4289_p_dout0,grp_fu_4289_p_ce,grp_fu_4293_p_din0,grp_fu_4293_p_din1,grp_fu_4293_p_dout0,grp_fu_4293_p_ce,grp_fu_4297_p_din0,grp_fu_4297_p_din1,grp_fu_4297_p_dout0,grp_fu_4297_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [4:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [4:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [4:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [4:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [4:0] delta_weights3_address1;
output   delta_weights3_ce1;
output   delta_weights3_we1;
output  [63:0] delta_weights3_d1;
output  [2:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [2:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [2:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [2:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [2:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [2:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [2:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [2:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [63:0] grp_fu_4289_p_din0;
output  [63:0] grp_fu_4289_p_din1;
input  [63:0] grp_fu_4289_p_dout0;
output   grp_fu_4289_p_ce;
output  [63:0] grp_fu_4293_p_din0;
output  [63:0] grp_fu_4293_p_din1;
input  [63:0] grp_fu_4293_p_dout0;
output   grp_fu_4293_p_ce;
output  [63:0] grp_fu_4297_p_din0;
output  [63:0] grp_fu_4297_p_din1;
input  [63:0] grp_fu_4297_p_dout0;
output   grp_fu_4297_p_ce;
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
wire   [0:0] tmp_fu_551_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_6_reg_898;
reg   [6:0] i_6_reg_898_pp0_iter1_reg;
reg   [6:0] i_6_reg_898_pp0_iter2_reg;
reg   [6:0] i_6_reg_898_pp0_iter3_reg;
reg   [6:0] i_6_reg_898_pp0_iter4_reg;
reg   [6:0] i_6_reg_898_pp0_iter5_reg;
reg   [6:0] i_6_reg_898_pp0_iter6_reg;
reg   [6:0] i_6_reg_898_pp0_iter7_reg;
wire   [63:0] zext_ln72_fu_569_p1;
reg   [63:0] zext_ln72_reg_909;
wire   [0:0] empty_fu_593_p2;
reg   [0:0] empty_reg_945;
wire   [63:0] tmp_96_fu_599_p3;
reg   [63:0] tmp_96_reg_950;
wire   [63:0] tmp_97_fu_607_p3;
reg   [63:0] tmp_97_reg_967;
wire   [63:0] tmp_98_fu_615_p3;
reg   [63:0] tmp_98_reg_974;
wire   [0:0] icmp_ln75_fu_623_p2;
reg   [0:0] icmp_ln75_reg_981;
reg   [0:0] icmp_ln75_reg_981_pp0_iter2_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter3_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter4_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter5_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter6_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter7_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter8_reg;
reg   [0:0] icmp_ln75_reg_981_pp0_iter9_reg;
wire   [63:0] tmp_99_fu_629_p3;
reg   [63:0] tmp_99_reg_985;
reg   [4:0] lshr_ln9_reg_992;
reg   [63:0] mul_i3_reg_997;
reg   [63:0] mul_16_i_reg_1003;
reg   [63:0] mul_216_i_reg_1009;
reg   [5:0] tmp_s_reg_1015;
wire   [63:0] grp_fu_507_p2;
reg   [63:0] mul_1_i_reg_1020;
wire   [63:0] grp_fu_511_p2;
reg   [63:0] mul_1_1_i_reg_1026;
wire   [63:0] grp_fu_515_p2;
reg   [63:0] mul_1_2_i_reg_1032;
wire   [63:0] grp_fu_519_p2;
reg   [63:0] mul_2_i_reg_1038;
wire   [63:0] grp_fu_523_p2;
reg   [63:0] mul_2_1_i_reg_1044;
wire   [63:0] grp_fu_527_p2;
reg   [63:0] mul_2_2_i_reg_1050;
reg   [63:0] mul_2_2_i_reg_1050_pp0_iter9_reg;
wire   [7:0] tmp_24_fu_687_p3;
reg   [7:0] tmp_24_reg_1056;
reg   [4:0] delta_weights3_4_addr_2_reg_1063;
wire   [63:0] grp_fu_531_p2;
reg   [63:0] mul_3_i_reg_1068;
wire   [63:0] grp_fu_535_p2;
reg   [63:0] mul_3_1_i_reg_1074;
wire   [63:0] grp_fu_539_p2;
reg   [63:0] mul_3_2_i_reg_1080;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_676_p1;
wire   [63:0] zext_ln75_2_fu_710_p1;
wire   [63:0] zext_ln75_3_fu_732_p1;
wire   [63:0] zext_ln75_4_fu_754_p1;
wire   [63:0] zext_ln75_5_fu_776_p1;
wire   [63:0] zext_ln75_6_fu_798_p1;
wire   [63:0] zext_ln75_7_fu_819_p1;
wire   [63:0] zext_ln75_8_fu_840_p1;
wire   [63:0] zext_ln75_9_fu_861_p1;
reg   [6:0] i_fu_106;
wire   [6:0] add_ln73_fu_579_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_6;
reg    activations2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_7_ce0_local;
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [4:0] delta_weights3_address0_local;
reg    delta_weights3_we1_local;
reg    delta_weights3_ce1_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [4:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [4:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [4:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we1_local;
reg   [63:0] delta_weights3_4_d1_local;
reg    delta_weights3_4_ce1_local;
reg   [4:0] delta_weights3_4_address1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_5_we1_local;
reg   [63:0] delta_weights3_5_d1_local;
reg    delta_weights3_5_ce1_local;
reg   [4:0] delta_weights3_5_address1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg    delta_weights3_6_we1_local;
reg   [63:0] delta_weights3_6_d1_local;
reg    delta_weights3_6_ce1_local;
reg   [4:0] delta_weights3_6_address1_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg    delta_weights3_7_we1_local;
reg   [63:0] delta_weights3_7_d1_local;
reg    delta_weights3_7_ce1_local;
reg   [4:0] delta_weights3_7_address1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
wire   [2:0] lshr_ln8_fu_559_p4;
wire   [2:0] trunc_ln73_fu_590_p1;
wire   [5:0] trunc_ln75_fu_639_p1;
wire   [7:0] p_shl_fu_642_p3;
wire   [7:0] zext_ln75_fu_636_p1;
wire   [7:0] sub_ln75_fu_650_p2;
wire   [7:0] add_ln75_fu_694_p2;
wire   [4:0] lshr_ln75_1_fu_700_p4;
wire   [7:0] add_ln75_1_fu_716_p2;
wire   [4:0] lshr_ln75_2_fu_722_p4;
wire   [7:0] empty_143_fu_738_p2;
wire   [4:0] lshr_ln75_3_fu_744_p4;
wire   [7:0] add_ln75_2_fu_760_p2;
wire   [4:0] lshr_ln75_4_fu_766_p4;
wire   [7:0] add_ln75_3_fu_782_p2;
wire   [4:0] lshr_ln75_5_fu_788_p4;
wire   [7:0] empty_144_fu_804_p2;
wire   [4:0] lshr_ln75_6_fu_809_p4;
wire   [7:0] add_ln75_4_fu_825_p2;
wire   [4:0] lshr_ln75_7_fu_830_p4;
wire   [7:0] add_ln75_5_fu_846_p2;
wire   [4:0] lshr_ln75_8_fu_851_p4;
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
#0 i_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(tmp_97_reg_967),.din1(p_reload86),.ce(1'b1),.dout(grp_fu_507_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(tmp_97_reg_967),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_511_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(tmp_97_reg_967),.din1(p_reload),.ce(1'b1),.dout(grp_fu_515_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U344(.clk(ap_clk),.reset(ap_rst),.din0(tmp_98_reg_974),.din1(p_reload86),.ce(1'b1),.dout(grp_fu_519_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U345(.clk(ap_clk),.reset(ap_rst),.din0(tmp_98_reg_974),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_523_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U346(.clk(ap_clk),.reset(ap_rst),.din0(tmp_98_reg_974),.din1(p_reload),.ce(1'b1),.dout(grp_fu_527_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U347(.clk(ap_clk),.reset(ap_rst),.din0(tmp_99_reg_985),.din1(p_reload86),.ce(1'b1),.dout(grp_fu_531_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U348(.clk(ap_clk),.reset(ap_rst),.din0(tmp_99_reg_985),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_535_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U349(.clk(ap_clk),.reset(ap_rst),.din0(tmp_99_reg_985),.din1(p_reload),.ce(1'b1),.dout(grp_fu_539_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((tmp_fu_551_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_106 <= add_ln73_fu_579_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_945 <= empty_fu_593_p2;
        i_6_reg_898 <= ap_sig_allocacmp_i_6;
        i_6_reg_898_pp0_iter1_reg <= i_6_reg_898;
        icmp_ln75_reg_981 <= icmp_ln75_fu_623_p2;
        tmp_96_reg_950 <= tmp_96_fu_599_p3;
        tmp_97_reg_967 <= tmp_97_fu_607_p3;
        tmp_98_reg_974 <= tmp_98_fu_615_p3;
        zext_ln72_reg_909[2 : 0] <= zext_ln72_fu_569_p1[2 : 0];
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
        delta_weights3_4_addr_2_reg_1063 <= zext_ln75_6_fu_798_p1;
        i_6_reg_898_pp0_iter2_reg <= i_6_reg_898_pp0_iter1_reg;
        i_6_reg_898_pp0_iter3_reg <= i_6_reg_898_pp0_iter2_reg;
        i_6_reg_898_pp0_iter4_reg <= i_6_reg_898_pp0_iter3_reg;
        i_6_reg_898_pp0_iter5_reg <= i_6_reg_898_pp0_iter4_reg;
        i_6_reg_898_pp0_iter6_reg <= i_6_reg_898_pp0_iter5_reg;
        i_6_reg_898_pp0_iter7_reg <= i_6_reg_898_pp0_iter6_reg;
        icmp_ln75_reg_981_pp0_iter2_reg <= icmp_ln75_reg_981;
        icmp_ln75_reg_981_pp0_iter3_reg <= icmp_ln75_reg_981_pp0_iter2_reg;
        icmp_ln75_reg_981_pp0_iter4_reg <= icmp_ln75_reg_981_pp0_iter3_reg;
        icmp_ln75_reg_981_pp0_iter5_reg <= icmp_ln75_reg_981_pp0_iter4_reg;
        icmp_ln75_reg_981_pp0_iter6_reg <= icmp_ln75_reg_981_pp0_iter5_reg;
        icmp_ln75_reg_981_pp0_iter7_reg <= icmp_ln75_reg_981_pp0_iter6_reg;
        icmp_ln75_reg_981_pp0_iter8_reg <= icmp_ln75_reg_981_pp0_iter7_reg;
        icmp_ln75_reg_981_pp0_iter9_reg <= icmp_ln75_reg_981_pp0_iter8_reg;
        lshr_ln9_reg_992 <= {{sub_ln75_fu_650_p2[7:3]}};
        mul_16_i_reg_1003 <= grp_fu_4293_p_dout0;
        mul_1_1_i_reg_1026 <= grp_fu_511_p2;
        mul_1_2_i_reg_1032 <= grp_fu_515_p2;
        mul_1_i_reg_1020 <= grp_fu_507_p2;
        mul_216_i_reg_1009 <= grp_fu_4297_p_dout0;
        mul_2_1_i_reg_1044 <= grp_fu_523_p2;
        mul_2_2_i_reg_1050 <= grp_fu_527_p2;
        mul_2_2_i_reg_1050_pp0_iter9_reg <= mul_2_2_i_reg_1050;
        mul_2_i_reg_1038 <= grp_fu_519_p2;
        mul_3_1_i_reg_1074 <= grp_fu_535_p2;
        mul_3_2_i_reg_1080 <= grp_fu_539_p2;
        mul_3_i_reg_1068 <= grp_fu_531_p2;
        mul_i3_reg_997 <= grp_fu_4289_p_dout0;
        tmp_24_reg_1056[7 : 2] <= tmp_24_fu_687_p3[7 : 2];
        tmp_99_reg_985 <= tmp_99_fu_629_p3;
        tmp_s_reg_1015 <= {{sub_ln75_fu_650_p2[7:2]}};
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((tmp_fu_551_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_i_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_address1_local = zext_ln75_1_fu_676_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_address1_local = zext_ln75_3_fu_732_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_1_d1_local = mul_16_i_reg_1003;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_1_d1_local = mul_1_2_i_reg_1032;
        end else begin
            delta_weights3_1_d1_local = 'bx;
        end
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_address1_local = zext_ln75_1_fu_676_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_address1_local = zext_ln75_4_fu_754_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_2_d1_local = mul_216_i_reg_1009;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_2_d1_local = mul_2_i_reg_1038;
        end else begin
            delta_weights3_2_d1_local = 'bx;
        end
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_address1_local = zext_ln75_1_fu_676_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_address1_local = zext_ln75_5_fu_776_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_3_d1_local = mul_1_i_reg_1020;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_3_d1_local = mul_2_1_i_reg_1044;
        end else begin
            delta_weights3_3_d1_local = 'bx;
        end
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_address1_local = zext_ln75_2_fu_710_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_address1_local = zext_ln75_1_fu_676_p1;
        end else begin
            delta_weights3_4_address1_local = 'bx;
        end
    end else begin
        delta_weights3_4_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_4_d1_local = mul_1_1_i_reg_1026;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_4_d1_local = mul_i3_reg_997;
        end else begin
            delta_weights3_4_d1_local = 'bx;
        end
    end else begin
        delta_weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_address1_local = zext_ln75_3_fu_732_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_address1_local = zext_ln75_1_fu_676_p1;
        end else begin
            delta_weights3_5_address1_local = 'bx;
        end
    end else begin
        delta_weights3_5_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_5_d1_local = mul_1_2_i_reg_1032;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_5_d1_local = mul_16_i_reg_1003;
        end else begin
            delta_weights3_5_d1_local = 'bx;
        end
    end else begin
        delta_weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_address1_local = zext_ln75_4_fu_754_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_address1_local = zext_ln75_1_fu_676_p1;
        end else begin
            delta_weights3_6_address1_local = 'bx;
        end
    end else begin
        delta_weights3_6_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_6_d1_local = mul_2_i_reg_1038;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_6_d1_local = mul_216_i_reg_1009;
        end else begin
            delta_weights3_6_d1_local = 'bx;
        end
    end else begin
        delta_weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_address1_local = zext_ln75_5_fu_776_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_address1_local = zext_ln75_1_fu_676_p1;
        end else begin
            delta_weights3_7_address1_local = 'bx;
        end
    end else begin
        delta_weights3_7_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_7_d1_local = mul_2_1_i_reg_1044;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_7_d1_local = mul_1_i_reg_1020;
        end else begin
            delta_weights3_7_d1_local = 'bx;
        end
    end else begin
        delta_weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln75_reg_981_pp0_iter9_reg == 1'd0))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_address0_local = zext_ln75_6_fu_798_p1;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_710_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
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
        if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) begin
            delta_weights3_d0_local = mul_2_2_i_reg_1050;
        end else if ((icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_1026;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd0)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln75_reg_981_pp0_iter8_reg == 1'd1))) begin
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
assign activations2_1_address0 = zext_ln72_fu_569_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_569_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_reg_909;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln72_fu_569_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln72_fu_569_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln72_fu_569_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln72_reg_909;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_address0 = zext_ln72_fu_569_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_fu_579_p2 = (ap_sig_allocacmp_i_6 + 7'd4);
assign add_ln75_1_fu_716_p2 = (tmp_24_fu_687_p3 + 8'd2);
assign add_ln75_2_fu_760_p2 = (tmp_24_fu_687_p3 + 8'd4);
assign add_ln75_3_fu_782_p2 = (tmp_24_fu_687_p3 + 8'd5);
assign add_ln75_4_fu_825_p2 = (tmp_24_reg_1056 + 8'd7);
assign add_ln75_5_fu_846_p2 = (tmp_24_reg_1056 + 8'd8);
assign add_ln75_fu_694_p2 = (tmp_24_fu_687_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = zext_ln75_7_fu_819_p1;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_3_i_reg_1068;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = zext_ln75_8_fu_840_p1;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_3_1_i_reg_1074;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = zext_ln75_9_fu_861_p1;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_3_2_i_reg_1080;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_addr_2_reg_1063;
assign delta_weights3_4_address1 = delta_weights3_4_address1_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = mul_2_2_i_reg_1050_pp0_iter9_reg;
assign delta_weights3_4_d1 = delta_weights3_4_d1_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = zext_ln75_7_fu_819_p1;
assign delta_weights3_5_address1 = delta_weights3_5_address1_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = mul_3_i_reg_1068;
assign delta_weights3_5_d1 = delta_weights3_5_d1_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = zext_ln75_8_fu_840_p1;
assign delta_weights3_6_address1 = delta_weights3_6_address1_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = mul_3_1_i_reg_1074;
assign delta_weights3_6_d1 = delta_weights3_6_d1_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = zext_ln75_9_fu_861_p1;
assign delta_weights3_7_address1 = delta_weights3_7_address1_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_3_2_i_reg_1080;
assign delta_weights3_7_d1 = delta_weights3_7_d1_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_address1 = zext_ln75_1_fu_676_p1;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_ce1 = delta_weights3_ce1_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_d1 = mul_i3_reg_997;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign delta_weights3_we1 = delta_weights3_we1_local;
assign empty_143_fu_738_p2 = (tmp_24_fu_687_p3 + 8'd3);
assign empty_144_fu_804_p2 = (tmp_24_reg_1056 + 8'd6);
assign empty_fu_593_p2 = ((trunc_ln73_fu_590_p1 != 3'd0) ? 1'b1 : 1'b0);
assign grp_fu_4289_p_ce = 1'b1;
assign grp_fu_4289_p_din0 = tmp_96_reg_950;
assign grp_fu_4289_p_din1 = p_reload86;
assign grp_fu_4293_p_ce = 1'b1;
assign grp_fu_4293_p_din0 = tmp_96_reg_950;
assign grp_fu_4293_p_din1 = p_reload85;
assign grp_fu_4297_p_ce = 1'b1;
assign grp_fu_4297_p_din0 = tmp_96_reg_950;
assign grp_fu_4297_p_din1 = p_reload;
assign icmp_ln75_fu_623_p2 = ((trunc_ln73_fu_590_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln75_1_fu_700_p4 = {{add_ln75_fu_694_p2[7:3]}};
assign lshr_ln75_2_fu_722_p4 = {{add_ln75_1_fu_716_p2[7:3]}};
assign lshr_ln75_3_fu_744_p4 = {{empty_143_fu_738_p2[7:3]}};
assign lshr_ln75_4_fu_766_p4 = {{add_ln75_2_fu_760_p2[7:3]}};
assign lshr_ln75_5_fu_788_p4 = {{add_ln75_3_fu_782_p2[7:3]}};
assign lshr_ln75_6_fu_809_p4 = {{empty_144_fu_804_p2[7:3]}};
assign lshr_ln75_7_fu_830_p4 = {{add_ln75_4_fu_825_p2[7:3]}};
assign lshr_ln75_8_fu_851_p4 = {{add_ln75_5_fu_846_p2[7:3]}};
assign lshr_ln8_fu_559_p4 = {{ap_sig_allocacmp_i_6[5:3]}};
assign p_shl_fu_642_p3 = {{trunc_ln75_fu_639_p1}, {2'd0}};
assign sub_ln75_fu_650_p2 = (p_shl_fu_642_p3 - zext_ln75_fu_636_p1);
assign tmp_24_fu_687_p3 = {{tmp_s_reg_1015}, {2'd3}};
assign tmp_96_fu_599_p3 = ((empty_fu_593_p2[0:0] == 1'b1) ? activations2_4_q0 : activations2_q0);
assign tmp_97_fu_607_p3 = ((empty_fu_593_p2[0:0] == 1'b1) ? activations2_5_q0 : activations2_1_q0);
assign tmp_98_fu_615_p3 = ((empty_fu_593_p2[0:0] == 1'b1) ? activations2_6_q0 : activations2_2_q0);
assign tmp_99_fu_629_p3 = ((empty_reg_945[0:0] == 1'b1) ? activations2_7_q0 : activations2_3_q0);
assign tmp_fu_551_p3 = ap_sig_allocacmp_i_6[32'd6];
assign trunc_ln73_fu_590_p1 = i_6_reg_898[2:0];
assign trunc_ln75_fu_639_p1 = i_6_reg_898_pp0_iter7_reg[5:0];
assign zext_ln72_fu_569_p1 = lshr_ln8_fu_559_p4;
assign zext_ln75_1_fu_676_p1 = lshr_ln9_reg_992;
assign zext_ln75_2_fu_710_p1 = lshr_ln75_1_fu_700_p4;
assign zext_ln75_3_fu_732_p1 = lshr_ln75_2_fu_722_p4;
assign zext_ln75_4_fu_754_p1 = lshr_ln75_3_fu_744_p4;
assign zext_ln75_5_fu_776_p1 = lshr_ln75_4_fu_766_p4;
assign zext_ln75_6_fu_798_p1 = lshr_ln75_5_fu_788_p4;
assign zext_ln75_7_fu_819_p1 = lshr_ln75_6_fu_809_p4;
assign zext_ln75_8_fu_840_p1 = lshr_ln75_7_fu_830_p4;
assign zext_ln75_9_fu_861_p1 = lshr_ln75_8_fu_851_p4;
assign zext_ln75_fu_636_p1 = i_6_reg_898_pp0_iter7_reg;
always @ (posedge ap_clk) begin
    zext_ln72_reg_909[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    tmp_24_reg_1056[1:0] <= 2'b11;
end
endmodule 