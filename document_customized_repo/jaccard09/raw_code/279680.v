module backprop_backprop_Pipeline_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v116_1_reload,mux_case_164126,v112_1_reload,mux_case_158117,mux_case_13993,mux_case_13675,mux_case_23782_reload,mux_case_03568_reload,trunc_ln5,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,indvars_iv10,v75_reload,mux_case_03886_reload,mul_ln192,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,mul_ln168,mux_case_164125_out,mux_case_164125_out_ap_vld,mux_case_158116_out,mux_case_158116_out_ap_vld,mux_case_13995_out,mux_case_13995_out_ap_vld,mux_case_13677_out,mux_case_13677_out_ap_vld,v122_out,v122_out_ap_vld,grp_fu_5220_p_din0,grp_fu_5220_p_din1,grp_fu_5220_p_opcode,grp_fu_5220_p_dout0,grp_fu_5220_p_ce,grp_fu_2437_p_din0,grp_fu_2437_p_din1,grp_fu_2437_p_dout0,grp_fu_2437_p_ce); 
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
input  [63:0] v116_1_reload;
input  [63:0] mux_case_164126;
input  [63:0] v112_1_reload;
input  [63:0] mux_case_158117;
input  [63:0] mux_case_13993;
input  [63:0] mux_case_13675;
input  [63:0] mux_case_23782_reload;
input  [63:0] mux_case_03568_reload;
input  [7:0] trunc_ln5;
output  [7:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [7:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
input  [0:0] indvars_iv10;
input  [63:0] v75_reload;
input  [63:0] mux_case_03886_reload;
input  [7:0] mul_ln192;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [7:0] v2_address1;
output   v2_ce1;
input  [63:0] v2_q1;
input  [8:0] mul_ln168;
output  [63:0] mux_case_164125_out;
output   mux_case_164125_out_ap_vld;
output  [63:0] mux_case_158116_out;
output   mux_case_158116_out_ap_vld;
output  [63:0] mux_case_13995_out;
output   mux_case_13995_out_ap_vld;
output  [63:0] mux_case_13677_out;
output   mux_case_13677_out_ap_vld;
output  [63:0] v122_out;
output   v122_out_ap_vld;
output  [63:0] grp_fu_5220_p_din0;
output  [63:0] grp_fu_5220_p_din1;
output  [1:0] grp_fu_5220_p_opcode;
input  [63:0] grp_fu_5220_p_dout0;
output   grp_fu_5220_p_ce;
output  [63:0] grp_fu_2437_p_din0;
output  [63:0] grp_fu_2437_p_din1;
input  [63:0] grp_fu_2437_p_dout0;
output   grp_fu_2437_p_ce;
reg ap_idle;
reg mux_case_164125_out_ap_vld;
reg mux_case_158116_out_ap_vld;
reg mux_case_13995_out_ap_vld;
reg mux_case_13677_out_ap_vld;
reg v122_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln192_reg_752;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_325;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] indvars_iv10_read_read_fu_154_p2;
reg   [1:0] v111_1_reg_725;
wire   [1:0] or_ln4_fu_403_p3;
reg   [1:0] or_ln4_reg_747;
wire   [0:0] icmp_ln192_fu_411_p2;
reg   [0:0] icmp_ln192_reg_752_pp0_iter1_reg;
wire   [0:0] icmp_ln193_fu_463_p2;
reg   [0:0] icmp_ln193_reg_766;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln194_fu_468_p3;
reg   [63:0] select_ln194_reg_772;
reg   [63:0] v2_load_reg_777;
wire   [63:0] select_ln194_1_fu_475_p3;
reg   [63:0] select_ln194_1_reg_782;
wire   [63:0] v112_fu_511_p3;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v113_fu_517_p1;
wire   [63:0] v113_1_fu_521_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] xor_ln196_2_fu_537_p2;
reg   [0:0] xor_ln196_2_reg_802;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [62:0] trunc_ln196_fu_543_p1;
reg   [62:0] trunc_ln196_reg_807;
wire   [63:0] v116_fu_547_p3;
reg   [63:0] v116_reg_812;
wire   [63:0] v115_fu_558_p1;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] xor_ln196_fu_575_p2;
reg   [0:0] xor_ln196_reg_822;
wire   [62:0] trunc_ln196_1_fu_581_p1;
reg   [62:0] trunc_ln196_1_reg_827;
wire   [63:0] v115_1_fu_591_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] v118_fu_609_p1;
reg   [63:0] v117_1_reg_847;
reg   [63:0] v2_load_1_reg_852;
wire   [63:0] v118_1_fu_613_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] v119_1_reg_867;
reg   [63:0] v121_2_reg_872;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln194_1_fu_386_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_fu_398_p1;
wire   [63:0] zext_ln194_2_fu_437_p1;
wire   [63:0] zext_ln199_1_fu_604_p1;
reg   [63:0] v120_fu_106;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg   [1:0] v111_fu_110;
wire   [1:0] xor_ln9_fu_498_p3;
reg   [1:0] ap_sig_allocacmp_v111_1;
reg   [63:0] mux_case_13677_fu_114;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15;
reg   [63:0] mux_case_13995_fu_118;
reg   [63:0] mux_case_158116_fu_122;
reg   [63:0] mux_case_164125_fu_126;
wire    ap_block_pp0_stage15_01001;
reg    v7_0_ce0_local;
reg   [7:0] v7_0_address0_local;
reg    v7_1_ce0_local;
reg   [7:0] v7_1_address0_local;
reg    v2_ce1_local;
reg    v2_ce0_local;
reg   [63:0] grp_fu_316_p0;
reg   [63:0] grp_fu_316_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_321_p0;
reg   [63:0] grp_fu_321_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage1;
wire   [0:0] tmp_fu_368_p3;
wire   [7:0] zext_ln194_fu_376_p1;
wire   [7:0] add_ln194_fu_380_p2;
wire   [7:0] zext_ln192_fu_364_p1;
wire   [7:0] add_ln199_fu_392_p2;
wire   [8:0] zext_ln192_2_fu_417_p1;
wire   [8:0] add_ln194_1_fu_421_p2;
wire   [7:0] lshr_ln194_1_fu_427_p4;
wire   [0:0] bit_sel2_fu_482_p3;
wire   [0:0] xor_ln192_fu_489_p2;
wire   [0:0] trunc_ln192_fu_495_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln196_fu_525_p1;
wire   [0:0] bit_sel_fu_529_p3;
wire   [63:0] xor_ln8_fu_552_p3;
wire   [63:0] bitcast_ln196_2_fu_563_p1;
wire   [0:0] bit_sel1_fu_567_p3;
wire   [63:0] xor_ln196_1_fu_585_p3;
wire   [7:0] zext_ln192_1_fu_596_p1;
wire   [7:0] add_ln199_1_fu_599_p2;
reg   [1:0] grp_fu_316_opcode;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_316;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_106 = 64'd0;
#0 v111_fu_110 = 2'd0;
#0 mux_case_13677_fu_114 = 64'd0;
#0 mux_case_13995_fu_118 = 64'd0;
#0 mux_case_158116_fu_122 = 64'd0;
#0 mux_case_164125_fu_126 = 64'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) | ((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln192_fu_411_p2 == 1'd0))) begin
            mux_case_13677_fu_114 <= v112_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_13677_fu_114 <= mux_case_13675;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln192_fu_411_p2 == 1'd0))) begin
            mux_case_13995_fu_118 <= v116_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_13995_fu_118 <= mux_case_13993;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln192_fu_411_p2 == 1'd0))) begin
            mux_case_158116_fu_122 <= v112_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_158116_fu_122 <= mux_case_158117;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln192_fu_411_p2 == 1'd0))) begin
            mux_case_164125_fu_126 <= v116_1_reload;
        end else if ((ap_loop_init == 1'b1)) begin
            mux_case_164125_fu_126 <= mux_case_164126;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_110 <= 2'd0;
    end else if (((icmp_ln192_reg_752 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_110 <= xor_ln9_fu_498_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_106 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v120_fu_106 <= grp_fu_5220_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln192_reg_752 <= icmp_ln192_fu_411_p2;
        icmp_ln192_reg_752_pp0_iter1_reg <= icmp_ln192_reg_752;
        or_ln4_reg_747[1] <= or_ln4_fu_403_p3[1];
        v111_1_reg_725 <= ap_sig_allocacmp_v111_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln193_reg_766 <= icmp_ln193_fu_463_p2;
        select_ln194_1_reg_782 <= select_ln194_1_fu_475_p3;
        select_ln194_reg_772 <= select_ln194_fu_468_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_325 <= grp_fu_2437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        trunc_ln196_1_reg_827 <= trunc_ln196_1_fu_581_p1;
        xor_ln196_reg_822 <= xor_ln196_fu_575_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        trunc_ln196_reg_807 <= trunc_ln196_fu_543_p1;
        v116_reg_812 <= v116_fu_547_p3;
        xor_ln196_2_reg_802 <= xor_ln196_2_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v117_1_reg_847 <= grp_fu_2437_p_dout0;
        v2_load_1_reg_852 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v119_1_reg_867 <= grp_fu_2437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v121_2_reg_872 <= grp_fu_5220_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_reg_777 <= v2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln192_reg_752 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_v111_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_1 = v111_fu_110;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln192_reg_752 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_316_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_316_opcode = 2'd0;
    end else begin
        grp_fu_316_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_316_p0 = v121_2_reg_872;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_316_p0 = v120_fu_106;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_316_p0 = v112_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_316_p0 = v112_fu_511_p3;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_316_p1 = v119_1_reg_867;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_316_p1 = reg_325;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_316_p1 = v113_1_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_316_p1 = v113_fu_517_p1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p0 = v117_1_reg_847;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_321_p0 = reg_325;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_321_p0 = v115_1_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_321_p0 = v115_fu_558_p1;
    end else begin
        grp_fu_321_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p1 = v118_1_fu_613_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_321_p1 = v118_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_321_p1 = v116_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_321_p1 = v116_reg_812;
    end else begin
        grp_fu_321_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        mux_case_13677_out_ap_vld = 1'b1;
    end else begin
        mux_case_13677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        mux_case_13995_out_ap_vld = 1'b1;
    end else begin
        mux_case_13995_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        mux_case_158116_out_ap_vld = 1'b1;
    end else begin
        mux_case_158116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        mux_case_164125_out_ap_vld = 1'b1;
    end else begin
        mux_case_164125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln192_reg_752_pp0_iter1_reg == 1'd1))) begin
        v122_out_ap_vld = 1'b1;
    end else begin
        v122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_316)) begin
        if (((icmp_ln192_fu_411_p2 == 1'd0) & (indvars_iv10_read_read_fu_154_p2 == 1'd1))) begin
            v7_0_address0_local = zext_ln194_2_fu_437_p1;
        end else if ((indvars_iv10_read_read_fu_154_p2 == 1'd0)) begin
            v7_0_address0_local = zext_ln194_1_fu_386_p1;
        end else begin
            v7_0_address0_local = 'bx;
        end
    end else begin
        v7_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln192_fu_411_p2 == 1'd0) & (indvars_iv10_read_read_fu_154_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (indvars_iv10_read_read_fu_154_p2 == 1'd0)))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_316)) begin
        if (((icmp_ln192_fu_411_p2 == 1'd0) & (indvars_iv10_read_read_fu_154_p2 == 1'd0))) begin
            v7_1_address0_local = zext_ln194_2_fu_437_p1;
        end else if ((indvars_iv10_read_read_fu_154_p2 == 1'd1)) begin
            v7_1_address0_local = zext_ln194_1_fu_386_p1;
        end else begin
            v7_1_address0_local = 'bx;
        end
    end else begin
        v7_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln192_fu_411_p2 == 1'd0) & (indvars_iv10_read_read_fu_154_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (indvars_iv10_read_read_fu_154_p2 == 1'd1)))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign add_ln194_1_fu_421_p2 = (zext_ln192_2_fu_417_p1 + mul_ln168);
