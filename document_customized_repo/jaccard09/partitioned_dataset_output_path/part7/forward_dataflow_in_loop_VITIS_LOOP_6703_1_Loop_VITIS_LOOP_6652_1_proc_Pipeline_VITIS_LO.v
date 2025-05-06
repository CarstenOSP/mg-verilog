
module forward_dataflow_in_loop_VITIS_LOOP_6703_1_Loop_VITIS_LOOP_6652_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,idxprom1_i1,idxprom3_i2,v15505_0_address0,v15505_0_ce0,v15505_0_q0,v15505_1_address0,v15505_1_ce0,v15505_1_q0,v15505_2_address0,v15505_2_ce0,v15505_2_q0,v15505_3_address0,v15505_3_ce0,v15505_3_q0,v15505_4_address0,v15505_4_ce0,v15505_4_q0,v15505_5_address0,v15505_5_ce0,v15505_5_q0,v15505_6_address0,v15505_6_ce0,v15505_6_q0,v15505_7_address0,v15505_7_ce0,v15505_7_q0,v15505_8_address0,v15505_8_ce0,v15505_8_q0,v15505_9_address0,v15505_9_ce0,v15505_9_q0,v15505_10_address0,v15505_10_ce0,v15505_10_q0,v15505_11_address0,v15505_11_ce0,v15505_11_q0,v15505_12_address0,v15505_12_ce0,v15505_12_q0,v15505_13_address0,v15505_13_ce0,v15505_13_q0,v15505_14_address0,v15505_14_ce0,v15505_14_q0,v15505_15_address0,v15505_15_ce0,v15505_15_q0,v5852_15_address0,v5852_15_ce0,v5852_15_we0,v5852_15_d0,v5852_14_address0,v5852_14_ce0,v5852_14_we0,v5852_14_d0,v5852_13_address0,v5852_13_ce0,v5852_13_we0,v5852_13_d0,v5852_12_address0,v5852_12_ce0,v5852_12_we0,v5852_12_d0,v5852_11_address0,v5852_11_ce0,v5852_11_we0,v5852_11_d0,v5852_10_address0,v5852_10_ce0,v5852_10_we0,v5852_10_d0,v5852_9_address0,v5852_9_ce0,v5852_9_we0,v5852_9_d0,v5852_8_address0,v5852_8_ce0,v5852_8_we0,v5852_8_d0,v5852_7_address0,v5852_7_ce0,v5852_7_we0,v5852_7_d0,v5852_6_address0,v5852_6_ce0,v5852_6_we0,v5852_6_d0,v5852_5_address0,v5852_5_ce0,v5852_5_we0,v5852_5_d0,v5852_4_address0,v5852_4_ce0,v5852_4_we0,v5852_4_d0,v5852_3_address0,v5852_3_ce0,v5852_3_we0,v5852_3_d0,v5852_2_address0,v5852_2_ce0,v5852_2_we0,v5852_2_d0,v5852_1_address0,v5852_1_ce0,v5852_1_we0,v5852_1_d0,v5852_address0,v5852_ce0,v5852_we0,v5852_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] mul_i;
input  [5:0] shl_ln;
input  [2:0] idxprom1_i1;
input  [2:0] idxprom3_i2;
output  [11:0] v15505_0_address0;
output   v15505_0_ce0;
input  [7:0] v15505_0_q0;
output  [11:0] v15505_1_address0;
output   v15505_1_ce0;
input  [7:0] v15505_1_q0;
output  [11:0] v15505_2_address0;
output   v15505_2_ce0;
input  [7:0] v15505_2_q0;
output  [11:0] v15505_3_address0;
output   v15505_3_ce0;
input  [7:0] v15505_3_q0;
output  [11:0] v15505_4_address0;
output   v15505_4_ce0;
input  [7:0] v15505_4_q0;
output  [11:0] v15505_5_address0;
output   v15505_5_ce0;
input  [7:0] v15505_5_q0;
output  [11:0] v15505_6_address0;
output   v15505_6_ce0;
input  [7:0] v15505_6_q0;
output  [11:0] v15505_7_address0;
output   v15505_7_ce0;
input  [7:0] v15505_7_q0;
output  [11:0] v15505_8_address0;
output   v15505_8_ce0;
input  [7:0] v15505_8_q0;
output  [11:0] v15505_9_address0;
output   v15505_9_ce0;
input  [7:0] v15505_9_q0;
output  [11:0] v15505_10_address0;
output   v15505_10_ce0;
input  [7:0] v15505_10_q0;
output  [11:0] v15505_11_address0;
output   v15505_11_ce0;
input  [7:0] v15505_11_q0;
output  [11:0] v15505_12_address0;
output   v15505_12_ce0;
input  [7:0] v15505_12_q0;
output  [11:0] v15505_13_address0;
output   v15505_13_ce0;
input  [7:0] v15505_13_q0;
output  [11:0] v15505_14_address0;
output   v15505_14_ce0;
input  [7:0] v15505_14_q0;
output  [11:0] v15505_15_address0;
output   v15505_15_ce0;
input  [7:0] v15505_15_q0;
output  [0:0] v5852_15_address0;
output   v5852_15_ce0;
output   v5852_15_we0;
output  [7:0] v5852_15_d0;
output  [0:0] v5852_14_address0;
output   v5852_14_ce0;
output   v5852_14_we0;
output  [7:0] v5852_14_d0;
output  [0:0] v5852_13_address0;
output   v5852_13_ce0;
output   v5852_13_we0;
output  [7:0] v5852_13_d0;
output  [0:0] v5852_12_address0;
output   v5852_12_ce0;
output   v5852_12_we0;
output  [7:0] v5852_12_d0;
output  [0:0] v5852_11_address0;
output   v5852_11_ce0;
output   v5852_11_we0;
output  [7:0] v5852_11_d0;
output  [0:0] v5852_10_address0;
output   v5852_10_ce0;
output   v5852_10_we0;
output  [7:0] v5852_10_d0;
output  [0:0] v5852_9_address0;
output   v5852_9_ce0;
output   v5852_9_we0;
output  [7:0] v5852_9_d0;
output  [0:0] v5852_8_address0;
output   v5852_8_ce0;
output   v5852_8_we0;
output  [7:0] v5852_8_d0;
output  [0:0] v5852_7_address0;
output   v5852_7_ce0;
output   v5852_7_we0;
output  [7:0] v5852_7_d0;
output  [0:0] v5852_6_address0;
output   v5852_6_ce0;
output   v5852_6_we0;
output  [7:0] v5852_6_d0;
output  [0:0] v5852_5_address0;
output   v5852_5_ce0;
output   v5852_5_we0;
output  [7:0] v5852_5_d0;
output  [0:0] v5852_4_address0;
output   v5852_4_ce0;
output   v5852_4_we0;
output  [7:0] v5852_4_d0;
output  [0:0] v5852_3_address0;
output   v5852_3_ce0;
output   v5852_3_we0;
output  [7:0] v5852_3_d0;
output  [0:0] v5852_2_address0;
output   v5852_2_ce0;
output   v5852_2_we0;
output  [7:0] v5852_2_d0;
output  [0:0] v5852_1_address0;
output   v5852_1_ce0;
output   v5852_1_we0;
output  [7:0] v5852_1_d0;
output  [0:0] v5852_address0;
output   v5852_ce0;
output   v5852_we0;
output  [7:0] v5852_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_706_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [11:0] idxprom3_i2_cast_fu_596_p1;
reg   [11:0] idxprom3_i2_cast_reg_811;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] lshr_ln_fu_616_p4;
reg   [1:0] lshr_ln_reg_817;
reg   [1:0] lshr_ln_reg_817_pp0_iter1_reg;
wire   [8:0] add_ln6655_1_fu_660_p2;
reg   [8:0] add_ln6655_1_reg_822;
wire   [8:0] add_ln6657_fu_694_p2;
reg   [8:0] add_ln6657_reg_828;
wire   [63:0] zext_ln6655_2_fu_740_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6657_2_fu_766_p1;
wire   [63:0] zext_ln6652_1_fu_785_p1;
reg   [5:0] v5822189_fu_136;
wire   [5:0] v5822_fu_700_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v5822189_load;
reg    v15505_0_ce0_local;
reg    v15505_1_ce0_local;
reg    v15505_2_ce0_local;
reg    v15505_3_ce0_local;
reg    v15505_4_ce0_local;
reg    v15505_5_ce0_local;
reg    v15505_6_ce0_local;
reg    v15505_7_ce0_local;
reg    v15505_8_ce0_local;
reg    v15505_9_ce0_local;
reg    v15505_10_ce0_local;
reg    v15505_11_ce0_local;
reg    v15505_12_ce0_local;
reg    v15505_13_ce0_local;
reg    v15505_14_ce0_local;
reg    v15505_15_ce0_local;
reg    v5852_15_we0_local;
reg    v5852_15_ce0_local;
reg    v5852_14_we0_local;
reg    v5852_14_ce0_local;
reg    v5852_13_we0_local;
reg    v5852_13_ce0_local;
reg    v5852_12_we0_local;
reg    v5852_12_ce0_local;
reg    v5852_11_we0_local;
reg    v5852_11_ce0_local;
reg    v5852_10_we0_local;
reg    v5852_10_ce0_local;
reg    v5852_9_we0_local;
reg    v5852_9_ce0_local;
reg    v5852_8_we0_local;
reg    v5852_8_ce0_local;
reg    v5852_7_we0_local;
reg    v5852_7_ce0_local;
reg    v5852_6_we0_local;
reg    v5852_6_ce0_local;
reg    v5852_5_we0_local;
reg    v5852_5_ce0_local;
reg    v5852_4_we0_local;
reg    v5852_4_ce0_local;
reg    v5852_3_we0_local;
reg    v5852_3_ce0_local;
reg    v5852_2_we0_local;
reg    v5852_2_ce0_local;
reg    v5852_1_we0_local;
reg    v5852_1_ce0_local;
reg    v5852_we0_local;
reg    v5852_ce0_local;
wire   [9:0] zext_ln6652_fu_612_p1;
wire   [5:0] zext_ln6652_2_fu_626_p1;
wire   [5:0] add_ln6655_fu_636_p2;
wire   [8:0] p_shl15_fu_646_p3;
wire   [8:0] zext_ln6655_fu_642_p1;
wire   [8:0] sub_ln6655_fu_654_p2;
wire   [8:0] idxprom1_i1_cast_fu_600_p1;
wire   [9:0] add_ln6654_fu_630_p2;
wire   [5:0] lshr_ln1_fu_666_p4;
wire   [8:0] p_shl13_fu_680_p3;
wire   [8:0] zext_ln6657_fu_676_p1;
wire   [8:0] sub_ln6657_fu_688_p2;
wire   [11:0] p_shl14_fu_722_p3;
wire   [11:0] zext_ln6655_1_fu_719_p1;
wire   [11:0] sub_ln6655_1_fu_729_p2;
wire   [11:0] add_ln6655_2_fu_735_p2;
wire   [11:0] p_shl_fu_748_p3;
wire   [11:0] zext_ln6657_1_fu_745_p1;
wire   [11:0] sub_ln6657_1_fu_755_p2;
wire   [11:0] add_ln6657_1_fu_761_p2;
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
#0 v5822189_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v5822189_fu_136 <= v5822_fu_700_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v5822189_fu_136 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6655_1_reg_822 <= add_ln6655_1_fu_660_p2;
        add_ln6657_reg_828 <= add_ln6657_fu_694_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom3_i2_cast_reg_811[2 : 0] <= idxprom3_i2_cast_fu_596_p1[2 : 0];
        lshr_ln_reg_817 <= {{ap_sig_allocacmp_v5822189_load[5:4]}};
        lshr_ln_reg_817_pp0_iter1_reg <= lshr_ln_reg_817;
    end
