module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_2_address0,buff_C_2_ce0,buff_C_2_q0,buff_C_3_address0,buff_C_3_ce0,buff_C_3_q0,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,beta,grp_fu_460_p_din0,grp_fu_460_p_din1,grp_fu_460_p_opcode,grp_fu_460_p_dout0,grp_fu_460_p_ce,grp_fu_464_p_din0,grp_fu_464_p_din1,grp_fu_464_p_opcode,grp_fu_464_p_dout0,grp_fu_464_p_ce,grp_fu_468_p_din0,grp_fu_468_p_din1,grp_fu_468_p_opcode,grp_fu_468_p_dout0,grp_fu_468_p_ce,grp_fu_472_p_din0,grp_fu_472_p_din1,grp_fu_472_p_opcode,grp_fu_472_p_dout0,grp_fu_472_p_ce,grp_fu_716_p_din0,grp_fu_716_p_din1,grp_fu_716_p_dout0,grp_fu_716_p_ce,grp_fu_720_p_din0,grp_fu_720_p_din1,grp_fu_720_p_dout0,grp_fu_720_p_ce); 
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
output  [31:0] grp_fu_460_p_din0;
output  [31:0] grp_fu_460_p_din1;
output  [1:0] grp_fu_460_p_opcode;
input  [31:0] grp_fu_460_p_dout0;
output   grp_fu_460_p_ce;
output  [31:0] grp_fu_464_p_din0;
output  [31:0] grp_fu_464_p_din1;
output  [1:0] grp_fu_464_p_opcode;
input  [31:0] grp_fu_464_p_dout0;
output   grp_fu_464_p_ce;
output  [31:0] grp_fu_468_p_din0;
output  [31:0] grp_fu_468_p_din1;
output  [1:0] grp_fu_468_p_opcode;
input  [31:0] grp_fu_468_p_dout0;
output   grp_fu_468_p_ce;
output  [31:0] grp_fu_472_p_din0;
output  [31:0] grp_fu_472_p_din1;
output  [1:0] grp_fu_472_p_opcode;
input  [31:0] grp_fu_472_p_dout0;
output   grp_fu_472_p_ce;
output  [31:0] grp_fu_716_p_din0;
output  [31:0] grp_fu_716_p_din1;
input  [31:0] grp_fu_716_p_dout0;
output   grp_fu_716_p_ce;
output  [31:0] grp_fu_720_p_din0;
output  [31:0] grp_fu_720_p_din1;
input  [31:0] grp_fu_720_p_dout0;
output   grp_fu_720_p_ce;
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
wire   [0:0] icmp_ln45_fu_346_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln48_fu_425_p1;
reg   [63:0] zext_ln48_reg_538;
reg   [63:0] zext_ln48_reg_538_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_538_pp0_iter3_reg;
wire   [0:0] icmp_ln48_1_fu_437_p2;
reg   [0:0] icmp_ln48_1_reg_590;
reg   [0:0] icmp_ln48_1_reg_590_pp0_iter2_reg;
reg   [0:0] icmp_ln48_1_reg_590_pp0_iter3_reg;
reg   [0:0] icmp_ln48_1_reg_590_pp0_iter4_reg;
wire   [0:0] icmp_ln48_fu_443_p2;
reg   [0:0] icmp_ln48_reg_600;
reg   [0:0] icmp_ln48_reg_600_pp0_iter2_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter3_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter4_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter5_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter6_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter7_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter8_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter9_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter10_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter11_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter12_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter13_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter14_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter15_reg;
reg   [0:0] icmp_ln48_reg_600_pp0_iter16_reg;
wire   [31:0] select_ln48_fu_465_p3;
reg   [31:0] select_ln48_reg_604;
wire   [31:0] select_ln48_1_fu_472_p3;
reg   [31:0] select_ln48_1_reg_609;
wire   [31:0] select_ln48_3_fu_479_p3;
reg   [31:0] select_ln48_3_reg_614;
wire   [31:0] select_ln48_4_fu_486_p3;
reg   [31:0] select_ln48_4_reg_619;
reg   [9:0] buff_D_out_addr_reg_644;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter5_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter6_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter7_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter8_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter9_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter10_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter11_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter12_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter13_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter14_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter15_reg;
reg   [9:0] buff_D_out_addr_reg_644_pp0_iter16_reg;
reg   [9:0] buff_D_out_1_addr_reg_649;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter5_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter6_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter7_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter8_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter9_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter10_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter11_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter12_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter13_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter14_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter15_reg;
reg   [9:0] buff_D_out_1_addr_reg_649_pp0_iter16_reg;
reg   [9:0] buff_D_out_2_addr_reg_654;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter5_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter6_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter7_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter8_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter9_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter10_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter11_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter12_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter13_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter14_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter15_reg;
reg   [9:0] buff_D_out_2_addr_reg_654_pp0_iter16_reg;
reg   [9:0] buff_D_out_3_addr_reg_659;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter5_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter6_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter7_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter8_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter9_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter10_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter11_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter12_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter13_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter14_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter15_reg;
reg   [9:0] buff_D_out_3_addr_reg_659_pp0_iter16_reg;
wire   [31:0] select_ln48_2_fu_493_p3;
reg   [31:0] select_ln48_2_reg_664;
wire   [31:0] select_ln48_5_fu_500_p3;
reg   [31:0] select_ln48_5_reg_669;
reg   [31:0] add2_reg_674;
reg   [31:0] mul4_reg_679;
reg   [31:0] add135_1_reg_684;
reg   [31:0] mul140_1_reg_689;
reg   [31:0] add3_reg_694;
reg   [31:0] add141_1_reg_700;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln46_fu_449_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_86;
wire   [6:0] select_ln45_fu_391_p3;
reg   [11:0] indvar_flatten20_fu_90;
wire   [11:0] add_ln45_1_fu_352_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    tmp1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp2_ce0_local;
reg    tmp2_2_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_3_ce0_local;
reg    buff_C_ce0_local;
reg    buff_C_2_ce0_local;
reg    buff_C_1_ce0_local;
reg    buff_C_3_ce0_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
wire   [0:0] tmp_fu_375_p3;
wire   [6:0] add_ln45_fu_369_p2;
wire   [6:0] select_ln5_fu_383_p3;
wire   [5:0] trunc_ln46_fu_399_p1;
wire   [3:0] lshr_ln5_5_fu_407_p4;
wire   [9:0] tmp_s_fu_417_p3;
wire   [1:0] trunc_ln46_1_fu_403_p1;
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
#0 j_fu_82 = 7'd0;
#0 i_fu_86 = 7'd0;
#0 indvar_flatten20_fu_90 = 12'd0;
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
            i_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_86 <= select_ln45_fu_391_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_346_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_90 <= add_ln45_1_fu_352_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_90 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln46_fu_449_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add135_1_reg_684 <= grp_fu_464_p_dout0;
        add141_1_reg_700 <= grp_fu_472_p_dout0;
        add2_reg_674 <= grp_fu_460_p_dout0;
        add3_reg_694 <= grp_fu_468_p_dout0;
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
        buff_D_out_1_addr_reg_649 <= zext_ln48_reg_538_pp0_iter3_reg;
        buff_D_out_1_addr_reg_649_pp0_iter10_reg <= buff_D_out_1_addr_reg_649_pp0_iter9_reg;
        buff_D_out_1_addr_reg_649_pp0_iter11_reg <= buff_D_out_1_addr_reg_649_pp0_iter10_reg;
        buff_D_out_1_addr_reg_649_pp0_iter12_reg <= buff_D_out_1_addr_reg_649_pp0_iter11_reg;
        buff_D_out_1_addr_reg_649_pp0_iter13_reg <= buff_D_out_1_addr_reg_649_pp0_iter12_reg;
        buff_D_out_1_addr_reg_649_pp0_iter14_reg <= buff_D_out_1_addr_reg_649_pp0_iter13_reg;
        buff_D_out_1_addr_reg_649_pp0_iter15_reg <= buff_D_out_1_addr_reg_649_pp0_iter14_reg;
        buff_D_out_1_addr_reg_649_pp0_iter16_reg <= buff_D_out_1_addr_reg_649_pp0_iter15_reg;
        buff_D_out_1_addr_reg_649_pp0_iter5_reg <= buff_D_out_1_addr_reg_649;
        buff_D_out_1_addr_reg_649_pp0_iter6_reg <= buff_D_out_1_addr_reg_649_pp0_iter5_reg;
        buff_D_out_1_addr_reg_649_pp0_iter7_reg <= buff_D_out_1_addr_reg_649_pp0_iter6_reg;
        buff_D_out_1_addr_reg_649_pp0_iter8_reg <= buff_D_out_1_addr_reg_649_pp0_iter7_reg;
        buff_D_out_1_addr_reg_649_pp0_iter9_reg <= buff_D_out_1_addr_reg_649_pp0_iter8_reg;
        buff_D_out_2_addr_reg_654 <= zext_ln48_reg_538_pp0_iter3_reg;
        buff_D_out_2_addr_reg_654_pp0_iter10_reg <= buff_D_out_2_addr_reg_654_pp0_iter9_reg;
        buff_D_out_2_addr_reg_654_pp0_iter11_reg <= buff_D_out_2_addr_reg_654_pp0_iter10_reg;
        buff_D_out_2_addr_reg_654_pp0_iter12_reg <= buff_D_out_2_addr_reg_654_pp0_iter11_reg;
        buff_D_out_2_addr_reg_654_pp0_iter13_reg <= buff_D_out_2_addr_reg_654_pp0_iter12_reg;
        buff_D_out_2_addr_reg_654_pp0_iter14_reg <= buff_D_out_2_addr_reg_654_pp0_iter13_reg;
        buff_D_out_2_addr_reg_654_pp0_iter15_reg <= buff_D_out_2_addr_reg_654_pp0_iter14_reg;
        buff_D_out_2_addr_reg_654_pp0_iter16_reg <= buff_D_out_2_addr_reg_654_pp0_iter15_reg;
        buff_D_out_2_addr_reg_654_pp0_iter5_reg <= buff_D_out_2_addr_reg_654;
        buff_D_out_2_addr_reg_654_pp0_iter6_reg <= buff_D_out_2_addr_reg_654_pp0_iter5_reg;
        buff_D_out_2_addr_reg_654_pp0_iter7_reg <= buff_D_out_2_addr_reg_654_pp0_iter6_reg;
        buff_D_out_2_addr_reg_654_pp0_iter8_reg <= buff_D_out_2_addr_reg_654_pp0_iter7_reg;
        buff_D_out_2_addr_reg_654_pp0_iter9_reg <= buff_D_out_2_addr_reg_654_pp0_iter8_reg;
        buff_D_out_3_addr_reg_659 <= zext_ln48_reg_538_pp0_iter3_reg;
        buff_D_out_3_addr_reg_659_pp0_iter10_reg <= buff_D_out_3_addr_reg_659_pp0_iter9_reg;
        buff_D_out_3_addr_reg_659_pp0_iter11_reg <= buff_D_out_3_addr_reg_659_pp0_iter10_reg;
        buff_D_out_3_addr_reg_659_pp0_iter12_reg <= buff_D_out_3_addr_reg_659_pp0_iter11_reg;
        buff_D_out_3_addr_reg_659_pp0_iter13_reg <= buff_D_out_3_addr_reg_659_pp0_iter12_reg;
        buff_D_out_3_addr_reg_659_pp0_iter14_reg <= buff_D_out_3_addr_reg_659_pp0_iter13_reg;
        buff_D_out_3_addr_reg_659_pp0_iter15_reg <= buff_D_out_3_addr_reg_659_pp0_iter14_reg;
        buff_D_out_3_addr_reg_659_pp0_iter16_reg <= buff_D_out_3_addr_reg_659_pp0_iter15_reg;
        buff_D_out_3_addr_reg_659_pp0_iter5_reg <= buff_D_out_3_addr_reg_659;
        buff_D_out_3_addr_reg_659_pp0_iter6_reg <= buff_D_out_3_addr_reg_659_pp0_iter5_reg;
        buff_D_out_3_addr_reg_659_pp0_iter7_reg <= buff_D_out_3_addr_reg_659_pp0_iter6_reg;
        buff_D_out_3_addr_reg_659_pp0_iter8_reg <= buff_D_out_3_addr_reg_659_pp0_iter7_reg;
        buff_D_out_3_addr_reg_659_pp0_iter9_reg <= buff_D_out_3_addr_reg_659_pp0_iter8_reg;
        buff_D_out_addr_reg_644 <= zext_ln48_reg_538_pp0_iter3_reg;
        buff_D_out_addr_reg_644_pp0_iter10_reg <= buff_D_out_addr_reg_644_pp0_iter9_reg;
        buff_D_out_addr_reg_644_pp0_iter11_reg <= buff_D_out_addr_reg_644_pp0_iter10_reg;
        buff_D_out_addr_reg_644_pp0_iter12_reg <= buff_D_out_addr_reg_644_pp0_iter11_reg;
        buff_D_out_addr_reg_644_pp0_iter13_reg <= buff_D_out_addr_reg_644_pp0_iter12_reg;
        buff_D_out_addr_reg_644_pp0_iter14_reg <= buff_D_out_addr_reg_644_pp0_iter13_reg;
        buff_D_out_addr_reg_644_pp0_iter15_reg <= buff_D_out_addr_reg_644_pp0_iter14_reg;
        buff_D_out_addr_reg_644_pp0_iter16_reg <= buff_D_out_addr_reg_644_pp0_iter15_reg;
        buff_D_out_addr_reg_644_pp0_iter5_reg <= buff_D_out_addr_reg_644;
        buff_D_out_addr_reg_644_pp0_iter6_reg <= buff_D_out_addr_reg_644_pp0_iter5_reg;
        buff_D_out_addr_reg_644_pp0_iter7_reg <= buff_D_out_addr_reg_644_pp0_iter6_reg;
        buff_D_out_addr_reg_644_pp0_iter8_reg <= buff_D_out_addr_reg_644_pp0_iter7_reg;
        buff_D_out_addr_reg_644_pp0_iter9_reg <= buff_D_out_addr_reg_644_pp0_iter8_reg;
        icmp_ln48_1_reg_590_pp0_iter2_reg <= icmp_ln48_1_reg_590;
        icmp_ln48_1_reg_590_pp0_iter3_reg <= icmp_ln48_1_reg_590_pp0_iter2_reg;
        icmp_ln48_1_reg_590_pp0_iter4_reg <= icmp_ln48_1_reg_590_pp0_iter3_reg;
        icmp_ln48_reg_600_pp0_iter10_reg <= icmp_ln48_reg_600_pp0_iter9_reg;
        icmp_ln48_reg_600_pp0_iter11_reg <= icmp_ln48_reg_600_pp0_iter10_reg;
        icmp_ln48_reg_600_pp0_iter12_reg <= icmp_ln48_reg_600_pp0_iter11_reg;
        icmp_ln48_reg_600_pp0_iter13_reg <= icmp_ln48_reg_600_pp0_iter12_reg;
        icmp_ln48_reg_600_pp0_iter14_reg <= icmp_ln48_reg_600_pp0_iter13_reg;
        icmp_ln48_reg_600_pp0_iter15_reg <= icmp_ln48_reg_600_pp0_iter14_reg;
        icmp_ln48_reg_600_pp0_iter16_reg <= icmp_ln48_reg_600_pp0_iter15_reg;
        icmp_ln48_reg_600_pp0_iter2_reg <= icmp_ln48_reg_600;
        icmp_ln48_reg_600_pp0_iter3_reg <= icmp_ln48_reg_600_pp0_iter2_reg;
        icmp_ln48_reg_600_pp0_iter4_reg <= icmp_ln48_reg_600_pp0_iter3_reg;
        icmp_ln48_reg_600_pp0_iter5_reg <= icmp_ln48_reg_600_pp0_iter4_reg;
        icmp_ln48_reg_600_pp0_iter6_reg <= icmp_ln48_reg_600_pp0_iter5_reg;
        icmp_ln48_reg_600_pp0_iter7_reg <= icmp_ln48_reg_600_pp0_iter6_reg;
        icmp_ln48_reg_600_pp0_iter8_reg <= icmp_ln48_reg_600_pp0_iter7_reg;
        icmp_ln48_reg_600_pp0_iter9_reg <= icmp_ln48_reg_600_pp0_iter8_reg;
        mul140_1_reg_689 <= grp_fu_720_p_dout0;
        mul4_reg_679 <= grp_fu_716_p_dout0;
        select_ln48_1_reg_609 <= select_ln48_1_fu_472_p3;
        select_ln48_2_reg_664 <= select_ln48_2_fu_493_p3;
        select_ln48_3_reg_614 <= select_ln48_3_fu_479_p3;
        select_ln48_4_reg_619 <= select_ln48_4_fu_486_p3;
        select_ln48_5_reg_669 <= select_ln48_5_fu_500_p3;
        select_ln48_reg_604 <= select_ln48_fu_465_p3;
        zext_ln48_reg_538_pp0_iter2_reg[9 : 0] <= zext_ln48_reg_538[9 : 0];
        zext_ln48_reg_538_pp0_iter3_reg[9 : 0] <= zext_ln48_reg_538_pp0_iter2_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln48_1_reg_590 <= icmp_ln48_1_fu_437_p2;
        icmp_ln48_reg_600 <= icmp_ln48_fu_443_p2;
        zext_ln48_reg_538[9 : 0] <= zext_ln48_fu_425_p1[9 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_346_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten20_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_90;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (icmp_ln48_reg_600_pp0_iter16_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (icmp_ln48_reg_600_pp0_iter16_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (icmp_ln48_reg_600_pp0_iter16_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (icmp_ln48_reg_600_pp0_iter16_reg == 1'd1))) begin
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
assign add_ln45_1_fu_352_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 12'd1);
assign add_ln45_fu_369_p2 = (i_fu_86 + 7'd1);
assign add_ln46_fu_449_p2 = (select_ln5_fu_383_p3 + 7'd2);
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
assign buff_C_1_address0 = zext_ln48_reg_538_pp0_iter3_reg;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_2_address0 = zext_ln48_reg_538_pp0_iter3_reg;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_3_address0 = zext_ln48_reg_538_pp0_iter3_reg;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_address0 = zext_ln48_reg_538_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_D_out_1_address0 = buff_D_out_1_addr_reg_649_pp0_iter16_reg;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_d0 = add141_1_reg_700;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_2_address0 = buff_D_out_2_addr_reg_654_pp0_iter16_reg;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_d0 = add3_reg_694;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_3_address0 = buff_D_out_3_addr_reg_659_pp0_iter16_reg;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_d0 = add141_1_reg_700;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_address0 = buff_D_out_addr_reg_644_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_d0 = add3_reg_694;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign grp_fu_460_p_ce = 1'b1;
assign grp_fu_460_p_din0 = select_ln48_reg_604;
assign grp_fu_460_p_din1 = select_ln48_1_reg_609;
assign grp_fu_460_p_opcode = 2'd0;
assign grp_fu_464_p_ce = 1'b1;
assign grp_fu_464_p_din0 = select_ln48_3_reg_614;
assign grp_fu_464_p_din1 = select_ln48_4_reg_619;
assign grp_fu_464_p_opcode = 2'd0;
assign grp_fu_468_p_ce = 1'b1;
assign grp_fu_468_p_din0 = add2_reg_674;
assign grp_fu_468_p_din1 = mul4_reg_679;
assign grp_fu_468_p_opcode = 2'd0;
assign grp_fu_472_p_ce = 1'b1;
assign grp_fu_472_p_din0 = add135_1_reg_684;
assign grp_fu_472_p_din1 = mul140_1_reg_689;
assign grp_fu_472_p_opcode = 2'd0;
assign grp_fu_716_p_ce = 1'b1;
assign grp_fu_716_p_din0 = select_ln48_2_reg_664;
assign grp_fu_716_p_din1 = beta;
assign grp_fu_720_p_ce = 1'b1;
assign grp_fu_720_p_din0 = select_ln48_5_reg_669;
assign grp_fu_720_p_din1 = beta;
assign icmp_ln45_fu_346_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_437_p2 = ((trunc_ln46_1_fu_403_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_443_p2 = ((trunc_ln46_1_fu_403_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_407_p4 = {{select_ln5_fu_383_p3[5:2]}};
assign select_ln45_fu_391_p3 = ((tmp_fu_375_p3[0:0] == 1'b1) ? add_ln45_fu_369_p2 : i_fu_86);
assign select_ln48_1_fu_472_p3 = ((icmp_ln48_1_reg_590[0:0] == 1'b1) ? tmp2_2_q0 : tmp2_q0);
assign select_ln48_2_fu_493_p3 = ((icmp_ln48_1_reg_590_pp0_iter4_reg[0:0] == 1'b1) ? buff_C_2_q0 : buff_C_q0);
assign select_ln48_3_fu_479_p3 = ((icmp_ln48_1_reg_590[0:0] == 1'b1) ? tmp1_3_q0 : tmp1_1_q0);
assign select_ln48_4_fu_486_p3 = ((icmp_ln48_1_reg_590[0:0] == 1'b1) ? tmp2_3_q0 : tmp2_1_q0);
assign select_ln48_5_fu_500_p3 = ((icmp_ln48_1_reg_590_pp0_iter4_reg[0:0] == 1'b1) ? buff_C_3_q0 : buff_C_1_q0);
assign select_ln48_fu_465_p3 = ((icmp_ln48_1_reg_590[0:0] == 1'b1) ? tmp1_2_q0 : tmp1_q0);
assign select_ln5_fu_383_p3 = ((tmp_fu_375_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign tmp1_1_address0 = zext_ln48_fu_425_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln48_fu_425_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln48_fu_425_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln48_fu_425_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_1_address0 = zext_ln48_fu_425_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_2_address0 = zext_ln48_fu_425_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_3_address0 = zext_ln48_fu_425_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_address0 = zext_ln48_fu_425_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp_fu_375_p3 = j_fu_82[32'd6];
assign tmp_s_fu_417_p3 = {{trunc_ln46_fu_399_p1}, {lshr_ln5_5_fu_407_p4}};
assign trunc_ln46_1_fu_403_p1 = select_ln5_fu_383_p3[1:0];
assign trunc_ln46_fu_399_p1 = select_ln45_fu_391_p3[5:0];
assign zext_ln48_fu_425_p1 = tmp_s_fu_417_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_538[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_538_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_538_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 