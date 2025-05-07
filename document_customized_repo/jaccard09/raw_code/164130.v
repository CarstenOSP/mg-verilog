module forward_dataflow_in_loop_VITIS_LOOP_16245_1_Loop_VITIS_LOOP_16196_1_proc19191 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12752_address0,v12752_ce0,v12752_we0,v12752_d0,v12752_1_address0,v12752_1_ce0,v12752_1_we0,v12752_1_d0,v12752_2_address0,v12752_2_ce0,v12752_2_we0,v12752_2_d0,v12752_3_address0,v12752_3_ce0,v12752_3_we0,v12752_3_d0,v12752_4_address0,v12752_4_ce0,v12752_4_we0,v12752_4_d0,v12752_5_address0,v12752_5_ce0,v12752_5_we0,v12752_5_d0,v12752_6_address0,v12752_6_ce0,v12752_6_we0,v12752_6_d0,v12752_7_address0,v12752_7_ce0,v12752_7_we0,v12752_7_d0,v12745,v15451_0_0_0_address0,v15451_0_0_0_ce0,v15451_0_0_0_q0,v15451_0_0_1_address0,v15451_0_0_1_ce0,v15451_0_0_1_q0,v15451_0_1_0_address0,v15451_0_1_0_ce0,v15451_0_1_0_q0,v15451_0_1_1_address0,v15451_0_1_1_ce0,v15451_0_1_1_q0,v15451_1_0_0_address0,v15451_1_0_0_ce0,v15451_1_0_0_q0,v15451_1_0_1_address0,v15451_1_0_1_ce0,v15451_1_0_1_q0,v15451_1_1_0_address0,v15451_1_1_0_ce0,v15451_1_1_0_q0,v15451_1_1_1_address0,v15451_1_1_1_ce0,v15451_1_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v12752_address0;
output   v12752_ce0;
output   v12752_we0;
output  [7:0] v12752_d0;
output  [9:0] v12752_1_address0;
output   v12752_1_ce0;
output   v12752_1_we0;
output  [7:0] v12752_1_d0;
output  [9:0] v12752_2_address0;
output   v12752_2_ce0;
output   v12752_2_we0;
output  [7:0] v12752_2_d0;
output  [9:0] v12752_3_address0;
output   v12752_3_ce0;
output   v12752_3_we0;
output  [7:0] v12752_3_d0;
output  [9:0] v12752_4_address0;
output   v12752_4_ce0;
output   v12752_4_we0;
output  [7:0] v12752_4_d0;
output  [9:0] v12752_5_address0;
output   v12752_5_ce0;
output   v12752_5_we0;
output  [7:0] v12752_5_d0;
output  [9:0] v12752_6_address0;
output   v12752_6_ce0;
output   v12752_6_we0;
output  [7:0] v12752_6_d0;
output  [9:0] v12752_7_address0;
output   v12752_7_ce0;
output   v12752_7_we0;
output  [7:0] v12752_7_d0;
input  [6:0] v12745;
output  [13:0] v15451_0_0_0_address0;
output   v15451_0_0_0_ce0;
input  [7:0] v15451_0_0_0_q0;
output  [13:0] v15451_0_0_1_address0;
output   v15451_0_0_1_ce0;
input  [7:0] v15451_0_0_1_q0;
output  [13:0] v15451_0_1_0_address0;
output   v15451_0_1_0_ce0;
input  [7:0] v15451_0_1_0_q0;
output  [13:0] v15451_0_1_1_address0;
output   v15451_0_1_1_ce0;
input  [7:0] v15451_0_1_1_q0;
output  [13:0] v15451_1_0_0_address0;
output   v15451_1_0_0_ce0;
input  [7:0] v15451_1_0_0_q0;
output  [13:0] v15451_1_0_1_address0;
output   v15451_1_0_1_ce0;
input  [7:0] v15451_1_0_1_q0;
output  [13:0] v15451_1_1_0_address0;
output   v15451_1_1_0_ce0;
input  [7:0] v15451_1_1_0_q0;
output  [13:0] v15451_1_1_1_address0;
output   v15451_1_1_1_ce0;
input  [7:0] v15451_1_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16196_fu_778_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv28_i_cast_cast_i_cast_cast_fu_468_p3;
reg   [3:0] p_udiv28_i_cast_cast_i_cast_cast_reg_1144;
wire   [4:0] lshr_ln_i_fu_582_p4;
reg   [4:0] lshr_ln_i_reg_1149;
wire   [9:0] sub_ln16201_fu_628_p2;
reg   [9:0] sub_ln16201_reg_1155;
wire   [9:0] sub_ln16209_fu_664_p2;
reg   [9:0] sub_ln16209_reg_1161;
wire   [2:0] lshr_ln86_i_fu_674_p4;
reg   [2:0] lshr_ln86_i_reg_1167;
wire   [3:0] empty_310_fu_694_p2;
reg   [3:0] empty_310_reg_1172;
reg   [3:0] tmp_176_i_reg_1177;
reg   [2:0] lshr_ln87_i_reg_1182;
reg   [3:0] lshr_ln88_i_reg_1188;
wire   [0:0] icmp_ln16198_fu_766_p2;
reg   [0:0] icmp_ln16198_reg_1193;
wire   [0:0] icmp_ln16197_fu_772_p2;
reg   [0:0] icmp_ln16197_reg_1198;
reg   [0:0] icmp_ln16196_reg_1203;
wire   [9:0] add_ln16215_1_fu_992_p2;
reg   [9:0] add_ln16215_1_reg_1207;
reg   [0:0] ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4;
wire   [63:0] zext_ln16201_4_fu_1013_p1;
wire   [63:0] zext_ln16205_2_fu_1024_p1;
wire   [63:0] zext_ln16209_2_fu_1035_p1;
wire   [63:0] zext_ln16213_1_fu_1046_p1;
wire   [63:0] zext_ln16203_1_fu_1060_p1;
wire   [63:0] zext_ln16207_fu_1071_p1;
wire   [63:0] zext_ln16211_fu_1082_p1;
wire   [63:0] zext_ln16215_5_fu_1093_p1;
wire   [63:0] zext_ln16215_4_fu_1098_p1;
reg   [9:0] indvar_flatten1293_i_fu_140;
wire   [9:0] add_ln16196_1_fu_760_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1293_i_load;
reg   [5:0] v1272894_i_fu_144;
wire   [5:0] select_ln16196_1_fu_542_p3;
reg   [5:0] ap_sig_allocacmp_v1272894_i_load;
reg   [5:0] indvar_flatten95_i_fu_148;
wire   [5:0] select_ln16197_1_fu_752_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten95_i_load;
reg   [3:0] v1272996_i_fu_152;
wire   [3:0] select_ln16197_fu_570_p3;
reg   [3:0] ap_sig_allocacmp_v1272996_i_load;
reg   [3:0] v1273097_i_fu_156;
wire   [3:0] add_ln16198_fu_740_p2;
reg   [3:0] ap_sig_allocacmp_v1273097_i_load;
reg    v15451_0_0_0_ce0_local;
reg    v15451_0_0_1_ce0_local;
reg    v15451_0_1_0_ce0_local;
reg    v15451_0_1_1_ce0_local;
reg    v15451_1_0_0_ce0_local;
reg    v15451_1_0_1_ce0_local;
reg    v15451_1_1_0_ce0_local;
reg    v15451_1_1_1_ce0_local;
reg    v12752_7_we0_local;
reg    v12752_7_ce0_local;
reg    v12752_6_we0_local;
reg    v12752_6_ce0_local;
reg    v12752_5_we0_local;
reg    v12752_5_ce0_local;
reg    v12752_4_we0_local;
reg    v12752_4_ce0_local;
reg    v12752_3_we0_local;
reg    v12752_3_ce0_local;
reg    v12752_2_we0_local;
reg    v12752_2_ce0_local;
reg    v12752_1_we0_local;
reg    v12752_1_ce0_local;
reg    v12752_we0_local;
reg    v12752_ce0_local;
wire   [1:0] tmp_i_fu_406_p4;
wire   [7:0] v12745_cast2_fu_402_p1;
wire   [0:0] tmp_fu_432_p3;
wire   [0:0] empty_fu_456_p1;
wire   [0:0] xor_ln16196_fu_530_p2;
wire   [5:0] add_ln16196_fu_516_p2;
wire   [3:0] select_ln16196_fu_522_p3;
wire   [0:0] and_ln16196_fu_536_p2;
wire   [0:0] empty_306_fu_556_p2;
wire   [3:0] add_ln16197_fu_550_p2;
wire   [6:0] mul_i235_i_i_fu_416_p3;
wire   [6:0] zext_ln16196_fu_578_p1;
wire   [5:0] zext_ln16196_1_fu_592_p1;
wire   [5:0] p_cast5_i_i_fu_424_p3;
wire   [5:0] empty_308_fu_602_p2;
wire   [6:0] tmp_306_fu_616_p3;
wire   [9:0] p_shl50_fu_608_p3;
wire   [9:0] zext_ln16201_fu_624_p1;
wire   [6:0] empty_307_fu_596_p2;
wire   [5:0] tmp_307_fu_634_p4;
wire   [6:0] tmp_308_fu_652_p3;
wire   [9:0] p_shl48_fu_644_p3;
wire   [9:0] zext_ln16209_fu_660_p1;
wire   [4:0] zext_ln16196_cast_cast_i_cast_cast_fu_440_p3;
wire   [4:0] zext_ln16197_fu_670_p1;
wire   [3:0] zext_ln16197_1_fu_684_p1;
wire   [3:0] p_udiv26_i_cast_cast_i_cast_cast_fu_448_p3;
wire   [4:0] empty_309_fu_688_p2;
wire   [3:0] v12730_mid2_i_fu_562_p3;
wire   [4:0] zext_ln16196_1_cast_cast_i_cast_cast_fu_460_p3;
wire   [4:0] zext_ln16198_fu_710_p1;
wire   [4:0] add_ln16200_fu_724_p2;
wire   [5:0] add_ln16197_1_fu_746_p2;
wire   [7:0] p_shl52_fu_812_p3;
wire   [7:0] zext_ln16215_fu_809_p1;
wire   [7:0] sub_ln16215_fu_819_p2;
wire   [7:0] zext_ln16215_1_fu_825_p1;
wire   [7:0] add_ln16215_fu_828_p2;
wire   [6:0] trunc_ln16215_fu_834_p1;
wire   [9:0] tmp_309_fu_838_p3;
wire   [9:0] zext_ln16215_2_fu_846_p1;
wire   [9:0] zext_ln16201_1_fu_856_p1;
wire   [9:0] add_ln16201_fu_859_p2;
wire   [10:0] tmp_310_fu_872_p3;
wire   [13:0] p_shl45_fu_864_p3;
wire   [13:0] zext_ln16201_2_fu_880_p1;
wire   [9:0] add_ln16209_fu_890_p2;
wire   [10:0] tmp_311_fu_903_p3;
wire   [13:0] p_shl43_fu_895_p3;
wire   [13:0] zext_ln16209_1_fu_911_p1;
wire   [9:0] zext_ln16205_fu_921_p1;
wire   [9:0] add_ln16205_fu_924_p2;
wire   [10:0] tmp_312_fu_937_p3;
wire   [13:0] p_shl41_fu_929_p3;
wire   [13:0] zext_ln16205_1_fu_945_p1;
wire   [9:0] add_ln16213_fu_955_p2;
wire   [10:0] tmp_313_fu_968_p3;
wire   [13:0] p_shl_fu_960_p3;
wire   [13:0] zext_ln16213_fu_976_p1;
wire   [9:0] sub_ln16215_1_fu_850_p2;
wire   [9:0] zext_ln16215_3_fu_989_p1;
wire   [3:0] zext_ln16198_1_fu_986_p1;
wire   [3:0] add_ln16201_1_fu_998_p2;
wire   [13:0] sub_ln16201_1_fu_884_p2;
wire   [13:0] zext_ln16201_3_fu_1003_p1;
wire   [13:0] add_ln16201_2_fu_1007_p2;
wire   [13:0] sub_ln16205_fu_949_p2;
wire   [13:0] add_ln16205_1_fu_1018_p2;
wire   [13:0] sub_ln16209_1_fu_915_p2;
wire   [13:0] add_ln16209_1_fu_1029_p2;
wire   [13:0] sub_ln16213_fu_980_p2;
wire   [13:0] add_ln16213_1_fu_1040_p2;
wire   [13:0] zext_ln16203_fu_1051_p1;
wire   [13:0] add_ln16203_fu_1054_p2;
wire   [13:0] add_ln16207_fu_1065_p2;
wire   [13:0] add_ln16211_fu_1076_p2;
wire   [13:0] add_ln16215_2_fu_1087_p2;
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
reg    ap_condition_192;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1293_i_fu_140 = 10'd0;
#0 v1272894_i_fu_144 = 6'd0;
#0 indvar_flatten95_i_fu_148 = 6'd0;
#0 v1272996_i_fu_152 = 4'd0;
#0 v1273097_i_fu_156 = 4'd0;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_192)) begin
        indvar_flatten1293_i_fu_140 <= add_ln16196_1_fu_760_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    indvar_flatten95_i_fu_148 <= select_ln16197_1_fu_752_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v1272894_i_fu_144 <= select_ln16196_1_fu_542_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v1272996_i_fu_152 <= select_ln16197_fu_570_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v1273097_i_fu_156 <= add_ln16198_fu_740_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16215_1_reg_1207 <= add_ln16215_1_fu_992_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_310_reg_1172 <= empty_310_fu_694_p2;
        icmp_ln16196_reg_1203 <= icmp_ln16196_fu_778_p2;
        lshr_ln86_i_reg_1167 <= {{select_ln16197_fu_570_p3[3:1]}};
        lshr_ln87_i_reg_1182 <= {{v12730_mid2_i_fu_562_p3[3:1]}};
        lshr_ln88_i_reg_1188 <= {{add_ln16200_fu_724_p2[4:1]}};
        lshr_ln_i_reg_1149 <= {{select_ln16196_1_fu_542_p3[5:1]}};
        p_udiv28_i_cast_cast_i_cast_cast_reg_1144[2 : 0] <= p_udiv28_i_cast_cast_i_cast_cast_fu_468_p3[2 : 0];
        sub_ln16201_reg_1155[9 : 1] <= sub_ln16201_fu_628_p2[9 : 1];
        sub_ln16209_reg_1161[9 : 1] <= sub_ln16209_fu_664_p2[9 : 1];
        tmp_176_i_reg_1177 <= {{empty_309_fu_688_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16197_reg_1198 <= icmp_ln16197_fu_772_p2;
        icmp_ln16198_reg_1193 <= icmp_ln16198_fu_766_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16196_fu_778_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_766)) begin
            ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 = icmp_ln16197_reg_1198;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 = icmp_ln16197_reg_1198;
        end
    end else begin
        ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 = icmp_ln16197_reg_1198;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_766)) begin
            ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4 = icmp_ln16198_reg_1193;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4 = icmp_ln16198_reg_1193;
        end
    end else begin
        ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4 = icmp_ln16198_reg_1193;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1293_i_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1293_i_load = indvar_flatten1293_i_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten95_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten95_i_load = indvar_flatten95_i_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1272894_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1272894_i_load = v1272894_i_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1272996_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1272996_i_load = v1272996_i_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1273097_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1273097_i_load = v1273097_i_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_1_ce0_local = 1'b1;
    end else begin
        v12752_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_1_we0_local = 1'b1;
    end else begin
        v12752_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_2_ce0_local = 1'b1;
    end else begin
        v12752_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_2_we0_local = 1'b1;
    end else begin
        v12752_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_3_ce0_local = 1'b1;
    end else begin
        v12752_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_3_we0_local = 1'b1;
    end else begin
        v12752_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_4_ce0_local = 1'b1;
    end else begin
        v12752_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_4_we0_local = 1'b1;
    end else begin
        v12752_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_5_ce0_local = 1'b1;
    end else begin
        v12752_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_5_we0_local = 1'b1;
    end else begin
        v12752_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_6_ce0_local = 1'b1;
    end else begin
        v12752_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_6_we0_local = 1'b1;
    end else begin
        v12752_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_7_ce0_local = 1'b1;
    end else begin
        v12752_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_7_we0_local = 1'b1;
    end else begin
        v12752_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_ce0_local = 1'b1;
    end else begin
        v12752_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12752_we0_local = 1'b1;
    end else begin
        v12752_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_0_0_0_ce0_local = 1'b1;
    end else begin
        v15451_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_0_0_1_ce0_local = 1'b1;
    end else begin
        v15451_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_0_1_0_ce0_local = 1'b1;
    end else begin
        v15451_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_0_1_1_ce0_local = 1'b1;
    end else begin
        v15451_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_1_0_0_ce0_local = 1'b1;
    end else begin
        v15451_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_1_0_1_ce0_local = 1'b1;
    end else begin
        v15451_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_1_1_0_ce0_local = 1'b1;
    end else begin
        v15451_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15451_1_1_1_ce0_local = 1'b1;
    end else begin
        v15451_1_1_1_ce0_local = 1'b0;
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
assign add_ln16196_1_fu_760_p2 = (ap_sig_allocacmp_indvar_flatten1293_i_load + 10'd1);
assign add_ln16196_fu_516_p2 = (ap_sig_allocacmp_v1272894_i_load + 6'd2);
assign add_ln16197_1_fu_746_p2 = (ap_sig_allocacmp_indvar_flatten95_i_load + 6'd1);
assign add_ln16197_fu_550_p2 = (select_ln16196_fu_522_p3 + 4'd2);
assign add_ln16198_fu_740_p2 = (v12730_mid2_i_fu_562_p3 + 4'd2);
assign add_ln16200_fu_724_p2 = (zext_ln16196_1_cast_cast_i_cast_cast_fu_460_p3 + zext_ln16198_fu_710_p1);
assign add_ln16201_1_fu_998_p2 = (zext_ln16198_1_fu_986_p1 + p_udiv28_i_cast_cast_i_cast_cast_reg_1144);
assign add_ln16201_2_fu_1007_p2 = (sub_ln16201_1_fu_884_p2 + zext_ln16201_3_fu_1003_p1);
assign add_ln16201_fu_859_p2 = (sub_ln16201_reg_1155 + zext_ln16201_1_fu_856_p1);
assign add_ln16203_fu_1054_p2 = (sub_ln16201_1_fu_884_p2 + zext_ln16203_fu_1051_p1);
assign add_ln16205_1_fu_1018_p2 = (sub_ln16205_fu_949_p2 + zext_ln16201_3_fu_1003_p1);
assign add_ln16205_fu_924_p2 = (sub_ln16201_reg_1155 + zext_ln16205_fu_921_p1);
assign add_ln16207_fu_1065_p2 = (sub_ln16205_fu_949_p2 + zext_ln16203_fu_1051_p1);
assign add_ln16209_1_fu_1029_p2 = (sub_ln16209_1_fu_915_p2 + zext_ln16201_3_fu_1003_p1);
assign add_ln16209_fu_890_p2 = (sub_ln16209_reg_1161 + zext_ln16201_1_fu_856_p1);
assign add_ln16211_fu_1076_p2 = (sub_ln16209_1_fu_915_p2 + zext_ln16203_fu_1051_p1);
assign add_ln16213_1_fu_1040_p2 = (sub_ln16213_fu_980_p2 + zext_ln16201_3_fu_1003_p1);
assign add_ln16213_fu_955_p2 = (sub_ln16209_reg_1161 + zext_ln16205_fu_921_p1);
assign add_ln16215_1_fu_992_p2 = (sub_ln16215_1_fu_850_p2 + zext_ln16215_3_fu_989_p1);
assign add_ln16215_2_fu_1087_p2 = (sub_ln16213_fu_980_p2 + zext_ln16203_fu_1051_p1);
assign add_ln16215_fu_828_p2 = (sub_ln16215_fu_819_p2 + zext_ln16215_1_fu_825_p1);
assign and_ln16196_fu_536_p2 = (xor_ln16196_fu_530_p2 & ap_phi_mux_icmp_ln1619898_i_phi_fu_395_p4);
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
    ap_condition_192 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_766 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16196_reg_1203 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_306_fu_556_p2 = (ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 | and_ln16196_fu_536_p2);
assign empty_307_fu_596_p2 = (mul_i235_i_i_fu_416_p3 + zext_ln16196_fu_578_p1);
assign empty_308_fu_602_p2 = (zext_ln16196_1_fu_592_p1 + p_cast5_i_i_fu_424_p3);
assign empty_309_fu_688_p2 = (zext_ln16196_cast_cast_i_cast_cast_fu_440_p3 + zext_ln16197_fu_670_p1);
assign empty_310_fu_694_p2 = (zext_ln16197_1_fu_684_p1 + p_udiv26_i_cast_cast_i_cast_cast_fu_448_p3);
assign empty_fu_456_p1 = v12745[0:0];
assign icmp_ln16196_fu_778_p2 = ((ap_sig_allocacmp_indvar_flatten1293_i_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln16197_fu_772_p2 = ((select_ln16197_1_fu_752_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln16198_fu_766_p2 = ((add_ln16198_fu_740_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln86_i_fu_674_p4 = {{select_ln16197_fu_570_p3[3:1]}};
assign lshr_ln_i_fu_582_p4 = {{select_ln16196_1_fu_542_p3[5:1]}};
assign mul_i235_i_i_fu_416_p3 = {{tmp_i_fu_406_p4}, {5'd0}};
assign p_cast5_i_i_fu_424_p3 = {{tmp_i_fu_406_p4}, {4'd0}};
assign p_shl41_fu_929_p3 = {{add_ln16205_fu_924_p2}, {4'd0}};
assign p_shl43_fu_895_p3 = {{add_ln16209_fu_890_p2}, {4'd0}};
assign p_shl45_fu_864_p3 = {{add_ln16201_fu_859_p2}, {4'd0}};
assign p_shl48_fu_644_p3 = {{tmp_307_fu_634_p4}, {4'd0}};
assign p_shl50_fu_608_p3 = {{empty_308_fu_602_p2}, {4'd0}};
assign p_shl52_fu_812_p3 = {{lshr_ln_i_reg_1149}, {3'd0}};
assign p_shl_fu_960_p3 = {{add_ln16213_fu_955_p2}, {4'd0}};
assign p_udiv26_i_cast_cast_i_cast_cast_fu_448_p3 = ((tmp_fu_432_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv28_i_cast_cast_i_cast_cast_fu_468_p3 = ((empty_fu_456_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln16196_1_fu_542_p3 = ((ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4[0:0] == 1'b1) ? add_ln16196_fu_516_p2 : ap_sig_allocacmp_v1272894_i_load);
assign select_ln16196_fu_522_p3 = ((ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1272996_i_load);
assign select_ln16197_1_fu_752_p3 = ((ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4[0:0] == 1'b1) ? 6'd1 : add_ln16197_1_fu_746_p2);
assign select_ln16197_fu_570_p3 = ((and_ln16196_fu_536_p2[0:0] == 1'b1) ? add_ln16197_fu_550_p2 : select_ln16196_fu_522_p3);
assign sub_ln16201_1_fu_884_p2 = (p_shl45_fu_864_p3 - zext_ln16201_2_fu_880_p1);
assign sub_ln16201_fu_628_p2 = (p_shl50_fu_608_p3 - zext_ln16201_fu_624_p1);
assign sub_ln16205_fu_949_p2 = (p_shl41_fu_929_p3 - zext_ln16205_1_fu_945_p1);
assign sub_ln16209_1_fu_915_p2 = (p_shl43_fu_895_p3 - zext_ln16209_1_fu_911_p1);
assign sub_ln16209_fu_664_p2 = (p_shl48_fu_644_p3 - zext_ln16209_fu_660_p1);
assign sub_ln16213_fu_980_p2 = (p_shl_fu_960_p3 - zext_ln16213_fu_976_p1);
assign sub_ln16215_1_fu_850_p2 = (tmp_309_fu_838_p3 - zext_ln16215_2_fu_846_p1);
assign sub_ln16215_fu_819_p2 = (p_shl52_fu_812_p3 - zext_ln16215_fu_809_p1);
assign tmp_306_fu_616_p3 = {{empty_308_fu_602_p2}, {1'd0}};
assign tmp_307_fu_634_p4 = {{empty_307_fu_596_p2[6:1]}};
assign tmp_308_fu_652_p3 = {{tmp_307_fu_634_p4}, {1'd0}};
assign tmp_309_fu_838_p3 = {{trunc_ln16215_fu_834_p1}, {3'd0}};
assign tmp_310_fu_872_p3 = {{add_ln16201_fu_859_p2}, {1'd0}};
assign tmp_311_fu_903_p3 = {{add_ln16209_fu_890_p2}, {1'd0}};
assign tmp_312_fu_937_p3 = {{add_ln16205_fu_924_p2}, {1'd0}};
assign tmp_313_fu_968_p3 = {{add_ln16213_fu_955_p2}, {1'd0}};
assign tmp_fu_432_p3 = v12745_cast2_fu_402_p1[32'd1];
assign tmp_i_fu_406_p4 = {{v12745[6:5]}};
assign trunc_ln16215_fu_834_p1 = add_ln16215_fu_828_p2[6:0];
assign v12730_mid2_i_fu_562_p3 = ((empty_306_fu_556_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1273097_i_load);
assign v12745_cast2_fu_402_p1 = v12745;
assign v12752_1_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_1_ce0 = v12752_1_ce0_local;
assign v12752_1_d0 = v15451_1_1_0_q0;
assign v12752_1_we0 = v12752_1_we0_local;
assign v12752_2_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_2_ce0 = v12752_2_ce0_local;
assign v12752_2_d0 = v15451_1_0_1_q0;
assign v12752_2_we0 = v12752_2_we0_local;
assign v12752_3_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_3_ce0 = v12752_3_ce0_local;
assign v12752_3_d0 = v15451_1_0_0_q0;
assign v12752_3_we0 = v12752_3_we0_local;
assign v12752_4_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_4_ce0 = v12752_4_ce0_local;
assign v12752_4_d0 = v15451_0_1_1_q0;
assign v12752_4_we0 = v12752_4_we0_local;
assign v12752_5_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_5_ce0 = v12752_5_ce0_local;
assign v12752_5_d0 = v15451_0_1_0_q0;
assign v12752_5_we0 = v12752_5_we0_local;
assign v12752_6_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_6_ce0 = v12752_6_ce0_local;
assign v12752_6_d0 = v15451_0_0_1_q0;
assign v12752_6_we0 = v12752_6_we0_local;
assign v12752_7_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_7_ce0 = v12752_7_ce0_local;
assign v12752_7_d0 = v15451_0_0_0_q0;
assign v12752_7_we0 = v12752_7_we0_local;
assign v12752_address0 = zext_ln16215_4_fu_1098_p1;
assign v12752_ce0 = v12752_ce0_local;
assign v12752_d0 = v15451_1_1_1_q0;
assign v12752_we0 = v12752_we0_local;
assign v15451_0_0_0_address0 = zext_ln16201_4_fu_1013_p1;
assign v15451_0_0_0_ce0 = v15451_0_0_0_ce0_local;
assign v15451_0_0_1_address0 = zext_ln16203_1_fu_1060_p1;
assign v15451_0_0_1_ce0 = v15451_0_0_1_ce0_local;
assign v15451_0_1_0_address0 = zext_ln16205_2_fu_1024_p1;
assign v15451_0_1_0_ce0 = v15451_0_1_0_ce0_local;
assign v15451_0_1_1_address0 = zext_ln16207_fu_1071_p1;
assign v15451_0_1_1_ce0 = v15451_0_1_1_ce0_local;
assign v15451_1_0_0_address0 = zext_ln16209_2_fu_1035_p1;
assign v15451_1_0_0_ce0 = v15451_1_0_0_ce0_local;
assign v15451_1_0_1_address0 = zext_ln16211_fu_1082_p1;
assign v15451_1_0_1_ce0 = v15451_1_0_1_ce0_local;
assign v15451_1_1_0_address0 = zext_ln16213_1_fu_1046_p1;
assign v15451_1_1_0_ce0 = v15451_1_1_0_ce0_local;
assign v15451_1_1_1_address0 = zext_ln16215_5_fu_1093_p1;
assign v15451_1_1_1_ce0 = v15451_1_1_1_ce0_local;
assign xor_ln16196_fu_530_p2 = (ap_phi_mux_icmp_ln1619799_i_phi_fu_385_p4 ^ 1'd1);
assign zext_ln16196_1_cast_cast_i_cast_cast_fu_460_p3 = ((empty_fu_456_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln16196_1_fu_592_p1 = lshr_ln_i_fu_582_p4;
assign zext_ln16196_cast_cast_i_cast_cast_fu_440_p3 = ((tmp_fu_432_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln16196_fu_578_p1 = select_ln16196_1_fu_542_p3;
assign zext_ln16197_1_fu_684_p1 = lshr_ln86_i_fu_674_p4;
assign zext_ln16197_fu_670_p1 = select_ln16197_fu_570_p3;
assign zext_ln16198_1_fu_986_p1 = lshr_ln87_i_reg_1182;
assign zext_ln16198_fu_710_p1 = v12730_mid2_i_fu_562_p3;
assign zext_ln16201_1_fu_856_p1 = empty_310_reg_1172;
assign zext_ln16201_2_fu_880_p1 = tmp_310_fu_872_p3;
assign zext_ln16201_3_fu_1003_p1 = add_ln16201_1_fu_998_p2;
assign zext_ln16201_4_fu_1013_p1 = add_ln16201_2_fu_1007_p2;
assign zext_ln16201_fu_624_p1 = tmp_306_fu_616_p3;
assign zext_ln16203_1_fu_1060_p1 = add_ln16203_fu_1054_p2;
assign zext_ln16203_fu_1051_p1 = lshr_ln88_i_reg_1188;
assign zext_ln16205_1_fu_945_p1 = tmp_312_fu_937_p3;
assign zext_ln16205_2_fu_1024_p1 = add_ln16205_1_fu_1018_p2;
assign zext_ln16205_fu_921_p1 = tmp_176_i_reg_1177;
assign zext_ln16207_fu_1071_p1 = add_ln16207_fu_1065_p2;
assign zext_ln16209_1_fu_911_p1 = tmp_311_fu_903_p3;
assign zext_ln16209_2_fu_1035_p1 = add_ln16209_1_fu_1029_p2;
assign zext_ln16209_fu_660_p1 = tmp_308_fu_652_p3;
assign zext_ln16211_fu_1082_p1 = add_ln16211_fu_1076_p2;
assign zext_ln16213_1_fu_1046_p1 = add_ln16213_1_fu_1040_p2;
assign zext_ln16213_fu_976_p1 = tmp_313_fu_968_p3;
assign zext_ln16215_1_fu_825_p1 = lshr_ln86_i_reg_1167;
assign zext_ln16215_2_fu_846_p1 = add_ln16215_fu_828_p2;
assign zext_ln16215_3_fu_989_p1 = lshr_ln87_i_reg_1182;
assign zext_ln16215_4_fu_1098_p1 = add_ln16215_1_reg_1207;
assign zext_ln16215_5_fu_1093_p1 = add_ln16215_2_fu_1087_p2;
assign zext_ln16215_fu_809_p1 = lshr_ln_i_reg_1149;
always @ (posedge ap_clk) begin
    p_udiv28_i_cast_cast_i_cast_cast_reg_1144[3] <= 1'b0;
    sub_ln16201_reg_1155[0] <= 1'b0;
    sub_ln16209_reg_1161[0] <= 1'b0;
end
endmodule 