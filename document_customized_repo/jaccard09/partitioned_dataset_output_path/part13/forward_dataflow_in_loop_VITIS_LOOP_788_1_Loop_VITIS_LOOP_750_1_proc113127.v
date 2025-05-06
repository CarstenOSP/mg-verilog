
module forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_750_1_proc113127 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v368_address0,v368_ce0,v368_we0,v368_d0,v368_1_address0,v368_1_ce0,v368_1_we0,v368_1_d0,v368_2_address0,v368_2_ce0,v368_2_we0,v368_2_d0,v368_3_address0,v368_3_ce0,v368_3_we0,v368_3_d0,v362,v13741_0_0_address0,v13741_0_0_ce0,v13741_0_0_q0,v13741_0_1_address0,v13741_0_1_ce0,v13741_0_1_q0,v13741_1_0_address0,v13741_1_0_ce0,v13741_1_0_q0,v13741_1_1_address0,v13741_1_1_ce0,v13741_1_1_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v368_address0;
output   v368_ce0;
output   v368_we0;
output  [7:0] v368_d0;
output  [7:0] v368_1_address0;
output   v368_1_ce0;
output   v368_1_we0;
output  [7:0] v368_1_d0;
output  [7:0] v368_2_address0;
output   v368_2_ce0;
output   v368_2_we0;
output  [7:0] v368_2_d0;
output  [7:0] v368_3_address0;
output   v368_3_ce0;
output   v368_3_we0;
output  [7:0] v368_3_d0;
input  [9:0] v362;
output  [14:0] v13741_0_0_address0;
output   v13741_0_0_ce0;
input  [7:0] v13741_0_0_q0;
output  [14:0] v13741_0_1_address0;
output   v13741_0_1_ce0;
input  [7:0] v13741_0_1_q0;
output  [14:0] v13741_1_0_address0;
output   v13741_1_0_ce0;
input  [7:0] v13741_1_0_q0;
output  [14:0] v13741_1_1_address0;
output   v13741_1_1_ce0;
input  [7:0] v13741_1_1_q0;
output  [9:0] ap_return;
reg ap_idle;
reg[9:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln750_fu_564_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [9:0] v362_read_reg_954;
reg   [9:0] v362_read_reg_954_pp0_iter1_reg;
reg   [9:0] v362_read_reg_954_pp0_iter2_reg;
wire   [3:0] select_ln791_fu_330_p3;
reg   [3:0] select_ln791_reg_958;
wire   [2:0] zext_ln750_1_cast_cast_i_cast_cast_fu_346_p3;
reg   [2:0] zext_ln750_1_cast_cast_i_cast_cast_reg_963;
wire   [1:0] v352_mid2_i_fu_440_p3;
reg   [1:0] v352_mid2_i_reg_968;
wire   [4:0] lshr_ln_i_fu_460_p4;
reg   [4:0] lshr_ln_i_reg_974;
wire   [8:0] empty_182_fu_480_p2;
reg   [8:0] empty_182_reg_980;
reg   [8:0] tmp_100_reg_986;
reg   [2:0] lshr_ln7_i_reg_992;
reg   [3:0] tmp_134_i_reg_998;
wire   [0:0] icmp_ln752_fu_552_p2;
reg   [0:0] icmp_ln752_reg_1003;
wire   [0:0] icmp_ln751_fu_558_p2;
reg   [0:0] icmp_ln751_reg_1008;
reg   [0:0] icmp_ln750_reg_1013;
wire   [7:0] add_ln761_3_fu_854_p2;
reg   [7:0] add_ln761_3_reg_1017;
reg   [7:0] add_ln761_3_reg_1017_pp0_iter2_reg;
wire   [14:0] add_ln755_2_fu_872_p2;
reg   [14:0] add_ln755_2_reg_1022;
wire   [14:0] add_ln757_1_fu_878_p2;
reg   [14:0] add_ln757_1_reg_1027;
wire   [14:0] add_ln759_2_fu_884_p2;
reg   [14:0] add_ln759_2_reg_1032;
wire   [14:0] add_ln761_4_fu_890_p2;
reg   [14:0] add_ln761_4_reg_1037;
reg   [0:0] ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4;
wire   [63:0] zext_ln755_5_fu_896_p1;
wire   [63:0] zext_ln757_2_fu_900_p1;
wire   [63:0] zext_ln759_3_fu_904_p1;
wire   [63:0] zext_ln761_6_fu_908_p1;
wire   [63:0] zext_ln761_5_fu_912_p1;
reg   [7:0] indvar_flatten1245_i_fu_130;
wire   [7:0] add_ln750_1_fu_546_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1245_i_load;
reg   [5:0] v35046_i_fu_134;
wire   [5:0] select_ln750_1_fu_420_p3;
reg   [5:0] ap_sig_allocacmp_v35046_i_load;
reg   [4:0] indvar_flatten47_i_fu_138;
wire   [4:0] select_ln751_1_fu_538_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten47_i_load;
reg   [3:0] v35148_i_fu_142;
wire   [3:0] select_ln751_fu_448_p3;
reg   [3:0] ap_sig_allocacmp_v35148_i_load;
reg   [1:0] v35249_i_fu_146;
wire   [1:0] add_ln752_fu_526_p2;
reg   [1:0] ap_sig_allocacmp_v35249_i_load;
reg    v13741_0_0_ce0_local;
reg    v13741_0_1_ce0_local;
reg    v13741_1_0_ce0_local;
reg    v13741_1_1_ce0_local;
reg    v368_3_we0_local;
reg    v368_3_ce0_local;
reg    v368_2_we0_local;
reg    v368_2_ce0_local;
reg    v368_1_we0_local;
reg    v368_1_ce0_local;
reg    v368_we0_local;
reg    v368_ce0_local;
wire   [4:0] tmp_i_fu_288_p4;
wire   [10:0] v362_cast_fu_284_p1;
wire   [0:0] tmp_fu_314_p3;
wire   [0:0] tmp_96_fu_338_p3;
wire   [0:0] xor_ln750_fu_408_p2;
wire   [5:0] add_ln750_fu_394_p2;
wire   [3:0] select_ln750_fu_400_p3;
wire   [0:0] and_ln750_fu_414_p2;
wire   [0:0] empty_fu_434_p2;
wire   [3:0] add_ln751_fu_428_p2;
wire   [9:0] div7_i_i_fu_298_p3;
wire   [9:0] zext_ln750_fu_456_p1;
wire   [8:0] p_cast6_i_i_fu_306_p3;
wire   [8:0] zext_ln750_1_fu_470_p1;
wire   [9:0] empty_181_fu_474_p2;
wire   [4:0] zext_ln750_cast_i_cast_fu_322_p3;
wire   [4:0] zext_ln751_fu_496_p1;
wire   [4:0] empty_183_fu_510_p2;
wire   [4:0] add_ln751_1_fu_532_p2;
wire   [6:0] tmp_97_fu_598_p3;
wire   [7:0] zext_ln761_1_fu_605_p1;
wire   [7:0] zext_ln761_fu_595_p1;
wire   [11:0] tmp_98_fu_615_p3;
wire   [9:0] tmp_99_fu_626_p3;
wire   [12:0] zext_ln755_fu_622_p1;
wire   [12:0] zext_ln755_1_fu_633_p1;
wire   [11:0] tmp_101_fu_643_p3;
wire   [9:0] tmp_102_fu_654_p3;
wire   [12:0] zext_ln759_fu_650_p1;
wire   [12:0] zext_ln759_1_fu_661_p1;
wire   [7:0] add_ln761_fu_609_p2;
wire   [7:0] zext_ln761_2_fu_674_p1;
wire   [7:0] add_ln761_1_fu_677_p2;
wire   [7:0] shl_ln761_fu_683_p2;
wire   [3:0] zext_ln751_1_fu_671_p1;
wire   [3:0] empty_184_fu_695_p2;
wire   [12:0] add_ln755_fu_637_p2;
wire   [12:0] zext_ln755_2_fu_700_p1;
wire   [12:0] add_ln755_1_fu_704_p2;
wire   [11:0] trunc_ln755_fu_710_p1;
wire   [13:0] tmp_103_fu_714_p3;
wire   [14:0] tmp_104_fu_722_p3;
wire   [14:0] zext_ln755_3_fu_730_p1;
wire   [12:0] add_ln759_fu_665_p2;
wire   [12:0] add_ln759_1_fu_740_p2;
wire   [11:0] trunc_ln759_fu_746_p1;
wire   [13:0] tmp_105_fu_750_p3;
wire   [14:0] tmp_106_fu_758_p3;
wire   [14:0] zext_ln759_2_fu_766_p1;
wire   [12:0] zext_ln757_fu_776_p1;
wire   [12:0] add_ln757_fu_779_p2;
wire   [11:0] trunc_ln757_fu_785_p1;
wire   [13:0] tmp_107_fu_789_p3;
wire   [14:0] tmp_108_fu_797_p3;
wire   [14:0] zext_ln757_1_fu_805_p1;
wire   [12:0] add_ln761_2_fu_815_p2;
wire   [11:0] trunc_ln761_fu_821_p1;
wire   [13:0] tmp_109_fu_825_p3;
wire   [14:0] tmp_110_fu_833_p3;
wire   [14:0] zext_ln761_3_fu_841_p1;
wire   [7:0] sub_ln761_fu_689_p2;
wire   [7:0] zext_ln761_4_fu_851_p1;
wire   [2:0] zext_ln752_fu_860_p1;
wire   [2:0] add_ln754_fu_863_p2;
wire   [14:0] sub_ln759_fu_734_p2;
wire   [14:0] zext_ln755_4_fu_868_p1;
wire   [14:0] sub_ln761_1_fu_809_p2;
wire   [14:0] sub_ln759_1_fu_770_p2;
wire   [14:0] sub_ln752_fu_845_p2;
reg   [9:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_663;
reg    ap_condition_126;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1245_i_fu_130 = 8'd0;
#0 v35046_i_fu_134 = 6'd0;
#0 indvar_flatten47_i_fu_138 = 5'd0;
#0 v35148_i_fu_142 = 4'd0;
#0 v35249_i_fu_146 = 2'd0;
#0 ap_return_preg = 10'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= v362_read_reg_954_pp0_iter2_reg;
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
    if ((1'b1 == ap_condition_126)) begin
        indvar_flatten1245_i_fu_130 <= add_ln750_1_fu_546_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_126)) begin
    indvar_flatten47_i_fu_138 <= select_ln751_1_fu_538_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_126)) begin
    v35046_i_fu_134 <= select_ln750_1_fu_420_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_126)) begin
    v35148_i_fu_142 <= select_ln751_fu_448_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_126)) begin
    v35249_i_fu_146 <= add_ln752_fu_526_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln755_2_reg_1022 <= add_ln755_2_fu_872_p2;
        add_ln757_1_reg_1027 <= add_ln757_1_fu_878_p2;
        add_ln759_2_reg_1032 <= add_ln759_2_fu_884_p2;
        add_ln761_3_reg_1017 <= add_ln761_3_fu_854_p2;
        add_ln761_4_reg_1037 <= add_ln761_4_fu_890_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_182_reg_980 <= empty_182_fu_480_p2;
        icmp_ln750_reg_1013 <= icmp_ln750_fu_564_p2;
        lshr_ln7_i_reg_992 <= {{select_ln751_fu_448_p3[3:1]}};
        lshr_ln_i_reg_974 <= {{select_ln750_1_fu_420_p3[5:1]}};
        select_ln791_reg_958[0] <= select_ln791_fu_330_p3[0];
