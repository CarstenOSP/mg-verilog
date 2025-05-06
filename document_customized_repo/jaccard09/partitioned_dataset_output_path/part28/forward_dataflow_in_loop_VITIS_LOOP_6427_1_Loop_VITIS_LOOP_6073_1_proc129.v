
module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6073_1_proc129 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9241_3_address0,v9241_3_ce0,v9241_3_we0,v9241_3_d0,v9241_2_address0,v9241_2_ce0,v9241_2_we0,v9241_2_d0,v9241_1_address0,v9241_1_ce0,v9241_1_we0,v9241_1_d0,v9241_0_address0,v9241_0_ce0,v9241_0_we0,v9241_0_d0,p_read,v4364_3_address0,v4364_3_ce0,v4364_3_q0,v4364_2_address0,v4364_2_ce0,v4364_2_q0,v4364_1_address0,v4364_1_ce0,v4364_1_q0,v4364_address0,v4364_ce0,v4364_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v9241_3_address0;
output   v9241_3_ce0;
output   v9241_3_we0;
output  [7:0] v9241_3_d0;
output  [13:0] v9241_2_address0;
output   v9241_2_ce0;
output   v9241_2_we0;
output  [7:0] v9241_2_d0;
output  [13:0] v9241_1_address0;
output   v9241_1_ce0;
output   v9241_1_we0;
output  [7:0] v9241_1_d0;
output  [13:0] v9241_0_address0;
output   v9241_0_ce0;
output   v9241_0_we0;
output  [7:0] v9241_0_d0;
input  [4:0] p_read;
output  [8:0] v4364_3_address0;
output   v4364_3_ce0;
input  [7:0] v4364_3_q0;
output  [8:0] v4364_2_address0;
output   v4364_2_ce0;
input  [7:0] v4364_2_q0;
output  [8:0] v4364_1_address0;
output   v4364_1_ce0;
input  [7:0] v4364_1_q0;
output  [8:0] v4364_address0;
output   v4364_ce0;
input  [7:0] v4364_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6073_fu_528_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] trunc_ln_fu_290_p3;
reg   [5:0] trunc_ln_reg_793;
wire   [3:0] select_ln6305_cast_cast_fu_310_p3;
reg   [3:0] select_ln6305_cast_cast_reg_798;
wire   [3:0] zext_ln6305_4_cast_cast_cast_cast_fu_318_p3;
reg   [3:0] zext_ln6305_4_cast_cast_cast_cast_reg_803;
reg   [3:0] zext_ln6305_4_cast_cast_cast_cast_reg_803_pp0_iter1_reg;
wire   [2:0] v4119_mid2_fu_412_p3;
reg   [2:0] v4119_mid2_reg_808;
reg   [2:0] v4119_mid2_reg_808_pp0_iter1_reg;
wire   [2:0] v4118_fu_420_p3;
reg   [2:0] v4118_reg_814;
wire   [3:0] lshr_ln_fu_432_p4;
reg   [3:0] lshr_ln_reg_819;
reg   [5:0] tmp_191_reg_824;
wire   [6:0] add_ln6077_fu_480_p2;
reg   [6:0] add_ln6077_reg_830;
wire   [5:0] trunc_ln6077_fu_486_p1;
reg   [5:0] trunc_ln6077_reg_835;
wire   [0:0] icmp_ln6075_fu_516_p2;
reg   [0:0] icmp_ln6075_reg_840;
wire   [0:0] icmp_ln6074_fu_522_p2;
reg   [0:0] icmp_ln6074_reg_845;
reg   [0:0] icmp_ln6073_reg_850;
wire   [9:0] add_ln6084_fu_645_p2;
reg   [9:0] add_ln6084_reg_854;
wire   [9:0] add_ln6078_1_fu_651_p2;
reg   [9:0] add_ln6078_1_reg_860;
reg   [0:0] ap_phi_mux_icmp_ln607475_phi_fu_255_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln607574_phi_fu_265_p4;
wire   [63:0] zext_ln6077_4_fu_666_p1;
wire   [63:0] zext_ln6084_4_fu_740_p1;
wire   [63:0] zext_ln6078_2_fu_753_p1;
reg   [8:0] indvar_flatten1269_fu_118;
wire   [8:0] add_ln6073_1_fu_510_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1269_load;
reg   [5:0] v411770_fu_122;
wire   [5:0] v4117_fu_392_p3;
reg   [5:0] ap_sig_allocacmp_v411770_load;
reg   [5:0] indvar_flatten71_fu_126;
wire   [5:0] select_ln6074_1_fu_502_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten71_load;
reg   [2:0] v411872_fu_130;
reg   [2:0] ap_sig_allocacmp_v411872_load;
reg   [2:0] v411973_fu_134;
wire   [2:0] v4119_fu_490_p2;
reg   [2:0] ap_sig_allocacmp_v411973_load;
reg    v4364_3_ce0_local;
reg    v4364_2_ce0_local;
reg    v4364_1_ce0_local;
reg    v4364_ce0_local;
reg    v9241_0_we0_local;
reg    v9241_0_ce0_local;
reg    v9241_1_we0_local;
reg    v9241_1_ce0_local;
reg    v9241_2_we0_local;
reg    v9241_2_ce0_local;
reg    v9241_3_we0_local;
reg    v9241_3_ce0_local;
wire   [2:0] tmp_fu_272_p4;
wire   [0:0] tmp_189_fu_298_p3;
wire   [0:0] empty_fu_306_p1;
wire   [0:0] xor_ln6073_fu_380_p2;
wire   [5:0] add_ln6073_fu_366_p2;
wire   [2:0] select_ln6073_fu_372_p3;
wire   [0:0] and_ln6073_fu_386_p2;
wire   [0:0] empty_269_fu_406_p2;
wire   [2:0] add_ln6074_fu_400_p2;
wire   [6:0] p_shl95_fu_446_p3;
wire   [6:0] zext_ln6077_fu_442_p1;
wire   [7:0] mul_i_fu_282_p3;
wire   [7:0] zext_ln6073_fu_428_p1;
wire   [7:0] empty_270_fu_460_p2;
wire   [6:0] sub_ln6077_fu_454_p2;
wire   [6:0] zext_ln6077_1_fu_476_p1;
wire   [5:0] add_ln6074_1_fu_496_p2;
wire   [5:0] zext_ln6073_1_fu_559_p1;
wire   [5:0] empty_271_fu_562_p2;
wire   [6:0] tmp_190_fu_575_p3;
wire   [9:0] p_shl96_fu_567_p3;
wire   [9:0] zext_ln6078_fu_583_p1;
wire   [6:0] tmp_192_fu_600_p3;
wire   [9:0] p_shl97_fu_593_p3;
wire   [9:0] zext_ln6084_fu_607_p1;
wire   [8:0] tmp_193_fu_617_p3;
wire   [8:0] zext_ln6077_2_fu_624_p1;
wire   [3:0] zext_ln6074_fu_633_p1;
wire   [3:0] empty_272_fu_636_p2;
wire   [9:0] sub_ln6084_fu_611_p2;
wire   [9:0] zext_ln6084_1_fu_641_p1;
wire   [9:0] sub_ln6078_fu_587_p2;
wire   [8:0] sub_ln6074_fu_627_p2;
wire   [8:0] zext_ln6077_3_fu_657_p1;
wire   [8:0] add_ln6077_1_fu_660_p2;
wire   [10:0] tmp_194_fu_681_p3;
wire   [13:0] p_shl98_fu_674_p3;
wire   [13:0] zext_ln6084_2_fu_688_p1;
wire   [10:0] tmp_195_fu_705_p3;
wire   [13:0] p_shl_fu_698_p3;
wire   [13:0] zext_ln6078_1_fu_712_p1;
wire   [3:0] zext_ln6075_fu_722_p1;
wire   [3:0] add_ln6078_fu_725_p2;
wire   [13:0] sub_ln6084_1_fu_692_p2;
wire   [13:0] zext_ln6084_3_fu_730_p1;
wire   [13:0] add_ln6084_1_fu_734_p2;
wire   [13:0] sub_ln6078_1_fu_716_p2;
wire   [13:0] add_ln6078_2_fu_747_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_545;
reg    ap_condition_144;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1269_fu_118 = 9'd0;
#0 v411770_fu_122 = 6'd0;
#0 indvar_flatten71_fu_126 = 6'd0;
#0 v411872_fu_130 = 3'd0;
#0 v411973_fu_134 = 3'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_144)) begin
        indvar_flatten1269_fu_118 <= add_ln6073_1_fu_510_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_144)) begin
    indvar_flatten71_fu_126 <= select_ln6074_1_fu_502_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_144)) begin
    v411770_fu_122 <= v4117_fu_392_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_144)) begin
    v411872_fu_130 <= v4118_fu_420_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_144)) begin
    v411973_fu_134 <= v4119_fu_490_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6077_reg_830 <= add_ln6077_fu_480_p2;
        add_ln6078_1_reg_860 <= add_ln6078_1_fu_651_p2;
        add_ln6084_reg_854 <= add_ln6084_fu_645_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln6073_reg_850 <= icmp_ln6073_fu_528_p2;
        lshr_ln_reg_819 <= {{v4117_fu_392_p3[5:2]}};
        select_ln6305_cast_cast_reg_798[2 : 0] <= select_ln6305_cast_cast_fu_310_p3[2 : 0];
        tmp_191_reg_824 <= {{empty_270_fu_460_p2[7:2]}};
        trunc_ln6077_reg_835 <= trunc_ln6077_fu_486_p1;
        trunc_ln_reg_793[5 : 3] <= trunc_ln_fu_290_p3[5 : 3];
        v4118_reg_814 <= v4118_fu_420_p3;
        v4119_mid2_reg_808 <= v4119_mid2_fu_412_p3;
        v4119_mid2_reg_808_pp0_iter1_reg <= v4119_mid2_reg_808;
        zext_ln6305_4_cast_cast_cast_cast_reg_803[2 : 0] <= zext_ln6305_4_cast_cast_cast_cast_fu_318_p3[2 : 0];
        zext_ln6305_4_cast_cast_cast_cast_reg_803_pp0_iter1_reg[2 : 0] <= zext_ln6305_4_cast_cast_cast_cast_reg_803[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6074_reg_845 <= icmp_ln6074_fu_522_p2;
        icmp_ln6075_reg_840 <= icmp_ln6075_fu_516_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6073_fu_528_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_545)) begin
            ap_phi_mux_icmp_ln607475_phi_fu_255_p4 = icmp_ln6074_reg_845;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln607475_phi_fu_255_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln607475_phi_fu_255_p4 = icmp_ln6074_reg_845;
        end
    end else begin
        ap_phi_mux_icmp_ln607475_phi_fu_255_p4 = icmp_ln6074_reg_845;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_545)) begin
            ap_phi_mux_icmp_ln607574_phi_fu_265_p4 = icmp_ln6075_reg_840;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln607574_phi_fu_265_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln607574_phi_fu_265_p4 = icmp_ln6075_reg_840;
        end
    end else begin
        ap_phi_mux_icmp_ln607574_phi_fu_265_p4 = icmp_ln6075_reg_840;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1269_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1269_load = indvar_flatten1269_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten71_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten71_load = indvar_flatten71_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v411770_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v411770_load = v411770_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v411872_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v411872_load = v411872_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v411973_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v411973_load = v411973_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4364_1_ce0_local = 1'b1;
    end else begin
        v4364_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4364_2_ce0_local = 1'b1;
    end else begin
        v4364_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4364_3_ce0_local = 1'b1;
    end else begin
        v4364_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4364_ce0_local = 1'b1;
    end else begin
        v4364_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_0_ce0_local = 1'b1;
    end else begin
        v9241_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_0_we0_local = 1'b1;
    end else begin
        v9241_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_1_ce0_local = 1'b1;
    end else begin
        v9241_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_1_we0_local = 1'b1;
    end else begin
        v9241_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_2_ce0_local = 1'b1;
    end else begin
        v9241_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_2_we0_local = 1'b1;
    end else begin
        v9241_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_3_ce0_local = 1'b1;
    end else begin
        v9241_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9241_3_we0_local = 1'b1;
    end else begin
        v9241_3_we0_local = 1'b0;
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
assign add_ln6073_1_fu_510_p2 = (ap_sig_allocacmp_indvar_flatten1269_load + 9'd1);
assign add_ln6073_fu_366_p2 = (ap_sig_allocacmp_v411770_load + 6'd4);
assign add_ln6074_1_fu_496_p2 = (ap_sig_allocacmp_indvar_flatten71_load + 6'd1);
assign add_ln6074_fu_400_p2 = (select_ln6073_fu_372_p3 + 3'd1);
assign add_ln6077_1_fu_660_p2 = (sub_ln6074_fu_627_p2 + zext_ln6077_3_fu_657_p1);
assign add_ln6077_fu_480_p2 = (sub_ln6077_fu_454_p2 + zext_ln6077_1_fu_476_p1);
assign add_ln6078_1_fu_651_p2 = (sub_ln6078_fu_587_p2 + zext_ln6084_1_fu_641_p1);
assign add_ln6078_2_fu_747_p2 = (sub_ln6078_1_fu_716_p2 + zext_ln6084_3_fu_730_p1);
assign add_ln6078_fu_725_p2 = (zext_ln6305_4_cast_cast_cast_cast_reg_803_pp0_iter1_reg + zext_ln6075_fu_722_p1);
assign add_ln6084_1_fu_734_p2 = (sub_ln6084_1_fu_692_p2 + zext_ln6084_3_fu_730_p1);
assign add_ln6084_fu_645_p2 = (sub_ln6084_fu_611_p2 + zext_ln6084_1_fu_641_p1);
assign and_ln6073_fu_386_p2 = (xor_ln6073_fu_380_p2 & ap_phi_mux_icmp_ln607574_phi_fu_265_p4);
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
    ap_condition_144 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_545 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln6073_reg_850 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_269_fu_406_p2 = (ap_phi_mux_icmp_ln607475_phi_fu_255_p4 | and_ln6073_fu_386_p2);
assign empty_270_fu_460_p2 = (mul_i_fu_282_p3 + zext_ln6073_fu_428_p1);
assign empty_271_fu_562_p2 = (zext_ln6073_1_fu_559_p1 + trunc_ln_reg_793);
assign empty_272_fu_636_p2 = (select_ln6305_cast_cast_reg_798 + zext_ln6074_fu_633_p1);
assign empty_fu_306_p1 = p_read[0:0];
assign icmp_ln6073_fu_528_p2 = ((ap_sig_allocacmp_indvar_flatten1269_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln6074_fu_522_p2 = ((select_ln6074_1_fu_502_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6075_fu_516_p2 = ((v4119_fu_490_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_432_p4 = {{v4117_fu_392_p3[5:2]}};
assign mul_i_fu_282_p3 = {{tmp_fu_272_p4}, {5'd0}};
assign p_shl95_fu_446_p3 = {{lshr_ln_fu_432_p4}, {3'd0}};
assign p_shl96_fu_567_p3 = {{empty_271_fu_562_p2}, {4'd0}};
assign p_shl97_fu_593_p3 = {{tmp_191_reg_824}, {4'd0}};
assign p_shl98_fu_674_p3 = {{add_ln6084_reg_854}, {4'd0}};
assign p_shl_fu_698_p3 = {{add_ln6078_1_reg_860}, {4'd0}};
assign select_ln6073_fu_372_p3 = ((ap_phi_mux_icmp_ln607475_phi_fu_255_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v411872_load);
assign select_ln6074_1_fu_502_p3 = ((ap_phi_mux_icmp_ln607475_phi_fu_255_p4[0:0] == 1'b1) ? 6'd1 : add_ln6074_1_fu_496_p2);
assign select_ln6305_cast_cast_fu_310_p3 = ((tmp_189_fu_298_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign sub_ln6074_fu_627_p2 = (tmp_193_fu_617_p3 - zext_ln6077_2_fu_624_p1);
assign sub_ln6077_fu_454_p2 = (p_shl95_fu_446_p3 - zext_ln6077_fu_442_p1);
assign sub_ln6078_1_fu_716_p2 = (p_shl_fu_698_p3 - zext_ln6078_1_fu_712_p1);
assign sub_ln6078_fu_587_p2 = (p_shl96_fu_567_p3 - zext_ln6078_fu_583_p1);
assign sub_ln6084_1_fu_692_p2 = (p_shl98_fu_674_p3 - zext_ln6084_2_fu_688_p1);
assign sub_ln6084_fu_611_p2 = (p_shl97_fu_593_p3 - zext_ln6084_fu_607_p1);
assign tmp_189_fu_298_p3 = p_read[32'd1];
assign tmp_190_fu_575_p3 = {{empty_271_fu_562_p2}, {1'd0}};
assign tmp_192_fu_600_p3 = {{tmp_191_reg_824}, {1'd0}};
assign tmp_193_fu_617_p3 = {{trunc_ln6077_reg_835}, {3'd0}};
assign tmp_194_fu_681_p3 = {{add_ln6084_reg_854}, {1'd0}};
assign tmp_195_fu_705_p3 = {{add_ln6078_1_reg_860}, {1'd0}};
assign tmp_fu_272_p4 = {{p_read[4:2]}};
assign trunc_ln6077_fu_486_p1 = add_ln6077_fu_480_p2[5:0];
assign trunc_ln_fu_290_p3 = {{tmp_fu_272_p4}, {3'd0}};
assign v4117_fu_392_p3 = ((ap_phi_mux_icmp_ln607475_phi_fu_255_p4[0:0] == 1'b1) ? add_ln6073_fu_366_p2 : ap_sig_allocacmp_v411770_load);
assign v4118_fu_420_p3 = ((and_ln6073_fu_386_p2[0:0] == 1'b1) ? add_ln6074_fu_400_p2 : select_ln6073_fu_372_p3);
assign v4119_fu_490_p2 = (v4119_mid2_fu_412_p3 + 3'd1);
assign v4119_mid2_fu_412_p3 = ((empty_269_fu_406_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v411973_load);
assign v4364_1_address0 = zext_ln6077_4_fu_666_p1;
assign v4364_1_ce0 = v4364_1_ce0_local;
assign v4364_2_address0 = zext_ln6077_4_fu_666_p1;
assign v4364_2_ce0 = v4364_2_ce0_local;
assign v4364_3_address0 = zext_ln6077_4_fu_666_p1;
assign v4364_3_ce0 = v4364_3_ce0_local;
assign v4364_address0 = zext_ln6077_4_fu_666_p1;
assign v4364_ce0 = v4364_ce0_local;
assign v9241_0_address0 = zext_ln6078_2_fu_753_p1;
assign v9241_0_ce0 = v9241_0_ce0_local;
assign v9241_0_d0 = v4364_3_q0;
assign v9241_0_we0 = v9241_0_we0_local;
assign v9241_1_address0 = zext_ln6084_4_fu_740_p1;
assign v9241_1_ce0 = v9241_1_ce0_local;
assign v9241_1_d0 = v4364_2_q0;
assign v9241_1_we0 = v9241_1_we0_local;
assign v9241_2_address0 = zext_ln6084_4_fu_740_p1;
assign v9241_2_ce0 = v9241_2_ce0_local;
assign v9241_2_d0 = v4364_1_q0;
assign v9241_2_we0 = v9241_2_we0_local;
assign v9241_3_address0 = zext_ln6084_4_fu_740_p1;
assign v9241_3_ce0 = v9241_3_ce0_local;
assign v9241_3_d0 = v4364_q0;
assign v9241_3_we0 = v9241_3_we0_local;
assign xor_ln6073_fu_380_p2 = (ap_phi_mux_icmp_ln607475_phi_fu_255_p4 ^ 1'd1);
assign zext_ln6073_1_fu_559_p1 = lshr_ln_reg_819;
assign zext_ln6073_fu_428_p1 = v4117_fu_392_p3;
assign zext_ln6074_fu_633_p1 = v4118_reg_814;
assign zext_ln6075_fu_722_p1 = v4119_mid2_reg_808_pp0_iter1_reg;
assign zext_ln6077_1_fu_476_p1 = v4118_fu_420_p3;
assign zext_ln6077_2_fu_624_p1 = add_ln6077_reg_830;
assign zext_ln6077_3_fu_657_p1 = v4119_mid2_reg_808;
assign zext_ln6077_4_fu_666_p1 = add_ln6077_1_fu_660_p2;
assign zext_ln6077_fu_442_p1 = lshr_ln_fu_432_p4;
assign zext_ln6078_1_fu_712_p1 = tmp_195_fu_705_p3;
assign zext_ln6078_2_fu_753_p1 = add_ln6078_2_fu_747_p2;
assign zext_ln6078_fu_583_p1 = tmp_190_fu_575_p3;
assign zext_ln6084_1_fu_641_p1 = empty_272_fu_636_p2;
assign zext_ln6084_2_fu_688_p1 = tmp_194_fu_681_p3;
assign zext_ln6084_3_fu_730_p1 = add_ln6078_fu_725_p2;
assign zext_ln6084_4_fu_740_p1 = add_ln6084_1_fu_734_p2;
assign zext_ln6084_fu_607_p1 = tmp_192_fu_600_p3;
assign zext_ln6305_4_cast_cast_cast_cast_fu_318_p3 = ((empty_fu_306_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    trunc_ln_reg_793[2:0] <= 3'b000;
    select_ln6305_cast_cast_reg_798[3] <= 1'b0;
    zext_ln6305_4_cast_cast_cast_cast_reg_803[3] <= 1'b0;
    zext_ln6305_4_cast_cast_cast_cast_reg_803_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
