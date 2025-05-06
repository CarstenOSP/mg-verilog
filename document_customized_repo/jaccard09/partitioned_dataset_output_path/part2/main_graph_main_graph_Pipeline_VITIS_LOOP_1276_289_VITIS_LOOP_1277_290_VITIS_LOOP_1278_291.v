
module main_graph_main_graph_Pipeline_VITIS_LOOP_1276_289_VITIS_LOOP_1277_290_VITIS_LOOP_1278_291 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v26_address1,v26_ce1,v26_we1,v26_d1,v26_1_address1,v26_1_ce1,v26_1_we1,v26_1_d1,v26_2_address1,v26_2_ce1,v26_2_we1,v26_2_d1,v26_3_address1,v26_3_ce1,v26_3_we1,v26_3_d1,v26_4_address1,v26_4_ce1,v26_4_we1,v26_4_d1,v26_5_address1,v26_5_ce1,v26_5_we1,v26_5_d1,v26_6_address1,v26_6_ce1,v26_6_we1,v26_6_d1,v26_7_address1,v26_7_ce1,v26_7_we1,v26_7_d1,v26_8_address1,v26_8_ce1,v26_8_we1,v26_8_d1,v26_9_address1,v26_9_ce1,v26_9_we1,v26_9_d1,v26_10_address1,v26_10_ce1,v26_10_we1,v26_10_d1,v26_11_address1,v26_11_ce1,v26_11_we1,v26_11_d1,v26_12_address1,v26_12_ce1,v26_12_we1,v26_12_d1,v26_13_address1,v26_13_ce1,v26_13_we1,v26_13_d1,v26_14_address1,v26_14_ce1,v26_14_we1,v26_14_d1,v26_15_address1,v26_15_ce1,v26_15_we1,v26_15_d1,v27_address0,v27_ce0,v27_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v26_address1;
output   v26_ce1;
output   v26_we1;
output  [6:0] v26_d1;
output  [8:0] v26_1_address1;
output   v26_1_ce1;
output   v26_1_we1;
output  [6:0] v26_1_d1;
output  [8:0] v26_2_address1;
output   v26_2_ce1;
output   v26_2_we1;
output  [6:0] v26_2_d1;
output  [8:0] v26_3_address1;
output   v26_3_ce1;
output   v26_3_we1;
output  [6:0] v26_3_d1;
output  [8:0] v26_4_address1;
output   v26_4_ce1;
output   v26_4_we1;
output  [6:0] v26_4_d1;
output  [8:0] v26_5_address1;
output   v26_5_ce1;
output   v26_5_we1;
output  [6:0] v26_5_d1;
output  [8:0] v26_6_address1;
output   v26_6_ce1;
output   v26_6_we1;
output  [6:0] v26_6_d1;
output  [8:0] v26_7_address1;
output   v26_7_ce1;
output   v26_7_we1;
output  [6:0] v26_7_d1;
output  [8:0] v26_8_address1;
output   v26_8_ce1;
output   v26_8_we1;
output  [6:0] v26_8_d1;
output  [8:0] v26_9_address1;
output   v26_9_ce1;
output   v26_9_we1;
output  [6:0] v26_9_d1;
output  [8:0] v26_10_address1;
output   v26_10_ce1;
output   v26_10_we1;
output  [6:0] v26_10_d1;
output  [8:0] v26_11_address1;
output   v26_11_ce1;
output   v26_11_we1;
output  [6:0] v26_11_d1;
output  [8:0] v26_12_address1;
output   v26_12_ce1;
output   v26_12_we1;
output  [6:0] v26_12_d1;
output  [8:0] v26_13_address1;
output   v26_13_ce1;
output   v26_13_we1;
output  [6:0] v26_13_d1;
output  [8:0] v26_14_address1;
output   v26_14_ce1;
output   v26_14_we1;
output  [6:0] v26_14_d1;
output  [8:0] v26_15_address1;
output   v26_15_ce1;
output   v26_15_we1;
output  [6:0] v26_15_d1;
output  [12:0] v27_address0;
output   v27_ce0;
input  [7:0] v27_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1276_fu_438_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] select_ln1276_1_fu_497_p3;
reg   [9:0] select_ln1276_1_reg_723;
reg   [9:0] select_ln1276_1_reg_723_pp0_iter2_reg;
wire   [2:0] v671_mid2_fu_521_p3;
reg   [2:0] v671_mid2_reg_728;
wire   [10:0] add_ln1279_fu_549_p2;
reg   [10:0] add_ln1279_reg_733;
wire   [1:0] trunc_ln1277_1_fu_555_p1;
reg   [1:0] trunc_ln1277_1_reg_738;
reg   [1:0] trunc_ln1277_1_reg_738_pp0_iter2_reg;
wire   [1:0] trunc_ln1278_fu_559_p1;
reg   [1:0] trunc_ln1278_reg_742;
reg   [1:0] trunc_ln1278_reg_742_pp0_iter2_reg;
wire   [63:0] zext_ln1279_2_fu_624_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1276_fu_629_p1;
reg   [2:0] v671_fu_102;
wire   [2:0] add_ln1278_fu_563_p2;
wire    ap_loop_init;
reg   [2:0] v670_fu_106;
wire   [2:0] select_ln1277_fu_529_p3;
reg   [5:0] indvar_flatten3383_fu_110;
wire   [5:0] select_ln1277_1_fu_575_p3;
reg   [9:0] v669_fu_114;
reg   [13:0] indvar_flatten3396_fu_118;
wire   [13:0] add_ln1276_1_fu_444_p2;
reg    v27_ce0_local;
reg    v26_10_we1_local;
wire   [6:0] v674_fu_660_p3;
reg    v26_10_ce1_local;
reg    v26_9_we1_local;
reg    v26_9_ce1_local;
reg    v26_8_we1_local;
reg    v26_8_ce1_local;
reg    v26_11_we1_local;
reg    v26_11_ce1_local;
reg    v26_6_we1_local;
reg    v26_6_ce1_local;
reg    v26_5_we1_local;
reg    v26_5_ce1_local;
reg    v26_4_we1_local;
reg    v26_4_ce1_local;
reg    v26_7_we1_local;
reg    v26_7_ce1_local;
reg    v26_2_we1_local;
reg    v26_2_ce1_local;
reg    v26_1_we1_local;
reg    v26_1_ce1_local;
reg    v26_we1_local;
reg    v26_ce1_local;
reg    v26_3_we1_local;
reg    v26_3_ce1_local;
reg    v26_14_we1_local;
reg    v26_14_ce1_local;
reg    v26_13_we1_local;
reg    v26_13_ce1_local;
reg    v26_12_we1_local;
reg    v26_12_ce1_local;
reg    v26_15_we1_local;
reg    v26_15_ce1_local;
wire   [0:0] icmp_ln1277_fu_465_p2;
wire   [0:0] icmp_ln1278_fu_485_p2;
wire   [0:0] xor_ln1276_fu_479_p2;
wire   [9:0] add_ln1276_fu_459_p2;
wire   [2:0] select_ln1276_fu_471_p3;
wire   [0:0] and_ln1276_fu_491_p2;
wire   [0:0] empty_fu_515_p2;
wire   [2:0] add_ln1277_fu_509_p2;
wire   [8:0] trunc_ln1277_fu_505_p1;
wire   [10:0] tmp_s_fu_537_p3;
wire   [10:0] zext_ln1279_fu_545_p1;
wire   [5:0] add_ln1277_1_fu_569_p2;
wire   [12:0] tmp_fu_608_p3;
wire   [12:0] zext_ln1279_1_fu_615_p1;
wire   [12:0] add_ln1279_1_fu_618_p2;
wire   [0:0] v673_fu_652_p3;
wire   [6:0] trunc_ln1279_fu_648_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 v671_fu_102 = 3'd0;
#0 v670_fu_106 = 3'd0;
#0 indvar_flatten3383_fu_110 = 6'd0;
#0 v669_fu_114 = 10'd0;
#0 indvar_flatten3396_fu_118 = 14'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten3383_fu_110 <= 6'd0;
        end else if (((icmp_ln1276_fu_438_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten3383_fu_110 <= select_ln1277_1_fu_575_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten3396_fu_118 <= 14'd0;
        end else if (((icmp_ln1276_fu_438_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten3396_fu_118 <= add_ln1276_1_fu_444_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v669_fu_114 <= 10'd0;
        end else if (((icmp_ln1276_fu_438_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v669_fu_114 <= select_ln1276_1_fu_497_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v670_fu_106 <= 3'd0;
        end else if (((icmp_ln1276_fu_438_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v670_fu_106 <= select_ln1277_fu_529_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v671_fu_102 <= 3'd0;
        end else if (((icmp_ln1276_fu_438_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v671_fu_102 <= add_ln1278_fu_563_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1279_reg_733 <= add_ln1279_fu_549_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        select_ln1276_1_reg_723 <= select_ln1276_1_fu_497_p3;
        trunc_ln1277_1_reg_738 <= trunc_ln1277_1_fu_555_p1;
        trunc_ln1278_reg_742 <= trunc_ln1278_fu_559_p1;
        v671_mid2_reg_728 <= v671_mid2_fu_521_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        select_ln1276_1_reg_723_pp0_iter2_reg <= select_ln1276_1_reg_723;
        trunc_ln1277_1_reg_738_pp0_iter2_reg <= trunc_ln1277_1_reg_738;
        trunc_ln1278_reg_742_pp0_iter2_reg <= trunc_ln1278_reg_742;
    end
end
always @ (*) begin
    if (((icmp_ln1276_fu_438_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_10_ce1_local = 1'b1;
    end else begin
        v26_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd2) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd2))) begin
        v26_10_we1_local = 1'b1;
    end else begin
        v26_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_11_ce1_local = 1'b1;
    end else begin
        v26_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd3) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd2))) begin
        v26_11_we1_local = 1'b1;
    end else begin
        v26_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_12_ce1_local = 1'b1;
    end else begin
        v26_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd0) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd3))) begin
        v26_12_we1_local = 1'b1;
    end else begin
        v26_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_13_ce1_local = 1'b1;
    end else begin
        v26_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd1) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd3))) begin
        v26_13_we1_local = 1'b1;
    end else begin
        v26_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_14_ce1_local = 1'b1;
    end else begin
        v26_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd2) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd3))) begin
        v26_14_we1_local = 1'b1;
    end else begin
        v26_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_15_ce1_local = 1'b1;
    end else begin
        v26_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd3) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd3))) begin
        v26_15_we1_local = 1'b1;
    end else begin
        v26_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_1_ce1_local = 1'b1;
    end else begin
        v26_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd1) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd0))) begin
        v26_1_we1_local = 1'b1;
    end else begin
        v26_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_2_ce1_local = 1'b1;
    end else begin
        v26_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd2) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd0))) begin
        v26_2_we1_local = 1'b1;
    end else begin
        v26_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_3_ce1_local = 1'b1;
    end else begin
        v26_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd3) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd0))) begin
        v26_3_we1_local = 1'b1;
    end else begin
        v26_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_4_ce1_local = 1'b1;
    end else begin
        v26_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd0) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd1))) begin
        v26_4_we1_local = 1'b1;
    end else begin
        v26_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_5_ce1_local = 1'b1;
    end else begin
        v26_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd1) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd1))) begin
        v26_5_we1_local = 1'b1;
    end else begin
        v26_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_6_ce1_local = 1'b1;
    end else begin
        v26_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd2) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd1))) begin
        v26_6_we1_local = 1'b1;
    end else begin
        v26_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_7_ce1_local = 1'b1;
    end else begin
        v26_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd3) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd1))) begin
        v26_7_we1_local = 1'b1;
    end else begin
        v26_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_8_ce1_local = 1'b1;
    end else begin
        v26_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd0) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd2))) begin
        v26_8_we1_local = 1'b1;
    end else begin
        v26_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_9_ce1_local = 1'b1;
    end else begin
        v26_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd1) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd2))) begin
        v26_9_we1_local = 1'b1;
    end else begin
        v26_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v26_ce1_local = 1'b1;
    end else begin
        v26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln1278_reg_742_pp0_iter2_reg == 2'd0) & (trunc_ln1277_1_reg_738_pp0_iter2_reg == 2'd0))) begin
        v26_we1_local = 1'b1;
    end else begin
        v26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v27_ce0_local = 1'b1;
    end else begin
        v27_ce0_local = 1'b0;
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
assign add_ln1276_1_fu_444_p2 = (indvar_flatten3396_fu_118 + 14'd1);
assign add_ln1276_fu_459_p2 = (v669_fu_114 + 10'd1);
assign add_ln1277_1_fu_569_p2 = (indvar_flatten3383_fu_110 + 6'd1);
assign add_ln1277_fu_509_p2 = (select_ln1276_fu_471_p3 + 3'd1);
assign add_ln1278_fu_563_p2 = (v671_mid2_fu_521_p3 + 3'd1);
assign add_ln1279_1_fu_618_p2 = (tmp_fu_608_p3 + zext_ln1279_1_fu_615_p1);
assign add_ln1279_fu_549_p2 = (tmp_s_fu_537_p3 + zext_ln1279_fu_545_p1);
assign and_ln1276_fu_491_p2 = (xor_ln1276_fu_479_p2 & icmp_ln1278_fu_485_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_515_p2 = (icmp_ln1277_fu_465_p2 | and_ln1276_fu_491_p2);
assign icmp_ln1276_fu_438_p2 = ((indvar_flatten3396_fu_118 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln1277_fu_465_p2 = ((indvar_flatten3383_fu_110 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln1278_fu_485_p2 = ((v671_fu_102 == 3'd4) ? 1'b1 : 1'b0);
assign select_ln1276_1_fu_497_p3 = ((icmp_ln1277_fu_465_p2[0:0] == 1'b1) ? add_ln1276_fu_459_p2 : v669_fu_114);
assign select_ln1276_fu_471_p3 = ((icmp_ln1277_fu_465_p2[0:0] == 1'b1) ? 3'd0 : v670_fu_106);
assign select_ln1277_1_fu_575_p3 = ((icmp_ln1277_fu_465_p2[0:0] == 1'b1) ? 6'd1 : add_ln1277_1_fu_569_p2);
assign select_ln1277_fu_529_p3 = ((and_ln1276_fu_491_p2[0:0] == 1'b1) ? add_ln1277_fu_509_p2 : select_ln1276_fu_471_p3);
assign tmp_fu_608_p3 = {{add_ln1279_reg_733}, {2'd0}};
assign tmp_s_fu_537_p3 = {{trunc_ln1277_fu_505_p1}, {2'd0}};
assign trunc_ln1277_1_fu_555_p1 = select_ln1277_fu_529_p3[1:0];
assign trunc_ln1277_fu_505_p1 = select_ln1276_1_fu_497_p3[8:0];
assign trunc_ln1278_fu_559_p1 = v671_mid2_fu_521_p3[1:0];
assign trunc_ln1279_fu_648_p1 = v27_q0[6:0];
assign v26_10_address1 = zext_ln1276_fu_629_p1;
assign v26_10_ce1 = v26_10_ce1_local;
assign v26_10_d1 = v674_fu_660_p3;
assign v26_10_we1 = v26_10_we1_local;
assign v26_11_address1 = zext_ln1276_fu_629_p1;
assign v26_11_ce1 = v26_11_ce1_local;
assign v26_11_d1 = v674_fu_660_p3;
assign v26_11_we1 = v26_11_we1_local;
assign v26_12_address1 = zext_ln1276_fu_629_p1;
assign v26_12_ce1 = v26_12_ce1_local;
assign v26_12_d1 = v674_fu_660_p3;
assign v26_12_we1 = v26_12_we1_local;
assign v26_13_address1 = zext_ln1276_fu_629_p1;
assign v26_13_ce1 = v26_13_ce1_local;
assign v26_13_d1 = v674_fu_660_p3;
assign v26_13_we1 = v26_13_we1_local;
assign v26_14_address1 = zext_ln1276_fu_629_p1;
assign v26_14_ce1 = v26_14_ce1_local;
assign v26_14_d1 = v674_fu_660_p3;
assign v26_14_we1 = v26_14_we1_local;
assign v26_15_address1 = zext_ln1276_fu_629_p1;
assign v26_15_ce1 = v26_15_ce1_local;
assign v26_15_d1 = v674_fu_660_p3;
assign v26_15_we1 = v26_15_we1_local;
assign v26_1_address1 = zext_ln1276_fu_629_p1;
assign v26_1_ce1 = v26_1_ce1_local;
assign v26_1_d1 = v674_fu_660_p3;
assign v26_1_we1 = v26_1_we1_local;
assign v26_2_address1 = zext_ln1276_fu_629_p1;
assign v26_2_ce1 = v26_2_ce1_local;
assign v26_2_d1 = v674_fu_660_p3;
assign v26_2_we1 = v26_2_we1_local;
assign v26_3_address1 = zext_ln1276_fu_629_p1;
assign v26_3_ce1 = v26_3_ce1_local;
assign v26_3_d1 = v674_fu_660_p3;
assign v26_3_we1 = v26_3_we1_local;
assign v26_4_address1 = zext_ln1276_fu_629_p1;
assign v26_4_ce1 = v26_4_ce1_local;
assign v26_4_d1 = v674_fu_660_p3;
assign v26_4_we1 = v26_4_we1_local;
assign v26_5_address1 = zext_ln1276_fu_629_p1;
assign v26_5_ce1 = v26_5_ce1_local;
assign v26_5_d1 = v674_fu_660_p3;
assign v26_5_we1 = v26_5_we1_local;
assign v26_6_address1 = zext_ln1276_fu_629_p1;
assign v26_6_ce1 = v26_6_ce1_local;
assign v26_6_d1 = v674_fu_660_p3;
assign v26_6_we1 = v26_6_we1_local;
assign v26_7_address1 = zext_ln1276_fu_629_p1;
assign v26_7_ce1 = v26_7_ce1_local;
assign v26_7_d1 = v674_fu_660_p3;
assign v26_7_we1 = v26_7_we1_local;
assign v26_8_address1 = zext_ln1276_fu_629_p1;
assign v26_8_ce1 = v26_8_ce1_local;
assign v26_8_d1 = v674_fu_660_p3;
assign v26_8_we1 = v26_8_we1_local;
assign v26_9_address1 = zext_ln1276_fu_629_p1;
assign v26_9_ce1 = v26_9_ce1_local;
assign v26_9_d1 = v674_fu_660_p3;
assign v26_9_we1 = v26_9_we1_local;
assign v26_address1 = zext_ln1276_fu_629_p1;
assign v26_ce1 = v26_ce1_local;
assign v26_d1 = v674_fu_660_p3;
assign v26_we1 = v26_we1_local;
assign v27_address0 = zext_ln1279_2_fu_624_p1;
assign v27_ce0 = v27_ce0_local;
assign v671_mid2_fu_521_p3 = ((empty_fu_515_p2[0:0] == 1'b1) ? 3'd0 : v671_fu_102);
assign v673_fu_652_p3 = v27_q0[32'd7];
assign v674_fu_660_p3 = ((v673_fu_652_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln1279_fu_648_p1);
assign xor_ln1276_fu_479_p2 = (icmp_ln1277_fu_465_p2 ^ 1'd1);
assign zext_ln1276_fu_629_p1 = select_ln1276_1_reg_723_pp0_iter2_reg;
assign zext_ln1279_1_fu_615_p1 = v671_mid2_reg_728;
assign zext_ln1279_2_fu_624_p1 = add_ln1279_1_fu_618_p2;
assign zext_ln1279_fu_545_p1 = select_ln1277_fu_529_p3;
endmodule 
