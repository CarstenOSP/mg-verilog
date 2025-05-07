module forward_dataflow_in_loop_VITIS_LOOP_4579_1_Loop_VITIS_LOOP_3954_1_proc161 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9258_7_address0,v9258_7_ce0,v9258_7_we0,v9258_7_d0,v9258_6_address0,v9258_6_ce0,v9258_6_we0,v9258_6_d0,v9258_5_address0,v9258_5_ce0,v9258_5_we0,v9258_5_d0,v9258_4_address0,v9258_4_ce0,v9258_4_we0,v9258_4_d0,v9258_3_address0,v9258_3_ce0,v9258_3_we0,v9258_3_d0,v9258_2_address0,v9258_2_ce0,v9258_2_we0,v9258_2_d0,v9258_1_address0,v9258_1_ce0,v9258_1_we0,v9258_1_d0,v9258_0_address0,v9258_0_ce0,v9258_0_we0,v9258_0_d0,p_read,v3198_7_address0,v3198_7_ce0,v3198_7_q0,v3198_6_address0,v3198_6_ce0,v3198_6_q0,v3198_5_address0,v3198_5_ce0,v3198_5_q0,v3198_4_address0,v3198_4_ce0,v3198_4_q0,v3198_3_address0,v3198_3_ce0,v3198_3_q0,v3198_2_address0,v3198_2_ce0,v3198_2_q0,v3198_1_address0,v3198_1_ce0,v3198_1_q0,v3198_address0,v3198_ce0,v3198_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v9258_7_address0;
output   v9258_7_ce0;
output   v9258_7_we0;
output  [7:0] v9258_7_d0;
output  [12:0] v9258_6_address0;
output   v9258_6_ce0;
output   v9258_6_we0;
output  [7:0] v9258_6_d0;
output  [12:0] v9258_5_address0;
output   v9258_5_ce0;
output   v9258_5_we0;
output  [7:0] v9258_5_d0;
output  [12:0] v9258_4_address0;
output   v9258_4_ce0;
output   v9258_4_we0;
output  [7:0] v9258_4_d0;
output  [12:0] v9258_3_address0;
output   v9258_3_ce0;
output   v9258_3_we0;
output  [7:0] v9258_3_d0;
output  [12:0] v9258_2_address0;
output   v9258_2_ce0;
output   v9258_2_we0;
output  [7:0] v9258_2_d0;
output  [12:0] v9258_1_address0;
output   v9258_1_ce0;
output   v9258_1_we0;
output  [7:0] v9258_1_d0;
output  [12:0] v9258_0_address0;
output   v9258_0_ce0;
output   v9258_0_we0;
output  [7:0] v9258_0_d0;
input  [11:0] p_read;
output  [7:0] v3198_7_address0;
output   v3198_7_ce0;
input  [7:0] v3198_7_q0;
output  [7:0] v3198_6_address0;
output   v3198_6_ce0;
input  [7:0] v3198_6_q0;
output  [7:0] v3198_5_address0;
output   v3198_5_ce0;
input  [7:0] v3198_5_q0;
output  [7:0] v3198_4_address0;
output   v3198_4_ce0;
input  [7:0] v3198_4_q0;
output  [7:0] v3198_3_address0;
output   v3198_3_ce0;
input  [7:0] v3198_3_q0;
output  [7:0] v3198_2_address0;
output   v3198_2_ce0;
input  [7:0] v3198_2_q0;
output  [7:0] v3198_1_address0;
output   v3198_1_ce0;
input  [7:0] v3198_1_q0;
output  [7:0] v3198_address0;
output   v3198_ce0;
input  [7:0] v3198_q0;
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
wire   [0:0] icmp_ln3954_fu_642_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] tmp_fu_398_p4;
reg   [2:0] tmp_reg_907;
wire   [3:0] zext_ln4535_cast_cast_cast_cast_fu_424_p3;
reg   [3:0] zext_ln4535_cast_cast_cast_cast_reg_913;
wire   [3:0] zext_ln4535_6_cast_cast_cast_cast_fu_436_p3;
reg   [3:0] zext_ln4535_6_cast_cast_cast_cast_reg_918;
reg   [3:0] zext_ln4535_6_cast_cast_cast_cast_reg_918_pp0_iter1_reg;
wire   [2:0] v2765_mid2_fu_530_p3;
reg   [2:0] v2765_mid2_reg_923;
reg   [2:0] v2765_mid2_reg_923_pp0_iter1_reg;
wire   [2:0] v2764_fu_538_p3;
reg   [2:0] v2764_reg_929;
wire   [1:0] lshr_ln_fu_550_p4;
reg   [1:0] lshr_ln_reg_934;
reg   [4:0] tmp_300_reg_940;
wire   [4:0] add_ln3958_fu_598_p2;
reg   [4:0] add_ln3958_reg_946;
wire   [0:0] icmp_ln3956_fu_630_p2;
reg   [0:0] icmp_ln3956_reg_952;
wire   [0:0] icmp_ln3955_fu_636_p2;
reg   [0:0] icmp_ln3955_reg_957;
reg   [0:0] icmp_ln3954_reg_962;
wire   [8:0] add_ln3973_fu_751_p2;
reg   [8:0] add_ln3973_reg_966;
wire   [8:0] add_ln3959_1_fu_757_p2;
reg   [8:0] add_ln3959_1_reg_972;
reg   [0:0] ap_phi_mux_icmp_ln3955147_phi_fu_381_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3956146_phi_fu_391_p4;
wire   [63:0] zext_ln3958_4_fu_772_p1;
wire   [63:0] zext_ln3973_4_fu_850_p1;
wire   [63:0] zext_ln3959_2_fu_867_p1;
reg   [7:0] indvar_flatten12141_fu_136;
wire   [7:0] add_ln3954_1_fu_624_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12141_load;
reg   [5:0] v2763142_fu_140;
wire   [5:0] v2763_fu_510_p3;
reg   [5:0] ap_sig_allocacmp_v2763142_load;
reg   [5:0] indvar_flatten143_fu_144;
wire   [5:0] select_ln3955_1_fu_616_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten143_load;
reg   [2:0] v2764144_fu_148;
reg   [2:0] ap_sig_allocacmp_v2764144_load;
reg   [2:0] v2765145_fu_152;
wire   [2:0] v2765_fu_604_p2;
reg   [2:0] ap_sig_allocacmp_v2765145_load;
reg    v3198_7_ce0_local;
reg    v3198_6_ce0_local;
reg    v3198_5_ce0_local;
reg    v3198_4_ce0_local;
reg    v3198_3_ce0_local;
reg    v3198_2_ce0_local;
reg    v3198_1_ce0_local;
reg    v3198_ce0_local;
reg    v9258_0_we0_local;
reg    v9258_0_ce0_local;
reg    v9258_1_we0_local;
reg    v9258_1_ce0_local;
reg    v9258_2_we0_local;
reg    v9258_2_ce0_local;
reg    v9258_3_we0_local;
reg    v9258_3_ce0_local;
reg    v9258_4_we0_local;
reg    v9258_4_ce0_local;
reg    v9258_5_we0_local;
reg    v9258_5_ce0_local;
reg    v9258_6_we0_local;
reg    v9258_6_ce0_local;
reg    v9258_7_we0_local;
reg    v9258_7_ce0_local;
wire   [0:0] tmp_298_fu_416_p3;
wire   [0:0] empty_fu_432_p1;
wire   [0:0] xor_ln3954_fu_498_p2;
wire   [5:0] add_ln3954_fu_484_p2;
wire   [2:0] select_ln3954_fu_490_p3;
wire   [0:0] and_ln3954_fu_504_p2;
wire   [0:0] empty_340_fu_524_p2;
wire   [2:0] add_ln3955_fu_518_p2;
wire   [4:0] p_shl131_fu_564_p3;
wire   [4:0] zext_ln3958_fu_560_p1;
wire   [7:0] mul_i_fu_408_p3;
wire   [7:0] zext_ln3954_fu_546_p1;
wire   [7:0] empty_341_fu_578_p2;
wire   [4:0] sub_ln3958_fu_572_p2;
wire   [4:0] zext_ln3958_1_fu_594_p1;
wire   [5:0] add_ln3955_1_fu_610_p2;
wire   [5:0] tmp_299_fu_681_p4;
wire   [8:0] p_shl132_fu_673_p4;
wire   [8:0] zext_ln3959_fu_689_p1;
wire   [5:0] tmp_301_fu_706_p3;
wire   [8:0] p_shl133_fu_699_p3;
wire   [8:0] zext_ln3973_fu_713_p1;
wire   [7:0] p_shl134_fu_726_p3;
wire   [7:0] zext_ln3958_2_fu_723_p1;
wire   [3:0] zext_ln3955_fu_739_p1;
wire   [3:0] empty_342_fu_742_p2;
wire   [8:0] sub_ln3973_fu_717_p2;
wire   [8:0] zext_ln3973_1_fu_747_p1;
wire   [8:0] sub_ln3959_fu_693_p2;
wire   [7:0] sub_ln3958_1_fu_733_p2;
wire   [7:0] zext_ln3958_3_fu_763_p1;
wire   [7:0] add_ln3958_1_fu_766_p2;
wire   [9:0] tmp_302_fu_791_p3;
wire   [12:0] p_shl135_fu_784_p3;
wire   [12:0] zext_ln3973_2_fu_798_p1;
wire   [9:0] tmp_303_fu_815_p3;
wire   [12:0] p_shl_fu_808_p3;
wire   [12:0] zext_ln3959_1_fu_822_p1;
wire   [3:0] zext_ln3956_fu_832_p1;
wire   [3:0] add_ln3959_fu_835_p2;
wire   [12:0] sub_ln3973_1_fu_802_p2;
wire   [12:0] zext_ln3973_3_fu_840_p1;
wire   [12:0] add_ln3973_1_fu_844_p2;
wire   [12:0] sub_ln3959_1_fu_826_p2;
wire   [12:0] add_ln3959_2_fu_861_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_626;
reg    ap_condition_194;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12141_fu_136 = 8'd0;
#0 v2763142_fu_140 = 6'd0;
#0 indvar_flatten143_fu_144 = 6'd0;
#0 v2764144_fu_148 = 3'd0;
#0 v2765145_fu_152 = 3'd0;
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
        indvar_flatten12141_fu_136 <= add_ln3954_1_fu_624_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    indvar_flatten143_fu_144 <= select_ln3955_1_fu_616_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v2763142_fu_140 <= v2763_fu_510_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v2764144_fu_148 <= v2764_fu_538_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_194)) begin
    v2765145_fu_152 <= v2765_fu_604_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3958_reg_946 <= add_ln3958_fu_598_p2;
        add_ln3959_1_reg_972 <= add_ln3959_1_fu_757_p2;
        add_ln3973_reg_966 <= add_ln3973_fu_751_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln3954_reg_962 <= icmp_ln3954_fu_642_p2;
        lshr_ln_reg_934 <= {{v2763_fu_510_p3[4:3]}};
        tmp_300_reg_940 <= {{empty_341_fu_578_p2[7:3]}};
        tmp_reg_907 <= {{p_read[4:2]}};
        v2764_reg_929 <= v2764_fu_538_p3;
        v2765_mid2_reg_923 <= v2765_mid2_fu_530_p3;
        v2765_mid2_reg_923_pp0_iter1_reg <= v2765_mid2_reg_923;
        zext_ln4535_6_cast_cast_cast_cast_reg_918[2 : 0] <= zext_ln4535_6_cast_cast_cast_cast_fu_436_p3[2 : 0];
        zext_ln4535_6_cast_cast_cast_cast_reg_918_pp0_iter1_reg[2 : 0] <= zext_ln4535_6_cast_cast_cast_cast_reg_918[2 : 0];
        zext_ln4535_cast_cast_cast_cast_reg_913[2 : 0] <= zext_ln4535_cast_cast_cast_cast_fu_424_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3955_reg_957 <= icmp_ln3955_fu_636_p2;
        icmp_ln3956_reg_952 <= icmp_ln3956_fu_630_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3954_fu_642_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_626)) begin
            ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 = icmp_ln3955_reg_957;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 = icmp_ln3955_reg_957;
        end
    end else begin
        ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 = icmp_ln3955_reg_957;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_626)) begin
            ap_phi_mux_icmp_ln3956146_phi_fu_391_p4 = icmp_ln3956_reg_952;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3956146_phi_fu_391_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3956146_phi_fu_391_p4 = icmp_ln3956_reg_952;
        end
    end else begin
        ap_phi_mux_icmp_ln3956146_phi_fu_391_p4 = icmp_ln3956_reg_952;
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
        ap_sig_allocacmp_v2763142_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2763142_load = v2763142_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2764144_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v2764144_load = v2764144_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2765145_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v2765145_load = v2765145_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_1_ce0_local = 1'b1;
    end else begin
        v3198_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_2_ce0_local = 1'b1;
    end else begin
        v3198_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_3_ce0_local = 1'b1;
    end else begin
        v3198_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_4_ce0_local = 1'b1;
    end else begin
        v3198_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_5_ce0_local = 1'b1;
    end else begin
        v3198_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_6_ce0_local = 1'b1;
    end else begin
        v3198_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_7_ce0_local = 1'b1;
    end else begin
        v3198_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3198_ce0_local = 1'b1;
    end else begin
        v3198_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_0_ce0_local = 1'b1;
    end else begin
        v9258_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_0_we0_local = 1'b1;
    end else begin
        v9258_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_1_ce0_local = 1'b1;
    end else begin
        v9258_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_1_we0_local = 1'b1;
    end else begin
        v9258_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_2_ce0_local = 1'b1;
    end else begin
        v9258_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_2_we0_local = 1'b1;
    end else begin
        v9258_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_3_ce0_local = 1'b1;
    end else begin
        v9258_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_3_we0_local = 1'b1;
    end else begin
        v9258_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_4_ce0_local = 1'b1;
    end else begin
        v9258_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_4_we0_local = 1'b1;
    end else begin
        v9258_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_5_ce0_local = 1'b1;
    end else begin
        v9258_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_5_we0_local = 1'b1;
    end else begin
        v9258_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_6_ce0_local = 1'b1;
    end else begin
        v9258_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_6_we0_local = 1'b1;
    end else begin
        v9258_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_7_ce0_local = 1'b1;
    end else begin
        v9258_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9258_7_we0_local = 1'b1;
    end else begin
        v9258_7_we0_local = 1'b0;
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
assign add_ln3954_1_fu_624_p2 = (ap_sig_allocacmp_indvar_flatten12141_load + 8'd1);
assign add_ln3954_fu_484_p2 = (ap_sig_allocacmp_v2763142_load + 6'd8);
assign add_ln3955_1_fu_610_p2 = (ap_sig_allocacmp_indvar_flatten143_load + 6'd1);
assign add_ln3955_fu_518_p2 = (select_ln3954_fu_490_p3 + 3'd1);
assign add_ln3958_1_fu_766_p2 = (sub_ln3958_1_fu_733_p2 + zext_ln3958_3_fu_763_p1);
assign add_ln3958_fu_598_p2 = (sub_ln3958_fu_572_p2 + zext_ln3958_1_fu_594_p1);
assign add_ln3959_1_fu_757_p2 = (sub_ln3959_fu_693_p2 + zext_ln3973_1_fu_747_p1);
assign add_ln3959_2_fu_861_p2 = (sub_ln3959_1_fu_826_p2 + zext_ln3973_3_fu_840_p1);
assign add_ln3959_fu_835_p2 = (zext_ln4535_6_cast_cast_cast_cast_reg_918_pp0_iter1_reg + zext_ln3956_fu_832_p1);
assign add_ln3973_1_fu_844_p2 = (sub_ln3973_1_fu_802_p2 + zext_ln3973_3_fu_840_p1);
assign add_ln3973_fu_751_p2 = (sub_ln3973_fu_717_p2 + zext_ln3973_1_fu_747_p1);
assign and_ln3954_fu_504_p2 = (xor_ln3954_fu_498_p2 & ap_phi_mux_icmp_ln3956146_phi_fu_391_p4);
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
    ap_condition_626 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln3954_reg_962 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_340_fu_524_p2 = (ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 | and_ln3954_fu_504_p2);
assign empty_341_fu_578_p2 = (mul_i_fu_408_p3 + zext_ln3954_fu_546_p1);
assign empty_342_fu_742_p2 = (zext_ln4535_cast_cast_cast_cast_reg_913 + zext_ln3955_fu_739_p1);
assign empty_fu_432_p1 = p_read[0:0];
assign icmp_ln3954_fu_642_p2 = ((ap_sig_allocacmp_indvar_flatten12141_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln3955_fu_636_p2 = ((select_ln3955_1_fu_616_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln3956_fu_630_p2 = ((v2765_fu_604_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_550_p4 = {{v2763_fu_510_p3[4:3]}};
assign mul_i_fu_408_p3 = {{tmp_fu_398_p4}, {5'd0}};
assign p_shl131_fu_564_p3 = {{lshr_ln_fu_550_p4}, {3'd0}};
assign p_shl132_fu_673_p4 = {{{tmp_reg_907}, {lshr_ln_reg_934}}, {4'd0}};
assign p_shl133_fu_699_p3 = {{tmp_300_reg_940}, {4'd0}};
assign p_shl134_fu_726_p3 = {{add_ln3958_reg_946}, {3'd0}};
assign p_shl135_fu_784_p3 = {{add_ln3973_reg_966}, {4'd0}};
assign p_shl_fu_808_p3 = {{add_ln3959_1_reg_972}, {4'd0}};
assign select_ln3954_fu_490_p3 = ((ap_phi_mux_icmp_ln3955147_phi_fu_381_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v2764144_load);
assign select_ln3955_1_fu_616_p3 = ((ap_phi_mux_icmp_ln3955147_phi_fu_381_p4[0:0] == 1'b1) ? 6'd1 : add_ln3955_1_fu_610_p2);
assign sub_ln3958_1_fu_733_p2 = (p_shl134_fu_726_p3 - zext_ln3958_2_fu_723_p1);
assign sub_ln3958_fu_572_p2 = (p_shl131_fu_564_p3 - zext_ln3958_fu_560_p1);
assign sub_ln3959_1_fu_826_p2 = (p_shl_fu_808_p3 - zext_ln3959_1_fu_822_p1);
assign sub_ln3959_fu_693_p2 = (p_shl132_fu_673_p4 - zext_ln3959_fu_689_p1);
assign sub_ln3973_1_fu_802_p2 = (p_shl135_fu_784_p3 - zext_ln3973_2_fu_798_p1);
assign sub_ln3973_fu_717_p2 = (p_shl133_fu_699_p3 - zext_ln3973_fu_713_p1);
assign tmp_298_fu_416_p3 = p_read[32'd1];
assign tmp_299_fu_681_p4 = {{{tmp_reg_907}, {lshr_ln_reg_934}}, {1'd0}};
assign tmp_301_fu_706_p3 = {{tmp_300_reg_940}, {1'd0}};
assign tmp_302_fu_791_p3 = {{add_ln3973_reg_966}, {1'd0}};
assign tmp_303_fu_815_p3 = {{add_ln3959_1_reg_972}, {1'd0}};
assign tmp_fu_398_p4 = {{p_read[4:2]}};
assign v2763_fu_510_p3 = ((ap_phi_mux_icmp_ln3955147_phi_fu_381_p4[0:0] == 1'b1) ? add_ln3954_fu_484_p2 : ap_sig_allocacmp_v2763142_load);
assign v2764_fu_538_p3 = ((and_ln3954_fu_504_p2[0:0] == 1'b1) ? add_ln3955_fu_518_p2 : select_ln3954_fu_490_p3);
assign v2765_fu_604_p2 = (v2765_mid2_fu_530_p3 + 3'd1);
assign v2765_mid2_fu_530_p3 = ((empty_340_fu_524_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v2765145_load);
assign v3198_1_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_1_ce0 = v3198_1_ce0_local;
assign v3198_2_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_2_ce0 = v3198_2_ce0_local;
assign v3198_3_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_3_ce0 = v3198_3_ce0_local;
assign v3198_4_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_4_ce0 = v3198_4_ce0_local;
assign v3198_5_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_5_ce0 = v3198_5_ce0_local;
assign v3198_6_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_6_ce0 = v3198_6_ce0_local;
assign v3198_7_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_7_ce0 = v3198_7_ce0_local;
assign v3198_address0 = zext_ln3958_4_fu_772_p1;
assign v3198_ce0 = v3198_ce0_local;
assign v9258_0_address0 = zext_ln3959_2_fu_867_p1;
assign v9258_0_ce0 = v9258_0_ce0_local;
assign v9258_0_d0 = v3198_7_q0;
assign v9258_0_we0 = v9258_0_we0_local;
assign v9258_1_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_1_ce0 = v9258_1_ce0_local;
assign v9258_1_d0 = v3198_6_q0;
assign v9258_1_we0 = v9258_1_we0_local;
assign v9258_2_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_2_ce0 = v9258_2_ce0_local;
assign v9258_2_d0 = v3198_5_q0;
assign v9258_2_we0 = v9258_2_we0_local;
assign v9258_3_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_3_ce0 = v9258_3_ce0_local;
assign v9258_3_d0 = v3198_4_q0;
assign v9258_3_we0 = v9258_3_we0_local;
assign v9258_4_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_4_ce0 = v9258_4_ce0_local;
assign v9258_4_d0 = v3198_3_q0;
assign v9258_4_we0 = v9258_4_we0_local;
assign v9258_5_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_5_ce0 = v9258_5_ce0_local;
assign v9258_5_d0 = v3198_2_q0;
assign v9258_5_we0 = v9258_5_we0_local;
assign v9258_6_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_6_ce0 = v9258_6_ce0_local;
assign v9258_6_d0 = v3198_1_q0;
assign v9258_6_we0 = v9258_6_we0_local;
assign v9258_7_address0 = zext_ln3973_4_fu_850_p1;
assign v9258_7_ce0 = v9258_7_ce0_local;
assign v9258_7_d0 = v3198_q0;
assign v9258_7_we0 = v9258_7_we0_local;
assign xor_ln3954_fu_498_p2 = (ap_phi_mux_icmp_ln3955147_phi_fu_381_p4 ^ 1'd1);
assign zext_ln3954_fu_546_p1 = v2763_fu_510_p3;
assign zext_ln3955_fu_739_p1 = v2764_reg_929;
assign zext_ln3956_fu_832_p1 = v2765_mid2_reg_923_pp0_iter1_reg;
assign zext_ln3958_1_fu_594_p1 = v2764_fu_538_p3;
assign zext_ln3958_2_fu_723_p1 = add_ln3958_reg_946;
assign zext_ln3958_3_fu_763_p1 = v2765_mid2_reg_923;
assign zext_ln3958_4_fu_772_p1 = add_ln3958_1_fu_766_p2;
assign zext_ln3958_fu_560_p1 = lshr_ln_fu_550_p4;
assign zext_ln3959_1_fu_822_p1 = tmp_303_fu_815_p3;
assign zext_ln3959_2_fu_867_p1 = add_ln3959_2_fu_861_p2;
assign zext_ln3959_fu_689_p1 = tmp_299_fu_681_p4;
assign zext_ln3973_1_fu_747_p1 = empty_342_fu_742_p2;
assign zext_ln3973_2_fu_798_p1 = tmp_302_fu_791_p3;
assign zext_ln3973_3_fu_840_p1 = add_ln3959_fu_835_p2;
assign zext_ln3973_4_fu_850_p1 = add_ln3973_1_fu_844_p2;
assign zext_ln3973_fu_713_p1 = tmp_301_fu_706_p3;
assign zext_ln4535_6_cast_cast_cast_cast_fu_436_p3 = ((empty_fu_432_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln4535_cast_cast_cast_cast_fu_424_p3 = ((tmp_298_fu_416_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    zext_ln4535_cast_cast_cast_cast_reg_913[3] <= 1'b0;
    zext_ln4535_6_cast_cast_cast_cast_reg_918[3] <= 1'b0;
    zext_ln4535_6_cast_cast_cast_cast_reg_918_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 