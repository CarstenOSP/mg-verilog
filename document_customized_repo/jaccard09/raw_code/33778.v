module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,exp); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [8:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [8:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [8:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [8:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [8:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [8:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [8:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [8:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_3_reg_795;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] reg_342;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_346;
reg   [31:0] reg_350;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_354;
wire   [31:0] exp_cast6_fu_386_p1;
reg   [31:0] exp_cast6_reg_775;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_787;
wire   [8:0] or_ln_fu_424_p3;
reg   [8:0] or_ln_reg_804;
reg   [31:0] b_0_load_reg_844;
reg   [31:0] b_1_load_reg_849;
reg   [31:0] b_2_load_reg_854;
reg   [31:0] b_3_load_reg_859;
reg   [31:0] b_0_load_2_reg_864;
reg   [31:0] b_1_load_2_reg_869;
reg   [31:0] b_2_load_2_reg_874;
reg   [31:0] b_3_load_2_reg_879;
wire   [1:0] trunc_ln57_1_fu_444_p1;
reg   [1:0] trunc_ln57_1_reg_884;
wire   [6:0] tmp_s_fu_451_p4;
reg   [6:0] tmp_s_reg_889;
wire    ap_block_pp0_stage3_11001;
reg   [8:0] bucket_1_addr_reg_896;
reg   [8:0] bucket_3_addr_reg_901;
wire   [9:0] add_ln57_fu_477_p2;
reg   [9:0] add_ln57_reg_906;
wire   [1:0] trunc_ln57_5_fu_483_p1;
reg   [1:0] trunc_ln57_5_reg_911;
wire   [0:0] icmp_ln58_2_fu_490_p2;
reg   [0:0] icmp_ln58_2_reg_916;
wire   [0:0] icmp_ln58_fu_496_p2;
reg   [0:0] icmp_ln58_reg_921;
wire   [1:0] trunc_ln57_2_fu_506_p1;
reg   [1:0] trunc_ln57_2_reg_925;
wire   [10:0] zext_ln57_2_fu_510_p1;
reg   [10:0] zext_ln57_2_reg_930;
reg   [8:0] bucket_0_addr_reg_937;
reg   [8:0] bucket_2_addr_reg_942;
wire   [0:0] icmp_ln58_3_fu_572_p2;
reg   [0:0] icmp_ln58_3_reg_947;
wire   [0:0] icmp_ln58_1_fu_578_p2;
reg   [0:0] icmp_ln58_1_reg_952;
wire   [1:0] trunc_ln57_6_fu_588_p1;
reg   [1:0] trunc_ln57_6_reg_956;
wire   [1:0] trunc_ln57_3_fu_618_p1;
reg   [1:0] trunc_ln57_3_reg_961;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [8:0] bucket_3_addr_19_reg_966;
reg   [8:0] bucket_1_addr_18_reg_971;
wire   [1:0] trunc_ln57_7_fu_669_p1;
reg   [1:0] trunc_ln57_7_reg_976;
reg   [8:0] bucket_0_addr_18_reg_981;
reg   [8:0] bucket_2_addr_18_reg_986;
wire   [1:0] trunc_ln57_4_fu_677_p1;
reg   [1:0] trunc_ln57_4_reg_991;
reg   [8:0] bucket_3_addr_20_reg_996;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [8:0] bucket_1_addr_19_reg_1001;
wire   [1:0] trunc_ln57_8_fu_697_p1;
reg   [1:0] trunc_ln57_8_reg_1006;
reg   [8:0] lshr_ln52_7_reg_1011;
reg   [8:0] bucket_0_addr_19_reg_1016;
reg   [8:0] bucket_2_addr_19_reg_1021;
reg   [8:0] bucket_3_addr_21_reg_1026;
reg   [8:0] bucket_1_addr_20_reg_1031;
reg   [8:0] bucket_0_addr_20_reg_1036;
reg   [8:0] bucket_2_addr_20_reg_1041;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln54_fu_406_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln57_1_fu_432_p1;
wire   [63:0] zext_ln52_fu_467_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_4_fu_536_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln52_1_fu_608_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln52_5_fu_659_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln52_2_fu_687_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln52_6_fu_723_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln52_3_fu_757_p1;
wire   [63:0] zext_ln52_7_fu_763_p1;
wire    ap_block_pp0_stage1;
reg   [9:0] blockID_fu_84;
wire   [9:0] add_ln54_fu_592_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce1_local;
reg    b_0_ce0_local;
reg    b_1_ce1_local;
reg    b_1_ce0_local;
reg    b_2_ce1_local;
reg    b_2_ce0_local;
reg    b_3_ce1_local;
reg    b_3_ce0_local;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln58_fu_564_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] grp_fu_365_p2;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage2;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
wire   [31:0] grp_fu_358_p2;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_7_fu_629_p2;
wire   [31:0] grp_fu_372_p2;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
wire   [31:0] grp_fu_379_p2;
wire   [7:0] tmp_fu_414_p4;
wire   [31:0] ashr_ln57_fu_440_p2;
wire   [8:0] lshr_ln_fu_460_p3;
wire   [9:0] zext_ln57_fu_448_p1;
wire   [31:0] ashr_ln57_4_fu_473_p2;
wire   [1:0] trunc_ln57_fu_487_p1;
wire   [31:0] ashr_ln57_1_fu_502_p2;
wire   [10:0] shl_ln_fu_513_p3;
wire   [10:0] bucket_indx_fu_520_p2;
wire   [8:0] lshr_ln52_4_fu_526_p4;
wire   [0:0] tmp_4_fu_542_p3;
wire   [31:0] select_ln58_fu_557_p3;
wire   [1:0] or_ln57_1_fu_549_p3;
wire   [31:0] ashr_ln57_5_fu_584_p2;
wire   [8:0] lshr_ln52_1_fu_602_p3;
wire   [31:0] ashr_ln57_2_fu_614_p2;
wire   [31:0] select_ln58_1_fu_622_p3;
wire   [10:0] shl_ln57_1_fu_637_p3;
wire   [10:0] bucket_indx_1_fu_644_p2;
wire   [8:0] lshr_ln52_5_fu_649_p4;
wire   [31:0] ashr_ln57_6_fu_665_p2;
wire   [31:0] ashr_ln57_3_fu_673_p2;
wire   [8:0] lshr_ln52_2_fu_681_p3;
wire   [31:0] ashr_ln57_7_fu_693_p2;
wire   [10:0] shl_ln57_2_fu_701_p3;
wire   [10:0] bucket_indx_2_fu_708_p2;
wire   [8:0] lshr_ln52_6_fu_713_p4;
wire   [10:0] shl_ln57_3_fu_729_p3;
wire   [10:0] bucket_indx_3_fu_736_p2;
wire   [8:0] lshr_ln52_3_fu_751_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_84 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_84 <= 10'd0;
    end else if (((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        blockID_fu_84 <= add_ln54_fu_592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln57_reg_906[9 : 1] <= add_ln57_fu_477_p2[9 : 1];
        bucket_1_addr_reg_896 <= zext_ln52_fu_467_p1;
        bucket_3_addr_reg_901 <= zext_ln52_fu_467_p1;
        tmp_s_reg_889 <= {{blockID_2_reg_787[8:2]}};
        trunc_ln57_5_reg_911 <= trunc_ln57_5_fu_483_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_2_reg_864 <= b_0_q0;
        b_0_load_reg_844 <= b_0_q1;
        b_1_load_2_reg_869 <= b_1_q0;
        b_1_load_reg_849 <= b_1_q1;
        b_2_load_2_reg_874 <= b_2_q0;
        b_2_load_reg_854 <= b_2_q1;
        b_3_load_2_reg_879 <= b_3_q0;
        b_3_load_reg_859 <= b_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_787 <= ap_sig_allocacmp_blockID_2;
        bucket_1_addr_20_reg_1031 <= zext_ln52_3_fu_757_p1;
        bucket_3_addr_21_reg_1026 <= zext_ln52_3_fu_757_p1;
        exp_cast6_reg_775[4 : 0] <= exp_cast6_fu_386_p1[4 : 0];
        or_ln_reg_804[8 : 1] <= or_ln_fu_424_p3[8 : 1];
        tmp_3_reg_795 <= ap_sig_allocacmp_blockID_2[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_addr_18_reg_981 <= zext_ln52_5_fu_659_p1;
        bucket_2_addr_18_reg_986 <= zext_ln52_5_fu_659_p1;
        trunc_ln57_7_reg_976 <= trunc_ln57_7_fu_669_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_addr_19_reg_1016 <= zext_ln52_6_fu_723_p1;
        bucket_2_addr_19_reg_1021 <= zext_ln52_6_fu_723_p1;
        lshr_ln52_7_reg_1011 <= {{bucket_indx_3_fu_736_p2[10:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_20_reg_1036 <= zext_ln52_7_fu_763_p1;
        bucket_2_addr_20_reg_1041 <= zext_ln52_7_fu_763_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_addr_reg_937 <= zext_ln52_4_fu_536_p1;
        bucket_2_addr_reg_942 <= zext_ln52_4_fu_536_p1;
        icmp_ln58_2_reg_916 <= icmp_ln58_2_fu_490_p2;
        icmp_ln58_reg_921 <= icmp_ln58_fu_496_p2;
        trunc_ln57_2_reg_925 <= trunc_ln57_2_fu_506_p1;
        zext_ln57_2_reg_930[9 : 1] <= zext_ln57_2_fu_510_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_addr_18_reg_971 <= zext_ln52_1_fu_608_p1;
        bucket_3_addr_19_reg_966 <= zext_ln52_1_fu_608_p1;
        trunc_ln57_3_reg_961 <= trunc_ln57_3_fu_618_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_addr_19_reg_1001 <= zext_ln52_2_fu_687_p1;
        bucket_3_addr_20_reg_996 <= zext_ln52_2_fu_687_p1;
        trunc_ln57_8_reg_1006 <= trunc_ln57_8_fu_697_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln58_1_reg_952 <= icmp_ln58_1_fu_578_p2;
        icmp_ln58_3_reg_947 <= icmp_ln58_3_fu_572_p2;
        trunc_ln57_6_reg_956 <= trunc_ln57_6_fu_588_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_342 <= bucket_1_q0;
        reg_346 <= bucket_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_350 <= bucket_0_q0;
        reg_354 <= bucket_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln57_1_reg_884 <= trunc_ln57_1_fu_444_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln57_4_reg_991 <= trunc_ln57_4_fu_677_p1;
    end
end
always @ (*) begin
    if (((tmp_3_reg_795 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce1_local = 1'b1;
    end else begin
        b_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce1_local = 1'b1;
    end else begin
        b_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_20_reg_1036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_7_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_19_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_address0_local = zext_ln52_6_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = bucket_0_addr_18_reg_981;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_address0_local = zext_ln52_5_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = bucket_0_addr_reg_937;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_address0_local = zext_ln52_4_fu_536_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_d0_local = grp_fu_372_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_d0_local = add_ln58_7_fu_629_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_20_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = zext_ln52_3_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = bucket_1_addr_19_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_address0_local = zext_ln52_2_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = bucket_1_addr_18_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_address0_local = zext_ln52_1_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = bucket_1_addr_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = zext_ln52_fu_467_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_1_d0_local = grp_fu_365_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_d0_local = add_ln58_fu_564_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_reg_921 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_20_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = zext_ln52_7_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_19_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_2_address0_local = zext_ln52_6_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_2_address0_local = bucket_2_addr_18_reg_986;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_2_address0_local = zext_ln52_5_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_address0_local = bucket_2_addr_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_2_address0_local = zext_ln52_4_fu_536_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_d0_local = grp_fu_379_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_d0_local = add_ln58_7_fu_629_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_952 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = bucket_3_addr_21_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = zext_ln52_3_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_3_address0_local = bucket_3_addr_20_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_3_address0_local = zext_ln52_2_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_3_address0_local = bucket_3_addr_19_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_3_address0_local = zext_ln52_1_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_3_address0_local = bucket_3_addr_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = zext_ln52_fu_467_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_3_d0_local = grp_fu_358_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_3_d0_local = add_ln58_fu_564_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_795 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln58_reg_921 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_reg_921 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_592_p2 = (blockID_2_reg_787 + 10'd2);
assign add_ln57_fu_477_p2 = (zext_ln57_fu_448_p1 + 10'd1);
assign add_ln58_7_fu_629_p2 = (select_ln58_1_fu_622_p3 + 32'd1);
assign add_ln58_fu_564_p2 = (select_ln58_fu_557_p3 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_502_p2 = $signed(b_1_load_reg_849) >>> exp_cast6_reg_775;
assign ashr_ln57_2_fu_614_p2 = $signed(b_2_load_reg_854) >>> exp_cast6_reg_775;
assign ashr_ln57_3_fu_673_p2 = $signed(b_3_load_reg_859) >>> exp_cast6_reg_775;
assign ashr_ln57_4_fu_473_p2 = $signed(b_0_load_2_reg_864) >>> exp_cast6_reg_775;
assign ashr_ln57_5_fu_584_p2 = $signed(b_1_load_2_reg_869) >>> exp_cast6_reg_775;
assign ashr_ln57_6_fu_665_p2 = $signed(b_2_load_2_reg_874) >>> exp_cast6_reg_775;
assign ashr_ln57_7_fu_693_p2 = $signed(b_3_load_2_reg_879) >>> exp_cast6_reg_775;
assign ashr_ln57_fu_440_p2 = $signed(b_0_load_reg_844) >>> exp_cast6_reg_775;
assign b_0_address0 = zext_ln57_1_fu_432_p1;
assign b_0_address1 = zext_ln54_fu_406_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = zext_ln57_1_fu_432_p1;
assign b_1_address1 = zext_ln54_fu_406_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign b_2_address0 = zext_ln57_1_fu_432_p1;
assign b_2_address1 = zext_ln54_fu_406_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_2_ce1 = b_2_ce1_local;
assign b_3_address0 = zext_ln57_1_fu_432_p1;
assign b_3_address1 = zext_ln54_fu_406_p1;
assign b_3_ce0 = b_3_ce0_local;
assign b_3_ce1 = b_3_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_indx_1_fu_644_p2 = (shl_ln57_1_fu_637_p3 + zext_ln57_2_reg_930);
assign bucket_indx_2_fu_708_p2 = (shl_ln57_2_fu_701_p3 + zext_ln57_2_reg_930);
assign bucket_indx_3_fu_736_p2 = (shl_ln57_3_fu_729_p3 + zext_ln57_2_reg_930);
assign bucket_indx_fu_520_p2 = (shl_ln_fu_513_p3 + zext_ln57_2_fu_510_p1);
assign exp_cast6_fu_386_p1 = exp;
assign grp_fu_358_p2 = (reg_346 + 32'd1);
assign grp_fu_365_p2 = (reg_342 + 32'd1);
assign grp_fu_372_p2 = (reg_350 + 32'd1);
assign grp_fu_379_p2 = (reg_354 + 32'd1);
assign icmp_ln58_1_fu_578_p2 = ((or_ln57_1_fu_549_p3 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln58_2_fu_490_p2 = ((trunc_ln57_fu_487_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_572_p2 = ((or_ln57_1_fu_549_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_496_p2 = ((trunc_ln57_fu_487_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln52_1_fu_602_p3 = {{trunc_ln57_2_reg_925}, {tmp_s_reg_889}};
assign lshr_ln52_2_fu_681_p3 = {{trunc_ln57_3_reg_961}, {tmp_s_reg_889}};
assign lshr_ln52_3_fu_751_p3 = {{trunc_ln57_4_reg_991}, {tmp_s_reg_889}};
assign lshr_ln52_4_fu_526_p4 = {{bucket_indx_fu_520_p2[10:2]}};
assign lshr_ln52_5_fu_649_p4 = {{bucket_indx_1_fu_644_p2[10:2]}};
assign lshr_ln52_6_fu_713_p4 = {{bucket_indx_2_fu_708_p2[10:2]}};
assign lshr_ln_fu_460_p3 = {{trunc_ln57_1_reg_884}, {tmp_s_fu_451_p4}};
assign or_ln57_1_fu_549_p3 = {{tmp_4_fu_542_p3}, {1'd1}};
assign or_ln_fu_424_p3 = {{tmp_fu_414_p4}, {1'd1}};
assign select_ln58_1_fu_622_p3 = ((icmp_ln58_3_reg_947[0:0] == 1'b1) ? reg_350 : reg_354);
assign select_ln58_fu_557_p3 = ((icmp_ln58_2_reg_916[0:0] == 1'b1) ? reg_346 : reg_342);
assign shl_ln57_1_fu_637_p3 = {{trunc_ln57_6_reg_956}, {9'd0}};
assign shl_ln57_2_fu_701_p3 = {{trunc_ln57_7_reg_976}, {9'd0}};
assign shl_ln57_3_fu_729_p3 = {{trunc_ln57_8_reg_1006}, {9'd0}};
assign shl_ln_fu_513_p3 = {{trunc_ln57_5_reg_911}, {9'd0}};
assign tmp_4_fu_542_p3 = blockID_2_reg_787[32'd1];
assign tmp_fu_414_p4 = {{ap_sig_allocacmp_blockID_2[8:1]}};
assign tmp_s_fu_451_p4 = {{blockID_2_reg_787[8:2]}};
assign trunc_ln57_1_fu_444_p1 = ashr_ln57_fu_440_p2[1:0];
assign trunc_ln57_2_fu_506_p1 = ashr_ln57_1_fu_502_p2[1:0];
assign trunc_ln57_3_fu_618_p1 = ashr_ln57_2_fu_614_p2[1:0];
assign trunc_ln57_4_fu_677_p1 = ashr_ln57_3_fu_673_p2[1:0];
assign trunc_ln57_5_fu_483_p1 = ashr_ln57_4_fu_473_p2[1:0];
assign trunc_ln57_6_fu_588_p1 = ashr_ln57_5_fu_584_p2[1:0];
assign trunc_ln57_7_fu_669_p1 = ashr_ln57_6_fu_665_p2[1:0];
assign trunc_ln57_8_fu_697_p1 = ashr_ln57_7_fu_693_p2[1:0];
assign trunc_ln57_fu_487_p1 = blockID_2_reg_787[1:0];
assign zext_ln52_1_fu_608_p1 = lshr_ln52_1_fu_602_p3;
assign zext_ln52_2_fu_687_p1 = lshr_ln52_2_fu_681_p3;
assign zext_ln52_3_fu_757_p1 = lshr_ln52_3_fu_751_p3;
assign zext_ln52_4_fu_536_p1 = lshr_ln52_4_fu_526_p4;
assign zext_ln52_5_fu_659_p1 = lshr_ln52_5_fu_649_p4;
assign zext_ln52_6_fu_723_p1 = lshr_ln52_6_fu_713_p4;
assign zext_ln52_7_fu_763_p1 = lshr_ln52_7_reg_1011;
assign zext_ln52_fu_467_p1 = lshr_ln_fu_460_p3;
assign zext_ln54_fu_406_p1 = ap_sig_allocacmp_blockID_2;
assign zext_ln57_1_fu_432_p1 = or_ln_fu_424_p3;
assign zext_ln57_2_fu_510_p1 = add_ln57_reg_906;
assign zext_ln57_fu_448_p1 = or_ln_reg_804;
always @ (posedge ap_clk) begin
    exp_cast6_reg_775[31:5] <= 27'b000000000000000000000000000;
    or_ln_reg_804[0] <= 1'b1;
    add_ln57_reg_906[0] <= 1'b0;
    zext_ln57_2_reg_930[0] <= 1'b0;
    zext_ln57_2_reg_930[10] <= 1'b0;
end
endmodule 