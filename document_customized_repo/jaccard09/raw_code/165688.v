module forward_dataflow_in_loop_VITIS_LOOP_3156_1_Loop_VITIS_LOOP_3055_1_proc140_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv62_cast,empty_90,select_ln3162,v2329_address0,v2329_ce0,v2329_we0,v2329_d0,v2329_1_address0,v2329_1_ce0,v2329_1_we0,v2329_1_d0,v2329_2_address0,v2329_2_ce0,v2329_2_we0,v2329_2_d0,v2329_3_address0,v2329_3_ce0,v2329_3_we0,v2329_3_d0,v2329_4_address0,v2329_4_ce0,v2329_4_we0,v2329_4_d0,v2329_5_address0,v2329_5_ce0,v2329_5_we0,v2329_5_d0,v2329_6_address0,v2329_6_ce0,v2329_6_we0,v2329_6_d0,v2329_7_address0,v2329_7_ce0,v2329_7_we0,v2329_7_d0,empty_91,empty,v16209_0_address0,v16209_0_ce0,v16209_0_q0,v16209_1_address0,v16209_1_ce0,v16209_1_q0,v16209_2_address0,v16209_2_ce0,v16209_2_q0,v16209_3_address0,v16209_3_ce0,v16209_3_q0,v16209_4_address0,v16209_4_ce0,v16209_4_q0,v16209_5_address0,v16209_5_ce0,v16209_5_q0,v16209_6_address0,v16209_6_ce0,v16209_6_q0,v16209_7_address0,v16209_7_ce0,v16209_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [5:0] p_udiv62_cast;
input  [1:0] empty_90;
input  [3:0] select_ln3162;
output  [7:0] v2329_address0;
output   v2329_ce0;
output   v2329_we0;
output  [7:0] v2329_d0;
output  [7:0] v2329_1_address0;
output   v2329_1_ce0;
output   v2329_1_we0;
output  [7:0] v2329_1_d0;
output  [7:0] v2329_2_address0;
output   v2329_2_ce0;
output   v2329_2_we0;
output  [7:0] v2329_2_d0;
output  [7:0] v2329_3_address0;
output   v2329_3_ce0;
output   v2329_3_we0;
output  [7:0] v2329_3_d0;
output  [7:0] v2329_4_address0;
output   v2329_4_ce0;
output   v2329_4_we0;
output  [7:0] v2329_4_d0;
output  [7:0] v2329_5_address0;
output   v2329_5_ce0;
output   v2329_5_we0;
output  [7:0] v2329_5_d0;
output  [7:0] v2329_6_address0;
output   v2329_6_ce0;
output   v2329_6_we0;
output  [7:0] v2329_6_d0;
output  [7:0] v2329_7_address0;
output   v2329_7_ce0;
output   v2329_7_we0;
output  [7:0] v2329_7_d0;
input  [0:0] empty_91;
input  [1:0] empty;
output  [13:0] v16209_0_address0;
output   v16209_0_ce0;
input  [7:0] v16209_0_q0;
output  [13:0] v16209_1_address0;
output   v16209_1_ce0;
input  [7:0] v16209_1_q0;
output  [13:0] v16209_2_address0;
output   v16209_2_ce0;
input  [7:0] v16209_2_q0;
output  [13:0] v16209_3_address0;
output   v16209_3_ce0;
input  [7:0] v16209_3_q0;
output  [13:0] v16209_4_address0;
output   v16209_4_ce0;
input  [7:0] v16209_4_q0;
output  [13:0] v16209_5_address0;
output   v16209_5_ce0;
input  [7:0] v16209_5_q0;
output  [13:0] v16209_6_address0;
output   v16209_6_ce0;
input  [7:0] v16209_6_q0;
output  [13:0] v16209_7_address0;
output   v16209_7_ce0;
input  [7:0] v16209_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln3055_fu_616_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] p_cast3_fu_434_p1;
reg   [3:0] p_cast3_reg_970;
wire  signed [4:0] select_ln3162_cast_fu_438_p1;
reg  signed [4:0] select_ln3162_cast_reg_975;
wire   [3:0] p_cast2_fu_442_p1;
reg   [3:0] p_cast2_reg_980;
wire   [2:0] v2281_mid2_fu_532_p3;
reg   [2:0] v2281_mid2_reg_985;
wire   [2:0] v2280_fu_540_p3;
reg   [2:0] v2280_reg_991;
reg   [2:0] lshr_ln_reg_997;
reg   [5:0] tmp_154_reg_1003;
wire   [0:0] icmp_ln3057_fu_604_p2;
reg   [0:0] icmp_ln3057_reg_1009;
wire   [0:0] icmp_ln3056_fu_610_p2;
reg   [0:0] icmp_ln3056_reg_1014;
reg   [0:0] icmp_ln3055_reg_1019;
wire   [7:0] add_ln3074_1_fu_853_p2;
reg   [7:0] add_ln3074_1_reg_1023;
reg   [7:0] add_ln3074_1_reg_1023_pp0_iter2_reg;
wire   [13:0] add_ln3060_1_fu_888_p2;
reg   [13:0] add_ln3060_1_reg_1028;
wire   [13:0] add_ln3062_1_fu_894_p2;
reg   [13:0] add_ln3062_1_reg_1033;
reg   [0:0] ap_phi_mux_icmp_ln3056102_phi_fu_417_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3057101_phi_fu_427_p4;
wire   [63:0] zext_ln3060_1_fu_900_p1;
wire   [63:0] zext_ln3062_1_fu_904_p1;
wire   [63:0] zext_ln3074_3_fu_914_p1;
reg   [7:0] indvar_flatten1296_fu_142;
wire   [7:0] add_ln3055_1_fu_598_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1296_load;
reg   [5:0] v227997_fu_146;
wire   [5:0] v2279_fu_512_p3;
reg   [5:0] ap_sig_allocacmp_v227997_load;
reg   [5:0] indvar_flatten98_fu_150;
wire   [5:0] select_ln3056_1_fu_590_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten98_load;
reg   [2:0] v228099_fu_154;
reg   [2:0] ap_sig_allocacmp_v228099_load;
reg   [2:0] v2281100_fu_158;
wire   [2:0] v2281_fu_578_p2;
reg   [2:0] ap_sig_allocacmp_v2281100_load;
reg    v16209_0_ce0_local;
reg    v16209_1_ce0_local;
reg    v16209_2_ce0_local;
reg    v16209_3_ce0_local;
reg    v16209_4_ce0_local;
reg    v16209_5_ce0_local;
reg    v16209_6_ce0_local;
reg    v16209_7_ce0_local;
reg    v2329_7_we0_local;
reg    v2329_7_ce0_local;
reg    v2329_6_we0_local;
reg    v2329_6_ce0_local;
reg    v2329_5_we0_local;
reg    v2329_5_ce0_local;
reg    v2329_4_we0_local;
reg    v2329_4_ce0_local;
reg    v2329_3_we0_local;
reg    v2329_3_ce0_local;
reg    v2329_2_we0_local;
reg    v2329_2_ce0_local;
reg    v2329_1_we0_local;
reg    v2329_1_ce0_local;
reg    v2329_we0_local;
reg    v2329_ce0_local;
wire   [0:0] xor_ln3055_fu_500_p2;
wire   [5:0] add_ln3055_fu_486_p2;
wire   [2:0] select_ln3055_fu_492_p3;
wire   [0:0] and_ln3055_fu_506_p2;
wire   [0:0] empty_240_fu_526_p2;
wire   [2:0] add_ln3056_fu_520_p2;
wire   [8:0] zext_ln3055_fu_548_p1;
wire   [8:0] empty_241_fu_562_p2;
wire   [5:0] add_ln3056_1_fu_584_p2;
wire   [5:0] p_shl45_fu_650_p3;
wire   [5:0] zext_ln3055_1_fu_647_p1;
wire   [5:0] empty_242_fu_663_p2;
wire   [6:0] tmp_153_fu_676_p3;
wire   [9:0] p_shl43_fu_668_p3;
wire   [9:0] zext_ln3060_fu_684_p1;
wire   [9:0] sub_ln3060_fu_688_p2;
wire   [6:0] tmp_155_fu_705_p3;
wire   [9:0] p_shl41_fu_698_p3;
wire   [9:0] zext_ln3062_fu_712_p1;
wire   [9:0] sub_ln3062_fu_716_p2;
wire   [5:0] sub_ln3074_fu_657_p2;
wire   [5:0] zext_ln3074_fu_726_p1;
wire   [5:0] add_ln3074_fu_729_p2;
wire   [4:0] trunc_ln3074_fu_735_p1;
wire   [7:0] tmp_156_fu_739_p3;
wire   [7:0] zext_ln3074_1_fu_747_p1;
wire   [3:0] zext_ln3056_1_fu_757_p1;
wire   [3:0] tmp_fu_760_p2;
wire   [4:0] tmp_cast_fu_765_p1;
wire   [4:0] empty_243_fu_769_p2;
wire   [10:0] mul_ln3060_cast_fu_694_p1;
wire  signed [10:0] sext_ln3060_fu_774_p1;
wire   [10:0] add_ln3060_fu_778_p2;
wire   [9:0] trunc_ln3060_fu_784_p1;
wire   [11:0] tmp_157_fu_796_p3;
wire   [13:0] p_shl_fu_788_p3;
wire  signed [13:0] sext_ln3062_fu_804_p1;
wire   [10:0] zext_ln3056_fu_722_p1;
wire   [10:0] add_ln3062_fu_814_p2;
wire   [9:0] trunc_ln3062_fu_820_p1;
wire   [11:0] tmp_158_fu_832_p3;
wire   [13:0] p_shl47_fu_824_p3;
wire  signed [13:0] sext_ln3057_fu_840_p1;
wire   [7:0] sub_ln3056_fu_751_p2;
wire   [7:0] zext_ln3074_2_fu_850_p1;
wire   [3:0] zext_ln3057_fu_859_p1;
wire   [3:0] add_ln3059_fu_869_p2;
wire   [4:0] zext_ln3059_fu_874_p1;
wire   [4:0] select_ln3059_fu_862_p3;
wire   [4:0] add_ln3059_1_fu_878_p2;
wire   [13:0] sub_ln3062_1_fu_808_p2;
wire  signed [13:0] sext_ln3060_1_fu_884_p1;
wire   [13:0] sub_ln3057_fu_844_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_651;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1296_fu_142 = 8'd0;
#0 v227997_fu_146 = 6'd0;
#0 indvar_flatten98_fu_150 = 6'd0;
#0 v228099_fu_154 = 3'd0;
#0 v2281100_fu_158 = 3'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1296_fu_142 <= add_ln3055_1_fu_598_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1296_fu_142 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten98_fu_150 <= select_ln3056_1_fu_590_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten98_fu_150 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v227997_fu_146 <= v2279_fu_512_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v227997_fu_146 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v228099_fu_154 <= v2280_fu_540_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v228099_fu_154 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2281100_fu_158 <= v2281_fu_578_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v2281100_fu_158 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3060_1_reg_1028 <= add_ln3060_1_fu_888_p2;
        add_ln3062_1_reg_1033 <= add_ln3062_1_fu_894_p2;
        add_ln3074_1_reg_1023 <= add_ln3074_1_fu_853_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln3055_reg_1019 <= icmp_ln3055_fu_616_p2;
        lshr_ln_reg_997 <= {{v2279_fu_512_p3[5:3]}};
        p_cast2_reg_980[1 : 0] <= p_cast2_fu_442_p1[1 : 0];
        p_cast3_reg_970[1 : 0] <= p_cast3_fu_434_p1[1 : 0];
        select_ln3162_cast_reg_975 <= select_ln3162_cast_fu_438_p1;
        tmp_154_reg_1003 <= {{empty_241_fu_562_p2[8:3]}};
        v2280_reg_991 <= v2280_fu_540_p3;
        v2281_mid2_reg_985 <= v2281_mid2_fu_532_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln3074_1_reg_1023_pp0_iter2_reg <= add_ln3074_1_reg_1023;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3056_reg_1014 <= icmp_ln3056_fu_610_p2;
        icmp_ln3057_reg_1009 <= icmp_ln3057_fu_604_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3055_fu_616_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_651)) begin
            ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 = icmp_ln3056_reg_1014;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 = icmp_ln3056_reg_1014;
        end
    end else begin
        ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 = icmp_ln3056_reg_1014;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_651)) begin
            ap_phi_mux_icmp_ln3057101_phi_fu_427_p4 = icmp_ln3057_reg_1009;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3057101_phi_fu_427_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3057101_phi_fu_427_p4 = icmp_ln3057_reg_1009;
        end
    end else begin
        ap_phi_mux_icmp_ln3057101_phi_fu_427_p4 = icmp_ln3057_reg_1009;
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
        ap_sig_allocacmp_indvar_flatten1296_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1296_load = indvar_flatten1296_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten98_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten98_load = indvar_flatten98_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v227997_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v227997_load = v227997_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v228099_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v228099_load = v228099_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2281100_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v2281100_load = v2281100_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_0_ce0_local = 1'b1;
    end else begin
        v16209_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_1_ce0_local = 1'b1;
    end else begin
        v16209_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_2_ce0_local = 1'b1;
    end else begin
        v16209_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_3_ce0_local = 1'b1;
    end else begin
        v16209_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_4_ce0_local = 1'b1;
    end else begin
        v16209_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_5_ce0_local = 1'b1;
    end else begin
        v16209_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_6_ce0_local = 1'b1;
    end else begin
        v16209_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16209_7_ce0_local = 1'b1;
    end else begin
        v16209_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_1_ce0_local = 1'b1;
    end else begin
        v2329_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_1_we0_local = 1'b1;
    end else begin
        v2329_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_2_ce0_local = 1'b1;
    end else begin
        v2329_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_2_we0_local = 1'b1;
    end else begin
        v2329_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_3_ce0_local = 1'b1;
    end else begin
        v2329_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_3_we0_local = 1'b1;
    end else begin
        v2329_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_4_ce0_local = 1'b1;
    end else begin
        v2329_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_4_we0_local = 1'b1;
    end else begin
        v2329_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_5_ce0_local = 1'b1;
    end else begin
        v2329_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_5_we0_local = 1'b1;
    end else begin
        v2329_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_6_ce0_local = 1'b1;
    end else begin
        v2329_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_6_we0_local = 1'b1;
    end else begin
        v2329_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_7_ce0_local = 1'b1;
    end else begin
        v2329_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_7_we0_local = 1'b1;
    end else begin
        v2329_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_ce0_local = 1'b1;
    end else begin
        v2329_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2329_we0_local = 1'b1;
    end else begin
        v2329_we0_local = 1'b0;
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
assign add_ln3055_1_fu_598_p2 = (ap_sig_allocacmp_indvar_flatten1296_load + 8'd1);
assign add_ln3055_fu_486_p2 = (ap_sig_allocacmp_v227997_load + 6'd8);
assign add_ln3056_1_fu_584_p2 = (ap_sig_allocacmp_indvar_flatten98_load + 6'd1);
assign add_ln3056_fu_520_p2 = (select_ln3055_fu_492_p3 + 3'd1);
assign add_ln3059_1_fu_878_p2 = (zext_ln3059_fu_874_p1 + select_ln3059_fu_862_p3);
assign add_ln3059_fu_869_p2 = (p_cast3_reg_970 + zext_ln3057_fu_859_p1);
assign add_ln3060_1_fu_888_p2 = ($signed(sub_ln3062_1_fu_808_p2) + $signed(sext_ln3060_1_fu_884_p1));
assign add_ln3060_fu_778_p2 = ($signed(mul_ln3060_cast_fu_694_p1) + $signed(sext_ln3060_fu_774_p1));
assign add_ln3062_1_fu_894_p2 = ($signed(sub_ln3057_fu_844_p2) + $signed(sext_ln3060_1_fu_884_p1));
assign add_ln3062_fu_814_p2 = ($signed(zext_ln3056_fu_722_p1) + $signed(sext_ln3060_fu_774_p1));
assign add_ln3074_1_fu_853_p2 = (sub_ln3056_fu_751_p2 + zext_ln3074_2_fu_850_p1);
assign add_ln3074_fu_729_p2 = (sub_ln3074_fu_657_p2 + zext_ln3074_fu_726_p1);
assign and_ln3055_fu_506_p2 = (xor_ln3055_fu_500_p2 & ap_phi_mux_icmp_ln3057101_phi_fu_427_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_651 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln3055_reg_1019 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_240_fu_526_p2 = (ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 | and_ln3055_fu_506_p2);
assign empty_241_fu_562_p2 = (mul_i + zext_ln3055_fu_548_p1);
assign empty_242_fu_663_p2 = (zext_ln3055_1_fu_647_p1 + p_udiv62_cast);
assign empty_243_fu_769_p2 = ($signed(tmp_cast_fu_765_p1) + $signed(select_ln3162_cast_reg_975));
assign icmp_ln3055_fu_616_p2 = ((ap_sig_allocacmp_indvar_flatten1296_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln3056_fu_610_p2 = ((select_ln3056_1_fu_590_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln3057_fu_604_p2 = ((v2281_fu_578_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_ln3060_cast_fu_694_p1 = sub_ln3060_fu_688_p2;
assign p_cast2_fu_442_p1 = empty_90;
assign p_cast3_fu_434_p1 = empty;
assign p_shl41_fu_698_p3 = {{tmp_154_reg_1003}, {4'd0}};
assign p_shl43_fu_668_p3 = {{empty_242_fu_663_p2}, {4'd0}};
assign p_shl45_fu_650_p3 = {{lshr_ln_reg_997}, {3'd0}};
assign p_shl47_fu_824_p3 = {{trunc_ln3062_fu_820_p1}, {4'd0}};
assign p_shl_fu_788_p3 = {{trunc_ln3060_fu_784_p1}, {4'd0}};
assign select_ln3055_fu_492_p3 = ((ap_phi_mux_icmp_ln3056102_phi_fu_417_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v228099_load);
assign select_ln3056_1_fu_590_p3 = ((ap_phi_mux_icmp_ln3056102_phi_fu_417_p4[0:0] == 1'b1) ? 6'd1 : add_ln3056_1_fu_584_p2);
assign select_ln3059_fu_862_p3 = ((empty_91[0:0] == 1'b1) ? 5'd6 : 5'd31);
assign select_ln3162_cast_fu_438_p1 = $signed(select_ln3162);
assign sext_ln3057_fu_840_p1 = $signed(tmp_158_fu_832_p3);
assign sext_ln3060_1_fu_884_p1 = $signed(add_ln3059_1_fu_878_p2);
assign sext_ln3060_fu_774_p1 = $signed(empty_243_fu_769_p2);
assign sext_ln3062_fu_804_p1 = $signed(tmp_157_fu_796_p3);
assign sub_ln3056_fu_751_p2 = (tmp_156_fu_739_p3 - zext_ln3074_1_fu_747_p1);
assign sub_ln3057_fu_844_p2 = ($signed(p_shl47_fu_824_p3) - $signed(sext_ln3057_fu_840_p1));
assign sub_ln3060_fu_688_p2 = (p_shl43_fu_668_p3 - zext_ln3060_fu_684_p1);
assign sub_ln3062_1_fu_808_p2 = ($signed(p_shl_fu_788_p3) - $signed(sext_ln3062_fu_804_p1));
assign sub_ln3062_fu_716_p2 = (p_shl41_fu_698_p3 - zext_ln3062_fu_712_p1);
assign sub_ln3074_fu_657_p2 = (p_shl45_fu_650_p3 - zext_ln3055_1_fu_647_p1);
assign tmp_153_fu_676_p3 = {{empty_242_fu_663_p2}, {1'd0}};
assign tmp_155_fu_705_p3 = {{tmp_154_reg_1003}, {1'd0}};
assign tmp_156_fu_739_p3 = {{trunc_ln3074_fu_735_p1}, {3'd0}};
assign tmp_157_fu_796_p3 = {{add_ln3060_fu_778_p2}, {1'd0}};
assign tmp_158_fu_832_p3 = {{add_ln3062_fu_814_p2}, {1'd0}};
assign tmp_cast_fu_765_p1 = tmp_fu_760_p2;
assign tmp_fu_760_p2 = (p_cast2_reg_980 + zext_ln3056_1_fu_757_p1);
assign trunc_ln3060_fu_784_p1 = add_ln3060_fu_778_p2[9:0];
assign trunc_ln3062_fu_820_p1 = add_ln3062_fu_814_p2[9:0];
assign trunc_ln3074_fu_735_p1 = add_ln3074_fu_729_p2[4:0];
assign v16209_0_address0 = zext_ln3060_1_fu_900_p1;
assign v16209_0_ce0 = v16209_0_ce0_local;
assign v16209_1_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_1_ce0 = v16209_1_ce0_local;
assign v16209_2_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_2_ce0 = v16209_2_ce0_local;
assign v16209_3_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_3_ce0 = v16209_3_ce0_local;
assign v16209_4_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_4_ce0 = v16209_4_ce0_local;
assign v16209_5_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_5_ce0 = v16209_5_ce0_local;
assign v16209_6_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_6_ce0 = v16209_6_ce0_local;
assign v16209_7_address0 = zext_ln3062_1_fu_904_p1;
assign v16209_7_ce0 = v16209_7_ce0_local;
assign v2279_fu_512_p3 = ((ap_phi_mux_icmp_ln3056102_phi_fu_417_p4[0:0] == 1'b1) ? add_ln3055_fu_486_p2 : ap_sig_allocacmp_v227997_load);
assign v2280_fu_540_p3 = ((and_ln3055_fu_506_p2[0:0] == 1'b1) ? add_ln3056_fu_520_p2 : select_ln3055_fu_492_p3);
assign v2281_fu_578_p2 = (v2281_mid2_fu_532_p3 + 3'd1);
assign v2281_mid2_fu_532_p3 = ((empty_240_fu_526_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v2281100_load);
assign v2329_1_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_1_ce0 = v2329_1_ce0_local;
assign v2329_1_d0 = v16209_6_q0;
assign v2329_1_we0 = v2329_1_we0_local;
assign v2329_2_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_2_ce0 = v2329_2_ce0_local;
assign v2329_2_d0 = v16209_5_q0;
assign v2329_2_we0 = v2329_2_we0_local;
assign v2329_3_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_3_ce0 = v2329_3_ce0_local;
assign v2329_3_d0 = v16209_4_q0;
assign v2329_3_we0 = v2329_3_we0_local;
assign v2329_4_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_4_ce0 = v2329_4_ce0_local;
assign v2329_4_d0 = v16209_3_q0;
assign v2329_4_we0 = v2329_4_we0_local;
assign v2329_5_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_5_ce0 = v2329_5_ce0_local;
assign v2329_5_d0 = v16209_2_q0;
assign v2329_5_we0 = v2329_5_we0_local;
assign v2329_6_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_6_ce0 = v2329_6_ce0_local;
assign v2329_6_d0 = v16209_1_q0;
assign v2329_6_we0 = v2329_6_we0_local;
assign v2329_7_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_7_ce0 = v2329_7_ce0_local;
assign v2329_7_d0 = v16209_0_q0;
assign v2329_7_we0 = v2329_7_we0_local;
assign v2329_address0 = zext_ln3074_3_fu_914_p1;
assign v2329_ce0 = v2329_ce0_local;
assign v2329_d0 = v16209_7_q0;
assign v2329_we0 = v2329_we0_local;
assign xor_ln3055_fu_500_p2 = (ap_phi_mux_icmp_ln3056102_phi_fu_417_p4 ^ 1'd1);
assign zext_ln3055_1_fu_647_p1 = lshr_ln_reg_997;
assign zext_ln3055_fu_548_p1 = v2279_fu_512_p3;
assign zext_ln3056_1_fu_757_p1 = v2280_reg_991;
assign zext_ln3056_fu_722_p1 = sub_ln3062_fu_716_p2;
assign zext_ln3057_fu_859_p1 = v2281_mid2_reg_985;
assign zext_ln3059_fu_874_p1 = add_ln3059_fu_869_p2;
assign zext_ln3060_1_fu_900_p1 = add_ln3060_1_reg_1028;
assign zext_ln3060_fu_684_p1 = tmp_153_fu_676_p3;
assign zext_ln3062_1_fu_904_p1 = add_ln3062_1_reg_1033;
assign zext_ln3062_fu_712_p1 = tmp_155_fu_705_p3;
assign zext_ln3074_1_fu_747_p1 = add_ln3074_fu_729_p2;
assign zext_ln3074_2_fu_850_p1 = v2281_mid2_reg_985;
assign zext_ln3074_3_fu_914_p1 = add_ln3074_1_reg_1023_pp0_iter2_reg;
assign zext_ln3074_fu_726_p1 = v2280_reg_991;
always @ (posedge ap_clk) begin
    p_cast3_reg_970[3:2] <= 2'b00;
    p_cast2_reg_980[3:2] <= 2'b00;
end
endmodule 