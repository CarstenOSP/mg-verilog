
module forward_dataflow_in_loop_VITIS_LOOP_6208_1_Loop_VITIS_LOOP_6123_1_proc126_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_54,empty_86,select_ln6214,v4857_address0,v4857_ce0,v4857_we0,v4857_d0,v4857_1_address0,v4857_1_ce0,v4857_1_we0,v4857_1_d0,v4857_2_address0,v4857_2_ce0,v4857_2_we0,v4857_2_d0,v4857_3_address0,v4857_3_ce0,v4857_3_we0,v4857_3_d0,v4857_4_address0,v4857_4_ce0,v4857_4_we0,v4857_4_d0,v4857_5_address0,v4857_5_ce0,v4857_5_we0,v4857_5_d0,v4857_6_address0,v4857_6_ce0,v4857_6_we0,v4857_6_d0,v4857_7_address0,v4857_7_ce0,v4857_7_we0,v4857_7_d0,empty_87,empty,v16203_0_address0,v16203_0_ce0,v16203_0_q0,v16203_1_address0,v16203_1_ce0,v16203_1_q0,v16203_2_address0,v16203_2_ce0,v16203_2_q0,v16203_3_address0,v16203_3_ce0,v16203_3_q0,v16203_4_address0,v16203_4_ce0,v16203_4_q0,v16203_5_address0,v16203_5_ce0,v16203_5_q0,v16203_6_address0,v16203_6_ce0,v16203_6_q0,v16203_7_address0,v16203_7_ce0,v16203_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i;
input  [2:0] tmp_54;
input  [1:0] empty_86;
input  [3:0] select_ln6214;
output  [7:0] v4857_address0;
output   v4857_ce0;
output   v4857_we0;
output  [7:0] v4857_d0;
output  [7:0] v4857_1_address0;
output   v4857_1_ce0;
output   v4857_1_we0;
output  [7:0] v4857_1_d0;
output  [7:0] v4857_2_address0;
output   v4857_2_ce0;
output   v4857_2_we0;
output  [7:0] v4857_2_d0;
output  [7:0] v4857_3_address0;
output   v4857_3_ce0;
output   v4857_3_we0;
output  [7:0] v4857_3_d0;
output  [7:0] v4857_4_address0;
output   v4857_4_ce0;
output   v4857_4_we0;
output  [7:0] v4857_4_d0;
output  [7:0] v4857_5_address0;
output   v4857_5_ce0;
output   v4857_5_we0;
output  [7:0] v4857_5_d0;
output  [7:0] v4857_6_address0;
output   v4857_6_ce0;
output   v4857_6_we0;
output  [7:0] v4857_6_d0;
output  [7:0] v4857_7_address0;
output   v4857_7_ce0;
output   v4857_7_we0;
output  [7:0] v4857_7_d0;
input  [0:0] empty_87;
input  [1:0] empty;
output  [12:0] v16203_0_address0;
output   v16203_0_ce0;
input  [7:0] v16203_0_q0;
output  [12:0] v16203_1_address0;
output   v16203_1_ce0;
input  [7:0] v16203_1_q0;
output  [12:0] v16203_2_address0;
output   v16203_2_ce0;
input  [7:0] v16203_2_q0;
output  [12:0] v16203_3_address0;
output   v16203_3_ce0;
input  [7:0] v16203_3_q0;
output  [12:0] v16203_4_address0;
output   v16203_4_ce0;
input  [7:0] v16203_4_q0;
output  [12:0] v16203_5_address0;
output   v16203_5_ce0;
input  [7:0] v16203_5_q0;
output  [12:0] v16203_6_address0;
output   v16203_6_ce0;
input  [7:0] v16203_6_q0;
output  [12:0] v16203_7_address0;
output   v16203_7_ce0;
input  [7:0] v16203_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6123_fu_706_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v4817_mid2_fu_536_p3;
reg   [2:0] v4817_mid2_reg_968;
reg   [2:0] v4817_mid2_reg_968_pp0_iter1_reg;
wire   [2:0] v4816_fu_544_p3;
reg   [2:0] v4816_reg_973;
wire   [1:0] lshr_ln_fu_556_p4;
reg   [1:0] lshr_ln_reg_978;
wire   [8:0] sub_ln6128_fu_596_p2;
reg   [8:0] sub_ln6128_reg_984;
wire   [8:0] sub_ln6130_fu_632_p2;
reg   [8:0] sub_ln6130_reg_989;
wire   [4:0] empty_199_fu_652_p2;
reg   [4:0] empty_199_reg_994;
wire   [3:0] add_ln6127_fu_662_p2;
reg   [3:0] add_ln6127_reg_999;
wire   [0:0] icmp_ln6125_fu_694_p2;
reg   [0:0] icmp_ln6125_reg_1004;
wire   [0:0] icmp_ln6124_fu_700_p2;
reg   [0:0] icmp_ln6124_reg_1009;
reg   [0:0] icmp_ln6123_reg_1014;
wire   [4:0] add_ln6142_fu_762_p2;
reg   [4:0] add_ln6142_reg_1018;
reg   [0:0] ap_phi_mux_icmp_ln6124102_phi_fu_421_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6125101_phi_fu_431_p4;
wire   [63:0] zext_ln6128_1_fu_869_p1;
wire   [63:0] zext_ln6130_1_fu_880_p1;
wire   [63:0] zext_ln6142_4_fu_916_p1;
reg   [7:0] indvar_flatten1296_fu_146;
wire   [7:0] add_ln6123_1_fu_688_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten1296_load;
reg   [5:0] v481597_fu_150;
wire   [5:0] v4815_fu_516_p3;
reg   [5:0] ap_sig_allocacmp_v481597_load;
reg   [5:0] indvar_flatten98_fu_154;
wire   [5:0] select_ln6124_1_fu_680_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten98_load;
reg   [2:0] v481699_fu_158;
reg   [2:0] ap_sig_allocacmp_v481699_load;
reg   [2:0] v4817100_fu_162;
wire   [2:0] v4817_fu_668_p2;
reg   [2:0] ap_sig_allocacmp_v4817100_load;
reg    v16203_0_ce0_local;
reg    v16203_1_ce0_local;
reg    v16203_2_ce0_local;
reg    v16203_3_ce0_local;
reg    v16203_4_ce0_local;
reg    v16203_5_ce0_local;
reg    v16203_6_ce0_local;
reg    v16203_7_ce0_local;
reg    v4857_7_we0_local;
reg    v4857_7_ce0_local;
reg    v4857_6_we0_local;
reg    v4857_6_ce0_local;
reg    v4857_5_we0_local;
reg    v4857_5_ce0_local;
reg    v4857_4_we0_local;
reg    v4857_4_ce0_local;
reg    v4857_3_we0_local;
reg    v4857_3_ce0_local;
reg    v4857_2_we0_local;
reg    v4857_2_ce0_local;
reg    v4857_1_we0_local;
reg    v4857_1_ce0_local;
reg    v4857_we0_local;
reg    v4857_ce0_local;
wire   [0:0] xor_ln6123_fu_504_p2;
wire   [5:0] add_ln6123_fu_490_p2;
wire   [2:0] select_ln6123_fu_496_p3;
wire   [0:0] and_ln6123_fu_510_p2;
wire   [0:0] empty_197_fu_530_p2;
wire   [2:0] add_ln6124_fu_524_p2;
wire   [7:0] zext_ln6123_fu_552_p1;
wire   [5:0] tmp_94_fu_582_p4;
wire   [8:0] p_shl39_fu_572_p4;
wire   [8:0] zext_ln6128_fu_592_p1;
wire   [7:0] empty_198_fu_566_p2;
wire   [4:0] tmp_95_fu_602_p4;
wire   [5:0] tmp_96_fu_620_p3;
wire   [8:0] p_shl37_fu_612_p3;
wire   [8:0] zext_ln6130_fu_628_p1;
wire   [3:0] p_cast1_fu_446_p1;
wire   [3:0] zext_ln6124_1_fu_638_p1;
wire   [3:0] tmp_fu_642_p2;
wire   [4:0] tmp_cast_fu_648_p1;
wire  signed [4:0] select_ln6214_cast_fu_442_p1;
wire   [3:0] p_cast2_fu_438_p1;
wire   [3:0] zext_ln6125_fu_658_p1;
wire   [5:0] add_ln6124_1_fu_674_p2;
wire   [4:0] p_shl41_fu_740_p3;
wire   [4:0] zext_ln6142_fu_737_p1;
wire   [4:0] sub_ln6142_fu_747_p2;
wire   [4:0] zext_ln6142_1_fu_759_p1;
wire   [9:0] mul_ln6128_cast_fu_753_p1;
wire  signed [9:0] sext_ln6128_fu_768_p1;
wire   [9:0] add_ln6128_fu_771_p2;
wire   [8:0] trunc_ln6128_fu_777_p1;
wire   [10:0] tmp_97_fu_789_p3;
wire   [12:0] p_shl_fu_781_p3;
wire  signed [12:0] sext_ln6130_fu_797_p1;
wire   [9:0] zext_ln6124_fu_756_p1;
wire   [9:0] add_ln6130_fu_807_p2;
wire   [8:0] trunc_ln6130_fu_813_p1;
wire   [10:0] tmp_98_fu_825_p3;
wire   [12:0] p_shl43_fu_817_p3;
wire  signed [12:0] sext_ln6125_fu_833_p1;
wire   [4:0] zext_ln6127_fu_850_p1;
wire   [4:0] select_ln6127_fu_843_p3;
wire   [4:0] add_ln6127_1_fu_853_p2;
wire   [12:0] sub_ln6130_1_fu_801_p2;
wire  signed [12:0] sext_ln6128_1_fu_859_p1;
wire   [12:0] add_ln6128_1_fu_863_p2;
wire   [12:0] sub_ln6125_fu_837_p2;
wire   [12:0] add_ln6130_1_fu_874_p2;
wire   [7:0] p_shl36_fu_894_p3;
wire   [7:0] zext_ln6142_2_fu_891_p1;
wire   [7:0] sub_ln6142_1_fu_901_p2;
wire   [7:0] zext_ln6142_3_fu_907_p1;
wire   [7:0] add_ln6142_1_fu_910_p2;
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
reg    ap_condition_636;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten1296_fu_146 = 8'd0;
#0 v481597_fu_150 = 6'd0;
#0 indvar_flatten98_fu_154 = 6'd0;
#0 v481699_fu_158 = 3'd0;
#0 v4817100_fu_162 = 3'd0;
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
            indvar_flatten1296_fu_146 <= add_ln6123_1_fu_688_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1296_fu_146 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten98_fu_154 <= select_ln6124_1_fu_680_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten98_fu_154 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v481597_fu_150 <= v4815_fu_516_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v481597_fu_150 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v481699_fu_158 <= v4816_fu_544_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v481699_fu_158 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4817100_fu_162 <= v4817_fu_668_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4817100_fu_162 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6127_reg_999 <= add_ln6127_fu_662_p2;
        add_ln6142_reg_1018 <= add_ln6142_fu_762_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_199_reg_994 <= empty_199_fu_652_p2;
        icmp_ln6123_reg_1014 <= icmp_ln6123_fu_706_p2;
        lshr_ln_reg_978 <= {{v4815_fu_516_p3[4:3]}};
        sub_ln6128_reg_984[8 : 1] <= sub_ln6128_fu_596_p2[8 : 1];
        sub_ln6130_reg_989[8 : 1] <= sub_ln6130_fu_632_p2[8 : 1];
        v4816_reg_973 <= v4816_fu_544_p3;
        v4817_mid2_reg_968 <= v4817_mid2_fu_536_p3;
        v4817_mid2_reg_968_pp0_iter1_reg <= v4817_mid2_reg_968;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6124_reg_1009 <= icmp_ln6124_fu_700_p2;
        icmp_ln6125_reg_1004 <= icmp_ln6125_fu_694_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6123_fu_706_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_636)) begin
            ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 = icmp_ln6124_reg_1009;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 = icmp_ln6124_reg_1009;
        end
    end else begin
        ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 = icmp_ln6124_reg_1009;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_636)) begin
            ap_phi_mux_icmp_ln6125101_phi_fu_431_p4 = icmp_ln6125_reg_1004;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6125101_phi_fu_431_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6125101_phi_fu_431_p4 = icmp_ln6125_reg_1004;
        end
    end else begin
        ap_phi_mux_icmp_ln6125101_phi_fu_431_p4 = icmp_ln6125_reg_1004;
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
        ap_sig_allocacmp_indvar_flatten1296_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1296_load = indvar_flatten1296_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten98_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten98_load = indvar_flatten98_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v481597_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v481597_load = v481597_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v481699_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v481699_load = v481699_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4817100_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v4817100_load = v4817100_fu_162;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_0_ce0_local = 1'b1;
    end else begin
        v16203_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_1_ce0_local = 1'b1;
    end else begin
        v16203_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_2_ce0_local = 1'b1;
    end else begin
        v16203_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_3_ce0_local = 1'b1;
    end else begin
        v16203_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_4_ce0_local = 1'b1;
    end else begin
        v16203_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_5_ce0_local = 1'b1;
    end else begin
        v16203_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_6_ce0_local = 1'b1;
    end else begin
        v16203_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16203_7_ce0_local = 1'b1;
    end else begin
        v16203_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_1_ce0_local = 1'b1;
    end else begin
        v4857_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_1_we0_local = 1'b1;
    end else begin
        v4857_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_2_ce0_local = 1'b1;
    end else begin
        v4857_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_2_we0_local = 1'b1;
    end else begin
        v4857_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_3_ce0_local = 1'b1;
    end else begin
        v4857_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_3_we0_local = 1'b1;
    end else begin
        v4857_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_4_ce0_local = 1'b1;
    end else begin
        v4857_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_4_we0_local = 1'b1;
    end else begin
        v4857_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_5_ce0_local = 1'b1;
    end else begin
        v4857_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_5_we0_local = 1'b1;
    end else begin
        v4857_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_6_ce0_local = 1'b1;
    end else begin
        v4857_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_6_we0_local = 1'b1;
    end else begin
        v4857_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_7_ce0_local = 1'b1;
    end else begin
        v4857_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_7_we0_local = 1'b1;
    end else begin
        v4857_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_ce0_local = 1'b1;
    end else begin
        v4857_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4857_we0_local = 1'b1;
    end else begin
        v4857_we0_local = 1'b0;
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
assign add_ln6123_1_fu_688_p2 = (ap_sig_allocacmp_indvar_flatten1296_load + 8'd1);
assign add_ln6123_fu_490_p2 = (ap_sig_allocacmp_v481597_load + 6'd8);
assign add_ln6124_1_fu_674_p2 = (ap_sig_allocacmp_indvar_flatten98_load + 6'd1);
assign add_ln6124_fu_524_p2 = (select_ln6123_fu_496_p3 + 3'd1);
assign add_ln6127_1_fu_853_p2 = (zext_ln6127_fu_850_p1 + select_ln6127_fu_843_p3);
assign add_ln6127_fu_662_p2 = (p_cast2_fu_438_p1 + zext_ln6125_fu_658_p1);
assign add_ln6128_1_fu_863_p2 = ($signed(sub_ln6130_1_fu_801_p2) + $signed(sext_ln6128_1_fu_859_p1));
assign add_ln6128_fu_771_p2 = ($signed(mul_ln6128_cast_fu_753_p1) + $signed(sext_ln6128_fu_768_p1));
assign add_ln6130_1_fu_874_p2 = ($signed(sub_ln6125_fu_837_p2) + $signed(sext_ln6128_1_fu_859_p1));
assign add_ln6130_fu_807_p2 = ($signed(zext_ln6124_fu_756_p1) + $signed(sext_ln6128_fu_768_p1));
assign add_ln6142_1_fu_910_p2 = (sub_ln6142_1_fu_901_p2 + zext_ln6142_3_fu_907_p1);
assign add_ln6142_fu_762_p2 = (sub_ln6142_fu_747_p2 + zext_ln6142_1_fu_759_p1);
assign and_ln6123_fu_510_p2 = (xor_ln6123_fu_504_p2 & ap_phi_mux_icmp_ln6125101_phi_fu_431_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_636 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln6123_reg_1014 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_197_fu_530_p2 = (ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 | and_ln6123_fu_510_p2);
assign empty_198_fu_566_p2 = (mul_i + zext_ln6123_fu_552_p1);
assign empty_199_fu_652_p2 = ($signed(tmp_cast_fu_648_p1) + $signed(select_ln6214_cast_fu_442_p1));
assign icmp_ln6123_fu_706_p2 = ((ap_sig_allocacmp_indvar_flatten1296_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln6124_fu_700_p2 = ((select_ln6124_1_fu_680_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6125_fu_694_p2 = ((v4817_fu_668_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_556_p4 = {{v4815_fu_516_p3[4:3]}};
assign mul_ln6128_cast_fu_753_p1 = sub_ln6128_reg_984;
assign p_cast1_fu_446_p1 = empty_86;
assign p_cast2_fu_438_p1 = empty;
assign p_shl36_fu_894_p3 = {{add_ln6142_reg_1018}, {3'd0}};
assign p_shl37_fu_612_p3 = {{tmp_95_fu_602_p4}, {4'd0}};
assign p_shl39_fu_572_p4 = {{{tmp_54}, {lshr_ln_fu_556_p4}}, {4'd0}};
assign p_shl41_fu_740_p3 = {{lshr_ln_reg_978}, {3'd0}};
assign p_shl43_fu_817_p3 = {{trunc_ln6130_fu_813_p1}, {4'd0}};
assign p_shl_fu_781_p3 = {{trunc_ln6128_fu_777_p1}, {4'd0}};
assign select_ln6123_fu_496_p3 = ((ap_phi_mux_icmp_ln6124102_phi_fu_421_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v481699_load);
assign select_ln6124_1_fu_680_p3 = ((ap_phi_mux_icmp_ln6124102_phi_fu_421_p4[0:0] == 1'b1) ? 6'd1 : add_ln6124_1_fu_674_p2);
assign select_ln6127_fu_843_p3 = ((empty_87[0:0] == 1'b1) ? 5'd6 : 5'd31);
assign select_ln6214_cast_fu_442_p1 = $signed(select_ln6214);
assign sext_ln6125_fu_833_p1 = $signed(tmp_98_fu_825_p3);
assign sext_ln6128_1_fu_859_p1 = $signed(add_ln6127_1_fu_853_p2);
assign sext_ln6128_fu_768_p1 = $signed(empty_199_reg_994);
assign sext_ln6130_fu_797_p1 = $signed(tmp_97_fu_789_p3);
assign sub_ln6125_fu_837_p2 = ($signed(p_shl43_fu_817_p3) - $signed(sext_ln6125_fu_833_p1));
assign sub_ln6128_fu_596_p2 = (p_shl39_fu_572_p4 - zext_ln6128_fu_592_p1);
assign sub_ln6130_1_fu_801_p2 = ($signed(p_shl_fu_781_p3) - $signed(sext_ln6130_fu_797_p1));
assign sub_ln6130_fu_632_p2 = (p_shl37_fu_612_p3 - zext_ln6130_fu_628_p1);
assign sub_ln6142_1_fu_901_p2 = (p_shl36_fu_894_p3 - zext_ln6142_2_fu_891_p1);
assign sub_ln6142_fu_747_p2 = (p_shl41_fu_740_p3 - zext_ln6142_fu_737_p1);
assign tmp_94_fu_582_p4 = {{{tmp_54}, {lshr_ln_fu_556_p4}}, {1'd0}};
assign tmp_95_fu_602_p4 = {{empty_198_fu_566_p2[7:3]}};
assign tmp_96_fu_620_p3 = {{tmp_95_fu_602_p4}, {1'd0}};
assign tmp_97_fu_789_p3 = {{add_ln6128_fu_771_p2}, {1'd0}};
assign tmp_98_fu_825_p3 = {{add_ln6130_fu_807_p2}, {1'd0}};
assign tmp_cast_fu_648_p1 = tmp_fu_642_p2;
assign tmp_fu_642_p2 = (p_cast1_fu_446_p1 + zext_ln6124_1_fu_638_p1);
assign trunc_ln6128_fu_777_p1 = add_ln6128_fu_771_p2[8:0];
assign trunc_ln6130_fu_813_p1 = add_ln6130_fu_807_p2[8:0];
assign v16203_0_address0 = zext_ln6128_1_fu_869_p1;
assign v16203_0_ce0 = v16203_0_ce0_local;
assign v16203_1_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_1_ce0 = v16203_1_ce0_local;
assign v16203_2_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_2_ce0 = v16203_2_ce0_local;
assign v16203_3_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_3_ce0 = v16203_3_ce0_local;
assign v16203_4_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_4_ce0 = v16203_4_ce0_local;
assign v16203_5_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_5_ce0 = v16203_5_ce0_local;
assign v16203_6_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_6_ce0 = v16203_6_ce0_local;
assign v16203_7_address0 = zext_ln6130_1_fu_880_p1;
assign v16203_7_ce0 = v16203_7_ce0_local;
assign v4815_fu_516_p3 = ((ap_phi_mux_icmp_ln6124102_phi_fu_421_p4[0:0] == 1'b1) ? add_ln6123_fu_490_p2 : ap_sig_allocacmp_v481597_load);
assign v4816_fu_544_p3 = ((and_ln6123_fu_510_p2[0:0] == 1'b1) ? add_ln6124_fu_524_p2 : select_ln6123_fu_496_p3);
assign v4817_fu_668_p2 = (v4817_mid2_fu_536_p3 + 3'd1);
assign v4817_mid2_fu_536_p3 = ((empty_197_fu_530_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v4817100_load);
assign v4857_1_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_1_ce0 = v4857_1_ce0_local;
assign v4857_1_d0 = v16203_6_q0;
assign v4857_1_we0 = v4857_1_we0_local;
assign v4857_2_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_2_ce0 = v4857_2_ce0_local;
assign v4857_2_d0 = v16203_5_q0;
assign v4857_2_we0 = v4857_2_we0_local;
assign v4857_3_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_3_ce0 = v4857_3_ce0_local;
assign v4857_3_d0 = v16203_4_q0;
assign v4857_3_we0 = v4857_3_we0_local;
assign v4857_4_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_4_ce0 = v4857_4_ce0_local;
assign v4857_4_d0 = v16203_3_q0;
assign v4857_4_we0 = v4857_4_we0_local;
assign v4857_5_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_5_ce0 = v4857_5_ce0_local;
assign v4857_5_d0 = v16203_2_q0;
assign v4857_5_we0 = v4857_5_we0_local;
assign v4857_6_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_6_ce0 = v4857_6_ce0_local;
assign v4857_6_d0 = v16203_1_q0;
assign v4857_6_we0 = v4857_6_we0_local;
assign v4857_7_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_7_ce0 = v4857_7_ce0_local;
assign v4857_7_d0 = v16203_0_q0;
assign v4857_7_we0 = v4857_7_we0_local;
assign v4857_address0 = zext_ln6142_4_fu_916_p1;
assign v4857_ce0 = v4857_ce0_local;
assign v4857_d0 = v16203_7_q0;
assign v4857_we0 = v4857_we0_local;
assign xor_ln6123_fu_504_p2 = (ap_phi_mux_icmp_ln6124102_phi_fu_421_p4 ^ 1'd1);
assign zext_ln6123_fu_552_p1 = v4815_fu_516_p3;
assign zext_ln6124_1_fu_638_p1 = v4816_fu_544_p3;
assign zext_ln6124_fu_756_p1 = sub_ln6130_reg_989;
assign zext_ln6125_fu_658_p1 = v4817_mid2_fu_536_p3;
assign zext_ln6127_fu_850_p1 = add_ln6127_reg_999;
assign zext_ln6128_1_fu_869_p1 = add_ln6128_1_fu_863_p2;
assign zext_ln6128_fu_592_p1 = tmp_94_fu_582_p4;
assign zext_ln6130_1_fu_880_p1 = add_ln6130_1_fu_874_p2;
assign zext_ln6130_fu_628_p1 = tmp_96_fu_620_p3;
assign zext_ln6142_1_fu_759_p1 = v4816_reg_973;
assign zext_ln6142_2_fu_891_p1 = add_ln6142_reg_1018;
assign zext_ln6142_3_fu_907_p1 = v4817_mid2_reg_968_pp0_iter1_reg;
assign zext_ln6142_4_fu_916_p1 = add_ln6142_1_fu_910_p2;
assign zext_ln6142_fu_737_p1 = lshr_ln_reg_978;
always @ (posedge ap_clk) begin
    sub_ln6128_reg_984[0] <= 1'b0;
    sub_ln6130_reg_989[0] <= 1'b0;
end
endmodule 
