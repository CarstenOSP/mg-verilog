
module forward_dataflow_in_loop_VITIS_LOOP_15449_1_Loop_VITIS_LOOP_15328_1_proc197104 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12275_address0,v12275_ce0,v12275_we0,v12275_d0,v12275_1_address0,v12275_1_ce0,v12275_1_we0,v12275_1_d0,v12275_2_address0,v12275_2_ce0,v12275_2_we0,v12275_2_d0,v12275_3_address0,v12275_3_ce0,v12275_3_we0,v12275_3_d0,v12275_4_address0,v12275_4_ce0,v12275_4_we0,v12275_4_d0,v12275_5_address0,v12275_5_ce0,v12275_5_we0,v12275_5_d0,v12275_6_address0,v12275_6_ce0,v12275_6_we0,v12275_6_d0,v12275_7_address0,v12275_7_ce0,v12275_7_we0,v12275_7_d0,v12275_8_address0,v12275_8_ce0,v12275_8_we0,v12275_8_d0,v12275_9_address0,v12275_9_ce0,v12275_9_we0,v12275_9_d0,v12275_10_address0,v12275_10_ce0,v12275_10_we0,v12275_10_d0,v12275_11_address0,v12275_11_ce0,v12275_11_we0,v12275_11_d0,v12275_12_address0,v12275_12_ce0,v12275_12_we0,v12275_12_d0,v12275_13_address0,v12275_13_ce0,v12275_13_we0,v12275_13_d0,v12275_14_address0,v12275_14_ce0,v12275_14_we0,v12275_14_d0,v12275_15_address0,v12275_15_ce0,v12275_15_we0,v12275_15_d0,v12269,v15407_0_0_address0,v15407_0_0_ce0,v15407_0_0_q0,v15407_0_1_address0,v15407_0_1_ce0,v15407_0_1_q0,v15407_0_2_address0,v15407_0_2_ce0,v15407_0_2_q0,v15407_0_3_address0,v15407_0_3_ce0,v15407_0_3_q0,v15407_1_0_address0,v15407_1_0_ce0,v15407_1_0_q0,v15407_1_1_address0,v15407_1_1_ce0,v15407_1_1_q0,v15407_1_2_address0,v15407_1_2_ce0,v15407_1_2_q0,v15407_1_3_address0,v15407_1_3_ce0,v15407_1_3_q0,v15407_2_0_address0,v15407_2_0_ce0,v15407_2_0_q0,v15407_2_1_address0,v15407_2_1_ce0,v15407_2_1_q0,v15407_2_2_address0,v15407_2_2_ce0,v15407_2_2_q0,v15407_2_3_address0,v15407_2_3_ce0,v15407_2_3_q0,v15407_3_0_address0,v15407_3_0_ce0,v15407_3_0_q0,v15407_3_1_address0,v15407_3_1_ce0,v15407_3_1_q0,v15407_3_2_address0,v15407_3_2_ce0,v15407_3_2_q0,v15407_3_3_address0,v15407_3_3_ce0,v15407_3_3_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v12275_address0;
output   v12275_ce0;
output   v12275_we0;
output  [7:0] v12275_d0;
output  [5:0] v12275_1_address0;
output   v12275_1_ce0;
output   v12275_1_we0;
output  [7:0] v12275_1_d0;
output  [5:0] v12275_2_address0;
output   v12275_2_ce0;
output   v12275_2_we0;
output  [7:0] v12275_2_d0;
output  [5:0] v12275_3_address0;
output   v12275_3_ce0;
output   v12275_3_we0;
output  [7:0] v12275_3_d0;
output  [5:0] v12275_4_address0;
output   v12275_4_ce0;
output   v12275_4_we0;
output  [7:0] v12275_4_d0;
output  [5:0] v12275_5_address0;
output   v12275_5_ce0;
output   v12275_5_we0;
output  [7:0] v12275_5_d0;
output  [5:0] v12275_6_address0;
output   v12275_6_ce0;
output   v12275_6_we0;
output  [7:0] v12275_6_d0;
output  [5:0] v12275_7_address0;
output   v12275_7_ce0;
output   v12275_7_we0;
output  [7:0] v12275_7_d0;
output  [5:0] v12275_8_address0;
output   v12275_8_ce0;
output   v12275_8_we0;
output  [7:0] v12275_8_d0;
output  [5:0] v12275_9_address0;
output   v12275_9_ce0;
output   v12275_9_we0;
output  [7:0] v12275_9_d0;
output  [5:0] v12275_10_address0;
output   v12275_10_ce0;
output   v12275_10_we0;
output  [7:0] v12275_10_d0;
output  [5:0] v12275_11_address0;
output   v12275_11_ce0;
output   v12275_11_we0;
output  [7:0] v12275_11_d0;
output  [5:0] v12275_12_address0;
output   v12275_12_ce0;
output   v12275_12_we0;
output  [7:0] v12275_12_d0;
output  [5:0] v12275_13_address0;
output   v12275_13_ce0;
output   v12275_13_we0;
output  [7:0] v12275_13_d0;
output  [5:0] v12275_14_address0;
output   v12275_14_ce0;
output   v12275_14_we0;
output  [7:0] v12275_14_d0;
output  [5:0] v12275_15_address0;
output   v12275_15_ce0;
output   v12275_15_we0;
output  [7:0] v12275_15_d0;
input  [7:0] v12269;
output  [11:0] v15407_0_0_address0;
output   v15407_0_0_ce0;
input  [7:0] v15407_0_0_q0;
output  [11:0] v15407_0_1_address0;
output   v15407_0_1_ce0;
input  [7:0] v15407_0_1_q0;
output  [11:0] v15407_0_2_address0;
output   v15407_0_2_ce0;
input  [7:0] v15407_0_2_q0;
output  [11:0] v15407_0_3_address0;
output   v15407_0_3_ce0;
input  [7:0] v15407_0_3_q0;
output  [11:0] v15407_1_0_address0;
output   v15407_1_0_ce0;
input  [7:0] v15407_1_0_q0;
output  [11:0] v15407_1_1_address0;
output   v15407_1_1_ce0;
input  [7:0] v15407_1_1_q0;
output  [11:0] v15407_1_2_address0;
output   v15407_1_2_ce0;
input  [7:0] v15407_1_2_q0;
output  [11:0] v15407_1_3_address0;
output   v15407_1_3_ce0;
input  [7:0] v15407_1_3_q0;
output  [11:0] v15407_2_0_address0;
output   v15407_2_0_ce0;
input  [7:0] v15407_2_0_q0;
output  [11:0] v15407_2_1_address0;
output   v15407_2_1_ce0;
input  [7:0] v15407_2_1_q0;
output  [11:0] v15407_2_2_address0;
output   v15407_2_2_ce0;
input  [7:0] v15407_2_2_q0;
output  [11:0] v15407_2_3_address0;
output   v15407_2_3_ce0;
input  [7:0] v15407_2_3_q0;
output  [11:0] v15407_3_0_address0;
output   v15407_3_0_ce0;
input  [7:0] v15407_3_0_q0;
output  [11:0] v15407_3_1_address0;
output   v15407_3_1_ce0;
input  [7:0] v15407_3_1_q0;
output  [11:0] v15407_3_2_address0;
output   v15407_3_2_ce0;
input  [7:0] v15407_3_2_q0;
output  [11:0] v15407_3_3_address0;
output   v15407_3_3_ce0;
input  [7:0] v15407_3_3_q0;
output  [7:0] ap_return;
reg ap_idle;
reg[7:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15328_fu_798_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [7:0] v12269_read_reg_951;
reg   [7:0] v12269_read_reg_951_pp0_iter1_reg;
wire   [5:0] trunc_ln_i_fu_626_p3;
reg   [5:0] trunc_ln_i_reg_955;
wire   [2:0] tmp_193_i_fu_634_p4;
reg   [2:0] tmp_193_i_reg_960;
reg   [3:0] lshr_ln_i_reg_966;
reg   [2:0] lshr_ln_i_cast_reg_971;
reg   [2:0] lshr_ln_i_cast_reg_971_pp0_iter1_reg;
reg   [5:0] tmp_195_i_reg_976;
reg   [2:0] lshr_ln107_i_reg_982;
reg   [2:0] lshr_ln107_i_reg_982_pp0_iter1_reg;
reg   [6:0] lshr_ln108_i_reg_989;
wire   [0:0] xor_ln15329_fu_792_p2;
reg   [0:0] xor_ln15329_reg_994;
reg   [0:0] icmp_ln15328_reg_999;
reg   [0:0] ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln15332_fu_850_p1;
wire   [63:0] zext_ln15340_fu_862_p1;
wire   [63:0] zext_ln15334_1_fu_878_p1;
wire   [63:0] zext_ln15342_fu_891_p1;
wire   [63:0] zext_ln15362_fu_910_p1;
reg   [5:0] indvar_flatten189_i_fu_148;
wire   [5:0] add_ln15328_1_fu_778_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten189_i_load;
reg   [5:0] v12221190_i_fu_152;
wire   [5:0] select_ln15328_1_fu_694_p3;
reg   [5:0] ap_sig_allocacmp_v12221190_i_load;
reg   [5:0] v12222191_i_fu_156;
wire   [5:0] add_ln15329_fu_772_p2;
reg   [5:0] ap_sig_allocacmp_v12222191_i_load;
reg    v15407_0_0_ce0_local;
reg    v15407_0_1_ce0_local;
reg    v15407_0_2_ce0_local;
reg    v15407_0_3_ce0_local;
reg    v15407_1_0_ce0_local;
reg    v15407_1_1_ce0_local;
reg    v15407_1_2_ce0_local;
reg    v15407_1_3_ce0_local;
reg    v15407_2_0_ce0_local;
reg    v15407_2_1_ce0_local;
reg    v15407_2_2_ce0_local;
reg    v15407_2_3_ce0_local;
reg    v15407_3_0_ce0_local;
reg    v15407_3_1_ce0_local;
reg    v15407_3_2_ce0_local;
reg    v15407_3_3_ce0_local;
reg    v12275_15_we0_local;
reg    v12275_15_ce0_local;
reg    v12275_14_we0_local;
reg    v12275_14_ce0_local;
reg    v12275_13_we0_local;
reg    v12275_13_ce0_local;
reg    v12275_12_we0_local;
reg    v12275_12_ce0_local;
reg    v12275_11_we0_local;
reg    v12275_11_ce0_local;
reg    v12275_10_we0_local;
reg    v12275_10_ce0_local;
reg    v12275_9_we0_local;
reg    v12275_9_ce0_local;
reg    v12275_8_we0_local;
reg    v12275_8_ce0_local;
reg    v12275_7_we0_local;
reg    v12275_7_ce0_local;
reg    v12275_6_we0_local;
reg    v12275_6_ce0_local;
reg    v12275_5_we0_local;
reg    v12275_5_ce0_local;
reg    v12275_4_we0_local;
reg    v12275_4_ce0_local;
reg    v12275_3_we0_local;
reg    v12275_3_ce0_local;
reg    v12275_2_we0_local;
reg    v12275_2_ce0_local;
reg    v12275_1_we0_local;
reg    v12275_1_ce0_local;
reg    v12275_we0_local;
reg    v12275_ce0_local;
wire   [2:0] tmp_i_fu_608_p4;
wire   [7:0] mul_i298_i_i_fu_644_p3;
wire   [5:0] add_ln15328_fu_680_p2;
wire   [7:0] mul_i179_i_i_fu_618_p3;
wire   [7:0] zext_ln15328_fu_702_p1;
wire   [7:0] empty_fu_726_p2;
wire   [5:0] select_ln15328_fu_686_p3;
wire   [8:0] mul_i298_cast_i_i_fu_652_p1;
wire   [8:0] zext_ln15329_fu_742_p1;
wire   [8:0] add_ln15331_fu_756_p2;
wire   [0:0] tmp_fu_784_p3;
wire   [5:0] zext_ln15328_1_fu_819_p1;
wire   [5:0] empty_343_fu_822_p2;
wire   [11:0] tmp_200_i_fu_842_p4;
wire   [11:0] tmp_202_i_fu_855_p4;
wire   [11:0] tmp_194_i_fu_827_p3;
wire   [11:0] zext_ln15334_fu_869_p1;
wire   [11:0] add_ln15334_fu_872_p2;
wire   [11:0] tmp_196_i_fu_835_p3;
wire   [11:0] add_ln15342_fu_885_p2;
wire   [5:0] tmp_198_i_fu_904_p3;
reg   [7:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_694;
reg    ap_condition_277;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten189_i_fu_148 = 6'd0;
#0 v12221190_i_fu_152 = 6'd0;
#0 v12222191_i_fu_156 = 6'd0;
#0 ap_return_preg = 8'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 8'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= v12269_read_reg_951_pp0_iter1_reg;
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
    if ((1'b1 == ap_condition_277)) begin
        indvar_flatten189_i_fu_148 <= add_ln15328_1_fu_778_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_277)) begin
    v12221190_i_fu_152 <= select_ln15328_1_fu_694_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_277)) begin
    v12222191_i_fu_156 <= add_ln15329_fu_772_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln15328_reg_999 <= icmp_ln15328_fu_798_p2;
        lshr_ln107_i_reg_982 <= {{select_ln15328_fu_686_p3[4:2]}};
        lshr_ln107_i_reg_982_pp0_iter1_reg <= lshr_ln107_i_reg_982;
        lshr_ln108_i_reg_989 <= {{add_ln15331_fu_756_p2[8:2]}};
        lshr_ln_i_cast_reg_971 <= {{select_ln15328_1_fu_694_p3[4:2]}};
        lshr_ln_i_cast_reg_971_pp0_iter1_reg <= lshr_ln_i_cast_reg_971;
        lshr_ln_i_reg_966 <= {{select_ln15328_1_fu_694_p3[5:2]}};
        tmp_193_i_reg_960 <= {{v12269[7:5]}};
        tmp_195_i_reg_976 <= {{empty_fu_726_p2[7:2]}};
        trunc_ln_i_reg_955[5 : 3] <= trunc_ln_i_fu_626_p3[5 : 3];
        v12269_read_reg_951_pp0_iter1_reg <= v12269_read_reg_951;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12269_read_reg_951 <= v12269;
        xor_ln15329_reg_994 <= xor_ln15329_fu_792_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15328_fu_798_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_694)) begin
            ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4 = xor_ln15329_reg_994;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4 = xor_ln15329_reg_994;
        end
    end else begin
        ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4 = xor_ln15329_reg_994;
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = v12269_read_reg_951_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten189_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten189_i_load = indvar_flatten189_i_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12221190_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v12221190_i_load = v12221190_i_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12222191_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v12222191_i_load = v12222191_i_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_10_ce0_local = 1'b1;
    end else begin
        v12275_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_10_we0_local = 1'b1;
    end else begin
        v12275_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_11_ce0_local = 1'b1;
    end else begin
        v12275_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_11_we0_local = 1'b1;
    end else begin
        v12275_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_12_ce0_local = 1'b1;
    end else begin
        v12275_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_12_we0_local = 1'b1;
    end else begin
        v12275_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_13_ce0_local = 1'b1;
    end else begin
        v12275_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_13_we0_local = 1'b1;
    end else begin
        v12275_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_14_ce0_local = 1'b1;
    end else begin
        v12275_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_14_we0_local = 1'b1;
    end else begin
        v12275_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_15_ce0_local = 1'b1;
    end else begin
        v12275_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_15_we0_local = 1'b1;
    end else begin
        v12275_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_1_ce0_local = 1'b1;
    end else begin
        v12275_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_1_we0_local = 1'b1;
    end else begin
        v12275_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_2_ce0_local = 1'b1;
    end else begin
        v12275_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_2_we0_local = 1'b1;
    end else begin
        v12275_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_3_ce0_local = 1'b1;
    end else begin
        v12275_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_3_we0_local = 1'b1;
    end else begin
        v12275_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_4_ce0_local = 1'b1;
    end else begin
        v12275_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_4_we0_local = 1'b1;
    end else begin
        v12275_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_5_ce0_local = 1'b1;
    end else begin
        v12275_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_5_we0_local = 1'b1;
    end else begin
        v12275_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_6_ce0_local = 1'b1;
    end else begin
        v12275_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_6_we0_local = 1'b1;
    end else begin
        v12275_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_7_ce0_local = 1'b1;
    end else begin
        v12275_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_7_we0_local = 1'b1;
    end else begin
        v12275_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_8_ce0_local = 1'b1;
    end else begin
        v12275_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_8_we0_local = 1'b1;
    end else begin
        v12275_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_9_ce0_local = 1'b1;
    end else begin
        v12275_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_9_we0_local = 1'b1;
    end else begin
        v12275_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_ce0_local = 1'b1;
    end else begin
        v12275_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12275_we0_local = 1'b1;
    end else begin
        v12275_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_0_0_ce0_local = 1'b1;
    end else begin
        v15407_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_0_1_ce0_local = 1'b1;
    end else begin
        v15407_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_0_2_ce0_local = 1'b1;
    end else begin
        v15407_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_0_3_ce0_local = 1'b1;
    end else begin
        v15407_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_1_0_ce0_local = 1'b1;
    end else begin
        v15407_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_1_1_ce0_local = 1'b1;
    end else begin
        v15407_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_1_2_ce0_local = 1'b1;
    end else begin
        v15407_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_1_3_ce0_local = 1'b1;
    end else begin
        v15407_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_2_0_ce0_local = 1'b1;
    end else begin
        v15407_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_2_1_ce0_local = 1'b1;
    end else begin
        v15407_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_2_2_ce0_local = 1'b1;
    end else begin
        v15407_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_2_3_ce0_local = 1'b1;
    end else begin
        v15407_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_3_0_ce0_local = 1'b1;
    end else begin
        v15407_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_3_1_ce0_local = 1'b1;
    end else begin
        v15407_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_3_2_ce0_local = 1'b1;
    end else begin
        v15407_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15407_3_3_ce0_local = 1'b1;
    end else begin
        v15407_3_3_ce0_local = 1'b0;
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
assign add_ln15328_1_fu_778_p2 = (ap_sig_allocacmp_indvar_flatten189_i_load + 6'd1);
assign add_ln15328_fu_680_p2 = (ap_sig_allocacmp_v12221190_i_load + 6'd4);
assign add_ln15329_fu_772_p2 = (select_ln15328_fu_686_p3 + 6'd4);
assign add_ln15331_fu_756_p2 = (mul_i298_cast_i_i_fu_652_p1 + zext_ln15329_fu_742_p1);
assign add_ln15334_fu_872_p2 = (tmp_194_i_fu_827_p3 + zext_ln15334_fu_869_p1);
assign add_ln15342_fu_885_p2 = (tmp_196_i_fu_835_p3 + zext_ln15334_fu_869_p1);
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
    ap_condition_277 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_694 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15328_reg_999 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_343_fu_822_p2 = (zext_ln15328_1_fu_819_p1 + trunc_ln_i_reg_955);
assign empty_fu_726_p2 = (mul_i179_i_i_fu_618_p3 + zext_ln15328_fu_702_p1);
assign icmp_ln15328_fu_798_p2 = ((ap_sig_allocacmp_indvar_flatten189_i_load == 6'd63) ? 1'b1 : 1'b0);
assign mul_i179_i_i_fu_618_p3 = {{tmp_i_fu_608_p4}, {5'd0}};
assign mul_i298_cast_i_i_fu_652_p1 = mul_i298_i_i_fu_644_p3;
assign mul_i298_i_i_fu_644_p3 = {{tmp_193_i_fu_634_p4}, {5'd0}};
assign select_ln15328_1_fu_694_p3 = ((ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v12221190_i_load : add_ln15328_fu_680_p2);
assign select_ln15328_fu_686_p3 = ((ap_phi_mux_icmp_ln15329192_i_phi_fu_601_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v12222191_i_load : 6'd0);
assign tmp_193_i_fu_634_p4 = {{v12269[7:5]}};
assign tmp_194_i_fu_827_p3 = {{empty_343_fu_822_p2}, {6'd0}};
assign tmp_196_i_fu_835_p3 = {{tmp_195_i_reg_976}, {6'd0}};
assign tmp_198_i_fu_904_p3 = {{lshr_ln_i_cast_reg_971_pp0_iter1_reg}, {lshr_ln107_i_reg_982_pp0_iter1_reg}};
assign tmp_200_i_fu_842_p4 = {{{empty_343_fu_822_p2}, {tmp_193_i_reg_960}}, {lshr_ln107_i_reg_982}};
assign tmp_202_i_fu_855_p4 = {{{tmp_195_i_reg_976}, {tmp_193_i_reg_960}}, {lshr_ln107_i_reg_982}};
assign tmp_fu_784_p3 = add_ln15329_fu_772_p2[32'd5];
assign tmp_i_fu_608_p4 = {{v12269[4:2]}};
assign trunc_ln_i_fu_626_p3 = {{tmp_i_fu_608_p4}, {3'd0}};
assign v12275_10_address0 = zext_ln15362_fu_910_p1;
assign v12275_10_ce0 = v12275_10_ce0_local;
assign v12275_10_d0 = v15407_1_1_q0;
assign v12275_10_we0 = v12275_10_we0_local;
assign v12275_11_address0 = zext_ln15362_fu_910_p1;
assign v12275_11_ce0 = v12275_11_ce0_local;
assign v12275_11_d0 = v15407_1_0_q0;
assign v12275_11_we0 = v12275_11_we0_local;
assign v12275_12_address0 = zext_ln15362_fu_910_p1;
assign v12275_12_ce0 = v12275_12_ce0_local;
assign v12275_12_d0 = v15407_0_3_q0;
assign v12275_12_we0 = v12275_12_we0_local;
assign v12275_13_address0 = zext_ln15362_fu_910_p1;
assign v12275_13_ce0 = v12275_13_ce0_local;
assign v12275_13_d0 = v15407_0_2_q0;
assign v12275_13_we0 = v12275_13_we0_local;
assign v12275_14_address0 = zext_ln15362_fu_910_p1;
assign v12275_14_ce0 = v12275_14_ce0_local;
assign v12275_14_d0 = v15407_0_1_q0;
assign v12275_14_we0 = v12275_14_we0_local;
assign v12275_15_address0 = zext_ln15362_fu_910_p1;
assign v12275_15_ce0 = v12275_15_ce0_local;
assign v12275_15_d0 = v15407_0_0_q0;
assign v12275_15_we0 = v12275_15_we0_local;
assign v12275_1_address0 = zext_ln15362_fu_910_p1;
assign v12275_1_ce0 = v12275_1_ce0_local;
assign v12275_1_d0 = v15407_3_2_q0;
assign v12275_1_we0 = v12275_1_we0_local;
assign v12275_2_address0 = zext_ln15362_fu_910_p1;
assign v12275_2_ce0 = v12275_2_ce0_local;
assign v12275_2_d0 = v15407_3_1_q0;
assign v12275_2_we0 = v12275_2_we0_local;
assign v12275_3_address0 = zext_ln15362_fu_910_p1;
assign v12275_3_ce0 = v12275_3_ce0_local;
assign v12275_3_d0 = v15407_3_0_q0;
assign v12275_3_we0 = v12275_3_we0_local;
assign v12275_4_address0 = zext_ln15362_fu_910_p1;
assign v12275_4_ce0 = v12275_4_ce0_local;
assign v12275_4_d0 = v15407_2_3_q0;
assign v12275_4_we0 = v12275_4_we0_local;
assign v12275_5_address0 = zext_ln15362_fu_910_p1;
assign v12275_5_ce0 = v12275_5_ce0_local;
assign v12275_5_d0 = v15407_2_2_q0;
assign v12275_5_we0 = v12275_5_we0_local;
assign v12275_6_address0 = zext_ln15362_fu_910_p1;
assign v12275_6_ce0 = v12275_6_ce0_local;
assign v12275_6_d0 = v15407_2_1_q0;
assign v12275_6_we0 = v12275_6_we0_local;
assign v12275_7_address0 = zext_ln15362_fu_910_p1;
assign v12275_7_ce0 = v12275_7_ce0_local;
assign v12275_7_d0 = v15407_2_0_q0;
assign v12275_7_we0 = v12275_7_we0_local;
assign v12275_8_address0 = zext_ln15362_fu_910_p1;
assign v12275_8_ce0 = v12275_8_ce0_local;
assign v12275_8_d0 = v15407_1_3_q0;
assign v12275_8_we0 = v12275_8_we0_local;
assign v12275_9_address0 = zext_ln15362_fu_910_p1;
assign v12275_9_ce0 = v12275_9_ce0_local;
assign v12275_9_d0 = v15407_1_2_q0;
assign v12275_9_we0 = v12275_9_we0_local;
assign v12275_address0 = zext_ln15362_fu_910_p1;
assign v12275_ce0 = v12275_ce0_local;
assign v12275_d0 = v15407_3_3_q0;
assign v12275_we0 = v12275_we0_local;
assign v15407_0_0_address0 = zext_ln15332_fu_850_p1;
assign v15407_0_0_ce0 = v15407_0_0_ce0_local;
assign v15407_0_1_address0 = zext_ln15334_1_fu_878_p1;
assign v15407_0_1_ce0 = v15407_0_1_ce0_local;
assign v15407_0_2_address0 = zext_ln15334_1_fu_878_p1;
assign v15407_0_2_ce0 = v15407_0_2_ce0_local;
assign v15407_0_3_address0 = zext_ln15334_1_fu_878_p1;
assign v15407_0_3_ce0 = v15407_0_3_ce0_local;
assign v15407_1_0_address0 = zext_ln15340_fu_862_p1;
assign v15407_1_0_ce0 = v15407_1_0_ce0_local;
assign v15407_1_1_address0 = zext_ln15342_fu_891_p1;
assign v15407_1_1_ce0 = v15407_1_1_ce0_local;
assign v15407_1_2_address0 = zext_ln15342_fu_891_p1;
assign v15407_1_2_ce0 = v15407_1_2_ce0_local;
assign v15407_1_3_address0 = zext_ln15342_fu_891_p1;
assign v15407_1_3_ce0 = v15407_1_3_ce0_local;
assign v15407_2_0_address0 = zext_ln15340_fu_862_p1;
assign v15407_2_0_ce0 = v15407_2_0_ce0_local;
assign v15407_2_1_address0 = zext_ln15342_fu_891_p1;
assign v15407_2_1_ce0 = v15407_2_1_ce0_local;
assign v15407_2_2_address0 = zext_ln15342_fu_891_p1;
assign v15407_2_2_ce0 = v15407_2_2_ce0_local;
assign v15407_2_3_address0 = zext_ln15342_fu_891_p1;
assign v15407_2_3_ce0 = v15407_2_3_ce0_local;
assign v15407_3_0_address0 = zext_ln15340_fu_862_p1;
assign v15407_3_0_ce0 = v15407_3_0_ce0_local;
assign v15407_3_1_address0 = zext_ln15342_fu_891_p1;
assign v15407_3_1_ce0 = v15407_3_1_ce0_local;
assign v15407_3_2_address0 = zext_ln15342_fu_891_p1;
assign v15407_3_2_ce0 = v15407_3_2_ce0_local;
assign v15407_3_3_address0 = zext_ln15342_fu_891_p1;
assign v15407_3_3_ce0 = v15407_3_3_ce0_local;
assign xor_ln15329_fu_792_p2 = (tmp_fu_784_p3 ^ 1'd1);
assign zext_ln15328_1_fu_819_p1 = lshr_ln_i_reg_966;
assign zext_ln15328_fu_702_p1 = select_ln15328_1_fu_694_p3;
assign zext_ln15329_fu_742_p1 = select_ln15328_fu_686_p3;
assign zext_ln15332_fu_850_p1 = tmp_200_i_fu_842_p4;
assign zext_ln15334_1_fu_878_p1 = add_ln15334_fu_872_p2;
assign zext_ln15334_fu_869_p1 = lshr_ln108_i_reg_989;
assign zext_ln15340_fu_862_p1 = tmp_202_i_fu_855_p4;
assign zext_ln15342_fu_891_p1 = add_ln15342_fu_885_p2;
assign zext_ln15362_fu_910_p1 = tmp_198_i_fu_904_p3;
always @ (posedge ap_clk) begin
    trunc_ln_i_reg_955[2:0] <= 3'b000;
end
endmodule 
