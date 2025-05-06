
module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_29_reload,B_19_reload,C_28_reload,D_29_reload,E_19_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,A_31_out,A_31_out_ap_vld,B_24_out,B_24_out_ap_vld,C_30_out,C_30_out_ap_vld,D_31_out,D_31_out_ap_vld,E_24_out,E_24_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_29_reload;
input  [31:0] B_19_reload;
input  [31:0] C_28_reload;
input  [31:0] D_29_reload;
input  [31:0] E_19_reload;
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [31:0] A_31_out;
output   A_31_out_ap_vld;
output  [31:0] B_24_out;
output   B_24_out_ap_vld;
output  [31:0] C_30_out;
output   C_30_out_ap_vld;
output  [31:0] D_31_out;
output   D_31_out_ap_vld;
output  [31:0] E_24_out;
output   E_24_out_ap_vld;
reg ap_idle;
reg A_31_out_ap_vld;
reg B_24_out_ap_vld;
reg C_30_out_ap_vld;
reg D_31_out_ap_vld;
reg E_24_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_801;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_795;
wire   [0:0] icmp_ln128_fu_316_p2;
reg   [31:0] E_1_load_reg_845;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_2_load_reg_850;
wire   [31:0] add_ln130_1_fu_385_p2;
reg   [31:0] add_ln130_1_reg_856;
wire   [31:0] add_ln130_fu_391_p2;
reg   [31:0] add_ln130_reg_861;
wire   [1:0] trunc_ln130_1_fu_397_p1;
reg   [1:0] trunc_ln130_1_reg_866;
reg   [29:0] lshr_ln130_1_reg_871;
wire   [31:0] select_ln130_1_fu_411_p3;
reg   [31:0] select_ln130_1_reg_876;
wire   [31:0] select_ln130_2_fu_419_p3;
reg   [31:0] select_ln130_2_reg_881;
wire   [31:0] select_ln130_3_fu_427_p3;
reg   [31:0] select_ln130_3_reg_886;
wire   [31:0] temp_fu_465_p2;
reg   [31:0] temp_reg_891;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_470_p3;
reg   [31:0] C_reg_896;
wire   [31:0] add_ln130_5_fu_509_p2;
reg   [31:0] add_ln130_5_reg_902;
wire   [31:0] add_ln130_4_fu_514_p2;
reg   [31:0] add_ln130_4_reg_907;
wire   [1:0] trunc_ln130_3_fu_520_p1;
reg   [1:0] trunc_ln130_3_reg_912;
reg   [29:0] lshr_ln130_3_reg_917;
wire   [31:0] add_ln130_10_fu_539_p2;
reg   [31:0] add_ln130_10_reg_922;
wire   [1:0] trunc_ln130_5_fu_544_p1;
reg   [1:0] trunc_ln130_5_reg_927;
reg   [29:0] lshr_ln130_5_reg_932;
wire   [26:0] trunc_ln130_4_fu_573_p1;
reg   [26:0] trunc_ln130_4_reg_937;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln130_4_reg_942;
wire   [31:0] xor_ln130_5_fu_592_p2;
reg   [31:0] xor_ln130_5_reg_947;
wire   [31:0] xor_ln130_7_fu_609_p2;
reg   [31:0] xor_ln130_7_reg_952;
wire   [26:0] trunc_ln130_6_fu_668_p1;
reg   [26:0] trunc_ln130_6_reg_957;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln130_6_reg_962;
wire   [31:0] add_ln130_14_fu_708_p2;
reg   [31:0] add_ln130_14_reg_967;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_332_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_90;
wire   [31:0] C_3_fu_567_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_94;
wire   [31:0] C_4_fu_597_p3;
reg   [31:0] B_fu_98;
wire   [31:0] temp_2_fu_662_p2;
reg   [31:0] B_1_fu_102;
wire   [31:0] temp_3_fu_718_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_106;
wire   [31:0] C_2_fu_629_p3;
reg   [6:0] i_fu_110;
wire   [6:0] add_ln128_fu_682_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
wire   [3:0] lshr_ln100_7_fu_322_p4;
wire   [2:0] trunc_ln128_fu_356_p1;
wire   [0:0] icmp_ln130_fu_359_p2;
wire   [31:0] xor_ln130_fu_373_p2;
wire   [31:0] select_ln130_fu_365_p3;
wire   [31:0] xor_ln130_1_fu_379_p2;
wire   [26:0] trunc_ln130_fu_438_p1;
wire   [4:0] lshr_ln6_fu_442_p4;
wire   [31:0] or_ln2_fu_452_p3;
wire   [31:0] add_ln130_2_fu_460_p2;
wire   [31:0] xor_ln130_2_fu_490_p2;
wire   [26:0] trunc_ln130_2_fu_476_p1;
wire   [4:0] lshr_ln130_2_fu_480_p4;
wire   [31:0] or_ln130_2_fu_501_p3;
wire   [31:0] xor_ln130_3_fu_496_p2;
wire   [31:0] add_ln130_9_fu_534_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln130_6_fu_558_p2;
wire   [31:0] temp_1_fu_562_p2;
wire   [31:0] xor_ln130_4_fu_587_p2;
wire   [31:0] xor_ln130_6_fu_603_p2;
wire   [1:0] trunc_ln130_7_fu_615_p1;
wire   [29:0] lshr_ln130_7_fu_619_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln130_8_fu_658_p2;
wire   [31:0] or_ln130_4_fu_652_p3;
wire   [31:0] or_ln130_6_fu_697_p3;
wire   [31:0] add_ln130_13_fu_703_p2;
wire   [31:0] add_ln130_12_fu_714_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_90 = 32'd0;
#0 E_1_fu_94 = 32'd0;
#0 B_fu_98 = 32'd0;
#0 B_1_fu_102 = 32'd0;
#0 E_2_fu_106 = 32'd0;
#0 i_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_102 <= A_29_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_102 <= temp_3_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_98 <= B_19_reload;
    end else if (((icmp_ln128_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_98 <= temp_2_fu_662_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_94 <= D_29_reload;
    end else if (((icmp_ln128_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_94 <= C_4_fu_597_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_106 <= C_28_reload;
    end else if (((icmp_ln128_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_2_fu_106 <= C_2_fu_629_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_90 <= E_19_reload;
    end else if (((icmp_ln128_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_90 <= C_3_fu_567_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_110 <= 7'd60;
    end else if (((icmp_ln128_reg_801 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_110 <= add_ln128_fu_682_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_896 <= C_fu_470_p3;
        add_ln130_10_reg_922 <= add_ln130_10_fu_539_p2;
        add_ln130_4_reg_907 <= add_ln130_4_fu_514_p2;
        add_ln130_5_reg_902 <= add_ln130_5_fu_509_p2;
        lshr_ln130_3_reg_917 <= {{B_1_fu_102[31:2]}};
        lshr_ln130_5_reg_932 <= {{temp_fu_465_p2[31:2]}};
        temp_reg_891 <= temp_fu_465_p2;
        trunc_ln130_3_reg_912 <= trunc_ln130_3_fu_520_p1;
        trunc_ln130_5_reg_927 <= trunc_ln130_5_fu_544_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_load_reg_845 <= E_1_fu_94;
        E_2_load_reg_850 <= E_2_fu_106;
        add_ln130_1_reg_856 <= add_ln130_1_fu_385_p2;
        add_ln130_reg_861 <= add_ln130_fu_391_p2;
        lshr_ln130_1_reg_871 <= {{B_fu_98[31:2]}};
        select_ln130_1_reg_876 <= select_ln130_1_fu_411_p3;
        select_ln130_2_reg_881 <= select_ln130_2_fu_419_p3;
        select_ln130_3_reg_886 <= select_ln130_3_fu_427_p3;
        trunc_ln130_1_reg_866 <= trunc_ln130_1_fu_397_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_14_reg_967 <= add_ln130_14_fu_708_p2;
        i_1_reg_795 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_801 <= icmp_ln128_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln130_4_reg_942 <= {{temp_1_fu_562_p2[31:27]}};
        trunc_ln130_4_reg_937 <= trunc_ln130_4_fu_573_p1;
        xor_ln130_5_reg_947 <= xor_ln130_5_fu_592_p2;
        xor_ln130_7_reg_952 <= xor_ln130_7_fu_609_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_6_reg_962 <= {{temp_2_fu_662_p2[31:27]}};
        trunc_ln130_6_reg_957 <= trunc_ln130_6_fu_668_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_31_out_ap_vld = 1'b1;
    end else begin
        A_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_24_out_ap_vld = 1'b1;
    end else begin
        B_24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_30_out_ap_vld = 1'b1;
    end else begin
        C_30_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_31_out_ap_vld = 1'b1;
    end else begin
        D_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_24_out_ap_vld = 1'b1;
    end else begin
        E_24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_801 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_110;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_31_out = B_1_fu_102;
assign B_24_out = B_fu_98;
assign C_2_fu_629_p3 = {{trunc_ln130_7_fu_615_p1}, {lshr_ln130_7_fu_619_p4}};
assign C_30_out = E_2_fu_106;
assign C_3_fu_567_p3 = {{trunc_ln130_3_reg_912}, {lshr_ln130_3_reg_917}};
assign C_4_fu_597_p3 = {{trunc_ln130_5_reg_927}, {lshr_ln130_5_reg_932}};
assign C_fu_470_p3 = {{trunc_ln130_1_reg_866}, {lshr_ln130_1_reg_871}};
assign D_31_out = E_1_fu_94;
assign E_24_out = E_fu_90;
assign W_1_address0 = zext_ln100_fu_332_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_332_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_332_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_332_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_332_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_332_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_332_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_332_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_682_p2 = (i_1_reg_795 + 7'd4);
assign add_ln130_10_fu_539_p2 = (add_ln130_9_fu_534_p2 + E_2_load_reg_850);
assign add_ln130_12_fu_714_p2 = (C_reg_896 + xor_ln130_7_reg_952);
assign add_ln130_13_fu_703_p2 = ($signed(select_ln130_3_reg_886) + $signed(32'd3395469782));
assign add_ln130_14_fu_708_p2 = (or_ln130_6_fu_697_p3 + add_ln130_13_fu_703_p2);
assign add_ln130_1_fu_385_p2 = ($signed(select_ln130_fu_365_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_460_p2 = (add_ln130_1_reg_856 + or_ln2_fu_452_p3);
assign add_ln130_4_fu_514_p2 = (or_ln130_2_fu_501_p3 + xor_ln130_3_fu_496_p2);
assign add_ln130_5_fu_509_p2 = ($signed(select_ln130_1_reg_876) + $signed(32'd3395469782));
assign add_ln130_6_fu_558_p2 = (add_ln130_5_reg_902 + E_1_load_reg_845);
assign add_ln130_8_fu_658_p2 = (add_ln130_10_reg_922 + xor_ln130_5_reg_947);
assign add_ln130_9_fu_534_p2 = ($signed(select_ln130_2_reg_881) + $signed(32'd3395469782));
assign add_ln130_fu_391_p2 = (xor_ln130_1_fu_379_p2 + E_fu_90);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_316_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign icmp_ln130_fu_359_p2 = ((trunc_ln128_fu_356_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln100_7_fu_322_p4 = {{ap_sig_allocacmp_i_1[6:3]}};
assign lshr_ln130_2_fu_480_p4 = {{temp_fu_465_p2[31:27]}};
assign lshr_ln130_7_fu_619_p4 = {{temp_1_fu_562_p2[31:2]}};
assign lshr_ln6_fu_442_p4 = {{B_1_fu_102[31:27]}};
assign or_ln130_2_fu_501_p3 = {{trunc_ln130_2_fu_476_p1}, {lshr_ln130_2_fu_480_p4}};
assign or_ln130_4_fu_652_p3 = {{trunc_ln130_4_reg_937}, {lshr_ln130_4_reg_942}};
assign or_ln130_6_fu_697_p3 = {{trunc_ln130_6_reg_957}, {lshr_ln130_6_reg_962}};
assign or_ln2_fu_452_p3 = {{trunc_ln130_fu_438_p1}, {lshr_ln6_fu_442_p4}};
assign select_ln130_1_fu_411_p3 = ((icmp_ln130_fu_359_p2[0:0] == 1'b1) ? W_5_q0 : W_1_q0);
assign select_ln130_2_fu_419_p3 = ((icmp_ln130_fu_359_p2[0:0] == 1'b1) ? W_6_q0 : W_2_q0);
assign select_ln130_3_fu_427_p3 = ((icmp_ln130_fu_359_p2[0:0] == 1'b1) ? W_7_q0 : W_3_q0);
assign select_ln130_fu_365_p3 = ((icmp_ln130_fu_359_p2[0:0] == 1'b1) ? W_4_q0 : W_q0);
assign temp_1_fu_562_p2 = (add_ln130_4_reg_907 + add_ln130_6_fu_558_p2);
assign temp_2_fu_662_p2 = (add_ln130_8_fu_658_p2 + or_ln130_4_fu_652_p3);
assign temp_3_fu_718_p2 = (add_ln130_14_reg_967 + add_ln130_12_fu_714_p2);
assign temp_fu_465_p2 = (add_ln130_reg_861 + add_ln130_2_fu_460_p2);
assign trunc_ln128_fu_356_p1 = i_1_reg_795[2:0];
assign trunc_ln130_1_fu_397_p1 = B_fu_98[1:0];
assign trunc_ln130_2_fu_476_p1 = temp_fu_465_p2[26:0];
assign trunc_ln130_3_fu_520_p1 = B_1_fu_102[1:0];
assign trunc_ln130_4_fu_573_p1 = temp_1_fu_562_p2[26:0];
assign trunc_ln130_5_fu_544_p1 = temp_fu_465_p2[1:0];
assign trunc_ln130_6_fu_668_p1 = temp_2_fu_662_p2[26:0];
assign trunc_ln130_7_fu_615_p1 = temp_1_fu_562_p2[1:0];
assign trunc_ln130_fu_438_p1 = B_1_fu_102[26:0];
assign xor_ln130_1_fu_379_p2 = (xor_ln130_fu_373_p2 ^ E_2_fu_106);
assign xor_ln130_2_fu_490_p2 = (C_fu_470_p3 ^ B_1_fu_102);
assign xor_ln130_3_fu_496_p2 = (xor_ln130_2_fu_490_p2 ^ E_2_load_reg_850);
assign xor_ln130_4_fu_587_p2 = (temp_reg_891 ^ C_3_fu_567_p3);
assign xor_ln130_5_fu_592_p2 = (xor_ln130_4_fu_587_p2 ^ C_reg_896);
assign xor_ln130_6_fu_603_p2 = (temp_1_fu_562_p2 ^ C_3_fu_567_p3);
assign xor_ln130_7_fu_609_p2 = (xor_ln130_6_fu_603_p2 ^ C_4_fu_597_p3);
assign xor_ln130_fu_373_p2 = (E_1_fu_94 ^ B_fu_98);
assign zext_ln100_fu_332_p1 = lshr_ln100_7_fu_322_p4;
endmodule 
