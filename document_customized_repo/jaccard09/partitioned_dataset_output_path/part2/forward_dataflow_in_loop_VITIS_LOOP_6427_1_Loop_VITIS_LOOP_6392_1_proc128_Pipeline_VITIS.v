
module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_90,urem_ln6433_cast,select_ln6433,v4363_address0,v4363_ce0,v4363_we0,v4363_d0,v4363_1_address0,v4363_1_ce0,v4363_1_we0,v4363_1_d0,v4363_2_address0,v4363_2_ce0,v4363_2_we0,v4363_2_d0,v4363_3_address0,v4363_3_ce0,v4363_3_we0,v4363_3_d0,empty,select_ln6432,v9237_0_address0,v9237_0_ce0,v9237_0_q0,v9237_1_address0,v9237_1_ce0,v9237_1_q0,v9237_2_address0,v9237_2_ce0,v9237_2_q0,v9237_3_address0,v9237_3_ce0,v9237_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] tmp_90;
input  [1:0] urem_ln6433_cast;
input  [4:0] select_ln6433;
output  [8:0] v4363_address0;
output   v4363_ce0;
output   v4363_we0;
output  [7:0] v4363_d0;
output  [8:0] v4363_1_address0;
output   v4363_1_ce0;
output   v4363_1_we0;
output  [7:0] v4363_1_d0;
output  [8:0] v4363_2_address0;
output   v4363_2_ce0;
output   v4363_2_we0;
output  [7:0] v4363_2_d0;
output  [8:0] v4363_3_address0;
output   v4363_3_ce0;
output   v4363_3_we0;
output  [7:0] v4363_3_d0;
input  [1:0] empty;
input  [4:0] select_ln6432;
output  [14:0] v9237_0_address0;
output   v9237_0_ce0;
input  [7:0] v9237_0_q0;
output  [14:0] v9237_1_address0;
output   v9237_1_ce0;
input  [7:0] v9237_1_q0;
output  [14:0] v9237_2_address0;
output   v9237_2_ce0;
input  [7:0] v9237_2_q0;
output  [14:0] v9237_3_address0;
output   v9237_3_ce0;
input  [7:0] v9237_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6392_fu_590_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [5:0] select_ln6432_cast_fu_310_p1;
reg  signed [5:0] select_ln6432_cast_reg_833;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v4343_mid2_fu_412_p3;
reg   [2:0] v4343_mid2_reg_838;
reg   [2:0] v4343_mid2_reg_838_pp0_iter1_reg;
wire   [2:0] v4342_fu_420_p3;
reg   [2:0] v4342_reg_843;
wire   [2:0] lshr_ln_fu_432_p4;
reg   [2:0] lshr_ln_reg_848;
reg   [4:0] tmp_176_reg_854;
wire  signed [10:0] sext_ln6397_fu_520_p1;
reg  signed [10:0] sext_ln6397_reg_860;
wire   [10:0] add_ln6397_fu_524_p2;
reg   [10:0] add_ln6397_reg_865;
wire   [9:0] trunc_ln6397_fu_530_p1;
reg   [9:0] trunc_ln6397_reg_870;
wire   [4:0] add_ln6396_1_fu_546_p2;
reg   [4:0] add_ln6396_1_reg_875;
wire   [0:0] icmp_ln6394_fu_578_p2;
reg   [0:0] icmp_ln6394_reg_880;
wire   [0:0] icmp_ln6393_fu_584_p2;
reg   [0:0] icmp_ln6393_reg_885;
reg   [0:0] icmp_ln6392_reg_890;
wire   [5:0] add_ln6403_fu_668_p2;
reg   [5:0] add_ln6403_reg_894;
wire   [14:0] add_ln6399_1_fu_756_p2;
reg   [14:0] add_ln6399_1_reg_905;
wire   [63:0] zext_ln6403_4_fu_787_p1;
reg   [63:0] zext_ln6403_4_reg_910;
reg   [0:0] ap_phi_mux_icmp_ln639354_phi_fu_293_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln639453_phi_fu_303_p4;
wire   [63:0] zext_ln6397_1_fu_751_p1;
wire   [63:0] zext_ln6399_1_fu_792_p1;
reg   [8:0] indvar_flatten1248_fu_126;
wire   [8:0] add_ln6392_1_fu_572_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1248_load;
reg   [5:0] v434149_fu_130;
wire   [5:0] v4341_fu_392_p3;
reg   [5:0] ap_sig_allocacmp_v434149_load;
reg   [5:0] indvar_flatten50_fu_134;
wire   [5:0] select_ln6393_1_fu_564_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten50_load;
reg   [2:0] v434251_fu_138;
reg   [2:0] ap_sig_allocacmp_v434251_load;
reg   [2:0] v434352_fu_142;
wire   [2:0] v4343_fu_552_p2;
reg   [2:0] ap_sig_allocacmp_v434352_load;
reg    v9237_0_ce0_local;
reg    v9237_1_ce0_local;
reg    v9237_2_ce0_local;
reg    v9237_3_ce0_local;
reg    v4363_3_we0_local;
reg    v4363_3_ce0_local;
reg    v4363_2_we0_local;
reg    v4363_2_ce0_local;
reg    v4363_1_we0_local;
reg    v4363_1_ce0_local;
reg    v4363_we0_local;
reg    v4363_ce0_local;
wire   [0:0] xor_ln6392_fu_380_p2;
wire   [5:0] add_ln6392_fu_366_p2;
wire   [2:0] select_ln6392_fu_372_p3;
wire   [0:0] and_ln6392_fu_386_p2;
wire   [0:0] empty_253_fu_406_p2;
wire   [2:0] add_ln6393_fu_400_p2;
wire   [6:0] zext_ln6392_fu_428_p1;
wire   [6:0] tmp_175_fu_458_p4;
wire   [9:0] p_shl37_fu_448_p4;
wire   [9:0] zext_ln6397_fu_468_p1;
wire   [9:0] sub_ln6397_fu_472_p2;
wire   [6:0] empty_254_fu_442_p2;
wire   [3:0] tmp_s_fu_492_p3;
wire   [4:0] urem_ln6433_cast_cast_fu_322_p1;
wire   [4:0] p_cast_fu_500_p1;
wire   [4:0] tmp_fu_504_p2;
wire   [5:0] tmp_cast_fu_510_p1;
wire  signed [5:0] select_ln6433_cast_fu_318_p1;
wire   [5:0] empty_255_fu_514_p2;
wire   [10:0] mul_ln6397_cast_fu_478_p1;
wire   [3:0] shl_ln_fu_534_p3;
wire   [4:0] p_cast2_fu_314_p1;
wire   [4:0] zext_ln6396_fu_542_p1;
wire   [5:0] add_ln6393_1_fu_558_p2;
wire   [5:0] p_shl39_fu_624_p3;
wire   [5:0] zext_ln6403_fu_621_p1;
wire   [6:0] tmp_177_fu_644_p3;
wire   [9:0] p_shl35_fu_637_p3;
wire   [9:0] zext_ln6399_fu_651_p1;
wire   [9:0] sub_ln6399_fu_655_p2;
wire   [5:0] sub_ln6403_fu_631_p2;
wire   [5:0] zext_ln6403_1_fu_665_p1;
wire   [12:0] tmp_178_fu_681_p3;
wire   [14:0] p_shl_fu_674_p3;
wire  signed [14:0] sext_ln6399_fu_688_p1;
wire   [10:0] zext_ln6393_fu_661_p1;
wire   [10:0] add_ln6399_fu_698_p2;
wire   [9:0] trunc_ln6399_fu_703_p1;
wire   [12:0] tmp_179_fu_715_p3;
wire   [14:0] p_shl41_fu_707_p3;
wire  signed [14:0] sext_ln6394_fu_723_p1;
wire   [5:0] zext_ln6396_1_fu_733_p1;
wire   [5:0] add_ln6396_fu_736_p2;
wire   [14:0] sub_ln6399_1_fu_692_p2;
wire  signed [14:0] sext_ln6397_1_fu_741_p1;
wire   [14:0] add_ln6397_1_fu_745_p2;
wire   [14:0] sub_ln6394_fu_727_p2;
wire   [8:0] p_shl34_fu_765_p3;
wire   [8:0] zext_ln6403_2_fu_762_p1;
wire   [8:0] sub_ln6403_1_fu_772_p2;
wire   [8:0] zext_ln6403_3_fu_778_p1;
wire   [8:0] add_ln6403_1_fu_781_p2;
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
reg    ap_condition_561;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1248_fu_126 = 9'd0;
#0 v434149_fu_130 = 6'd0;
#0 indvar_flatten50_fu_134 = 6'd0;
#0 v434251_fu_138 = 3'd0;
#0 v434352_fu_142 = 3'd0;
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
            indvar_flatten1248_fu_126 <= add_ln6392_1_fu_572_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1248_fu_126 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten50_fu_134 <= select_ln6393_1_fu_564_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten50_fu_134 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v434149_fu_130 <= v4341_fu_392_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v434149_fu_130 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v434251_fu_138 <= v4342_fu_420_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v434251_fu_138 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v434352_fu_142 <= v4343_fu_552_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v434352_fu_142 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6396_1_reg_875 <= add_ln6396_1_fu_546_p2;
        add_ln6397_reg_865 <= add_ln6397_fu_524_p2;
        add_ln6399_1_reg_905 <= add_ln6399_1_fu_756_p2;
        add_ln6403_reg_894 <= add_ln6403_fu_668_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln6392_reg_890 <= icmp_ln6392_fu_590_p2;
        lshr_ln_reg_848 <= {{v4341_fu_392_p3[4:2]}};
        select_ln6432_cast_reg_833 <= select_ln6432_cast_fu_310_p1;
        sext_ln6397_reg_860 <= sext_ln6397_fu_520_p1;
        tmp_176_reg_854 <= {{empty_254_fu_442_p2[6:2]}};
        trunc_ln6397_reg_870 <= trunc_ln6397_fu_530_p1;
        v4342_reg_843 <= v4342_fu_420_p3;
        v4343_mid2_reg_838 <= v4343_mid2_fu_412_p3;
        v4343_mid2_reg_838_pp0_iter1_reg <= v4343_mid2_reg_838;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6393_reg_885 <= icmp_ln6393_fu_584_p2;
        icmp_ln6394_reg_880 <= icmp_ln6394_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln6403_4_reg_910[8 : 0] <= zext_ln6403_4_fu_787_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln6392_fu_590_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_561)) begin
            ap_phi_mux_icmp_ln639354_phi_fu_293_p4 = icmp_ln6393_reg_885;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln639354_phi_fu_293_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln639354_phi_fu_293_p4 = icmp_ln6393_reg_885;
        end
    end else begin
        ap_phi_mux_icmp_ln639354_phi_fu_293_p4 = icmp_ln6393_reg_885;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_561)) begin
            ap_phi_mux_icmp_ln639453_phi_fu_303_p4 = icmp_ln6394_reg_880;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln639453_phi_fu_303_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln639453_phi_fu_303_p4 = icmp_ln6394_reg_880;
        end
    end else begin
        ap_phi_mux_icmp_ln639453_phi_fu_303_p4 = icmp_ln6394_reg_880;
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1248_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1248_load = indvar_flatten1248_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten50_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten50_load = indvar_flatten50_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v434149_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v434149_load = v434149_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v434251_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v434251_load = v434251_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v434352_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v434352_load = v434352_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_1_ce0_local = 1'b1;
    end else begin
        v4363_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_1_we0_local = 1'b1;
    end else begin
        v4363_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_2_ce0_local = 1'b1;
    end else begin
        v4363_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_2_we0_local = 1'b1;
    end else begin
        v4363_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4363_3_ce0_local = 1'b1;
    end else begin
        v4363_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4363_3_we0_local = 1'b1;
    end else begin
        v4363_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_ce0_local = 1'b1;
    end else begin
        v4363_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_we0_local = 1'b1;
    end else begin
        v4363_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9237_0_ce0_local = 1'b1;
    end else begin
        v9237_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9237_1_ce0_local = 1'b1;
    end else begin
        v9237_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9237_2_ce0_local = 1'b1;
    end else begin
        v9237_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9237_3_ce0_local = 1'b1;
    end else begin
        v9237_3_ce0_local = 1'b0;
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
assign add_ln6392_1_fu_572_p2 = (ap_sig_allocacmp_indvar_flatten1248_load + 9'd1);
assign add_ln6392_fu_366_p2 = (ap_sig_allocacmp_v434149_load + 6'd4);
assign add_ln6393_1_fu_558_p2 = (ap_sig_allocacmp_indvar_flatten50_load + 6'd1);
assign add_ln6393_fu_400_p2 = (select_ln6392_fu_372_p3 + 3'd1);
assign add_ln6396_1_fu_546_p2 = (p_cast2_fu_314_p1 + zext_ln6396_fu_542_p1);
assign add_ln6396_fu_736_p2 = ($signed(zext_ln6396_1_fu_733_p1) + $signed(select_ln6432_cast_reg_833));
assign add_ln6397_1_fu_745_p2 = ($signed(sub_ln6399_1_fu_692_p2) + $signed(sext_ln6397_1_fu_741_p1));
assign add_ln6397_fu_524_p2 = ($signed(mul_ln6397_cast_fu_478_p1) + $signed(sext_ln6397_fu_520_p1));
assign add_ln6399_1_fu_756_p2 = ($signed(sub_ln6394_fu_727_p2) + $signed(sext_ln6397_1_fu_741_p1));
assign add_ln6399_fu_698_p2 = ($signed(zext_ln6393_fu_661_p1) + $signed(sext_ln6397_reg_860));
assign add_ln6403_1_fu_781_p2 = (sub_ln6403_1_fu_772_p2 + zext_ln6403_3_fu_778_p1);
assign add_ln6403_fu_668_p2 = (sub_ln6403_fu_631_p2 + zext_ln6403_1_fu_665_p1);
assign and_ln6392_fu_386_p2 = (xor_ln6392_fu_380_p2 & ap_phi_mux_icmp_ln639453_phi_fu_303_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_561 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln6392_reg_890 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_253_fu_406_p2 = (ap_phi_mux_icmp_ln639354_phi_fu_293_p4 | and_ln6392_fu_386_p2);
assign empty_254_fu_442_p2 = (mul_i + zext_ln6392_fu_428_p1);
assign empty_255_fu_514_p2 = ($signed(tmp_cast_fu_510_p1) + $signed(select_ln6433_cast_fu_318_p1));
assign icmp_ln6392_fu_590_p2 = ((ap_sig_allocacmp_indvar_flatten1248_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln6393_fu_584_p2 = ((select_ln6393_1_fu_564_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6394_fu_578_p2 = ((v4343_fu_552_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_432_p4 = {{v4341_fu_392_p3[4:2]}};
assign mul_ln6397_cast_fu_478_p1 = sub_ln6397_fu_472_p2;
assign p_cast2_fu_314_p1 = empty;
assign p_cast_fu_500_p1 = tmp_s_fu_492_p3;
assign p_shl34_fu_765_p3 = {{add_ln6403_reg_894}, {3'd0}};
assign p_shl35_fu_637_p3 = {{tmp_176_reg_854}, {5'd0}};
assign p_shl37_fu_448_p4 = {{{tmp_90}, {lshr_ln_fu_432_p4}}, {5'd0}};
assign p_shl39_fu_624_p3 = {{lshr_ln_reg_848}, {3'd0}};
assign p_shl41_fu_707_p3 = {{trunc_ln6399_fu_703_p1}, {5'd0}};
assign p_shl_fu_674_p3 = {{trunc_ln6397_reg_870}, {5'd0}};
assign select_ln6392_fu_372_p3 = ((ap_phi_mux_icmp_ln639354_phi_fu_293_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v434251_load);
assign select_ln6393_1_fu_564_p3 = ((ap_phi_mux_icmp_ln639354_phi_fu_293_p4[0:0] == 1'b1) ? 6'd1 : add_ln6393_1_fu_558_p2);
assign select_ln6432_cast_fu_310_p1 = $signed(select_ln6432);
assign select_ln6433_cast_fu_318_p1 = $signed(select_ln6433);
assign sext_ln6394_fu_723_p1 = $signed(tmp_179_fu_715_p3);
assign sext_ln6397_1_fu_741_p1 = $signed(add_ln6396_fu_736_p2);
assign sext_ln6397_fu_520_p1 = $signed(empty_255_fu_514_p2);
assign sext_ln6399_fu_688_p1 = $signed(tmp_178_fu_681_p3);
assign shl_ln_fu_534_p3 = {{v4343_mid2_fu_412_p3}, {1'd0}};
assign sub_ln6394_fu_727_p2 = ($signed(p_shl41_fu_707_p3) - $signed(sext_ln6394_fu_723_p1));
assign sub_ln6397_fu_472_p2 = (p_shl37_fu_448_p4 - zext_ln6397_fu_468_p1);
assign sub_ln6399_1_fu_692_p2 = ($signed(p_shl_fu_674_p3) - $signed(sext_ln6399_fu_688_p1));
assign sub_ln6399_fu_655_p2 = (p_shl35_fu_637_p3 - zext_ln6399_fu_651_p1);
assign sub_ln6403_1_fu_772_p2 = (p_shl34_fu_765_p3 - zext_ln6403_2_fu_762_p1);
assign sub_ln6403_fu_631_p2 = (p_shl39_fu_624_p3 - zext_ln6403_fu_621_p1);
assign tmp_175_fu_458_p4 = {{{tmp_90}, {lshr_ln_fu_432_p4}}, {2'd0}};
assign tmp_177_fu_644_p3 = {{tmp_176_reg_854}, {2'd0}};
assign tmp_178_fu_681_p3 = {{add_ln6397_reg_865}, {2'd0}};
assign tmp_179_fu_715_p3 = {{add_ln6399_fu_698_p2}, {2'd0}};
assign tmp_cast_fu_510_p1 = tmp_fu_504_p2;
assign tmp_fu_504_p2 = (urem_ln6433_cast_cast_fu_322_p1 + p_cast_fu_500_p1);
assign tmp_s_fu_492_p3 = {{v4342_fu_420_p3}, {1'd0}};
assign trunc_ln6397_fu_530_p1 = add_ln6397_fu_524_p2[9:0];
assign trunc_ln6399_fu_703_p1 = add_ln6399_fu_698_p2[9:0];
assign urem_ln6433_cast_cast_fu_322_p1 = urem_ln6433_cast;
assign v4341_fu_392_p3 = ((ap_phi_mux_icmp_ln639354_phi_fu_293_p4[0:0] == 1'b1) ? add_ln6392_fu_366_p2 : ap_sig_allocacmp_v434149_load);
assign v4342_fu_420_p3 = ((and_ln6392_fu_386_p2[0:0] == 1'b1) ? add_ln6393_fu_400_p2 : select_ln6392_fu_372_p3);
assign v4343_fu_552_p2 = (v4343_mid2_fu_412_p3 + 3'd1);
assign v4343_mid2_fu_412_p3 = ((empty_253_fu_406_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v434352_load);
assign v4363_1_address0 = zext_ln6403_4_reg_910;
assign v4363_1_ce0 = v4363_1_ce0_local;
assign v4363_1_d0 = v9237_2_q0;
assign v4363_1_we0 = v4363_1_we0_local;
assign v4363_2_address0 = zext_ln6403_4_reg_910;
assign v4363_2_ce0 = v4363_2_ce0_local;
assign v4363_2_d0 = v9237_1_q0;
assign v4363_2_we0 = v4363_2_we0_local;
assign v4363_3_address0 = zext_ln6403_4_fu_787_p1;
assign v4363_3_ce0 = v4363_3_ce0_local;
assign v4363_3_d0 = v9237_0_q0;
assign v4363_3_we0 = v4363_3_we0_local;
assign v4363_address0 = zext_ln6403_4_reg_910;
assign v4363_ce0 = v4363_ce0_local;
assign v4363_d0 = v9237_3_q0;
assign v4363_we0 = v4363_we0_local;
assign v9237_0_address0 = zext_ln6397_1_fu_751_p1;
assign v9237_0_ce0 = v9237_0_ce0_local;
assign v9237_1_address0 = zext_ln6399_1_fu_792_p1;
assign v9237_1_ce0 = v9237_1_ce0_local;
assign v9237_2_address0 = zext_ln6399_1_fu_792_p1;
assign v9237_2_ce0 = v9237_2_ce0_local;
assign v9237_3_address0 = zext_ln6399_1_fu_792_p1;
assign v9237_3_ce0 = v9237_3_ce0_local;
assign xor_ln6392_fu_380_p2 = (ap_phi_mux_icmp_ln639354_phi_fu_293_p4 ^ 1'd1);
assign zext_ln6392_fu_428_p1 = v4341_fu_392_p3;
assign zext_ln6393_fu_661_p1 = sub_ln6399_fu_655_p2;
assign zext_ln6396_1_fu_733_p1 = add_ln6396_1_reg_875;
assign zext_ln6396_fu_542_p1 = shl_ln_fu_534_p3;
assign zext_ln6397_1_fu_751_p1 = add_ln6397_1_fu_745_p2;
assign zext_ln6397_fu_468_p1 = tmp_175_fu_458_p4;
assign zext_ln6399_1_fu_792_p1 = add_ln6399_1_reg_905;
assign zext_ln6399_fu_651_p1 = tmp_177_fu_644_p3;
assign zext_ln6403_1_fu_665_p1 = v4342_reg_843;
assign zext_ln6403_2_fu_762_p1 = add_ln6403_reg_894;
assign zext_ln6403_3_fu_778_p1 = v4343_mid2_reg_838_pp0_iter1_reg;
assign zext_ln6403_4_fu_787_p1 = add_ln6403_1_fu_781_p2;
assign zext_ln6403_fu_621_p1 = lshr_ln_reg_848;
always @ (posedge ap_clk) begin
    zext_ln6403_4_reg_910[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
