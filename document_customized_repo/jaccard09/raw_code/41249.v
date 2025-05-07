module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m2_address0,m2_ce0,m2_q0,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0); 
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
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln15_fu_701_p2;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln15_reg_939;
reg   [0:0] icmp_ln15_reg_939_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage3;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1688_reg_175;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] and_ln11_2_fu_296_p2;
reg   [0:0] and_ln11_2_reg_829;
wire   [0:0] exitcond_flatten_mid234_fu_326_p2;
reg   [0:0] exitcond_flatten_mid234_reg_835;
wire   [0:0] empty_7_fu_338_p2;
reg   [0:0] empty_7_reg_841;
wire   [0:0] icmp_ln22_mid211_fu_350_p2;
reg   [0:0] icmp_ln22_mid211_reg_847;
wire   [0:0] empty_fu_399_p2;
reg   [0:0] empty_reg_853;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] add_ln21_fu_496_p2;
reg   [5:0] add_ln21_reg_858;
wire   [5:0] trunc_ln21_fu_502_p1;
reg   [5:0] trunc_ln21_reg_863;
wire   [5:0] add_ln23_fu_510_p2;
reg   [5:0] add_ln23_reg_869;
wire   [0:0] icmp_ln22_fu_550_p2;
reg   [0:0] icmp_ln22_reg_879;
wire   [0:0] icmp_ln18_fu_556_p2;
reg   [0:0] icmp_ln18_reg_884;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_load_reg_894;
reg   [63:0] m1_load_reg_899;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [11:0] prod_addr_reg_914;
reg   [11:0] prod_addr_reg_914_pp0_iter1_reg;
wire   [0:0] addr_cmp_fu_636_p2;
reg   [0:0] addr_cmp_reg_919;
reg   [63:0] prod_load_reg_924;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln17_fu_689_p2;
reg   [0:0] icmp_ln17_reg_929;
wire   [0:0] icmp_ln16_fu_695_p2;
reg   [0:0] icmp_ln16_reg_934;
wire   [63:0] grp_fu_220_p2;
reg   [63:0] mul_reg_943;
wire   [63:0] bitcast_ln24_1_fu_736_p1;
reg   [63:0] bitcast_ln24_1_reg_953;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln1688_phi_fu_178_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1787_phi_fu_189_p4;
reg   [0:0] ap_phi_mux_icmp_ln1886_phi_fu_199_p4;
reg   [0:0] ap_phi_mux_icmp_ln2285_phi_fu_209_p4;
wire   [63:0] zext_ln23_fu_526_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln21_fu_609_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_fu_628_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] reuse_addr_reg_fu_88;
reg   [63:0] reuse_reg_fu_92;
wire    ap_block_pp0_stage3;
reg   [17:0] indvar_flatten6876_fu_96;
wire   [17:0] add_ln15_1_fu_683_p2;
wire    ap_block_pp0_stage7;
reg   [6:0] jj77_fu_100;
wire   [6:0] jj_fu_385_p3;
reg   [16:0] indvar_flatten3578_fu_104;
wire   [16:0] select_ln16_1_fu_675_p3;
reg   [6:0] kk79_fu_108;
wire   [6:0] kk_fu_412_p3;
reg   [13:0] indvar_flatten1280_fu_112;
wire   [13:0] select_ln17_1_fu_662_p3;
reg   [6:0] i81_fu_116;
wire   [6:0] i_fu_432_p3;
reg   [7:0] indvar_flatten82_fu_120;
wire   [7:0] select_ln18_1_fu_543_p3;
reg   [3:0] k83_fu_124;
wire   [3:0] k_fu_463_p3;
reg   [3:0] j84_fu_128;
wire   [3:0] j_fu_531_p2;
reg   [6:0] add_ln1589_fu_132;
wire   [6:0] add_ln15_fu_562_p2;
reg    m2_ce0_local;
reg    m1_ce0_local;
reg    prod_ce0_local;
reg   [11:0] prod_address0_local;
reg    prod_we0_local;
wire   [63:0] grp_fu_216_p0;
wire   [63:0] grp_fu_220_p0;
wire   [63:0] grp_fu_220_p1;
wire   [0:0] xor_ln11_fu_284_p2;
wire   [0:0] exitcond_flatten14_not_fu_302_p2;
wire   [0:0] and_ln11_fu_290_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_308_p2;
wire   [0:0] and_ln11_1_fu_320_p2;
wire   [0:0] empty_6_fu_332_p2;
wire   [0:0] icmp_ln22_mid230_fu_314_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_344_p2;
wire   [6:0] select_ln11_fu_377_p3;
wire   [6:0] add_ln16_fu_393_p2;
wire   [6:0] i_mid219_fu_404_p3;
wire   [6:0] add_ln17_fu_419_p2;
wire   [3:0] k_mid26_fu_425_p3;
wire   [0:0] empty_8_fu_445_p2;
wire   [0:0] empty_9_fu_449_p2;
wire   [3:0] add_ln18_fu_439_p2;
wire   [5:0] trunc_ln16_fu_474_p1;
wire   [5:0] zext_ln18_fu_478_p1;
wire   [3:0] j_mid2_fu_455_p3;
wire   [5:0] trunc_ln15_fu_470_p1;
wire   [5:0] zext_ln22_fu_506_p1;
wire   [2:0] tmp_1_fu_486_p4;
wire   [2:0] trunc_ln20_fu_482_p1;
wire   [11:0] add_ln23_1_fu_516_p4;
wire   [7:0] add_ln18_1_fu_537_p2;
wire   [11:0] add_ln21_1_fu_603_p3;
wire   [11:0] add_ln24_1_fu_622_p3;
wire   [13:0] add_ln17_1_fu_656_p2;
wire   [16:0] add_ln16_1_fu_669_p2;
wire   [63:0] reuse_select_fu_725_p3;
wire   [63:0] grp_fu_216_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage6_11001;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_667;
reg    ap_condition_671;
reg    ap_condition_676;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg_fu_88 = 64'd0;
#0 reuse_reg_fu_92 = 64'd0;
#0 indvar_flatten6876_fu_96 = 18'd0;
#0 jj77_fu_100 = 7'd0;
#0 indvar_flatten3578_fu_104 = 17'd0;
#0 kk79_fu_108 = 7'd0;
#0 indvar_flatten1280_fu_112 = 14'd0;
#0 i81_fu_116 = 7'd0;
#0 indvar_flatten82_fu_120 = 8'd0;
#0 k83_fu_124 = 4'd0;
#0 j84_fu_128 = 4'd0;
#0 add_ln1589_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_216_p0),.din1(mul_reg_943),.ce(1'b1),.dout(grp_fu_216_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_220_p0),.din1(grp_fu_220_p1),.ce(1'b1),.dout(grp_fu_220_p2));
bbgemm_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            add_ln1589_fu_132 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1589_fu_132 <= add_ln15_fu_562_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage7;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3)) | ((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            i81_fu_116 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i81_fu_116 <= i_fu_432_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_676)) begin
            icmp_ln1688_reg_175 <= icmp_ln16_reg_934;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1688_reg_175 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            indvar_flatten1280_fu_112 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten1280_fu_112 <= select_ln17_1_fu_662_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            indvar_flatten3578_fu_104 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten3578_fu_104 <= select_ln16_1_fu_675_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            indvar_flatten6876_fu_96 <= 18'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten6876_fu_96 <= add_ln15_1_fu_683_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            indvar_flatten82_fu_120 <= 8'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten82_fu_120 <= select_ln18_1_fu_543_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            j84_fu_128 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j84_fu_128 <= j_fu_531_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            jj77_fu_100 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj77_fu_100 <= jj_fu_385_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            k83_fu_124 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k83_fu_124 <= k_fu_463_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            kk79_fu_108 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            kk79_fu_108 <= kk_fu_412_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_667)) begin
            reuse_addr_reg_fu_88 <= 64'd18446744073709551615;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reuse_addr_reg_fu_88 <= zext_ln24_fu_628_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg_fu_92 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reuse_reg_fu_92 <= bitcast_ln24_1_fu_736_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_858 <= add_ln21_fu_496_p2;
        add_ln23_reg_869 <= add_ln23_fu_510_p2;
        empty_reg_853 <= empty_fu_399_p2;
        trunc_ln21_reg_863 <= trunc_ln21_fu_502_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        addr_cmp_reg_919 <= addr_cmp_fu_636_p2;
        prod_addr_reg_914 <= zext_ln24_fu_628_p1;
        prod_addr_reg_914_pp0_iter1_reg <= prod_addr_reg_914;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_2_reg_829 <= and_ln11_2_fu_296_p2;
        empty_7_reg_841 <= empty_7_fu_338_p2;
        exitcond_flatten_mid234_reg_835 <= exitcond_flatten_mid234_fu_326_p2;
        icmp_ln22_mid211_reg_847 <= icmp_ln22_mid211_fu_350_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln24_1_reg_953 <= bitcast_ln24_1_fu_736_p1;
        m2_load_reg_894 <= m2_q0;
        mul_reg_943 <= grp_fu_220_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln15_reg_939 <= icmp_ln15_fu_701_p2;
        icmp_ln15_reg_939_pp0_iter1_reg <= icmp_ln15_reg_939;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln16_reg_934 <= icmp_ln16_fu_695_p2;
        icmp_ln17_reg_929 <= icmp_ln17_fu_689_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln18_reg_884 <= icmp_ln18_fu_556_p2;
        icmp_ln22_reg_879 <= icmp_ln22_fu_550_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m1_load_reg_899 <= m1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_load_reg_924 <= prod_q0;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_701_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_939_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_671)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_178_p4 = icmp_ln16_reg_934;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_178_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1688_phi_fu_178_p4 = icmp_ln16_reg_934;
        end
    end else begin
        ap_phi_mux_icmp_ln1688_phi_fu_178_p4 = icmp_ln16_reg_934;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_671)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_189_p4 = icmp_ln17_reg_929;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_189_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1787_phi_fu_189_p4 = icmp_ln17_reg_929;
        end
    end else begin
        ap_phi_mux_icmp_ln1787_phi_fu_189_p4 = icmp_ln17_reg_929;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_671)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_199_p4 = icmp_ln18_reg_884;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1886_phi_fu_199_p4 = icmp_ln18_reg_884;
        end
    end else begin
        ap_phi_mux_icmp_ln1886_phi_fu_199_p4 = icmp_ln18_reg_884;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_671)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_209_p4 = icmp_ln22_reg_879;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_209_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln2285_phi_fu_209_p4 = icmp_ln22_reg_879;
        end
    end else begin
        ap_phi_mux_icmp_ln2285_phi_fu_209_p4 = icmp_ln22_reg_879;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address0_local = prod_addr_reg_914_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address0_local = zext_ln24_fu_628_p1;
    end else begin
        prod_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
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
assign add_ln15_1_fu_683_p2 = (indvar_flatten6876_fu_96 + 18'd1);
assign add_ln15_fu_562_p2 = (jj_fu_385_p3 + 7'd8);
assign add_ln16_1_fu_669_p2 = (indvar_flatten3578_fu_104 + 17'd1);
assign add_ln16_fu_393_p2 = (select_ln11_fu_377_p3 + 7'd8);
assign add_ln17_1_fu_656_p2 = (indvar_flatten1280_fu_112 + 14'd1);
assign add_ln17_fu_419_p2 = (i_mid219_fu_404_p3 + 7'd1);
assign add_ln18_1_fu_537_p2 = (indvar_flatten82_fu_120 + 8'd1);
assign add_ln18_fu_439_p2 = (k_mid26_fu_425_p3 + 4'd1);
assign add_ln21_1_fu_603_p3 = {{trunc_ln21_reg_863}, {add_ln21_reg_858}};
assign add_ln21_fu_496_p2 = (trunc_ln16_fu_474_p1 + zext_ln18_fu_478_p1);
assign add_ln23_1_fu_516_p4 = {{{tmp_1_fu_486_p4}, {trunc_ln20_fu_482_p1}}, {add_ln23_fu_510_p2}};
assign add_ln23_fu_510_p2 = (trunc_ln15_fu_470_p1 + zext_ln22_fu_506_p1);
assign add_ln24_1_fu_622_p3 = {{trunc_ln21_reg_863}, {add_ln23_reg_869}};
assign addr_cmp_fu_636_p2 = ((reuse_addr_reg_fu_88 == zext_ln24_fu_628_p1) ? 1'b1 : 1'b0);
assign and_ln11_1_fu_320_p2 = (xor_ln11_fu_284_p2 & ap_phi_mux_icmp_ln1886_phi_fu_199_p4);
assign and_ln11_2_fu_296_p2 = (xor_ln11_fu_284_p2 & ap_phi_mux_icmp_ln1787_phi_fu_189_p4);
assign and_ln11_fu_290_p2 = (xor_ln11_fu_284_p2 & ap_phi_mux_icmp_ln2285_phi_fu_209_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_667 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_671 = ((icmp_ln15_reg_939 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_676 = ((icmp_ln15_reg_939 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln24_1_fu_736_p1 = grp_fu_216_p2;
assign empty_6_fu_332_p2 = (exitcond_flatten_mid234_fu_326_p2 | and_ln11_2_fu_296_p2);
assign empty_7_fu_338_p2 = (empty_6_fu_332_p2 | ap_phi_mux_icmp_ln1688_phi_fu_178_p4);
assign empty_8_fu_445_p2 = (icmp_ln22_mid211_reg_847 | exitcond_flatten_mid234_reg_835);
assign empty_9_fu_449_p2 = (empty_fu_399_p2 | empty_8_fu_445_p2);
assign empty_fu_399_p2 = (icmp_ln1688_reg_175 | and_ln11_2_reg_829);
assign exitcond_flatten14_not_fu_302_p2 = (ap_phi_mux_icmp_ln1787_phi_fu_189_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_326_p2 = (not_exitcond_flatten14_mid267_fu_308_p2 & and_ln11_1_fu_320_p2);
assign grp_fu_216_p0 = reuse_select_fu_725_p3;
assign grp_fu_220_p0 = m1_load_reg_899;
assign grp_fu_220_p1 = m2_load_reg_894;
assign i_fu_432_p3 = ((exitcond_flatten_mid234_reg_835[0:0] == 1'b1) ? add_ln17_fu_419_p2 : i_mid219_fu_404_p3);
assign i_mid219_fu_404_p3 = ((empty_fu_399_p2[0:0] == 1'b1) ? 7'd0 : i81_fu_116);
assign icmp_ln15_fu_701_p2 = ((indvar_flatten6876_fu_96 == 18'd262143) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_695_p2 = ((select_ln16_1_fu_675_p3 == 17'd32768) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_689_p2 = ((select_ln17_1_fu_662_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_556_p2 = ((select_ln18_1_fu_543_p3 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_550_p2 = ((j_fu_531_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_350_p2 = (not_exitcond_flatten_mid234_fu_344_p2 & icmp_ln22_mid230_fu_314_p2);
assign icmp_ln22_mid230_fu_314_p2 = (not_exitcond_flatten14_mid267_fu_308_p2 & and_ln11_fu_290_p2);
assign j_fu_531_p2 = (j_mid2_fu_455_p3 + 4'd1);
assign j_mid2_fu_455_p3 = ((empty_9_fu_449_p2[0:0] == 1'b1) ? 4'd0 : j84_fu_128);
assign jj_fu_385_p3 = ((icmp_ln1688_reg_175[0:0] == 1'b1) ? add_ln1589_fu_132 : jj77_fu_100);
assign k_fu_463_p3 = ((icmp_ln22_mid211_reg_847[0:0] == 1'b1) ? add_ln18_fu_439_p2 : k_mid26_fu_425_p3);
assign k_mid26_fu_425_p3 = ((empty_7_reg_841[0:0] == 1'b1) ? 4'd0 : k83_fu_124);
assign kk_fu_412_p3 = ((and_ln11_2_reg_829[0:0] == 1'b1) ? add_ln16_fu_393_p2 : select_ln11_fu_377_p3);
assign m1_address0 = zext_ln21_fu_609_p1;
assign m1_ce0 = m1_ce0_local;
assign m2_address0 = zext_ln23_fu_526_p1;
assign m2_ce0 = m2_ce0_local;
assign not_exitcond_flatten14_mid267_fu_308_p2 = (exitcond_flatten14_not_fu_302_p2 | ap_phi_mux_icmp_ln1688_phi_fu_178_p4);
assign not_exitcond_flatten_mid234_fu_344_p2 = (exitcond_flatten_mid234_fu_326_p2 ^ 1'd1);
assign prod_address0 = prod_address0_local;
assign prod_ce0 = prod_ce0_local;
assign prod_d0 = bitcast_ln24_1_reg_953;
assign prod_we0 = prod_we0_local;
assign reuse_select_fu_725_p3 = ((addr_cmp_reg_919[0:0] == 1'b1) ? reuse_reg_fu_92 : prod_load_reg_924);
assign select_ln11_fu_377_p3 = ((icmp_ln1688_reg_175[0:0] == 1'b1) ? 7'd0 : kk79_fu_108);
assign select_ln16_1_fu_675_p3 = ((icmp_ln1688_reg_175[0:0] == 1'b1) ? 17'd1 : add_ln16_1_fu_669_p2);
assign select_ln17_1_fu_662_p3 = ((empty_reg_853[0:0] == 1'b1) ? 14'd1 : add_ln17_1_fu_656_p2);
assign select_ln18_1_fu_543_p3 = ((empty_7_reg_841[0:0] == 1'b1) ? 8'd1 : add_ln18_1_fu_537_p2);
assign tmp_1_fu_486_p4 = {{kk_fu_412_p3[5:3]}};
assign trunc_ln15_fu_470_p1 = jj_fu_385_p3[5:0];
assign trunc_ln16_fu_474_p1 = kk_fu_412_p3[5:0];
assign trunc_ln20_fu_482_p1 = k_fu_463_p3[2:0];
assign trunc_ln21_fu_502_p1 = i_fu_432_p3[5:0];
assign xor_ln11_fu_284_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_178_p4 ^ 1'd1);
assign zext_ln18_fu_478_p1 = k_fu_463_p3;
assign zext_ln21_fu_609_p1 = add_ln21_1_fu_603_p3;
assign zext_ln22_fu_506_p1 = j_mid2_fu_455_p3;
assign zext_ln23_fu_526_p1 = add_ln23_1_fu_516_p4;
assign zext_ln24_fu_628_p1 = add_ln24_1_fu_622_p3;
endmodule 