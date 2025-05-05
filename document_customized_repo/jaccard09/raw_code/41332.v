module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,temp_1_address0,temp_1_ce0,temp_1_q0,temp_1_address1,temp_1_ce1,temp_1_q1,a_1_address0,a_1_ce0,a_1_we0,a_1_d0); 
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
input  [31:0] start_r;
input  [31:0] stop;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [9:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
input  [31:0] temp_1_q0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
input  [31:0] temp_1_q1;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln18_3_fu_816_p2;
reg   [0:0] icmp_ln18_2_reg_1059;
reg   [0:0] icmp_ln18_1_reg_994;
reg   [0:0] icmp_ln18_reg_930;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_356;
reg   [31:0] j_3_reg_366;
reg   [31:0] i_6_reg_376;
reg   [31:0] j_5_reg_387;
reg   [31:0] i_8_reg_398;
reg   [31:0] j_7_reg_409;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] k_1_reg_905;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_916;
reg   [31:0] j_1_reg_923;
wire   [0:0] icmp_ln18_fu_464_p2;
wire   [31:0] tmp_j_fu_507_p3;
reg   [31:0] tmp_j_reg_954;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_i_fu_515_p3;
reg   [31:0] tmp_i_reg_960;
wire   [0:0] icmp_ln21_fu_523_p2;
reg   [0:0] icmp_ln21_reg_966;
wire   [31:0] i_3_fu_529_p2;
reg   [31:0] i_3_reg_970;
wire   [31:0] j_2_fu_534_p2;
reg   [31:0] j_2_reg_975;
wire   [0:0] trunc_ln18_fu_539_p1;
reg   [0:0] trunc_ln18_reg_980;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] trunc_ln18_4_fu_559_p1;
reg   [0:0] trunc_ln18_4_reg_984;
wire   [0:0] trunc_ln18_5_fu_563_p1;
reg   [0:0] trunc_ln18_5_reg_989;
wire   [0:0] icmp_ln18_1_fu_599_p2;
wire   [31:0] tmp_j_1_fu_603_p3;
reg   [31:0] tmp_j_1_reg_1018;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] tmp_i_1_fu_610_p3;
reg   [31:0] tmp_i_1_reg_1024;
wire   [0:0] icmp_ln21_1_fu_617_p2;
reg   [0:0] icmp_ln21_1_reg_1030;
wire   [31:0] i_5_fu_623_p2;
reg   [31:0] i_5_reg_1034;
wire   [31:0] j_4_fu_629_p2;
reg   [31:0] j_4_reg_1039;
wire   [0:0] trunc_ln18_6_fu_662_p1;
reg   [0:0] trunc_ln18_6_reg_1044;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] trunc_ln18_7_fu_666_p1;
reg   [0:0] trunc_ln18_7_reg_1049;
reg   [9:0] lshr_ln5_6_reg_1054;
wire   [0:0] icmp_ln18_2_fu_717_p2;
wire   [31:0] tmp_j_2_fu_722_p3;
reg   [31:0] tmp_j_2_reg_1083;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] tmp_i_2_fu_729_p3;
reg   [31:0] tmp_i_2_reg_1089;
wire   [0:0] icmp_ln21_2_fu_736_p2;
reg   [0:0] icmp_ln21_2_reg_1095;
wire   [31:0] i_7_fu_742_p2;
reg   [31:0] i_7_reg_1099;
wire   [31:0] j_6_fu_748_p2;
reg   [31:0] j_6_reg_1104;
wire   [0:0] trunc_ln18_8_fu_761_p1;
reg   [0:0] trunc_ln18_8_reg_1109;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] trunc_ln18_9_fu_765_p1;
reg   [0:0] trunc_ln18_9_reg_1114;
reg   [9:0] lshr_ln5_7_reg_1119;
reg   [0:0] icmp_ln18_3_reg_1124;
wire   [63:0] zext_ln5_5_fu_821_p1;
reg   [63:0] zext_ln5_5_reg_1148;
wire   [31:0] tmp_j_3_fu_824_p3;
reg   [31:0] tmp_j_3_reg_1156;
wire   [31:0] tmp_i_3_fu_831_p3;
reg   [31:0] tmp_i_3_reg_1162;
wire   [0:0] icmp_ln21_3_fu_838_p2;
reg   [0:0] icmp_ln21_3_reg_1168;
wire   [31:0] i_9_fu_844_p2;
reg   [31:0] i_9_reg_1172;
wire   [31:0] j_8_fu_850_p2;
reg   [31:0] j_8_reg_1177;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_359_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_356;
reg   [31:0] ap_phi_mux_j_3_phi_fu_369_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_366;
reg   [31:0] ap_phi_mux_i_6_phi_fu_379_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_6_reg_376;
reg   [31:0] ap_phi_mux_j_5_phi_fu_390_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_5_reg_387;
reg   [31:0] ap_phi_mux_i_8_phi_fu_401_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_8_reg_398;
reg   [31:0] ap_phi_mux_j_7_phi_fu_412_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_7_reg_409;
reg   [31:0] ap_phi_mux_i_10_phi_fu_423_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_10_reg_420;
reg   [31:0] ap_phi_mux_j_9_phi_fu_433_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_9_reg_430;
wire   [63:0] zext_ln5_1_fu_495_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_fu_479_p1;
wire   [63:0] zext_ln5_2_fu_551_p1;
wire    ap_block_pp0_stage3;
wire   [9:0] a_0_addr_gep_fu_148_p3;
wire   [9:0] a_1_addr_gep_fu_156_p3;
wire   [63:0] zext_ln18_1_fu_593_p1;
wire   [63:0] zext_ln18_fu_577_p1;
wire   [63:0] zext_ln5_3_fu_654_p1;
wire    ap_block_pp0_stage5;
wire   [9:0] a_1_addr_2_gep_fu_212_p3;
wire   [9:0] a_0_addr_2_gep_fu_220_p3;
wire   [63:0] zext_ln18_3_fu_696_p1;
wire   [63:0] zext_ln18_2_fu_680_p1;
wire   [63:0] zext_ln5_4_fu_754_p1;
wire    ap_block_pp0_stage7;
wire   [9:0] a_0_addr_4_gep_fu_276_p3;
wire   [9:0] a_1_addr_4_gep_fu_284_p3;
wire   [63:0] zext_ln18_5_fu_795_p1;
wire   [63:0] zext_ln18_4_fu_779_p1;
wire   [9:0] a_1_addr_6_gep_fu_340_p3;
wire   [9:0] a_0_addr_6_gep_fu_348_p3;
reg   [31:0] k_fu_48;
wire   [31:0] add_ln18_3_fu_856_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_52;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_56;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
wire    ap_block_pp0_stage0;
wire   [9:0] lshr_ln5_2_fu_469_p4;
wire   [9:0] lshr_ln5_3_fu_485_p4;
wire    ap_block_pp0_stage2;
wire   [0:0] trunc_ln18_2_fu_501_p1;
wire   [0:0] trunc_ln18_3_fu_504_p1;
wire   [9:0] lshr_ln5_4_fu_542_p4;
wire   [9:0] lshr_ln2_fu_567_p4;
wire   [9:0] lshr_ln18_1_fu_583_p4;
wire    ap_block_pp0_stage4;
wire   [10:0] trunc_ln18_1_fu_635_p1;
wire   [10:0] add_ln18_fu_638_p2;
wire   [9:0] lshr_ln5_5_fu_644_p4;
wire   [9:0] lshr_ln18_2_fu_670_p4;
wire   [9:0] lshr_ln18_3_fu_686_p4;
wire   [31:0] add_ln18_1_fu_702_p2;
wire    ap_block_pp0_stage6;
wire   [9:0] lshr_ln18_4_fu_769_p4;
wire   [9:0] lshr_ln18_5_fu_785_p4;
wire   [31:0] add_ln18_2_fu_801_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_368;
reg    ap_condition_352;
reg    ap_condition_312;
reg    ap_condition_314;
reg    ap_condition_331;
reg    ap_condition_338;
reg    ap_condition_341;
reg    ap_condition_333;
reg    ap_condition_347;
reg    ap_condition_354;
reg    ap_condition_357;
reg    ap_condition_349;
reg    ap_condition_876;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_48 = 32'd0;
#0 i_2_fu_52 = 32'd0;
#0 j_fu_56 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_52 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_52 <= ap_phi_mux_i_10_phi_fu_423_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln21_reg_966 == 1'd0))) begin
            i_4_reg_356 <= i_3_reg_970;
        end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln21_reg_966 == 1'd1))) begin
            i_4_reg_356 <= i_reg_916;
        end else if ((1'b1 == ap_condition_312)) begin
            i_4_reg_356 <= ap_phi_reg_pp0_iter0_i_4_reg_356;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_333)) begin
        if ((1'b1 == ap_condition_341)) begin
            i_6_reg_376 <= i_5_reg_1034;
        end else if ((1'b1 == ap_condition_338)) begin
            i_6_reg_376 <= i_4_reg_356;
        end else if ((1'b1 == ap_condition_331)) begin
            i_6_reg_376 <= ap_phi_reg_pp0_iter0_i_6_reg_376;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_349)) begin
        if ((1'b1 == ap_condition_357)) begin
            i_8_reg_398 <= i_7_reg_1099;
        end else if ((1'b1 == ap_condition_354)) begin
            i_8_reg_398 <= i_6_reg_376;
        end else if ((1'b1 == ap_condition_347)) begin
            i_8_reg_398 <= ap_phi_reg_pp0_iter0_i_8_reg_398;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln21_reg_966 == 1'd0))) begin
            j_3_reg_366 <= j_1_reg_923;
        end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln21_reg_966 == 1'd1))) begin
            j_3_reg_366 <= j_2_reg_975;
        end else if ((1'b1 == ap_condition_312)) begin
            j_3_reg_366 <= ap_phi_reg_pp0_iter0_j_3_reg_366;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_333)) begin
        if ((1'b1 == ap_condition_341)) begin
            j_5_reg_387 <= j_3_reg_366;
        end else if ((1'b1 == ap_condition_338)) begin
            j_5_reg_387 <= j_4_reg_1039;
        end else if ((1'b1 == ap_condition_331)) begin
            j_5_reg_387 <= ap_phi_reg_pp0_iter0_j_5_reg_387;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_349)) begin
        if ((1'b1 == ap_condition_357)) begin
            j_7_reg_409 <= j_5_reg_387;
        end else if ((1'b1 == ap_condition_354)) begin
            j_7_reg_409 <= j_6_reg_1104;
        end else if ((1'b1 == ap_condition_347)) begin
            j_7_reg_409 <= ap_phi_reg_pp0_iter0_j_7_reg_409;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_56 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_56 <= ap_phi_mux_j_9_phi_fu_433_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_48 <= start_r;
        end else if ((1'b1 == ap_condition_876)) begin
            k_fu_48 <= add_ln18_3_fu_856_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_970 <= i_3_fu_529_p2;
        icmp_ln21_reg_966 <= icmp_ln21_fu_523_p2;
        j_2_reg_975 <= j_2_fu_534_p2;
        tmp_i_reg_960 <= tmp_i_fu_515_p3;
        tmp_j_reg_954 <= tmp_j_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_5_reg_1034 <= i_5_fu_623_p2;
        icmp_ln21_1_reg_1030 <= icmp_ln21_1_fu_617_p2;
        j_4_reg_1039 <= j_4_fu_629_p2;
        tmp_i_1_reg_1024 <= tmp_i_1_fu_610_p3;
        tmp_j_1_reg_1018 <= tmp_j_1_fu_603_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        i_7_reg_1099 <= i_7_fu_742_p2;
        icmp_ln21_2_reg_1095 <= icmp_ln21_2_fu_736_p2;
        j_6_reg_1104 <= j_6_fu_748_p2;
        tmp_i_2_reg_1089 <= tmp_i_2_fu_729_p3;
        tmp_j_2_reg_1083 <= tmp_j_2_fu_722_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_1172 <= i_9_fu_844_p2;
        icmp_ln21_3_reg_1168 <= icmp_ln21_3_fu_838_p2;
        j_8_reg_1177 <= j_8_fu_850_p2;
        tmp_i_3_reg_1162 <= tmp_i_3_fu_831_p3;
        tmp_j_3_reg_1156 <= tmp_j_3_fu_824_p3;
        zext_ln5_5_reg_1148[9 : 0] <= zext_ln5_5_fu_821_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_916 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_930 <= icmp_ln18_fu_464_p2;
        j_1_reg_923 <= ap_sig_allocacmp_j_1;
        k_1_reg_905 <= k_fu_48;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln18_1_reg_994 <= icmp_ln18_1_fu_599_p2;
        trunc_ln18_4_reg_984 <= trunc_ln18_4_fu_559_p1;
        trunc_ln18_5_reg_989 <= trunc_ln18_5_fu_563_p1;
        trunc_ln18_reg_980 <= trunc_ln18_fu_539_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln18_2_reg_1059 <= icmp_ln18_2_fu_717_p2;
        lshr_ln5_6_reg_1054 <= {{add_ln18_1_fu_702_p2[10:1]}};
        trunc_ln18_6_reg_1044 <= trunc_ln18_6_fu_662_p1;
        trunc_ln18_7_reg_1049 <= trunc_ln18_7_fu_666_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln18_3_reg_1124 <= icmp_ln18_3_fu_816_p2;
        lshr_ln5_7_reg_1119 <= {{add_ln18_2_fu_801_p2[10:1]}};
        trunc_ln18_8_reg_1109 <= trunc_ln18_8_fu_761_p1;
        trunc_ln18_9_reg_1114 <= trunc_ln18_9_fu_765_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_address0_local = a_0_addr_6_gep_fu_348_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_address0_local = zext_ln5_5_reg_1148;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_0_address0_local = a_0_addr_4_gep_fu_276_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_0_address0_local = zext_ln5_4_fu_754_p1;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_220_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_address0_local = zext_ln5_3_fu_654_p1;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd1))) begin
        a_0_address0_local = a_0_addr_gep_fu_148_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_551_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_d0_local = tmp_j_3_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_d0_local = tmp_i_3_reg_1162;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_0_d0_local = tmp_j_2_reg_1083;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_0_d0_local = tmp_i_2_reg_1089;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_d0_local = tmp_j_1_reg_1018;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_0_d0_local = tmp_i_1_reg_1024;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd1))) begin
        a_0_d0_local = tmp_j_reg_954;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd0))) begin
        a_0_d0_local = tmp_i_reg_960;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd0) & (icmp_ln21_reg_966 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd1)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_address0_local = a_1_addr_6_gep_fu_340_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_address0_local = zext_ln5_5_reg_1148;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_1_address0_local = a_1_addr_4_gep_fu_284_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_1_address0_local = zext_ln5_4_fu_754_p1;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_212_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_address0_local = zext_ln5_3_fu_654_p1;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd1))) begin
        a_1_address0_local = a_1_addr_gep_fu_156_p3;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_551_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_d0_local = tmp_j_3_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_d0_local = tmp_i_3_reg_1162;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_1_d0_local = tmp_j_2_reg_1083;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1))) begin
        a_1_d0_local = tmp_i_2_reg_1089;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_d0_local = tmp_j_1_reg_1018;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0))) begin
        a_1_d0_local = tmp_i_1_reg_1024;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd1))) begin
        a_1_d0_local = tmp_j_reg_954;
    end else if (((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd0))) begin
        a_1_d0_local = tmp_i_reg_960;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_2_reg_1095 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln18_reg_980 == 1'd1)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1030 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln18_reg_980 == 1'd0)) | ((icmp_ln18_reg_930== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd0)) | ((icmp_ln18_reg_930 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln18_fu_539_p1 == 1'd1) & (icmp_ln21_reg_966 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln21_3_reg_1168 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_reg_980 == 1'd0)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln18_reg_930 == 1'd1) | ((icmp_ln18_1_reg_994 == 1'd0) | ((icmp_ln18_2_reg_1059 == 1'd1) | (icmp_ln18_3_fu_816_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_930 == 1'd1) | ((icmp_ln18_1_reg_994 == 1'd0) | ((icmp_ln18_2_reg_1059 == 1'd1) | (icmp_ln18_3_reg_1124 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if ((1'b1 == ap_condition_368)) begin
        if ((icmp_ln21_3_reg_1168 == 1'd0)) begin
            ap_phi_mux_i_10_phi_fu_423_p4 = i_9_reg_1172;
        end else if ((icmp_ln21_3_reg_1168 == 1'd1)) begin
            ap_phi_mux_i_10_phi_fu_423_p4 = i_8_reg_398;
        end else begin
            ap_phi_mux_i_10_phi_fu_423_p4 = ap_phi_reg_pp0_iter1_i_10_reg_420;
        end
    end else begin
        ap_phi_mux_i_10_phi_fu_423_p4 = ap_phi_reg_pp0_iter1_i_10_reg_420;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_930 == 1'd0)) begin
        if ((icmp_ln21_reg_966 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_359_p4 = i_3_reg_970;
        end else if ((icmp_ln21_reg_966 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_359_p4 = i_reg_916;
        end else begin
            ap_phi_mux_i_4_phi_fu_359_p4 = ap_phi_reg_pp0_iter0_i_4_reg_356;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_359_p4 = ap_phi_reg_pp0_iter0_i_4_reg_356;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1030 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_379_p4 = i_5_reg_1034;
        end else if ((icmp_ln21_1_reg_1030 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_379_p4 = i_4_reg_356;
        end else begin
            ap_phi_mux_i_6_phi_fu_379_p4 = ap_phi_reg_pp0_iter0_i_6_reg_376;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_379_p4 = ap_phi_reg_pp0_iter0_i_6_reg_376;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_352)) begin
        if ((icmp_ln21_2_reg_1095 == 1'd0)) begin
            ap_phi_mux_i_8_phi_fu_401_p4 = i_7_reg_1099;
        end else if ((icmp_ln21_2_reg_1095 == 1'd1)) begin
            ap_phi_mux_i_8_phi_fu_401_p4 = i_6_reg_376;
        end else begin
            ap_phi_mux_i_8_phi_fu_401_p4 = ap_phi_reg_pp0_iter0_i_8_reg_398;
        end
    end else begin
        ap_phi_mux_i_8_phi_fu_401_p4 = ap_phi_reg_pp0_iter0_i_8_reg_398;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_930 == 1'd0)) begin
        if ((icmp_ln21_reg_966 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_369_p4 = j_1_reg_923;
        end else if ((icmp_ln21_reg_966 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_369_p4 = j_2_reg_975;
        end else begin
            ap_phi_mux_j_3_phi_fu_369_p4 = ap_phi_reg_pp0_iter0_j_3_reg_366;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_369_p4 = ap_phi_reg_pp0_iter0_j_3_reg_366;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1030 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_390_p4 = j_3_reg_366;
        end else if ((icmp_ln21_1_reg_1030 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_390_p4 = j_4_reg_1039;
        end else begin
            ap_phi_mux_j_5_phi_fu_390_p4 = ap_phi_reg_pp0_iter0_j_5_reg_387;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_390_p4 = ap_phi_reg_pp0_iter0_j_5_reg_387;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_352)) begin
        if ((icmp_ln21_2_reg_1095 == 1'd0)) begin
            ap_phi_mux_j_7_phi_fu_412_p4 = j_5_reg_387;
        end else if ((icmp_ln21_2_reg_1095 == 1'd1)) begin
            ap_phi_mux_j_7_phi_fu_412_p4 = j_6_reg_1104;
        end else begin
            ap_phi_mux_j_7_phi_fu_412_p4 = ap_phi_reg_pp0_iter0_j_7_reg_409;
        end
    end else begin
        ap_phi_mux_j_7_phi_fu_412_p4 = ap_phi_reg_pp0_iter0_j_7_reg_409;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_368)) begin
        if ((icmp_ln21_3_reg_1168 == 1'd0)) begin
            ap_phi_mux_j_9_phi_fu_433_p4 = j_7_reg_409;
        end else if ((icmp_ln21_3_reg_1168 == 1'd1)) begin
            ap_phi_mux_j_9_phi_fu_433_p4 = j_8_reg_1177;
        end else begin
            ap_phi_mux_j_9_phi_fu_433_p4 = ap_phi_reg_pp0_iter1_j_9_reg_430;
        end
    end else begin
        ap_phi_mux_j_9_phi_fu_433_p4 = ap_phi_reg_pp0_iter1_j_9_reg_430;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_10_phi_fu_423_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_9_phi_fu_433_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_56;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address0_local = zext_ln18_4_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address0_local = zext_ln18_2_fu_680_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address0_local = zext_ln18_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address0_local = zext_ln5_fu_479_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address1_local = zext_ln18_5_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address1_local = zext_ln18_3_fu_696_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address1_local = zext_ln18_1_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address1_local = zext_ln5_1_fu_495_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address0_local = zext_ln18_4_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address0_local = zext_ln18_2_fu_680_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln18_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln5_fu_479_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address1_local = zext_ln18_5_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address1_local = zext_ln18_3_fu_696_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln18_1_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln5_1_fu_495_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign a_0_addr_2_gep_fu_220_p3 = zext_ln5_3_fu_654_p1;
assign a_0_addr_4_gep_fu_276_p3 = zext_ln5_4_fu_754_p1;
assign a_0_addr_6_gep_fu_348_p3 = zext_ln5_5_reg_1148;
assign a_0_addr_gep_fu_148_p3 = zext_ln5_2_fu_551_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_212_p3 = zext_ln5_3_fu_654_p1;
assign a_1_addr_4_gep_fu_284_p3 = zext_ln5_4_fu_754_p1;
assign a_1_addr_6_gep_fu_340_p3 = zext_ln5_5_reg_1148;
assign a_1_addr_gep_fu_156_p3 = zext_ln5_2_fu_551_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign add_ln18_1_fu_702_p2 = (k_1_reg_905 + 32'd2);
assign add_ln18_2_fu_801_p2 = (k_1_reg_905 + 32'd3);
assign add_ln18_3_fu_856_p2 = (k_1_reg_905 + 32'd4);
assign add_ln18_fu_638_p2 = (trunc_ln18_1_fu_635_p1 + 11'd1);
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
always @ (*) begin
    ap_condition_312 = ~((icmp_ln18_reg_930 == 1'd1) | ((icmp_ln18_1_fu_599_p2 == 1'd0) | ((icmp_ln18_2_reg_1059 == 1'd1) | (icmp_ln18_3_reg_1124 == 1'd1))));
end
always @ (*) begin
    ap_condition_314 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_331 = ~((icmp_ln18_reg_930 == 1'd1) | ((icmp_ln18_1_reg_994 == 1'd0) | ((icmp_ln18_3_reg_1124 == 1'd1) | (icmp_ln18_2_fu_717_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_333 = ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_338 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln21_1_reg_1030 == 1'd1));
end
always @ (*) begin
    ap_condition_341 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln21_1_reg_1030 == 1'd0));
end
always @ (*) begin
    ap_condition_347 = ~((icmp_ln18_reg_930 == 1'd1) | ((icmp_ln18_1_reg_994 == 1'd0) | ((icmp_ln18_2_reg_1059 == 1'd1) | (icmp_ln18_3_fu_816_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_349 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_352 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0));
end
always @ (*) begin
    ap_condition_354 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (icmp_ln21_2_reg_1095 == 1'd1));
end
always @ (*) begin
    ap_condition_357 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (icmp_ln21_2_reg_1095 == 1'd0));
end
always @ (*) begin
    ap_condition_368 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (icmp_ln18_3_reg_1124 == 1'd0));
end
always @ (*) begin
    ap_condition_876 = ((icmp_ln18_reg_930 == 1'd0) & (icmp_ln18_1_reg_994 == 1'd1) & (icmp_ln18_2_reg_1059 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18_3_reg_1124 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_phi_reg_pp0_iter0_i_4_reg_356 = 'bx;
assign ap_phi_reg_pp0_iter0_i_6_reg_376 = 'bx;
assign ap_phi_reg_pp0_iter0_i_8_reg_398 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_366 = 'bx;
assign ap_phi_reg_pp0_iter0_j_5_reg_387 = 'bx;
assign ap_phi_reg_pp0_iter0_j_7_reg_409 = 'bx;
assign ap_phi_reg_pp0_iter1_i_10_reg_420 = 'bx;
assign ap_phi_reg_pp0_iter1_j_9_reg_430 = 'bx;
assign ap_ready = ap_ready_sig;
assign i_3_fu_529_p2 = (i_reg_916 + 32'd1);
assign i_5_fu_623_p2 = (i_4_reg_356 + 32'd1);
assign i_7_fu_742_p2 = (i_6_reg_376 + 32'd1);
assign i_9_fu_844_p2 = (i_8_reg_398 + 32'd1);
assign icmp_ln18_1_fu_599_p2 = (($signed(k_1_reg_905) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_717_p2 = (($signed(add_ln18_1_fu_702_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_816_p2 = (($signed(add_ln18_2_fu_801_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_464_p2 = (($signed(k_fu_48) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln21_1_fu_617_p2 = (($signed(tmp_j_1_fu_603_p3) < $signed(tmp_i_1_fu_610_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_2_fu_736_p2 = (($signed(tmp_j_2_fu_722_p3) < $signed(tmp_i_2_fu_729_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_3_fu_838_p2 = (($signed(tmp_j_3_fu_824_p3) < $signed(tmp_i_3_fu_831_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_523_p2 = (($signed(tmp_j_fu_507_p3) < $signed(tmp_i_fu_515_p3)) ? 1'b1 : 1'b0);
assign j_2_fu_534_p2 = ($signed(j_1_reg_923) + $signed(32'd4294967295));
assign j_4_fu_629_p2 = ($signed(j_3_reg_366) + $signed(32'd4294967295));
assign j_6_fu_748_p2 = ($signed(j_5_reg_387) + $signed(32'd4294967295));
assign j_8_fu_850_p2 = ($signed(j_7_reg_409) + $signed(32'd4294967295));
assign lshr_ln18_1_fu_583_p4 = {{ap_phi_mux_j_3_phi_fu_369_p4[10:1]}};
assign lshr_ln18_2_fu_670_p4 = {{ap_phi_mux_i_6_phi_fu_379_p4[10:1]}};
assign lshr_ln18_3_fu_686_p4 = {{ap_phi_mux_j_5_phi_fu_390_p4[10:1]}};
assign lshr_ln18_4_fu_769_p4 = {{ap_phi_mux_i_8_phi_fu_401_p4[10:1]}};
assign lshr_ln18_5_fu_785_p4 = {{ap_phi_mux_j_7_phi_fu_412_p4[10:1]}};
assign lshr_ln2_fu_567_p4 = {{ap_phi_mux_i_4_phi_fu_359_p4[10:1]}};
assign lshr_ln5_2_fu_469_p4 = {{ap_sig_allocacmp_i[10:1]}};
assign lshr_ln5_3_fu_485_p4 = {{ap_sig_allocacmp_j_1[10:1]}};
assign lshr_ln5_4_fu_542_p4 = {{k_1_reg_905[10:1]}};
assign lshr_ln5_5_fu_644_p4 = {{add_ln18_fu_638_p2[10:1]}};
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign tmp_i_1_fu_610_p3 = ((trunc_ln18_5_reg_989[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_2_fu_729_p3 = ((trunc_ln18_7_reg_1049[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_3_fu_831_p3 = ((trunc_ln18_9_reg_1114[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_fu_515_p3 = ((trunc_ln18_3_fu_504_p1[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_j_1_fu_603_p3 = ((trunc_ln18_4_reg_984[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_2_fu_722_p3 = ((trunc_ln18_6_reg_1044[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_3_fu_824_p3 = ((trunc_ln18_8_reg_1109[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_fu_507_p3 = ((trunc_ln18_2_fu_501_p1[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign trunc_ln18_1_fu_635_p1 = k_1_reg_905[10:0];
assign trunc_ln18_2_fu_501_p1 = j_1_reg_923[0:0];
assign trunc_ln18_3_fu_504_p1 = i_reg_916[0:0];
assign trunc_ln18_4_fu_559_p1 = ap_phi_mux_j_3_phi_fu_369_p4[0:0];
assign trunc_ln18_5_fu_563_p1 = ap_phi_mux_i_4_phi_fu_359_p4[0:0];
assign trunc_ln18_6_fu_662_p1 = ap_phi_mux_j_5_phi_fu_390_p4[0:0];
assign trunc_ln18_7_fu_666_p1 = ap_phi_mux_i_6_phi_fu_379_p4[0:0];
assign trunc_ln18_8_fu_761_p1 = ap_phi_mux_j_7_phi_fu_412_p4[0:0];
assign trunc_ln18_9_fu_765_p1 = ap_phi_mux_i_8_phi_fu_401_p4[0:0];
assign trunc_ln18_fu_539_p1 = k_1_reg_905[0:0];
assign zext_ln18_1_fu_593_p1 = lshr_ln18_1_fu_583_p4;
assign zext_ln18_2_fu_680_p1 = lshr_ln18_2_fu_670_p4;
assign zext_ln18_3_fu_696_p1 = lshr_ln18_3_fu_686_p4;
assign zext_ln18_4_fu_779_p1 = lshr_ln18_4_fu_769_p4;
assign zext_ln18_5_fu_795_p1 = lshr_ln18_5_fu_785_p4;
assign zext_ln18_fu_577_p1 = lshr_ln2_fu_567_p4;
assign zext_ln5_1_fu_495_p1 = lshr_ln5_3_fu_485_p4;
assign zext_ln5_2_fu_551_p1 = lshr_ln5_4_fu_542_p4;
assign zext_ln5_3_fu_654_p1 = lshr_ln5_5_fu_644_p4;
assign zext_ln5_4_fu_754_p1 = lshr_ln5_6_reg_1054;
assign zext_ln5_5_fu_821_p1 = lshr_ln5_7_reg_1119;
assign zext_ln5_fu_479_p1 = lshr_ln5_2_fu_469_p4;
always @ (posedge ap_clk) begin
    zext_ln5_5_reg_1148[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 