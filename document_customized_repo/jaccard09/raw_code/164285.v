module forward_dataflow_in_loop_VITIS_LOOP_8969_1_Loop_VITIS_LOOP_8013_1_proc230190 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15494_7_address0,v15494_7_ce0,v15494_7_we0,v15494_7_d0,v15494_6_address0,v15494_6_ce0,v15494_6_we0,v15494_6_d0,v15494_5_address0,v15494_5_ce0,v15494_5_we0,v15494_5_d0,v15494_4_address0,v15494_4_ce0,v15494_4_we0,v15494_4_d0,v15494_3_address0,v15494_3_ce0,v15494_3_we0,v15494_3_d0,v15494_2_address0,v15494_2_ce0,v15494_2_we0,v15494_2_d0,v15494_1_address0,v15494_1_ce0,v15494_1_we0,v15494_1_d0,v15494_0_address0,v15494_0_ce0,v15494_0_we0,v15494_0_d0,p_read,v7551_7_i_address0,v7551_7_i_ce0,v7551_7_i_q0,v7551_6_i_address0,v7551_6_i_ce0,v7551_6_i_q0,v7551_5_i_address0,v7551_5_i_ce0,v7551_5_i_q0,v7551_4_i_address0,v7551_4_i_ce0,v7551_4_i_q0,v7551_3_i_address0,v7551_3_i_ce0,v7551_3_i_q0,v7551_2_i_address0,v7551_2_i_ce0,v7551_2_i_q0,v7551_1_i_address0,v7551_1_i_ce0,v7551_1_i_q0,v7551_i_address0,v7551_i_ce0,v7551_i_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v15494_7_address0;
output   v15494_7_ce0;
output   v15494_7_we0;
output  [7:0] v15494_7_d0;
output  [13:0] v15494_6_address0;
output   v15494_6_ce0;
output   v15494_6_we0;
output  [7:0] v15494_6_d0;
output  [13:0] v15494_5_address0;
output   v15494_5_ce0;
output   v15494_5_we0;
output  [7:0] v15494_5_d0;
output  [13:0] v15494_4_address0;
output   v15494_4_ce0;
output   v15494_4_we0;
output  [7:0] v15494_4_d0;
output  [13:0] v15494_3_address0;
output   v15494_3_ce0;
output   v15494_3_we0;
output  [7:0] v15494_3_d0;
output  [13:0] v15494_2_address0;
output   v15494_2_ce0;
output   v15494_2_we0;
output  [7:0] v15494_2_d0;
output  [13:0] v15494_1_address0;
output   v15494_1_ce0;
output   v15494_1_we0;
output  [7:0] v15494_1_d0;
output  [13:0] v15494_0_address0;
output   v15494_0_ce0;
output   v15494_0_we0;
output  [7:0] v15494_0_d0;
input  [5:0] p_read;
output  [7:0] v7551_7_i_address0;
output   v7551_7_i_ce0;
input  [7:0] v7551_7_i_q0;
output  [7:0] v7551_6_i_address0;
output   v7551_6_i_ce0;
input  [7:0] v7551_6_i_q0;
output  [7:0] v7551_5_i_address0;
output   v7551_5_i_ce0;
input  [7:0] v7551_5_i_q0;
output  [7:0] v7551_4_i_address0;
output   v7551_4_i_ce0;
input  [7:0] v7551_4_i_q0;
output  [7:0] v7551_3_i_address0;
output   v7551_3_i_ce0;
input  [7:0] v7551_3_i_q0;
output  [7:0] v7551_2_i_address0;
output   v7551_2_i_ce0;
input  [7:0] v7551_2_i_q0;
output  [7:0] v7551_1_i_address0;
output   v7551_1_i_ce0;
input  [7:0] v7551_1_i_q0;
output  [7:0] v7551_i_address0;
output   v7551_i_ce0;
input  [7:0] v7551_i_q0;
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
wire   [0:0] icmp_ln8013_fu_660_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] zext_ln8926_cast_cast_cast_cast_fu_432_p3;
reg   [3:0] zext_ln8926_cast_cast_cast_cast_reg_923;
wire   [3:0] zext_ln8926_5_cast_cast_cast_cast_fu_444_p3;
reg   [3:0] zext_ln8926_5_cast_cast_cast_cast_reg_928;
reg   [3:0] zext_ln8926_5_cast_cast_cast_cast_reg_928_pp0_iter1_reg;
wire   [2:0] v6770_mid2_fu_538_p3;
reg   [2:0] v6770_mid2_reg_933;
reg   [2:0] v6770_mid2_reg_933_pp0_iter1_reg;
wire   [2:0] v6769_fu_546_p3;
reg   [2:0] v6769_reg_939;
wire   [5:0] empty_158_fu_592_p2;
reg   [5:0] empty_158_reg_944;
reg   [5:0] tmp_29_reg_950;
wire   [5:0] add_ln8017_fu_612_p2;
reg   [5:0] add_ln8017_reg_956;
wire   [4:0] trunc_ln8017_fu_618_p1;
reg   [4:0] trunc_ln8017_reg_961;
wire   [0:0] icmp_ln8015_fu_648_p2;
reg   [0:0] icmp_ln8015_reg_966;
wire   [0:0] icmp_ln8014_fu_654_p2;
reg   [0:0] icmp_ln8014_reg_971;
reg   [0:0] icmp_ln8013_reg_976;
wire   [9:0] add_ln8032_fu_767_p2;
reg   [9:0] add_ln8032_reg_980;
wire   [9:0] add_ln8018_1_fu_773_p2;
reg   [9:0] add_ln8018_1_reg_986;
reg   [0:0] ap_phi_mux_icmp_ln8014147_phi_fu_381_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln8015146_phi_fu_391_p4;
wire   [63:0] zext_ln8017_3_fu_788_p1;
wire   [63:0] zext_ln8032_4_fu_866_p1;
wire   [63:0] zext_ln8018_2_fu_883_p1;
reg   [7:0] indvar_flatten12141_fu_136;
wire   [7:0] add_ln8013_1_fu_642_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12141_load;
reg   [5:0] v6768142_fu_140;
wire   [5:0] v6768_fu_518_p3;
reg   [5:0] ap_sig_allocacmp_v6768142_load;
reg   [5:0] indvar_flatten143_fu_144;
wire   [5:0] select_ln8014_1_fu_634_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten143_load;
reg   [2:0] v6769144_fu_148;
reg   [2:0] ap_sig_allocacmp_v6769144_load;
reg   [2:0] v6770145_fu_152;
wire   [2:0] v6770_fu_622_p2;
reg   [2:0] ap_sig_allocacmp_v6770145_load;
reg    v7551_7_i_ce0_local;
reg    v7551_6_i_ce0_local;
reg    v7551_5_i_ce0_local;
reg    v7551_4_i_ce0_local;
reg    v7551_3_i_ce0_local;
reg    v7551_2_i_ce0_local;
reg    v7551_1_i_ce0_local;
reg    v7551_i_ce0_local;
reg    v15494_0_we0_local;
reg    v15494_0_ce0_local;
reg    v15494_1_we0_local;
reg    v15494_1_ce0_local;
reg    v15494_2_we0_local;
reg    v15494_2_ce0_local;
reg    v15494_3_we0_local;
reg    v15494_3_ce0_local;
reg    v15494_4_we0_local;
reg    v15494_4_ce0_local;
reg    v15494_5_we0_local;
reg    v15494_5_ce0_local;
reg    v15494_6_we0_local;
reg    v15494_6_ce0_local;
reg    v15494_7_we0_local;
reg    v15494_7_ce0_local;
wire   [3:0] tmp_fu_398_p4;
wire   [0:0] tmp_27_fu_424_p3;
wire   [0:0] empty_fu_440_p1;
wire   [0:0] xor_ln8013_fu_506_p2;
wire   [5:0] add_ln8013_fu_492_p2;
wire   [2:0] select_ln8013_fu_498_p3;
wire   [0:0] and_ln8013_fu_512_p2;
wire   [0:0] empty_156_fu_532_p2;
wire   [2:0] add_ln8014_fu_526_p2;
wire   [2:0] lshr_ln_fu_558_p4;
wire   [5:0] p_shl127_fu_572_p3;
wire   [5:0] zext_ln8013_1_fu_568_p1;
wire   [8:0] mul_i112_i_fu_408_p3;
wire   [8:0] zext_ln8013_fu_554_p1;
wire   [5:0] trunc_ln_fu_416_p3;
wire   [8:0] empty_157_fu_586_p2;
wire   [5:0] sub_ln8017_fu_580_p2;
wire   [5:0] zext_ln8017_fu_608_p1;
wire   [5:0] add_ln8014_1_fu_628_p2;
wire   [6:0] tmp_28_fu_698_p3;
wire   [9:0] p_shl128_fu_691_p3;
wire   [9:0] zext_ln8018_fu_705_p1;
wire   [6:0] tmp_30_fu_722_p3;
wire   [9:0] p_shl129_fu_715_p3;
wire   [9:0] zext_ln8032_fu_729_p1;
wire   [7:0] tmp_31_fu_739_p3;
wire   [7:0] zext_ln8017_1_fu_746_p1;
wire   [3:0] zext_ln8014_fu_755_p1;
wire   [3:0] empty_159_fu_758_p2;
wire   [9:0] sub_ln8032_fu_733_p2;
wire   [9:0] zext_ln8032_1_fu_763_p1;
wire   [9:0] sub_ln8018_fu_709_p2;
wire   [7:0] sub_ln8014_fu_749_p2;
wire   [7:0] zext_ln8017_2_fu_779_p1;
wire   [7:0] add_ln8017_1_fu_782_p2;
wire   [10:0] tmp_32_fu_807_p3;
wire   [13:0] p_shl130_fu_800_p3;
wire   [13:0] zext_ln8032_2_fu_814_p1;
wire   [10:0] tmp_33_fu_831_p3;
wire   [13:0] p_shl_fu_824_p3;
wire   [13:0] zext_ln8018_1_fu_838_p1;
wire   [3:0] zext_ln8015_fu_848_p1;
wire   [3:0] add_ln8018_fu_851_p2;
wire   [13:0] sub_ln8032_1_fu_818_p2;
wire   [13:0] zext_ln8032_3_fu_856_p1;
wire   [13:0] add_ln8032_1_fu_860_p2;
wire   [13:0] sub_ln8018_1_fu_842_p2;
wire   [13:0] add_ln8018_2_fu_877_p2;
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
#0 v6768142_fu_140 = 6'd0;
#0 indvar_flatten143_fu_144 = 6'd0;
#0 v6769144_fu_148 = 3'd0;
#0 v6770145_fu_152 = 3'd0;
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
        indvar_flatten12141_fu_136 <= add_ln8013_1_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    indvar_flatten143_fu_144 <= select_ln8014_1_fu_634_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v6768142_fu_140 <= v6768_fu_518_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v6769144_fu_148 <= v6769_fu_546_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v6770145_fu_152 <= v6770_fu_622_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8017_reg_956 <= add_ln8017_fu_612_p2;
        add_ln8018_1_reg_986 <= add_ln8018_1_fu_773_p2;
        add_ln8032_reg_980 <= add_ln8032_fu_767_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_158_reg_944 <= empty_158_fu_592_p2;
        icmp_ln8013_reg_976 <= icmp_ln8013_fu_660_p2;
        tmp_29_reg_950 <= {{empty_157_fu_586_p2[8:3]}};
        trunc_ln8017_reg_961 <= trunc_ln8017_fu_618_p1;
        v6769_reg_939 <= v6769_fu_546_p3;
        v6770_mid2_reg_933 <= v6770_mid2_fu_538_p3;
        v6770_mid2_reg_933_pp0_iter1_reg <= v6770_mid2_reg_933;
        zext_ln8926_5_cast_cast_cast_cast_reg_928[2 : 0] <= zext_ln8926_5_cast_cast_cast_cast_fu_444_p3[2 : 0];
        zext_ln8926_5_cast_cast_cast_cast_reg_928_pp0_iter1_reg[2 : 0] <= zext_ln8926_5_cast_cast_cast_cast_reg_928[2 : 0];
        zext_ln8926_cast_cast_cast_cast_reg_923[2 : 0] <= zext_ln8926_cast_cast_cast_cast_fu_432_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8014_reg_971 <= icmp_ln8014_fu_654_p2;
        icmp_ln8015_reg_966 <= icmp_ln8015_fu_648_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8013_fu_660_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 = icmp_ln8014_reg_971;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 = icmp_ln8014_reg_971;
        end
    end else begin
        ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 = icmp_ln8014_reg_971;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_634)) begin
            ap_phi_mux_icmp_ln8015146_phi_fu_391_p4 = icmp_ln8015_reg_966;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8015146_phi_fu_391_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8015146_phi_fu_391_p4 = icmp_ln8015_reg_966;
        end
    end else begin
        ap_phi_mux_icmp_ln8015146_phi_fu_391_p4 = icmp_ln8015_reg_966;
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
        ap_sig_allocacmp_v6768142_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v6768142_load = v6768142_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6769144_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v6769144_load = v6769144_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6770145_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v6770145_load = v6770145_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_0_ce0_local = 1'b1;
    end else begin
        v15494_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_0_we0_local = 1'b1;
    end else begin
        v15494_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_1_ce0_local = 1'b1;
    end else begin
        v15494_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_1_we0_local = 1'b1;
    end else begin
        v15494_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_2_ce0_local = 1'b1;
    end else begin
        v15494_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_2_we0_local = 1'b1;
    end else begin
        v15494_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_3_ce0_local = 1'b1;
    end else begin
        v15494_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_3_we0_local = 1'b1;
    end else begin
        v15494_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_4_ce0_local = 1'b1;
    end else begin
        v15494_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_4_we0_local = 1'b1;
    end else begin
        v15494_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_5_ce0_local = 1'b1;
    end else begin
        v15494_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_5_we0_local = 1'b1;
    end else begin
        v15494_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_6_ce0_local = 1'b1;
    end else begin
        v15494_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_6_we0_local = 1'b1;
    end else begin
        v15494_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_7_ce0_local = 1'b1;
    end else begin
        v15494_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15494_7_we0_local = 1'b1;
    end else begin
        v15494_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_1_i_ce0_local = 1'b1;
    end else begin
        v7551_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_2_i_ce0_local = 1'b1;
    end else begin
        v7551_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_3_i_ce0_local = 1'b1;
    end else begin
        v7551_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_4_i_ce0_local = 1'b1;
    end else begin
        v7551_4_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_5_i_ce0_local = 1'b1;
    end else begin
        v7551_5_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_6_i_ce0_local = 1'b1;
    end else begin
        v7551_6_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_7_i_ce0_local = 1'b1;
    end else begin
        v7551_7_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7551_i_ce0_local = 1'b1;
    end else begin
        v7551_i_ce0_local = 1'b0;
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
assign add_ln8013_1_fu_642_p2 = (ap_sig_allocacmp_indvar_flatten12141_load + 8'd1);
assign add_ln8013_fu_492_p2 = (ap_sig_allocacmp_v6768142_load + 6'd8);
assign add_ln8014_1_fu_628_p2 = (ap_sig_allocacmp_indvar_flatten143_load + 6'd1);
assign add_ln8014_fu_526_p2 = (select_ln8013_fu_498_p3 + 3'd1);
assign add_ln8017_1_fu_782_p2 = (sub_ln8014_fu_749_p2 + zext_ln8017_2_fu_779_p1);
assign add_ln8017_fu_612_p2 = (sub_ln8017_fu_580_p2 + zext_ln8017_fu_608_p1);
assign add_ln8018_1_fu_773_p2 = (sub_ln8018_fu_709_p2 + zext_ln8032_1_fu_763_p1);
assign add_ln8018_2_fu_877_p2 = (sub_ln8018_1_fu_842_p2 + zext_ln8032_3_fu_856_p1);
assign add_ln8018_fu_851_p2 = (zext_ln8926_5_cast_cast_cast_cast_reg_928_pp0_iter1_reg + zext_ln8015_fu_848_p1);
assign add_ln8032_1_fu_860_p2 = (sub_ln8032_1_fu_818_p2 + zext_ln8032_3_fu_856_p1);
assign add_ln8032_fu_767_p2 = (sub_ln8032_fu_733_p2 + zext_ln8032_1_fu_763_p1);
assign and_ln8013_fu_512_p2 = (xor_ln8013_fu_506_p2 & ap_phi_mux_icmp_ln8015146_phi_fu_391_p4);
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
    ap_condition_634 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8013_reg_976 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_156_fu_532_p2 = (ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 | and_ln8013_fu_512_p2);
assign empty_157_fu_586_p2 = (mul_i112_i_fu_408_p3 + zext_ln8013_fu_554_p1);
assign empty_158_fu_592_p2 = (zext_ln8013_1_fu_568_p1 + trunc_ln_fu_416_p3);
assign empty_159_fu_758_p2 = (zext_ln8926_cast_cast_cast_cast_reg_923 + zext_ln8014_fu_755_p1);
assign empty_fu_440_p1 = p_read[0:0];
assign icmp_ln8013_fu_660_p2 = ((ap_sig_allocacmp_indvar_flatten12141_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln8014_fu_654_p2 = ((select_ln8014_1_fu_634_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln8015_fu_648_p2 = ((v6770_fu_622_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_558_p4 = {{v6768_fu_518_p3[5:3]}};
assign mul_i112_i_fu_408_p3 = {{tmp_fu_398_p4}, {5'd0}};
assign p_shl127_fu_572_p3 = {{lshr_ln_fu_558_p4}, {3'd0}};
assign p_shl128_fu_691_p3 = {{empty_158_reg_944}, {4'd0}};
assign p_shl129_fu_715_p3 = {{tmp_29_reg_950}, {4'd0}};
assign p_shl130_fu_800_p3 = {{add_ln8032_reg_980}, {4'd0}};
assign p_shl_fu_824_p3 = {{add_ln8018_1_reg_986}, {4'd0}};
assign select_ln8013_fu_498_p3 = ((ap_phi_mux_icmp_ln8014147_phi_fu_381_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v6769144_load);
assign select_ln8014_1_fu_634_p3 = ((ap_phi_mux_icmp_ln8014147_phi_fu_381_p4[0:0] == 1'b1) ? 6'd1 : add_ln8014_1_fu_628_p2);
assign sub_ln8014_fu_749_p2 = (tmp_31_fu_739_p3 - zext_ln8017_1_fu_746_p1);
assign sub_ln8017_fu_580_p2 = (p_shl127_fu_572_p3 - zext_ln8013_1_fu_568_p1);
assign sub_ln8018_1_fu_842_p2 = (p_shl_fu_824_p3 - zext_ln8018_1_fu_838_p1);
assign sub_ln8018_fu_709_p2 = (p_shl128_fu_691_p3 - zext_ln8018_fu_705_p1);
assign sub_ln8032_1_fu_818_p2 = (p_shl130_fu_800_p3 - zext_ln8032_2_fu_814_p1);
assign sub_ln8032_fu_733_p2 = (p_shl129_fu_715_p3 - zext_ln8032_fu_729_p1);
assign tmp_27_fu_424_p3 = p_read[32'd1];
assign tmp_28_fu_698_p3 = {{empty_158_reg_944}, {1'd0}};
assign tmp_30_fu_722_p3 = {{tmp_29_reg_950}, {1'd0}};
assign tmp_31_fu_739_p3 = {{trunc_ln8017_reg_961}, {3'd0}};
assign tmp_32_fu_807_p3 = {{add_ln8032_reg_980}, {1'd0}};
assign tmp_33_fu_831_p3 = {{add_ln8018_1_reg_986}, {1'd0}};
assign tmp_fu_398_p4 = {{p_read[5:2]}};
assign trunc_ln8017_fu_618_p1 = add_ln8017_fu_612_p2[4:0];
assign trunc_ln_fu_416_p3 = {{tmp_fu_398_p4}, {2'd0}};
assign v15494_0_address0 = zext_ln8018_2_fu_883_p1;
assign v15494_0_ce0 = v15494_0_ce0_local;
assign v15494_0_d0 = v7551_7_i_q0;
assign v15494_0_we0 = v15494_0_we0_local;
assign v15494_1_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_1_ce0 = v15494_1_ce0_local;
assign v15494_1_d0 = v7551_6_i_q0;
assign v15494_1_we0 = v15494_1_we0_local;
assign v15494_2_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_2_ce0 = v15494_2_ce0_local;
assign v15494_2_d0 = v7551_5_i_q0;
assign v15494_2_we0 = v15494_2_we0_local;
assign v15494_3_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_3_ce0 = v15494_3_ce0_local;
assign v15494_3_d0 = v7551_4_i_q0;
assign v15494_3_we0 = v15494_3_we0_local;
assign v15494_4_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_4_ce0 = v15494_4_ce0_local;
assign v15494_4_d0 = v7551_3_i_q0;
assign v15494_4_we0 = v15494_4_we0_local;
assign v15494_5_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_5_ce0 = v15494_5_ce0_local;
assign v15494_5_d0 = v7551_2_i_q0;
assign v15494_5_we0 = v15494_5_we0_local;
assign v15494_6_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_6_ce0 = v15494_6_ce0_local;
assign v15494_6_d0 = v7551_1_i_q0;
assign v15494_6_we0 = v15494_6_we0_local;
assign v15494_7_address0 = zext_ln8032_4_fu_866_p1;
assign v15494_7_ce0 = v15494_7_ce0_local;
assign v15494_7_d0 = v7551_i_q0;
assign v15494_7_we0 = v15494_7_we0_local;
assign v6768_fu_518_p3 = ((ap_phi_mux_icmp_ln8014147_phi_fu_381_p4[0:0] == 1'b1) ? add_ln8013_fu_492_p2 : ap_sig_allocacmp_v6768142_load);
assign v6769_fu_546_p3 = ((and_ln8013_fu_512_p2[0:0] == 1'b1) ? add_ln8014_fu_526_p2 : select_ln8013_fu_498_p3);
assign v6770_fu_622_p2 = (v6770_mid2_fu_538_p3 + 3'd1);
assign v6770_mid2_fu_538_p3 = ((empty_156_fu_532_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v6770145_load);
assign v7551_1_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_1_i_ce0 = v7551_1_i_ce0_local;
assign v7551_2_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_2_i_ce0 = v7551_2_i_ce0_local;
assign v7551_3_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_3_i_ce0 = v7551_3_i_ce0_local;
assign v7551_4_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_4_i_ce0 = v7551_4_i_ce0_local;
assign v7551_5_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_5_i_ce0 = v7551_5_i_ce0_local;
assign v7551_6_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_6_i_ce0 = v7551_6_i_ce0_local;
assign v7551_7_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_7_i_ce0 = v7551_7_i_ce0_local;
assign v7551_i_address0 = zext_ln8017_3_fu_788_p1;
assign v7551_i_ce0 = v7551_i_ce0_local;
assign xor_ln8013_fu_506_p2 = (ap_phi_mux_icmp_ln8014147_phi_fu_381_p4 ^ 1'd1);
assign zext_ln8013_1_fu_568_p1 = lshr_ln_fu_558_p4;
assign zext_ln8013_fu_554_p1 = v6768_fu_518_p3;
assign zext_ln8014_fu_755_p1 = v6769_reg_939;
assign zext_ln8015_fu_848_p1 = v6770_mid2_reg_933_pp0_iter1_reg;
assign zext_ln8017_1_fu_746_p1 = add_ln8017_reg_956;
assign zext_ln8017_2_fu_779_p1 = v6770_mid2_reg_933;
assign zext_ln8017_3_fu_788_p1 = add_ln8017_1_fu_782_p2;
assign zext_ln8017_fu_608_p1 = v6769_fu_546_p3;
assign zext_ln8018_1_fu_838_p1 = tmp_33_fu_831_p3;
assign zext_ln8018_2_fu_883_p1 = add_ln8018_2_fu_877_p2;
assign zext_ln8018_fu_705_p1 = tmp_28_fu_698_p3;
assign zext_ln8032_1_fu_763_p1 = empty_159_fu_758_p2;
assign zext_ln8032_2_fu_814_p1 = tmp_32_fu_807_p3;
assign zext_ln8032_3_fu_856_p1 = add_ln8018_fu_851_p2;
assign zext_ln8032_4_fu_866_p1 = add_ln8032_1_fu_860_p2;
assign zext_ln8032_fu_729_p1 = tmp_30_fu_722_p3;
assign zext_ln8926_5_cast_cast_cast_cast_fu_444_p3 = ((empty_fu_440_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln8926_cast_cast_cast_cast_fu_432_p3 = ((tmp_27_fu_424_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    zext_ln8926_cast_cast_cast_cast_reg_923[3] <= 1'b0;
    zext_ln8926_5_cast_cast_cast_cast_reg_928[3] <= 1'b0;
    zext_ln8926_5_cast_cast_cast_cast_reg_928_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 