
module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6338_1_proc127_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,trunc_ln,v4362_address0,v4362_ce0,v4362_we0,v4362_d0,v4362_1_address0,v4362_1_ce0,v4362_1_we0,v4362_1_d0,v4362_2_address0,v4362_2_ce0,v4362_2_we0,v4362_2_d0,v4362_3_address0,v4362_3_ce0,v4362_3_we0,v4362_3_d0,v4362_4_address0,v4362_4_ce0,v4362_4_we0,v4362_4_d0,v4362_5_address0,v4362_5_ce0,v4362_5_we0,v4362_5_d0,v4362_6_address0,v4362_6_ce0,v4362_6_we0,v4362_6_d0,v4362_7_address0,v4362_7_ce0,v4362_7_we0,v4362_7_d0,v4362_8_address0,v4362_8_ce0,v4362_8_we0,v4362_8_d0,v4362_9_address0,v4362_9_ce0,v4362_9_we0,v4362_9_d0,v4362_10_address0,v4362_10_ce0,v4362_10_we0,v4362_10_d0,v4362_11_address0,v4362_11_ce0,v4362_11_we0,v4362_11_d0,v4362_12_address0,v4362_12_ce0,v4362_12_we0,v4362_12_d0,v4362_13_address0,v4362_13_ce0,v4362_13_we0,v4362_13_d0,v4362_14_address0,v4362_14_ce0,v4362_14_we0,v4362_14_d0,v4362_15_address0,v4362_15_ce0,v4362_15_we0,v4362_15_d0,mul_i5,tmp_95,zext_ln6392_2,zext_ln6392,v9183_0_0_address0,v9183_0_0_ce0,v9183_0_0_q0,v9183_1_0_address0,v9183_1_0_ce0,v9183_1_0_q0,v9183_2_0_address0,v9183_2_0_ce0,v9183_2_0_q0,v9183_3_0_address0,v9183_3_0_ce0,v9183_3_0_q0,v9183_0_1_address0,v9183_0_1_ce0,v9183_0_1_q0,v9183_0_2_address0,v9183_0_2_ce0,v9183_0_2_q0,v9183_0_3_address0,v9183_0_3_ce0,v9183_0_3_q0,v9183_1_1_address0,v9183_1_1_ce0,v9183_1_1_q0,v9183_1_2_address0,v9183_1_2_ce0,v9183_1_2_q0,v9183_1_3_address0,v9183_1_3_ce0,v9183_1_3_q0,v9183_2_1_address0,v9183_2_1_ce0,v9183_2_1_q0,v9183_2_2_address0,v9183_2_2_ce0,v9183_2_2_q0,v9183_2_3_address0,v9183_2_3_ce0,v9183_2_3_q0,v9183_3_1_address0,v9183_3_1_ce0,v9183_3_1_q0,v9183_3_2_address0,v9183_3_2_ce0,v9183_3_2_q0,v9183_3_3_address0,v9183_3_3_ce0,v9183_3_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [5:0] trunc_ln;
output  [5:0] v4362_address0;
output   v4362_ce0;
output   v4362_we0;
output  [7:0] v4362_d0;
output  [5:0] v4362_1_address0;
output   v4362_1_ce0;
output   v4362_1_we0;
output  [7:0] v4362_1_d0;
output  [5:0] v4362_2_address0;
output   v4362_2_ce0;
output   v4362_2_we0;
output  [7:0] v4362_2_d0;
output  [5:0] v4362_3_address0;
output   v4362_3_ce0;
output   v4362_3_we0;
output  [7:0] v4362_3_d0;
output  [5:0] v4362_4_address0;
output   v4362_4_ce0;
output   v4362_4_we0;
output  [7:0] v4362_4_d0;
output  [5:0] v4362_5_address0;
output   v4362_5_ce0;
output   v4362_5_we0;
output  [7:0] v4362_5_d0;
output  [5:0] v4362_6_address0;
output   v4362_6_ce0;
output   v4362_6_we0;
output  [7:0] v4362_6_d0;
output  [5:0] v4362_7_address0;
output   v4362_7_ce0;
output   v4362_7_we0;
output  [7:0] v4362_7_d0;
output  [5:0] v4362_8_address0;
output   v4362_8_ce0;
output   v4362_8_we0;
output  [7:0] v4362_8_d0;
output  [5:0] v4362_9_address0;
output   v4362_9_ce0;
output   v4362_9_we0;
output  [7:0] v4362_9_d0;
output  [5:0] v4362_10_address0;
output   v4362_10_ce0;
output   v4362_10_we0;
output  [7:0] v4362_10_d0;
output  [5:0] v4362_11_address0;
output   v4362_11_ce0;
output   v4362_11_we0;
output  [7:0] v4362_11_d0;
output  [5:0] v4362_12_address0;
output   v4362_12_ce0;
output   v4362_12_we0;
output  [7:0] v4362_12_d0;
output  [5:0] v4362_13_address0;
output   v4362_13_ce0;
output   v4362_13_we0;
output  [7:0] v4362_13_d0;
output  [5:0] v4362_14_address0;
output   v4362_14_ce0;
output   v4362_14_we0;
output  [7:0] v4362_14_d0;
output  [5:0] v4362_15_address0;
output   v4362_15_ce0;
output   v4362_15_we0;
output  [7:0] v4362_15_d0;
input  [6:0] mul_i5;
input  [1:0] tmp_95;
input  [1:0] zext_ln6392_2;
input  [1:0] zext_ln6392;
output  [14:0] v9183_0_0_address0;
output   v9183_0_0_ce0;
input  [7:0] v9183_0_0_q0;
output  [14:0] v9183_1_0_address0;
output   v9183_1_0_ce0;
input  [7:0] v9183_1_0_q0;
output  [14:0] v9183_2_0_address0;
output   v9183_2_0_ce0;
input  [7:0] v9183_2_0_q0;
output  [14:0] v9183_3_0_address0;
output   v9183_3_0_ce0;
input  [7:0] v9183_3_0_q0;
output  [14:0] v9183_0_1_address0;
output   v9183_0_1_ce0;
input  [7:0] v9183_0_1_q0;
output  [14:0] v9183_0_2_address0;
output   v9183_0_2_ce0;
input  [7:0] v9183_0_2_q0;
output  [14:0] v9183_0_3_address0;
output   v9183_0_3_ce0;
input  [7:0] v9183_0_3_q0;
output  [14:0] v9183_1_1_address0;
output   v9183_1_1_ce0;
input  [7:0] v9183_1_1_q0;
output  [14:0] v9183_1_2_address0;
output   v9183_1_2_ce0;
input  [7:0] v9183_1_2_q0;
output  [14:0] v9183_1_3_address0;
output   v9183_1_3_ce0;
input  [7:0] v9183_1_3_q0;
output  [14:0] v9183_2_1_address0;
output   v9183_2_1_ce0;
input  [7:0] v9183_2_1_q0;
output  [14:0] v9183_2_2_address0;
output   v9183_2_2_ce0;
input  [7:0] v9183_2_2_q0;
output  [14:0] v9183_2_3_address0;
output   v9183_2_3_ce0;
input  [7:0] v9183_2_3_q0;
output  [14:0] v9183_3_1_address0;
output   v9183_3_1_ce0;
input  [7:0] v9183_3_1_q0;
output  [14:0] v9183_3_2_address0;
output   v9183_3_2_ce0;
input  [7:0] v9183_3_2_q0;
output  [14:0] v9183_3_3_address0;
output   v9183_3_3_ce0;
input  [7:0] v9183_3_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6338_fu_687_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln6339192_reg_644;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] zext_ln6392_cast_fu_655_p1;
reg   [14:0] zext_ln6392_cast_reg_1155;
wire   [12:0] zext_ln6392_2_cast_fu_659_p1;
reg   [12:0] zext_ln6392_2_cast_reg_1163;
reg   [0:0] icmp_ln6338_reg_1171;
reg   [0:0] icmp_ln6338_reg_1171_pp0_iter1_reg;
reg   [2:0] lshr_ln_cast_reg_1175;
reg   [2:0] lshr_ln_cast_reg_1175_pp0_iter2_reg;
wire   [2:0] lshr_ln55_fu_778_p4;
reg   [2:0] lshr_ln55_reg_1180;
reg   [2:0] lshr_ln55_reg_1180_pp0_iter2_reg;
wire   [12:0] add_ln6342_fu_823_p2;
reg   [12:0] add_ln6342_reg_1185;
wire   [12:0] add_ln6350_fu_858_p2;
reg   [12:0] add_ln6350_reg_1191;
wire   [12:0] add_ln6344_fu_901_p2;
reg   [12:0] add_ln6344_reg_1197;
wire   [12:0] add_ln6352_fu_934_p2;
reg   [12:0] add_ln6352_reg_1203;
wire   [0:0] xor_ln6339_fu_953_p2;
reg   [0:0] xor_ln6339_reg_1209;
reg   [0:0] ap_phi_mux_icmp_ln6339192_phi_fu_647_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6342_2_fu_990_p1;
wire   [63:0] zext_ln6350_2_fu_1016_p1;
wire   [63:0] zext_ln6344_2_fu_1044_p1;
wire   [63:0] zext_ln6352_2_fu_1072_p1;
wire   [63:0] zext_ln6372_fu_1091_p1;
reg   [5:0] indvar_flatten189_fu_164;
wire   [5:0] add_ln6338_1_fu_681_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten189_load;
reg   [5:0] v4316190_fu_168;
wire   [5:0] v4316_fu_718_p3;
reg   [5:0] v4317191_fu_172;
wire   [5:0] v4317_fu_939_p2;
reg    v9183_0_0_ce0_local;
reg    v9183_0_1_ce0_local;
reg    v9183_0_2_ce0_local;
reg    v9183_0_3_ce0_local;
reg    v9183_1_0_ce0_local;
reg    v9183_1_1_ce0_local;
reg    v9183_1_2_ce0_local;
reg    v9183_1_3_ce0_local;
reg    v9183_2_0_ce0_local;
reg    v9183_2_1_ce0_local;
reg    v9183_2_2_ce0_local;
reg    v9183_2_3_ce0_local;
reg    v9183_3_0_ce0_local;
reg    v9183_3_1_ce0_local;
reg    v9183_3_2_ce0_local;
reg    v9183_3_3_ce0_local;
reg    v4362_15_we0_local;
reg    v4362_15_ce0_local;
reg    v4362_14_we0_local;
reg    v4362_14_ce0_local;
reg    v4362_13_we0_local;
reg    v4362_13_ce0_local;
reg    v4362_12_we0_local;
reg    v4362_12_ce0_local;
reg    v4362_11_we0_local;
reg    v4362_11_ce0_local;
reg    v4362_10_we0_local;
reg    v4362_10_ce0_local;
reg    v4362_9_we0_local;
reg    v4362_9_ce0_local;
reg    v4362_8_we0_local;
reg    v4362_8_ce0_local;
reg    v4362_7_we0_local;
reg    v4362_7_ce0_local;
reg    v4362_6_we0_local;
reg    v4362_6_ce0_local;
reg    v4362_5_we0_local;
reg    v4362_5_ce0_local;
reg    v4362_4_we0_local;
reg    v4362_4_ce0_local;
reg    v4362_3_we0_local;
reg    v4362_3_ce0_local;
reg    v4362_2_we0_local;
reg    v4362_2_ce0_local;
reg    v4362_1_we0_local;
reg    v4362_1_ce0_local;
reg    v4362_we0_local;
reg    v4362_ce0_local;
wire   [5:0] add_ln6338_fu_704_p2;
wire   [3:0] lshr_ln_fu_730_p4;
wire   [7:0] zext_ln6338_fu_726_p1;
wire   [5:0] zext_ln6338_1_fu_750_p1;
wire   [7:0] empty_fu_754_p2;
wire   [5:0] select_ln6338_fu_710_p3;
wire   [6:0] zext_ln6339_fu_774_p1;
wire   [5:0] empty_258_fu_759_p2;
wire   [10:0] tmp_22_fu_793_p4;
wire   [12:0] p_shl30_fu_806_p5;
wire   [12:0] zext_ln6342_fu_802_p1;
wire   [12:0] sub_ln6342_fu_817_p2;
wire   [5:0] tmp_s_fu_764_p4;
wire   [10:0] tmp_23_fu_828_p4;
wire   [12:0] p_shl28_fu_841_p5;
wire   [12:0] zext_ln6350_fu_837_p1;
wire   [12:0] sub_ln6350_fu_852_p2;
wire   [6:0] add_ln6341_fu_788_p2;
wire   [4:0] lshr_ln56_fu_863_p4;
wire   [10:0] tmp_24_fu_873_p3;
wire   [12:0] p_shl26_fu_885_p4;
wire   [12:0] zext_ln6344_fu_881_p1;
wire   [12:0] sub_ln6344_fu_895_p2;
wire   [10:0] tmp_25_fu_906_p3;
wire   [12:0] p_shl24_fu_918_p4;
wire   [12:0] zext_ln6352_fu_914_p1;
wire   [12:0] sub_ln6352_fu_928_p2;
wire   [0:0] tmp_fu_945_p3;
wire   [14:0] p_shl29_fu_972_p3;
wire   [14:0] zext_ln6342_1_fu_969_p1;
wire   [14:0] sub_ln6342_1_fu_979_p2;
wire   [14:0] add_ln6342_1_fu_985_p2;
wire   [14:0] p_shl27_fu_998_p3;
wire   [14:0] zext_ln6350_1_fu_995_p1;
wire   [14:0] sub_ln6350_1_fu_1005_p2;
wire   [14:0] add_ln6350_1_fu_1011_p2;
wire   [14:0] p_shl25_fu_1026_p3;
wire   [14:0] zext_ln6344_1_fu_1023_p1;
wire   [14:0] sub_ln6344_1_fu_1033_p2;
wire   [14:0] add_ln6344_1_fu_1039_p2;
wire   [14:0] p_shl_fu_1054_p3;
wire   [14:0] zext_ln6352_1_fu_1051_p1;
wire   [14:0] sub_ln6352_1_fu_1061_p2;
wire   [14:0] add_ln6352_1_fu_1067_p2;
wire   [5:0] tmp_21_fu_1085_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten189_fu_164 = 6'd0;
#0 v4316190_fu_168 = 6'd0;
#0 v4317191_fu_172 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6338_reg_1171_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln6339192_reg_644 <= xor_ln6339_reg_1209;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6339192_reg_644 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten189_fu_164 <= add_ln6338_1_fu_681_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten189_fu_164 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4316190_fu_168 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4316190_fu_168 <= v4316_fu_718_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4317191_fu_172 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4317191_fu_172 <= v4317_fu_939_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6342_reg_1185 <= add_ln6342_fu_823_p2;
        add_ln6344_reg_1197 <= add_ln6344_fu_901_p2;
        add_ln6350_reg_1191 <= add_ln6350_fu_858_p2;
        add_ln6352_reg_1203 <= add_ln6352_fu_934_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln6338_reg_1171 <= icmp_ln6338_fu_687_p2;
        icmp_ln6338_reg_1171_pp0_iter1_reg <= icmp_ln6338_reg_1171;
        lshr_ln55_reg_1180 <= {{select_ln6338_fu_710_p3[4:2]}};
        lshr_ln_cast_reg_1175 <= {{v4316_fu_718_p3[4:2]}};
        zext_ln6392_2_cast_reg_1163[1 : 0] <= zext_ln6392_2_cast_fu_659_p1[1 : 0];
        zext_ln6392_cast_reg_1155[1 : 0] <= zext_ln6392_cast_fu_655_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln55_reg_1180_pp0_iter2_reg <= lshr_ln55_reg_1180;
        lshr_ln_cast_reg_1175_pp0_iter2_reg <= lshr_ln_cast_reg_1175;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln6339_reg_1209 <= xor_ln6339_fu_953_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6338_fu_687_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln6338_reg_1171_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln6339192_phi_fu_647_p4 = xor_ln6339_reg_1209;
    end else begin
        ap_phi_mux_icmp_ln6339192_phi_fu_647_p4 = icmp_ln6339192_reg_644;
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
        ap_sig_allocacmp_indvar_flatten189_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten189_load = indvar_flatten189_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_10_ce0_local = 1'b1;
    end else begin
        v4362_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_10_we0_local = 1'b1;
    end else begin
        v4362_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_11_ce0_local = 1'b1;
    end else begin
        v4362_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_11_we0_local = 1'b1;
    end else begin
        v4362_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_12_ce0_local = 1'b1;
    end else begin
        v4362_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_12_we0_local = 1'b1;
    end else begin
        v4362_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_13_ce0_local = 1'b1;
    end else begin
        v4362_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_13_we0_local = 1'b1;
    end else begin
        v4362_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_14_ce0_local = 1'b1;
    end else begin
        v4362_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_14_we0_local = 1'b1;
    end else begin
        v4362_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_15_ce0_local = 1'b1;
    end else begin
        v4362_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_15_we0_local = 1'b1;
    end else begin
        v4362_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_1_ce0_local = 1'b1;
    end else begin
        v4362_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_1_we0_local = 1'b1;
    end else begin
        v4362_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_2_ce0_local = 1'b1;
    end else begin
        v4362_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_2_we0_local = 1'b1;
    end else begin
        v4362_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_3_ce0_local = 1'b1;
    end else begin
        v4362_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_3_we0_local = 1'b1;
    end else begin
        v4362_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_4_ce0_local = 1'b1;
    end else begin
        v4362_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_4_we0_local = 1'b1;
    end else begin
        v4362_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_5_ce0_local = 1'b1;
    end else begin
        v4362_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_5_we0_local = 1'b1;
    end else begin
        v4362_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_6_ce0_local = 1'b1;
    end else begin
        v4362_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_6_we0_local = 1'b1;
    end else begin
        v4362_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_7_ce0_local = 1'b1;
    end else begin
        v4362_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_7_we0_local = 1'b1;
    end else begin
        v4362_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_8_ce0_local = 1'b1;
    end else begin
        v4362_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_8_we0_local = 1'b1;
    end else begin
        v4362_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_9_ce0_local = 1'b1;
    end else begin
        v4362_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_9_we0_local = 1'b1;
    end else begin
        v4362_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_ce0_local = 1'b1;
    end else begin
        v4362_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_we0_local = 1'b1;
    end else begin
        v4362_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_0_0_ce0_local = 1'b1;
    end else begin
        v9183_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_0_1_ce0_local = 1'b1;
    end else begin
        v9183_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_0_2_ce0_local = 1'b1;
    end else begin
        v9183_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_0_3_ce0_local = 1'b1;
    end else begin
        v9183_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_1_0_ce0_local = 1'b1;
    end else begin
        v9183_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_1_1_ce0_local = 1'b1;
    end else begin
        v9183_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_1_2_ce0_local = 1'b1;
    end else begin
        v9183_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_1_3_ce0_local = 1'b1;
    end else begin
        v9183_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_2_0_ce0_local = 1'b1;
    end else begin
        v9183_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_2_1_ce0_local = 1'b1;
    end else begin
        v9183_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_2_2_ce0_local = 1'b1;
    end else begin
        v9183_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_2_3_ce0_local = 1'b1;
    end else begin
        v9183_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_3_0_ce0_local = 1'b1;
    end else begin
        v9183_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_3_1_ce0_local = 1'b1;
    end else begin
        v9183_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_3_2_ce0_local = 1'b1;
    end else begin
        v9183_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9183_3_3_ce0_local = 1'b1;
    end else begin
        v9183_3_3_ce0_local = 1'b0;
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
assign add_ln6338_1_fu_681_p2 = (ap_sig_allocacmp_indvar_flatten189_load + 6'd1);
assign add_ln6338_fu_704_p2 = (v4316190_fu_168 + 6'd4);
assign add_ln6341_fu_788_p2 = (mul_i5 + zext_ln6339_fu_774_p1);
assign add_ln6342_1_fu_985_p2 = (sub_ln6342_1_fu_979_p2 + zext_ln6392_cast_reg_1155);
assign add_ln6342_fu_823_p2 = (sub_ln6342_fu_817_p2 + zext_ln6392_2_cast_reg_1163);
assign add_ln6344_1_fu_1039_p2 = (sub_ln6344_1_fu_1033_p2 + zext_ln6392_cast_reg_1155);
assign add_ln6344_fu_901_p2 = (sub_ln6344_fu_895_p2 + zext_ln6392_2_cast_reg_1163);
assign add_ln6350_1_fu_1011_p2 = (sub_ln6350_1_fu_1005_p2 + zext_ln6392_cast_reg_1155);
assign add_ln6350_fu_858_p2 = (sub_ln6350_fu_852_p2 + zext_ln6392_2_cast_reg_1163);
assign add_ln6352_1_fu_1067_p2 = (sub_ln6352_1_fu_1061_p2 + zext_ln6392_cast_reg_1155);
assign add_ln6352_fu_934_p2 = (sub_ln6352_fu_928_p2 + zext_ln6392_2_cast_reg_1163);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_258_fu_759_p2 = (zext_ln6338_1_fu_750_p1 + trunc_ln);
assign empty_fu_754_p2 = (mul_i + zext_ln6338_fu_726_p1);
assign icmp_ln6338_fu_687_p2 = ((ap_sig_allocacmp_indvar_flatten189_load == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln55_fu_778_p4 = {{select_ln6338_fu_710_p3[4:2]}};
assign lshr_ln56_fu_863_p4 = {{add_ln6341_fu_788_p2[6:2]}};
assign lshr_ln_fu_730_p4 = {{v4316_fu_718_p3[5:2]}};
assign p_shl24_fu_918_p4 = {{{tmp_s_fu_764_p4}, {lshr_ln56_fu_863_p4}}, {2'd0}};
assign p_shl25_fu_1026_p3 = {{add_ln6344_reg_1197}, {2'd0}};
assign p_shl26_fu_885_p4 = {{{empty_258_fu_759_p2}, {lshr_ln56_fu_863_p4}}, {2'd0}};
assign p_shl27_fu_998_p3 = {{add_ln6350_reg_1191}, {2'd0}};
assign p_shl28_fu_841_p5 = {{{{tmp_s_fu_764_p4}, {tmp_95}}, {lshr_ln55_fu_778_p4}}, {2'd0}};
assign p_shl29_fu_972_p3 = {{add_ln6342_reg_1185}, {2'd0}};
assign p_shl30_fu_806_p5 = {{{{empty_258_fu_759_p2}, {tmp_95}}, {lshr_ln55_fu_778_p4}}, {2'd0}};
assign p_shl_fu_1054_p3 = {{add_ln6352_reg_1203}, {2'd0}};
assign select_ln6338_fu_710_p3 = ((ap_phi_mux_icmp_ln6339192_phi_fu_647_p4[0:0] == 1'b1) ? v4317191_fu_172 : 6'd0);
assign sub_ln6342_1_fu_979_p2 = (p_shl29_fu_972_p3 - zext_ln6342_1_fu_969_p1);
assign sub_ln6342_fu_817_p2 = (p_shl30_fu_806_p5 - zext_ln6342_fu_802_p1);
assign sub_ln6344_1_fu_1033_p2 = (p_shl25_fu_1026_p3 - zext_ln6344_1_fu_1023_p1);
assign sub_ln6344_fu_895_p2 = (p_shl26_fu_885_p4 - zext_ln6344_fu_881_p1);
assign sub_ln6350_1_fu_1005_p2 = (p_shl27_fu_998_p3 - zext_ln6350_1_fu_995_p1);
assign sub_ln6350_fu_852_p2 = (p_shl28_fu_841_p5 - zext_ln6350_fu_837_p1);
assign sub_ln6352_1_fu_1061_p2 = (p_shl_fu_1054_p3 - zext_ln6352_1_fu_1051_p1);
assign sub_ln6352_fu_928_p2 = (p_shl24_fu_918_p4 - zext_ln6352_fu_914_p1);
assign tmp_21_fu_1085_p3 = {{lshr_ln_cast_reg_1175_pp0_iter2_reg}, {lshr_ln55_reg_1180_pp0_iter2_reg}};
assign tmp_22_fu_793_p4 = {{{empty_258_fu_759_p2}, {tmp_95}}, {lshr_ln55_fu_778_p4}};
assign tmp_23_fu_828_p4 = {{{tmp_s_fu_764_p4}, {tmp_95}}, {lshr_ln55_fu_778_p4}};
assign tmp_24_fu_873_p3 = {{empty_258_fu_759_p2}, {lshr_ln56_fu_863_p4}};
assign tmp_25_fu_906_p3 = {{tmp_s_fu_764_p4}, {lshr_ln56_fu_863_p4}};
assign tmp_fu_945_p3 = v4317_fu_939_p2[32'd5];
assign tmp_s_fu_764_p4 = {{empty_fu_754_p2[7:2]}};
assign v4316_fu_718_p3 = ((ap_phi_mux_icmp_ln6339192_phi_fu_647_p4[0:0] == 1'b1) ? v4316190_fu_168 : add_ln6338_fu_704_p2);
assign v4317_fu_939_p2 = (select_ln6338_fu_710_p3 + 6'd4);
assign v4362_10_address0 = zext_ln6372_fu_1091_p1;
assign v4362_10_ce0 = v4362_10_ce0_local;
assign v4362_10_d0 = v9183_1_1_q0;
assign v4362_10_we0 = v4362_10_we0_local;
assign v4362_11_address0 = zext_ln6372_fu_1091_p1;
assign v4362_11_ce0 = v4362_11_ce0_local;
assign v4362_11_d0 = v9183_1_0_q0;
assign v4362_11_we0 = v4362_11_we0_local;
assign v4362_12_address0 = zext_ln6372_fu_1091_p1;
assign v4362_12_ce0 = v4362_12_ce0_local;
assign v4362_12_d0 = v9183_0_3_q0;
assign v4362_12_we0 = v4362_12_we0_local;
assign v4362_13_address0 = zext_ln6372_fu_1091_p1;
assign v4362_13_ce0 = v4362_13_ce0_local;
assign v4362_13_d0 = v9183_0_2_q0;
assign v4362_13_we0 = v4362_13_we0_local;
assign v4362_14_address0 = zext_ln6372_fu_1091_p1;
assign v4362_14_ce0 = v4362_14_ce0_local;
assign v4362_14_d0 = v9183_0_1_q0;
assign v4362_14_we0 = v4362_14_we0_local;
assign v4362_15_address0 = zext_ln6372_fu_1091_p1;
assign v4362_15_ce0 = v4362_15_ce0_local;
assign v4362_15_d0 = v9183_0_0_q0;
assign v4362_15_we0 = v4362_15_we0_local;
assign v4362_1_address0 = zext_ln6372_fu_1091_p1;
assign v4362_1_ce0 = v4362_1_ce0_local;
assign v4362_1_d0 = v9183_3_2_q0;
assign v4362_1_we0 = v4362_1_we0_local;
assign v4362_2_address0 = zext_ln6372_fu_1091_p1;
assign v4362_2_ce0 = v4362_2_ce0_local;
assign v4362_2_d0 = v9183_3_1_q0;
assign v4362_2_we0 = v4362_2_we0_local;
assign v4362_3_address0 = zext_ln6372_fu_1091_p1;
assign v4362_3_ce0 = v4362_3_ce0_local;
assign v4362_3_d0 = v9183_3_0_q0;
assign v4362_3_we0 = v4362_3_we0_local;
assign v4362_4_address0 = zext_ln6372_fu_1091_p1;
assign v4362_4_ce0 = v4362_4_ce0_local;
assign v4362_4_d0 = v9183_2_3_q0;
assign v4362_4_we0 = v4362_4_we0_local;
assign v4362_5_address0 = zext_ln6372_fu_1091_p1;
assign v4362_5_ce0 = v4362_5_ce0_local;
assign v4362_5_d0 = v9183_2_2_q0;
assign v4362_5_we0 = v4362_5_we0_local;
assign v4362_6_address0 = zext_ln6372_fu_1091_p1;
assign v4362_6_ce0 = v4362_6_ce0_local;
assign v4362_6_d0 = v9183_2_1_q0;
assign v4362_6_we0 = v4362_6_we0_local;
assign v4362_7_address0 = zext_ln6372_fu_1091_p1;
assign v4362_7_ce0 = v4362_7_ce0_local;
assign v4362_7_d0 = v9183_2_0_q0;
assign v4362_7_we0 = v4362_7_we0_local;
assign v4362_8_address0 = zext_ln6372_fu_1091_p1;
assign v4362_8_ce0 = v4362_8_ce0_local;
assign v4362_8_d0 = v9183_1_3_q0;
assign v4362_8_we0 = v4362_8_we0_local;
assign v4362_9_address0 = zext_ln6372_fu_1091_p1;
assign v4362_9_ce0 = v4362_9_ce0_local;
assign v4362_9_d0 = v9183_1_2_q0;
assign v4362_9_we0 = v4362_9_we0_local;
assign v4362_address0 = zext_ln6372_fu_1091_p1;
assign v4362_ce0 = v4362_ce0_local;
assign v4362_d0 = v9183_3_3_q0;
assign v4362_we0 = v4362_we0_local;
assign v9183_0_0_address0 = zext_ln6342_2_fu_990_p1;
assign v9183_0_0_ce0 = v9183_0_0_ce0_local;
assign v9183_0_1_address0 = zext_ln6344_2_fu_1044_p1;
assign v9183_0_1_ce0 = v9183_0_1_ce0_local;
assign v9183_0_2_address0 = zext_ln6344_2_fu_1044_p1;
assign v9183_0_2_ce0 = v9183_0_2_ce0_local;
assign v9183_0_3_address0 = zext_ln6344_2_fu_1044_p1;
assign v9183_0_3_ce0 = v9183_0_3_ce0_local;
assign v9183_1_0_address0 = zext_ln6350_2_fu_1016_p1;
assign v9183_1_0_ce0 = v9183_1_0_ce0_local;
assign v9183_1_1_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_1_1_ce0 = v9183_1_1_ce0_local;
assign v9183_1_2_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_1_2_ce0 = v9183_1_2_ce0_local;
assign v9183_1_3_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_1_3_ce0 = v9183_1_3_ce0_local;
assign v9183_2_0_address0 = zext_ln6350_2_fu_1016_p1;
assign v9183_2_0_ce0 = v9183_2_0_ce0_local;
assign v9183_2_1_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_2_1_ce0 = v9183_2_1_ce0_local;
assign v9183_2_2_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_2_2_ce0 = v9183_2_2_ce0_local;
assign v9183_2_3_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_2_3_ce0 = v9183_2_3_ce0_local;
assign v9183_3_0_address0 = zext_ln6350_2_fu_1016_p1;
assign v9183_3_0_ce0 = v9183_3_0_ce0_local;
assign v9183_3_1_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_3_1_ce0 = v9183_3_1_ce0_local;
assign v9183_3_2_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_3_2_ce0 = v9183_3_2_ce0_local;
assign v9183_3_3_address0 = zext_ln6352_2_fu_1072_p1;
assign v9183_3_3_ce0 = v9183_3_3_ce0_local;
assign xor_ln6339_fu_953_p2 = (tmp_fu_945_p3 ^ 1'd1);
assign zext_ln6338_1_fu_750_p1 = lshr_ln_fu_730_p4;
assign zext_ln6338_fu_726_p1 = v4316_fu_718_p3;
assign zext_ln6339_fu_774_p1 = select_ln6338_fu_710_p3;
assign zext_ln6342_1_fu_969_p1 = add_ln6342_reg_1185;
assign zext_ln6342_2_fu_990_p1 = add_ln6342_1_fu_985_p2;
assign zext_ln6342_fu_802_p1 = tmp_22_fu_793_p4;
assign zext_ln6344_1_fu_1023_p1 = add_ln6344_reg_1197;
assign zext_ln6344_2_fu_1044_p1 = add_ln6344_1_fu_1039_p2;
assign zext_ln6344_fu_881_p1 = tmp_24_fu_873_p3;
assign zext_ln6350_1_fu_995_p1 = add_ln6350_reg_1191;
assign zext_ln6350_2_fu_1016_p1 = add_ln6350_1_fu_1011_p2;
assign zext_ln6350_fu_837_p1 = tmp_23_fu_828_p4;
assign zext_ln6352_1_fu_1051_p1 = add_ln6352_reg_1203;
assign zext_ln6352_2_fu_1072_p1 = add_ln6352_1_fu_1067_p2;
assign zext_ln6352_fu_914_p1 = tmp_25_fu_906_p3;
assign zext_ln6372_fu_1091_p1 = tmp_21_fu_1085_p3;
assign zext_ln6392_2_cast_fu_659_p1 = zext_ln6392_2;
assign zext_ln6392_cast_fu_655_p1 = zext_ln6392;
always @ (posedge ap_clk) begin
    zext_ln6392_cast_reg_1155[14:2] <= 13'b0000000000000;
    zext_ln6392_2_cast_reg_1163[12:2] <= 11'b00000000000;
end
endmodule 
