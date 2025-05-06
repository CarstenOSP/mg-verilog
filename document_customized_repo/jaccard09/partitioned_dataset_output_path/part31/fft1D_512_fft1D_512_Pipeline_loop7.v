
module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1);  
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
output  [7:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [7:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_578_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] reg_546;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_552;
reg   [63:0] reg_558;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_564;
reg   [6:0] tid_3_reg_1116;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_1123;
wire   [5:0] offset_fu_586_p1;
reg   [5:0] offset_reg_1127;
wire   [4:0] tmp_22_fu_624_p4;
reg   [4:0] tmp_22_reg_1148;
wire   [0:0] icmp_ln298_fu_648_p2;
reg   [0:0] icmp_ln298_reg_1165;
wire   [0:0] icmp_ln298_1_fu_654_p2;
reg   [0:0] icmp_ln298_1_reg_1169;
wire   [8:0] zext_ln172_5_fu_706_p1;
reg   [8:0] zext_ln172_5_reg_1193;
wire   [9:0] trunc_ln172_1_fu_773_p1;
reg   [9:0] trunc_ln172_1_reg_1209;
wire   [7:0] zext_ln172_3_fu_822_p1;
reg   [7:0] zext_ln172_3_reg_1229;
reg   [63:0] DATA_x_1_load_2_reg_1255;
reg   [63:0] DATA_x_1_load_6_reg_1261;
reg   [6:0] lshr_ln10_reg_1267;
reg   [63:0] DATA_x_load_3_reg_1272;
reg   [63:0] DATA_x_load_7_reg_1278;
reg   [5:0] trunc_ln5_reg_1284;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [7:0] lshr_ln305_1_reg_1289;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln298_fu_602_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln298_1_fu_642_p1;
wire   [63:0] zext_ln172_4_fu_669_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln300_2_fu_684_p1;
wire   [63:0] zext_ln300_3_fu_697_p1;
wire   [63:0] zext_ln299_fu_725_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln302_2_fu_738_p1;
wire   [63:0] zext_ln299_1_fu_793_p1;
wire   [63:0] zext_ln302_3_fu_806_p1;
wire   [63:0] zext_ln300_fu_841_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln304_2_fu_854_p1;
wire   [63:0] zext_ln300_1_fu_875_p1;
wire   [63:0] zext_ln304_3_fu_888_p1;
wire   [63:0] zext_ln301_fu_909_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln301_1_fu_945_p1;
wire   [63:0] zext_ln302_fu_966_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln302_1_fu_1002_p1;
wire   [63:0] zext_ln303_fu_1011_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln303_1_fu_1032_p1;
wire   [63:0] zext_ln304_fu_1038_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln304_1_fu_1058_p1;
wire   [63:0] zext_ln305_fu_1098_p1;
wire   [63:0] zext_ln305_1_fu_1104_p1;
reg   [6:0] tid_fu_116;
wire   [6:0] add_ln294_fu_812_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [7:0] smem_2_address0_local;
wire    ap_block_pp0_stage6_11001;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [7:0] smem_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [7:0] smem_3_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [7:0] smem_1_address0_local;
wire   [7:0] shl_ln6_fu_594_p3;
wire   [0:0] tmp_27_fu_608_p3;
wire   [7:0] shl_ln298_1_fu_634_p3;
wire   [1:0] trunc_ln172_fu_590_p1;
wire   [1:0] or_ln296_cast_fu_616_p3;
wire   [3:0] lshr_ln172_4_fu_660_p4;
wire   [7:0] or_ln_fu_677_p3;
wire   [7:0] or_ln300_1_fu_690_p3;
wire   [8:0] add_ln299_fu_709_p2;
wire   [6:0] lshr_ln_fu_715_p4;
wire   [7:0] or_ln7_fu_731_p3;
wire   [1:0] tmp_s_fu_744_p4;
wire   [31:0] zext_ln295_fu_703_p1;
wire   [2:0] or_ln9_fu_753_p3;
wire   [31:0] offset_2_fu_761_p5;
wire   [9:0] add_ln299_1_fu_777_p2;
wire   [7:0] lshr_ln299_1_fu_783_p4;
wire   [7:0] or_ln302_1_fu_799_p3;
wire   [7:0] add_ln300_fu_825_p2;
wire   [5:0] lshr_ln7_fu_831_p4;
wire   [7:0] or_ln8_fu_847_p3;
wire   [9:0] add_ln300_1_fu_860_p2;
wire   [7:0] lshr_ln300_1_fu_865_p4;
wire   [7:0] or_ln304_1_fu_881_p3;
wire   [8:0] add_ln301_fu_894_p2;
wire   [6:0] lshr_ln8_fu_899_p4;
wire   [8:0] add_ln304_fu_915_p2;
wire   [9:0] add_ln301_1_fu_930_p2;
wire   [7:0] lshr_ln301_1_fu_935_p4;
wire   [7:0] add_ln302_fu_951_p2;
wire   [5:0] lshr_ln9_fu_956_p4;
wire   [7:0] add_ln303_fu_972_p2;
wire   [9:0] add_ln302_1_fu_987_p2;
wire   [7:0] lshr_ln302_1_fu_992_p4;
wire  signed [6:0] sext_ln303_fu_1008_p1;
wire   [9:0] add_ln303_1_fu_1017_p2;
wire   [7:0] lshr_ln303_1_fu_1022_p4;
wire   [9:0] add_ln304_1_fu_1043_p2;
wire   [7:0] lshr_ln304_1_fu_1048_p4;
wire   [9:0] add_ln305_1_fu_1064_p2;
wire   [9:0] zext_ln172_fu_1079_p1;
wire   [9:0] add_ln305_fu_1082_p2;
wire   [7:0] lshr_ln11_fu_1088_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_116 = 7'd0;
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_116 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_1123 == 1'd0))) begin
        tid_fu_116 <= add_ln294_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_load_2_reg_1255 <= DATA_x_1_q1;
        DATA_x_1_load_6_reg_1261 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        DATA_x_load_3_reg_1272 <= DATA_x_q1;
        DATA_x_load_7_reg_1278 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln298_1_reg_1169 <= icmp_ln298_1_fu_654_p2;
        icmp_ln298_reg_1165 <= icmp_ln298_fu_648_p2;
        offset_reg_1127 <= offset_fu_586_p1;
        tid_3_reg_1116 <= ap_sig_allocacmp_tid_3;
        tmp_22_reg_1148 <= {{ap_sig_allocacmp_tid_3[5:1]}};
        tmp_reg_1123 <= ap_sig_allocacmp_tid_3[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln10_reg_1267 <= {{add_ln304_fu_915_p2[8:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln305_1_reg_1289 <= {{add_ln305_1_fu_1064_p2[9:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_546 <= DATA_x_1_q1;
        reg_552 <= DATA_x_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_558 <= DATA_x_q1;
        reg_564 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln172_1_reg_1209 <= trunc_ln172_1_fu_773_p1;
        zext_ln172_5_reg_1193[5 : 0] <= zext_ln172_5_fu_706_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln5_reg_1284 <= {{add_ln303_fu_972_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln172_3_reg_1229[5 : 0] <= zext_ln172_3_fu_822_p1[5 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address0_local = zext_ln304_3_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address0_local = zext_ln302_3_fu_806_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln300_3_fu_697_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln298_1_fu_642_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_1_address1_local = zext_ln304_2_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_1_address1_local = zext_ln302_2_fu_738_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln300_2_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_602_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address0_local = zext_ln304_3_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address0_local = zext_ln302_3_fu_806_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln300_3_fu_697_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln298_1_fu_642_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_x_address1_local = zext_ln304_2_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_x_address1_local = zext_ln302_2_fu_738_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln300_2_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_602_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_578_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln305_1_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_address0_local = zext_ln304_1_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_address0_local = zext_ln303_1_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_1_address0_local = zext_ln302_1_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_1_address0_local = zext_ln301_1_fu_945_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln300_1_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln299_1_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln172_4_fu_669_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_1_d0_local = DATA_x_load_7_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_1_d0_local = DATA_x_1_load_6_reg_1261;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_1_d0_local = reg_564;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_1_d0_local = reg_552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln298_1_reg_1169 == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln298_1_reg_1169 == 1'd1) & (tmp_reg_1123 == 1'd0)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln305_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_address0_local = zext_ln304_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_address0_local = zext_ln303_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_2_address0_local = zext_ln302_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_2_address0_local = zext_ln301_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln300_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln299_fu_725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln172_4_fu_669_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_2_d0_local = DATA_x_load_3_reg_1272;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_2_d0_local = DATA_x_1_load_2_reg_1255;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_2_d0_local = reg_558;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_2_d0_local = reg_546;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln298_reg_1165 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln298_reg_1165 == 1'd0) & (tmp_reg_1123 == 1'd0)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln305_1_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_address0_local = zext_ln304_1_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_address0_local = zext_ln303_1_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_3_address0_local = zext_ln302_1_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_3_address0_local = zext_ln301_1_fu_945_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln300_1_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln299_1_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_4_fu_669_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_3_d0_local = DATA_x_load_7_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_3_d0_local = DATA_x_1_load_6_reg_1261;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_3_d0_local = reg_564;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_3_d0_local = reg_552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln298_1_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln298_1_reg_1169 == 1'd0) & (tmp_reg_1123 == 1'd0)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln305_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_address0_local = zext_ln304_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_address0_local = zext_ln303_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        smem_address0_local = zext_ln302_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        smem_address0_local = zext_ln301_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln300_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln299_fu_725_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln172_4_fu_669_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        smem_d0_local = DATA_x_load_3_reg_1272;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        smem_d0_local = DATA_x_1_load_2_reg_1255;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        smem_d0_local = reg_558;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        smem_d0_local = reg_546;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln298_reg_1165 == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln298_reg_1165 == 1'd1) & (tmp_reg_1123 == 1'd0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_812_p2 = (tid_3_reg_1116 + 7'd2);
assign add_ln299_1_fu_777_p2 = (trunc_ln172_1_fu_773_p1 + 10'd288);
assign add_ln299_fu_709_p2 = ($signed(zext_ln172_5_fu_706_p1) + $signed(9'd288));
assign add_ln300_1_fu_860_p2 = (trunc_ln172_1_reg_1209 + 10'd72);
assign add_ln300_fu_825_p2 = (zext_ln172_3_fu_822_p1 + 8'd72);
assign add_ln301_1_fu_930_p2 = (trunc_ln172_1_reg_1209 + 10'd360);
assign add_ln301_fu_894_p2 = ($signed(zext_ln172_5_reg_1193) + $signed(9'd360));
assign add_ln302_1_fu_987_p2 = (trunc_ln172_1_reg_1209 + 10'd144);
assign add_ln302_fu_951_p2 = ($signed(zext_ln172_3_reg_1229) + $signed(8'd144));
assign add_ln303_1_fu_1017_p2 = (trunc_ln172_1_reg_1209 + 10'd432);
assign add_ln303_fu_972_p2 = ($signed(zext_ln172_3_reg_1229) + $signed(8'd176));
assign add_ln304_1_fu_1043_p2 = (trunc_ln172_1_reg_1209 + 10'd216);
assign add_ln304_fu_915_p2 = (zext_ln172_5_reg_1193 + 9'd216);
assign add_ln305_1_fu_1064_p2 = (trunc_ln172_1_reg_1209 + 10'd504);
assign add_ln305_fu_1082_p2 = (zext_ln172_fu_1079_p1 + 10'd504);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln298_1_fu_654_p2 = ((or_ln296_cast_fu_616_p3 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln298_fu_648_p2 = ((trunc_ln172_fu_590_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln11_fu_1088_p4 = {{add_ln305_fu_1082_p2[9:2]}};
assign lshr_ln172_4_fu_660_p4 = {{tid_3_reg_1116[5:2]}};
assign lshr_ln299_1_fu_783_p4 = {{add_ln299_1_fu_777_p2[9:2]}};
assign lshr_ln300_1_fu_865_p4 = {{add_ln300_1_fu_860_p2[9:2]}};
assign lshr_ln301_1_fu_935_p4 = {{add_ln301_1_fu_930_p2[9:2]}};
assign lshr_ln302_1_fu_992_p4 = {{add_ln302_1_fu_987_p2[9:2]}};
assign lshr_ln303_1_fu_1022_p4 = {{add_ln303_1_fu_1017_p2[9:2]}};
assign lshr_ln304_1_fu_1048_p4 = {{add_ln304_1_fu_1043_p2[9:2]}};
assign lshr_ln7_fu_831_p4 = {{add_ln300_fu_825_p2[7:2]}};
assign lshr_ln8_fu_899_p4 = {{add_ln301_fu_894_p2[8:2]}};
assign lshr_ln9_fu_956_p4 = {{add_ln302_fu_951_p2[7:2]}};
assign lshr_ln_fu_715_p4 = {{add_ln299_fu_709_p2[8:2]}};
assign offset_2_fu_761_p5 = {{zext_ln295_fu_703_p1[31:3]}, {or_ln9_fu_753_p3}};
assign offset_fu_586_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln296_cast_fu_616_p3 = {{tmp_27_fu_608_p3}, {1'd1}};
assign or_ln300_1_fu_690_p3 = {{tmp_22_reg_1148}, {3'd6}};
assign or_ln302_1_fu_799_p3 = {{tmp_22_reg_1148}, {3'd5}};
assign or_ln304_1_fu_881_p3 = {{tmp_22_reg_1148}, {3'd7}};
assign or_ln7_fu_731_p3 = {{offset_reg_1127}, {2'd1}};
assign or_ln8_fu_847_p3 = {{offset_reg_1127}, {2'd3}};
assign or_ln9_fu_753_p3 = {{tmp_s_fu_744_p4}, {1'd1}};
assign or_ln_fu_677_p3 = {{offset_reg_1127}, {2'd2}};
assign sext_ln303_fu_1008_p1 = $signed(trunc_ln5_reg_1284);
assign shl_ln298_1_fu_634_p3 = {{tmp_22_fu_624_p4}, {3'd4}};
assign shl_ln6_fu_594_p3 = {{offset_fu_586_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_22_fu_624_p4 = {{ap_sig_allocacmp_tid_3[5:1]}};
assign tmp_27_fu_608_p3 = ap_sig_allocacmp_tid_3[32'd1];
assign tmp_fu_578_p3 = ap_sig_allocacmp_tid_3[32'd6];
assign tmp_s_fu_744_p4 = {{tid_3_reg_1116[2:1]}};
assign trunc_ln172_1_fu_773_p1 = offset_2_fu_761_p5[9:0];
assign trunc_ln172_fu_590_p1 = ap_sig_allocacmp_tid_3[1:0];
assign zext_ln172_3_fu_822_p1 = offset_reg_1127;
assign zext_ln172_4_fu_669_p1 = lshr_ln172_4_fu_660_p4;
assign zext_ln172_5_fu_706_p1 = offset_reg_1127;
assign zext_ln172_fu_1079_p1 = offset_reg_1127;
assign zext_ln295_fu_703_p1 = offset_reg_1127;
assign zext_ln298_1_fu_642_p1 = shl_ln298_1_fu_634_p3;
assign zext_ln298_fu_602_p1 = shl_ln6_fu_594_p3;
assign zext_ln299_1_fu_793_p1 = lshr_ln299_1_fu_783_p4;
assign zext_ln299_fu_725_p1 = lshr_ln_fu_715_p4;
assign zext_ln300_1_fu_875_p1 = lshr_ln300_1_fu_865_p4;
assign zext_ln300_2_fu_684_p1 = or_ln_fu_677_p3;
assign zext_ln300_3_fu_697_p1 = or_ln300_1_fu_690_p3;
assign zext_ln300_fu_841_p1 = lshr_ln7_fu_831_p4;
assign zext_ln301_1_fu_945_p1 = lshr_ln301_1_fu_935_p4;
assign zext_ln301_fu_909_p1 = lshr_ln8_fu_899_p4;
assign zext_ln302_1_fu_1002_p1 = lshr_ln302_1_fu_992_p4;
assign zext_ln302_2_fu_738_p1 = or_ln7_fu_731_p3;
assign zext_ln302_3_fu_806_p1 = or_ln302_1_fu_799_p3;
assign zext_ln302_fu_966_p1 = lshr_ln9_fu_956_p4;
assign zext_ln303_1_fu_1032_p1 = lshr_ln303_1_fu_1022_p4;
assign zext_ln303_fu_1011_p1 = $unsigned(sext_ln303_fu_1008_p1);
assign zext_ln304_1_fu_1058_p1 = lshr_ln304_1_fu_1048_p4;
assign zext_ln304_2_fu_854_p1 = or_ln8_fu_847_p3;
assign zext_ln304_3_fu_888_p1 = or_ln304_1_fu_881_p3;
assign zext_ln304_fu_1038_p1 = lshr_ln10_reg_1267;
assign zext_ln305_1_fu_1104_p1 = lshr_ln305_1_reg_1289;
assign zext_ln305_fu_1098_p1 = lshr_ln11_fu_1088_p4;
always @ (posedge ap_clk) begin
    zext_ln172_5_reg_1193[8:6] <= 3'b000;
    zext_ln172_3_reg_1229[7:6] <= 2'b00;
end
endmodule 