assign add_ln194_fu_380_p2 = (zext_ln194_fu_376_p1 + trunc_ln5);
assign add_ln199_1_fu_599_p2 = (zext_ln192_1_fu_596_p1 + mul_ln192);
assign add_ln199_fu_392_p2 = (zext_ln192_fu_364_p1 + mul_ln192);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_316 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_567_p3 = bitcast_ln196_2_fu_563_p1[64'd63];
assign bit_sel2_fu_482_p3 = v111_1_reg_725[2'd1];
assign bit_sel_fu_529_p3 = bitcast_ln196_fu_525_p1[64'd63];
assign bitcast_ln196_2_fu_563_p1 = grp_fu_5220_p_dout0;
assign bitcast_ln196_fu_525_p1 = grp_fu_5220_p_dout0;
assign grp_fu_2437_p_ce = 1'b1;
assign grp_fu_2437_p_din0 = grp_fu_321_p0;
assign grp_fu_2437_p_din1 = grp_fu_321_p1;
assign grp_fu_5220_p_ce = 1'b1;
assign grp_fu_5220_p_din0 = grp_fu_316_p0;
assign grp_fu_5220_p_din1 = grp_fu_316_p1;
assign grp_fu_5220_p_opcode = grp_fu_316_opcode;
assign icmp_ln192_fu_411_p2 = ((or_ln4_fu_403_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln193_fu_463_p2 = ((v111_1_reg_725 == 2'd2) ? 1'b1 : 1'b0);
assign indvars_iv10_read_read_fu_154_p2 = indvars_iv10;
assign lshr_ln194_1_fu_427_p4 = {{add_ln194_1_fu_421_p2[8:1]}};
assign mux_case_13677_out = mux_case_13677_fu_114;
assign mux_case_13995_out = mux_case_13995_fu_118;
assign mux_case_158116_out = mux_case_158116_fu_122;
assign mux_case_164125_out = mux_case_164125_fu_126;
assign or_ln4_fu_403_p3 = {{tmp_fu_368_p3}, {1'd1}};
assign select_ln194_1_fu_475_p3 = ((indvars_iv10[0:0] == 1'b1) ? v7_0_q0 : v7_1_q0);
assign select_ln194_fu_468_p3 = ((indvars_iv10[0:0] == 1'b1) ? v7_1_q0 : v7_0_q0);
assign tmp_fu_368_p3 = ap_sig_allocacmp_v111_1[32'd1];
assign trunc_ln192_fu_495_p1 = v111_1_reg_725[0:0];
assign trunc_ln196_1_fu_581_p1 = bitcast_ln196_2_fu_563_p1[62:0];
assign trunc_ln196_fu_543_p1 = bitcast_ln196_fu_525_p1[62:0];
assign v112_fu_511_p3 = ((icmp_ln193_reg_766[0:0] == 1'b1) ? mux_case_23782_reload : mux_case_03568_reload);
assign v113_1_fu_521_p1 = select_ln194_1_reg_782;
assign v113_fu_517_p1 = select_ln194_reg_772;
assign v115_1_fu_591_p1 = xor_ln196_1_fu_585_p3;
assign v115_fu_558_p1 = xor_ln8_fu_552_p3;
assign v116_fu_547_p3 = ((icmp_ln193_reg_766[0:0] == 1'b1) ? v75_reload : mux_case_03886_reload);
assign v118_1_fu_613_p1 = v2_load_1_reg_852;
assign v118_fu_609_p1 = v2_load_reg_777;
assign v122_out = grp_fu_5220_p_dout0;
assign v2_address0 = zext_ln199_1_fu_604_p1;
assign v2_address1 = zext_ln199_fu_398_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v7_0_address0 = v7_0_address0_local;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = v7_1_address0_local;
assign v7_1_ce0 = v7_1_ce0_local;
assign xor_ln192_fu_489_p2 = (bit_sel2_fu_482_p3 ^ 1'd1);
assign xor_ln196_1_fu_585_p3 = {{xor_ln196_reg_822}, {trunc_ln196_1_reg_827}};
assign xor_ln196_2_fu_537_p2 = (bit_sel_fu_529_p3 ^ 1'd1);
assign xor_ln196_fu_575_p2 = (bit_sel1_fu_567_p3 ^ 1'd1);
assign xor_ln8_fu_552_p3 = {{xor_ln196_2_reg_802}, {trunc_ln196_reg_807}};
assign xor_ln9_fu_498_p3 = {{xor_ln192_fu_489_p2}, {trunc_ln192_fu_495_p1}};
assign zext_ln192_1_fu_596_p1 = or_ln4_reg_747;
assign zext_ln192_2_fu_417_p1 = or_ln4_fu_403_p3;
assign zext_ln192_fu_364_p1 = ap_sig_allocacmp_v111_1;
assign zext_ln194_1_fu_386_p1 = add_ln194_fu_380_p2;
assign zext_ln194_2_fu_437_p1 = lshr_ln194_1_fu_427_p4;
assign zext_ln194_fu_376_p1 = tmp_fu_368_p3;
assign zext_ln199_1_fu_604_p1 = add_ln199_1_fu_599_p2;
assign zext_ln199_fu_398_p1 = add_ln199_fu_392_p2;
always @ (posedge ap_clk) begin
    or_ln4_reg_747[0] <= 1'b1;
end
endmodule 