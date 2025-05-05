module syrk_syrk_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_out_0_din,C_out_0_full_n,C_out_0_write,C_out_1_din,C_out_1_full_n,C_out_1_write,C_out_2_din,C_out_2_full_n,C_out_2_write,C_out_3_din,C_out_3_full_n,C_out_3_write,C_out_4_din,C_out_4_full_n,C_out_4_write,C_out_5_din,C_out_5_full_n,C_out_5_write,C_out_6_din,C_out_6_full_n,C_out_6_write,C_out_7_din,C_out_7_full_n,C_out_7_write,buff_C_out_address0,buff_C_out_ce0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] C_out_0_din;
input   C_out_0_full_n;
output   C_out_0_write;
output  [31:0] C_out_1_din;
input   C_out_1_full_n;
output   C_out_1_write;
output  [31:0] C_out_2_din;
input   C_out_2_full_n;
output   C_out_2_write;
output  [31:0] C_out_3_din;
input   C_out_3_full_n;
output   C_out_3_write;
output  [31:0] C_out_4_din;
input   C_out_4_full_n;
output   C_out_4_write;
output  [31:0] C_out_5_din;
input   C_out_5_full_n;
output   C_out_5_write;
output  [31:0] C_out_6_din;
input   C_out_6_full_n;
output   C_out_6_write;
output  [31:0] C_out_7_din;
input   C_out_7_full_n;
output   C_out_7_write;
output  [7:0] buff_C_out_address0;
output   buff_C_out_ce0;
input  [31:0] buff_C_out_q0;
output  [7:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
input  [31:0] buff_C_out_1_q0;
output  [7:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
input  [31:0] buff_C_out_2_q0;
output  [7:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
input  [31:0] buff_C_out_3_q0;
output  [7:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
input  [31:0] buff_C_out_4_q0;
output  [7:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
input  [31:0] buff_C_out_5_q0;
output  [7:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
input  [31:0] buff_C_out_6_q0;
output  [7:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
input  [31:0] buff_C_out_7_q0;
output  [7:0] buff_C_out_8_address0;
output   buff_C_out_8_ce0;
input  [31:0] buff_C_out_8_q0;
output  [7:0] buff_C_out_9_address0;
output   buff_C_out_9_ce0;
input  [31:0] buff_C_out_9_q0;
output  [7:0] buff_C_out_10_address0;
output   buff_C_out_10_ce0;
input  [31:0] buff_C_out_10_q0;
output  [7:0] buff_C_out_11_address0;
output   buff_C_out_11_ce0;
input  [31:0] buff_C_out_11_q0;
output  [7:0] buff_C_out_12_address0;
output   buff_C_out_12_ce0;
input  [31:0] buff_C_out_12_q0;
output  [7:0] buff_C_out_13_address0;
output   buff_C_out_13_ce0;
input  [31:0] buff_C_out_13_q0;
output  [7:0] buff_C_out_14_address0;
output   buff_C_out_14_ce0;
input  [31:0] buff_C_out_14_q0;
output  [7:0] buff_C_out_15_address0;
output   buff_C_out_15_ce0;
input  [31:0] buff_C_out_15_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln40_reg_930;
reg   [0:0] icmp_ln40_reg_930_pp0_iter2_reg;
reg   [0:0] icmp_ln40_1_reg_934;
reg   [0:0] icmp_ln40_1_reg_934_pp0_iter2_reg;
reg   [0:0] icmp_ln40_2_reg_938;
reg   [0:0] icmp_ln40_2_reg_938_pp0_iter2_reg;
reg   [0:0] icmp_ln40_3_reg_942;
reg   [0:0] icmp_ln40_3_reg_942_pp0_iter2_reg;
reg   [0:0] icmp_ln40_4_reg_946;
reg   [0:0] icmp_ln40_4_reg_946_pp0_iter2_reg;
reg   [0:0] icmp_ln40_5_reg_950;
reg   [0:0] icmp_ln40_5_reg_950_pp0_iter2_reg;
reg   [0:0] icmp_ln40_6_reg_954;
reg   [0:0] icmp_ln40_6_reg_954_pp0_iter2_reg;
reg   [0:0] icmp_ln40_7_reg_958;
reg   [0:0] icmp_ln40_7_reg_958_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_426_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    C_out_7_blk_n;
wire    ap_block_pp0_stage0;
reg    C_out_6_blk_n;
reg    C_out_5_blk_n;
reg    C_out_4_blk_n;
reg    C_out_3_blk_n;
reg    C_out_2_blk_n;
reg    C_out_1_blk_n;
reg    C_out_0_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln38_fu_479_p1;
reg   [0:0] trunc_ln38_reg_838;
wire   [0:0] icmp_ln40_fu_531_p2;
wire   [0:0] icmp_ln40_1_fu_559_p2;
wire   [0:0] icmp_ln40_2_fu_593_p2;
wire   [0:0] icmp_ln40_3_fu_611_p2;
wire   [0:0] icmp_ln40_4_fu_635_p2;
wire   [0:0] icmp_ln40_5_fu_665_p2;
wire   [0:0] icmp_ln40_6_fu_685_p2;
wire   [0:0] icmp_ln40_7_fu_703_p2;
wire   [31:0] select_ln41_fu_725_p3;
reg   [31:0] select_ln41_reg_962;
wire   [31:0] select_ln41_1_fu_732_p3;
reg   [31:0] select_ln41_1_reg_967;
wire   [31:0] select_ln41_2_fu_739_p3;
reg   [31:0] select_ln41_2_reg_972;
wire   [31:0] select_ln41_3_fu_746_p3;
reg   [31:0] select_ln41_3_reg_977;
wire   [31:0] select_ln41_4_fu_753_p3;
reg   [31:0] select_ln41_4_reg_982;
wire   [31:0] select_ln41_5_fu_760_p3;
reg   [31:0] select_ln41_5_reg_987;
wire   [31:0] select_ln41_6_fu_767_p3;
reg   [31:0] select_ln41_6_reg_992;
wire   [31:0] select_ln41_7_fu_774_p3;
reg   [31:0] select_ln41_7_reg_997;
wire   [63:0] zext_ln41_fu_511_p1;
reg   [6:0] j_fu_124;
wire   [6:0] add_ln39_fu_709_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_128;
wire   [6:0] select_ln38_fu_471_p3;
reg   [9:0] indvar_flatten28_fu_132;
wire   [9:0] add_ln38_1_fu_432_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten28_load;
wire   [31:0] bitcast_ln41_fu_781_p1;
reg   [31:0] C_out_0_din_local;
reg    ap_block_pp0_stage0_01001;
reg    C_out_0_write_local;
wire   [31:0] bitcast_ln41_1_fu_785_p1;
reg   [31:0] C_out_1_din_local;
reg    C_out_1_write_local;
wire   [31:0] bitcast_ln41_2_fu_789_p1;
reg   [31:0] C_out_2_din_local;
reg    C_out_2_write_local;
wire   [31:0] bitcast_ln41_3_fu_793_p1;
reg   [31:0] C_out_3_din_local;
reg    C_out_3_write_local;
wire   [31:0] bitcast_ln41_4_fu_797_p1;
reg   [31:0] C_out_4_din_local;
reg    C_out_4_write_local;
wire   [31:0] bitcast_ln41_5_fu_801_p1;
reg   [31:0] C_out_5_din_local;
reg    C_out_5_write_local;
wire   [31:0] bitcast_ln41_6_fu_805_p1;
reg   [31:0] C_out_6_din_local;
reg    C_out_6_write_local;
wire   [31:0] bitcast_ln41_7_fu_809_p1;
reg   [31:0] C_out_7_din_local;
reg    C_out_7_write_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_ce0_local;
reg    buff_C_out_8_ce0_local;
reg    buff_C_out_9_ce0_local;
reg    buff_C_out_10_ce0_local;
reg    buff_C_out_11_ce0_local;
reg    buff_C_out_12_ce0_local;
reg    buff_C_out_13_ce0_local;
reg    buff_C_out_14_ce0_local;
reg    buff_C_out_15_ce0_local;
wire   [0:0] tmp_fu_455_p3;
wire   [6:0] add_ln38_fu_449_p2;
wire   [6:0] select_ln5_fu_463_p3;
wire   [4:0] tmp_s_fu_493_p4;
wire   [2:0] lshr_ln5_7_fu_483_p4;
wire   [7:0] tmp_1_fu_503_p3;
wire   [4:0] tmp_2_fu_537_p4;
wire   [5:0] or_ln_fu_547_p3;
wire   [6:0] zext_ln40_fu_555_p1;
wire   [3:0] tmp_3_fu_565_p4;
wire   [0:0] trunc_ln39_fu_575_p1;
wire   [5:0] or_ln39_1_fu_579_p4;
wire   [6:0] zext_ln40_1_fu_589_p1;
wire   [5:0] or_ln39_2_fu_599_p3;
wire   [6:0] zext_ln40_2_fu_607_p1;
wire   [1:0] trunc_ln39_1_fu_617_p1;
wire   [5:0] or_ln39_3_fu_621_p4;
wire   [6:0] zext_ln40_3_fu_631_p1;
wire   [0:0] tmp_4_fu_641_p3;
wire   [5:0] or_ln39_4_fu_649_p5;
wire   [6:0] zext_ln40_4_fu_661_p1;
wire   [5:0] or_ln39_5_fu_671_p4;
wire   [6:0] zext_ln40_5_fu_681_p1;
wire   [5:0] or_ln39_6_fu_691_p3;
wire   [6:0] zext_ln40_6_fu_699_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 j_fu_124 = 7'd0;
#0 i_fu_128 = 7'd0;
#0 indvar_flatten28_fu_132 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_128 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_128 <= select_ln38_fu_471_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln38_fu_426_p2 == 1'd0))) begin
            indvar_flatten28_fu_132 <= add_ln38_1_fu_432_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten28_fu_132 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_124 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_124 <= add_ln39_fu_709_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln40_1_reg_934 <= icmp_ln40_1_fu_559_p2;
        icmp_ln40_2_reg_938 <= icmp_ln40_2_fu_593_p2;
        icmp_ln40_3_reg_942 <= icmp_ln40_3_fu_611_p2;
        icmp_ln40_4_reg_946 <= icmp_ln40_4_fu_635_p2;
        icmp_ln40_5_reg_950 <= icmp_ln40_5_fu_665_p2;
        icmp_ln40_6_reg_954 <= icmp_ln40_6_fu_685_p2;
        icmp_ln40_7_reg_958 <= icmp_ln40_7_fu_703_p2;
        icmp_ln40_reg_930 <= icmp_ln40_fu_531_p2;
        trunc_ln38_reg_838 <= trunc_ln38_fu_479_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln40_1_reg_934_pp0_iter2_reg <= icmp_ln40_1_reg_934;
        icmp_ln40_2_reg_938_pp0_iter2_reg <= icmp_ln40_2_reg_938;
        icmp_ln40_3_reg_942_pp0_iter2_reg <= icmp_ln40_3_reg_942;
        icmp_ln40_4_reg_946_pp0_iter2_reg <= icmp_ln40_4_reg_946;
        icmp_ln40_5_reg_950_pp0_iter2_reg <= icmp_ln40_5_reg_950;
        icmp_ln40_6_reg_954_pp0_iter2_reg <= icmp_ln40_6_reg_954;
        icmp_ln40_7_reg_958_pp0_iter2_reg <= icmp_ln40_7_reg_958;
        icmp_ln40_reg_930_pp0_iter2_reg <= icmp_ln40_reg_930;
        select_ln41_1_reg_967 <= select_ln41_1_fu_732_p3;
        select_ln41_2_reg_972 <= select_ln41_2_fu_739_p3;
        select_ln41_3_reg_977 <= select_ln41_3_fu_746_p3;
        select_ln41_4_reg_982 <= select_ln41_4_fu_753_p3;
        select_ln41_5_reg_987 <= select_ln41_5_fu_760_p3;
        select_ln41_6_reg_992 <= select_ln41_6_fu_767_p3;
        select_ln41_7_reg_997 <= select_ln41_7_fu_774_p3;
        select_ln41_reg_962 <= select_ln41_fu_725_p3;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_930_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_0_blk_n = C_out_0_full_n;
    end else begin
        C_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd1)) begin
            C_out_0_din_local = 32'd0;
        end else if ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd0)) begin
            C_out_0_din_local = bitcast_ln41_fu_781_p1;
        end else begin
            C_out_0_din_local = 'bx;
        end
    end else begin
        C_out_0_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_reg_930_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_0_write_local = 1'b1;
    end else begin
        C_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_1_blk_n = C_out_1_full_n;
    end else begin
        C_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd1)) begin
            C_out_1_din_local = 32'd0;
        end else if ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd0)) begin
            C_out_1_din_local = bitcast_ln41_1_fu_785_p1;
        end else begin
            C_out_1_din_local = 'bx;
        end
    end else begin
        C_out_1_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_1_write_local = 1'b1;
    end else begin
        C_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_2_blk_n = C_out_2_full_n;
    end else begin
        C_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd1)) begin
            C_out_2_din_local = 32'd0;
        end else if ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd0)) begin
            C_out_2_din_local = bitcast_ln41_2_fu_789_p1;
        end else begin
            C_out_2_din_local = 'bx;
        end
    end else begin
        C_out_2_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_2_write_local = 1'b1;
    end else begin
        C_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_3_blk_n = C_out_3_full_n;
    end else begin
        C_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd1)) begin
            C_out_3_din_local = 32'd0;
        end else if ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd0)) begin
            C_out_3_din_local = bitcast_ln41_3_fu_793_p1;
        end else begin
            C_out_3_din_local = 'bx;
        end
    end else begin
        C_out_3_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_3_write_local = 1'b1;
    end else begin
        C_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        C_out_4_blk_n = C_out_4_full_n;
    end else begin
        C_out_4_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd1)) begin
            C_out_4_din_local = 32'd0;
        end else if ((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd0)) begin
            C_out_4_din_local = bitcast_ln41_4_fu_797_p1;
        end else begin
            C_out_4_din_local = 'bx;
        end
    end else begin
        C_out_4_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        C_out_4_write_local = 1'b1;
    end else begin
        C_out_4_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd0)))) begin
        C_out_5_blk_n = C_out_5_full_n;
    end else begin
        C_out_5_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd1)) begin
            C_out_5_din_local = 32'd0;
        end else if ((icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd0)) begin
            C_out_5_din_local = bitcast_ln41_5_fu_801_p1;
        end else begin
            C_out_5_din_local = 'bx;
        end
    end else begin
        C_out_5_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd0)))) begin
        C_out_5_write_local = 1'b1;
    end else begin
        C_out_5_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd0)))) begin
        C_out_6_blk_n = C_out_6_full_n;
    end else begin
        C_out_6_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd1)) begin
            C_out_6_din_local = 32'd0;
        end else if ((icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd0)) begin
            C_out_6_din_local = bitcast_ln41_6_fu_805_p1;
        end else begin
            C_out_6_din_local = 'bx;
        end
    end else begin
        C_out_6_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd0)))) begin
        C_out_6_write_local = 1'b1;
    end else begin
        C_out_6_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd0)))) begin
        C_out_7_blk_n = C_out_7_full_n;
    end else begin
        C_out_7_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd1)) begin
            C_out_7_din_local = 32'd0;
        end else if ((icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd0)) begin
            C_out_7_din_local = bitcast_ln41_7_fu_809_p1;
        end else begin
            C_out_7_din_local = 'bx;
        end
    end else begin
        C_out_7_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd0)))) begin
        C_out_7_write_local = 1'b1;
    end else begin
        C_out_7_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln38_fu_426_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten28_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten28_load = indvar_flatten28_fu_132;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_10_ce0_local = 1'b1;
    end else begin
        buff_C_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_11_ce0_local = 1'b1;
    end else begin
        buff_C_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_12_ce0_local = 1'b1;
    end else begin
        buff_C_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_13_ce0_local = 1'b1;
    end else begin
        buff_C_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_14_ce0_local = 1'b1;
    end else begin
        buff_C_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_15_ce0_local = 1'b1;
    end else begin
        buff_C_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_8_ce0_local = 1'b1;
    end else begin
        buff_C_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_9_ce0_local = 1'b1;
    end else begin
        buff_C_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
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
assign C_out_0_din = C_out_0_din_local;
assign C_out_0_write = C_out_0_write_local;
assign C_out_1_din = C_out_1_din_local;
assign C_out_1_write = C_out_1_write_local;
assign C_out_2_din = C_out_2_din_local;
assign C_out_2_write = C_out_2_write_local;
assign C_out_3_din = C_out_3_din_local;
assign C_out_3_write = C_out_3_write_local;
assign C_out_4_din = C_out_4_din_local;
assign C_out_4_write = C_out_4_write_local;
assign C_out_5_din = C_out_5_din_local;
assign C_out_5_write = C_out_5_write_local;
assign C_out_6_din = C_out_6_din_local;
assign C_out_6_write = C_out_6_write_local;
assign C_out_7_din = C_out_7_din_local;
assign C_out_7_write = C_out_7_write_local;
assign add_ln38_1_fu_432_p2 = (ap_sig_allocacmp_indvar_flatten28_load + 10'd1);
assign add_ln38_fu_449_p2 = (i_fu_128 + 7'd1);
assign add_ln39_fu_709_p2 = (select_ln5_fu_463_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
ap_block_state4_pp0_stage0_iter3 = (((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_4_reg_946_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_4_full_n)) | ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_3_reg_942_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_3_full_n)) | ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_2_reg_938_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_2_full_n)) | ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_1_reg_934_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_1_full_n)) | ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_0_full_n)) | ((icmp_ln40_reg_930_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_0_full_n)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_7_full_n) & (icmp_ln40_7_reg_958_pp0_iter2_reg == 1'd0)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_954_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_6_full_n) & (icmp_ln40_6_reg_954_pp0_iter2_reg== 1'd0)) | ((1'b0 == C_out_5_full_n) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd1)) | ((1'b0 == C_out_5_full_n) & (icmp_ln40_5_reg_950_pp0_iter2_reg == 1'd0)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln41_1_fu_785_p1 = select_ln41_1_reg_967;
assign bitcast_ln41_2_fu_789_p1 = select_ln41_2_reg_972;
assign bitcast_ln41_3_fu_793_p1 = select_ln41_3_reg_977;
assign bitcast_ln41_4_fu_797_p1 = select_ln41_4_reg_982;
assign bitcast_ln41_5_fu_801_p1 = select_ln41_5_reg_987;
assign bitcast_ln41_6_fu_805_p1 = select_ln41_6_reg_992;
assign bitcast_ln41_7_fu_809_p1 = select_ln41_7_reg_997;
assign bitcast_ln41_fu_781_p1 = select_ln41_reg_962;
assign buff_C_out_10_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_11_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_12_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_13_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_14_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_15_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_1_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_2_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_3_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_4_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_5_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_6_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_7_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_8_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_9_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_address0 = zext_ln41_fu_511_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign icmp_ln38_fu_426_p2 = ((ap_sig_allocacmp_indvar_flatten28_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_559_p2 = ((zext_ln40_fu_555_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_593_p2 = ((zext_ln40_1_fu_589_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_611_p2 = ((zext_ln40_2_fu_607_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_635_p2 = ((zext_ln40_3_fu_631_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_5_fu_665_p2 = ((zext_ln40_4_fu_661_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_6_fu_685_p2 = ((zext_ln40_5_fu_681_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_7_fu_703_p2 = ((zext_ln40_6_fu_699_p1 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_531_p2 = ((select_ln5_fu_463_p3 > select_ln38_fu_471_p3) ? 1'b1 : 1'b0);
assign lshr_ln5_7_fu_483_p4 = {{select_ln5_fu_463_p3[5:3]}};
assign or_ln39_1_fu_579_p4 = {{{tmp_3_fu_565_p4}, {1'd1}}, {trunc_ln39_fu_575_p1}};
assign or_ln39_2_fu_599_p3 = {{tmp_3_fu_565_p4}, {2'd3}};
assign or_ln39_3_fu_621_p4 = {{{lshr_ln5_7_fu_483_p4}, {1'd1}}, {trunc_ln39_1_fu_617_p1}};
assign or_ln39_4_fu_649_p5 = {{{{lshr_ln5_7_fu_483_p4}, {1'd1}}, {tmp_4_fu_641_p3}}, {1'd1}};
assign or_ln39_5_fu_671_p4 = {{{lshr_ln5_7_fu_483_p4}, {2'd3}}, {trunc_ln39_fu_575_p1}};
assign or_ln39_6_fu_691_p3 = {{lshr_ln5_7_fu_483_p4}, {3'd7}};
assign or_ln_fu_547_p3 = {{tmp_2_fu_537_p4}, {1'd1}};
assign select_ln38_fu_471_p3 = ((tmp_fu_455_p3[0:0] == 1'b1) ? add_ln38_fu_449_p2 : i_fu_128);
assign select_ln41_1_fu_732_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_3_q0 : buff_C_out_2_q0);
assign select_ln41_2_fu_739_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_5_q0 : buff_C_out_4_q0);
assign select_ln41_3_fu_746_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_7_q0 : buff_C_out_6_q0);
assign select_ln41_4_fu_753_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_9_q0 : buff_C_out_8_q0);
assign select_ln41_5_fu_760_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_11_q0 : buff_C_out_10_q0);
assign select_ln41_6_fu_767_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_13_q0 : buff_C_out_12_q0);
assign select_ln41_7_fu_774_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_15_q0 : buff_C_out_14_q0);
assign select_ln41_fu_725_p3 = ((trunc_ln38_reg_838[0:0] == 1'b1) ? buff_C_out_1_q0 : buff_C_out_q0);
assign select_ln5_fu_463_p3 = ((tmp_fu_455_p3[0:0] == 1'b1) ? 7'd0 : j_fu_124);
assign tmp_1_fu_503_p3 = {{tmp_s_fu_493_p4}, {lshr_ln5_7_fu_483_p4}};
assign tmp_2_fu_537_p4 = {{select_ln5_fu_463_p3[5:1]}};
assign tmp_3_fu_565_p4 = {{select_ln5_fu_463_p3[5:2]}};
assign tmp_4_fu_641_p3 = select_ln5_fu_463_p3[32'd1];
assign tmp_fu_455_p3 = j_fu_124[32'd6];
assign tmp_s_fu_493_p4 = {{select_ln38_fu_471_p3[5:1]}};
assign trunc_ln38_fu_479_p1 = select_ln38_fu_471_p3[0:0];
assign trunc_ln39_1_fu_617_p1 = select_ln5_fu_463_p3[1:0];
assign trunc_ln39_fu_575_p1 = select_ln5_fu_463_p3[0:0];
assign zext_ln40_1_fu_589_p1 = or_ln39_1_fu_579_p4;
assign zext_ln40_2_fu_607_p1 = or_ln39_2_fu_599_p3;
assign zext_ln40_3_fu_631_p1 = or_ln39_3_fu_621_p4;
assign zext_ln40_4_fu_661_p1 = or_ln39_4_fu_649_p5;
assign zext_ln40_5_fu_681_p1 = or_ln39_5_fu_671_p4;
assign zext_ln40_6_fu_699_p1 = or_ln39_6_fu_691_p3;
assign zext_ln40_fu_555_p1 = or_ln_fu_547_p3;
assign zext_ln41_fu_511_p1 = tmp_1_fu_503_p3;
endmodule 