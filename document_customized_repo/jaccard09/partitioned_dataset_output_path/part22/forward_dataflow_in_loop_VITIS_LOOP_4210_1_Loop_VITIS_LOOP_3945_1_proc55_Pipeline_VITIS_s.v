
module forward_dataflow_in_loop_VITIS_LOOP_4210_1_Loop_VITIS_LOOP_3945_1_proc55_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v3089_address0,v3089_ce0,v3089_we0,v3089_d0,v3089_1_address0,v3089_1_ce0,v3089_1_we0,v3089_1_d0,v3089_2_address0,v3089_2_ce0,v3089_2_we0,v3089_2_d0,v3089_3_address0,v3089_3_ce0,v3089_3_we0,v3089_3_d0,v3089_4_address0,v3089_4_ce0,v3089_4_we0,v3089_4_d0,v3089_5_address0,v3089_5_ce0,v3089_5_we0,v3089_5_d0,v3089_6_address0,v3089_6_ce0,v3089_6_we0,v3089_6_d0,v3089_7_address0,v3089_7_ce0,v3089_7_we0,v3089_7_d0,v3089_8_address0,v3089_8_ce0,v3089_8_we0,v3089_8_d0,v3089_9_address0,v3089_9_ce0,v3089_9_we0,v3089_9_d0,v3089_10_address0,v3089_10_ce0,v3089_10_we0,v3089_10_d0,v3089_11_address0,v3089_11_ce0,v3089_11_we0,v3089_11_d0,v3089_12_address0,v3089_12_ce0,v3089_12_we0,v3089_12_d0,v3089_13_address0,v3089_13_ce0,v3089_13_we0,v3089_13_d0,v3089_14_address0,v3089_14_ce0,v3089_14_we0,v3089_14_d0,v3089_15_address0,v3089_15_ce0,v3089_15_we0,v3089_15_d0,mul_i5,tmp_207,zext_ln4003_1,zext_ln4003,v9005_0_0_address0,v9005_0_0_ce0,v9005_0_0_q0,v9005_1_0_address0,v9005_1_0_ce0,v9005_1_0_q0,v9005_2_0_address0,v9005_2_0_ce0,v9005_2_0_q0,v9005_3_0_address0,v9005_3_0_ce0,v9005_3_0_q0,v9005_0_1_address0,v9005_0_1_ce0,v9005_0_1_q0,v9005_0_2_address0,v9005_0_2_ce0,v9005_0_2_q0,v9005_0_3_address0,v9005_0_3_ce0,v9005_0_3_q0,v9005_1_1_address0,v9005_1_1_ce0,v9005_1_1_q0,v9005_1_2_address0,v9005_1_2_ce0,v9005_1_2_q0,v9005_1_3_address0,v9005_1_3_ce0,v9005_1_3_q0,v9005_2_1_address0,v9005_2_1_ce0,v9005_2_1_q0,v9005_2_2_address0,v9005_2_2_ce0,v9005_2_2_q0,v9005_2_3_address0,v9005_2_3_ce0,v9005_2_3_q0,v9005_3_1_address0,v9005_3_1_ce0,v9005_3_1_q0,v9005_3_2_address0,v9005_3_2_ce0,v9005_3_2_q0,v9005_3_3_address0,v9005_3_3_ce0,v9005_3_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
output  [5:0] v3089_address0;
output   v3089_ce0;
output   v3089_we0;
output  [7:0] v3089_d0;
output  [5:0] v3089_1_address0;
output   v3089_1_ce0;
output   v3089_1_we0;
output  [7:0] v3089_1_d0;
output  [5:0] v3089_2_address0;
output   v3089_2_ce0;
output   v3089_2_we0;
output  [7:0] v3089_2_d0;
output  [5:0] v3089_3_address0;
output   v3089_3_ce0;
output   v3089_3_we0;
output  [7:0] v3089_3_d0;
output  [5:0] v3089_4_address0;
output   v3089_4_ce0;
output   v3089_4_we0;
output  [7:0] v3089_4_d0;
output  [5:0] v3089_5_address0;
output   v3089_5_ce0;
output   v3089_5_we0;
output  [7:0] v3089_5_d0;
output  [5:0] v3089_6_address0;
output   v3089_6_ce0;
output   v3089_6_we0;
output  [7:0] v3089_6_d0;
output  [5:0] v3089_7_address0;
output   v3089_7_ce0;
output   v3089_7_we0;
output  [7:0] v3089_7_d0;
output  [5:0] v3089_8_address0;
output   v3089_8_ce0;
output   v3089_8_we0;
output  [7:0] v3089_8_d0;
output  [5:0] v3089_9_address0;
output   v3089_9_ce0;
output   v3089_9_we0;
output  [7:0] v3089_9_d0;
output  [5:0] v3089_10_address0;
output   v3089_10_ce0;
output   v3089_10_we0;
output  [7:0] v3089_10_d0;
output  [5:0] v3089_11_address0;
output   v3089_11_ce0;
output   v3089_11_we0;
output  [7:0] v3089_11_d0;
output  [5:0] v3089_12_address0;
output   v3089_12_ce0;
output   v3089_12_we0;
output  [7:0] v3089_12_d0;
output  [5:0] v3089_13_address0;
output   v3089_13_ce0;
output   v3089_13_we0;
output  [7:0] v3089_13_d0;
output  [5:0] v3089_14_address0;
output   v3089_14_ce0;
output   v3089_14_we0;
output  [7:0] v3089_14_d0;
output  [5:0] v3089_15_address0;
output   v3089_15_ce0;
output   v3089_15_we0;
output  [7:0] v3089_15_d0;
input  [8:0] mul_i5;
input  [3:0] tmp_207;
input  [1:0] zext_ln4003_1;
input  [1:0] zext_ln4003;
output  [16:0] v9005_0_0_address0;
output   v9005_0_0_ce0;
input  [7:0] v9005_0_0_q0;
output  [16:0] v9005_1_0_address0;
output   v9005_1_0_ce0;
input  [7:0] v9005_1_0_q0;
output  [16:0] v9005_2_0_address0;
output   v9005_2_0_ce0;
input  [7:0] v9005_2_0_q0;
output  [16:0] v9005_3_0_address0;
output   v9005_3_0_ce0;
input  [7:0] v9005_3_0_q0;
output  [16:0] v9005_0_1_address0;
output   v9005_0_1_ce0;
input  [7:0] v9005_0_1_q0;
output  [16:0] v9005_0_2_address0;
output   v9005_0_2_ce0;
input  [7:0] v9005_0_2_q0;
output  [16:0] v9005_0_3_address0;
output   v9005_0_3_ce0;
input  [7:0] v9005_0_3_q0;
output  [16:0] v9005_1_1_address0;
output   v9005_1_1_ce0;
input  [7:0] v9005_1_1_q0;
output  [16:0] v9005_1_2_address0;
output   v9005_1_2_ce0;
input  [7:0] v9005_1_2_q0;
output  [16:0] v9005_1_3_address0;
output   v9005_1_3_ce0;
input  [7:0] v9005_1_3_q0;
output  [16:0] v9005_2_1_address0;
output   v9005_2_1_ce0;
input  [7:0] v9005_2_1_q0;
output  [16:0] v9005_2_2_address0;
output   v9005_2_2_ce0;
input  [7:0] v9005_2_2_q0;
output  [16:0] v9005_2_3_address0;
output   v9005_2_3_ce0;
input  [7:0] v9005_2_3_q0;
output  [16:0] v9005_3_1_address0;
output   v9005_3_1_ce0;
input  [7:0] v9005_3_1_q0;
output  [16:0] v9005_3_2_address0;
output   v9005_3_2_ce0;
input  [7:0] v9005_3_2_q0;
output  [16:0] v9005_3_3_address0;
output   v9005_3_3_ce0;
input  [7:0] v9005_3_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln3945_fu_782_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [16:0] zext_ln4003_cast_fu_642_p1;
reg   [16:0] zext_ln4003_cast_reg_1024;
wire   [15:0] zext_ln4003_1_cast_fu_646_p1;
reg   [15:0] zext_ln4003_1_cast_reg_1030;
reg   [6:0] tmp_reg_1036;
reg   [2:0] lshr_ln_reg_1042;
reg   [2:0] lshr_ln_reg_1042_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_1042_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_1048;
reg   [2:0] tmp_s_reg_1048_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_1048_pp0_iter2_reg;
reg   [6:0] lshr_ln10_reg_1053;
wire   [0:0] xor_ln3946_fu_776_p2;
reg   [0:0] xor_ln3946_reg_1058;
reg   [0:0] icmp_ln3945_reg_1063;
wire   [15:0] add_ln3949_1_fu_861_p2;
reg   [15:0] add_ln3949_1_reg_1067;
wire   [14:0] trunc_ln3949_fu_866_p1;
reg   [14:0] trunc_ln3949_reg_1072;
wire   [15:0] add_ln3951_1_fu_897_p2;
reg   [15:0] add_ln3951_1_reg_1077;
wire   [14:0] trunc_ln3951_fu_902_p1;
reg   [14:0] trunc_ln3951_reg_1082;
reg   [0:0] ap_phi_mux_icmp_ln3946192_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln3949_4_fu_927_p1;
wire   [63:0] zext_ln3951_3_fu_956_p1;
wire   [63:0] zext_ln3979_fu_978_p1;
reg   [5:0] indvar_flatten189_fu_158;
wire   [5:0] add_ln3945_1_fu_762_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten189_load;
reg   [5:0] v2967190_fu_162;
wire   [5:0] v2967_fu_688_p3;
reg   [5:0] ap_sig_allocacmp_v2967190_load;
reg   [5:0] v2968191_fu_166;
wire   [5:0] v2968_fu_756_p2;
reg   [5:0] ap_sig_allocacmp_v2968191_load;
reg    v9005_0_0_ce0_local;
reg    v9005_0_1_ce0_local;
reg    v9005_0_2_ce0_local;
reg    v9005_0_3_ce0_local;
reg    v9005_1_0_ce0_local;
reg    v9005_1_1_ce0_local;
reg    v9005_1_2_ce0_local;
reg    v9005_1_3_ce0_local;
reg    v9005_2_0_ce0_local;
reg    v9005_2_1_ce0_local;
reg    v9005_2_2_ce0_local;
reg    v9005_2_3_ce0_local;
reg    v9005_3_0_ce0_local;
reg    v9005_3_1_ce0_local;
reg    v9005_3_2_ce0_local;
reg    v9005_3_3_ce0_local;
reg    v3089_15_we0_local;
reg    v3089_15_ce0_local;
reg    v3089_14_we0_local;
reg    v3089_14_ce0_local;
reg    v3089_13_we0_local;
reg    v3089_13_ce0_local;
reg    v3089_12_we0_local;
reg    v3089_12_ce0_local;
reg    v3089_11_we0_local;
reg    v3089_11_ce0_local;
reg    v3089_10_we0_local;
reg    v3089_10_ce0_local;
reg    v3089_9_we0_local;
reg    v3089_9_ce0_local;
reg    v3089_8_we0_local;
reg    v3089_8_ce0_local;
reg    v3089_7_we0_local;
reg    v3089_7_ce0_local;
reg    v3089_6_we0_local;
reg    v3089_6_ce0_local;
reg    v3089_5_we0_local;
reg    v3089_5_ce0_local;
reg    v3089_4_we0_local;
reg    v3089_4_ce0_local;
reg    v3089_3_we0_local;
reg    v3089_3_ce0_local;
reg    v3089_2_we0_local;
reg    v3089_2_ce0_local;
reg    v3089_1_we0_local;
reg    v3089_1_ce0_local;
reg    v3089_we0_local;
reg    v3089_ce0_local;
wire   [5:0] add_ln3945_fu_674_p2;
wire   [8:0] zext_ln3945_fu_696_p1;
wire   [8:0] empty_fu_700_p2;
wire   [5:0] select_ln3945_fu_680_p3;
wire   [8:0] zext_ln3946_fu_716_p1;
wire   [8:0] add_ln3948_fu_740_p2;
wire   [0:0] tmp_163_fu_768_p3;
wire   [11:0] tmp_160_fu_810_p3;
wire   [13:0] p_shl22_fu_803_p3;
wire   [13:0] zext_ln3949_fu_817_p1;
wire   [6:0] or_ln_fu_827_p3;
wire   [13:0] sub_ln3949_fu_821_p2;
wire   [13:0] zext_ln3949_1_fu_833_p1;
wire   [13:0] add_ln3949_fu_837_p2;
wire   [15:0] p_shl21_fu_847_p3;
wire   [15:0] zext_ln3949_2_fu_843_p1;
wire   [15:0] sub_ln3949_1_fu_855_p2;
wire   [13:0] zext_ln3951_fu_870_p1;
wire   [13:0] add_ln3951_fu_873_p2;
wire   [15:0] p_shl19_fu_883_p3;
wire   [15:0] zext_ln3951_1_fu_879_p1;
wire   [15:0] sub_ln3951_fu_891_p2;
wire   [16:0] tmp_161_fu_906_p3;
wire   [16:0] zext_ln3949_3_fu_913_p1;
wire   [16:0] sub_ln3949_2_fu_916_p2;
wire   [16:0] add_ln3949_2_fu_922_p2;
wire   [16:0] tmp_162_fu_935_p3;
wire   [16:0] zext_ln3951_2_fu_942_p1;
wire   [16:0] sub_ln3951_1_fu_945_p2;
wire   [16:0] add_ln3951_2_fu_951_p2;
wire   [5:0] tmp_71_fu_972_p3;
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
reg    ap_condition_733;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten189_fu_158 = 6'd0;
#0 v2967190_fu_162 = 6'd0;
#0 v2968191_fu_166 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten189_fu_158 <= add_ln3945_1_fu_762_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten189_fu_158 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2967190_fu_162 <= v2967_fu_688_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v2967190_fu_162 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2968191_fu_166 <= v2968_fu_756_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v2968191_fu_166 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3949_1_reg_1067 <= add_ln3949_1_fu_861_p2;
        add_ln3951_1_reg_1077 <= add_ln3951_1_fu_897_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln3945_reg_1063 <= icmp_ln3945_fu_782_p2;
        lshr_ln10_reg_1053 <= {{add_ln3948_fu_740_p2[8:2]}};
        lshr_ln_reg_1042 <= {{select_ln3945_fu_680_p3[4:2]}};
        lshr_ln_reg_1042_pp0_iter1_reg <= lshr_ln_reg_1042;
        tmp_reg_1036 <= {{empty_fu_700_p2[8:2]}};
        tmp_s_reg_1048 <= {{v2967_fu_688_p3[4:2]}};
        tmp_s_reg_1048_pp0_iter1_reg <= tmp_s_reg_1048;
        trunc_ln3949_reg_1072 <= trunc_ln3949_fu_866_p1;
        trunc_ln3951_reg_1082 <= trunc_ln3951_fu_902_p1;
        zext_ln4003_1_cast_reg_1030[1 : 0] <= zext_ln4003_1_cast_fu_646_p1[1 : 0];
        zext_ln4003_cast_reg_1024[1 : 0] <= zext_ln4003_cast_fu_642_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln_reg_1042_pp0_iter2_reg <= lshr_ln_reg_1042_pp0_iter1_reg;
        tmp_s_reg_1048_pp0_iter2_reg <= tmp_s_reg_1048_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln3946_reg_1058 <= xor_ln3946_fu_776_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3945_fu_782_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_733)) begin
            ap_phi_mux_icmp_ln3946192_phi_fu_635_p4 = xor_ln3946_reg_1058;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3946192_phi_fu_635_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln3946192_phi_fu_635_p4 = xor_ln3946_reg_1058;
        end
    end else begin
        ap_phi_mux_icmp_ln3946192_phi_fu_635_p4 = xor_ln3946_reg_1058;
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
        ap_sig_allocacmp_indvar_flatten189_load = indvar_flatten189_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2967190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2967190_load = v2967190_fu_162;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2968191_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2968191_load = v2968191_fu_166;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_10_ce0_local = 1'b1;
    end else begin
        v3089_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_10_we0_local = 1'b1;
    end else begin
        v3089_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_11_ce0_local = 1'b1;
    end else begin
        v3089_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_11_we0_local = 1'b1;
    end else begin
        v3089_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_12_ce0_local = 1'b1;
    end else begin
        v3089_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_12_we0_local = 1'b1;
    end else begin
        v3089_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_13_ce0_local = 1'b1;
    end else begin
        v3089_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_13_we0_local = 1'b1;
    end else begin
        v3089_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_14_ce0_local = 1'b1;
    end else begin
        v3089_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_14_we0_local = 1'b1;
    end else begin
        v3089_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_15_ce0_local = 1'b1;
    end else begin
        v3089_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_15_we0_local = 1'b1;
    end else begin
        v3089_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_1_ce0_local = 1'b1;
    end else begin
        v3089_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_1_we0_local = 1'b1;
    end else begin
        v3089_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_2_ce0_local = 1'b1;
    end else begin
        v3089_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_2_we0_local = 1'b1;
    end else begin
        v3089_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_3_ce0_local = 1'b1;
    end else begin
        v3089_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_3_we0_local = 1'b1;
    end else begin
        v3089_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_4_ce0_local = 1'b1;
    end else begin
        v3089_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_4_we0_local = 1'b1;
    end else begin
        v3089_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_5_ce0_local = 1'b1;
    end else begin
        v3089_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_5_we0_local = 1'b1;
    end else begin
        v3089_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_6_ce0_local = 1'b1;
    end else begin
        v3089_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_6_we0_local = 1'b1;
    end else begin
        v3089_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_7_ce0_local = 1'b1;
    end else begin
        v3089_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_7_we0_local = 1'b1;
    end else begin
        v3089_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_8_ce0_local = 1'b1;
    end else begin
        v3089_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_8_we0_local = 1'b1;
    end else begin
        v3089_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_9_ce0_local = 1'b1;
    end else begin
        v3089_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_9_we0_local = 1'b1;
    end else begin
        v3089_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_ce0_local = 1'b1;
    end else begin
        v3089_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3089_we0_local = 1'b1;
    end else begin
        v3089_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_0_0_ce0_local = 1'b1;
    end else begin
        v9005_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_0_1_ce0_local = 1'b1;
    end else begin
        v9005_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_0_2_ce0_local = 1'b1;
    end else begin
        v9005_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_0_3_ce0_local = 1'b1;
    end else begin
        v9005_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_1_0_ce0_local = 1'b1;
    end else begin
        v9005_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_1_1_ce0_local = 1'b1;
    end else begin
        v9005_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_1_2_ce0_local = 1'b1;
    end else begin
        v9005_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_1_3_ce0_local = 1'b1;
    end else begin
        v9005_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_2_0_ce0_local = 1'b1;
    end else begin
        v9005_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_2_1_ce0_local = 1'b1;
    end else begin
        v9005_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_2_2_ce0_local = 1'b1;
    end else begin
        v9005_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_2_3_ce0_local = 1'b1;
    end else begin
        v9005_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_3_0_ce0_local = 1'b1;
    end else begin
        v9005_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_3_1_ce0_local = 1'b1;
    end else begin
        v9005_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_3_2_ce0_local = 1'b1;
    end else begin
        v9005_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9005_3_3_ce0_local = 1'b1;
    end else begin
        v9005_3_3_ce0_local = 1'b0;
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
assign add_ln3945_1_fu_762_p2 = (ap_sig_allocacmp_indvar_flatten189_load + 6'd1);
assign add_ln3945_fu_674_p2 = (ap_sig_allocacmp_v2967190_load + 6'd4);
assign add_ln3948_fu_740_p2 = (mul_i5 + zext_ln3946_fu_716_p1);
assign add_ln3949_1_fu_861_p2 = (sub_ln3949_1_fu_855_p2 + zext_ln4003_1_cast_reg_1030);
assign add_ln3949_2_fu_922_p2 = (sub_ln3949_2_fu_916_p2 + zext_ln4003_cast_reg_1024);
assign add_ln3949_fu_837_p2 = (sub_ln3949_fu_821_p2 + zext_ln3949_1_fu_833_p1);
assign add_ln3951_1_fu_897_p2 = (sub_ln3951_fu_891_p2 + zext_ln4003_1_cast_reg_1030);
assign add_ln3951_2_fu_951_p2 = (sub_ln3951_1_fu_945_p2 + zext_ln4003_cast_reg_1024);
assign add_ln3951_fu_873_p2 = (sub_ln3949_fu_821_p2 + zext_ln3951_fu_870_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_733 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln3945_reg_1063 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_700_p2 = (mul_i + zext_ln3945_fu_696_p1);
assign icmp_ln3945_fu_782_p2 = ((ap_sig_allocacmp_indvar_flatten189_load == 6'd63) ? 1'b1 : 1'b0);
assign or_ln_fu_827_p3 = {{tmp_207}, {lshr_ln_reg_1042}};
assign p_shl19_fu_883_p3 = {{add_ln3951_fu_873_p2}, {2'd0}};
assign p_shl21_fu_847_p3 = {{add_ln3949_fu_837_p2}, {2'd0}};
assign p_shl22_fu_803_p3 = {{tmp_reg_1036}, {7'd0}};
assign select_ln3945_fu_680_p3 = ((ap_phi_mux_icmp_ln3946192_phi_fu_635_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v2968191_load : 6'd0);
assign sub_ln3949_1_fu_855_p2 = (p_shl21_fu_847_p3 - zext_ln3949_2_fu_843_p1);
assign sub_ln3949_2_fu_916_p2 = (tmp_161_fu_906_p3 - zext_ln3949_3_fu_913_p1);
assign sub_ln3949_fu_821_p2 = (p_shl22_fu_803_p3 - zext_ln3949_fu_817_p1);
assign sub_ln3951_1_fu_945_p2 = (tmp_162_fu_935_p3 - zext_ln3951_2_fu_942_p1);
assign sub_ln3951_fu_891_p2 = (p_shl19_fu_883_p3 - zext_ln3951_1_fu_879_p1);
assign tmp_160_fu_810_p3 = {{tmp_reg_1036}, {5'd0}};
assign tmp_161_fu_906_p3 = {{trunc_ln3949_reg_1072}, {2'd0}};
assign tmp_162_fu_935_p3 = {{trunc_ln3951_reg_1082}, {2'd0}};
assign tmp_163_fu_768_p3 = v2968_fu_756_p2[32'd5];
assign tmp_71_fu_972_p3 = {{tmp_s_reg_1048_pp0_iter2_reg}, {lshr_ln_reg_1042_pp0_iter2_reg}};
assign trunc_ln3949_fu_866_p1 = add_ln3949_1_fu_861_p2[14:0];
assign trunc_ln3951_fu_902_p1 = add_ln3951_1_fu_897_p2[14:0];
assign v2967_fu_688_p3 = ((ap_phi_mux_icmp_ln3946192_phi_fu_635_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v2967190_load : add_ln3945_fu_674_p2);
assign v2968_fu_756_p2 = (select_ln3945_fu_680_p3 + 6'd4);
assign v3089_10_address0 = zext_ln3979_fu_978_p1;
assign v3089_10_ce0 = v3089_10_ce0_local;
assign v3089_10_d0 = v9005_1_1_q0;
assign v3089_10_we0 = v3089_10_we0_local;
assign v3089_11_address0 = zext_ln3979_fu_978_p1;
assign v3089_11_ce0 = v3089_11_ce0_local;
assign v3089_11_d0 = v9005_1_0_q0;
assign v3089_11_we0 = v3089_11_we0_local;
assign v3089_12_address0 = zext_ln3979_fu_978_p1;
assign v3089_12_ce0 = v3089_12_ce0_local;
assign v3089_12_d0 = v9005_0_3_q0;
assign v3089_12_we0 = v3089_12_we0_local;
assign v3089_13_address0 = zext_ln3979_fu_978_p1;
assign v3089_13_ce0 = v3089_13_ce0_local;
assign v3089_13_d0 = v9005_0_2_q0;
assign v3089_13_we0 = v3089_13_we0_local;
assign v3089_14_address0 = zext_ln3979_fu_978_p1;
assign v3089_14_ce0 = v3089_14_ce0_local;
assign v3089_14_d0 = v9005_0_1_q0;
assign v3089_14_we0 = v3089_14_we0_local;
assign v3089_15_address0 = zext_ln3979_fu_978_p1;
assign v3089_15_ce0 = v3089_15_ce0_local;
assign v3089_15_d0 = v9005_0_0_q0;
assign v3089_15_we0 = v3089_15_we0_local;
assign v3089_1_address0 = zext_ln3979_fu_978_p1;
assign v3089_1_ce0 = v3089_1_ce0_local;
assign v3089_1_d0 = v9005_3_2_q0;
assign v3089_1_we0 = v3089_1_we0_local;
assign v3089_2_address0 = zext_ln3979_fu_978_p1;
assign v3089_2_ce0 = v3089_2_ce0_local;
assign v3089_2_d0 = v9005_3_1_q0;
assign v3089_2_we0 = v3089_2_we0_local;
assign v3089_3_address0 = zext_ln3979_fu_978_p1;
assign v3089_3_ce0 = v3089_3_ce0_local;
assign v3089_3_d0 = v9005_3_0_q0;
assign v3089_3_we0 = v3089_3_we0_local;
assign v3089_4_address0 = zext_ln3979_fu_978_p1;
assign v3089_4_ce0 = v3089_4_ce0_local;
assign v3089_4_d0 = v9005_2_3_q0;
assign v3089_4_we0 = v3089_4_we0_local;
assign v3089_5_address0 = zext_ln3979_fu_978_p1;
assign v3089_5_ce0 = v3089_5_ce0_local;
assign v3089_5_d0 = v9005_2_2_q0;
assign v3089_5_we0 = v3089_5_we0_local;
assign v3089_6_address0 = zext_ln3979_fu_978_p1;
assign v3089_6_ce0 = v3089_6_ce0_local;
assign v3089_6_d0 = v9005_2_1_q0;
assign v3089_6_we0 = v3089_6_we0_local;
assign v3089_7_address0 = zext_ln3979_fu_978_p1;
assign v3089_7_ce0 = v3089_7_ce0_local;
assign v3089_7_d0 = v9005_2_0_q0;
assign v3089_7_we0 = v3089_7_we0_local;
assign v3089_8_address0 = zext_ln3979_fu_978_p1;
assign v3089_8_ce0 = v3089_8_ce0_local;
assign v3089_8_d0 = v9005_1_3_q0;
assign v3089_8_we0 = v3089_8_we0_local;
assign v3089_9_address0 = zext_ln3979_fu_978_p1;
assign v3089_9_ce0 = v3089_9_ce0_local;
assign v3089_9_d0 = v9005_1_2_q0;
assign v3089_9_we0 = v3089_9_we0_local;
assign v3089_address0 = zext_ln3979_fu_978_p1;
assign v3089_ce0 = v3089_ce0_local;
assign v3089_d0 = v9005_3_3_q0;
assign v3089_we0 = v3089_we0_local;
assign v9005_0_0_address0 = zext_ln3949_4_fu_927_p1;
assign v9005_0_0_ce0 = v9005_0_0_ce0_local;
assign v9005_0_1_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_0_1_ce0 = v9005_0_1_ce0_local;
assign v9005_0_2_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_0_2_ce0 = v9005_0_2_ce0_local;
assign v9005_0_3_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_0_3_ce0 = v9005_0_3_ce0_local;
assign v9005_1_0_address0 = zext_ln3949_4_fu_927_p1;
assign v9005_1_0_ce0 = v9005_1_0_ce0_local;
assign v9005_1_1_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_1_1_ce0 = v9005_1_1_ce0_local;
assign v9005_1_2_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_1_2_ce0 = v9005_1_2_ce0_local;
assign v9005_1_3_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_1_3_ce0 = v9005_1_3_ce0_local;
assign v9005_2_0_address0 = zext_ln3949_4_fu_927_p1;
assign v9005_2_0_ce0 = v9005_2_0_ce0_local;
assign v9005_2_1_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_2_1_ce0 = v9005_2_1_ce0_local;
assign v9005_2_2_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_2_2_ce0 = v9005_2_2_ce0_local;
assign v9005_2_3_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_2_3_ce0 = v9005_2_3_ce0_local;
assign v9005_3_0_address0 = zext_ln3949_4_fu_927_p1;
assign v9005_3_0_ce0 = v9005_3_0_ce0_local;
assign v9005_3_1_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_3_1_ce0 = v9005_3_1_ce0_local;
assign v9005_3_2_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_3_2_ce0 = v9005_3_2_ce0_local;
assign v9005_3_3_address0 = zext_ln3951_3_fu_956_p1;
assign v9005_3_3_ce0 = v9005_3_3_ce0_local;
assign xor_ln3946_fu_776_p2 = (tmp_163_fu_768_p3 ^ 1'd1);
assign zext_ln3945_fu_696_p1 = v2967_fu_688_p3;
assign zext_ln3946_fu_716_p1 = select_ln3945_fu_680_p3;
assign zext_ln3949_1_fu_833_p1 = or_ln_fu_827_p3;
assign zext_ln3949_2_fu_843_p1 = add_ln3949_fu_837_p2;
assign zext_ln3949_3_fu_913_p1 = add_ln3949_1_reg_1067;
assign zext_ln3949_4_fu_927_p1 = add_ln3949_2_fu_922_p2;
assign zext_ln3949_fu_817_p1 = tmp_160_fu_810_p3;
assign zext_ln3951_1_fu_879_p1 = add_ln3951_fu_873_p2;
assign zext_ln3951_2_fu_942_p1 = add_ln3951_1_reg_1077;
assign zext_ln3951_3_fu_956_p1 = add_ln3951_2_fu_951_p2;
assign zext_ln3951_fu_870_p1 = lshr_ln10_reg_1053;
assign zext_ln3979_fu_978_p1 = tmp_71_fu_972_p3;
assign zext_ln4003_1_cast_fu_646_p1 = zext_ln4003_1;
assign zext_ln4003_cast_fu_642_p1 = zext_ln4003;
always @ (posedge ap_clk) begin
    zext_ln4003_cast_reg_1024[16:2] <= 15'b000000000000000;
    zext_ln4003_1_cast_reg_1030[15:2] <= 14'b00000000000000;
end
endmodule 