end
always @ (*) begin
    if (((tmp_fu_706_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5822189_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5822189_load = v5822189_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_0_ce0_local = 1'b1;
    end else begin
        v15505_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_10_ce0_local = 1'b1;
    end else begin
        v15505_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_11_ce0_local = 1'b1;
    end else begin
        v15505_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_12_ce0_local = 1'b1;
    end else begin
        v15505_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_13_ce0_local = 1'b1;
    end else begin
        v15505_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_14_ce0_local = 1'b1;
    end else begin
        v15505_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_15_ce0_local = 1'b1;
    end else begin
        v15505_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_1_ce0_local = 1'b1;
    end else begin
        v15505_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_2_ce0_local = 1'b1;
    end else begin
        v15505_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_3_ce0_local = 1'b1;
    end else begin
        v15505_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_4_ce0_local = 1'b1;
    end else begin
        v15505_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_5_ce0_local = 1'b1;
    end else begin
        v15505_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_6_ce0_local = 1'b1;
    end else begin
        v15505_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_7_ce0_local = 1'b1;
    end else begin
        v15505_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_8_ce0_local = 1'b1;
    end else begin
        v15505_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15505_9_ce0_local = 1'b1;
    end else begin
        v15505_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_10_ce0_local = 1'b1;
    end else begin
        v5852_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_10_we0_local = 1'b1;
    end else begin
        v5852_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_11_ce0_local = 1'b1;
    end else begin
        v5852_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_11_we0_local = 1'b1;
    end else begin
        v5852_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_12_ce0_local = 1'b1;
    end else begin
        v5852_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_12_we0_local = 1'b1;
    end else begin
        v5852_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_13_ce0_local = 1'b1;
    end else begin
        v5852_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_13_we0_local = 1'b1;
    end else begin
        v5852_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_14_ce0_local = 1'b1;
    end else begin
        v5852_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_14_we0_local = 1'b1;
    end else begin
        v5852_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_15_ce0_local = 1'b1;
    end else begin
        v5852_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_15_we0_local = 1'b1;
    end else begin
        v5852_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_1_ce0_local = 1'b1;
    end else begin
        v5852_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_1_we0_local = 1'b1;
    end else begin
        v5852_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_2_ce0_local = 1'b1;
    end else begin
        v5852_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_2_we0_local = 1'b1;
    end else begin
        v5852_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_3_ce0_local = 1'b1;
    end else begin
        v5852_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_3_we0_local = 1'b1;
    end else begin
        v5852_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_4_ce0_local = 1'b1;
    end else begin
        v5852_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_4_we0_local = 1'b1;
    end else begin
        v5852_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_5_ce0_local = 1'b1;
    end else begin
        v5852_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_5_we0_local = 1'b1;
    end else begin
        v5852_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_6_ce0_local = 1'b1;
    end else begin
        v5852_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_6_we0_local = 1'b1;
    end else begin
        v5852_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_7_ce0_local = 1'b1;
    end else begin
        v5852_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_7_we0_local = 1'b1;
    end else begin
        v5852_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_8_ce0_local = 1'b1;
    end else begin
        v5852_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_8_we0_local = 1'b1;
    end else begin
        v5852_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_9_ce0_local = 1'b1;
    end else begin
        v5852_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_9_we0_local = 1'b1;
    end else begin
        v5852_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_ce0_local = 1'b1;
    end else begin
        v5852_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5852_we0_local = 1'b1;
    end else begin
        v5852_we0_local = 1'b0;
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
assign add_ln6654_fu_630_p2 = (mul_i + zext_ln6652_fu_612_p1);
assign add_ln6655_1_fu_660_p2 = (sub_ln6655_fu_654_p2 + idxprom1_i1_cast_fu_600_p1);
assign add_ln6655_2_fu_735_p2 = (sub_ln6655_1_fu_729_p2 + idxprom3_i2_cast_reg_811);
assign add_ln6655_fu_636_p2 = (zext_ln6652_2_fu_626_p1 + shl_ln);
assign add_ln6657_1_fu_761_p2 = (sub_ln6657_1_fu_755_p2 + idxprom3_i2_cast_reg_811);
assign add_ln6657_fu_694_p2 = (sub_ln6657_fu_688_p2 + idxprom1_i1_cast_fu_600_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom1_i1_cast_fu_600_p1 = idxprom1_i1;
assign idxprom3_i2_cast_fu_596_p1 = idxprom3_i2;
assign lshr_ln1_fu_666_p4 = {{add_ln6654_fu_630_p2[9:4]}};
assign lshr_ln_fu_616_p4 = {{ap_sig_allocacmp_v5822189_load[5:4]}};
assign p_shl13_fu_680_p3 = {{lshr_ln1_fu_666_p4}, {3'd0}};
assign p_shl14_fu_722_p3 = {{add_ln6655_1_reg_822}, {3'd0}};
assign p_shl15_fu_646_p3 = {{add_ln6655_fu_636_p2}, {3'd0}};
assign p_shl_fu_748_p3 = {{add_ln6657_reg_828}, {3'd0}};
assign sub_ln6655_1_fu_729_p2 = (p_shl14_fu_722_p3 - zext_ln6655_1_fu_719_p1);
assign sub_ln6655_fu_654_p2 = (p_shl15_fu_646_p3 - zext_ln6655_fu_642_p1);
assign sub_ln6657_1_fu_755_p2 = (p_shl_fu_748_p3 - zext_ln6657_1_fu_745_p1);
assign sub_ln6657_fu_688_p2 = (p_shl13_fu_680_p3 - zext_ln6657_fu_676_p1);
assign tmp_fu_706_p3 = v5822_fu_700_p2[32'd5];
assign v15505_0_address0 = zext_ln6655_2_fu_740_p1;
assign v15505_0_ce0 = v15505_0_ce0_local;
assign v15505_10_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_10_ce0 = v15505_10_ce0_local;
assign v15505_11_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_11_ce0 = v15505_11_ce0_local;
assign v15505_12_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_12_ce0 = v15505_12_ce0_local;
assign v15505_13_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_13_ce0 = v15505_13_ce0_local;
assign v15505_14_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_14_ce0 = v15505_14_ce0_local;
assign v15505_15_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_15_ce0 = v15505_15_ce0_local;
assign v15505_1_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_1_ce0 = v15505_1_ce0_local;
assign v15505_2_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_2_ce0 = v15505_2_ce0_local;
assign v15505_3_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_3_ce0 = v15505_3_ce0_local;
assign v15505_4_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_4_ce0 = v15505_4_ce0_local;
assign v15505_5_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_5_ce0 = v15505_5_ce0_local;
assign v15505_6_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_6_ce0 = v15505_6_ce0_local;
assign v15505_7_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_7_ce0 = v15505_7_ce0_local;
assign v15505_8_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_8_ce0 = v15505_8_ce0_local;
assign v15505_9_address0 = zext_ln6657_2_fu_766_p1;
assign v15505_9_ce0 = v15505_9_ce0_local;
assign v5822_fu_700_p2 = (ap_sig_allocacmp_v5822189_load + 6'd16);
assign v5852_10_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_10_ce0 = v5852_10_ce0_local;
assign v5852_10_d0 = v15505_5_q0;
assign v5852_10_we0 = v5852_10_we0_local;
assign v5852_11_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_11_ce0 = v5852_11_ce0_local;
assign v5852_11_d0 = v15505_4_q0;
assign v5852_11_we0 = v5852_11_we0_local;
assign v5852_12_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_12_ce0 = v5852_12_ce0_local;
assign v5852_12_d0 = v15505_3_q0;
assign v5852_12_we0 = v5852_12_we0_local;
assign v5852_13_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_13_ce0 = v5852_13_ce0_local;
assign v5852_13_d0 = v15505_2_q0;
assign v5852_13_we0 = v5852_13_we0_local;
assign v5852_14_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_14_ce0 = v5852_14_ce0_local;
assign v5852_14_d0 = v15505_1_q0;
assign v5852_14_we0 = v5852_14_we0_local;
assign v5852_15_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_15_ce0 = v5852_15_ce0_local;
assign v5852_15_d0 = v15505_0_q0;
assign v5852_15_we0 = v5852_15_we0_local;
assign v5852_1_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_1_ce0 = v5852_1_ce0_local;
assign v5852_1_d0 = v15505_14_q0;
assign v5852_1_we0 = v5852_1_we0_local;
assign v5852_2_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_2_ce0 = v5852_2_ce0_local;
assign v5852_2_d0 = v15505_13_q0;
assign v5852_2_we0 = v5852_2_we0_local;
assign v5852_3_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_3_ce0 = v5852_3_ce0_local;
assign v5852_3_d0 = v15505_12_q0;
assign v5852_3_we0 = v5852_3_we0_local;
assign v5852_4_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_4_ce0 = v5852_4_ce0_local;
assign v5852_4_d0 = v15505_11_q0;
assign v5852_4_we0 = v5852_4_we0_local;
assign v5852_5_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_5_ce0 = v5852_5_ce0_local;
assign v5852_5_d0 = v15505_10_q0;
assign v5852_5_we0 = v5852_5_we0_local;
assign v5852_6_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_6_ce0 = v5852_6_ce0_local;
assign v5852_6_d0 = v15505_9_q0;
assign v5852_6_we0 = v5852_6_we0_local;
assign v5852_7_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_7_ce0 = v5852_7_ce0_local;
assign v5852_7_d0 = v15505_8_q0;
assign v5852_7_we0 = v5852_7_we0_local;
assign v5852_8_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_8_ce0 = v5852_8_ce0_local;
assign v5852_8_d0 = v15505_7_q0;
assign v5852_8_we0 = v5852_8_we0_local;
assign v5852_9_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_9_ce0 = v5852_9_ce0_local;
assign v5852_9_d0 = v15505_6_q0;
assign v5852_9_we0 = v5852_9_we0_local;
assign v5852_address0 = zext_ln6652_1_fu_785_p1;
assign v5852_ce0 = v5852_ce0_local;
assign v5852_d0 = v15505_15_q0;
assign v5852_we0 = v5852_we0_local;
assign zext_ln6652_1_fu_785_p1 = lshr_ln_reg_817_pp0_iter1_reg;
assign zext_ln6652_2_fu_626_p1 = lshr_ln_fu_616_p4;
assign zext_ln6652_fu_612_p1 = ap_sig_allocacmp_v5822189_load;
assign zext_ln6655_1_fu_719_p1 = add_ln6655_1_reg_822;
assign zext_ln6655_2_fu_740_p1 = add_ln6655_2_fu_735_p2;
assign zext_ln6655_fu_642_p1 = add_ln6655_fu_636_p2;
assign zext_ln6657_1_fu_745_p1 = add_ln6657_reg_828;
assign zext_ln6657_2_fu_766_p1 = add_ln6657_1_fu_761_p2;
assign zext_ln6657_fu_676_p1 = lshr_ln1_fu_666_p4;
always @ (posedge ap_clk) begin
    idxprom3_i2_cast_reg_811[11:3] <= 9'b000000000;
end
endmodule 
