module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_2_address0,buff_C_2_ce0,buff_C_2_q0,buff_C_3_address0,buff_C_3_ce0,buff_C_3_q0,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,beta,grp_fu_364_p_din0,grp_fu_364_p_din1,grp_fu_364_p_opcode,grp_fu_364_p_dout0,grp_fu_364_p_ce,grp_fu_372_p_din0,grp_fu_372_p_din1,grp_fu_372_p_opcode,grp_fu_372_p_dout0,grp_fu_372_p_ce,grp_fu_376_p_din0,grp_fu_376_p_din1,grp_fu_376_p_opcode,grp_fu_376_p_dout0,grp_fu_376_p_ce,grp_fu_380_p_din0,grp_fu_380_p_din1,grp_fu_380_p_opcode,grp_fu_380_p_dout0,grp_fu_380_p_ce,grp_fu_384_p_din0,grp_fu_384_p_din1,grp_fu_384_p_opcode,grp_fu_384_p_dout0,grp_fu_384_p_ce,grp_fu_388_p_din0,grp_fu_388_p_din1,grp_fu_388_p_opcode,grp_fu_388_p_dout0,grp_fu_388_p_ce,grp_fu_392_p_din0,grp_fu_392_p_din1,grp_fu_392_p_opcode,grp_fu_392_p_dout0,grp_fu_392_p_ce,grp_fu_396_p_din0,grp_fu_396_p_din1,grp_fu_396_p_opcode,grp_fu_396_p_dout0,grp_fu_396_p_ce,grp_fu_368_p_din0,grp_fu_368_p_din1,grp_fu_368_p_dout0,grp_fu_368_p_ce,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_404_p_din0,grp_fu_404_p_din1,grp_fu_404_p_dout0,grp_fu_404_p_ce,grp_fu_408_p_din0,grp_fu_408_p_din1,grp_fu_408_p_dout0,grp_fu_408_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
output  [9:0] buff_C_1_address0;
output   buff_C_1_ce0;
input  [31:0] buff_C_1_q0;
output  [9:0] buff_C_2_address0;
output   buff_C_2_ce0;
input  [31:0] buff_C_2_q0;
output  [9:0] buff_C_3_address0;
output   buff_C_3_ce0;
input  [31:0] buff_C_3_q0;
output  [9:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [9:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [9:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
output   buff_D_out_2_we0;
output  [31:0] buff_D_out_2_d0;
output  [9:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
output   buff_D_out_3_we0;
output  [31:0] buff_D_out_3_d0;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [9:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [9:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [9:0] tmp2_2_address0;
output   tmp2_2_ce0;
input  [31:0] tmp2_2_q0;
output  [9:0] tmp2_3_address0;
output   tmp2_3_ce0;
input  [31:0] tmp2_3_q0;
input  [31:0] beta;
output  [31:0] grp_fu_364_p_din0;
output  [31:0] grp_fu_364_p_din1;
output  [1:0] grp_fu_364_p_opcode;
input  [31:0] grp_fu_364_p_dout0;
output   grp_fu_364_p_ce;
output  [31:0] grp_fu_372_p_din0;
output  [31:0] grp_fu_372_p_din1;
output  [1:0] grp_fu_372_p_opcode;
input  [31:0] grp_fu_372_p_dout0;
output   grp_fu_372_p_ce;
output  [31:0] grp_fu_376_p_din0;
output  [31:0] grp_fu_376_p_din1;
output  [1:0] grp_fu_376_p_opcode;
input  [31:0] grp_fu_376_p_dout0;
output   grp_fu_376_p_ce;
output  [31:0] grp_fu_380_p_din0;
output  [31:0] grp_fu_380_p_din1;
output  [1:0] grp_fu_380_p_opcode;
input  [31:0] grp_fu_380_p_dout0;
output   grp_fu_380_p_ce;
output  [31:0] grp_fu_384_p_din0;
output  [31:0] grp_fu_384_p_din1;
output  [1:0] grp_fu_384_p_opcode;
input  [31:0] grp_fu_384_p_dout0;
output   grp_fu_384_p_ce;
output  [31:0] grp_fu_388_p_din0;
output  [31:0] grp_fu_388_p_din1;
output  [1:0] grp_fu_388_p_opcode;
input  [31:0] grp_fu_388_p_dout0;
output   grp_fu_388_p_ce;
output  [31:0] grp_fu_392_p_din0;
output  [31:0] grp_fu_392_p_din1;
output  [1:0] grp_fu_392_p_opcode;
input  [31:0] grp_fu_392_p_dout0;
output   grp_fu_392_p_ce;
output  [31:0] grp_fu_396_p_din0;
output  [31:0] grp_fu_396_p_din1;
output  [1:0] grp_fu_396_p_opcode;
input  [31:0] grp_fu_396_p_dout0;
output   grp_fu_396_p_ce;
output  [31:0] grp_fu_368_p_din0;
output  [31:0] grp_fu_368_p_din1;
input  [31:0] grp_fu_368_p_dout0;
output   grp_fu_368_p_ce;
output  [31:0] grp_fu_400_p_din0;
output  [31:0] grp_fu_400_p_din1;
input  [31:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [31:0] grp_fu_404_p_din0;
output  [31:0] grp_fu_404_p_din1;
input  [31:0] grp_fu_404_p_dout0;
output   grp_fu_404_p_ce;
output  [31:0] grp_fu_408_p_din0;
output  [31:0] grp_fu_408_p_din1;
input  [31:0] grp_fu_408_p_dout0;
output   grp_fu_408_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln45_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln48_fu_447_p1;
reg   [63:0] zext_ln48_reg_508;
reg   [63:0] zext_ln48_reg_508_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter3_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter4_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter5_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter6_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter7_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter8_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter9_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter10_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter11_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter12_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter13_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter14_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter15_reg;
reg   [63:0] zext_ln48_reg_508_pp0_iter16_reg;
reg   [31:0] mux_case_045_reg_560;
reg   [31:0] mux_case_046_reg_565;
reg   [31:0] tmp1_1_load_reg_570;
reg   [31:0] tmp1_2_load_reg_575;
reg   [31:0] tmp1_3_load_reg_580;
reg   [31:0] tmp2_1_load_reg_585;
reg   [31:0] tmp2_2_load_reg_590;
reg   [31:0] tmp2_3_load_reg_595;
reg   [31:0] buff_C_load_reg_620;
reg   [31:0] buff_C_1_load_reg_625;
reg   [31:0] buff_C_2_load_reg_630;
reg   [31:0] buff_C_3_load_reg_635;
reg   [31:0] add2_reg_640;
reg   [31:0] mul4_reg_645;
reg   [31:0] add135_1_reg_650;
reg   [31:0] add135_2_reg_655;
reg   [31:0] add135_3_reg_660;
reg   [31:0] mul140_1_reg_665;
reg   [31:0] mul140_2_reg_670;
reg   [31:0] mul140_3_reg_675;
reg   [31:0] add3_reg_680;
reg   [31:0] add141_1_reg_685;
reg   [31:0] add141_2_reg_690;
reg   [31:0] add141_3_reg_695;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_80;
wire   [6:0] add_ln46_fu_459_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln45_fu_417_p3;
reg   [10:0] indvar_flatten37_fu_88;
wire   [10:0] add_ln45_1_fu_378_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten37_load;
reg    tmp1_ce0_local;
reg    tmp2_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_ce0_local;
reg    buff_C_ce0_local;
reg    buff_C_1_ce0_local;
reg    buff_C_2_ce0_local;
reg    buff_C_3_ce0_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
wire   [0:0] tmp_fu_401_p3;
wire   [6:0] add_ln45_fu_395_p2;
wire   [6:0] select_ln5_fu_409_p3;
wire   [5:0] trunc_ln25_fu_425_p1;
wire   [3:0] lshr_ln5_4_fu_429_p4;
wire   [9:0] tmp_s_fu_439_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 j_fu_80 = 7'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten37_fu_88 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_84 <= select_ln45_fu_417_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_372_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten37_fu_88 <= add_ln45_1_fu_378_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_88 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_80 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_80 <= add_ln46_fu_459_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add135_1_reg_650 <= grp_fu_372_p_dout0;
        add135_2_reg_655 <= grp_fu_376_p_dout0;
        add135_3_reg_660 <= grp_fu_380_p_dout0;
        add141_1_reg_685 <= grp_fu_388_p_dout0;
        add141_2_reg_690 <= grp_fu_392_p_dout0;
        add141_3_reg_695 <= grp_fu_396_p_dout0;
        add2_reg_640 <= grp_fu_364_p_dout0;
        add3_reg_680 <= grp_fu_384_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_C_1_load_reg_625 <= buff_C_1_q0;
        buff_C_2_load_reg_630 <= buff_C_2_q0;
        buff_C_3_load_reg_635 <= buff_C_3_q0;
        buff_C_load_reg_620 <= buff_C_q0;
        mul140_1_reg_665 <= grp_fu_400_p_dout0;
        mul140_2_reg_670 <= grp_fu_404_p_dout0;
        mul140_3_reg_675 <= grp_fu_408_p_dout0;
        mul4_reg_645 <= grp_fu_368_p_dout0;
        mux_case_045_reg_560 <= tmp1_q0;
        mux_case_046_reg_565 <= tmp2_q0;
        tmp1_1_load_reg_570 <= tmp1_1_q0;
        tmp1_2_load_reg_575 <= tmp1_2_q0;
        tmp1_3_load_reg_580 <= tmp1_3_q0;
        tmp2_1_load_reg_585 <= tmp2_1_q0;
        tmp2_2_load_reg_590 <= tmp2_2_q0;
        tmp2_3_load_reg_595 <= tmp2_3_q0;
        zext_ln48_reg_508_pp0_iter10_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter9_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter11_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter10_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter12_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter11_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter13_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter12_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter14_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter13_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter15_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter14_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter16_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter15_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter2_reg[9 : 0] <= zext_ln48_reg_508[9 : 0];
        zext_ln48_reg_508_pp0_iter3_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter2_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter4_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter3_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter5_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter4_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter6_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter5_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter7_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter6_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter8_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter7_reg[9 : 0];
        zext_ln48_reg_508_pp0_iter9_reg[9 : 0] <= zext_ln48_reg_508_pp0_iter8_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln48_reg_508[9 : 0] <= zext_ln48_fu_447_p1[9 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_372_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten37_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten37_load = indvar_flatten37_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_2_ce0_local = 1'b1;
    end else begin
        buff_C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_3_ce0_local = 1'b1;
    end else begin
        buff_C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_we0_local = 1'b1;
    end else begin
        buff_D_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_we0_local = 1'b1;
    end else begin
        buff_D_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
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
assign add_ln45_1_fu_378_p2 = (ap_sig_allocacmp_indvar_flatten37_load + 11'd1);
assign add_ln45_fu_395_p2 = (i_fu_84 + 7'd1);
assign add_ln46_fu_459_p2 = (select_ln5_fu_409_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_C_1_address0 = zext_ln48_reg_508_pp0_iter3_reg;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_2_address0 = zext_ln48_reg_508_pp0_iter3_reg;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_3_address0 = zext_ln48_reg_508_pp0_iter3_reg;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_address0 = zext_ln48_reg_508_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_D_out_1_address0 = zext_ln48_reg_508_pp0_iter16_reg;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_d0 = add141_1_reg_685;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_2_address0 = zext_ln48_reg_508_pp0_iter16_reg;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_d0 = add141_2_reg_690;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_3_address0 = zext_ln48_reg_508_pp0_iter16_reg;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_d0 = add141_3_reg_695;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_address0 = zext_ln48_reg_508_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_d0 = add3_reg_680;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign grp_fu_364_p_ce = 1'b1;
assign grp_fu_364_p_din0 = mux_case_045_reg_560;
assign grp_fu_364_p_din1 = mux_case_046_reg_565;
assign grp_fu_364_p_opcode = 2'd0;
assign grp_fu_368_p_ce = 1'b1;
assign grp_fu_368_p_din0 = buff_C_load_reg_620;
assign grp_fu_368_p_din1 = beta;
assign grp_fu_372_p_ce = 1'b1;
assign grp_fu_372_p_din0 = tmp1_1_load_reg_570;
assign grp_fu_372_p_din1 = tmp2_1_load_reg_585;
assign grp_fu_372_p_opcode = 2'd0;
assign grp_fu_376_p_ce = 1'b1;
assign grp_fu_376_p_din0 = tmp1_2_load_reg_575;
assign grp_fu_376_p_din1 = tmp2_2_load_reg_590;
assign grp_fu_376_p_opcode = 2'd0;
assign grp_fu_380_p_ce = 1'b1;
assign grp_fu_380_p_din0 = tmp1_3_load_reg_580;
assign grp_fu_380_p_din1 = tmp2_3_load_reg_595;
assign grp_fu_380_p_opcode = 2'd0;
assign grp_fu_384_p_ce = 1'b1;
assign grp_fu_384_p_din0 = add2_reg_640;
assign grp_fu_384_p_din1 = mul4_reg_645;
assign grp_fu_384_p_opcode = 2'd0;
assign grp_fu_388_p_ce = 1'b1;
assign grp_fu_388_p_din0 = add135_1_reg_650;
assign grp_fu_388_p_din1 = mul140_1_reg_665;
assign grp_fu_388_p_opcode = 2'd0;
assign grp_fu_392_p_ce = 1'b1;
assign grp_fu_392_p_din0 = add135_2_reg_655;
assign grp_fu_392_p_din1 = mul140_2_reg_670;
assign grp_fu_392_p_opcode = 2'd0;
assign grp_fu_396_p_ce = 1'b1;
assign grp_fu_396_p_din0 = add135_3_reg_660;
assign grp_fu_396_p_din1 = mul140_3_reg_675;
assign grp_fu_396_p_opcode = 2'd0;
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = buff_C_1_load_reg_625;
assign grp_fu_400_p_din1 = beta;
assign grp_fu_404_p_ce = 1'b1;
assign grp_fu_404_p_din0 = buff_C_2_load_reg_630;
assign grp_fu_404_p_din1 = beta;
assign grp_fu_408_p_ce = 1'b1;
assign grp_fu_408_p_din0 = buff_C_3_load_reg_635;
assign grp_fu_408_p_din1 = beta;
assign icmp_ln45_fu_372_p2 = ((ap_sig_allocacmp_indvar_flatten37_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_429_p4 = {{select_ln5_fu_409_p3[5:2]}};
assign select_ln45_fu_417_p3 = ((tmp_fu_401_p3[0:0] == 1'b1) ? add_ln45_fu_395_p2 : i_fu_84);
assign select_ln5_fu_409_p3 = ((tmp_fu_401_p3[0:0] == 1'b1) ? 7'd0 : j_fu_80);
assign tmp1_1_address0 = zext_ln48_fu_447_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln48_fu_447_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln48_fu_447_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln48_fu_447_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_1_address0 = zext_ln48_fu_447_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_2_address0 = zext_ln48_fu_447_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_3_address0 = zext_ln48_fu_447_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_address0 = zext_ln48_fu_447_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp_fu_401_p3 = j_fu_80[32'd6];
assign tmp_s_fu_439_p3 = {{trunc_ln25_fu_425_p1}, {lshr_ln5_4_fu_429_p4}};
assign trunc_ln25_fu_425_p1 = select_ln45_fu_417_p3[5:0];
assign zext_ln48_fu_447_p1 = tmp_s_fu_439_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_508[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter14_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter15_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_508_pp0_iter16_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 