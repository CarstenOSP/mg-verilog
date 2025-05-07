module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0); 
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln15_fu_824_p2;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage7_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln15_reg_1164;
reg   [0:0] icmp_ln15_reg_1164_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage3;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1685_reg_231;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_fu_388_p2;
reg   [0:0] empty_reg_999;
wire   [0:0] exitcond_flatten_mid234_fu_418_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1005;
wire   [0:0] empty_9_fu_438_p2;
reg   [0:0] empty_9_reg_1010;
wire   [3:0] k_mid26_fu_444_p3;
reg   [3:0] k_mid26_reg_1016;
wire   [0:0] icmp_ln22_mid211_fu_452_p2;
reg   [0:0] icmp_ln22_mid211_reg_1022;
reg   [1:0] tmp_reg_1028;
reg   [2:0] tmp_1_reg_1033;
wire   [3:0] j_mid2_fu_535_p3;
reg   [3:0] j_mid2_reg_1039;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln18_1_fu_552_p1;
reg   [0:0] trunc_ln18_1_reg_1044;
wire   [5:0] trunc_ln21_fu_571_p1;
reg   [5:0] trunc_ln21_reg_1049;
wire   [1:0] or_ln23_fu_610_p2;
reg   [1:0] or_ln23_reg_1064;
wire   [2:0] tmp_5_fu_616_p4;
reg   [2:0] tmp_5_reg_1069;
wire   [63:0] select_ln21_fu_669_p3;
reg   [63:0] select_ln21_reg_1084;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_0_load_reg_1089;
reg   [63:0] m2_1_load_reg_1094;
wire   [63:0] temp_x_fu_676_p1;
reg   [63:0] temp_x_reg_1099;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln23_fu_680_p1;
reg   [10:0] prod_0_addr_reg_1109;
reg   [10:0] prod_0_addr_reg_1109_pp0_iter1_reg;
wire   [0:0] addr_cmp96_fu_700_p2;
reg   [0:0] addr_cmp96_reg_1114;
reg   [10:0] prod_1_addr_reg_1119;
reg   [10:0] prod_1_addr_reg_1119_pp0_iter1_reg;
wire   [0:0] addr_cmp_fu_714_p2;
reg   [0:0] addr_cmp_reg_1124;
reg   [63:0] prod_0_load_reg_1129;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_1_fu_725_p1;
reg   [63:0] prod_1_load_reg_1139;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] xor_ln22_fu_800_p2;
reg   [0:0] xor_ln22_reg_1144;
wire   [0:0] icmp_ln18_fu_806_p2;
reg   [0:0] icmp_ln18_reg_1149;
wire   [0:0] icmp_ln17_fu_812_p2;
reg   [0:0] icmp_ln17_reg_1154;
wire   [0:0] icmp_ln16_fu_818_p2;
reg   [0:0] icmp_ln16_reg_1159;
wire   [63:0] grp_fu_276_p2;
reg   [63:0] mul_reg_1168;
wire   [63:0] bitcast_ln24_fu_864_p1;
reg   [63:0] mul_1_reg_1178;
wire   [63:0] bitcast_ln24_2_fu_878_p1;
wire   [63:0] bitcast_ln24_1_fu_883_p1;
reg   [63:0] bitcast_ln24_1_reg_1188;
wire   [63:0] bitcast_ln24_3_fu_892_p1;
reg   [63:0] bitcast_ln24_3_reg_1193;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_234_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_245_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_255_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_265_p4;
wire   [63:0] zext_ln21_fu_584_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_637_p1;
wire   [63:0] zext_ln24_fu_691_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] reuse_addr_reg93_fu_98;
reg   [63:0] reuse_reg92_fu_102;
wire    ap_block_pp0_stage2;
reg   [63:0] reuse_addr_reg_fu_106;
reg   [63:0] reuse_reg_fu_110;
reg   [16:0] indvar_flatten6873_fu_114;
wire   [16:0] add_ln15_1_fu_786_p2;
wire    ap_block_pp0_stage7;
reg   [6:0] jj74_fu_118;
wire   [6:0] jj_fu_495_p3;
reg   [15:0] indvar_flatten3575_fu_122;
wire   [15:0] select_ln16_1_fu_778_p3;
reg   [6:0] kk76_fu_126;
wire   [6:0] kk_fu_424_p3;
reg   [6:0] ap_sig_allocacmp_kk76_load;
reg   [12:0] indvar_flatten1277_fu_130;
wire   [12:0] select_ln17_1_fu_765_p3;
reg   [6:0] i78_fu_134;
wire   [6:0] i_fu_523_p3;
reg   [6:0] indvar_flatten79_fu_138;
wire   [6:0] select_ln18_1_fu_752_p3;
reg   [3:0] k80_fu_142;
wire   [3:0] k_fu_542_p3;
reg   [3:0] ap_sig_allocacmp_k80_load;
reg   [3:0] j81_fu_146;
wire   [3:0] j_fu_741_p2;
reg   [6:0] add_ln1586_fu_150;
wire   [6:0] add_ln15_fu_643_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m2_0_ce0_local;
reg    m2_1_ce0_local;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg    prod_1_ce0_local;
reg   [10:0] prod_1_address0_local;
wire    ap_block_pp0_stage4;
reg    prod_1_we0_local;
reg   [63:0] grp_fu_272_p0;
reg   [63:0] grp_fu_272_p1;
reg   [63:0] grp_fu_276_p0;
reg   [63:0] grp_fu_276_p1;
wire   [0:0] xor_ln11_fu_370_p2;
wire   [6:0] select_ln11_fu_356_p3;
wire   [0:0] and_ln11_1_fu_376_p2;
wire   [0:0] or_ln11_fu_364_p2;
wire   [0:0] exitcond_flatten14_not_fu_400_p2;
wire   [0:0] and_ln11_fu_412_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_406_p2;
wire   [6:0] add_ln16_fu_382_p2;
wire   [0:0] empty_8_fu_432_p2;
wire   [0:0] icmp_ln22_mid230_fu_394_p2;
wire   [6:0] i_mid219_fu_503_p3;
wire   [6:0] add_ln17_fu_510_p2;
wire   [3:0] j_mid27_fu_516_p3;
wire   [3:0] add_ln18_fu_530_p2;
wire   [1:0] lshr_ln_fu_556_p4;
wire   [1:0] or_ln21_fu_566_p2;
wire   [10:0] add_ln21_1_fu_575_p4;
wire   [1:0] tmp_4_fu_600_p4;
wire   [1:0] lshr_ln1_fu_590_p4;
wire   [2:0] trunc_ln18_fu_548_p1;
wire   [10:0] add_ln23_1_fu_626_p5;
wire   [10:0] add_ln24_1_fu_684_p4;
wire   [6:0] add_ln18_1_fu_746_p2;
wire   [12:0] add_ln17_1_fu_759_p2;
wire   [15:0] add_ln16_1_fu_772_p2;
wire   [0:0] tmp_2_fu_792_p3;
wire   [63:0] reuse_select97_fu_858_p3;
wire   [63:0] reuse_select_fu_872_p3;
wire   [63:0] grp_fu_272_p2;
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
reg    ap_condition_787;
reg    ap_condition_791;
reg    ap_condition_799;
reg    ap_condition_318;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg93_fu_98 = 64'd0;
#0 reuse_reg92_fu_102 = 64'd0;
#0 reuse_addr_reg_fu_106 = 64'd0;
#0 reuse_reg_fu_110 = 64'd0;
#0 indvar_flatten6873_fu_114 = 17'd0;
#0 jj74_fu_118 = 7'd0;
#0 indvar_flatten3575_fu_122 = 16'd0;
#0 kk76_fu_126 = 7'd0;
#0 indvar_flatten1277_fu_130 = 13'd0;
#0 i78_fu_134 = 7'd0;
#0 indvar_flatten79_fu_138 = 7'd0;
#0 k80_fu_142 = 4'd0;
#0 j81_fu_146 = 4'd0;
#0 add_ln1586_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_272_p0),.din1(grp_fu_272_p1),.ce(1'b1),.dout(grp_fu_272_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(1'b1),.dout(grp_fu_276_p2));
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
        if ((1'b1 == ap_condition_787)) begin
            add_ln1586_fu_150 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_150 <= add_ln15_fu_643_p2;
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
        if ((1'b1 == ap_condition_787)) begin
            i78_fu_134 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_134 <= i_fu_523_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_799)) begin
            icmp_ln1685_reg_231 <= icmp_ln16_reg_1159;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_231 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            indvar_flatten1277_fu_130 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten1277_fu_130 <= select_ln17_1_fu_765_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            indvar_flatten3575_fu_122 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten3575_fu_122 <= select_ln16_1_fu_778_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            indvar_flatten6873_fu_114 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten6873_fu_114 <= add_ln15_1_fu_786_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            indvar_flatten79_fu_138 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            indvar_flatten79_fu_138 <= select_ln18_1_fu_752_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            j81_fu_146 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            j81_fu_146 <= j_fu_741_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            jj74_fu_118 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_118 <= jj_fu_495_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_787)) begin
            k80_fu_142 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_142 <= k_fu_542_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_318)) begin
        kk76_fu_126 <= kk_fu_424_p3;
    end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_787)) begin
        reuse_addr_reg93_fu_98 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg93_fu_98 <= zext_ln24_fu_691_p1;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_787)) begin
        reuse_addr_reg_fu_106 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_addr_reg_fu_106 <= zext_ln24_fu_691_p1;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg92_fu_102 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
    reuse_reg92_fu_102 <= bitcast_ln24_1_fu_883_p1;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    reuse_reg_fu_110 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
    reuse_reg_fu_110 <= bitcast_ln24_3_fu_892_p1;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        addr_cmp96_reg_1114 <= addr_cmp96_fu_700_p2;
        addr_cmp_reg_1124 <= addr_cmp_fu_714_p2;
        prod_0_addr_reg_1109 <= zext_ln24_fu_691_p1;
        prod_0_addr_reg_1109_pp0_iter1_reg <= prod_0_addr_reg_1109;
        prod_1_addr_reg_1119 <= zext_ln24_fu_691_p1;
        prod_1_addr_reg_1119_pp0_iter1_reg <= prod_1_addr_reg_1119;
        temp_x_reg_1099 <= temp_x_fu_676_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln24_1_reg_1188 <= bitcast_ln24_1_fu_883_p1;
        j_mid2_reg_1039 <= j_mid2_fu_535_p3;
        or_ln23_reg_1064 <= or_ln23_fu_610_p2;
        tmp_5_reg_1069 <= {{jj_fu_495_p3[5:3]}};
        trunc_ln18_1_reg_1044 <= trunc_ln18_1_fu_552_p1;
        trunc_ln21_reg_1049 <= trunc_ln21_fu_571_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln24_3_reg_1193 <= bitcast_ln24_3_fu_892_p1;
        m2_0_load_reg_1089 <= m2_0_q0;
        m2_1_load_reg_1094 <= m2_1_q0;
        select_ln21_reg_1084 <= select_ln21_fu_669_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_9_reg_1010 <= empty_9_fu_438_p2;
        empty_reg_999 <= empty_fu_388_p2;
        exitcond_flatten_mid234_reg_1005 <= exitcond_flatten_mid234_fu_418_p2;
        icmp_ln22_mid211_reg_1022 <= icmp_ln22_mid211_fu_452_p2;
        k_mid26_reg_1016 <= k_mid26_fu_444_p3;
        tmp_1_reg_1033 <= {{kk_fu_424_p3[5:3]}};
        tmp_reg_1028 <= {{kk_fu_424_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln15_reg_1164 <= icmp_ln15_fu_824_p2;
        icmp_ln15_reg_1164_pp0_iter1_reg <= icmp_ln15_reg_1164;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln16_reg_1159 <= icmp_ln16_fu_818_p2;
        icmp_ln17_reg_1154 <= icmp_ln17_fu_812_p2;
        icmp_ln18_reg_1149 <= icmp_ln18_fu_806_p2;
        xor_ln22_reg_1144 <= xor_ln22_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_1_reg_1178 <= grp_fu_276_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_reg_1168 <= grp_fu_276_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_0_load_reg_1129 <= prod_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_1_load_reg_1139 <= prod_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_824_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_1164_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_791)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_234_p4 = icmp_ln16_reg_1159;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_234_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_234_p4 = icmp_ln16_reg_1159;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_234_p4 = icmp_ln16_reg_1159;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_791)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_245_p4 = icmp_ln17_reg_1154;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_245_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_245_p4 = icmp_ln17_reg_1154;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_245_p4 = icmp_ln17_reg_1154;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_791)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_255_p4 = icmp_ln18_reg_1149;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_255_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_255_p4 = icmp_ln18_reg_1149;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_255_p4 = icmp_ln18_reg_1149;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_791)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_265_p4 = xor_ln22_reg_1144;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_265_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_265_p4 = xor_ln22_reg_1144;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_265_p4 = xor_ln22_reg_1144;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k80_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k80_load = k80_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk76_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk76_load = kk76_fu_126;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_272_p0 = bitcast_ln24_2_fu_878_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_272_p0 = bitcast_ln24_fu_864_p1;
        end else begin
            grp_fu_272_p0 = 'bx;
        end
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_272_p1 = mul_1_reg_1178;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_272_p1 = mul_reg_1168;
        end else begin
            grp_fu_272_p1 = 'bx;
        end
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_276_p0 = temp_x_reg_1099;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_276_p0 = temp_x_fu_676_p1;
        end else begin
            grp_fu_276_p0 = 'bx;
        end
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_276_p1 = bitcast_ln23_1_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_276_p1 = bitcast_ln23_fu_680_p1;
        end else begin
            grp_fu_276_p1 = 'bx;
        end
    end else begin
        grp_fu_276_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_0_address0_local = prod_0_addr_reg_1109_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_0_address0_local = zext_ln24_fu_691_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_1_address0_local = prod_1_addr_reg_1119_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_1_address0_local = prod_1_addr_reg_1119;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
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
assign add_ln15_1_fu_786_p2 = (indvar_flatten6873_fu_114 + 17'd1);
assign add_ln15_fu_643_p2 = (jj_fu_495_p3 + 7'd8);
assign add_ln16_1_fu_772_p2 = (indvar_flatten3575_fu_122 + 16'd1);
assign add_ln16_fu_382_p2 = (select_ln11_fu_356_p3 + 7'd8);
assign add_ln17_1_fu_759_p2 = (indvar_flatten1277_fu_130 + 13'd1);
assign add_ln17_fu_510_p2 = (i_mid219_fu_503_p3 + 7'd1);
assign add_ln18_1_fu_746_p2 = (indvar_flatten79_fu_138 + 7'd1);
assign add_ln18_fu_530_p2 = (k_mid26_reg_1016 + 4'd1);
assign add_ln21_1_fu_575_p4 = {{{trunc_ln21_fu_571_p1}, {tmp_1_reg_1033}}, {or_ln21_fu_566_p2}};
assign add_ln23_1_fu_626_p5 = {{{{tmp_1_reg_1033}, {trunc_ln18_fu_548_p1}}, {tmp_5_fu_616_p4}}, {or_ln23_fu_610_p2}};
assign add_ln24_1_fu_684_p4 = {{{trunc_ln21_reg_1049}, {tmp_5_reg_1069}}, {or_ln23_reg_1064}};
assign addr_cmp96_fu_700_p2 = ((reuse_addr_reg93_fu_98 == zext_ln24_fu_691_p1) ? 1'b1 : 1'b0);
assign addr_cmp_fu_714_p2 = ((reuse_addr_reg_fu_106 == zext_ln24_fu_691_p1) ? 1'b1 : 1'b0);
assign and_ln11_1_fu_376_p2 = (xor_ln11_fu_370_p2 & ap_phi_mux_icmp_ln1784_phi_fu_245_p4);
assign and_ln11_fu_412_p2 = (xor_ln11_fu_370_p2 & ap_phi_mux_icmp_ln1883_phi_fu_255_p4);
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
    ap_condition_318 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_787 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_791 = ((icmp_ln15_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_799 = ((icmp_ln15_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_725_p1 = m2_1_load_reg_1094;
assign bitcast_ln23_fu_680_p1 = m2_0_load_reg_1089;
assign bitcast_ln24_1_fu_883_p1 = grp_fu_272_p2;
assign bitcast_ln24_2_fu_878_p1 = reuse_select_fu_872_p3;
assign bitcast_ln24_3_fu_892_p1 = grp_fu_272_p2;
assign bitcast_ln24_fu_864_p1 = reuse_select97_fu_858_p3;
assign empty_8_fu_432_p2 = (exitcond_flatten_mid234_fu_418_p2 | and_ln11_1_fu_376_p2);
assign empty_9_fu_438_p2 = (empty_8_fu_432_p2 | ap_phi_mux_icmp_ln1685_phi_fu_234_p4);
assign empty_fu_388_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_234_p4 | and_ln11_1_fu_376_p2);
assign exitcond_flatten14_not_fu_400_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_245_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_418_p2 = (not_exitcond_flatten14_mid267_fu_406_p2 & and_ln11_fu_412_p2);
assign i_fu_523_p3 = ((exitcond_flatten_mid234_reg_1005[0:0] == 1'b1) ? add_ln17_fu_510_p2 : i_mid219_fu_503_p3);
assign i_mid219_fu_503_p3 = ((empty_reg_999[0:0] == 1'b1) ? 7'd0 : i78_fu_134);
assign icmp_ln15_fu_824_p2 = ((indvar_flatten6873_fu_114 == 17'd131071) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_818_p2 = ((select_ln16_1_fu_778_p3 == 16'd16384) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_812_p2 = ((select_ln17_1_fu_765_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_806_p2 = ((select_ln18_1_fu_752_p3 == 7'd32) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_452_p2 = (icmp_ln22_mid230_fu_394_p2 | exitcond_flatten_mid234_fu_418_p2);
assign icmp_ln22_mid230_fu_394_p2 = (or_ln11_fu_364_p2 | and_ln11_1_fu_376_p2);
assign j_fu_741_p2 = (j_mid2_reg_1039 + 4'd2);
assign j_mid27_fu_516_p3 = ((empty_9_reg_1010[0:0] == 1'b1) ? 4'd0 : j81_fu_146);
assign j_mid2_fu_535_p3 = ((icmp_ln22_mid211_reg_1022[0:0] == 1'b1) ? j_mid27_fu_516_p3 : 4'd0);
assign jj_fu_495_p3 = ((icmp_ln1685_reg_231[0:0] == 1'b1) ? add_ln1586_fu_150 : jj74_fu_118);
assign k_fu_542_p3 = ((icmp_ln22_mid211_reg_1022[0:0] == 1'b1) ? k_mid26_reg_1016 : add_ln18_fu_530_p2);
assign k_mid26_fu_444_p3 = ((empty_9_fu_438_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k80_load);
assign kk_fu_424_p3 = ((and_ln11_1_fu_376_p2[0:0] == 1'b1) ? add_ln16_fu_382_p2 : select_ln11_fu_356_p3);
assign lshr_ln1_fu_590_p4 = {{j_mid2_fu_535_p3[2:1]}};
assign lshr_ln_fu_556_p4 = {{k_fu_542_p3[2:1]}};
assign m1_0_address0 = zext_ln21_fu_584_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_584_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m2_0_address0 = zext_ln23_fu_637_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = zext_ln23_fu_637_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign not_exitcond_flatten14_mid267_fu_406_p2 = (exitcond_flatten14_not_fu_400_p2 | ap_phi_mux_icmp_ln1685_phi_fu_234_p4);
assign or_ln11_fu_364_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_265_p4 | ap_phi_mux_icmp_ln1685_phi_fu_234_p4);
assign or_ln21_fu_566_p2 = (tmp_reg_1028 | lshr_ln_fu_556_p4);
assign or_ln23_fu_610_p2 = (tmp_4_fu_600_p4 | lshr_ln1_fu_590_p4);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_1_reg_1188;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_3_reg_1193;
assign prod_1_we0 = prod_1_we0_local;
assign reuse_select97_fu_858_p3 = ((addr_cmp96_reg_1114[0:0] == 1'b1) ? reuse_reg92_fu_102 : prod_0_load_reg_1129);
assign reuse_select_fu_872_p3 = ((addr_cmp_reg_1124[0:0] == 1'b1) ? reuse_reg_fu_110 : prod_1_load_reg_1139);
assign select_ln11_fu_356_p3 = ((ap_phi_mux_icmp_ln1685_phi_fu_234_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk76_load);
assign select_ln16_1_fu_778_p3 = ((icmp_ln1685_reg_231[0:0] == 1'b1) ? 16'd1 : add_ln16_1_fu_772_p2);
assign select_ln17_1_fu_765_p3 = ((empty_reg_999[0:0] == 1'b1) ? 13'd1 : add_ln17_1_fu_759_p2);
assign select_ln18_1_fu_752_p3 = ((empty_9_reg_1010[0:0] == 1'b1) ? 7'd1 : add_ln18_1_fu_746_p2);
assign select_ln21_fu_669_p3 = ((trunc_ln18_1_reg_1044[0:0] == 1'b1) ? m1_1_q0 : m1_0_q0);
assign temp_x_fu_676_p1 = select_ln21_reg_1084;
assign tmp_2_fu_792_p3 = j_fu_741_p2[32'd3];
assign tmp_4_fu_600_p4 = {{jj_fu_495_p3[2:1]}};
assign tmp_5_fu_616_p4 = {{jj_fu_495_p3[5:3]}};
assign trunc_ln18_1_fu_552_p1 = k_fu_542_p3[0:0];
assign trunc_ln18_fu_548_p1 = k_fu_542_p3[2:0];
assign trunc_ln21_fu_571_p1 = i_fu_523_p3[5:0];
assign xor_ln11_fu_370_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_234_p4 ^ 1'd1);
assign xor_ln22_fu_800_p2 = (tmp_2_fu_792_p3 ^ 1'd1);
assign zext_ln21_fu_584_p1 = add_ln21_1_fu_575_p4;
assign zext_ln23_fu_637_p1 = add_ln23_1_fu_626_p5;
assign zext_ln24_fu_691_p1 = add_ln24_1_fu_684_p4;
endmodule 