
module forward_dataflow_in_loop_VITIS_LOOP_20934_1_Loop_VITIS_LOOP_20868_1_proc33_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,empty,mul9_i,v16141_address0,v16141_ce0,v16141_we0,v16141_d0,v16141_1_address0,v16141_1_ce0,v16141_1_we0,v16141_1_d0,v16141_2_address0,v16141_2_ce0,v16141_2_we0,v16141_2_d0,v16141_3_address0,v16141_3_ce0,v16141_3_we0,v16141_3_d0,v16141_4_address0,v16141_4_ce0,v16141_4_we0,v16141_4_d0,v16141_5_address0,v16141_5_ce0,v16141_5_we0,v16141_5_d0,v16141_6_address0,v16141_6_ce0,v16141_6_we0,v16141_6_d0,v16141_7_address0,v16141_7_ce0,v16141_7_we0,v16141_7_d0,v16141_8_address0,v16141_8_ce0,v16141_8_we0,v16141_8_d0,v16141_9_address0,v16141_9_ce0,v16141_9_we0,v16141_9_d0,v16141_10_address0,v16141_10_ce0,v16141_10_we0,v16141_10_d0,v16141_11_address0,v16141_11_ce0,v16141_11_we0,v16141_11_d0,v16141_12_address0,v16141_12_ce0,v16141_12_we0,v16141_12_d0,v16141_13_address0,v16141_13_ce0,v16141_13_we0,v16141_13_d0,v16141_14_address0,v16141_14_ce0,v16141_14_we0,v16141_14_d0,v16141_15_address0,v16141_15_ce0,v16141_15_we0,v16141_15_d0,mul13_i,v16163_0_0_0_address0,v16163_0_0_0_ce0,v16163_0_0_0_q0,v16163_0_0_1_address0,v16163_0_0_1_ce0,v16163_0_0_1_q0,v16163_0_0_2_address0,v16163_0_0_2_ce0,v16163_0_0_2_q0,v16163_0_0_3_address0,v16163_0_0_3_ce0,v16163_0_0_3_q0,v16163_0_1_0_address0,v16163_0_1_0_ce0,v16163_0_1_0_q0,v16163_0_1_1_address0,v16163_0_1_1_ce0,v16163_0_1_1_q0,v16163_0_1_2_address0,v16163_0_1_2_ce0,v16163_0_1_2_q0,v16163_0_1_3_address0,v16163_0_1_3_ce0,v16163_0_1_3_q0,v16163_1_0_0_address0,v16163_1_0_0_ce0,v16163_1_0_0_q0,v16163_1_0_1_address0,v16163_1_0_1_ce0,v16163_1_0_1_q0,v16163_1_0_2_address0,v16163_1_0_2_ce0,v16163_1_0_2_q0,v16163_1_0_3_address0,v16163_1_0_3_ce0,v16163_1_0_3_q0,v16163_1_1_0_address0,v16163_1_1_0_ce0,v16163_1_1_0_q0,v16163_1_1_1_address0,v16163_1_1_1_ce0,v16163_1_1_1_q0,v16163_1_1_2_address0,v16163_1_1_2_ce0,v16163_1_1_2_q0,v16163_1_1_3_address0,v16163_1_1_3_ce0,v16163_1_1_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] rem4;
input  [0:0] empty;
input  [7:0] mul9_i;
output  [9:0] v16141_address0;
output   v16141_ce0;
output   v16141_we0;
output  [7:0] v16141_d0;
output  [9:0] v16141_1_address0;
output   v16141_1_ce0;
output   v16141_1_we0;
output  [7:0] v16141_1_d0;
output  [9:0] v16141_2_address0;
output   v16141_2_ce0;
output   v16141_2_we0;
output  [7:0] v16141_2_d0;
output  [9:0] v16141_3_address0;
output   v16141_3_ce0;
output   v16141_3_we0;
output  [7:0] v16141_3_d0;
output  [9:0] v16141_4_address0;
output   v16141_4_ce0;
output   v16141_4_we0;
output  [7:0] v16141_4_d0;
output  [9:0] v16141_5_address0;
output   v16141_5_ce0;
output   v16141_5_we0;
output  [7:0] v16141_5_d0;
output  [9:0] v16141_6_address0;
output   v16141_6_ce0;
output   v16141_6_we0;
output  [7:0] v16141_6_d0;
output  [9:0] v16141_7_address0;
output   v16141_7_ce0;
output   v16141_7_we0;
output  [7:0] v16141_7_d0;
output  [9:0] v16141_8_address0;
output   v16141_8_ce0;
output   v16141_8_we0;
output  [7:0] v16141_8_d0;
output  [9:0] v16141_9_address0;
output   v16141_9_ce0;
output   v16141_9_we0;
output  [7:0] v16141_9_d0;
output  [9:0] v16141_10_address0;
output   v16141_10_ce0;
output   v16141_10_we0;
output  [7:0] v16141_10_d0;
output  [9:0] v16141_11_address0;
output   v16141_11_ce0;
output   v16141_11_we0;
output  [7:0] v16141_11_d0;
output  [9:0] v16141_12_address0;
output   v16141_12_ce0;
output   v16141_12_we0;
output  [7:0] v16141_12_d0;
output  [9:0] v16141_13_address0;
output   v16141_13_ce0;
output   v16141_13_we0;
output  [7:0] v16141_13_d0;
output  [9:0] v16141_14_address0;
output   v16141_14_ce0;
output   v16141_14_we0;
output  [7:0] v16141_14_d0;
output  [9:0] v16141_15_address0;
output   v16141_15_ce0;
output   v16141_15_we0;
output  [7:0] v16141_15_d0;
input  [7:0] mul13_i;
output  [16:0] v16163_0_0_0_address0;
output   v16163_0_0_0_ce0;
input  [7:0] v16163_0_0_0_q0;
output  [16:0] v16163_0_0_1_address0;
output   v16163_0_0_1_ce0;
input  [7:0] v16163_0_0_1_q0;
output  [16:0] v16163_0_0_2_address0;
output   v16163_0_0_2_ce0;
input  [7:0] v16163_0_0_2_q0;
output  [16:0] v16163_0_0_3_address0;
output   v16163_0_0_3_ce0;
input  [7:0] v16163_0_0_3_q0;
output  [16:0] v16163_0_1_0_address0;
output   v16163_0_1_0_ce0;
input  [7:0] v16163_0_1_0_q0;
output  [16:0] v16163_0_1_1_address0;
output   v16163_0_1_1_ce0;
input  [7:0] v16163_0_1_1_q0;
output  [16:0] v16163_0_1_2_address0;
output   v16163_0_1_2_ce0;
input  [7:0] v16163_0_1_2_q0;
output  [16:0] v16163_0_1_3_address0;
output   v16163_0_1_3_ce0;
input  [7:0] v16163_0_1_3_q0;
output  [16:0] v16163_1_0_0_address0;
output   v16163_1_0_0_ce0;
input  [7:0] v16163_1_0_0_q0;
output  [16:0] v16163_1_0_1_address0;
output   v16163_1_0_1_ce0;
input  [7:0] v16163_1_0_1_q0;
output  [16:0] v16163_1_0_2_address0;
output   v16163_1_0_2_ce0;
input  [7:0] v16163_1_0_2_q0;
output  [16:0] v16163_1_0_3_address0;
output   v16163_1_0_3_ce0;
input  [7:0] v16163_1_0_3_q0;
output  [16:0] v16163_1_1_0_address0;
output   v16163_1_1_0_ce0;
input  [7:0] v16163_1_1_0_q0;
output  [16:0] v16163_1_1_1_address0;
output   v16163_1_1_1_ce0;
input  [7:0] v16163_1_1_1_q0;
output  [16:0] v16163_1_1_2_address0;
output   v16163_1_1_2_ce0;
input  [7:0] v16163_1_1_2_q0;
output  [16:0] v16163_1_1_3_address0;
output   v16163_1_1_3_ce0;
input  [7:0] v16163_1_1_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20868_fu_868_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln20869195_reg_660;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tmp_s_reg_1170;
reg   [2:0] lshr_ln24_reg_1175;
reg   [2:0] lshr_ln24_reg_1175_pp0_iter1_reg;
reg   [2:0] lshr_ln24_reg_1175_pp0_iter2_reg;
reg   [3:0] tmp_32_reg_1180;
reg   [3:0] tmp_32_reg_1180_pp0_iter1_reg;
reg   [3:0] tmp_32_reg_1180_pp0_iter2_reg;
reg   [5:0] lshr_ln25_reg_1185;
reg   [5:0] lshr_ln25_reg_1185_pp0_iter1_reg;
wire   [0:0] xor_ln20870_fu_856_p2;
reg   [0:0] xor_ln20870_reg_1190;
wire   [0:0] icmp_ln20869_fu_862_p2;
reg   [0:0] icmp_ln20869_reg_1195;
reg   [0:0] icmp_ln20868_reg_1200;
wire   [2:0] lshr_ln_fu_911_p4;
reg   [2:0] lshr_ln_reg_1204;
reg   [2:0] lshr_ln_reg_1204_pp0_iter2_reg;
wire   [10:0] add_ln20873_fu_993_p2;
reg   [10:0] add_ln20873_reg_1209;
wire   [10:0] add_ln20889_fu_999_p2;
reg   [10:0] add_ln20889_reg_1215;
reg   [0:0] ap_phi_mux_icmp_ln20869195_phi_fu_663_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln20870194_phi_fu_674_p4;
wire   [63:0] zext_ln20873_4_fu_1067_p1;
wire   [63:0] zext_ln20889_2_fu_1085_p1;
wire   [63:0] zext_ln20903_fu_1104_p1;
reg   [9:0] indvar_flatten12189_fu_184;
wire   [9:0] add_ln20868_1_fu_842_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [4:0] v16108190_fu_188;
wire   [4:0] v16108_fu_903_p3;
reg   [8:0] indvar_flatten191_fu_192;
wire   [8:0] select_ln20869_1_fu_834_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [5:0] v16109192_fu_196;
wire   [5:0] v16109_fu_754_p3;
reg   [5:0] ap_sig_allocacmp_v16109192_load;
reg   [5:0] v16110193_fu_200;
wire   [5:0] v16110_fu_822_p2;
reg   [5:0] ap_sig_allocacmp_v16110193_load;
reg    v16163_0_0_0_ce0_local;
reg    v16163_0_0_1_ce0_local;
reg    v16163_0_0_2_ce0_local;
reg    v16163_0_0_3_ce0_local;
reg    v16163_0_1_0_ce0_local;
reg    v16163_0_1_1_ce0_local;
reg    v16163_0_1_2_ce0_local;
reg    v16163_0_1_3_ce0_local;
reg    v16163_1_0_0_ce0_local;
reg    v16163_1_0_1_ce0_local;
reg    v16163_1_0_2_ce0_local;
reg    v16163_1_0_3_ce0_local;
reg    v16163_1_1_0_ce0_local;
reg    v16163_1_1_1_ce0_local;
reg    v16163_1_1_2_ce0_local;
reg    v16163_1_1_3_ce0_local;
reg    v16141_15_we0_local;
reg    v16141_15_ce0_local;
reg    v16141_14_we0_local;
reg    v16141_14_ce0_local;
reg    v16141_13_we0_local;
reg    v16141_13_ce0_local;
reg    v16141_12_we0_local;
reg    v16141_12_ce0_local;
reg    v16141_11_we0_local;
reg    v16141_11_ce0_local;
reg    v16141_10_we0_local;
reg    v16141_10_ce0_local;
reg    v16141_9_we0_local;
reg    v16141_9_ce0_local;
reg    v16141_8_we0_local;
reg    v16141_8_ce0_local;
reg    v16141_7_we0_local;
reg    v16141_7_ce0_local;
reg    v16141_6_we0_local;
reg    v16141_6_ce0_local;
reg    v16141_5_we0_local;
reg    v16141_5_ce0_local;
reg    v16141_4_we0_local;
reg    v16141_4_ce0_local;
reg    v16141_3_we0_local;
reg    v16141_3_ce0_local;
reg    v16141_2_we0_local;
reg    v16141_2_ce0_local;
reg    v16141_1_we0_local;
reg    v16141_1_ce0_local;
reg    v16141_we0_local;
reg    v16141_ce0_local;
wire   [5:0] select_ln20868_fu_718_p3;
wire   [0:0] or_ln20868_fu_734_p2;
wire   [5:0] select_ln20868_1_fu_726_p3;
wire   [5:0] add_ln20869_fu_740_p2;
wire   [7:0] zext_ln20869_fu_762_p1;
wire   [7:0] empty_257_fu_766_p2;
wire   [5:0] v16110_mid2_fu_746_p3;
wire   [7:0] zext_ln20870_fu_782_p1;
wire   [7:0] add_ln20872_fu_806_p2;
wire   [8:0] add_ln20869_1_fu_828_p2;
wire   [0:0] tmp_178_fu_848_p3;
wire   [4:0] add_ln20868_fu_897_p2;
wire   [7:0] tmp_173_fu_935_p4;
wire   [10:0] p_shl17_fu_926_p4;
wire   [10:0] zext_ln20873_fu_944_p1;
wire   [4:0] empty_256_fu_921_p2;
wire   [3:0] tmp_174_fu_954_p4;
wire   [7:0] tmp_175_fu_972_p3;
wire   [10:0] p_shl15_fu_964_p3;
wire   [10:0] zext_ln20889_fu_980_p1;
wire   [10:0] sub_ln20873_fu_948_p2;
wire   [10:0] zext_ln20873_1_fu_990_p1;
wire   [10:0] sub_ln20889_fu_984_p2;
wire   [13:0] tmp_176_fu_1017_p3;
wire   [16:0] p_shl13_fu_1010_p3;
wire   [16:0] zext_ln20873_2_fu_1024_p1;
wire   [13:0] tmp_177_fu_1041_p3;
wire   [16:0] p_shl_fu_1034_p3;
wire   [16:0] zext_ln20889_1_fu_1048_p1;
wire   [16:0] sub_ln20873_1_fu_1028_p2;
wire   [16:0] zext_ln20873_3_fu_1058_p1;
wire   [16:0] add_ln20873_1_fu_1061_p2;
wire   [16:0] sub_ln20889_1_fu_1052_p2;
wire   [16:0] add_ln20889_1_fu_1079_p2;
wire   [9:0] tmp_33_fu_1097_p4;
reg    ap_done_reg;
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
reg    ap_condition_784;
reg    ap_condition_789;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12189_fu_184 = 10'd0;
#0 v16108190_fu_188 = 5'd0;
#0 indvar_flatten191_fu_192 = 9'd0;
#0 v16109192_fu_196 = 6'd0;
#0 v16110193_fu_200 = 6'd0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_789)) begin
            icmp_ln20869195_reg_660 <= icmp_ln20869_reg_1195;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln20869195_reg_660 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12189_fu_184 <= add_ln20868_1_fu_842_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12189_fu_184 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten191_fu_192 <= select_ln20869_1_fu_834_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten191_fu_192 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v16108190_fu_188 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v16108190_fu_188 <= v16108_fu_903_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v16109192_fu_196 <= v16109_fu_754_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v16109192_fu_196 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v16110193_fu_200 <= v16110_fu_822_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v16110193_fu_200 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20873_reg_1209 <= add_ln20873_fu_993_p2;
        add_ln20889_reg_1215 <= add_ln20889_fu_999_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln20868_reg_1200 <= icmp_ln20868_fu_868_p2;
        lshr_ln24_reg_1175 <= {{v16110_mid2_fu_746_p3[4:2]}};
        lshr_ln24_reg_1175_pp0_iter1_reg <= lshr_ln24_reg_1175;
        lshr_ln25_reg_1185 <= {{add_ln20872_fu_806_p2[7:2]}};
        lshr_ln25_reg_1185_pp0_iter1_reg <= lshr_ln25_reg_1185;
        lshr_ln_reg_1204 <= {{v16108_fu_903_p3[3:1]}};
        tmp_32_reg_1180 <= {{v16109_fu_754_p3[4:1]}};
        tmp_32_reg_1180_pp0_iter1_reg <= tmp_32_reg_1180;
        tmp_s_reg_1170 <= {{empty_257_fu_766_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20869_reg_1195 <= icmp_ln20869_fu_862_p2;
        xor_ln20870_reg_1190 <= xor_ln20870_fu_856_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln24_reg_1175_pp0_iter2_reg <= lshr_ln24_reg_1175_pp0_iter1_reg;
        lshr_ln_reg_1204_pp0_iter2_reg <= lshr_ln_reg_1204;
        tmp_32_reg_1180_pp0_iter2_reg <= tmp_32_reg_1180_pp0_iter1_reg;
    end
end
always @ (*) begin
    if (((icmp_ln20868_fu_868_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_784)) begin
            ap_phi_mux_icmp_ln20869195_phi_fu_663_p4 = icmp_ln20869_reg_1195;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20869195_phi_fu_663_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20869195_phi_fu_663_p4 = icmp_ln20869_reg_1195;
        end
    end else begin
        ap_phi_mux_icmp_ln20869195_phi_fu_663_p4 = icmp_ln20869_reg_1195;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_784)) begin
            ap_phi_mux_icmp_ln20870194_phi_fu_674_p4 = xor_ln20870_reg_1190;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20870194_phi_fu_674_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln20870194_phi_fu_674_p4 = xor_ln20870_reg_1190;
        end
    end else begin
        ap_phi_mux_icmp_ln20870194_phi_fu_674_p4 = xor_ln20870_reg_1190;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v16109192_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16109192_load = v16109192_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v16110193_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v16110193_load = v16110193_fu_200;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_10_ce0_local = 1'b1;
    end else begin
        v16141_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_10_we0_local = 1'b1;
    end else begin
        v16141_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_11_ce0_local = 1'b1;
    end else begin
        v16141_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_11_we0_local = 1'b1;
    end else begin
        v16141_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_12_ce0_local = 1'b1;
    end else begin
        v16141_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_12_we0_local = 1'b1;
    end else begin
        v16141_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_13_ce0_local = 1'b1;
    end else begin
        v16141_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_13_we0_local = 1'b1;
    end else begin
        v16141_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_14_ce0_local = 1'b1;
    end else begin
        v16141_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_14_we0_local = 1'b1;
    end else begin
        v16141_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_15_ce0_local = 1'b1;
    end else begin
        v16141_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_15_we0_local = 1'b1;
    end else begin
        v16141_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_1_ce0_local = 1'b1;
    end else begin
        v16141_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_1_we0_local = 1'b1;
    end else begin
        v16141_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_2_ce0_local = 1'b1;
    end else begin
        v16141_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_2_we0_local = 1'b1;
    end else begin
        v16141_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_3_ce0_local = 1'b1;
    end else begin
        v16141_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_3_we0_local = 1'b1;
    end else begin
        v16141_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_4_ce0_local = 1'b1;
    end else begin
        v16141_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_4_we0_local = 1'b1;
    end else begin
        v16141_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_5_ce0_local = 1'b1;
    end else begin
        v16141_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_5_we0_local = 1'b1;
    end else begin
        v16141_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_6_ce0_local = 1'b1;
    end else begin
        v16141_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_6_we0_local = 1'b1;
    end else begin
        v16141_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_7_ce0_local = 1'b1;
    end else begin
        v16141_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_7_we0_local = 1'b1;
    end else begin
        v16141_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_8_ce0_local = 1'b1;
    end else begin
        v16141_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_8_we0_local = 1'b1;
    end else begin
        v16141_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_9_ce0_local = 1'b1;
    end else begin
        v16141_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_9_we0_local = 1'b1;
    end else begin
        v16141_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_ce0_local = 1'b1;
    end else begin
        v16141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v16141_we0_local = 1'b1;
    end else begin
        v16141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_0_0_ce0_local = 1'b1;
    end else begin
        v16163_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_0_1_ce0_local = 1'b1;
    end else begin
        v16163_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_0_2_ce0_local = 1'b1;
    end else begin
        v16163_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_0_3_ce0_local = 1'b1;
    end else begin
        v16163_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_1_0_ce0_local = 1'b1;
    end else begin
        v16163_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_1_1_ce0_local = 1'b1;
    end else begin
        v16163_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_1_2_ce0_local = 1'b1;
    end else begin
        v16163_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_0_1_3_ce0_local = 1'b1;
    end else begin
        v16163_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_0_0_ce0_local = 1'b1;
    end else begin
        v16163_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_0_1_ce0_local = 1'b1;
    end else begin
        v16163_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_0_2_ce0_local = 1'b1;
    end else begin
        v16163_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_0_3_ce0_local = 1'b1;
    end else begin
        v16163_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_1_0_ce0_local = 1'b1;
    end else begin
        v16163_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_1_1_ce0_local = 1'b1;
    end else begin
        v16163_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_1_2_ce0_local = 1'b1;
    end else begin
        v16163_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16163_1_1_3_ce0_local = 1'b1;
    end else begin
        v16163_1_1_3_ce0_local = 1'b0;
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
assign add_ln20868_1_fu_842_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 10'd1);
assign add_ln20868_fu_897_p2 = (v16108190_fu_188 + 5'd2);
assign add_ln20869_1_fu_828_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 9'd1);
assign add_ln20869_fu_740_p2 = (select_ln20868_fu_718_p3 + 6'd2);
assign add_ln20872_fu_806_p2 = (mul13_i + zext_ln20870_fu_782_p1);
assign add_ln20873_1_fu_1061_p2 = (sub_ln20873_1_fu_1028_p2 + zext_ln20873_3_fu_1058_p1);
assign add_ln20873_fu_993_p2 = (sub_ln20873_fu_948_p2 + zext_ln20873_1_fu_990_p1);
assign add_ln20889_1_fu_1079_p2 = (sub_ln20889_1_fu_1052_p2 + zext_ln20873_3_fu_1058_p1);
assign add_ln20889_fu_999_p2 = (sub_ln20889_fu_984_p2 + zext_ln20873_1_fu_990_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_784 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln20868_reg_1200 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_789 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20868_reg_1200 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_256_fu_921_p2 = (v16108_fu_903_p3 + rem4);
assign empty_257_fu_766_p2 = (mul9_i + zext_ln20869_fu_762_p1);
assign icmp_ln20868_fu_868_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 10'd1023) ? 1'b1 : 1'b0);
assign icmp_ln20869_fu_862_p2 = ((select_ln20869_1_fu_834_p3 == 9'd128) ? 1'b1 : 1'b0);
assign lshr_ln_fu_911_p4 = {{v16108_fu_903_p3[3:1]}};
assign or_ln20868_fu_734_p2 = (ap_phi_mux_icmp_ln20870194_phi_fu_674_p4 | ap_phi_mux_icmp_ln20869195_phi_fu_663_p4);
assign p_shl13_fu_1010_p3 = {{add_ln20873_reg_1209}, {6'd0}};
assign p_shl15_fu_964_p3 = {{tmp_174_fu_954_p4}, {7'd0}};
assign p_shl17_fu_926_p4 = {{{empty}, {lshr_ln_fu_911_p4}}, {7'd0}};
assign p_shl_fu_1034_p3 = {{add_ln20889_reg_1215}, {6'd0}};
assign select_ln20868_1_fu_726_p3 = ((ap_phi_mux_icmp_ln20869195_phi_fu_663_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v16110193_load);
assign select_ln20868_fu_718_p3 = ((ap_phi_mux_icmp_ln20869195_phi_fu_663_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v16109192_load);
assign select_ln20869_1_fu_834_p3 = ((ap_phi_mux_icmp_ln20869195_phi_fu_663_p4[0:0] == 1'b1) ? 9'd1 : add_ln20869_1_fu_828_p2);
assign sub_ln20873_1_fu_1028_p2 = (p_shl13_fu_1010_p3 - zext_ln20873_2_fu_1024_p1);
assign sub_ln20873_fu_948_p2 = (p_shl17_fu_926_p4 - zext_ln20873_fu_944_p1);
assign sub_ln20889_1_fu_1052_p2 = (p_shl_fu_1034_p3 - zext_ln20889_1_fu_1048_p1);
assign sub_ln20889_fu_984_p2 = (p_shl15_fu_964_p3 - zext_ln20889_fu_980_p1);
assign tmp_173_fu_935_p4 = {{{empty}, {lshr_ln_fu_911_p4}}, {4'd0}};
assign tmp_174_fu_954_p4 = {{empty_256_fu_921_p2[4:1]}};
assign tmp_175_fu_972_p3 = {{tmp_174_fu_954_p4}, {4'd0}};
assign tmp_176_fu_1017_p3 = {{add_ln20873_reg_1209}, {3'd0}};
assign tmp_177_fu_1041_p3 = {{add_ln20889_reg_1215}, {3'd0}};
assign tmp_178_fu_848_p3 = v16110_fu_822_p2[32'd5];
assign tmp_33_fu_1097_p4 = {{{lshr_ln_reg_1204_pp0_iter2_reg}, {tmp_32_reg_1180_pp0_iter2_reg}}, {lshr_ln24_reg_1175_pp0_iter2_reg}};
assign v16108_fu_903_p3 = ((icmp_ln20869195_reg_660[0:0] == 1'b1) ? add_ln20868_fu_897_p2 : v16108190_fu_188);
assign v16109_fu_754_p3 = ((or_ln20868_fu_734_p2[0:0] == 1'b1) ? select_ln20868_fu_718_p3 : add_ln20869_fu_740_p2);
assign v16110_fu_822_p2 = (v16110_mid2_fu_746_p3 + 6'd4);
assign v16110_mid2_fu_746_p3 = ((or_ln20868_fu_734_p2[0:0] == 1'b1) ? select_ln20868_1_fu_726_p3 : 6'd0);
assign v16141_10_address0 = zext_ln20903_fu_1104_p1;
assign v16141_10_ce0 = v16141_10_ce0_local;
assign v16141_10_d0 = v16163_0_1_1_q0;
assign v16141_10_we0 = v16141_10_we0_local;
assign v16141_11_address0 = zext_ln20903_fu_1104_p1;
assign v16141_11_ce0 = v16141_11_ce0_local;
assign v16141_11_d0 = v16163_0_1_0_q0;
assign v16141_11_we0 = v16141_11_we0_local;
assign v16141_12_address0 = zext_ln20903_fu_1104_p1;
assign v16141_12_ce0 = v16141_12_ce0_local;
assign v16141_12_d0 = v16163_0_0_3_q0;
assign v16141_12_we0 = v16141_12_we0_local;
assign v16141_13_address0 = zext_ln20903_fu_1104_p1;
assign v16141_13_ce0 = v16141_13_ce0_local;
assign v16141_13_d0 = v16163_0_0_2_q0;
assign v16141_13_we0 = v16141_13_we0_local;
assign v16141_14_address0 = zext_ln20903_fu_1104_p1;
assign v16141_14_ce0 = v16141_14_ce0_local;
assign v16141_14_d0 = v16163_0_0_1_q0;
assign v16141_14_we0 = v16141_14_we0_local;
assign v16141_15_address0 = zext_ln20903_fu_1104_p1;
assign v16141_15_ce0 = v16141_15_ce0_local;
assign v16141_15_d0 = v16163_0_0_0_q0;
assign v16141_15_we0 = v16141_15_we0_local;
assign v16141_1_address0 = zext_ln20903_fu_1104_p1;
assign v16141_1_ce0 = v16141_1_ce0_local;
assign v16141_1_d0 = v16163_1_1_2_q0;
assign v16141_1_we0 = v16141_1_we0_local;
assign v16141_2_address0 = zext_ln20903_fu_1104_p1;
assign v16141_2_ce0 = v16141_2_ce0_local;
assign v16141_2_d0 = v16163_1_1_1_q0;
assign v16141_2_we0 = v16141_2_we0_local;
assign v16141_3_address0 = zext_ln20903_fu_1104_p1;
assign v16141_3_ce0 = v16141_3_ce0_local;
assign v16141_3_d0 = v16163_1_1_0_q0;
assign v16141_3_we0 = v16141_3_we0_local;
assign v16141_4_address0 = zext_ln20903_fu_1104_p1;
assign v16141_4_ce0 = v16141_4_ce0_local;
assign v16141_4_d0 = v16163_1_0_3_q0;
assign v16141_4_we0 = v16141_4_we0_local;
assign v16141_5_address0 = zext_ln20903_fu_1104_p1;
assign v16141_5_ce0 = v16141_5_ce0_local;
assign v16141_5_d0 = v16163_1_0_2_q0;
assign v16141_5_we0 = v16141_5_we0_local;
assign v16141_6_address0 = zext_ln20903_fu_1104_p1;
assign v16141_6_ce0 = v16141_6_ce0_local;
assign v16141_6_d0 = v16163_1_0_1_q0;
assign v16141_6_we0 = v16141_6_we0_local;
assign v16141_7_address0 = zext_ln20903_fu_1104_p1;
assign v16141_7_ce0 = v16141_7_ce0_local;
assign v16141_7_d0 = v16163_1_0_0_q0;
assign v16141_7_we0 = v16141_7_we0_local;
assign v16141_8_address0 = zext_ln20903_fu_1104_p1;
assign v16141_8_ce0 = v16141_8_ce0_local;
assign v16141_8_d0 = v16163_0_1_3_q0;
assign v16141_8_we0 = v16141_8_we0_local;
assign v16141_9_address0 = zext_ln20903_fu_1104_p1;
assign v16141_9_ce0 = v16141_9_ce0_local;
assign v16141_9_d0 = v16163_0_1_2_q0;
assign v16141_9_we0 = v16141_9_we0_local;
assign v16141_address0 = zext_ln20903_fu_1104_p1;
assign v16141_ce0 = v16141_ce0_local;
assign v16141_d0 = v16163_1_1_3_q0;
assign v16141_we0 = v16141_we0_local;
assign v16163_0_0_0_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_0_0_ce0 = v16163_0_0_0_ce0_local;
assign v16163_0_0_1_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_0_1_ce0 = v16163_0_0_1_ce0_local;
assign v16163_0_0_2_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_0_2_ce0 = v16163_0_0_2_ce0_local;
assign v16163_0_0_3_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_0_3_ce0 = v16163_0_0_3_ce0_local;
assign v16163_0_1_0_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_1_0_ce0 = v16163_0_1_0_ce0_local;
assign v16163_0_1_1_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_1_1_ce0 = v16163_0_1_1_ce0_local;
assign v16163_0_1_2_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_1_2_ce0 = v16163_0_1_2_ce0_local;
assign v16163_0_1_3_address0 = zext_ln20873_4_fu_1067_p1;
assign v16163_0_1_3_ce0 = v16163_0_1_3_ce0_local;
assign v16163_1_0_0_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_0_0_ce0 = v16163_1_0_0_ce0_local;
assign v16163_1_0_1_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_0_1_ce0 = v16163_1_0_1_ce0_local;
assign v16163_1_0_2_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_0_2_ce0 = v16163_1_0_2_ce0_local;
assign v16163_1_0_3_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_0_3_ce0 = v16163_1_0_3_ce0_local;
assign v16163_1_1_0_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_1_0_ce0 = v16163_1_1_0_ce0_local;
assign v16163_1_1_1_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_1_1_ce0 = v16163_1_1_1_ce0_local;
assign v16163_1_1_2_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_1_2_ce0 = v16163_1_1_2_ce0_local;
assign v16163_1_1_3_address0 = zext_ln20889_2_fu_1085_p1;
assign v16163_1_1_3_ce0 = v16163_1_1_3_ce0_local;
assign xor_ln20870_fu_856_p2 = (tmp_178_fu_848_p3 ^ 1'd1);
assign zext_ln20869_fu_762_p1 = v16109_fu_754_p3;
assign zext_ln20870_fu_782_p1 = v16110_mid2_fu_746_p3;
assign zext_ln20873_1_fu_990_p1 = tmp_s_reg_1170;
assign zext_ln20873_2_fu_1024_p1 = tmp_176_fu_1017_p3;
assign zext_ln20873_3_fu_1058_p1 = lshr_ln25_reg_1185_pp0_iter1_reg;
assign zext_ln20873_4_fu_1067_p1 = add_ln20873_1_fu_1061_p2;
assign zext_ln20873_fu_944_p1 = tmp_173_fu_935_p4;
assign zext_ln20889_1_fu_1048_p1 = tmp_177_fu_1041_p3;
assign zext_ln20889_2_fu_1085_p1 = add_ln20889_1_fu_1079_p2;
assign zext_ln20889_fu_980_p1 = tmp_175_fu_972_p3;
assign zext_ln20903_fu_1104_p1 = tmp_33_fu_1097_p4;
endmodule 
