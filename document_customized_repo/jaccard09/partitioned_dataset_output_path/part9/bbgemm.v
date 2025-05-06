
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,m2_2_address0,m2_2_ce0,m2_2_q0,m2_3_address0,m2_3_ce0,m2_3_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [9:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [9:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [9:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln15_fu_916_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1688_reg_318;
wire   [0:0] empty_fu_455_p2;
reg   [0:0] empty_reg_1070;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_flatten_mid234_fu_485_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1077;
wire   [0:0] empty_7_fu_505_p2;
reg   [0:0] empty_7_reg_1083;
wire   [3:0] k_mid26_fu_511_p3;
reg   [3:0] k_mid26_reg_1088;
wire   [0:0] icmp_ln22_mid211_fu_525_p2;
reg   [0:0] icmp_ln22_mid211_reg_1094;
reg   [0:0] tmp_3_reg_1100;
reg   [2:0] tmp_5_reg_1105;
wire   [1:0] trunc_ln18_1_fu_626_p1;
reg   [1:0] trunc_ln18_1_reg_1111;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln21_fu_643_p1;
reg   [5:0] trunc_ln21_reg_1116;
reg   [5:0] trunc_ln21_reg_1116_pp0_iter1_reg;
wire   [1:0] trunc_ln22_fu_664_p1;
reg   [1:0] trunc_ln22_reg_1141;
reg   [1:0] trunc_ln22_reg_1141_pp0_iter1_reg;
reg   [1:0] trunc_ln22_reg_1141_pp0_iter2_reg;
reg   [1:0] trunc_ln22_reg_1141_pp0_iter3_reg;
reg   [1:0] trunc_ln22_reg_1141_pp0_iter4_reg;
reg   [1:0] trunc_ln22_reg_1141_pp0_iter5_reg;
wire   [0:0] or_ln23_fu_684_p2;
reg   [0:0] or_ln23_reg_1147;
reg   [0:0] or_ln23_reg_1147_pp0_iter1_reg;
wire   [2:0] tmp_7_fu_690_p4;
reg   [2:0] tmp_7_reg_1152;
reg   [2:0] tmp_7_reg_1152_pp0_iter1_reg;
wire   [0:0] icmp_ln22_fu_725_p2;
reg   [0:0] icmp_ln22_reg_1177;
wire   [63:0] temp_x_fu_790_p11;
reg   [63:0] temp_x_reg_1182;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_fu_829_p11;
reg   [63:0] tmp_reg_1187;
wire   [0:0] icmp_ln18_fu_898_p2;
reg   [0:0] icmp_ln18_reg_1192;
wire   [0:0] icmp_ln17_fu_904_p2;
reg   [0:0] icmp_ln17_reg_1197;
wire   [0:0] icmp_ln16_fu_910_p2;
reg   [0:0] icmp_ln16_reg_1202;
reg   [0:0] icmp_ln15_reg_1207;
reg   [0:0] icmp_ln15_reg_1207_pp0_iter1_reg;
reg   [0:0] icmp_ln15_reg_1207_pp0_iter2_reg;
reg   [0:0] icmp_ln15_reg_1207_pp0_iter3_reg;
reg   [0:0] icmp_ln15_reg_1207_pp0_iter4_reg;
reg   [0:0] icmp_ln15_reg_1207_pp0_iter5_reg;
reg   [9:0] prod_0_addr_reg_1211;
reg   [9:0] prod_0_addr_reg_1211_pp0_iter3_reg;
reg   [9:0] prod_0_addr_reg_1211_pp0_iter4_reg;
reg   [9:0] prod_0_addr_reg_1211_pp0_iter5_reg;
reg   [9:0] prod_1_addr_reg_1216;
reg   [9:0] prod_1_addr_reg_1216_pp0_iter3_reg;
reg   [9:0] prod_1_addr_reg_1216_pp0_iter4_reg;
reg   [9:0] prod_1_addr_reg_1216_pp0_iter5_reg;
reg   [9:0] prod_2_addr_reg_1221;
reg   [9:0] prod_2_addr_reg_1221_pp0_iter3_reg;
reg   [9:0] prod_2_addr_reg_1221_pp0_iter4_reg;
reg   [9:0] prod_2_addr_reg_1221_pp0_iter5_reg;
reg   [9:0] prod_3_addr_reg_1226;
reg   [9:0] prod_3_addr_reg_1226_pp0_iter3_reg;
reg   [9:0] prod_3_addr_reg_1226_pp0_iter4_reg;
reg   [9:0] prod_3_addr_reg_1226_pp0_iter5_reg;
wire   [63:0] tmp_1_fu_973_p11;
reg   [63:0] tmp_1_reg_1231;
wire   [63:0] grp_fu_363_p2;
reg   [63:0] mul_reg_1236;
wire   [63:0] bitcast_ln24_4_fu_996_p1;
reg   [63:0] bitcast_ln24_4_reg_1241;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1688_phi_fu_321_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1787_phi_fu_332_p4;
reg   [0:0] ap_phi_mux_icmp_ln1886_phi_fu_342_p4;
reg   [0:0] ap_phi_mux_icmp_ln2285_phi_fu_352_p4;
wire   [63:0] zext_ln21_fu_656_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_711_p1;
wire   [63:0] zext_ln24_fu_949_p1;
reg   [17:0] indvar_flatten6876_fu_122;
wire   [17:0] add_ln15_1_fu_852_p2;
wire    ap_block_pp0_stage2;
reg   [6:0] jj77_fu_126;
wire   [6:0] jj_fu_566_p3;
reg   [16:0] indvar_flatten3578_fu_130;
wire   [16:0] select_ln16_1_fu_890_p3;
reg   [6:0] kk79_fu_134;
wire   [6:0] kk_fu_491_p3;
reg   [6:0] ap_sig_allocacmp_kk79_load;
reg   [13:0] indvar_flatten1280_fu_138;
wire   [13:0] select_ln17_1_fu_877_p3;
reg   [6:0] i81_fu_142;
wire   [6:0] i_fu_587_p3;
reg   [7:0] indvar_flatten82_fu_146;
wire   [7:0] select_ln18_1_fu_864_p3;
reg   [3:0] k83_fu_150;
wire   [3:0] k_fu_616_p3;
reg   [3:0] ap_sig_allocacmp_k83_load;
reg   [3:0] j84_fu_154;
wire   [3:0] j_fu_719_p2;
reg   [6:0] add_ln1589_fu_158;
wire   [6:0] add_ln15_fu_731_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m2_0_ce0_local;
reg    m2_1_ce0_local;
reg    m2_2_ce0_local;
reg    m2_3_ce0_local;
reg    prod_0_ce0_local;
reg   [9:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg    prod_1_ce0_local;
reg   [9:0] prod_1_address0_local;
reg    prod_1_we0_local;
reg    prod_2_ce0_local;
reg   [9:0] prod_2_address0_local;
reg    prod_2_we0_local;
reg    prod_3_ce0_local;
reg   [9:0] prod_3_address0_local;
reg    prod_3_we0_local;
wire   [0:0] xor_ln11_fu_431_p2;
wire   [6:0] select_ln11_fu_423_p3;
wire   [0:0] and_ln11_2_fu_443_p2;
wire   [0:0] exitcond_flatten14_not_fu_461_p2;
wire   [0:0] and_ln11_fu_437_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_467_p2;
wire   [0:0] and_ln11_1_fu_479_p2;
wire   [6:0] add_ln16_fu_449_p2;
wire   [0:0] empty_6_fu_499_p2;
wire   [0:0] icmp_ln22_mid230_fu_473_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_519_p2;
wire   [6:0] i_mid219_fu_574_p3;
wire   [6:0] add_ln17_fu_581_p2;
wire   [0:0] empty_8_fu_599_p2;
wire   [0:0] empty_9_fu_603_p2;
wire   [3:0] add_ln18_fu_594_p2;
wire   [0:0] tmp_2_fu_630_p3;
wire   [0:0] or_ln21_fu_638_p2;
wire   [9:0] add_ln21_1_fu_647_p4;
wire   [3:0] j_mid2_fu_608_p3;
wire   [0:0] tmp_6_fu_676_p3;
wire   [0:0] tmp_4_fu_668_p3;
wire   [2:0] trunc_ln18_fu_622_p1;
wire   [9:0] add_ln23_1_fu_700_p5;
wire   [63:0] temp_x_fu_790_p2;
wire   [63:0] temp_x_fu_790_p4;
wire   [63:0] temp_x_fu_790_p6;
wire   [63:0] temp_x_fu_790_p8;
wire   [63:0] temp_x_fu_790_p9;
wire   [63:0] tmp_fu_829_p2;
wire   [63:0] tmp_fu_829_p4;
wire   [63:0] tmp_fu_829_p6;
wire   [63:0] tmp_fu_829_p8;
wire   [63:0] tmp_fu_829_p9;
wire   [7:0] add_ln18_1_fu_858_p2;
wire   [13:0] add_ln17_1_fu_871_p2;
wire   [16:0] add_ln16_1_fu_884_p2;
wire   [9:0] add_ln24_1_fu_942_p4;
wire   [63:0] tmp_1_fu_973_p2;
wire   [63:0] tmp_1_fu_973_p4;
wire   [63:0] tmp_1_fu_973_p6;
wire   [63:0] tmp_1_fu_973_p8;
wire   [63:0] tmp_1_fu_973_p9;
wire   [63:0] grp_fu_359_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage0;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_839;
reg    ap_condition_843;
reg    ap_condition_848;
reg    ap_condition_328;
wire   [1:0] temp_x_fu_790_p1;
wire   [1:0] temp_x_fu_790_p3;
wire  signed [1:0] temp_x_fu_790_p5;
wire  signed [1:0] temp_x_fu_790_p7;
wire   [1:0] tmp_fu_829_p1;
wire   [1:0] tmp_fu_829_p3;
wire  signed [1:0] tmp_fu_829_p5;
wire  signed [1:0] tmp_fu_829_p7;
wire   [1:0] tmp_1_fu_973_p1;
wire   [1:0] tmp_1_fu_973_p3;
wire  signed [1:0] tmp_1_fu_973_p5;
wire  signed [1:0] tmp_1_fu_973_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6876_fu_122 = 18'd0;
#0 jj77_fu_126 = 7'd0;
#0 indvar_flatten3578_fu_130 = 17'd0;
#0 kk79_fu_134 = 7'd0;
#0 indvar_flatten1280_fu_138 = 14'd0;
#0 i81_fu_142 = 7'd0;
#0 indvar_flatten82_fu_146 = 8'd0;
#0 k83_fu_150 = 4'd0;
#0 j84_fu_154 = 4'd0;
#0 add_ln1589_fu_158 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(tmp_1_reg_1231),.din1(mul_reg_1236),.ce(1'b1),.dout(grp_fu_359_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1182),.din1(tmp_reg_1187),.ce(1'b1),.dout(grp_fu_363_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(temp_x_fu_790_p2),.din1(temp_x_fu_790_p4),.din2(temp_x_fu_790_p6),.din3(temp_x_fu_790_p8),.def(temp_x_fu_790_p9),.sel(trunc_ln18_1_reg_1111),.dout(temp_x_fu_790_p11));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_fu_829_p2),.din1(tmp_fu_829_p4),.din2(tmp_fu_829_p6),.din3(tmp_fu_829_p8),.def(tmp_fu_829_p9),.sel(trunc_ln22_reg_1141),.dout(tmp_fu_829_p11));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_1_fu_973_p2),.din1(tmp_1_fu_973_p4),.din2(tmp_1_fu_973_p6),.din3(tmp_1_fu_973_p8),.def(tmp_1_fu_973_p9),.sel(trunc_ln22_reg_1141_pp0_iter2_reg),.dout(tmp_1_fu_973_p11));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            add_ln1589_fu_158 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1589_fu_158 <= add_ln15_fu_731_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0)))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            i81_fu_142 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i81_fu_142 <= i_fu_587_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_848)) begin
            icmp_ln1688_reg_318 <= icmp_ln16_reg_1202;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1688_reg_318 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            indvar_flatten1280_fu_138 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten1280_fu_138 <= select_ln17_1_fu_877_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            indvar_flatten3578_fu_130 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten3578_fu_130 <= select_ln16_1_fu_890_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            indvar_flatten6876_fu_122 <= 18'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten6876_fu_122 <= add_ln15_1_fu_852_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            indvar_flatten82_fu_146 <= 8'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten82_fu_146 <= select_ln18_1_fu_864_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            j84_fu_154 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j84_fu_154 <= j_fu_719_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            jj77_fu_126 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj77_fu_126 <= jj_fu_566_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_839)) begin
            k83_fu_150 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k83_fu_150 <= k_fu_616_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_328)) begin
        kk79_fu_134 <= kk_fu_491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln24_4_reg_1241 <= bitcast_ln24_4_fu_996_p1;
        icmp_ln15_reg_1207 <= icmp_ln15_fu_916_p2;
        icmp_ln15_reg_1207_pp0_iter1_reg <= icmp_ln15_reg_1207;
        icmp_ln15_reg_1207_pp0_iter2_reg <= icmp_ln15_reg_1207_pp0_iter1_reg;
        icmp_ln15_reg_1207_pp0_iter3_reg <= icmp_ln15_reg_1207_pp0_iter2_reg;
        icmp_ln15_reg_1207_pp0_iter4_reg <= icmp_ln15_reg_1207_pp0_iter3_reg;
        icmp_ln15_reg_1207_pp0_iter5_reg <= icmp_ln15_reg_1207_pp0_iter4_reg;
        temp_x_reg_1182 <= temp_x_fu_790_p11;
        tmp_1_reg_1231 <= tmp_1_fu_973_p11;
        tmp_reg_1187 <= tmp_fu_829_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_7_reg_1083 <= empty_7_fu_505_p2;
        empty_reg_1070 <= empty_fu_455_p2;
        exitcond_flatten_mid234_reg_1077 <= exitcond_flatten_mid234_fu_485_p2;
        icmp_ln22_mid211_reg_1094 <= icmp_ln22_mid211_fu_525_p2;
        k_mid26_reg_1088 <= k_mid26_fu_511_p3;
        mul_reg_1236 <= grp_fu_363_p2;
        tmp_3_reg_1100 <= kk_fu_491_p3[32'd2];
        tmp_5_reg_1105 <= {{kk_fu_491_p3[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln16_reg_1202 <= icmp_ln16_fu_910_p2;
        icmp_ln17_reg_1197 <= icmp_ln17_fu_904_p2;
        icmp_ln18_reg_1192 <= icmp_ln18_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln22_reg_1177 <= icmp_ln22_fu_725_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln23_reg_1147 <= or_ln23_fu_684_p2;
        or_ln23_reg_1147_pp0_iter1_reg <= or_ln23_reg_1147;
        prod_0_addr_reg_1211 <= zext_ln24_fu_949_p1;
        prod_0_addr_reg_1211_pp0_iter3_reg <= prod_0_addr_reg_1211;
        prod_0_addr_reg_1211_pp0_iter4_reg <= prod_0_addr_reg_1211_pp0_iter3_reg;
        prod_0_addr_reg_1211_pp0_iter5_reg <= prod_0_addr_reg_1211_pp0_iter4_reg;
        prod_1_addr_reg_1216 <= zext_ln24_fu_949_p1;
        prod_1_addr_reg_1216_pp0_iter3_reg <= prod_1_addr_reg_1216;
        prod_1_addr_reg_1216_pp0_iter4_reg <= prod_1_addr_reg_1216_pp0_iter3_reg;
        prod_1_addr_reg_1216_pp0_iter5_reg <= prod_1_addr_reg_1216_pp0_iter4_reg;
        prod_2_addr_reg_1221 <= zext_ln24_fu_949_p1;
        prod_2_addr_reg_1221_pp0_iter3_reg <= prod_2_addr_reg_1221;
        prod_2_addr_reg_1221_pp0_iter4_reg <= prod_2_addr_reg_1221_pp0_iter3_reg;
        prod_2_addr_reg_1221_pp0_iter5_reg <= prod_2_addr_reg_1221_pp0_iter4_reg;
        prod_3_addr_reg_1226 <= zext_ln24_fu_949_p1;
        prod_3_addr_reg_1226_pp0_iter3_reg <= prod_3_addr_reg_1226;
        prod_3_addr_reg_1226_pp0_iter4_reg <= prod_3_addr_reg_1226_pp0_iter3_reg;
        prod_3_addr_reg_1226_pp0_iter5_reg <= prod_3_addr_reg_1226_pp0_iter4_reg;
        tmp_7_reg_1152 <= {{jj_fu_566_p3[5:3]}};
        tmp_7_reg_1152_pp0_iter1_reg <= tmp_7_reg_1152;
        trunc_ln18_1_reg_1111 <= trunc_ln18_1_fu_626_p1;
        trunc_ln21_reg_1116 <= trunc_ln21_fu_643_p1;
        trunc_ln21_reg_1116_pp0_iter1_reg <= trunc_ln21_reg_1116;
        trunc_ln22_reg_1141 <= trunc_ln22_fu_664_p1;
        trunc_ln22_reg_1141_pp0_iter1_reg <= trunc_ln22_reg_1141;
        trunc_ln22_reg_1141_pp0_iter2_reg <= trunc_ln22_reg_1141_pp0_iter1_reg;
        trunc_ln22_reg_1141_pp0_iter3_reg <= trunc_ln22_reg_1141_pp0_iter2_reg;
        trunc_ln22_reg_1141_pp0_iter4_reg <= trunc_ln22_reg_1141_pp0_iter3_reg;
        trunc_ln22_reg_1141_pp0_iter5_reg <= trunc_ln22_reg_1141_pp0_iter4_reg;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_916_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln15_reg_1207_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_843)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_321_p4 = icmp_ln16_reg_1202;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_321_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1688_phi_fu_321_p4 = icmp_ln16_reg_1202;
        end
    end else begin
        ap_phi_mux_icmp_ln1688_phi_fu_321_p4 = icmp_ln16_reg_1202;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_843)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_332_p4 = icmp_ln17_reg_1197;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_332_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1787_phi_fu_332_p4 = icmp_ln17_reg_1197;
        end
    end else begin
        ap_phi_mux_icmp_ln1787_phi_fu_332_p4 = icmp_ln17_reg_1197;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_843)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_342_p4 = icmp_ln18_reg_1192;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_342_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1886_phi_fu_342_p4 = icmp_ln18_reg_1192;
        end
    end else begin
        ap_phi_mux_icmp_ln1886_phi_fu_342_p4 = icmp_ln18_reg_1192;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_843)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_352_p4 = icmp_ln22_reg_1177;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_352_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln2285_phi_fu_352_p4 = icmp_ln22_reg_1177;
        end
    end else begin
        ap_phi_mux_icmp_ln2285_phi_fu_352_p4 = icmp_ln22_reg_1177;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k83_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k83_load = k83_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk79_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk79_load = kk79_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_0_address0_local = prod_0_addr_reg_1211_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_0_address0_local = zext_ln24_fu_949_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln22_reg_1141_pp0_iter5_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_1_address0_local = prod_1_addr_reg_1216_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_1_address0_local = zext_ln24_fu_949_p1;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln22_reg_1141_pp0_iter5_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_2_address0_local = prod_2_addr_reg_1221_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_2_address0_local = zext_ln24_fu_949_p1;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln22_reg_1141_pp0_iter5_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_3_address0_local = prod_3_addr_reg_1226_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_3_address0_local = zext_ln24_fu_949_p1;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln22_reg_1141_pp0_iter5_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_852_p2 = (indvar_flatten6876_fu_122 + 18'd1);
assign add_ln15_fu_731_p2 = (jj_fu_566_p3 + 7'd8);
assign add_ln16_1_fu_884_p2 = (indvar_flatten3578_fu_130 + 17'd1);
assign add_ln16_fu_449_p2 = (select_ln11_fu_423_p3 + 7'd8);
assign add_ln17_1_fu_871_p2 = (indvar_flatten1280_fu_138 + 14'd1);
assign add_ln17_fu_581_p2 = (i_mid219_fu_574_p3 + 7'd1);
assign add_ln18_1_fu_858_p2 = (indvar_flatten82_fu_146 + 8'd1);
assign add_ln18_fu_594_p2 = (k_mid26_reg_1088 + 4'd1);
assign add_ln21_1_fu_647_p4 = {{{trunc_ln21_fu_643_p1}, {tmp_5_reg_1105}}, {or_ln21_fu_638_p2}};
assign add_ln23_1_fu_700_p5 = {{{{tmp_5_reg_1105}, {trunc_ln18_fu_622_p1}}, {tmp_7_fu_690_p4}}, {or_ln23_fu_684_p2}};
assign add_ln24_1_fu_942_p4 = {{{trunc_ln21_reg_1116_pp0_iter1_reg}, {tmp_7_reg_1152_pp0_iter1_reg}}, {or_ln23_reg_1147_pp0_iter1_reg}};
assign and_ln11_1_fu_479_p2 = (xor_ln11_fu_431_p2 & ap_phi_mux_icmp_ln1886_phi_fu_342_p4);
assign and_ln11_2_fu_443_p2 = (xor_ln11_fu_431_p2 & ap_phi_mux_icmp_ln1787_phi_fu_332_p4);
assign and_ln11_fu_437_p2 = (xor_ln11_fu_431_p2 & ap_phi_mux_icmp_ln2285_phi_fu_352_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_328 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_839 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_843 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1207 == 1'd0));
end
always @ (*) begin
    ap_condition_848 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1207 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln24_4_fu_996_p1 = grp_fu_359_p2;
assign empty_6_fu_499_p2 = (exitcond_flatten_mid234_fu_485_p2 | and_ln11_2_fu_443_p2);
assign empty_7_fu_505_p2 = (empty_6_fu_499_p2 | ap_phi_mux_icmp_ln1688_phi_fu_321_p4);
assign empty_8_fu_599_p2 = (icmp_ln22_mid211_reg_1094 | exitcond_flatten_mid234_reg_1077);
assign empty_9_fu_603_p2 = (empty_reg_1070 | empty_8_fu_599_p2);
assign empty_fu_455_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_321_p4 | and_ln11_2_fu_443_p2);
assign exitcond_flatten14_not_fu_461_p2 = (ap_phi_mux_icmp_ln1787_phi_fu_332_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_485_p2 = (not_exitcond_flatten14_mid267_fu_467_p2 & and_ln11_1_fu_479_p2);
assign i_fu_587_p3 = ((exitcond_flatten_mid234_reg_1077[0:0] == 1'b1) ? add_ln17_fu_581_p2 : i_mid219_fu_574_p3);
assign i_mid219_fu_574_p3 = ((empty_reg_1070[0:0] == 1'b1) ? 7'd0 : i81_fu_142);
assign icmp_ln15_fu_916_p2 = ((indvar_flatten6876_fu_122 == 18'd262143) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_910_p2 = ((select_ln16_1_fu_890_p3 == 17'd32768) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_904_p2 = ((select_ln17_1_fu_877_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_898_p2 = ((select_ln18_1_fu_864_p3 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_725_p2 = ((j_fu_719_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_525_p2 = (not_exitcond_flatten_mid234_fu_519_p2 & icmp_ln22_mid230_fu_473_p2);
assign icmp_ln22_mid230_fu_473_p2 = (not_exitcond_flatten14_mid267_fu_467_p2 & and_ln11_fu_437_p2);
assign j_fu_719_p2 = (j_mid2_fu_608_p3 + 4'd1);
assign j_mid2_fu_608_p3 = ((empty_9_fu_603_p2[0:0] == 1'b1) ? 4'd0 : j84_fu_154);
assign jj_fu_566_p3 = ((icmp_ln1688_reg_318[0:0] == 1'b1) ? add_ln1589_fu_158 : jj77_fu_126);
assign k_fu_616_p3 = ((icmp_ln22_mid211_reg_1094[0:0] == 1'b1) ? add_ln18_fu_594_p2 : k_mid26_reg_1088);
assign k_mid26_fu_511_p3 = ((empty_7_fu_505_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k83_load);
assign kk_fu_491_p3 = ((and_ln11_2_fu_443_p2[0:0] == 1'b1) ? add_ln16_fu_449_p2 : select_ln11_fu_423_p3);
assign m1_0_address0 = zext_ln21_fu_656_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_656_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln21_fu_656_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln21_fu_656_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = zext_ln23_fu_711_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = zext_ln23_fu_711_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_2_address0 = zext_ln23_fu_711_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_3_address0 = zext_ln23_fu_711_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign not_exitcond_flatten14_mid267_fu_467_p2 = (exitcond_flatten14_not_fu_461_p2 | ap_phi_mux_icmp_ln1688_phi_fu_321_p4);
assign not_exitcond_flatten_mid234_fu_519_p2 = (exitcond_flatten_mid234_fu_485_p2 ^ 1'd1);
assign or_ln21_fu_638_p2 = (tmp_3_reg_1100 | tmp_2_fu_630_p3);
assign or_ln23_fu_684_p2 = (tmp_6_fu_676_p3 | tmp_4_fu_668_p3);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_4_reg_1241;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_4_reg_1241;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_4_reg_1241;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_4_reg_1241;
assign prod_3_we0 = prod_3_we0_local;
assign select_ln11_fu_423_p3 = ((ap_phi_mux_icmp_ln1688_phi_fu_321_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk79_load);
assign select_ln16_1_fu_890_p3 = ((icmp_ln1688_reg_318[0:0] == 1'b1) ? 17'd1 : add_ln16_1_fu_884_p2);
assign select_ln17_1_fu_877_p3 = ((empty_reg_1070[0:0] == 1'b1) ? 14'd1 : add_ln17_1_fu_871_p2);
assign select_ln18_1_fu_864_p3 = ((empty_7_reg_1083[0:0] == 1'b1) ? 8'd1 : add_ln18_1_fu_858_p2);
assign temp_x_fu_790_p2 = m1_0_q0;
assign temp_x_fu_790_p4 = m1_1_q0;
assign temp_x_fu_790_p6 = m1_2_q0;
assign temp_x_fu_790_p8 = m1_3_q0;
assign temp_x_fu_790_p9 = 'bx;
assign tmp_1_fu_973_p2 = prod_0_q0;
assign tmp_1_fu_973_p4 = prod_1_q0;
assign tmp_1_fu_973_p6 = prod_2_q0;
assign tmp_1_fu_973_p8 = prod_3_q0;
assign tmp_1_fu_973_p9 = 'bx;
assign tmp_2_fu_630_p3 = k_fu_616_p3[32'd2];
assign tmp_4_fu_668_p3 = j_mid2_fu_608_p3[32'd2];
assign tmp_6_fu_676_p3 = jj_fu_566_p3[32'd2];
assign tmp_7_fu_690_p4 = {{jj_fu_566_p3[5:3]}};
assign tmp_fu_829_p2 = m2_0_q0;
assign tmp_fu_829_p4 = m2_1_q0;
assign tmp_fu_829_p6 = m2_2_q0;
assign tmp_fu_829_p8 = m2_3_q0;
assign tmp_fu_829_p9 = 'bx;
assign trunc_ln18_1_fu_626_p1 = k_fu_616_p3[1:0];
assign trunc_ln18_fu_622_p1 = k_fu_616_p3[2:0];
assign trunc_ln21_fu_643_p1 = i_fu_587_p3[5:0];
assign trunc_ln22_fu_664_p1 = j_mid2_fu_608_p3[1:0];
assign xor_ln11_fu_431_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_321_p4 ^ 1'd1);
assign zext_ln21_fu_656_p1 = add_ln21_1_fu_647_p4;
assign zext_ln23_fu_711_p1 = add_ln23_1_fu_700_p5;
assign zext_ln24_fu_949_p1 = add_ln24_1_fu_942_p4;
endmodule 
