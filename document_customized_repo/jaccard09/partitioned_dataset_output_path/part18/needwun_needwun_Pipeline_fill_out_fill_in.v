
module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0);  
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
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [13:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [13:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln28_reg_844;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln28_fu_391_p2;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln17_fu_415_p3;
reg   [7:0] select_ln17_reg_848;
wire   [7:0] select_ln28_fu_429_p3;
reg   [7:0] select_ln28_reg_855;
wire   [0:0] trunc_ln28_fu_437_p1;
reg   [0:0] trunc_ln28_reg_861;
reg   [5:0] tmp_1_reg_866;
wire   [6:0] trunc_ln29_fu_461_p1;
reg   [6:0] trunc_ln29_reg_871;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_22_fu_506_p2;
reg   [14:0] empty_22_reg_896;
wire   [14:0] empty_23_fu_512_p2;
reg   [14:0] empty_23_reg_903;
wire   [6:0] add_ln30_fu_518_p2;
reg   [6:0] add_ln30_reg_910;
reg   [7:0] SEQA_0_load_reg_915;
reg   [7:0] SEQA_1_load_reg_920;
wire   [0:0] icmp_ln30_fu_546_p2;
reg   [0:0] icmp_ln30_reg_925;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] trunc_ln39_fu_556_p1;
reg   [0:0] trunc_ln39_reg_930;
reg   [13:0] lshr_ln2_reg_937;
reg   [13:0] lshr_ln5_reg_962;
wire   [0:0] icmp_ln30_1_fu_636_p2;
reg   [0:0] icmp_ln30_1_reg_967;
reg   [13:0] lshr_ln40_1_reg_972;
reg   [13:0] lshr_ln45_1_reg_977;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] select_ln40_fu_676_p3;
reg   [31:0] select_ln40_reg_992;
wire   [31:0] select_ln41_fu_683_p3;
reg   [31:0] select_ln41_reg_998;
wire   [31:0] up_left_fu_697_p2;
reg   [31:0] up_left_reg_1003;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] up_fu_703_p2;
reg   [31:0] up_reg_1009;
wire   [31:0] left_fu_708_p2;
reg   [31:0] left_reg_1014;
wire   [31:0] select_ln43_fu_719_p3;
reg   [31:0] select_ln43_reg_1019;
wire   [31:0] up_left_1_fu_734_p2;
reg   [31:0] up_left_1_reg_1025;
wire   [31:0] max_fu_743_p3;
reg   [31:0] max_reg_1031;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln45_fu_751_p1;
reg   [63:0] zext_ln45_reg_1036;
wire   [0:0] icmp_ln46_fu_756_p2;
reg   [0:0] icmp_ln46_reg_1046;
wire   [0:0] icmp_ln48_fu_761_p2;
reg   [0:0] icmp_ln48_reg_1050;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] up_1_fu_771_p2;
reg   [31:0] up_1_reg_1064;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] left_1_fu_777_p2;
reg   [31:0] left_1_reg_1071;
wire   [31:0] max_1_fu_797_p3;
reg   [31:0] max_1_reg_1078;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln17_fu_475_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast12_fu_494_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_590_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_611_p1;
wire   [63:0] zext_ln39_fu_671_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [13:0] ptr_0_addr_2_gep_fu_250_p3;
wire   [13:0] ptr_1_addr_2_gep_fu_259_p3;
wire   [13:0] ptr_0_addr_gep_fu_268_p3;
wire   [13:0] ptr_1_addr_gep_fu_277_p3;
wire   [63:0] zext_ln40_1_fu_766_p1;
wire   [63:0] zext_ln45_1_fu_804_p1;
wire   [0:0] icmp_ln46_1_fu_815_p2;
wire   [0:0] icmp_ln48_1_fu_819_p2;
wire   [13:0] ptr_1_addr_5_gep_fu_334_p3;
wire   [13:0] ptr_0_addr_5_gep_fu_342_p3;
wire   [13:0] ptr_1_addr_4_gep_fu_350_p3;
wire   [13:0] ptr_0_addr_4_gep_fu_358_p3;
reg   [7:0] a_idx_2_fu_76;
wire   [7:0] add_ln29_1_fu_523_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
reg   [7:0] b_idx_1_fu_80;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [13:0] indvar_flatten_fu_84;
wire   [13:0] add_ln28_fu_397_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire   [0:0] icmp_ln29_fu_409_p2;
wire   [7:0] add_ln28_1_fu_423_p2;
wire   [6:0] trunc_ln28_1_fu_441_p1;
wire   [6:0] empty_fu_445_p2;
wire   [5:0] lshr_ln17_1_fu_465_p4;
wire   [14:0] p_shl_fu_499_p3;
wire   [14:0] b_idx_1_cast3_fu_491_p1;
wire   [7:0] tmp_fu_533_p3;
wire   [14:0] zext_ln29_fu_540_p1;
wire   [14:0] add_ln39_fu_551_p2;
wire   [14:0] zext_ln30_fu_543_p1;
wire   [14:0] add_ln39_1_fu_560_p2;
wire   [14:0] add_ln40_fu_575_p2;
wire   [13:0] lshr_ln3_fu_580_p4;
wire   [14:0] add_ln41_fu_596_p2;
wire   [13:0] lshr_ln4_fu_601_p4;
wire   [7:0] add_ln29_fu_627_p2;
wire   [14:0] zext_ln30_1_fu_632_p1;
wire   [14:0] add_ln40_2_fu_641_p2;
wire   [14:0] add_ln45_fu_656_p2;
wire   [31:0] grp_fu_366_p3;
wire   [31:0] select_ln39_1_fu_690_p3;
wire   [0:0] icmp_ln43_fu_713_p2;
wire   [31:0] select_ln39_2_fu_727_p3;
wire   [0:0] icmp_ln43_1_fu_739_p2;
wire   [0:0] icmp_ln43_2_fu_782_p2;
wire   [31:0] select_ln43_2_fu_786_p3;
wire   [0:0] icmp_ln43_3_fu_792_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
#0 a_idx_2_fu_76 = 8'd0;
#0 b_idx_1_fu_80 = 8'd0;
#0 indvar_flatten_fu_84 = 14'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_76 <= 8'd1;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_76 <= add_ln29_1_fu_523_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_391_p2 == 1'd0))) begin
            b_idx_1_fu_80 <= select_ln28_fu_429_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_80 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_391_p2 == 1'd0))) begin
            indvar_flatten_fu_84 <= add_ln28_fu_397_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_84 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_load_reg_915 <= SEQA_0_q0;
        SEQA_1_load_reg_920 <= SEQA_1_q0;
        add_ln30_reg_910 <= add_ln30_fu_518_p2;
        empty_22_reg_896 <= empty_22_fu_506_p2;
        empty_23_reg_903 <= empty_23_fu_512_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_844 <= icmp_ln28_fu_391_p2;
        max_1_reg_1078 <= max_1_fu_797_p3;
        select_ln17_reg_848 <= select_ln17_fu_415_p3;
        select_ln28_reg_855 <= select_ln28_fu_429_p3;
        tmp_1_reg_866 <= {{empty_fu_445_p2[6:1]}};
        trunc_ln28_reg_861 <= trunc_ln28_fu_437_p1;
        trunc_ln29_reg_871 <= trunc_ln29_fu_461_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_1_reg_967 <= icmp_ln30_1_fu_636_p2;
        icmp_ln30_reg_925 <= icmp_ln30_fu_546_p2;
        lshr_ln2_reg_937 <= {{add_ln39_1_fu_560_p2[14:1]}};
        lshr_ln40_1_reg_972 <= {{add_ln40_2_fu_641_p2[14:1]}};
        lshr_ln45_1_reg_977 <= {{add_ln45_fu_656_p2[14:1]}};
        lshr_ln5_reg_962 <= {{add_ln39_fu_551_p2[14:1]}};
        trunc_ln39_reg_930 <= trunc_ln39_fu_556_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln46_reg_1046 <= icmp_ln46_fu_756_p2;
        icmp_ln48_reg_1050 <= icmp_ln48_fu_761_p2;
        max_reg_1031 <= max_fu_743_p3;
        zext_ln45_reg_1036[13 : 0] <= zext_ln45_fu_751_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        left_1_reg_1071 <= left_1_fu_777_p2;
        up_1_reg_1064 <= up_1_fu_771_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_reg_1014 <= left_fu_708_p2;
        select_ln43_reg_1019 <= select_ln43_fu_719_p3;
        up_left_1_reg_1025 <= up_left_1_fu_734_p2;
        up_left_reg_1003 <= up_left_fu_697_p2;
        up_reg_1009 <= up_fu_703_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln40_reg_992 <= select_ln40_fu_676_p3;
        select_ln41_reg_998 <= select_ln41_fu_683_p3;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_1_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_0_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_611_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address1_local = zext_ln40_1_fu_766_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln39_fu_671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_590_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_d0_local = max_1_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_0_d0_local = max_fu_743_p3;
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_1_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_611_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_address1_local = zext_ln40_1_fu_766_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln39_fu_671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_590_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = max_1_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_d0_local = max_fu_743_p3;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_844 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_0_address0_local = ptr_0_addr_4_gep_fu_358_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_0_address0_local = ptr_0_addr_5_gep_fu_342_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_0_address0_local = zext_ln45_1_fu_804_p1;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_0_address0_local = ptr_0_addr_gep_fu_268_p3;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_0_address0_local = ptr_0_addr_2_gep_fu_250_p3;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_0_address0_local = zext_ln45_reg_1036;
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930== 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        ptr_0_d0_local = 8'd60;
    end else if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        ptr_0_d0_local = 8'd94;
    end else if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        ptr_0_d0_local = 8'd92;
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930== 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd1)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_1_address0_local = ptr_1_addr_4_gep_fu_350_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_1_address0_local = ptr_1_addr_5_gep_fu_334_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0))) begin
        ptr_1_address0_local = zext_ln45_1_fu_804_p1;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_1_address0_local = ptr_1_addr_gep_fu_277_p3;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_1_address0_local = ptr_1_addr_2_gep_fu_259_p3;
    end else if (((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1))) begin
        ptr_1_address0_local = zext_ln45_reg_1036;
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930== 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        ptr_1_d0_local = 8'd60;
    end else if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        ptr_1_d0_local = 8'd94;
    end else if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        ptr_1_d0_local = 8'd92;
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_1046 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd1) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((icmp_ln28_reg_844 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_1050 == 1'd0) & (icmp_ln46_reg_1046 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln39_reg_930 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln46_1_fu_815_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd1) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930== 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln48_1_fu_819_p2 == 1'd0) & (icmp_ln46_1_fu_815_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln39_reg_930 == 1'd0)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_we0 = M_1_we0_local;
assign SEQA_0_address0 = zext_ln17_fu_475_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln17_fu_475_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQB_0_address0 = p_cast12_fu_494_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast12_fu_494_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign add_ln28_1_fu_423_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_397_p2 = (ap_sig_allocacmp_indvar_flatten_load + 14'd1);
assign add_ln29_1_fu_523_p2 = (select_ln17_reg_848 + 8'd2);
assign add_ln29_fu_627_p2 = (select_ln17_reg_848 + 8'd1);
assign add_ln30_fu_518_p2 = ($signed(trunc_ln29_reg_871) + $signed(7'd127));
assign add_ln39_1_fu_560_p2 = (zext_ln30_fu_543_p1 + empty_23_reg_903);
assign add_ln39_fu_551_p2 = (zext_ln29_fu_540_p1 + empty_22_reg_896);
assign add_ln40_2_fu_641_p2 = (zext_ln30_1_fu_632_p1 + empty_23_reg_903);
assign add_ln40_fu_575_p2 = (zext_ln29_fu_540_p1 + empty_23_reg_903);
assign add_ln41_fu_596_p2 = (zext_ln30_fu_543_p1 + empty_22_reg_896);
assign add_ln45_fu_656_p2 = (zext_ln30_1_fu_632_p1 + empty_22_reg_896);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast3_fu_491_p1 = select_ln28_reg_855;
assign empty_22_fu_506_p2 = (p_shl_fu_499_p3 + b_idx_1_cast3_fu_491_p1);
assign empty_23_fu_512_p2 = ($signed(empty_22_fu_506_p2) + $signed(15'd32639));
assign empty_fu_445_p2 = ($signed(trunc_ln28_1_fu_441_p1) + $signed(7'd127));
assign grp_fu_366_p3 = ((trunc_ln39_reg_930[0:0] == 1'b1) ? M_1_q1 : M_0_q1);
assign icmp_ln28_fu_391_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_409_p2 = ((ap_sig_allocacmp_a_idx_2_load < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_636_p2 = ((SEQA_1_load_reg_920 == tmp_fu_533_p3) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_546_p2 = ((SEQA_0_load_reg_915 == tmp_fu_533_p3) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_739_p2 = (($signed(up_left_reg_1003) > $signed(select_ln43_reg_1019)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_782_p2 = (($signed(up_1_reg_1064) > $signed(left_1_reg_1071)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_792_p2 = (($signed(up_left_1_reg_1025) > $signed(select_ln43_2_fu_786_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_713_p2 = (($signed(up_fu_703_p2) > $signed(left_fu_708_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_815_p2 = ((max_1_reg_1078 == left_1_reg_1071) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_756_p2 = ((max_fu_743_p3 == left_reg_1014) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_819_p2 = ((max_1_reg_1078 == up_1_reg_1064) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_761_p2 = ((max_fu_743_p3 == up_reg_1009) ? 1'b1 : 1'b0);
assign left_1_fu_777_p2 = ($signed(max_reg_1031) + $signed(32'd4294967295));
assign left_fu_708_p2 = ($signed(select_ln41_reg_998) + $signed(32'd4294967295));
assign lshr_ln17_1_fu_465_p4 = {{select_ln17_fu_415_p3[6:1]}};
assign lshr_ln3_fu_580_p4 = {{add_ln40_fu_575_p2[14:1]}};
assign lshr_ln4_fu_601_p4 = {{add_ln41_fu_596_p2[14:1]}};
assign max_1_fu_797_p3 = ((icmp_ln43_3_fu_792_p2[0:0] == 1'b1) ? up_left_1_reg_1025 : select_ln43_2_fu_786_p3);
assign max_fu_743_p3 = ((icmp_ln43_1_fu_739_p2[0:0] == 1'b1) ? up_left_reg_1003 : select_ln43_reg_1019);
assign p_cast12_fu_494_p1 = tmp_1_reg_866;
assign p_shl_fu_499_p3 = {{select_ln28_reg_855}, {7'd0}};
assign ptr_0_addr_2_gep_fu_250_p3 = zext_ln45_reg_1036;
assign ptr_0_addr_4_gep_fu_358_p3 = zext_ln45_1_fu_804_p1;
assign ptr_0_addr_5_gep_fu_342_p3 = zext_ln45_1_fu_804_p1;
assign ptr_0_addr_gep_fu_268_p3 = zext_ln45_reg_1036;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_2_gep_fu_259_p3 = zext_ln45_reg_1036;
assign ptr_1_addr_4_gep_fu_350_p3 = zext_ln45_1_fu_804_p1;
assign ptr_1_addr_5_gep_fu_334_p3 = zext_ln45_1_fu_804_p1;
assign ptr_1_addr_gep_fu_277_p3 = zext_ln45_reg_1036;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign select_ln17_fu_415_p3 = ((icmp_ln29_fu_409_p2[0:0] == 1'b1) ? ap_sig_allocacmp_a_idx_2_load : 8'd1);
assign select_ln28_fu_429_p3 = ((icmp_ln29_fu_409_p2[0:0] == 1'b1) ? ap_sig_allocacmp_b_idx_1_load : add_ln28_1_fu_423_p2);
assign select_ln39_1_fu_690_p3 = ((icmp_ln30_reg_925[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_2_fu_727_p3 = ((icmp_ln30_1_reg_967[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln40_fu_676_p3 = ((trunc_ln39_reg_930[0:0] == 1'b1) ? M_0_q1 : M_1_q1);
assign select_ln41_fu_683_p3 = ((trunc_ln39_reg_930[0:0] == 1'b1) ? M_0_q0 : M_1_q0);
assign select_ln43_2_fu_786_p3 = ((icmp_ln43_2_fu_782_p2[0:0] == 1'b1) ? up_1_reg_1064 : left_1_reg_1071);
assign select_ln43_fu_719_p3 = ((icmp_ln43_fu_713_p2[0:0] == 1'b1) ? up_fu_703_p2 : left_fu_708_p2);
assign tmp_fu_533_p3 = ((trunc_ln28_reg_861[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign trunc_ln28_1_fu_441_p1 = select_ln28_fu_429_p3[6:0];
assign trunc_ln28_fu_437_p1 = select_ln28_fu_429_p3[0:0];
assign trunc_ln29_fu_461_p1 = select_ln17_fu_415_p3[6:0];
assign trunc_ln39_fu_556_p1 = add_ln39_fu_551_p2[0:0];
assign up_1_fu_771_p2 = ($signed(grp_fu_366_p3) + $signed(32'd4294967295));
assign up_fu_703_p2 = ($signed(select_ln40_reg_992) + $signed(32'd4294967295));
assign up_left_1_fu_734_p2 = (select_ln39_2_fu_727_p3 + select_ln40_reg_992);
assign up_left_fu_697_p2 = (grp_fu_366_p3 + select_ln39_1_fu_690_p3);
assign zext_ln17_fu_475_p1 = lshr_ln17_1_fu_465_p4;
assign zext_ln29_fu_540_p1 = select_ln17_reg_848;
assign zext_ln30_1_fu_632_p1 = add_ln29_fu_627_p2;
assign zext_ln30_fu_543_p1 = add_ln30_reg_910;
assign zext_ln39_fu_671_p1 = lshr_ln2_reg_937;
assign zext_ln40_1_fu_766_p1 = lshr_ln40_1_reg_972;
assign zext_ln40_fu_590_p1 = lshr_ln3_fu_580_p4;
assign zext_ln41_fu_611_p1 = lshr_ln4_fu_601_p4;
assign zext_ln45_1_fu_804_p1 = lshr_ln45_1_reg_977;
assign zext_ln45_fu_751_p1 = lshr_ln5_reg_962;
always @ (posedge ap_clk) begin
    zext_ln45_reg_1036[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