select_ln791_reg_958[2] <= select_ln791_fu_330_p3[2];
        tmp_100_reg_986 <= {{empty_181_fu_474_p2[9:1]}};
        tmp_134_i_reg_998 <= {{empty_183_fu_510_p2[4:1]}};
        v352_mid2_i_reg_968 <= v352_mid2_i_fu_440_p3;
        v362_read_reg_954_pp0_iter1_reg <= v362_read_reg_954;
        zext_ln750_1_cast_cast_i_cast_cast_reg_963[1 : 0] <= zext_ln750_1_cast_cast_i_cast_cast_fu_346_p3[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln761_3_reg_1017_pp0_iter2_reg <= add_ln761_3_reg_1017;
        v362_read_reg_954_pp0_iter2_reg <= v362_read_reg_954_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln751_reg_1008 <= icmp_ln751_fu_558_p2;
        icmp_ln752_reg_1003 <= icmp_ln752_fu_552_p2;
        v362_read_reg_954 <= v362;
    end
end
always @ (*) begin
    if (((icmp_ln750_fu_564_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_663)) begin
            ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 = icmp_ln751_reg_1008;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 = icmp_ln751_reg_1008;
        end
    end else begin
        ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 = icmp_ln751_reg_1008;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_663)) begin
            ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4 = icmp_ln752_reg_1003;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4 = icmp_ln752_reg_1003;
        end
    end else begin
        ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4 = icmp_ln752_reg_1003;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = v362_read_reg_954_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1245_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1245_i_load = indvar_flatten1245_i_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten47_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten47_i_load = indvar_flatten47_i_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v35046_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v35046_i_load = v35046_i_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v35148_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v35148_i_load = v35148_i_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v35249_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v35249_i_load = v35249_i_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13741_0_0_ce0_local = 1'b1;
    end else begin
        v13741_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13741_0_1_ce0_local = 1'b1;
    end else begin
        v13741_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13741_1_0_ce0_local = 1'b1;
    end else begin
        v13741_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13741_1_1_ce0_local = 1'b1;
    end else begin
        v13741_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_1_ce0_local = 1'b1;
    end else begin
        v368_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_1_we0_local = 1'b1;
    end else begin
        v368_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_2_ce0_local = 1'b1;
    end else begin
        v368_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_2_we0_local = 1'b1;
    end else begin
        v368_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_3_ce0_local = 1'b1;
    end else begin
        v368_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_3_we0_local = 1'b1;
    end else begin
        v368_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_ce0_local = 1'b1;
    end else begin
        v368_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v368_we0_local = 1'b1;
    end else begin
        v368_we0_local = 1'b0;
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
assign add_ln750_1_fu_546_p2 = (ap_sig_allocacmp_indvar_flatten1245_i_load + 8'd1);
assign add_ln750_fu_394_p2 = (ap_sig_allocacmp_v35046_i_load + 6'd2);
assign add_ln751_1_fu_532_p2 = (ap_sig_allocacmp_indvar_flatten47_i_load + 5'd1);
assign add_ln751_fu_428_p2 = (select_ln750_fu_400_p3 + 4'd2);
assign add_ln752_fu_526_p2 = (v352_mid2_i_fu_440_p3 + 2'd1);
assign add_ln754_fu_863_p2 = (zext_ln750_1_cast_cast_i_cast_cast_reg_963 + zext_ln752_fu_860_p1);
assign add_ln755_1_fu_704_p2 = (add_ln755_fu_637_p2 + zext_ln755_2_fu_700_p1);
assign add_ln755_2_fu_872_p2 = (sub_ln759_fu_734_p2 + zext_ln755_4_fu_868_p1);
assign add_ln755_fu_637_p2 = (zext_ln755_fu_622_p1 + zext_ln755_1_fu_633_p1);
assign add_ln757_1_fu_878_p2 = (sub_ln761_1_fu_809_p2 + zext_ln755_4_fu_868_p1);
assign add_ln757_fu_779_p2 = (add_ln755_fu_637_p2 + zext_ln757_fu_776_p1);
assign add_ln759_1_fu_740_p2 = (add_ln759_fu_665_p2 + zext_ln755_2_fu_700_p1);
assign add_ln759_2_fu_884_p2 = (sub_ln759_1_fu_770_p2 + zext_ln755_4_fu_868_p1);
assign add_ln759_fu_665_p2 = (zext_ln759_fu_650_p1 + zext_ln759_1_fu_661_p1);
assign add_ln761_1_fu_677_p2 = (add_ln761_fu_609_p2 + zext_ln761_2_fu_674_p1);
assign add_ln761_2_fu_815_p2 = (add_ln759_fu_665_p2 + zext_ln757_fu_776_p1);
assign add_ln761_3_fu_854_p2 = (sub_ln761_fu_689_p2 + zext_ln761_4_fu_851_p1);
assign add_ln761_4_fu_890_p2 = (sub_ln752_fu_845_p2 + zext_ln755_4_fu_868_p1);
assign add_ln761_fu_609_p2 = (zext_ln761_1_fu_605_p1 + zext_ln761_fu_595_p1);
assign and_ln750_fu_414_p2 = (xor_ln750_fu_408_p2 & ap_phi_mux_icmp_ln75250_i_phi_fu_277_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_126 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_663 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln750_reg_1013 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign div7_i_i_fu_298_p3 = {{tmp_i_fu_288_p4}, {5'd0}};
assign empty_181_fu_474_p2 = (div7_i_i_fu_298_p3 + zext_ln750_fu_456_p1);
assign empty_182_fu_480_p2 = (p_cast6_i_i_fu_306_p3 + zext_ln750_1_fu_470_p1);
assign empty_183_fu_510_p2 = (zext_ln750_cast_i_cast_fu_322_p3 + zext_ln751_fu_496_p1);
assign empty_184_fu_695_p2 = (zext_ln751_1_fu_671_p1 + select_ln791_reg_958);
assign empty_fu_434_p2 = (ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 | and_ln750_fu_414_p2);
assign icmp_ln750_fu_564_p2 = ((ap_sig_allocacmp_indvar_flatten1245_i_load == 8'd239) ? 1'b1 : 1'b0);
assign icmp_ln751_fu_558_p2 = ((select_ln751_1_fu_538_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln752_fu_552_p2 = ((add_ln752_fu_526_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_460_p4 = {{select_ln750_1_fu_420_p3[5:1]}};
assign p_cast6_i_i_fu_306_p3 = {{tmp_i_fu_288_p4}, {4'd0}};
assign select_ln750_1_fu_420_p3 = ((ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4[0:0] == 1'b1) ? add_ln750_fu_394_p2 : ap_sig_allocacmp_v35046_i_load);
assign select_ln750_fu_400_p3 = ((ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v35148_i_load);
assign select_ln751_1_fu_538_p3 = ((ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4[0:0] == 1'b1) ? 5'd1 : add_ln751_1_fu_532_p2);
assign select_ln751_fu_448_p3 = ((and_ln750_fu_414_p2[0:0] == 1'b1) ? add_ln751_fu_428_p2 : select_ln750_fu_400_p3);
assign select_ln791_fu_330_p3 = ((tmp_fu_314_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign shl_ln761_fu_683_p2 = add_ln761_1_fu_677_p2 << 8'd2;
assign sub_ln752_fu_845_p2 = (tmp_110_fu_833_p3 - zext_ln761_3_fu_841_p1);
assign sub_ln759_1_fu_770_p2 = (tmp_106_fu_758_p3 - zext_ln759_2_fu_766_p1);
assign sub_ln759_fu_734_p2 = (tmp_104_fu_722_p3 - zext_ln755_3_fu_730_p1);
assign sub_ln761_1_fu_809_p2 = (tmp_108_fu_797_p3 - zext_ln757_1_fu_805_p1);
assign sub_ln761_fu_689_p2 = (shl_ln761_fu_683_p2 - add_ln761_1_fu_677_p2);
assign tmp_101_fu_643_p3 = {{tmp_100_reg_986}, {3'd0}};
assign tmp_102_fu_654_p3 = {{tmp_100_reg_986}, {1'd0}};
assign tmp_103_fu_714_p3 = {{add_ln755_1_fu_704_p2}, {1'd0}};
assign tmp_104_fu_722_p3 = {{trunc_ln755_fu_710_p1}, {3'd0}};
assign tmp_105_fu_750_p3 = {{add_ln759_1_fu_740_p2}, {1'd0}};
assign tmp_106_fu_758_p3 = {{trunc_ln759_fu_746_p1}, {3'd0}};
assign tmp_107_fu_789_p3 = {{add_ln757_fu_779_p2}, {1'd0}};
assign tmp_108_fu_797_p3 = {{trunc_ln757_fu_785_p1}, {3'd0}};
assign tmp_109_fu_825_p3 = {{add_ln761_2_fu_815_p2}, {1'd0}};
assign tmp_110_fu_833_p3 = {{trunc_ln761_fu_821_p1}, {3'd0}};
assign tmp_96_fu_338_p3 = v362_cast_fu_284_p1[32'd3];
assign tmp_97_fu_598_p3 = {{lshr_ln_i_reg_974}, {2'd0}};
assign tmp_98_fu_615_p3 = {{empty_182_reg_980}, {3'd0}};
assign tmp_99_fu_626_p3 = {{empty_182_reg_980}, {1'd0}};
assign tmp_fu_314_p3 = v362_cast_fu_284_p1[32'd4];
assign tmp_i_fu_288_p4 = {{v362[9:5]}};
assign trunc_ln755_fu_710_p1 = add_ln755_1_fu_704_p2[11:0];
assign trunc_ln757_fu_785_p1 = add_ln757_fu_779_p2[11:0];
assign trunc_ln759_fu_746_p1 = add_ln759_1_fu_740_p2[11:0];
assign trunc_ln761_fu_821_p1 = add_ln761_2_fu_815_p2[11:0];
assign v13741_0_0_address0 = zext_ln755_5_fu_896_p1;
assign v13741_0_0_ce0 = v13741_0_0_ce0_local;
assign v13741_0_1_address0 = zext_ln757_2_fu_900_p1;
assign v13741_0_1_ce0 = v13741_0_1_ce0_local;
assign v13741_1_0_address0 = zext_ln759_3_fu_904_p1;
assign v13741_1_0_ce0 = v13741_1_0_ce0_local;
assign v13741_1_1_address0 = zext_ln761_6_fu_908_p1;
assign v13741_1_1_ce0 = v13741_1_1_ce0_local;
assign v352_mid2_i_fu_440_p3 = ((empty_fu_434_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v35249_i_load);
assign v362_cast_fu_284_p1 = v362;
assign v368_1_address0 = zext_ln761_5_fu_912_p1;
assign v368_1_ce0 = v368_1_ce0_local;
assign v368_1_d0 = v13741_1_0_q0;
assign v368_1_we0 = v368_1_we0_local;
assign v368_2_address0 = zext_ln761_5_fu_912_p1;
assign v368_2_ce0 = v368_2_ce0_local;
assign v368_2_d0 = v13741_0_1_q0;
assign v368_2_we0 = v368_2_we0_local;
assign v368_3_address0 = zext_ln761_5_fu_912_p1;
assign v368_3_ce0 = v368_3_ce0_local;
assign v368_3_d0 = v13741_0_0_q0;
assign v368_3_we0 = v368_3_we0_local;
assign v368_address0 = zext_ln761_5_fu_912_p1;
assign v368_ce0 = v368_ce0_local;
assign v368_d0 = v13741_1_1_q0;
assign v368_we0 = v368_we0_local;
assign xor_ln750_fu_408_p2 = (ap_phi_mux_icmp_ln75151_i_phi_fu_267_p4 ^ 1'd1);
assign zext_ln750_1_cast_cast_i_cast_cast_fu_346_p3 = ((tmp_96_fu_338_p3[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln750_1_fu_470_p1 = lshr_ln_i_fu_460_p4;
assign zext_ln750_cast_i_cast_fu_322_p3 = ((tmp_fu_314_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign zext_ln750_fu_456_p1 = select_ln750_1_fu_420_p3;
assign zext_ln751_1_fu_671_p1 = lshr_ln7_i_reg_992;
assign zext_ln751_fu_496_p1 = select_ln751_fu_448_p3;
assign zext_ln752_fu_860_p1 = v352_mid2_i_reg_968;
assign zext_ln755_1_fu_633_p1 = tmp_99_fu_626_p3;
assign zext_ln755_2_fu_700_p1 = empty_184_fu_695_p2;
assign zext_ln755_3_fu_730_p1 = tmp_103_fu_714_p3;
assign zext_ln755_4_fu_868_p1 = add_ln754_fu_863_p2;
assign zext_ln755_5_fu_896_p1 = add_ln755_2_reg_1022;
assign zext_ln755_fu_622_p1 = tmp_98_fu_615_p3;
assign zext_ln757_1_fu_805_p1 = tmp_107_fu_789_p3;
assign zext_ln757_2_fu_900_p1 = add_ln757_1_reg_1027;
assign zext_ln757_fu_776_p1 = tmp_134_i_reg_998;
assign zext_ln759_1_fu_661_p1 = tmp_102_fu_654_p3;
assign zext_ln759_2_fu_766_p1 = tmp_105_fu_750_p3;
assign zext_ln759_3_fu_904_p1 = add_ln759_2_reg_1032;
assign zext_ln759_fu_650_p1 = tmp_101_fu_643_p3;
assign zext_ln761_1_fu_605_p1 = tmp_97_fu_598_p3;
assign zext_ln761_2_fu_674_p1 = lshr_ln7_i_reg_992;
assign zext_ln761_3_fu_841_p1 = tmp_109_fu_825_p3;
assign zext_ln761_4_fu_851_p1 = v352_mid2_i_reg_968;
assign zext_ln761_5_fu_912_p1 = add_ln761_3_reg_1017_pp0_iter2_reg;
assign zext_ln761_6_fu_908_p1 = add_ln761_4_reg_1037;
assign zext_ln761_fu_595_p1 = lshr_ln_i_reg_974;
always @ (posedge ap_clk) begin
    select_ln791_reg_958[1] <= 1'b0;
    select_ln791_reg_958[3] <= 1'b0;
    zext_ln750_1_cast_cast_i_cast_cast_reg_963[2] <= 1'b0;
end
endmodule 
