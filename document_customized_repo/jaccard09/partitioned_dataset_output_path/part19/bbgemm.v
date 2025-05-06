
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [0:0] icmp_ln15_fu_767_p2;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1688_reg_216;
wire   [0:0] empty_fu_353_p2;
reg   [0:0] empty_reg_886;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_flatten_mid234_fu_383_p2;
reg   [0:0] exitcond_flatten_mid234_reg_893;
wire   [0:0] empty_9_fu_403_p2;
reg   [0:0] empty_9_reg_899;
wire   [3:0] k_mid26_fu_409_p3;
reg   [3:0] k_mid26_reg_904;
wire   [0:0] icmp_ln22_mid211_fu_423_p2;
reg   [0:0] icmp_ln22_mid211_reg_910;
reg   [1:0] tmp_reg_916;
reg   [2:0] tmp_1_reg_921;
wire   [0:0] trunc_ln18_1_fu_529_p1;
reg   [0:0] trunc_ln18_1_reg_927;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln21_fu_548_p1;
reg   [5:0] trunc_ln21_reg_932;
wire   [0:0] trunc_ln22_fu_567_p1;
reg   [0:0] trunc_ln22_reg_947;
reg   [0:0] trunc_ln22_reg_947_pp0_iter1_reg;
reg   [0:0] trunc_ln22_reg_947_pp0_iter2_reg;
wire   [1:0] or_ln23_fu_591_p2;
reg   [1:0] or_ln23_reg_953;
wire   [2:0] tmp_5_fu_597_p4;
reg   [2:0] tmp_5_reg_958;
wire   [0:0] icmp_ln22_fu_643_p2;
reg   [0:0] icmp_ln22_reg_973;
wire   [0:0] icmp_ln18_fu_649_p2;
reg   [0:0] icmp_ln18_reg_978;
wire   [63:0] select_ln21_fu_691_p3;
reg   [63:0] select_ln21_reg_983;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln23_fu_698_p3;
reg   [63:0] select_ln23_reg_988;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln17_fu_755_p2;
reg   [0:0] icmp_ln17_reg_1003;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln16_fu_761_p2;
reg   [0:0] icmp_ln16_reg_1008;
reg   [0:0] icmp_ln15_reg_1013;
reg   [0:0] icmp_ln15_reg_1013_pp0_iter1_reg;
reg   [0:0] icmp_ln15_reg_1013_pp0_iter2_reg;
reg   [10:0] prod_0_addr_reg_1017;
reg   [10:0] prod_0_addr_reg_1017_pp0_iter2_reg;
reg   [10:0] prod_1_addr_reg_1022;
reg   [10:0] prod_1_addr_reg_1022_pp0_iter2_reg;
wire   [63:0] select_ln24_fu_801_p3;
reg   [63:0] select_ln24_reg_1027;
wire   [63:0] grp_fu_261_p2;
reg   [63:0] mul_reg_1032;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln24_1_fu_812_p1;
reg   [63:0] bitcast_ln24_1_reg_1042;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1688_phi_fu_219_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1787_phi_fu_230_p4;
reg   [0:0] ap_phi_mux_icmp_ln1886_phi_fu_240_p4;
reg   [0:0] ap_phi_mux_icmp_ln2285_phi_fu_250_p4;
wire   [63:0] zext_ln21_fu_561_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_618_p1;
wire   [63:0] zext_ln24_fu_795_p1;
reg   [17:0] indvar_flatten6876_fu_98;
wire   [17:0] add_ln15_1_fu_722_p2;
wire    ap_block_pp0_stage5;
reg   [6:0] jj77_fu_102;
wire   [6:0] jj_fu_469_p3;
reg   [16:0] indvar_flatten3578_fu_106;
wire   [16:0] select_ln16_1_fu_747_p3;
reg   [6:0] kk79_fu_110;
wire   [6:0] kk_fu_389_p3;
reg   [6:0] ap_sig_allocacmp_kk79_load;
reg   [13:0] indvar_flatten1280_fu_114;
wire   [13:0] select_ln17_1_fu_734_p3;
reg   [6:0] i81_fu_118;
wire   [6:0] i_fu_490_p3;
reg   [7:0] indvar_flatten82_fu_122;
wire   [7:0] select_ln18_1_fu_636_p3;
reg   [3:0] k83_fu_126;
wire   [3:0] k_fu_519_p3;
reg   [3:0] ap_sig_allocacmp_k83_load;
reg   [3:0] j84_fu_130;
wire   [3:0] j_fu_624_p2;
reg   [6:0] add_ln1589_fu_134;
wire   [6:0] add_ln15_fu_655_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m2_0_ce0_local;
reg    m2_1_ce0_local;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg    prod_1_ce0_local;
reg   [10:0] prod_1_address0_local;
reg    prod_1_we0_local;
wire   [63:0] grp_fu_257_p0;
wire    ap_block_pp0_stage4;
wire   [63:0] grp_fu_261_p0;
wire   [63:0] grp_fu_261_p1;
wire    ap_block_pp0_stage3;
wire   [0:0] xor_ln11_fu_329_p2;
wire   [6:0] select_ln11_fu_321_p3;
wire   [0:0] and_ln11_2_fu_341_p2;
wire   [0:0] exitcond_flatten14_not_fu_359_p2;
wire   [0:0] and_ln11_fu_335_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_365_p2;
wire   [0:0] and_ln11_1_fu_377_p2;
wire   [6:0] add_ln16_fu_347_p2;
wire   [0:0] empty_8_fu_397_p2;
wire   [0:0] icmp_ln22_mid230_fu_371_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_417_p2;
wire   [6:0] i_mid219_fu_477_p3;
wire   [6:0] add_ln17_fu_484_p2;
wire   [0:0] empty_10_fu_502_p2;
wire   [0:0] empty_11_fu_506_p2;
wire   [3:0] add_ln18_fu_497_p2;
wire   [1:0] lshr_ln_fu_533_p4;
wire   [1:0] or_ln21_fu_543_p2;
wire   [10:0] add_ln21_1_fu_552_p4;
wire   [3:0] j_mid2_fu_511_p3;
wire   [1:0] tmp_4_fu_581_p4;
wire   [1:0] lshr_ln1_fu_571_p4;
wire   [2:0] trunc_ln18_fu_525_p1;
wire   [10:0] add_ln23_1_fu_607_p5;
wire   [7:0] add_ln18_1_fu_630_p2;
wire    ap_block_pp0_stage2;
wire   [13:0] add_ln17_1_fu_728_p2;
wire   [16:0] add_ln16_1_fu_741_p2;
wire   [10:0] add_ln24_1_fu_788_p4;
wire   [63:0] grp_fu_257_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_719;
reg    ap_condition_723;
reg    ap_condition_728;
reg    ap_condition_270;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6876_fu_98 = 18'd0;
#0 jj77_fu_102 = 7'd0;
#0 indvar_flatten3578_fu_106 = 17'd0;
#0 kk79_fu_110 = 7'd0;
#0 indvar_flatten1280_fu_114 = 14'd0;
#0 i81_fu_118 = 7'd0;
#0 indvar_flatten82_fu_122 = 8'd0;
#0 k83_fu_126 = 4'd0;
#0 j84_fu_130 = 4'd0;
#0 add_ln1589_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_257_p0),.din1(mul_reg_1032),.ce(1'b1),.dout(grp_fu_257_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_261_p0),.din1(grp_fu_261_p1),.ce(1'b1),.dout(grp_fu_261_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            add_ln1589_fu_134 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1589_fu_134 <= add_ln15_fu_655_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            i81_fu_118 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i81_fu_118 <= i_fu_490_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_728)) begin
            icmp_ln1688_reg_216 <= icmp_ln16_reg_1008;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1688_reg_216 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            indvar_flatten1280_fu_114 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            indvar_flatten1280_fu_114 <= select_ln17_1_fu_734_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            indvar_flatten3578_fu_106 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            indvar_flatten3578_fu_106 <= select_ln16_1_fu_747_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            indvar_flatten6876_fu_98 <= 18'd0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            indvar_flatten6876_fu_98 <= add_ln15_1_fu_722_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            indvar_flatten82_fu_122 <= 8'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten82_fu_122 <= select_ln18_1_fu_636_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            j84_fu_130 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j84_fu_130 <= j_fu_624_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            jj77_fu_102 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj77_fu_102 <= jj_fu_469_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_719)) begin
            k83_fu_126 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k83_fu_126 <= k_fu_519_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_270)) begin
        kk79_fu_110 <= kk_fu_389_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln24_1_reg_1042 <= bitcast_ln24_1_fu_812_p1;
        icmp_ln15_reg_1013 <= icmp_ln15_fu_767_p2;
        icmp_ln15_reg_1013_pp0_iter1_reg <= icmp_ln15_reg_1013;
        icmp_ln15_reg_1013_pp0_iter2_reg <= icmp_ln15_reg_1013_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_9_reg_899 <= empty_9_fu_403_p2;
        empty_reg_886 <= empty_fu_353_p2;
        exitcond_flatten_mid234_reg_893 <= exitcond_flatten_mid234_fu_383_p2;
        icmp_ln22_mid211_reg_910 <= icmp_ln22_mid211_fu_423_p2;
        k_mid26_reg_904 <= k_mid26_fu_409_p3;
        tmp_1_reg_921 <= {{kk_fu_389_p3[5:3]}};
        tmp_reg_916 <= {{kk_fu_389_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln16_reg_1008 <= icmp_ln16_fu_761_p2;
        icmp_ln17_reg_1003 <= icmp_ln17_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln18_reg_978 <= icmp_ln18_fu_649_p2;
        icmp_ln22_reg_973 <= icmp_ln22_fu_643_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_reg_1032 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln23_reg_953 <= or_ln23_fu_591_p2;
        prod_0_addr_reg_1017 <= zext_ln24_fu_795_p1;
        prod_0_addr_reg_1017_pp0_iter2_reg <= prod_0_addr_reg_1017;
        prod_1_addr_reg_1022 <= zext_ln24_fu_795_p1;
        prod_1_addr_reg_1022_pp0_iter2_reg <= prod_1_addr_reg_1022;
        tmp_5_reg_958 <= {{jj_fu_469_p3[5:3]}};
        trunc_ln18_1_reg_927 <= trunc_ln18_1_fu_529_p1;
        trunc_ln21_reg_932 <= trunc_ln21_fu_548_p1;
        trunc_ln22_reg_947 <= trunc_ln22_fu_567_p1;
        trunc_ln22_reg_947_pp0_iter1_reg <= trunc_ln22_reg_947;
        trunc_ln22_reg_947_pp0_iter2_reg <= trunc_ln22_reg_947_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln21_reg_983 <= select_ln21_fu_691_p3;
        select_ln23_reg_988 <= select_ln23_fu_698_p3;
        select_ln24_reg_1027 <= select_ln24_fu_801_p3;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_767_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln15_reg_1013_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_723)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_219_p4 = icmp_ln16_reg_1008;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_219_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1688_phi_fu_219_p4 = icmp_ln16_reg_1008;
        end
    end else begin
        ap_phi_mux_icmp_ln1688_phi_fu_219_p4 = icmp_ln16_reg_1008;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_723)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_230_p4 = icmp_ln17_reg_1003;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_230_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1787_phi_fu_230_p4 = icmp_ln17_reg_1003;
        end
    end else begin
        ap_phi_mux_icmp_ln1787_phi_fu_230_p4 = icmp_ln17_reg_1003;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_723)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_240_p4 = icmp_ln18_reg_978;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_240_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1886_phi_fu_240_p4 = icmp_ln18_reg_978;
        end
    end else begin
        ap_phi_mux_icmp_ln1886_phi_fu_240_p4 = icmp_ln18_reg_978;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_723)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_250_p4 = icmp_ln22_reg_973;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_250_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln2285_phi_fu_250_p4 = icmp_ln22_reg_973;
        end
    end else begin
        ap_phi_mux_icmp_ln2285_phi_fu_250_p4 = icmp_ln22_reg_973;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k83_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k83_load = k83_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk79_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk79_load = kk79_fu_110;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_0_address0_local = prod_0_addr_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_0_address0_local = zext_ln24_fu_795_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln22_reg_947_pp0_iter2_reg == 1'd0))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_1_address0_local = prod_1_addr_reg_1022_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_1_address0_local = zext_ln24_fu_795_p1;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln22_reg_947_pp0_iter2_reg == 1'd1))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_722_p2 = (indvar_flatten6876_fu_98 + 18'd1);
assign add_ln15_fu_655_p2 = (jj_fu_469_p3 + 7'd8);
assign add_ln16_1_fu_741_p2 = (indvar_flatten3578_fu_106 + 17'd1);
assign add_ln16_fu_347_p2 = (select_ln11_fu_321_p3 + 7'd8);
assign add_ln17_1_fu_728_p2 = (indvar_flatten1280_fu_114 + 14'd1);
assign add_ln17_fu_484_p2 = (i_mid219_fu_477_p3 + 7'd1);
assign add_ln18_1_fu_630_p2 = (indvar_flatten82_fu_122 + 8'd1);
assign add_ln18_fu_497_p2 = (k_mid26_reg_904 + 4'd1);
assign add_ln21_1_fu_552_p4 = {{{trunc_ln21_fu_548_p1}, {tmp_1_reg_921}}, {or_ln21_fu_543_p2}};
assign add_ln23_1_fu_607_p5 = {{{{tmp_1_reg_921}, {trunc_ln18_fu_525_p1}}, {tmp_5_fu_597_p4}}, {or_ln23_fu_591_p2}};
assign add_ln24_1_fu_788_p4 = {{{trunc_ln21_reg_932}, {tmp_5_reg_958}}, {or_ln23_reg_953}};
assign and_ln11_1_fu_377_p2 = (xor_ln11_fu_329_p2 & ap_phi_mux_icmp_ln1886_phi_fu_240_p4);
assign and_ln11_2_fu_341_p2 = (xor_ln11_fu_329_p2 & ap_phi_mux_icmp_ln1787_phi_fu_230_p4);
assign and_ln11_fu_335_p2 = (xor_ln11_fu_329_p2 & ap_phi_mux_icmp_ln2285_phi_fu_250_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_270 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_719 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_723 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1013 == 1'd0));
end
always @ (*) begin
    ap_condition_728 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1013 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln24_1_fu_812_p1 = grp_fu_257_p2;
assign empty_10_fu_502_p2 = (icmp_ln22_mid211_reg_910 | exitcond_flatten_mid234_reg_893);
assign empty_11_fu_506_p2 = (empty_reg_886 | empty_10_fu_502_p2);
assign empty_8_fu_397_p2 = (exitcond_flatten_mid234_fu_383_p2 | and_ln11_2_fu_341_p2);
assign empty_9_fu_403_p2 = (empty_8_fu_397_p2 | ap_phi_mux_icmp_ln1688_phi_fu_219_p4);
assign empty_fu_353_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_219_p4 | and_ln11_2_fu_341_p2);
assign exitcond_flatten14_not_fu_359_p2 = (ap_phi_mux_icmp_ln1787_phi_fu_230_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_383_p2 = (not_exitcond_flatten14_mid267_fu_365_p2 & and_ln11_1_fu_377_p2);
assign grp_fu_257_p0 = select_ln24_reg_1027;
assign grp_fu_261_p0 = select_ln21_reg_983;
assign grp_fu_261_p1 = select_ln23_reg_988;
assign i_fu_490_p3 = ((exitcond_flatten_mid234_reg_893[0:0] == 1'b1) ? add_ln17_fu_484_p2 : i_mid219_fu_477_p3);
assign i_mid219_fu_477_p3 = ((empty_reg_886[0:0] == 1'b1) ? 7'd0 : i81_fu_118);
assign icmp_ln15_fu_767_p2 = ((indvar_flatten6876_fu_98 == 18'd262143) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_761_p2 = ((select_ln16_1_fu_747_p3 == 17'd32768) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_755_p2 = ((select_ln17_1_fu_734_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_649_p2 = ((select_ln18_1_fu_636_p3 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_643_p2 = ((j_fu_624_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_423_p2 = (not_exitcond_flatten_mid234_fu_417_p2 & icmp_ln22_mid230_fu_371_p2);
assign icmp_ln22_mid230_fu_371_p2 = (not_exitcond_flatten14_mid267_fu_365_p2 & and_ln11_fu_335_p2);
assign j_fu_624_p2 = (j_mid2_fu_511_p3 + 4'd1);
assign j_mid2_fu_511_p3 = ((empty_11_fu_506_p2[0:0] == 1'b1) ? 4'd0 : j84_fu_130);
assign jj_fu_469_p3 = ((icmp_ln1688_reg_216[0:0] == 1'b1) ? add_ln1589_fu_134 : jj77_fu_102);
assign k_fu_519_p3 = ((icmp_ln22_mid211_reg_910[0:0] == 1'b1) ? add_ln18_fu_497_p2 : k_mid26_reg_904);
assign k_mid26_fu_409_p3 = ((empty_9_fu_403_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k83_load);
assign kk_fu_389_p3 = ((and_ln11_2_fu_341_p2[0:0] == 1'b1) ? add_ln16_fu_347_p2 : select_ln11_fu_321_p3);
assign lshr_ln1_fu_571_p4 = {{j_mid2_fu_511_p3[2:1]}};
assign lshr_ln_fu_533_p4 = {{k_fu_519_p3[2:1]}};
assign m1_0_address0 = zext_ln21_fu_561_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_561_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m2_0_address0 = zext_ln23_fu_618_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = zext_ln23_fu_618_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign not_exitcond_flatten14_mid267_fu_365_p2 = (exitcond_flatten14_not_fu_359_p2 | ap_phi_mux_icmp_ln1688_phi_fu_219_p4);
assign not_exitcond_flatten_mid234_fu_417_p2 = (exitcond_flatten_mid234_fu_383_p2 ^ 1'd1);
assign or_ln21_fu_543_p2 = (tmp_reg_916 | lshr_ln_fu_533_p4);
assign or_ln23_fu_591_p2 = (tmp_4_fu_581_p4 | lshr_ln1_fu_571_p4);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_1_reg_1042;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_1_reg_1042;
assign prod_1_we0 = prod_1_we0_local;
assign select_ln11_fu_321_p3 = ((ap_phi_mux_icmp_ln1688_phi_fu_219_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk79_load);
assign select_ln16_1_fu_747_p3 = ((icmp_ln1688_reg_216[0:0] == 1'b1) ? 17'd1 : add_ln16_1_fu_741_p2);
assign select_ln17_1_fu_734_p3 = ((empty_reg_886[0:0] == 1'b1) ? 14'd1 : add_ln17_1_fu_728_p2);
assign select_ln18_1_fu_636_p3 = ((empty_9_reg_899[0:0] == 1'b1) ? 8'd1 : add_ln18_1_fu_630_p2);
assign select_ln21_fu_691_p3 = ((trunc_ln18_1_reg_927[0:0] == 1'b1) ? m1_1_q0 : m1_0_q0);
assign select_ln23_fu_698_p3 = ((trunc_ln22_reg_947[0:0] == 1'b1) ? m2_1_q0 : m2_0_q0);
assign select_ln24_fu_801_p3 = ((trunc_ln22_reg_947_pp0_iter1_reg[0:0] == 1'b1) ? prod_1_q0 : prod_0_q0);
assign tmp_4_fu_581_p4 = {{jj_fu_469_p3[2:1]}};
assign tmp_5_fu_597_p4 = {{jj_fu_469_p3[5:3]}};
assign trunc_ln18_1_fu_529_p1 = k_fu_519_p3[0:0];
assign trunc_ln18_fu_525_p1 = k_fu_519_p3[2:0];
assign trunc_ln21_fu_548_p1 = i_fu_490_p3[5:0];
assign trunc_ln22_fu_567_p1 = j_mid2_fu_511_p3[0:0];
assign xor_ln11_fu_329_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_219_p4 ^ 1'd1);
assign zext_ln21_fu_561_p1 = add_ln21_1_fu_552_p4;
assign zext_ln23_fu_618_p1 = add_ln23_1_fu_607_p5;
assign zext_ln24_fu_795_p1 = add_ln24_1_fu_788_p4;
endmodule 
