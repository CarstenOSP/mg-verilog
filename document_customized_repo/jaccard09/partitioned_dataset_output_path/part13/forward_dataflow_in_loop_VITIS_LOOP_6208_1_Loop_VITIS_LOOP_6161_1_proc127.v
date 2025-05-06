
module forward_dataflow_in_loop_VITIS_LOOP_6208_1_Loop_VITIS_LOOP_6161_1_proc127 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4858_address0,v4858_ce0,v4858_we0,v4858_d0,v4858_1_address0,v4858_1_ce0,v4858_1_we0,v4858_1_d0,v4858_2_address0,v4858_2_ce0,v4858_2_we0,v4858_2_d0,v4858_3_address0,v4858_3_ce0,v4858_3_we0,v4858_3_d0,v4858_4_address0,v4858_4_ce0,v4858_4_we0,v4858_4_d0,v4858_5_address0,v4858_5_ce0,v4858_5_we0,v4858_5_d0,v4858_6_address0,v4858_6_ce0,v4858_6_we0,v4858_6_d0,v4858_7_address0,v4858_7_ce0,v4858_7_we0,v4858_7_d0,v4849_0,v16205_0_address0,v16205_0_ce0,v16205_0_q0,v16205_1_address0,v16205_1_ce0,v16205_1_q0,v16205_2_address0,v16205_2_ce0,v16205_2_q0,v16205_3_address0,v16205_3_ce0,v16205_3_q0,v16205_4_address0,v16205_4_ce0,v16205_4_q0,v16205_5_address0,v16205_5_ce0,v16205_5_q0,v16205_6_address0,v16205_6_ce0,v16205_6_q0,v16205_7_address0,v16205_7_ce0,v16205_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v4858_address0;
output   v4858_ce0;
output   v4858_we0;
output  [7:0] v4858_d0;
output  [7:0] v4858_1_address0;
output   v4858_1_ce0;
output   v4858_1_we0;
output  [7:0] v4858_1_d0;
output  [7:0] v4858_2_address0;
output   v4858_2_ce0;
output   v4858_2_we0;
output  [7:0] v4858_2_d0;
output  [7:0] v4858_3_address0;
output   v4858_3_ce0;
output   v4858_3_we0;
output  [7:0] v4858_3_d0;
output  [7:0] v4858_4_address0;
output   v4858_4_ce0;
output   v4858_4_we0;
output  [7:0] v4858_4_d0;
output  [7:0] v4858_5_address0;
output   v4858_5_ce0;
output   v4858_5_we0;
output  [7:0] v4858_5_d0;
output  [7:0] v4858_6_address0;
output   v4858_6_ce0;
output   v4858_6_we0;
output  [7:0] v4858_6_d0;
output  [7:0] v4858_7_address0;
output   v4858_7_ce0;
output   v4858_7_we0;
output  [7:0] v4858_7_d0;
input  [12:0] v4849_0;
output  [13:0] v16205_0_address0;
output   v16205_0_ce0;
input  [7:0] v16205_0_q0;
output  [13:0] v16205_1_address0;
output   v16205_1_ce0;
input  [7:0] v16205_1_q0;
output  [13:0] v16205_2_address0;
output   v16205_2_ce0;
input  [7:0] v16205_2_q0;
output  [13:0] v16205_3_address0;
output   v16205_3_ce0;
input  [7:0] v16205_3_q0;
output  [13:0] v16205_4_address0;
output   v16205_4_ce0;
input  [7:0] v16205_4_q0;
output  [13:0] v16205_5_address0;
output   v16205_5_ce0;
input  [7:0] v16205_5_q0;
output  [13:0] v16205_6_address0;
output   v16205_6_ce0;
input  [7:0] v16205_6_q0;
output  [13:0] v16205_7_address0;
output   v16205_7_ce0;
input  [7:0] v16205_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6161_fu_488_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] mul_i_fu_410_p3;
reg   [8:0] mul_i_reg_927;
wire   [5:0] trunc_ln_fu_418_p3;
reg   [5:0] trunc_ln_reg_932;
wire   [3:0] zext_ln6161_cast_cast_cast_cast_fu_434_p3;
reg   [3:0] zext_ln6161_cast_cast_cast_cast_reg_937;
wire   [3:0] zext_ln6161_1_cast_cast_cast_cast_fu_446_p3;
reg   [3:0] zext_ln6161_1_cast_cast_cast_cast_reg_942;
reg   [3:0] zext_ln6161_1_cast_cast_cast_cast_reg_942_pp0_iter1_reg;
reg   [0:0] icmp_ln6161_reg_947;
reg   [0:0] icmp_ln6161_reg_947_pp0_iter1_reg;
wire   [2:0] v4833_mid2_fu_557_p3;
reg   [2:0] v4833_mid2_reg_951;
wire   [5:0] add_ln6180_fu_681_p2;
reg   [5:0] add_ln6180_reg_957;
wire   [4:0] trunc_ln6180_fu_687_p1;
reg   [4:0] trunc_ln6180_reg_962;
wire   [9:0] add_ln6166_fu_704_p2;
reg   [9:0] add_ln6166_reg_967;
wire   [9:0] add_ln6168_fu_710_p2;
reg   [9:0] add_ln6168_reg_973;
wire   [0:0] icmp_ln6163_fu_736_p2;
reg   [0:0] icmp_ln6163_reg_979;
wire   [0:0] icmp_ln6162_fu_742_p2;
reg   [0:0] icmp_ln6162_reg_984;
wire   [7:0] add_ln6180_1_fu_835_p2;
reg   [7:0] add_ln6180_1_reg_989;
reg   [0:0] ap_phi_mux_icmp_ln616299_phi_fu_382_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln616398_phi_fu_393_p4;
wire   [63:0] zext_ln6166_4_fu_859_p1;
wire   [63:0] zext_ln6168_2_fu_870_p1;
wire   [63:0] zext_ln6180_3_fu_881_p1;
reg   [7:0] indvar_flatten1293_fu_136;
wire   [7:0] add_ln6161_1_fu_482_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1293_load;
reg   [5:0] v483194_fu_140;
wire   [5:0] v4831_fu_537_p3;
reg   [5:0] indvar_flatten95_fu_144;
wire   [5:0] select_ln6162_1_fu_728_p3;
reg   [2:0] v483296_fu_148;
wire   [2:0] v4832_fu_565_p3;
reg   [2:0] v483397_fu_152;
wire   [2:0] v4833_fu_716_p2;
reg    v16205_0_ce0_local;
reg    v16205_1_ce0_local;
reg    v16205_2_ce0_local;
reg    v16205_3_ce0_local;
reg    v16205_4_ce0_local;
reg    v16205_5_ce0_local;
reg    v16205_6_ce0_local;
reg    v16205_7_ce0_local;
reg    v4858_7_we0_local;
reg    v4858_7_ce0_local;
reg    v4858_6_we0_local;
reg    v4858_6_ce0_local;
reg    v4858_5_we0_local;
reg    v4858_5_ce0_local;
reg    v4858_4_we0_local;
reg    v4858_4_ce0_local;
reg    v4858_3_we0_local;
reg    v4858_3_ce0_local;
reg    v4858_2_we0_local;
reg    v4858_2_ce0_local;
reg    v4858_1_we0_local;
reg    v4858_1_ce0_local;
reg    v4858_we0_local;
reg    v4858_ce0_local;
wire   [3:0] tmp_fu_400_p4;
wire   [0:0] tmp_84_fu_426_p3;
wire   [0:0] empty_fu_442_p1;
wire   [0:0] xor_ln6161_fu_525_p2;
wire   [5:0] add_ln6161_fu_511_p2;
wire   [2:0] select_ln6161_fu_517_p3;
wire   [0:0] and_ln6161_fu_531_p2;
wire   [0:0] empty_193_fu_551_p2;
wire   [2:0] add_ln6162_fu_545_p2;
wire   [2:0] lshr_ln_fu_577_p4;
wire   [5:0] p_shl52_fu_591_p3;
wire   [5:0] zext_ln6161_1_fu_587_p1;
wire   [8:0] zext_ln6161_fu_573_p1;
wire   [5:0] empty_195_fu_610_p2;
wire   [6:0] tmp_85_fu_623_p3;
wire   [9:0] p_shl53_fu_615_p3;
wire   [9:0] zext_ln6166_fu_631_p1;
wire   [8:0] empty_194_fu_605_p2;
wire   [5:0] tmp_86_fu_641_p4;
wire   [6:0] tmp_87_fu_659_p3;
wire   [9:0] p_shl54_fu_651_p3;
wire   [9:0] zext_ln6168_fu_667_p1;
wire   [5:0] sub_ln6180_fu_599_p2;
wire   [5:0] zext_ln6180_fu_677_p1;
wire   [3:0] zext_ln6162_fu_691_p1;
wire   [3:0] empty_196_fu_695_p2;
wire   [9:0] sub_ln6166_fu_635_p2;
wire   [9:0] zext_ln6166_1_fu_700_p1;
wire   [9:0] sub_ln6168_fu_671_p2;
wire   [5:0] add_ln6162_1_fu_722_p2;
wire   [7:0] tmp_88_fu_768_p3;
wire   [7:0] zext_ln6180_1_fu_775_p1;
wire   [10:0] tmp_89_fu_791_p3;
wire   [13:0] p_shl55_fu_784_p3;
wire   [13:0] zext_ln6166_2_fu_798_p1;
wire   [10:0] tmp_90_fu_815_p3;
wire   [13:0] p_shl_fu_808_p3;
wire   [13:0] zext_ln6168_1_fu_822_p1;
wire   [7:0] sub_ln6162_fu_778_p2;
wire   [7:0] zext_ln6180_2_fu_832_p1;
wire   [3:0] zext_ln6163_fu_841_p1;
wire   [3:0] add_ln6165_fu_844_p2;
wire   [13:0] sub_ln6166_1_fu_802_p2;
wire   [13:0] zext_ln6166_3_fu_849_p1;
wire   [13:0] add_ln6166_1_fu_853_p2;
wire   [13:0] sub_ln6168_1_fu_826_p2;
wire   [13:0] add_ln6168_1_fu_864_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_260;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1293_fu_136 = 8'd0;
#0 v483194_fu_140 = 6'd0;
#0 indvar_flatten95_fu_144 = 6'd0;
#0 v483296_fu_148 = 3'd0;
#0 v483397_fu_152 = 3'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_260)) begin
        indvar_flatten1293_fu_136 <= add_ln6161_1_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten95_fu_144 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten95_fu_144 <= select_ln6162_1_fu_728_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v483194_fu_140 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v483194_fu_140 <= v4831_fu_537_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v483296_fu_148 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v483296_fu_148 <= v4832_fu_565_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v483397_fu_152 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v483397_fu_152 <= v4833_fu_716_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6166_reg_967 <= add_ln6166_fu_704_p2;
        add_ln6168_reg_973 <= add_ln6168_fu_710_p2;
        add_ln6180_reg_957 <= add_ln6180_fu_681_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln6161_reg_947 <= icmp_ln6161_fu_488_p2;
        icmp_ln6161_reg_947_pp0_iter1_reg <= icmp_ln6161_reg_947;
        mul_i_reg_927[8 : 5] <= mul_i_fu_410_p3[8 : 5];
        trunc_ln6180_reg_962 <= trunc_ln6180_fu_687_p1;
        trunc_ln_reg_932[5 : 2] <= trunc_ln_fu_418_p3[5 : 2];
        v4833_mid2_reg_951 <= v4833_mid2_fu_557_p3;
        zext_ln6161_1_cast_cast_cast_cast_reg_942[2 : 0] <= zext_ln6161_1_cast_cast_cast_cast_fu_446_p3[2 : 0];
        zext_ln6161_1_cast_cast_cast_cast_reg_942_pp0_iter1_reg[2 : 0] <= zext_ln6161_1_cast_cast_cast_cast_reg_942[2 : 0];
        zext_ln6161_cast_cast_cast_cast_reg_937[2 : 0] <= zext_ln6161_cast_cast_cast_cast_fu_434_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6180_1_reg_989 <= add_ln6180_1_fu_835_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6162_reg_984 <= icmp_ln6162_fu_742_p2;
        icmp_ln6163_reg_979 <= icmp_ln6163_fu_736_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6161_fu_488_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6161_reg_947_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln616299_phi_fu_382_p4 = icmp_ln6162_reg_984;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln616299_phi_fu_382_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln616299_phi_fu_382_p4 = icmp_ln6162_reg_984;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6161_reg_947_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln616398_phi_fu_393_p4 = icmp_ln6163_reg_979;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln616398_phi_fu_393_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln616398_phi_fu_393_p4 = icmp_ln6163_reg_979;
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
        ap_sig_allocacmp_indvar_flatten1293_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1293_load = indvar_flatten1293_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_0_ce0_local = 1'b1;
    end else begin
        v16205_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_1_ce0_local = 1'b1;
    end else begin
        v16205_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_2_ce0_local = 1'b1;
    end else begin
        v16205_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_3_ce0_local = 1'b1;
    end else begin
        v16205_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_4_ce0_local = 1'b1;
    end else begin
        v16205_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_5_ce0_local = 1'b1;
    end else begin
        v16205_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_6_ce0_local = 1'b1;
    end else begin
        v16205_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16205_7_ce0_local = 1'b1;
    end else begin
        v16205_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_1_ce0_local = 1'b1;
    end else begin
        v4858_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_1_we0_local = 1'b1;
    end else begin
        v4858_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_2_ce0_local = 1'b1;
    end else begin
        v4858_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_2_we0_local = 1'b1;
    end else begin
        v4858_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_3_ce0_local = 1'b1;
    end else begin
        v4858_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_3_we0_local = 1'b1;
    end else begin
        v4858_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_4_ce0_local = 1'b1;
    end else begin
        v4858_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_4_we0_local = 1'b1;
    end else begin
        v4858_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_5_ce0_local = 1'b1;
    end else begin
        v4858_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_5_we0_local = 1'b1;
    end else begin
        v4858_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_6_ce0_local = 1'b1;
    end else begin
        v4858_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_6_we0_local = 1'b1;
    end else begin
        v4858_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_7_ce0_local = 1'b1;
    end else begin
        v4858_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_7_we0_local = 1'b1;
    end else begin
        v4858_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_ce0_local = 1'b1;
    end else begin
        v4858_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4858_we0_local = 1'b1;
    end else begin
        v4858_we0_local = 1'b0;
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
assign add_ln6161_1_fu_482_p2 = (ap_sig_allocacmp_indvar_flatten1293_load + 8'd1);
assign add_ln6161_fu_511_p2 = (v483194_fu_140 + 6'd8);
assign add_ln6162_1_fu_722_p2 = (indvar_flatten95_fu_144 + 6'd1);
assign add_ln6162_fu_545_p2 = (select_ln6161_fu_517_p3 + 3'd1);
assign add_ln6165_fu_844_p2 = (zext_ln6161_1_cast_cast_cast_cast_reg_942_pp0_iter1_reg + zext_ln6163_fu_841_p1);
assign add_ln6166_1_fu_853_p2 = (sub_ln6166_1_fu_802_p2 + zext_ln6166_3_fu_849_p1);
assign add_ln6166_fu_704_p2 = (sub_ln6166_fu_635_p2 + zext_ln6166_1_fu_700_p1);
assign add_ln6168_1_fu_864_p2 = (sub_ln6168_1_fu_826_p2 + zext_ln6166_3_fu_849_p1);
assign add_ln6168_fu_710_p2 = (sub_ln6168_fu_671_p2 + zext_ln6166_1_fu_700_p1);
assign add_ln6180_1_fu_835_p2 = (sub_ln6162_fu_778_p2 + zext_ln6180_2_fu_832_p1);
assign add_ln6180_fu_681_p2 = (sub_ln6180_fu_599_p2 + zext_ln6180_fu_677_p1);
assign and_ln6161_fu_531_p2 = (xor_ln6161_fu_525_p2 & ap_phi_mux_icmp_ln616398_phi_fu_393_p4);
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
    ap_condition_260 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_193_fu_551_p2 = (ap_phi_mux_icmp_ln616299_phi_fu_382_p4 | and_ln6161_fu_531_p2);
assign empty_194_fu_605_p2 = (mul_i_reg_927 + zext_ln6161_fu_573_p1);
assign empty_195_fu_610_p2 = (zext_ln6161_1_fu_587_p1 + trunc_ln_reg_932);
assign empty_196_fu_695_p2 = (zext_ln6161_cast_cast_cast_cast_reg_937 + zext_ln6162_fu_691_p1);
assign empty_fu_442_p1 = v4849_0[0:0];
assign icmp_ln6161_fu_488_p2 = ((ap_sig_allocacmp_indvar_flatten1293_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln6162_fu_742_p2 = ((select_ln6162_1_fu_728_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6163_fu_736_p2 = ((v4833_fu_716_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_577_p4 = {{v4831_fu_537_p3[5:3]}};
assign mul_i_fu_410_p3 = {{tmp_fu_400_p4}, {5'd0}};
assign p_shl52_fu_591_p3 = {{lshr_ln_fu_577_p4}, {3'd0}};
assign p_shl53_fu_615_p3 = {{empty_195_fu_610_p2}, {4'd0}};
assign p_shl54_fu_651_p3 = {{tmp_86_fu_641_p4}, {4'd0}};
assign p_shl55_fu_784_p3 = {{add_ln6166_reg_967}, {4'd0}};
assign p_shl_fu_808_p3 = {{add_ln6168_reg_973}, {4'd0}};
assign select_ln6161_fu_517_p3 = ((ap_phi_mux_icmp_ln616299_phi_fu_382_p4[0:0] == 1'b1) ? 3'd0 : v483296_fu_148);
assign select_ln6162_1_fu_728_p3 = ((ap_phi_mux_icmp_ln616299_phi_fu_382_p4[0:0] == 1'b1) ? 6'd1 : add_ln6162_1_fu_722_p2);
assign sub_ln6162_fu_778_p2 = (tmp_88_fu_768_p3 - zext_ln6180_1_fu_775_p1);
assign sub_ln6166_1_fu_802_p2 = (p_shl55_fu_784_p3 - zext_ln6166_2_fu_798_p1);
assign sub_ln6166_fu_635_p2 = (p_shl53_fu_615_p3 - zext_ln6166_fu_631_p1);
assign sub_ln6168_1_fu_826_p2 = (p_shl_fu_808_p3 - zext_ln6168_1_fu_822_p1);
assign sub_ln6168_fu_671_p2 = (p_shl54_fu_651_p3 - zext_ln6168_fu_667_p1);
assign sub_ln6180_fu_599_p2 = (p_shl52_fu_591_p3 - zext_ln6161_1_fu_587_p1);
assign tmp_84_fu_426_p3 = v4849_0[32'd1];
assign tmp_85_fu_623_p3 = {{empty_195_fu_610_p2}, {1'd0}};
assign tmp_86_fu_641_p4 = {{empty_194_fu_605_p2[8:3]}};
assign tmp_87_fu_659_p3 = {{tmp_86_fu_641_p4}, {1'd0}};
assign tmp_88_fu_768_p3 = {{trunc_ln6180_reg_962}, {3'd0}};
assign tmp_89_fu_791_p3 = {{add_ln6166_reg_967}, {1'd0}};
assign tmp_90_fu_815_p3 = {{add_ln6168_reg_973}, {1'd0}};
assign tmp_fu_400_p4 = {{v4849_0[5:2]}};
assign trunc_ln6180_fu_687_p1 = add_ln6180_fu_681_p2[4:0];
assign trunc_ln_fu_418_p3 = {{tmp_fu_400_p4}, {2'd0}};
assign v16205_0_address0 = zext_ln6166_4_fu_859_p1;
assign v16205_0_ce0 = v16205_0_ce0_local;
assign v16205_1_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_1_ce0 = v16205_1_ce0_local;
assign v16205_2_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_2_ce0 = v16205_2_ce0_local;
assign v16205_3_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_3_ce0 = v16205_3_ce0_local;
assign v16205_4_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_4_ce0 = v16205_4_ce0_local;
assign v16205_5_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_5_ce0 = v16205_5_ce0_local;
assign v16205_6_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_6_ce0 = v16205_6_ce0_local;
assign v16205_7_address0 = zext_ln6168_2_fu_870_p1;
assign v16205_7_ce0 = v16205_7_ce0_local;
assign v4831_fu_537_p3 = ((ap_phi_mux_icmp_ln616299_phi_fu_382_p4[0:0] == 1'b1) ? add_ln6161_fu_511_p2 : v483194_fu_140);
assign v4832_fu_565_p3 = ((and_ln6161_fu_531_p2[0:0] == 1'b1) ? add_ln6162_fu_545_p2 : select_ln6161_fu_517_p3);
assign v4833_fu_716_p2 = (v4833_mid2_fu_557_p3 + 3'd1);
assign v4833_mid2_fu_557_p3 = ((empty_193_fu_551_p2[0:0] == 1'b1) ? 3'd0 : v483397_fu_152);
assign v4858_1_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_1_ce0 = v4858_1_ce0_local;
assign v4858_1_d0 = v16205_6_q0;
assign v4858_1_we0 = v4858_1_we0_local;
assign v4858_2_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_2_ce0 = v4858_2_ce0_local;
assign v4858_2_d0 = v16205_5_q0;
assign v4858_2_we0 = v4858_2_we0_local;
assign v4858_3_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_3_ce0 = v4858_3_ce0_local;
assign v4858_3_d0 = v16205_4_q0;
assign v4858_3_we0 = v4858_3_we0_local;
assign v4858_4_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_4_ce0 = v4858_4_ce0_local;
assign v4858_4_d0 = v16205_3_q0;
assign v4858_4_we0 = v4858_4_we0_local;
assign v4858_5_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_5_ce0 = v4858_5_ce0_local;
assign v4858_5_d0 = v16205_2_q0;
assign v4858_5_we0 = v4858_5_we0_local;
assign v4858_6_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_6_ce0 = v4858_6_ce0_local;
assign v4858_6_d0 = v16205_1_q0;
assign v4858_6_we0 = v4858_6_we0_local;
assign v4858_7_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_7_ce0 = v4858_7_ce0_local;
assign v4858_7_d0 = v16205_0_q0;
assign v4858_7_we0 = v4858_7_we0_local;
assign v4858_address0 = zext_ln6180_3_fu_881_p1;
assign v4858_ce0 = v4858_ce0_local;
assign v4858_d0 = v16205_7_q0;
assign v4858_we0 = v4858_we0_local;
assign xor_ln6161_fu_525_p2 = (ap_phi_mux_icmp_ln616299_phi_fu_382_p4 ^ 1'd1);
assign zext_ln6161_1_cast_cast_cast_cast_fu_446_p3 = ((empty_fu_442_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln6161_1_fu_587_p1 = lshr_ln_fu_577_p4;
assign zext_ln6161_cast_cast_cast_cast_fu_434_p3 = ((tmp_84_fu_426_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln6161_fu_573_p1 = v4831_fu_537_p3;
assign zext_ln6162_fu_691_p1 = v4832_fu_565_p3;
assign zext_ln6163_fu_841_p1 = v4833_mid2_reg_951;
assign zext_ln6166_1_fu_700_p1 = empty_196_fu_695_p2;
assign zext_ln6166_2_fu_798_p1 = tmp_89_fu_791_p3;
assign zext_ln6166_3_fu_849_p1 = add_ln6165_fu_844_p2;
assign zext_ln6166_4_fu_859_p1 = add_ln6166_1_fu_853_p2;
assign zext_ln6166_fu_631_p1 = tmp_85_fu_623_p3;
assign zext_ln6168_1_fu_822_p1 = tmp_90_fu_815_p3;
assign zext_ln6168_2_fu_870_p1 = add_ln6168_1_fu_864_p2;
assign zext_ln6168_fu_667_p1 = tmp_87_fu_659_p3;
assign zext_ln6180_1_fu_775_p1 = add_ln6180_reg_957;
assign zext_ln6180_2_fu_832_p1 = v4833_mid2_reg_951;
assign zext_ln6180_3_fu_881_p1 = add_ln6180_1_reg_989;
assign zext_ln6180_fu_677_p1 = v4832_fu_565_p3;
always @ (posedge ap_clk) begin
    mul_i_reg_927[4:0] <= 5'b00000;
    trunc_ln_reg_932[1:0] <= 2'b00;
    zext_ln6161_cast_cast_cast_cast_reg_937[3] <= 1'b0;
    zext_ln6161_1_cast_cast_cast_cast_reg_942[3] <= 1'b0;
    zext_ln6161_1_cast_cast_cast_cast_reg_942_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
