module forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20541_1_proc34_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v16162_0_0_0_address0,v16162_0_0_0_ce0,v16162_0_0_0_we0,v16162_0_0_0_d0,v16162_0_0_1_address0,v16162_0_0_1_ce0,v16162_0_0_1_we0,v16162_0_0_1_d0,v16162_0_0_2_address0,v16162_0_0_2_ce0,v16162_0_0_2_we0,v16162_0_0_2_d0,v16162_0_0_3_address0,v16162_0_0_3_ce0,v16162_0_0_3_we0,v16162_0_0_3_d0,v16162_0_1_0_address0,v16162_0_1_0_ce0,v16162_0_1_0_we0,v16162_0_1_0_d0,v16162_0_1_1_address0,v16162_0_1_1_ce0,v16162_0_1_1_we0,v16162_0_1_1_d0,v16162_0_1_2_address0,v16162_0_1_2_ce0,v16162_0_1_2_we0,v16162_0_1_2_d0,v16162_0_1_3_address0,v16162_0_1_3_ce0,v16162_0_1_3_we0,v16162_0_1_3_d0,v16162_1_0_0_address0,v16162_1_0_0_ce0,v16162_1_0_0_we0,v16162_1_0_0_d0,v16162_1_0_1_address0,v16162_1_0_1_ce0,v16162_1_0_1_we0,v16162_1_0_1_d0,v16162_1_0_2_address0,v16162_1_0_2_ce0,v16162_1_0_2_we0,v16162_1_0_2_d0,v16162_1_0_3_address0,v16162_1_0_3_ce0,v16162_1_0_3_we0,v16162_1_0_3_d0,v16162_1_1_0_address0,v16162_1_1_0_ce0,v16162_1_1_0_we0,v16162_1_1_0_d0,v16162_1_1_1_address0,v16162_1_1_1_ce0,v16162_1_1_1_we0,v16162_1_1_1_d0,v16162_1_1_2_address0,v16162_1_1_2_ce0,v16162_1_1_2_we0,v16162_1_1_2_d0,v16162_1_1_3_address0,v16162_1_1_3_ce0,v16162_1_1_3_we0,v16162_1_1_3_d0,rem4,empty,mul9_i,v16142_15_address0,v16142_15_ce0,v16142_15_q0,v16142_14_address0,v16142_14_ce0,v16142_14_q0,v16142_13_address0,v16142_13_ce0,v16142_13_q0,v16142_12_address0,v16142_12_ce0,v16142_12_q0,v16142_11_address0,v16142_11_ce0,v16142_11_q0,v16142_10_address0,v16142_10_ce0,v16142_10_q0,v16142_9_address0,v16142_9_ce0,v16142_9_q0,v16142_8_address0,v16142_8_ce0,v16142_8_q0,v16142_7_address0,v16142_7_ce0,v16142_7_q0,v16142_6_address0,v16142_6_ce0,v16142_6_q0,v16142_5_address0,v16142_5_ce0,v16142_5_q0,v16142_4_address0,v16142_4_ce0,v16142_4_q0,v16142_3_address0,v16142_3_ce0,v16142_3_q0,v16142_2_address0,v16142_2_ce0,v16142_2_q0,v16142_1_address0,v16142_1_ce0,v16142_1_q0,v16142_address0,v16142_ce0,v16142_q0,mul13_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] v16162_0_0_0_address0;
output   v16162_0_0_0_ce0;
output   v16162_0_0_0_we0;
output  [7:0] v16162_0_0_0_d0;
output  [16:0] v16162_0_0_1_address0;
output   v16162_0_0_1_ce0;
output   v16162_0_0_1_we0;
output  [7:0] v16162_0_0_1_d0;
output  [16:0] v16162_0_0_2_address0;
output   v16162_0_0_2_ce0;
output   v16162_0_0_2_we0;
output  [7:0] v16162_0_0_2_d0;
output  [16:0] v16162_0_0_3_address0;
output   v16162_0_0_3_ce0;
output   v16162_0_0_3_we0;
output  [7:0] v16162_0_0_3_d0;
output  [16:0] v16162_0_1_0_address0;
output   v16162_0_1_0_ce0;
output   v16162_0_1_0_we0;
output  [7:0] v16162_0_1_0_d0;
output  [16:0] v16162_0_1_1_address0;
output   v16162_0_1_1_ce0;
output   v16162_0_1_1_we0;
output  [7:0] v16162_0_1_1_d0;
output  [16:0] v16162_0_1_2_address0;
output   v16162_0_1_2_ce0;
output   v16162_0_1_2_we0;
output  [7:0] v16162_0_1_2_d0;
output  [16:0] v16162_0_1_3_address0;
output   v16162_0_1_3_ce0;
output   v16162_0_1_3_we0;
output  [7:0] v16162_0_1_3_d0;
output  [16:0] v16162_1_0_0_address0;
output   v16162_1_0_0_ce0;
output   v16162_1_0_0_we0;
output  [7:0] v16162_1_0_0_d0;
output  [16:0] v16162_1_0_1_address0;
output   v16162_1_0_1_ce0;
output   v16162_1_0_1_we0;
output  [7:0] v16162_1_0_1_d0;
output  [16:0] v16162_1_0_2_address0;
output   v16162_1_0_2_ce0;
output   v16162_1_0_2_we0;
output  [7:0] v16162_1_0_2_d0;
output  [16:0] v16162_1_0_3_address0;
output   v16162_1_0_3_ce0;
output   v16162_1_0_3_we0;
output  [7:0] v16162_1_0_3_d0;
output  [16:0] v16162_1_1_0_address0;
output   v16162_1_1_0_ce0;
output   v16162_1_1_0_we0;
output  [7:0] v16162_1_1_0_d0;
output  [16:0] v16162_1_1_1_address0;
output   v16162_1_1_1_ce0;
output   v16162_1_1_1_we0;
output  [7:0] v16162_1_1_1_d0;
output  [16:0] v16162_1_1_2_address0;
output   v16162_1_1_2_ce0;
output   v16162_1_1_2_we0;
output  [7:0] v16162_1_1_2_d0;
output  [16:0] v16162_1_1_3_address0;
output   v16162_1_1_3_ce0;
output   v16162_1_1_3_we0;
output  [7:0] v16162_1_1_3_d0;
input  [4:0] rem4;
input  [0:0] empty;
input  [7:0] mul9_i;
output  [9:0] v16142_15_address0;
output   v16142_15_ce0;
input  [7:0] v16142_15_q0;
output  [9:0] v16142_14_address0;
output   v16142_14_ce0;
input  [7:0] v16142_14_q0;
output  [9:0] v16142_13_address0;
output   v16142_13_ce0;
input  [7:0] v16142_13_q0;
output  [9:0] v16142_12_address0;
output   v16142_12_ce0;
input  [7:0] v16142_12_q0;
output  [9:0] v16142_11_address0;
output   v16142_11_ce0;
input  [7:0] v16142_11_q0;
output  [9:0] v16142_10_address0;
output   v16142_10_ce0;
input  [7:0] v16142_10_q0;
output  [9:0] v16142_9_address0;
output   v16142_9_ce0;
input  [7:0] v16142_9_q0;
output  [9:0] v16142_8_address0;
output   v16142_8_ce0;
input  [7:0] v16142_8_q0;
output  [9:0] v16142_7_address0;
output   v16142_7_ce0;
input  [7:0] v16142_7_q0;
output  [9:0] v16142_6_address0;
output   v16142_6_ce0;
input  [7:0] v16142_6_q0;
output  [9:0] v16142_5_address0;
output   v16142_5_ce0;
input  [7:0] v16142_5_q0;
output  [9:0] v16142_4_address0;
output   v16142_4_ce0;
input  [7:0] v16142_4_q0;
output  [9:0] v16142_3_address0;
output   v16142_3_ce0;
input  [7:0] v16142_3_q0;
output  [9:0] v16142_2_address0;
output   v16142_2_ce0;
input  [7:0] v16142_2_q0;
output  [9:0] v16142_1_address0;
output   v16142_1_ce0;
input  [7:0] v16142_1_q0;
output  [9:0] v16142_address0;
output   v16142_ce0;
input  [7:0] v16142_q0;
input  [7:0] mul13_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20541_fu_868_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln20542294_reg_660;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tmp_s_reg_1171;
reg   [2:0] lshr_ln30_reg_1176;
reg   [3:0] tmp_42_reg_1181;
reg   [5:0] lshr_ln31_reg_1186;
reg   [5:0] lshr_ln31_reg_1186_pp0_iter1_reg;
wire   [0:0] xor_ln20543_fu_856_p2;
reg   [0:0] xor_ln20543_reg_1191;
wire   [0:0] icmp_ln20542_fu_862_p2;
reg   [0:0] icmp_ln20542_reg_1196;
reg   [0:0] icmp_ln20541_reg_1201;
wire   [10:0] add_ln20576_fu_993_p2;
reg   [10:0] add_ln20576_reg_1205;
wire   [10:0] add_ln20560_fu_999_p2;
reg   [10:0] add_ln20560_reg_1211;
reg   [0:0] ap_phi_mux_icmp_ln20542294_phi_fu_663_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln20543293_phi_fu_674_p4;
wire   [63:0] zext_ln20545_fu_1013_p1;
wire   [63:0] zext_ln20576_4_fu_1095_p1;
wire   [63:0] zext_ln20560_2_fu_1113_p1;
reg   [9:0] indvar_flatten12288_fu_184;
wire   [9:0] add_ln20541_1_fu_842_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12288_load;
reg   [4:0] v15883289_fu_188;
wire   [4:0] v15883_fu_903_p3;
reg   [8:0] indvar_flatten290_fu_192;
wire   [8:0] select_ln20542_1_fu_834_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten290_load;
reg   [5:0] v15884291_fu_196;
wire   [5:0] v15884_fu_754_p3;
reg   [5:0] ap_sig_allocacmp_v15884291_load;
reg   [5:0] v15885292_fu_200;
wire   [5:0] v15885_fu_822_p2;
reg   [5:0] ap_sig_allocacmp_v15885292_load;
reg    v16142_15_ce0_local;
reg    v16142_14_ce0_local;
reg    v16142_13_ce0_local;
reg    v16142_12_ce0_local;
reg    v16142_11_ce0_local;
reg    v16142_10_ce0_local;
reg    v16142_9_ce0_local;
reg    v16142_8_ce0_local;
reg    v16142_7_ce0_local;
reg    v16142_6_ce0_local;
reg    v16142_5_ce0_local;
reg    v16142_4_ce0_local;
reg    v16142_3_ce0_local;
reg    v16142_2_ce0_local;
reg    v16142_1_ce0_local;
reg    v16142_ce0_local;
reg    v16162_0_0_0_we0_local;
reg    v16162_0_0_0_ce0_local;
reg    v16162_0_0_1_we0_local;
reg    v16162_0_0_1_ce0_local;
reg    v16162_0_0_2_we0_local;
reg    v16162_0_0_2_ce0_local;
reg    v16162_0_0_3_we0_local;
reg    v16162_0_0_3_ce0_local;
reg    v16162_0_1_0_we0_local;
reg    v16162_0_1_0_ce0_local;
reg    v16162_0_1_1_we0_local;
reg    v16162_0_1_1_ce0_local;
reg    v16162_0_1_2_we0_local;
reg    v16162_0_1_2_ce0_local;
reg    v16162_0_1_3_we0_local;
reg    v16162_0_1_3_ce0_local;
reg    v16162_1_0_0_we0_local;
reg    v16162_1_0_0_ce0_local;
reg    v16162_1_0_1_we0_local;
reg    v16162_1_0_1_ce0_local;
reg    v16162_1_0_2_we0_local;
reg    v16162_1_0_2_ce0_local;
reg    v16162_1_0_3_we0_local;
reg    v16162_1_0_3_ce0_local;
reg    v16162_1_1_0_we0_local;
reg    v16162_1_1_0_ce0_local;
reg    v16162_1_1_1_we0_local;
reg    v16162_1_1_1_ce0_local;
reg    v16162_1_1_2_we0_local;
reg    v16162_1_1_2_ce0_local;
reg    v16162_1_1_3_we0_local;
reg    v16162_1_1_3_ce0_local;
wire   [5:0] select_ln20541_fu_718_p3;
wire   [0:0] or_ln20541_fu_734_p2;
wire   [5:0] select_ln20541_1_fu_726_p3;
wire   [5:0] add_ln20542_fu_740_p2;
wire   [7:0] zext_ln20542_fu_762_p1;
wire   [7:0] empty_284_fu_766_p2;
wire   [5:0] v15885_mid2_fu_746_p3;
wire   [7:0] zext_ln20543_fu_782_p1;
wire   [7:0] add_ln20546_fu_806_p2;
wire   [8:0] add_ln20542_1_fu_828_p2;
wire   [0:0] tmp_194_fu_848_p3;
wire   [4:0] add_ln20541_fu_897_p2;
wire   [2:0] lshr_ln_fu_911_p4;
wire   [7:0] tmp_189_fu_935_p4;
wire   [10:0] p_shl17_fu_926_p4;
wire   [10:0] zext_ln20560_fu_944_p1;
wire   [4:0] empty_283_fu_921_p2;
wire   [3:0] tmp_190_fu_954_p4;
wire   [7:0] tmp_191_fu_972_p3;
wire   [10:0] p_shl15_fu_964_p3;
wire   [10:0] zext_ln20576_fu_980_p1;
wire   [10:0] sub_ln20576_fu_984_p2;
wire   [10:0] zext_ln20576_1_fu_990_p1;
wire   [10:0] sub_ln20560_fu_948_p2;
wire   [9:0] tmp_43_fu_1005_p4;
wire   [13:0] tmp_192_fu_1045_p3;
wire   [16:0] p_shl13_fu_1038_p3;
wire   [16:0] zext_ln20576_2_fu_1052_p1;
wire   [13:0] tmp_193_fu_1069_p3;
wire   [16:0] p_shl_fu_1062_p3;
wire   [16:0] zext_ln20560_1_fu_1076_p1;
wire   [16:0] sub_ln20576_1_fu_1056_p2;
wire   [16:0] zext_ln20576_3_fu_1086_p1;
wire   [16:0] add_ln20576_1_fu_1089_p2;
wire   [16:0] sub_ln20560_1_fu_1080_p2;
wire   [16:0] add_ln20560_1_fu_1107_p2;
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
reg    ap_condition_766;
reg    ap_condition_771;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten12288_fu_184 = 10'd0;
#0 v15883289_fu_188 = 5'd0;
#0 indvar_flatten290_fu_192 = 9'd0;
#0 v15884291_fu_196 = 6'd0;
#0 v15885292_fu_200 = 6'd0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_771)) begin
            icmp_ln20542294_reg_660 <= icmp_ln20542_reg_1196;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln20542294_reg_660 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12288_fu_184 <= add_ln20541_1_fu_842_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12288_fu_184 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten290_fu_192 <= select_ln20542_1_fu_834_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten290_fu_192 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15883289_fu_188 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15883289_fu_188 <= v15883_fu_903_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15884291_fu_196 <= v15884_fu_754_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15884291_fu_196 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15885292_fu_200 <= v15885_fu_822_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v15885292_fu_200 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20560_reg_1211 <= add_ln20560_fu_999_p2;
        add_ln20576_reg_1205 <= add_ln20576_fu_993_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln20541_reg_1201 <= icmp_ln20541_fu_868_p2;
        lshr_ln30_reg_1176 <= {{v15885_mid2_fu_746_p3[4:2]}};
        lshr_ln31_reg_1186 <= {{add_ln20546_fu_806_p2[7:2]}};
        lshr_ln31_reg_1186_pp0_iter1_reg <= lshr_ln31_reg_1186;
        tmp_42_reg_1181 <= {{v15884_fu_754_p3[4:1]}};
        tmp_s_reg_1171 <= {{empty_284_fu_766_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20542_reg_1196 <= icmp_ln20542_fu_862_p2;
        xor_ln20543_reg_1191 <= xor_ln20543_fu_856_p2;
    end
end
always @ (*) begin
    if (((icmp_ln20541_fu_868_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_766)) begin
            ap_phi_mux_icmp_ln20542294_phi_fu_663_p4 = icmp_ln20542_reg_1196;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20542294_phi_fu_663_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20542294_phi_fu_663_p4 = icmp_ln20542_reg_1196;
        end
    end else begin
        ap_phi_mux_icmp_ln20542294_phi_fu_663_p4 = icmp_ln20542_reg_1196;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_766)) begin
            ap_phi_mux_icmp_ln20543293_phi_fu_674_p4 = xor_ln20543_reg_1191;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20543293_phi_fu_674_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln20543293_phi_fu_674_p4 = xor_ln20543_reg_1191;
        end
    end else begin
        ap_phi_mux_icmp_ln20543293_phi_fu_674_p4 = xor_ln20543_reg_1191;
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
        ap_sig_allocacmp_indvar_flatten12288_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12288_load = indvar_flatten12288_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten290_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten290_load = indvar_flatten290_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15884291_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v15884291_load = v15884291_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15885292_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v15885292_load = v15885292_fu_200;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_10_ce0_local = 1'b1;
    end else begin
        v16142_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_11_ce0_local = 1'b1;
    end else begin
        v16142_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_12_ce0_local = 1'b1;
    end else begin
        v16142_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_13_ce0_local = 1'b1;
    end else begin
        v16142_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_14_ce0_local = 1'b1;
    end else begin
        v16142_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_15_ce0_local = 1'b1;
    end else begin
        v16142_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_1_ce0_local = 1'b1;
    end else begin
        v16142_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_2_ce0_local = 1'b1;
    end else begin
        v16142_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_3_ce0_local = 1'b1;
    end else begin
        v16142_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_4_ce0_local = 1'b1;
    end else begin
        v16142_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_5_ce0_local = 1'b1;
    end else begin
        v16142_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_6_ce0_local = 1'b1;
    end else begin
        v16142_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_7_ce0_local = 1'b1;
    end else begin
        v16142_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_8_ce0_local = 1'b1;
    end else begin
        v16142_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_9_ce0_local = 1'b1;
    end else begin
        v16142_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16142_ce0_local = 1'b1;
    end else begin
        v16142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_0_ce0_local = 1'b1;
    end else begin
        v16162_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_0_we0_local = 1'b1;
    end else begin
        v16162_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_1_ce0_local = 1'b1;
    end else begin
        v16162_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_1_we0_local = 1'b1;
    end else begin
        v16162_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_2_ce0_local = 1'b1;
    end else begin
        v16162_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_2_we0_local = 1'b1;
    end else begin
        v16162_0_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_3_ce0_local = 1'b1;
    end else begin
        v16162_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_0_3_we0_local = 1'b1;
    end else begin
        v16162_0_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_0_ce0_local = 1'b1;
    end else begin
        v16162_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_0_we0_local = 1'b1;
    end else begin
        v16162_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_1_ce0_local = 1'b1;
    end else begin
        v16162_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_1_we0_local = 1'b1;
    end else begin
        v16162_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_2_ce0_local = 1'b1;
    end else begin
        v16162_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_2_we0_local = 1'b1;
    end else begin
        v16162_0_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_3_ce0_local = 1'b1;
    end else begin
        v16162_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_0_1_3_we0_local = 1'b1;
    end else begin
        v16162_0_1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_0_ce0_local = 1'b1;
    end else begin
        v16162_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_0_we0_local = 1'b1;
    end else begin
        v16162_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_1_ce0_local = 1'b1;
    end else begin
        v16162_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_1_we0_local = 1'b1;
    end else begin
        v16162_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_2_ce0_local = 1'b1;
    end else begin
        v16162_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_2_we0_local = 1'b1;
    end else begin
        v16162_1_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_3_ce0_local = 1'b1;
    end else begin
        v16162_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_0_3_we0_local = 1'b1;
    end else begin
        v16162_1_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_0_ce0_local = 1'b1;
    end else begin
        v16162_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_0_we0_local = 1'b1;
    end else begin
        v16162_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_1_ce0_local = 1'b1;
    end else begin
        v16162_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_1_we0_local = 1'b1;
    end else begin
        v16162_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_2_ce0_local = 1'b1;
    end else begin
        v16162_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_2_we0_local = 1'b1;
    end else begin
        v16162_1_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_3_ce0_local = 1'b1;
    end else begin
        v16162_1_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16162_1_1_3_we0_local = 1'b1;
    end else begin
        v16162_1_1_3_we0_local = 1'b0;
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
assign add_ln20541_1_fu_842_p2 = (ap_sig_allocacmp_indvar_flatten12288_load + 10'd1);
assign add_ln20541_fu_897_p2 = (v15883289_fu_188 + 5'd2);
assign add_ln20542_1_fu_828_p2 = (ap_sig_allocacmp_indvar_flatten290_load + 9'd1);
assign add_ln20542_fu_740_p2 = (select_ln20541_fu_718_p3 + 6'd2);
assign add_ln20546_fu_806_p2 = (mul13_i + zext_ln20543_fu_782_p1);
assign add_ln20560_1_fu_1107_p2 = (sub_ln20560_1_fu_1080_p2 + zext_ln20576_3_fu_1086_p1);
assign add_ln20560_fu_999_p2 = (sub_ln20560_fu_948_p2 + zext_ln20576_1_fu_990_p1);
assign add_ln20576_1_fu_1089_p2 = (sub_ln20576_1_fu_1056_p2 + zext_ln20576_3_fu_1086_p1);
assign add_ln20576_fu_993_p2 = (sub_ln20576_fu_984_p2 + zext_ln20576_1_fu_990_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_766 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln20541_reg_1201 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_771 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20541_reg_1201 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_283_fu_921_p2 = (v15883_fu_903_p3 + rem4);
assign empty_284_fu_766_p2 = (mul9_i + zext_ln20542_fu_762_p1);
assign icmp_ln20541_fu_868_p2 = ((ap_sig_allocacmp_indvar_flatten12288_load == 10'd1023) ? 1'b1 : 1'b0);
assign icmp_ln20542_fu_862_p2 = ((select_ln20542_1_fu_834_p3 == 9'd128) ? 1'b1 : 1'b0);
assign lshr_ln_fu_911_p4 = {{v15883_fu_903_p3[3:1]}};
assign or_ln20541_fu_734_p2 = (ap_phi_mux_icmp_ln20543293_phi_fu_674_p4 | ap_phi_mux_icmp_ln20542294_phi_fu_663_p4);
assign p_shl13_fu_1038_p3 = {{add_ln20576_reg_1205}, {6'd0}};
assign p_shl15_fu_964_p3 = {{tmp_190_fu_954_p4}, {7'd0}};
assign p_shl17_fu_926_p4 = {{{empty}, {lshr_ln_fu_911_p4}}, {7'd0}};
assign p_shl_fu_1062_p3 = {{add_ln20560_reg_1211}, {6'd0}};
assign select_ln20541_1_fu_726_p3 = ((ap_phi_mux_icmp_ln20542294_phi_fu_663_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v15885292_load);
assign select_ln20541_fu_718_p3 = ((ap_phi_mux_icmp_ln20542294_phi_fu_663_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v15884291_load);
assign select_ln20542_1_fu_834_p3 = ((ap_phi_mux_icmp_ln20542294_phi_fu_663_p4[0:0] == 1'b1) ? 9'd1 : add_ln20542_1_fu_828_p2);
assign sub_ln20560_1_fu_1080_p2 = (p_shl_fu_1062_p3 - zext_ln20560_1_fu_1076_p1);
assign sub_ln20560_fu_948_p2 = (p_shl17_fu_926_p4 - zext_ln20560_fu_944_p1);
assign sub_ln20576_1_fu_1056_p2 = (p_shl13_fu_1038_p3 - zext_ln20576_2_fu_1052_p1);
assign sub_ln20576_fu_984_p2 = (p_shl15_fu_964_p3 - zext_ln20576_fu_980_p1);
assign tmp_189_fu_935_p4 = {{{empty}, {lshr_ln_fu_911_p4}}, {4'd0}};
assign tmp_190_fu_954_p4 = {{empty_283_fu_921_p2[4:1]}};
assign tmp_191_fu_972_p3 = {{tmp_190_fu_954_p4}, {4'd0}};
assign tmp_192_fu_1045_p3 = {{add_ln20576_reg_1205}, {3'd0}};
assign tmp_193_fu_1069_p3 = {{add_ln20560_reg_1211}, {3'd0}};
assign tmp_194_fu_848_p3 = v15885_fu_822_p2[32'd5];
assign tmp_43_fu_1005_p4 = {{{lshr_ln_fu_911_p4}, {tmp_42_reg_1181}}, {lshr_ln30_reg_1176}};
assign v15883_fu_903_p3 = ((icmp_ln20542294_reg_660[0:0] == 1'b1) ? add_ln20541_fu_897_p2 : v15883289_fu_188);
assign v15884_fu_754_p3 = ((or_ln20541_fu_734_p2[0:0] == 1'b1) ? select_ln20541_fu_718_p3 : add_ln20542_fu_740_p2);
assign v15885_fu_822_p2 = (v15885_mid2_fu_746_p3 + 6'd4);
assign v15885_mid2_fu_746_p3 = ((or_ln20541_fu_734_p2[0:0] == 1'b1) ? select_ln20541_1_fu_726_p3 : 6'd0);
assign v16142_10_address0 = zext_ln20545_fu_1013_p1;
assign v16142_10_ce0 = v16142_10_ce0_local;
assign v16142_11_address0 = zext_ln20545_fu_1013_p1;
assign v16142_11_ce0 = v16142_11_ce0_local;
assign v16142_12_address0 = zext_ln20545_fu_1013_p1;
assign v16142_12_ce0 = v16142_12_ce0_local;
assign v16142_13_address0 = zext_ln20545_fu_1013_p1;
assign v16142_13_ce0 = v16142_13_ce0_local;
assign v16142_14_address0 = zext_ln20545_fu_1013_p1;
assign v16142_14_ce0 = v16142_14_ce0_local;
assign v16142_15_address0 = zext_ln20545_fu_1013_p1;
assign v16142_15_ce0 = v16142_15_ce0_local;
assign v16142_1_address0 = zext_ln20545_fu_1013_p1;
assign v16142_1_ce0 = v16142_1_ce0_local;
assign v16142_2_address0 = zext_ln20545_fu_1013_p1;
assign v16142_2_ce0 = v16142_2_ce0_local;
assign v16142_3_address0 = zext_ln20545_fu_1013_p1;
assign v16142_3_ce0 = v16142_3_ce0_local;
assign v16142_4_address0 = zext_ln20545_fu_1013_p1;
assign v16142_4_ce0 = v16142_4_ce0_local;
assign v16142_5_address0 = zext_ln20545_fu_1013_p1;
assign v16142_5_ce0 = v16142_5_ce0_local;
assign v16142_6_address0 = zext_ln20545_fu_1013_p1;
assign v16142_6_ce0 = v16142_6_ce0_local;
assign v16142_7_address0 = zext_ln20545_fu_1013_p1;
assign v16142_7_ce0 = v16142_7_ce0_local;
assign v16142_8_address0 = zext_ln20545_fu_1013_p1;
assign v16142_8_ce0 = v16142_8_ce0_local;
assign v16142_9_address0 = zext_ln20545_fu_1013_p1;
assign v16142_9_ce0 = v16142_9_ce0_local;
assign v16142_address0 = zext_ln20545_fu_1013_p1;
assign v16142_ce0 = v16142_ce0_local;
assign v16162_0_0_0_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_0_0_ce0 = v16162_0_0_0_ce0_local;
assign v16162_0_0_0_d0 = v16142_15_q0;
assign v16162_0_0_0_we0 = v16162_0_0_0_we0_local;
assign v16162_0_0_1_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_0_1_ce0 = v16162_0_0_1_ce0_local;
assign v16162_0_0_1_d0 = v16142_14_q0;
assign v16162_0_0_1_we0 = v16162_0_0_1_we0_local;
assign v16162_0_0_2_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_0_2_ce0 = v16162_0_0_2_ce0_local;
assign v16162_0_0_2_d0 = v16142_13_q0;
assign v16162_0_0_2_we0 = v16162_0_0_2_we0_local;
assign v16162_0_0_3_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_0_3_ce0 = v16162_0_0_3_ce0_local;
assign v16162_0_0_3_d0 = v16142_12_q0;
assign v16162_0_0_3_we0 = v16162_0_0_3_we0_local;
assign v16162_0_1_0_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_1_0_ce0 = v16162_0_1_0_ce0_local;
assign v16162_0_1_0_d0 = v16142_11_q0;
assign v16162_0_1_0_we0 = v16162_0_1_0_we0_local;
assign v16162_0_1_1_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_1_1_ce0 = v16162_0_1_1_ce0_local;
assign v16162_0_1_1_d0 = v16142_10_q0;
assign v16162_0_1_1_we0 = v16162_0_1_1_we0_local;
assign v16162_0_1_2_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_1_2_ce0 = v16162_0_1_2_ce0_local;
assign v16162_0_1_2_d0 = v16142_9_q0;
assign v16162_0_1_2_we0 = v16162_0_1_2_we0_local;
assign v16162_0_1_3_address0 = zext_ln20560_2_fu_1113_p1;
assign v16162_0_1_3_ce0 = v16162_0_1_3_ce0_local;
assign v16162_0_1_3_d0 = v16142_8_q0;
assign v16162_0_1_3_we0 = v16162_0_1_3_we0_local;
assign v16162_1_0_0_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_0_0_ce0 = v16162_1_0_0_ce0_local;
assign v16162_1_0_0_d0 = v16142_7_q0;
assign v16162_1_0_0_we0 = v16162_1_0_0_we0_local;
assign v16162_1_0_1_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_0_1_ce0 = v16162_1_0_1_ce0_local;
assign v16162_1_0_1_d0 = v16142_6_q0;
assign v16162_1_0_1_we0 = v16162_1_0_1_we0_local;
assign v16162_1_0_2_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_0_2_ce0 = v16162_1_0_2_ce0_local;
assign v16162_1_0_2_d0 = v16142_5_q0;
assign v16162_1_0_2_we0 = v16162_1_0_2_we0_local;
assign v16162_1_0_3_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_0_3_ce0 = v16162_1_0_3_ce0_local;
assign v16162_1_0_3_d0 = v16142_4_q0;
assign v16162_1_0_3_we0 = v16162_1_0_3_we0_local;
assign v16162_1_1_0_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_1_0_ce0 = v16162_1_1_0_ce0_local;
assign v16162_1_1_0_d0 = v16142_3_q0;
assign v16162_1_1_0_we0 = v16162_1_1_0_we0_local;
assign v16162_1_1_1_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_1_1_ce0 = v16162_1_1_1_ce0_local;
assign v16162_1_1_1_d0 = v16142_2_q0;
assign v16162_1_1_1_we0 = v16162_1_1_1_we0_local;
assign v16162_1_1_2_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_1_2_ce0 = v16162_1_1_2_ce0_local;
assign v16162_1_1_2_d0 = v16142_1_q0;
assign v16162_1_1_2_we0 = v16162_1_1_2_we0_local;
assign v16162_1_1_3_address0 = zext_ln20576_4_fu_1095_p1;
assign v16162_1_1_3_ce0 = v16162_1_1_3_ce0_local;
assign v16162_1_1_3_d0 = v16142_q0;
assign v16162_1_1_3_we0 = v16162_1_1_3_we0_local;
assign xor_ln20543_fu_856_p2 = (tmp_194_fu_848_p3 ^ 1'd1);
assign zext_ln20542_fu_762_p1 = v15884_fu_754_p3;
assign zext_ln20543_fu_782_p1 = v15885_mid2_fu_746_p3;
assign zext_ln20545_fu_1013_p1 = tmp_43_fu_1005_p4;
assign zext_ln20560_1_fu_1076_p1 = tmp_193_fu_1069_p3;
assign zext_ln20560_2_fu_1113_p1 = add_ln20560_1_fu_1107_p2;
assign zext_ln20560_fu_944_p1 = tmp_189_fu_935_p4;
assign zext_ln20576_1_fu_990_p1 = tmp_s_reg_1171;
assign zext_ln20576_2_fu_1052_p1 = tmp_192_fu_1045_p3;
assign zext_ln20576_3_fu_1086_p1 = lshr_ln31_reg_1186_pp0_iter1_reg;
assign zext_ln20576_4_fu_1095_p1 = add_ln20576_1_fu_1089_p2;
assign zext_ln20576_fu_980_p1 = tmp_191_fu_972_p3;
endmodule 