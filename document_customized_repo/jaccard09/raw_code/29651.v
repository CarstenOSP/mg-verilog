module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_62_address0,smem_62_ce0,smem_62_we0,smem_62_d0,smem_61_address0,smem_61_ce0,smem_61_we0,smem_61_d0,smem_60_address0,smem_60_ce0,smem_60_we0,smem_60_d0,smem_59_address0,smem_59_ce0,smem_59_we0,smem_59_d0,smem_58_address0,smem_58_ce0,smem_58_we0,smem_58_d0,smem_57_address0,smem_57_ce0,smem_57_we0,smem_57_d0,smem_56_address0,smem_56_ce0,smem_56_we0,smem_56_d0,smem_55_address0,smem_55_ce0,smem_55_we0,smem_55_d0,smem_54_address0,smem_54_ce0,smem_54_we0,smem_54_d0,smem_53_address0,smem_53_ce0,smem_53_we0,smem_53_d0,smem_52_address0,smem_52_ce0,smem_52_we0,smem_52_d0,smem_51_address0,smem_51_ce0,smem_51_we0,smem_51_d0,smem_50_address0,smem_50_ce0,smem_50_we0,smem_50_d0,smem_49_address0,smem_49_ce0,smem_49_we0,smem_49_d0,smem_48_address0,smem_48_ce0,smem_48_we0,smem_48_d0,smem_47_address0,smem_47_ce0,smem_47_we0,smem_47_d0,smem_46_address0,smem_46_ce0,smem_46_we0,smem_46_d0,smem_45_address0,smem_45_ce0,smem_45_we0,smem_45_d0,smem_44_address0,smem_44_ce0,smem_44_we0,smem_44_d0,smem_43_address0,smem_43_ce0,smem_43_we0,smem_43_d0,smem_42_address0,smem_42_ce0,smem_42_we0,smem_42_d0,smem_41_address0,smem_41_ce0,smem_41_we0,smem_41_d0,smem_40_address0,smem_40_ce0,smem_40_we0,smem_40_d0,smem_39_address0,smem_39_ce0,smem_39_we0,smem_39_d0,smem_38_address0,smem_38_ce0,smem_38_we0,smem_38_d0,smem_37_address0,smem_37_ce0,smem_37_we0,smem_37_d0,smem_36_address0,smem_36_ce0,smem_36_we0,smem_36_d0,smem_35_address0,smem_35_ce0,smem_35_we0,smem_35_d0,smem_34_address0,smem_34_ce0,smem_34_we0,smem_34_d0,smem_33_address0,smem_33_ce0,smem_33_we0,smem_33_d0,smem_32_address0,smem_32_ce0,smem_32_we0,smem_32_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] smem_62_address0;
output   smem_62_ce0;
output   smem_62_we0;
output  [63:0] smem_62_d0;
output  [4:0] smem_61_address0;
output   smem_61_ce0;
output   smem_61_we0;
output  [63:0] smem_61_d0;
output  [4:0] smem_60_address0;
output   smem_60_ce0;
output   smem_60_we0;
output  [63:0] smem_60_d0;
output  [4:0] smem_59_address0;
output   smem_59_ce0;
output   smem_59_we0;
output  [63:0] smem_59_d0;
output  [4:0] smem_58_address0;
output   smem_58_ce0;
output   smem_58_we0;
output  [63:0] smem_58_d0;
output  [4:0] smem_57_address0;
output   smem_57_ce0;
output   smem_57_we0;
output  [63:0] smem_57_d0;
output  [4:0] smem_56_address0;
output   smem_56_ce0;
output   smem_56_we0;
output  [63:0] smem_56_d0;
output  [4:0] smem_55_address0;
output   smem_55_ce0;
output   smem_55_we0;
output  [63:0] smem_55_d0;
output  [4:0] smem_54_address0;
output   smem_54_ce0;
output   smem_54_we0;
output  [63:0] smem_54_d0;
output  [4:0] smem_53_address0;
output   smem_53_ce0;
output   smem_53_we0;
output  [63:0] smem_53_d0;
output  [4:0] smem_52_address0;
output   smem_52_ce0;
output   smem_52_we0;
output  [63:0] smem_52_d0;
output  [4:0] smem_51_address0;
output   smem_51_ce0;
output   smem_51_we0;
output  [63:0] smem_51_d0;
output  [4:0] smem_50_address0;
output   smem_50_ce0;
output   smem_50_we0;
output  [63:0] smem_50_d0;
output  [4:0] smem_49_address0;
output   smem_49_ce0;
output   smem_49_we0;
output  [63:0] smem_49_d0;
output  [4:0] smem_48_address0;
output   smem_48_ce0;
output   smem_48_we0;
output  [63:0] smem_48_d0;
output  [4:0] smem_47_address0;
output   smem_47_ce0;
output   smem_47_we0;
output  [63:0] smem_47_d0;
output  [4:0] smem_46_address0;
output   smem_46_ce0;
output   smem_46_we0;
output  [63:0] smem_46_d0;
output  [4:0] smem_45_address0;
output   smem_45_ce0;
output   smem_45_we0;
output  [63:0] smem_45_d0;
output  [4:0] smem_44_address0;
output   smem_44_ce0;
output   smem_44_we0;
output  [63:0] smem_44_d0;
output  [4:0] smem_43_address0;
output   smem_43_ce0;
output   smem_43_we0;
output  [63:0] smem_43_d0;
output  [4:0] smem_42_address0;
output   smem_42_ce0;
output   smem_42_we0;
output  [63:0] smem_42_d0;
output  [4:0] smem_41_address0;
output   smem_41_ce0;
output   smem_41_we0;
output  [63:0] smem_41_d0;
output  [4:0] smem_40_address0;
output   smem_40_ce0;
output   smem_40_we0;
output  [63:0] smem_40_d0;
output  [4:0] smem_39_address0;
output   smem_39_ce0;
output   smem_39_we0;
output  [63:0] smem_39_d0;
output  [4:0] smem_38_address0;
output   smem_38_ce0;
output   smem_38_we0;
output  [63:0] smem_38_d0;
output  [4:0] smem_37_address0;
output   smem_37_ce0;
output   smem_37_we0;
output  [63:0] smem_37_d0;
output  [4:0] smem_36_address0;
output   smem_36_ce0;
output   smem_36_we0;
output  [63:0] smem_36_d0;
output  [4:0] smem_35_address0;
output   smem_35_ce0;
output   smem_35_we0;
output  [63:0] smem_35_d0;
output  [4:0] smem_34_address0;
output   smem_34_ce0;
output   smem_34_we0;
output  [63:0] smem_34_d0;
output  [4:0] smem_33_address0;
output   smem_33_ce0;
output   smem_33_we0;
output  [63:0] smem_33_d0;
output  [4:0] smem_32_address0;
output   smem_32_ce0;
output   smem_32_we0;
output  [63:0] smem_32_d0;
output  [4:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln204_fu_2770_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [5:0] offset_fu_2782_p1;
reg   [5:0] offset_reg_3255;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln172_fu_2786_p1;
reg   [4:0] trunc_ln172_reg_3262;
reg   [0:0] tmp_reg_3266;
wire   [63:0] zext_ln209_fu_2804_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln211_1_fu_2820_p1;
wire   [63:0] zext_ln172_2_fu_2842_p1;
wire   [63:0] zext_ln210_fu_2893_p1;
wire   [63:0] zext_ln211_fu_2945_p1;
wire   [63:0] zext_ln212_fu_2997_p1;
wire   [63:0] zext_ln213_fu_3049_p1;
wire   [63:0] zext_ln214_fu_3105_p1;
wire   [63:0] zext_ln215_fu_3157_p1;
wire   [63:0] zext_ln216_fu_3209_p1;
reg   [6:0] tid_3_fu_194;
wire   [6:0] add_ln204_fu_2776_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    smem_61_we0_local;
reg   [63:0] smem_61_d0_local;
reg    smem_61_ce0_local;
reg   [4:0] smem_61_address0_local;
reg    smem_37_we0_local;
reg   [63:0] smem_37_d0_local;
reg    smem_37_ce0_local;
reg   [4:0] smem_37_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [4:0] smem_address0_local;
reg    smem_39_we0_local;
reg   [63:0] smem_39_d0_local;
reg    smem_39_ce0_local;
reg   [4:0] smem_39_address0_local;
reg    smem_33_we0_local;
reg   [63:0] smem_33_d0_local;
reg    smem_33_ce0_local;
reg   [4:0] smem_33_address0_local;
reg    smem_41_we0_local;
reg   [63:0] smem_41_d0_local;
reg    smem_41_ce0_local;
reg   [4:0] smem_41_address0_local;
reg    smem_35_we0_local;
reg   [63:0] smem_35_d0_local;
reg    smem_35_ce0_local;
reg   [4:0] smem_35_address0_local;
reg    smem_43_we0_local;
reg   [63:0] smem_43_d0_local;
reg    smem_43_ce0_local;
reg   [4:0] smem_43_address0_local;
reg    smem_60_we0_local;
reg   [63:0] smem_60_d0_local;
reg    smem_60_ce0_local;
reg   [4:0] smem_60_address0_local;
reg    smem_36_we0_local;
reg   [63:0] smem_36_d0_local;
reg    smem_36_ce0_local;
reg   [4:0] smem_36_address0_local;
reg    smem_62_we0_local;
reg   [63:0] smem_62_d0_local;
reg    smem_62_ce0_local;
reg   [4:0] smem_62_address0_local;
reg    smem_38_we0_local;
reg   [63:0] smem_38_d0_local;
reg    smem_38_ce0_local;
reg   [4:0] smem_38_address0_local;
reg    smem_32_we0_local;
reg   [63:0] smem_32_d0_local;
reg    smem_32_ce0_local;
reg   [4:0] smem_32_address0_local;
reg    smem_40_we0_local;
reg   [63:0] smem_40_d0_local;
reg    smem_40_ce0_local;
reg   [4:0] smem_40_address0_local;
reg    smem_34_we0_local;
reg   [63:0] smem_34_d0_local;
reg    smem_34_ce0_local;
reg   [4:0] smem_34_address0_local;
reg    smem_42_we0_local;
reg   [63:0] smem_42_d0_local;
reg    smem_42_ce0_local;
reg   [4:0] smem_42_address0_local;
reg    smem_59_we0_local;
reg   [63:0] smem_59_d0_local;
reg    smem_59_ce0_local;
reg   [4:0] smem_59_address0_local;
reg    smem_58_we0_local;
reg   [63:0] smem_58_d0_local;
reg    smem_58_ce0_local;
reg   [4:0] smem_58_address0_local;
reg    smem_57_we0_local;
reg   [63:0] smem_57_d0_local;
reg    smem_57_ce0_local;
reg   [4:0] smem_57_address0_local;
reg    smem_56_we0_local;
reg   [63:0] smem_56_d0_local;
reg    smem_56_ce0_local;
reg   [4:0] smem_56_address0_local;
reg    smem_55_we0_local;
reg   [63:0] smem_55_d0_local;
reg    smem_55_ce0_local;
reg   [4:0] smem_55_address0_local;
reg    smem_54_we0_local;
reg   [63:0] smem_54_d0_local;
reg    smem_54_ce0_local;
reg   [4:0] smem_54_address0_local;
reg    smem_53_we0_local;
reg   [63:0] smem_53_d0_local;
reg    smem_53_ce0_local;
reg   [4:0] smem_53_address0_local;
reg    smem_52_we0_local;
reg   [63:0] smem_52_d0_local;
reg    smem_52_ce0_local;
reg   [4:0] smem_52_address0_local;
reg    smem_51_we0_local;
reg   [63:0] smem_51_d0_local;
reg    smem_51_ce0_local;
reg   [4:0] smem_51_address0_local;
reg    smem_50_we0_local;
reg   [63:0] smem_50_d0_local;
reg    smem_50_ce0_local;
reg   [4:0] smem_50_address0_local;
reg    smem_49_we0_local;
reg   [63:0] smem_49_d0_local;
reg    smem_49_ce0_local;
reg   [4:0] smem_49_address0_local;
reg    smem_48_we0_local;
reg   [63:0] smem_48_d0_local;
reg    smem_48_ce0_local;
reg   [4:0] smem_48_address0_local;
reg    smem_47_we0_local;
reg   [63:0] smem_47_d0_local;
reg    smem_47_ce0_local;
reg   [4:0] smem_47_address0_local;
reg    smem_46_we0_local;
reg   [63:0] smem_46_d0_local;
reg    smem_46_ce0_local;
reg   [4:0] smem_46_address0_local;
reg    smem_45_we0_local;
reg   [63:0] smem_45_d0_local;
reg    smem_45_ce0_local;
reg   [4:0] smem_45_address0_local;
reg    smem_44_we0_local;
reg   [63:0] smem_44_d0_local;
reg    smem_44_ce0_local;
reg   [4:0] smem_44_address0_local;
wire   [6:0] shl_ln209_fu_2798_p2;
wire   [6:0] or_ln3_fu_2812_p3;
wire   [8:0] zext_ln172_5_fu_2839_p1;
wire   [8:0] add_ln210_fu_2877_p2;
wire   [3:0] lshr_ln17_fu_2883_p4;
wire   [7:0] zext_ln172_4_fu_2836_p1;
wire   [7:0] add_ln211_fu_2929_p2;
wire   [2:0] lshr_ln18_fu_2935_p4;
wire   [8:0] add_ln212_fu_2981_p2;
wire   [3:0] lshr_ln19_fu_2987_p4;
wire   [7:0] add_ln213_fu_3033_p2;
wire   [2:0] lshr_ln20_fu_3039_p4;
wire   [7:0] add_ln214_fu_3085_p2;
wire   [2:0] trunc_ln8_fu_3091_p4;
wire  signed [3:0] sext_ln214_fu_3101_p1;
wire   [8:0] add_ln215_fu_3141_p2;
wire   [3:0] lshr_ln21_fu_3147_p4;
wire   [9:0] zext_ln172_fu_2833_p1;
wire   [9:0] add_ln216_fu_3193_p2;
wire   [4:0] lshr_ln22_fu_3199_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_344;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 tid_3_fu_194 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln204_fu_2770_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_3_fu_194 <= add_ln204_fu_2776_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_3_fu_194 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_3255 <= offset_fu_2782_p1;
        tmp_reg_3266 <= ap_sig_allocacmp_tid[32'd5];
        trunc_ln172_reg_3262 <= trunc_ln172_fu_2786_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln204_fu_2770_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_3_fu_194;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_32_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_32_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_32_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_32_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_32_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_32_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_32_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_32_address0_local = zext_ln213_fu_3049_p1;
        end else begin
            smem_32_address0_local = 'bx;
        end
    end else begin
        smem_32_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_32_ce0_local = 1'b1;
    end else begin
        smem_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_32_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_32_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_32_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_32_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_32_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_32_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_32_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_32_d0_local = DATA_y_2_q1;
        end else begin
            smem_32_d0_local = 'bx;
        end
    end else begin
        smem_32_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_32_we0_local = 1'b1;
    end else begin
        smem_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_33_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_33_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_33_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_33_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_33_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_33_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_33_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_33_address0_local = zext_ln213_fu_3049_p1;
        end else begin
            smem_33_address0_local = 'bx;
        end
    end else begin
        smem_33_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_33_ce0_local = 1'b1;
    end else begin
        smem_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_33_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_33_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_33_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_33_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_33_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_33_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_33_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_33_d0_local = DATA_y_2_q1;
        end else begin
            smem_33_d0_local = 'bx;
        end
    end else begin
        smem_33_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_33_we0_local = 1'b1;
    end else begin
        smem_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_34_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_34_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_34_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_34_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_34_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_34_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_34_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_34_address0_local = zext_ln215_fu_3157_p1;
        end else begin
            smem_34_address0_local = 'bx;
        end
    end else begin
        smem_34_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_34_ce0_local = 1'b1;
    end else begin
        smem_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_34_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_34_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_34_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_34_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_34_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_34_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_34_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_34_d0_local = DATA_y_2_q0;
        end else begin
            smem_34_d0_local = 'bx;
        end
    end else begin
        smem_34_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_34_we0_local = 1'b1;
    end else begin
        smem_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_35_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_35_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_35_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_35_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_35_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_35_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_35_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_35_address0_local = zext_ln215_fu_3157_p1;
        end else begin
            smem_35_address0_local = 'bx;
        end
    end else begin
        smem_35_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_35_ce0_local = 1'b1;
    end else begin
        smem_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_35_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_35_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_35_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_35_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_35_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_35_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_35_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_35_d0_local = DATA_y_2_q0;
        end else begin
            smem_35_d0_local = 'bx;
        end
    end else begin
        smem_35_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_35_we0_local = 1'b1;
    end else begin
        smem_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_36_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_36_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_36_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_36_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_36_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_36_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_36_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_36_address0_local = zext_ln210_fu_2893_p1;
        end else begin
            smem_36_address0_local = 'bx;
        end
    end else begin
        smem_36_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_36_ce0_local = 1'b1;
    end else begin
        smem_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_36_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_36_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_36_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_36_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_36_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_36_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_36_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_36_d0_local = DATA_y_1_q1;
        end else begin
            smem_36_d0_local = 'bx;
        end
    end else begin
        smem_36_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_36_we0_local = 1'b1;
    end else begin
        smem_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_37_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_37_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_37_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_37_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_37_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_37_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_37_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_37_address0_local = zext_ln210_fu_2893_p1;
        end else begin
            smem_37_address0_local = 'bx;
        end
    end else begin
        smem_37_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_37_ce0_local = 1'b1;
    end else begin
        smem_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_37_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_37_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_37_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_37_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_37_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_37_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_37_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_37_d0_local = DATA_y_1_q1;
        end else begin
            smem_37_d0_local = 'bx;
        end
    end else begin
        smem_37_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_37_we0_local = 1'b1;
    end else begin
        smem_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_38_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_38_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_38_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_38_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_38_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_38_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_38_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_38_address0_local = zext_ln212_fu_2997_p1;
        end else begin
            smem_38_address0_local = 'bx;
        end
    end else begin
        smem_38_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_38_ce0_local = 1'b1;
    end else begin
        smem_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_38_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_38_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_38_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_38_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_38_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_38_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_38_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_38_d0_local = DATA_y_1_q0;
        end else begin
            smem_38_d0_local = 'bx;
        end
    end else begin
        smem_38_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_38_we0_local = 1'b1;
    end else begin
        smem_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_39_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_39_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_39_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_39_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_39_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_39_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_39_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_39_address0_local = zext_ln212_fu_2997_p1;
        end else begin
            smem_39_address0_local = 'bx;
        end
    end else begin
        smem_39_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_39_ce0_local = 1'b1;
    end else begin
        smem_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_39_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_39_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_39_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_39_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_39_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_39_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_39_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_39_d0_local = DATA_y_1_q0;
        end else begin
            smem_39_d0_local = 'bx;
        end
    end else begin
        smem_39_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_39_we0_local = 1'b1;
    end else begin
        smem_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_40_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_40_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_40_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_40_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_40_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_40_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_40_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_40_address0_local = zext_ln214_fu_3105_p1;
        end else begin
            smem_40_address0_local = 'bx;
        end
    end else begin
        smem_40_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_40_ce0_local = 1'b1;
    end else begin
        smem_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_40_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_40_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_40_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_40_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_40_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_40_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_40_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_40_d0_local = DATA_y_3_q1;
        end else begin
            smem_40_d0_local = 'bx;
        end
    end else begin
        smem_40_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_40_we0_local = 1'b1;
    end else begin
        smem_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_41_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_41_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_41_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_41_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_41_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_41_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_41_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_41_address0_local = zext_ln214_fu_3105_p1;
        end else begin
            smem_41_address0_local = 'bx;
        end
    end else begin
        smem_41_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_41_ce0_local = 1'b1;
    end else begin
        smem_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_41_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_41_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_41_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_41_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_41_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_41_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_41_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_41_d0_local = DATA_y_3_q1;
        end else begin
            smem_41_d0_local = 'bx;
        end
    end else begin
        smem_41_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_41_we0_local = 1'b1;
    end else begin
        smem_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_42_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_42_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_42_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_42_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_42_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_42_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_42_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_42_address0_local = zext_ln216_fu_3209_p1;
        end else begin
            smem_42_address0_local = 'bx;
        end
    end else begin
        smem_42_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_42_ce0_local = 1'b1;
    end else begin
        smem_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_42_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_42_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_42_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_42_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_42_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_42_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_42_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_42_d0_local = DATA_y_3_q0;
        end else begin
            smem_42_d0_local = 'bx;
        end
    end else begin
        smem_42_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_42_we0_local = 1'b1;
    end else begin
        smem_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_43_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_43_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_43_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_43_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_43_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_43_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_43_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_43_address0_local = zext_ln216_fu_3209_p1;
        end else begin
            smem_43_address0_local = 'bx;
        end
    end else begin
        smem_43_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_43_ce0_local = 1'b1;
    end else begin
        smem_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_43_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_43_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_43_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_43_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_43_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_43_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_43_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_43_d0_local = DATA_y_3_q0;
        end else begin
            smem_43_d0_local = 'bx;
        end
    end else begin
        smem_43_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_43_we0_local = 1'b1;
    end else begin
        smem_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_44_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_44_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_44_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_44_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_44_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_44_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_44_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_44_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_44_address0_local = 'bx;
        end
    end else begin
        smem_44_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_44_ce0_local = 1'b1;
    end else begin
        smem_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_44_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_44_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_44_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_44_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_44_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_44_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_44_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_44_d0_local = DATA_y_q1;
        end else begin
            smem_44_d0_local = 'bx;
        end
    end else begin
        smem_44_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_44_we0_local = 1'b1;
    end else begin
        smem_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_45_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_45_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_45_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_45_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_45_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_45_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_45_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_45_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_45_address0_local = 'bx;
        end
    end else begin
        smem_45_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_45_ce0_local = 1'b1;
    end else begin
        smem_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_45_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_45_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_45_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_45_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_45_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_45_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_45_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_45_d0_local = DATA_y_q1;
        end else begin
            smem_45_d0_local = 'bx;
        end
    end else begin
        smem_45_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_45_we0_local = 1'b1;
    end else begin
        smem_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_46_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_46_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_46_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_46_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_46_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_46_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_46_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_46_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_46_address0_local = 'bx;
        end
    end else begin
        smem_46_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_46_ce0_local = 1'b1;
    end else begin
        smem_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd1)) begin
            smem_46_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_46_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_46_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_46_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_46_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_46_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_46_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_46_d0_local = DATA_y_q1;
        end else begin
            smem_46_d0_local = 'bx;
        end
    end else begin
        smem_46_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_46_we0_local = 1'b1;
    end else begin
        smem_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_47_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_47_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_47_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_47_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_47_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_47_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_47_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_47_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_47_address0_local = 'bx;
        end
    end else begin
        smem_47_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_47_ce0_local = 1'b1;
    end else begin
        smem_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd2)) begin
            smem_47_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_47_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_47_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_47_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_47_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_47_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_47_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_47_d0_local = DATA_y_q1;
        end else begin
            smem_47_d0_local = 'bx;
        end
    end else begin
        smem_47_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_47_we0_local = 1'b1;
    end else begin
        smem_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_48_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_48_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_48_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_48_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_48_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_48_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_48_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_48_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_48_address0_local = 'bx;
        end
    end else begin
        smem_48_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_48_ce0_local = 1'b1;
    end else begin
        smem_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd3)) begin
            smem_48_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_48_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_48_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_48_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_48_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_48_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_48_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_48_d0_local = DATA_y_q1;
        end else begin
            smem_48_d0_local = 'bx;
        end
    end else begin
        smem_48_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_48_we0_local = 1'b1;
    end else begin
        smem_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_49_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_49_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_49_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_49_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_49_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_49_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_49_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_49_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_49_address0_local = 'bx;
        end
    end else begin
        smem_49_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_49_ce0_local = 1'b1;
    end else begin
        smem_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd4)) begin
            smem_49_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_49_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_49_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_49_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_49_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_49_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_49_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_49_d0_local = DATA_y_q1;
        end else begin
            smem_49_d0_local = 'bx;
        end
    end else begin
        smem_49_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_49_we0_local = 1'b1;
    end else begin
        smem_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_50_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_50_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_50_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_50_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_50_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_50_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_50_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_50_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_50_address0_local = 'bx;
        end
    end else begin
        smem_50_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_50_ce0_local = 1'b1;
    end else begin
        smem_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd5)) begin
            smem_50_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_50_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_50_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_50_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_50_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_50_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_50_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_50_d0_local = DATA_y_q1;
        end else begin
            smem_50_d0_local = 'bx;
        end
    end else begin
        smem_50_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_50_we0_local = 1'b1;
    end else begin
        smem_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_51_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_51_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_51_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_51_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_51_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_51_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_51_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_51_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_51_address0_local = 'bx;
        end
    end else begin
        smem_51_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_51_ce0_local = 1'b1;
    end else begin
        smem_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd6)) begin
            smem_51_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_51_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_51_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_51_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_51_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_51_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_51_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_51_d0_local = DATA_y_q1;
        end else begin
            smem_51_d0_local = 'bx;
        end
    end else begin
        smem_51_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_51_we0_local = 1'b1;
    end else begin
        smem_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_52_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_52_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_52_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_52_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_52_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_52_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_52_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_52_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_52_address0_local = 'bx;
        end
    end else begin
        smem_52_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_52_ce0_local = 1'b1;
    end else begin
        smem_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd7)) begin
            smem_52_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_52_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_52_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_52_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_52_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_52_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_52_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_52_d0_local = DATA_y_q1;
        end else begin
            smem_52_d0_local = 'bx;
        end
    end else begin
        smem_52_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_52_we0_local = 1'b1;
    end else begin
        smem_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_53_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_53_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_53_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_53_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_53_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_53_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_53_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_53_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_53_address0_local = 'bx;
        end
    end else begin
        smem_53_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_53_ce0_local = 1'b1;
    end else begin
        smem_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd8)) begin
            smem_53_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_53_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_53_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_53_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_53_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_53_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_53_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_53_d0_local = DATA_y_q1;
        end else begin
            smem_53_d0_local = 'bx;
        end
    end else begin
        smem_53_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_53_we0_local = 1'b1;
    end else begin
        smem_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_54_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_54_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_54_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_54_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_54_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_54_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_54_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_54_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_54_address0_local = 'bx;
        end
    end else begin
        smem_54_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_54_ce0_local = 1'b1;
    end else begin
        smem_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd9)) begin
            smem_54_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_54_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_54_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_54_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_54_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_54_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_54_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_54_d0_local = DATA_y_q1;
        end else begin
            smem_54_d0_local = 'bx;
        end
    end else begin
        smem_54_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_54_we0_local = 1'b1;
    end else begin
        smem_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_55_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_55_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_55_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_55_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_55_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_55_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_55_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_55_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_55_address0_local = 'bx;
        end
    end else begin
        smem_55_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_55_ce0_local = 1'b1;
    end else begin
        smem_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd10)) begin
            smem_55_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_55_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_55_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_55_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_55_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_55_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_55_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_55_d0_local = DATA_y_q1;
        end else begin
            smem_55_d0_local = 'bx;
        end
    end else begin
        smem_55_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_55_we0_local = 1'b1;
    end else begin
        smem_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_56_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_56_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_56_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_56_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_56_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_56_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_56_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_56_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_56_address0_local = 'bx;
        end
    end else begin
        smem_56_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_56_ce0_local = 1'b1;
    end else begin
        smem_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd11)) begin
            smem_56_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_56_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_56_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_56_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_56_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_56_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_56_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_56_d0_local = DATA_y_q1;
        end else begin
            smem_56_d0_local = 'bx;
        end
    end else begin
        smem_56_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_56_we0_local = 1'b1;
    end else begin
        smem_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_57_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_57_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_57_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_57_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_57_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_57_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_57_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_57_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_57_address0_local = 'bx;
        end
    end else begin
        smem_57_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_57_ce0_local = 1'b1;
    end else begin
        smem_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd12)) begin
            smem_57_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_57_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_57_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_57_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_57_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_57_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_57_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_57_d0_local = DATA_y_q1;
        end else begin
            smem_57_d0_local = 'bx;
        end
    end else begin
        smem_57_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_57_we0_local = 1'b1;
    end else begin
        smem_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_58_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_58_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_58_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_58_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_58_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_58_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_58_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_58_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_58_address0_local = 'bx;
        end
    end else begin
        smem_58_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_58_ce0_local = 1'b1;
    end else begin
        smem_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd13)) begin
            smem_58_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_58_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_58_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_58_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_58_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_58_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_58_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_58_d0_local = DATA_y_q1;
        end else begin
            smem_58_d0_local = 'bx;
        end
    end else begin
        smem_58_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_58_we0_local = 1'b1;
    end else begin
        smem_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_59_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_59_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_59_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_59_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_59_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_59_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_59_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_59_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_59_address0_local = 'bx;
        end
    end else begin
        smem_59_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_59_ce0_local = 1'b1;
    end else begin
        smem_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd14)) begin
            smem_59_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_59_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_59_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_59_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_59_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_59_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_59_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_59_d0_local = DATA_y_q1;
        end else begin
            smem_59_d0_local = 'bx;
        end
    end else begin
        smem_59_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_59_we0_local = 1'b1;
    end else begin
        smem_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_60_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_60_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_60_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_60_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_60_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_60_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_60_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_60_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_60_address0_local = 'bx;
        end
    end else begin
        smem_60_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_60_ce0_local = 1'b1;
    end else begin
        smem_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd15)) begin
            smem_60_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_60_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_60_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_60_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_60_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_60_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_60_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_60_d0_local = DATA_y_q1;
        end else begin
            smem_60_d0_local = 'bx;
        end
    end else begin
        smem_60_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_60_we0_local = 1'b1;
    end else begin
        smem_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_61_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_61_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_61_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_61_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_61_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_61_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_61_address0_local = zext_ln211_fu_2945_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_61_address0_local = zext_ln172_2_fu_2842_p1;
        end else begin
            smem_61_address0_local = 'bx;
        end
    end else begin
        smem_61_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_61_ce0_local = 1'b1;
    end else begin
        smem_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd16)) begin
            smem_61_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_61_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_61_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_61_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_61_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_61_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_61_d0_local = DATA_y_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_61_d0_local = DATA_y_q1;
        end else begin
            smem_61_d0_local = 'bx;
        end
    end else begin
        smem_61_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_61_we0_local = 1'b1;
    end else begin
        smem_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_62_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_62_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_62_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_62_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_62_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_62_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_62_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_62_address0_local = zext_ln211_fu_2945_p1;
        end else begin
            smem_62_address0_local = 'bx;
        end
    end else begin
        smem_62_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_62_ce0_local = 1'b1;
    end else begin
        smem_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd31)) begin
            smem_62_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd17)) begin
            smem_62_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd19)) begin
            smem_62_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd21)) begin
            smem_62_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd23)) begin
            smem_62_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd25)) begin
            smem_62_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd27)) begin
            smem_62_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd29)) begin
            smem_62_d0_local = DATA_y_q0;
        end else begin
            smem_62_d0_local = 'bx;
        end
    end else begin
        smem_62_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd19) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd21) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd23) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_62_we0_local = 1'b1;
    end else begin
        smem_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_address0_local = zext_ln172_2_fu_2842_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_address0_local = zext_ln216_fu_3209_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_address0_local = zext_ln214_fu_3105_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_address0_local = zext_ln212_fu_2997_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_address0_local = zext_ln210_fu_2893_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_address0_local = zext_ln215_fu_3157_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_address0_local = zext_ln213_fu_3049_p1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_address0_local = zext_ln211_fu_2945_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((trunc_ln172_reg_3262 == 5'd0)) begin
            smem_d0_local = DATA_y_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd18)) begin
            smem_d0_local = DATA_y_3_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd20)) begin
            smem_d0_local = DATA_y_3_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd22)) begin
            smem_d0_local = DATA_y_1_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd24)) begin
            smem_d0_local = DATA_y_1_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd26)) begin
            smem_d0_local = DATA_y_2_q0;
        end else if ((trunc_ln172_reg_3262 == 5'd28)) begin
            smem_d0_local = DATA_y_2_q1;
        end else if ((trunc_ln172_reg_3262 == 5'd30)) begin
            smem_d0_local = DATA_y_q0;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd18) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd20) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd22) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln172_reg_3262 == 5'd28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001)& (trunc_ln172_reg_3262 == 5'd30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
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
assign DATA_y_1_address0 = zext_ln211_1_fu_2820_p1;
assign DATA_y_1_address1 = zext_ln209_fu_2804_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln211_1_fu_2820_p1;
assign DATA_y_2_address1 = zext_ln209_fu_2804_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln211_1_fu_2820_p1;
assign DATA_y_3_address1 = zext_ln209_fu_2804_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln211_1_fu_2820_p1;
assign DATA_y_address1 = zext_ln209_fu_2804_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln204_fu_2776_p2 = (ap_sig_allocacmp_tid + 7'd1);
assign add_ln210_fu_2877_p2 = ($signed(zext_ln172_5_fu_2839_p1) + $signed(9'd264));
assign add_ln211_fu_2929_p2 = (zext_ln172_4_fu_2836_p1 + 8'd66);
assign add_ln212_fu_2981_p2 = ($signed(zext_ln172_5_fu_2839_p1) + $signed(9'd330));
assign add_ln213_fu_3033_p2 = ($signed(zext_ln172_4_fu_2836_p1) + $signed(8'd132));
assign add_ln214_fu_3085_p2 = ($signed(zext_ln172_4_fu_2836_p1) + $signed(8'd140));
assign add_ln215_fu_3141_p2 = (zext_ln172_5_fu_2839_p1 + 9'd198);
assign add_ln216_fu_3193_p2 = (zext_ln172_fu_2833_p1 + 10'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_344 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln204_fu_2770_p2 = ((ap_sig_allocacmp_tid == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln17_fu_2883_p4 = {{add_ln210_fu_2877_p2[8:5]}};
assign lshr_ln18_fu_2935_p4 = {{add_ln211_fu_2929_p2[7:5]}};
assign lshr_ln19_fu_2987_p4 = {{add_ln212_fu_2981_p2[8:5]}};
assign lshr_ln20_fu_3039_p4 = {{add_ln213_fu_3033_p2[7:5]}};
assign lshr_ln21_fu_3147_p4 = {{add_ln215_fu_3141_p2[8:5]}};
assign lshr_ln22_fu_3199_p4 = {{add_ln216_fu_3193_p2[9:5]}};
assign offset_fu_2782_p1 = ap_sig_allocacmp_tid[5:0];
assign or_ln3_fu_2812_p3 = {{offset_fu_2782_p1}, {1'd1}};
assign sext_ln214_fu_3101_p1 = $signed(trunc_ln8_fu_3091_p4);
assign shl_ln209_fu_2798_p2 = ap_sig_allocacmp_tid << 7'd1;
assign smem_32_address0 = smem_32_address0_local;
assign smem_32_ce0 = smem_32_ce0_local;
assign smem_32_d0 = smem_32_d0_local;
assign smem_32_we0 = smem_32_we0_local;
assign smem_33_address0 = smem_33_address0_local;
assign smem_33_ce0 = smem_33_ce0_local;
assign smem_33_d0 = smem_33_d0_local;
assign smem_33_we0 = smem_33_we0_local;
assign smem_34_address0 = smem_34_address0_local;
assign smem_34_ce0 = smem_34_ce0_local;
assign smem_34_d0 = smem_34_d0_local;
assign smem_34_we0 = smem_34_we0_local;
assign smem_35_address0 = smem_35_address0_local;
assign smem_35_ce0 = smem_35_ce0_local;
assign smem_35_d0 = smem_35_d0_local;
assign smem_35_we0 = smem_35_we0_local;
assign smem_36_address0 = smem_36_address0_local;
assign smem_36_ce0 = smem_36_ce0_local;
assign smem_36_d0 = smem_36_d0_local;
assign smem_36_we0 = smem_36_we0_local;
assign smem_37_address0 = smem_37_address0_local;
assign smem_37_ce0 = smem_37_ce0_local;
assign smem_37_d0 = smem_37_d0_local;
assign smem_37_we0 = smem_37_we0_local;
assign smem_38_address0 = smem_38_address0_local;
assign smem_38_ce0 = smem_38_ce0_local;
assign smem_38_d0 = smem_38_d0_local;
assign smem_38_we0 = smem_38_we0_local;
assign smem_39_address0 = smem_39_address0_local;
assign smem_39_ce0 = smem_39_ce0_local;
assign smem_39_d0 = smem_39_d0_local;
assign smem_39_we0 = smem_39_we0_local;
assign smem_40_address0 = smem_40_address0_local;
assign smem_40_ce0 = smem_40_ce0_local;
assign smem_40_d0 = smem_40_d0_local;
assign smem_40_we0 = smem_40_we0_local;
assign smem_41_address0 = smem_41_address0_local;
assign smem_41_ce0 = smem_41_ce0_local;
assign smem_41_d0 = smem_41_d0_local;
assign smem_41_we0 = smem_41_we0_local;
assign smem_42_address0 = smem_42_address0_local;
assign smem_42_ce0 = smem_42_ce0_local;
assign smem_42_d0 = smem_42_d0_local;
assign smem_42_we0 = smem_42_we0_local;
assign smem_43_address0 = smem_43_address0_local;
assign smem_43_ce0 = smem_43_ce0_local;
assign smem_43_d0 = smem_43_d0_local;
assign smem_43_we0 = smem_43_we0_local;
assign smem_44_address0 = smem_44_address0_local;
assign smem_44_ce0 = smem_44_ce0_local;
assign smem_44_d0 = smem_44_d0_local;
assign smem_44_we0 = smem_44_we0_local;
assign smem_45_address0 = smem_45_address0_local;
assign smem_45_ce0 = smem_45_ce0_local;
assign smem_45_d0 = smem_45_d0_local;
assign smem_45_we0 = smem_45_we0_local;
assign smem_46_address0 = smem_46_address0_local;
assign smem_46_ce0 = smem_46_ce0_local;
assign smem_46_d0 = smem_46_d0_local;
assign smem_46_we0 = smem_46_we0_local;
assign smem_47_address0 = smem_47_address0_local;
assign smem_47_ce0 = smem_47_ce0_local;
assign smem_47_d0 = smem_47_d0_local;
assign smem_47_we0 = smem_47_we0_local;
assign smem_48_address0 = smem_48_address0_local;
assign smem_48_ce0 = smem_48_ce0_local;
assign smem_48_d0 = smem_48_d0_local;
assign smem_48_we0 = smem_48_we0_local;
assign smem_49_address0 = smem_49_address0_local;
assign smem_49_ce0 = smem_49_ce0_local;
assign smem_49_d0 = smem_49_d0_local;
assign smem_49_we0 = smem_49_we0_local;
assign smem_50_address0 = smem_50_address0_local;
assign smem_50_ce0 = smem_50_ce0_local;
assign smem_50_d0 = smem_50_d0_local;
assign smem_50_we0 = smem_50_we0_local;
assign smem_51_address0 = smem_51_address0_local;
assign smem_51_ce0 = smem_51_ce0_local;
assign smem_51_d0 = smem_51_d0_local;
assign smem_51_we0 = smem_51_we0_local;
assign smem_52_address0 = smem_52_address0_local;
assign smem_52_ce0 = smem_52_ce0_local;
assign smem_52_d0 = smem_52_d0_local;
assign smem_52_we0 = smem_52_we0_local;
assign smem_53_address0 = smem_53_address0_local;
assign smem_53_ce0 = smem_53_ce0_local;
assign smem_53_d0 = smem_53_d0_local;
assign smem_53_we0 = smem_53_we0_local;
assign smem_54_address0 = smem_54_address0_local;
assign smem_54_ce0 = smem_54_ce0_local;
assign smem_54_d0 = smem_54_d0_local;
assign smem_54_we0 = smem_54_we0_local;
assign smem_55_address0 = smem_55_address0_local;
assign smem_55_ce0 = smem_55_ce0_local;
assign smem_55_d0 = smem_55_d0_local;
assign smem_55_we0 = smem_55_we0_local;
assign smem_56_address0 = smem_56_address0_local;
assign smem_56_ce0 = smem_56_ce0_local;
assign smem_56_d0 = smem_56_d0_local;
assign smem_56_we0 = smem_56_we0_local;
assign smem_57_address0 = smem_57_address0_local;
assign smem_57_ce0 = smem_57_ce0_local;
assign smem_57_d0 = smem_57_d0_local;
assign smem_57_we0 = smem_57_we0_local;
assign smem_58_address0 = smem_58_address0_local;
assign smem_58_ce0 = smem_58_ce0_local;
assign smem_58_d0 = smem_58_d0_local;
assign smem_58_we0 = smem_58_we0_local;
assign smem_59_address0 = smem_59_address0_local;
assign smem_59_ce0 = smem_59_ce0_local;
assign smem_59_d0 = smem_59_d0_local;
assign smem_59_we0 = smem_59_we0_local;
assign smem_60_address0 = smem_60_address0_local;
assign smem_60_ce0 = smem_60_ce0_local;
assign smem_60_d0 = smem_60_d0_local;
assign smem_60_we0 = smem_60_we0_local;
assign smem_61_address0 = smem_61_address0_local;
assign smem_61_ce0 = smem_61_ce0_local;
assign smem_61_d0 = smem_61_d0_local;
assign smem_61_we0 = smem_61_we0_local;
assign smem_62_address0 = smem_62_address0_local;
assign smem_62_ce0 = smem_62_ce0_local;
assign smem_62_d0 = smem_62_d0_local;
assign smem_62_we0 = smem_62_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign trunc_ln172_fu_2786_p1 = ap_sig_allocacmp_tid[4:0];
assign trunc_ln8_fu_3091_p4 = {{add_ln214_fu_3085_p2[7:5]}};
assign zext_ln172_2_fu_2842_p1 = tmp_reg_3266;
assign zext_ln172_4_fu_2836_p1 = offset_reg_3255;
assign zext_ln172_5_fu_2839_p1 = offset_reg_3255;
assign zext_ln172_fu_2833_p1 = offset_reg_3255;
assign zext_ln209_fu_2804_p1 = shl_ln209_fu_2798_p2;
assign zext_ln210_fu_2893_p1 = lshr_ln17_fu_2883_p4;
assign zext_ln211_1_fu_2820_p1 = or_ln3_fu_2812_p3;
assign zext_ln211_fu_2945_p1 = lshr_ln18_fu_2935_p4;
assign zext_ln212_fu_2997_p1 = lshr_ln19_fu_2987_p4;
assign zext_ln213_fu_3049_p1 = lshr_ln20_fu_3039_p4;
assign zext_ln214_fu_3105_p1 = $unsigned(sext_ln214_fu_3101_p1);
assign zext_ln215_fu_3157_p1 = lshr_ln21_fu_3147_p4;
assign zext_ln216_fu_3209_p1 = lshr_ln22_fu_3199_p4;
endmodule 