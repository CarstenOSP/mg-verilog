
module forward_dataflow_in_loop_VITIS_LOOP_10127_1_Loop_VITIS_LOOP_9171_1_proc225176 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15488_7_address0,v15488_7_ce0,v15488_7_we0,v15488_7_d0,v15488_6_address0,v15488_6_ce0,v15488_6_we0,v15488_6_d0,v15488_5_address0,v15488_5_ce0,v15488_5_we0,v15488_5_d0,v15488_4_address0,v15488_4_ce0,v15488_4_we0,v15488_4_d0,v15488_3_address0,v15488_3_ce0,v15488_3_we0,v15488_3_d0,v15488_2_address0,v15488_2_ce0,v15488_2_we0,v15488_2_d0,v15488_1_address0,v15488_1_ce0,v15488_1_we0,v15488_1_d0,v15488_0_address0,v15488_0_ce0,v15488_0_we0,v15488_0_d0,p_read,v8412_7_i_address0,v8412_7_i_ce0,v8412_7_i_q0,v8412_6_i_address0,v8412_6_i_ce0,v8412_6_i_q0,v8412_5_i_address0,v8412_5_i_ce0,v8412_5_i_q0,v8412_4_i_address0,v8412_4_i_ce0,v8412_4_i_q0,v8412_3_i_address0,v8412_3_i_ce0,v8412_3_i_q0,v8412_2_i_address0,v8412_2_i_ce0,v8412_2_i_q0,v8412_1_i_address0,v8412_1_i_ce0,v8412_1_i_q0,v8412_i_address0,v8412_i_ce0,v8412_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v15488_7_address0;
output   v15488_7_ce0;
output   v15488_7_we0;
output  [7:0] v15488_7_d0;
output  [13:0] v15488_6_address0;
output   v15488_6_ce0;
output   v15488_6_we0;
output  [7:0] v15488_6_d0;
output  [13:0] v15488_5_address0;
output   v15488_5_ce0;
output   v15488_5_we0;
output  [7:0] v15488_5_d0;
output  [13:0] v15488_4_address0;
output   v15488_4_ce0;
output   v15488_4_we0;
output  [7:0] v15488_4_d0;
output  [13:0] v15488_3_address0;
output   v15488_3_ce0;
output   v15488_3_we0;
output  [7:0] v15488_3_d0;
output  [13:0] v15488_2_address0;
output   v15488_2_ce0;
output   v15488_2_we0;
output  [7:0] v15488_2_d0;
output  [13:0] v15488_1_address0;
output   v15488_1_ce0;
output   v15488_1_we0;
output  [7:0] v15488_1_d0;
output  [13:0] v15488_0_address0;
output   v15488_0_ce0;
output   v15488_0_we0;
output  [7:0] v15488_0_d0;
input  [5:0] p_read;
output  [7:0] v8412_7_i_address0;
output   v8412_7_i_ce0;
input  [7:0] v8412_7_i_q0;
output  [7:0] v8412_6_i_address0;
output   v8412_6_i_ce0;
input  [7:0] v8412_6_i_q0;
output  [7:0] v8412_5_i_address0;
output   v8412_5_i_ce0;
input  [7:0] v8412_5_i_q0;
output  [7:0] v8412_4_i_address0;
output   v8412_4_i_ce0;
input  [7:0] v8412_4_i_q0;
output  [7:0] v8412_3_i_address0;
output   v8412_3_i_ce0;
input  [7:0] v8412_3_i_q0;
output  [7:0] v8412_2_i_address0;
output   v8412_2_i_ce0;
input  [7:0] v8412_2_i_q0;
output  [7:0] v8412_1_i_address0;
output   v8412_1_i_ce0;
input  [7:0] v8412_1_i_q0;
output  [7:0] v8412_i_address0;
output   v8412_i_ce0;
input  [7:0] v8412_i_q0;
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
wire   [0:0] icmp_ln9171_fu_660_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] zext_ln10084_cast_cast_cast_cast_fu_432_p3;
reg   [3:0] zext_ln10084_cast_cast_cast_cast_reg_923;
wire   [3:0] zext_ln10084_2_cast_cast_cast_cast_fu_444_p3;
reg   [3:0] zext_ln10084_2_cast_cast_cast_cast_reg_928;
reg   [3:0] zext_ln10084_2_cast_cast_cast_cast_reg_928_pp0_iter1_reg;
wire   [2:0] v7631_mid2_fu_538_p3;
reg   [2:0] v7631_mid2_reg_933;
reg   [2:0] v7631_mid2_reg_933_pp0_iter1_reg;
wire   [2:0] v7630_fu_546_p3;
reg   [2:0] v7630_reg_939;
wire   [5:0] empty_490_fu_592_p2;
reg   [5:0] empty_490_reg_944;
reg   [5:0] tmp_535_reg_950;
wire   [5:0] add_ln9175_fu_612_p2;
reg   [5:0] add_ln9175_reg_956;
wire   [4:0] trunc_ln9175_fu_618_p1;
reg   [4:0] trunc_ln9175_reg_961;
wire   [0:0] icmp_ln9173_fu_648_p2;
reg   [0:0] icmp_ln9173_reg_966;
wire   [0:0] icmp_ln9172_fu_654_p2;
reg   [0:0] icmp_ln9172_reg_971;
reg   [0:0] icmp_ln9171_reg_976;
wire   [9:0] add_ln9190_fu_767_p2;
reg   [9:0] add_ln9190_reg_980;
wire   [9:0] add_ln9176_1_fu_773_p2;
reg   [9:0] add_ln9176_1_reg_986;
reg   [0:0] ap_phi_mux_icmp_ln9172147_phi_fu_381_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9173146_phi_fu_391_p4;
wire   [63:0] zext_ln9175_3_fu_788_p1;
wire   [63:0] zext_ln9190_4_fu_866_p1;
wire   [63:0] zext_ln9176_2_fu_883_p1;
reg   [7:0] indvar_flatten12141_fu_136;
wire   [7:0] add_ln9171_1_fu_642_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12141_load;
reg   [5:0] v7629142_fu_140;
wire   [5:0] v7629_fu_518_p3;
reg   [5:0] ap_sig_allocacmp_v7629142_load;
reg   [5:0] indvar_flatten143_fu_144;
wire   [5:0] select_ln9172_1_fu_634_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten143_load;
reg   [2:0] v7630144_fu_148;
reg   [2:0] ap_sig_allocacmp_v7630144_load;
reg   [2:0] v7631145_fu_152;
wire   [2:0] v7631_fu_622_p2;
reg   [2:0] ap_sig_allocacmp_v7631145_load;
reg    v8412_7_i_ce0_local;
reg    v8412_6_i_ce0_local;
reg    v8412_5_i_ce0_local;
reg    v8412_4_i_ce0_local;
reg    v8412_3_i_ce0_local;
reg    v8412_2_i_ce0_local;
reg    v8412_1_i_ce0_local;
reg    v8412_i_ce0_local;
reg    v15488_0_we0_local;
reg    v15488_0_ce0_local;
reg    v15488_1_we0_local;
reg    v15488_1_ce0_local;
reg    v15488_2_we0_local;
reg    v15488_2_ce0_local;
reg    v15488_3_we0_local;
reg    v15488_3_ce0_local;
reg    v15488_4_we0_local;
reg    v15488_4_ce0_local;
reg    v15488_5_we0_local;
reg    v15488_5_ce0_local;
reg    v15488_6_we0_local;
reg    v15488_6_ce0_local;
reg    v15488_7_we0_local;
reg    v15488_7_ce0_local;
wire   [3:0] tmp_fu_398_p4;
wire   [0:0] tmp_533_fu_424_p3;
wire   [0:0] empty_fu_440_p1;
wire   [0:0] xor_ln9171_fu_506_p2;
wire   [5:0] add_ln9171_fu_492_p2;
wire   [2:0] select_ln9171_fu_498_p3;
wire   [0:0] and_ln9171_fu_512_p2;
wire   [0:0] empty_488_fu_532_p2;
wire   [2:0] add_ln9172_fu_526_p2;
wire   [2:0] lshr_ln_fu_558_p4;
wire   [5:0] p_shl176_fu_572_p3;
wire   [5:0] zext_ln9171_1_fu_568_p1;
wire   [8:0] mul_i112_i_fu_408_p3;
wire   [8:0] zext_ln9171_fu_554_p1;
wire   [5:0] trunc_ln_fu_416_p3;
wire   [8:0] empty_489_fu_586_p2;
wire   [5:0] sub_ln9175_fu_580_p2;
wire   [5:0] zext_ln9175_fu_608_p1;
wire   [5:0] add_ln9172_1_fu_628_p2;
wire   [6:0] tmp_534_fu_698_p3;
wire   [9:0] p_shl179_fu_691_p3;
wire   [9:0] zext_ln9176_fu_705_p1;
wire   [6:0] tmp_536_fu_722_p3;
wire   [9:0] p_shl177_fu_715_p3;
wire   [9:0] zext_ln9190_fu_729_p1;
wire   [7:0] tmp_537_fu_739_p3;
wire   [7:0] zext_ln9175_1_fu_746_p1;
wire   [3:0] zext_ln9172_fu_755_p1;
wire   [3:0] empty_491_fu_758_p2;
wire   [9:0] sub_ln9190_fu_733_p2;
wire   [9:0] zext_ln9190_1_fu_763_p1;
wire   [9:0] sub_ln9176_fu_709_p2;
wire   [7:0] sub_ln9172_fu_749_p2;
wire   [7:0] zext_ln9175_2_fu_779_p1;
wire   [7:0] add_ln9175_1_fu_782_p2;
wire   [10:0] tmp_538_fu_807_p3;
wire   [13:0] p_shl174_fu_800_p3;
wire   [13:0] zext_ln9190_2_fu_814_p1;
wire   [10:0] tmp_539_fu_831_p3;
wire   [13:0] p_shl_fu_824_p3;
wire   [13:0] zext_ln9176_1_fu_838_p1;
wire   [3:0] zext_ln9173_fu_848_p1;
wire   [3:0] add_ln9176_fu_851_p2;
wire   [13:0] sub_ln9190_1_fu_818_p2;
wire   [13:0] zext_ln9190_3_fu_856_p1;
wire   [13:0] add_ln9190_1_fu_860_p2;
wire   [13:0] sub_ln9176_1_fu_842_p2;
wire   [13:0] add_ln9176_2_fu_877_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_634;
reg    ap_condition_194;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12141_fu_136 = 8'd0;
#0 v7629142_fu_140 = 6'd0;
#0 indvar_flatten143_fu_144 = 6'd0;
#0 v7630144_fu_148 = 3'd0;
#0 v7631145_fu_152 = 3'd0;
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
    if ((1'b1 == ap_condition_194)) begin
        indvar_flatten12141_fu_136 <= add_ln9171_1_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    indvar_flatten143_fu_144 <= select_ln9172_1_fu_634_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v7629142_fu_140 <= v7629_fu_518_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v7630144_fu_148 <= v7630_fu_546_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v7631145_fu_152 <= v7631_fu_622_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9175_reg_956 <= add_ln9175_fu_612_p2;
        add_ln9176_1_reg_986 <= add_ln9176_1_fu_773_p2;
        add_ln9190_reg_980 <= add_ln9190_fu_767_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_490_reg_944 <= empty_490_fu_592_p2;
        icmp_ln9171_reg_976 <= icmp_ln9171_fu_660_p2;
        tmp_535_reg_950 <= {{empty_489_fu_586_p2[8:3]}};
        trunc_ln9175_reg_961 <= trunc_ln9175_fu_618_p1;
        v7630_reg_939 <= v7630_fu_546_p3;
        v7631_mid2_reg_933 <= v7631_mid2_fu_538_p3;
        v7631_mid2_reg_933_pp0_iter1_reg <= v7631_mid2_reg_933;
        zext_ln10084_2_cast_cast_cast_cast_reg_928[2 : 0] <= zext_ln10084_2_cast_cast_cast_cast_fu_444_p3[2 : 0];
        zext_ln10084_2_cast_cast_cast_cast_reg_928_pp0_iter1_reg[2 : 0] <= zext_ln10084_2_cast_cast_cast_cast_reg_928[2 : 0];
        zext_ln10084_cast_cast_cast_cast_reg_923[2 : 0] <= zext_ln10084_cast_cast_cast_cast_fu_432_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9172_reg_971 <= icmp_ln9172_fu_654_p2;
        icmp_ln9173_reg_966 <= icmp_ln9173_fu_648_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9171_fu_660_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_634)) begin
            ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 = icmp_ln9172_reg_971;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 = icmp_ln9172_reg_971;
        end
    end else begin
        ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 = icmp_ln9172_reg_971;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_634)) begin
            ap_phi_mux_icmp_ln9173146_phi_fu_391_p4 = icmp_ln9173_reg_966;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9173146_phi_fu_391_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9173146_phi_fu_391_p4 = icmp_ln9173_reg_966;
        end
    end else begin
        ap_phi_mux_icmp_ln9173146_phi_fu_391_p4 = icmp_ln9173_reg_966;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12141_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12141_load = indvar_flatten12141_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten143_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten143_load = indvar_flatten143_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7629142_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7629142_load = v7629142_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7630144_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v7630144_load = v7630144_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7631145_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v7631145_load = v7631145_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_0_ce0_local = 1'b1;
    end else begin
        v15488_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_0_we0_local = 1'b1;
    end else begin
        v15488_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_1_ce0_local = 1'b1;
    end else begin
        v15488_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_1_we0_local = 1'b1;
    end else begin
        v15488_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_2_ce0_local = 1'b1;
    end else begin
        v15488_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_2_we0_local = 1'b1;
    end else begin
        v15488_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_3_ce0_local = 1'b1;
    end else begin
        v15488_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_3_we0_local = 1'b1;
    end else begin
        v15488_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_4_ce0_local = 1'b1;
    end else begin
        v15488_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_4_we0_local = 1'b1;
    end else begin
        v15488_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_5_ce0_local = 1'b1;
    end else begin
        v15488_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_5_we0_local = 1'b1;
    end else begin
        v15488_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_6_ce0_local = 1'b1;
    end else begin
        v15488_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_6_we0_local = 1'b1;
    end else begin
        v15488_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_7_ce0_local = 1'b1;
    end else begin
        v15488_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15488_7_we0_local = 1'b1;
    end else begin
        v15488_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_1_i_ce0_local = 1'b1;
    end else begin
        v8412_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_2_i_ce0_local = 1'b1;
    end else begin
        v8412_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_3_i_ce0_local = 1'b1;
    end else begin
        v8412_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_4_i_ce0_local = 1'b1;
    end else begin
        v8412_4_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_5_i_ce0_local = 1'b1;
    end else begin
        v8412_5_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_6_i_ce0_local = 1'b1;
    end else begin
        v8412_6_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_7_i_ce0_local = 1'b1;
    end else begin
        v8412_7_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8412_i_ce0_local = 1'b1;
    end else begin
        v8412_i_ce0_local = 1'b0;
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
assign add_ln9171_1_fu_642_p2 = (ap_sig_allocacmp_indvar_flatten12141_load + 8'd1);
assign add_ln9171_fu_492_p2 = (ap_sig_allocacmp_v7629142_load + 6'd8);
assign add_ln9172_1_fu_628_p2 = (ap_sig_allocacmp_indvar_flatten143_load + 6'd1);
assign add_ln9172_fu_526_p2 = (select_ln9171_fu_498_p3 + 3'd1);
assign add_ln9175_1_fu_782_p2 = (sub_ln9172_fu_749_p2 + zext_ln9175_2_fu_779_p1);
assign add_ln9175_fu_612_p2 = (sub_ln9175_fu_580_p2 + zext_ln9175_fu_608_p1);
assign add_ln9176_1_fu_773_p2 = (sub_ln9176_fu_709_p2 + zext_ln9190_1_fu_763_p1);
assign add_ln9176_2_fu_877_p2 = (sub_ln9176_1_fu_842_p2 + zext_ln9190_3_fu_856_p1);
assign add_ln9176_fu_851_p2 = (zext_ln10084_2_cast_cast_cast_cast_reg_928_pp0_iter1_reg + zext_ln9173_fu_848_p1);
assign add_ln9190_1_fu_860_p2 = (sub_ln9190_1_fu_818_p2 + zext_ln9190_3_fu_856_p1);
assign add_ln9190_fu_767_p2 = (sub_ln9190_fu_733_p2 + zext_ln9190_1_fu_763_p1);
assign and_ln9171_fu_512_p2 = (xor_ln9171_fu_506_p2 & ap_phi_mux_icmp_ln9173146_phi_fu_391_p4);
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
    ap_condition_194 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_634 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9171_reg_976 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_488_fu_532_p2 = (ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 | and_ln9171_fu_512_p2);
assign empty_489_fu_586_p2 = (mul_i112_i_fu_408_p3 + zext_ln9171_fu_554_p1);
assign empty_490_fu_592_p2 = (zext_ln9171_1_fu_568_p1 + trunc_ln_fu_416_p3);
assign empty_491_fu_758_p2 = (zext_ln10084_cast_cast_cast_cast_reg_923 + zext_ln9172_fu_755_p1);
assign empty_fu_440_p1 = p_read[0:0];
assign icmp_ln9171_fu_660_p2 = ((ap_sig_allocacmp_indvar_flatten12141_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln9172_fu_654_p2 = ((select_ln9172_1_fu_634_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln9173_fu_648_p2 = ((v7631_fu_622_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_558_p4 = {{v7629_fu_518_p3[5:3]}};
assign mul_i112_i_fu_408_p3 = {{tmp_fu_398_p4}, {5'd0}};
assign p_shl174_fu_800_p3 = {{add_ln9190_reg_980}, {4'd0}};
assign p_shl176_fu_572_p3 = {{lshr_ln_fu_558_p4}, {3'd0}};
assign p_shl177_fu_715_p3 = {{tmp_535_reg_950}, {4'd0}};
assign p_shl179_fu_691_p3 = {{empty_490_reg_944}, {4'd0}};
assign p_shl_fu_824_p3 = {{add_ln9176_1_reg_986}, {4'd0}};
assign select_ln9171_fu_498_p3 = ((ap_phi_mux_icmp_ln9172147_phi_fu_381_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v7630144_load);
assign select_ln9172_1_fu_634_p3 = ((ap_phi_mux_icmp_ln9172147_phi_fu_381_p4[0:0] == 1'b1) ? 6'd1 : add_ln9172_1_fu_628_p2);
assign sub_ln9172_fu_749_p2 = (tmp_537_fu_739_p3 - zext_ln9175_1_fu_746_p1);
assign sub_ln9175_fu_580_p2 = (p_shl176_fu_572_p3 - zext_ln9171_1_fu_568_p1);
assign sub_ln9176_1_fu_842_p2 = (p_shl_fu_824_p3 - zext_ln9176_1_fu_838_p1);
assign sub_ln9176_fu_709_p2 = (p_shl179_fu_691_p3 - zext_ln9176_fu_705_p1);
assign sub_ln9190_1_fu_818_p2 = (p_shl174_fu_800_p3 - zext_ln9190_2_fu_814_p1);
assign sub_ln9190_fu_733_p2 = (p_shl177_fu_715_p3 - zext_ln9190_fu_729_p1);
assign tmp_533_fu_424_p3 = p_read[32'd1];
assign tmp_534_fu_698_p3 = {{empty_490_reg_944}, {1'd0}};
assign tmp_536_fu_722_p3 = {{tmp_535_reg_950}, {1'd0}};
assign tmp_537_fu_739_p3 = {{trunc_ln9175_reg_961}, {3'd0}};
assign tmp_538_fu_807_p3 = {{add_ln9190_reg_980}, {1'd0}};
assign tmp_539_fu_831_p3 = {{add_ln9176_1_reg_986}, {1'd0}};
assign tmp_fu_398_p4 = {{p_read[5:2]}};
assign trunc_ln9175_fu_618_p1 = add_ln9175_fu_612_p2[4:0];
assign trunc_ln_fu_416_p3 = {{tmp_fu_398_p4}, {2'd0}};
assign v15488_0_address0 = zext_ln9176_2_fu_883_p1;
assign v15488_0_ce0 = v15488_0_ce0_local;
assign v15488_0_d0 = v8412_7_i_q0;
assign v15488_0_we0 = v15488_0_we0_local;
assign v15488_1_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_1_ce0 = v15488_1_ce0_local;
assign v15488_1_d0 = v8412_6_i_q0;
assign v15488_1_we0 = v15488_1_we0_local;
assign v15488_2_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_2_ce0 = v15488_2_ce0_local;
assign v15488_2_d0 = v8412_5_i_q0;
assign v15488_2_we0 = v15488_2_we0_local;
assign v15488_3_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_3_ce0 = v15488_3_ce0_local;
assign v15488_3_d0 = v8412_4_i_q0;
assign v15488_3_we0 = v15488_3_we0_local;
assign v15488_4_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_4_ce0 = v15488_4_ce0_local;
assign v15488_4_d0 = v8412_3_i_q0;
assign v15488_4_we0 = v15488_4_we0_local;
assign v15488_5_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_5_ce0 = v15488_5_ce0_local;
assign v15488_5_d0 = v8412_2_i_q0;
assign v15488_5_we0 = v15488_5_we0_local;
assign v15488_6_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_6_ce0 = v15488_6_ce0_local;
assign v15488_6_d0 = v8412_1_i_q0;
assign v15488_6_we0 = v15488_6_we0_local;
assign v15488_7_address0 = zext_ln9190_4_fu_866_p1;
assign v15488_7_ce0 = v15488_7_ce0_local;
assign v15488_7_d0 = v8412_i_q0;
assign v15488_7_we0 = v15488_7_we0_local;
assign v7629_fu_518_p3 = ((ap_phi_mux_icmp_ln9172147_phi_fu_381_p4[0:0] == 1'b1) ? add_ln9171_fu_492_p2 : ap_sig_allocacmp_v7629142_load);
assign v7630_fu_546_p3 = ((and_ln9171_fu_512_p2[0:0] == 1'b1) ? add_ln9172_fu_526_p2 : select_ln9171_fu_498_p3);
assign v7631_fu_622_p2 = (v7631_mid2_fu_538_p3 + 3'd1);
assign v7631_mid2_fu_538_p3 = ((empty_488_fu_532_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v7631145_load);
assign v8412_1_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_1_i_ce0 = v8412_1_i_ce0_local;
assign v8412_2_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_2_i_ce0 = v8412_2_i_ce0_local;
assign v8412_3_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_3_i_ce0 = v8412_3_i_ce0_local;
assign v8412_4_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_4_i_ce0 = v8412_4_i_ce0_local;
assign v8412_5_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_5_i_ce0 = v8412_5_i_ce0_local;
assign v8412_6_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_6_i_ce0 = v8412_6_i_ce0_local;
assign v8412_7_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_7_i_ce0 = v8412_7_i_ce0_local;
assign v8412_i_address0 = zext_ln9175_3_fu_788_p1;
assign v8412_i_ce0 = v8412_i_ce0_local;
assign xor_ln9171_fu_506_p2 = (ap_phi_mux_icmp_ln9172147_phi_fu_381_p4 ^ 1'd1);
assign zext_ln10084_2_cast_cast_cast_cast_fu_444_p3 = ((empty_fu_440_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln10084_cast_cast_cast_cast_fu_432_p3 = ((tmp_533_fu_424_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln9171_1_fu_568_p1 = lshr_ln_fu_558_p4;
assign zext_ln9171_fu_554_p1 = v7629_fu_518_p3;
assign zext_ln9172_fu_755_p1 = v7630_reg_939;
assign zext_ln9173_fu_848_p1 = v7631_mid2_reg_933_pp0_iter1_reg;
assign zext_ln9175_1_fu_746_p1 = add_ln9175_reg_956;
assign zext_ln9175_2_fu_779_p1 = v7631_mid2_reg_933;
assign zext_ln9175_3_fu_788_p1 = add_ln9175_1_fu_782_p2;
assign zext_ln9175_fu_608_p1 = v7630_fu_546_p3;
assign zext_ln9176_1_fu_838_p1 = tmp_539_fu_831_p3;
assign zext_ln9176_2_fu_883_p1 = add_ln9176_2_fu_877_p2;
assign zext_ln9176_fu_705_p1 = tmp_534_fu_698_p3;
assign zext_ln9190_1_fu_763_p1 = empty_491_fu_758_p2;
assign zext_ln9190_2_fu_814_p1 = tmp_538_fu_807_p3;
assign zext_ln9190_3_fu_856_p1 = add_ln9176_fu_851_p2;
assign zext_ln9190_4_fu_866_p1 = add_ln9190_1_fu_860_p2;
assign zext_ln9190_fu_729_p1 = tmp_536_fu_722_p3;
always @ (posedge ap_clk) begin
    zext_ln10084_cast_cast_cast_cast_reg_923[3] <= 1'b0;
    zext_ln10084_2_cast_cast_cast_cast_reg_928[3] <= 1'b0;
    zext_ln10084_2_cast_cast_cast_cast_reg_928_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
