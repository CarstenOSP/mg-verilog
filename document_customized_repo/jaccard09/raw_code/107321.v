module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_we1,buff_C_out_d1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_we1,buff_C_out_1_d1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_we1,buff_C_out_2_d1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_we1,buff_C_out_3_d1,buff_C_out_3_q1,beta,grp_fu_332_p_din0,grp_fu_332_p_din1,grp_fu_332_p_opcode,grp_fu_332_p_dout0,grp_fu_332_p_ce,grp_fu_336_p_din0,grp_fu_336_p_din1,grp_fu_336_p_opcode,grp_fu_336_p_dout0,grp_fu_336_p_ce,grp_fu_340_p_din0,grp_fu_340_p_din1,grp_fu_340_p_opcode,grp_fu_340_p_dout0,grp_fu_340_p_ce,grp_fu_344_p_din0,grp_fu_344_p_din1,grp_fu_344_p_opcode,grp_fu_344_p_dout0,grp_fu_344_p_ce,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_dout0,grp_fu_348_p_ce,grp_fu_352_p_din0,grp_fu_352_p_din1,grp_fu_352_p_dout0,grp_fu_352_p_ce,grp_fu_356_p_din0,grp_fu_356_p_din1,grp_fu_356_p_dout0,grp_fu_356_p_ce,grp_fu_360_p_din0,grp_fu_360_p_din1,grp_fu_360_p_dout0,grp_fu_360_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [9:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
output  [9:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [9:0] buff_C_out_address1;
output   buff_C_out_ce1;
output   buff_C_out_we1;
output  [31:0] buff_C_out_d1;
input  [31:0] buff_C_out_q1;
output  [9:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [9:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
output   buff_C_out_1_we1;
output  [31:0] buff_C_out_1_d1;
input  [31:0] buff_C_out_1_q1;
output  [9:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [9:0] buff_C_out_2_address1;
output   buff_C_out_2_ce1;
output   buff_C_out_2_we1;
output  [31:0] buff_C_out_2_d1;
input  [31:0] buff_C_out_2_q1;
output  [9:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [9:0] buff_C_out_3_address1;
output   buff_C_out_3_ce1;
output   buff_C_out_3_we1;
output  [31:0] buff_C_out_3_d1;
input  [31:0] buff_C_out_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_332_p_din0;
output  [31:0] grp_fu_332_p_din1;
output  [1:0] grp_fu_332_p_opcode;
input  [31:0] grp_fu_332_p_dout0;
output   grp_fu_332_p_ce;
output  [31:0] grp_fu_336_p_din0;
output  [31:0] grp_fu_336_p_din1;
output  [1:0] grp_fu_336_p_opcode;
input  [31:0] grp_fu_336_p_dout0;
output   grp_fu_336_p_ce;
output  [31:0] grp_fu_340_p_din0;
output  [31:0] grp_fu_340_p_din1;
output  [1:0] grp_fu_340_p_opcode;
input  [31:0] grp_fu_340_p_dout0;
output   grp_fu_340_p_ce;
output  [31:0] grp_fu_344_p_din0;
output  [31:0] grp_fu_344_p_din1;
output  [1:0] grp_fu_344_p_opcode;
input  [31:0] grp_fu_344_p_dout0;
output   grp_fu_344_p_ce;
output  [31:0] grp_fu_348_p_din0;
output  [31:0] grp_fu_348_p_din1;
input  [31:0] grp_fu_348_p_dout0;
output   grp_fu_348_p_ce;
output  [31:0] grp_fu_352_p_din0;
output  [31:0] grp_fu_352_p_din1;
input  [31:0] grp_fu_352_p_dout0;
output   grp_fu_352_p_ce;
output  [31:0] grp_fu_356_p_din0;
output  [31:0] grp_fu_356_p_din1;
input  [31:0] grp_fu_356_p_dout0;
output   grp_fu_356_p_ce;
output  [31:0] grp_fu_360_p_din0;
output  [31:0] grp_fu_360_p_din1;
input  [31:0] grp_fu_360_p_dout0;
output   grp_fu_360_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln29_fu_332_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln29_reg_495;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln29_reg_495_pp0_iter1_reg;
reg   [0:0] icmp_ln29_reg_495_pp0_iter2_reg;
reg   [0:0] icmp_ln29_reg_495_pp0_iter3_reg;
reg   [0:0] icmp_ln29_reg_495_pp0_iter4_reg;
reg   [0:0] icmp_ln29_reg_495_pp0_iter5_reg;
reg   [0:0] icmp_ln29_reg_495_pp0_iter6_reg;
wire   [6:0] select_ln5_fu_364_p3;
reg   [6:0] select_ln5_reg_499;
reg   [9:0] buff_C_out_addr_reg_524;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter1_reg;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter2_reg;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter3_reg;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter4_reg;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter5_reg;
reg   [9:0] buff_C_out_addr_reg_524_pp0_iter6_reg;
reg   [9:0] buff_C_out_1_addr_reg_529;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter1_reg;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter2_reg;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter3_reg;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter4_reg;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter5_reg;
reg   [9:0] buff_C_out_1_addr_reg_529_pp0_iter6_reg;
reg   [9:0] buff_C_out_2_addr_reg_534;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter1_reg;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter2_reg;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter3_reg;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter4_reg;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter5_reg;
reg   [9:0] buff_C_out_2_addr_reg_534_pp0_iter6_reg;
reg   [9:0] buff_C_out_3_addr_reg_539;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter1_reg;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter2_reg;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter3_reg;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter4_reg;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter5_reg;
reg   [9:0] buff_C_out_3_addr_reg_539_pp0_iter6_reg;
reg   [9:0] buff_C_out_addr_1_reg_564;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter1_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter2_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter3_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter4_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter5_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter6_reg;
reg   [9:0] buff_C_out_addr_1_reg_564_pp0_iter7_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter1_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter2_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter3_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter4_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter5_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter6_reg;
reg   [9:0] buff_C_out_1_addr_1_reg_569_pp0_iter7_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter1_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter2_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter3_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter4_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter5_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter6_reg;
reg   [9:0] buff_C_out_2_addr_1_reg_574_pp0_iter7_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter1_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter2_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter3_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter4_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter5_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter6_reg;
reg   [9:0] buff_C_out_3_addr_1_reg_579_pp0_iter7_reg;
reg   [31:0] buff_B_load_reg_584;
reg   [31:0] buff_B_1_load_reg_589;
reg   [31:0] buff_B_2_load_reg_594;
reg   [31:0] buff_B_3_load_reg_599;
reg   [31:0] buff_B_load_1_reg_604;
reg   [31:0] buff_B_1_load_1_reg_609;
reg   [31:0] buff_B_2_load_1_reg_614;
reg   [31:0] buff_B_3_load_1_reg_619;
reg   [31:0] mul2_reg_624;
reg   [31:0] buff_C_out_load_reg_629;
reg   [31:0] mul74_1_reg_634;
reg   [31:0] mul74_2_reg_639;
reg   [31:0] mul74_3_reg_644;
reg   [31:0] buff_C_out_1_load_reg_649;
reg   [31:0] buff_C_out_2_load_reg_654;
reg   [31:0] buff_C_out_3_load_reg_659;
reg   [31:0] buff_C_out_load_1_reg_664;
reg   [31:0] buff_C_out_1_load_1_reg_669;
reg   [31:0] buff_C_out_2_load_1_reg_674;
reg   [31:0] buff_C_out_3_load_1_reg_679;
reg   [31:0] mul74_4_reg_684;
reg   [31:0] mul74_5_reg_689;
reg   [31:0] mul74_6_reg_694;
reg   [31:0] mul74_7_reg_699;
reg   [31:0] add1_reg_704;
reg   [31:0] add79_1_reg_709;
reg   [31:0] add79_2_reg_714;
reg   [31:0] add79_3_reg_719;
reg   [31:0] add79_4_reg_724;
reg   [31:0] add79_5_reg_729;
reg   [31:0] add79_6_reg_734;
reg   [31:0] add79_7_reg_739;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln32_fu_402_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln32_1_fu_434_p1;
reg   [6:0] j_fu_72;
wire   [6:0] add_ln30_fu_456_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_76;
wire   [6:0] select_ln29_fu_372_p3;
reg   [9:0] indvar_flatten13_fu_80;
wire   [9:0] add_ln29_1_fu_338_p2;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
reg    buff_C_out_ce1_local;
reg   [9:0] buff_C_out_address1_local;
reg    buff_C_out_ce0_local;
reg   [9:0] buff_C_out_address0_local;
reg    buff_C_out_we1_local;
wire    ap_block_pp0_stage0;
reg    buff_C_out_we0_local;
reg    buff_C_out_1_ce1_local;
reg   [9:0] buff_C_out_1_address1_local;
reg    buff_C_out_1_ce0_local;
reg   [9:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_2_ce1_local;
reg   [9:0] buff_C_out_2_address1_local;
reg    buff_C_out_2_ce0_local;
reg   [9:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_3_ce1_local;
reg   [9:0] buff_C_out_3_address1_local;
reg    buff_C_out_3_ce0_local;
reg   [9:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we1_local;
reg    buff_C_out_3_we0_local;
reg   [31:0] grp_fu_282_p0;
reg   [31:0] grp_fu_282_p1;
reg   [31:0] grp_fu_286_p0;
reg   [31:0] grp_fu_286_p1;
reg   [31:0] grp_fu_290_p0;
reg   [31:0] grp_fu_290_p1;
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_310_p0;
wire   [0:0] tmp_fu_356_p3;
wire   [6:0] add_ln29_fu_350_p2;
wire   [5:0] trunc_ln5_fu_380_p1;
wire   [3:0] lshr_ln5_3_fu_384_p4;
wire   [9:0] tmp_s_fu_394_p3;
wire   [2:0] tmp_2_fu_414_p4;
wire   [9:0] tmp_3_fu_424_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage0;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_72 = 7'd0;
#0 i_fu_76 = 7'd0;
#0 indvar_flatten13_fu_80 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_76 <= 7'd0;
    end else if (((icmp_ln29_fu_332_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_76 <= select_ln29_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_80 <= 10'd0;
    end else if (((icmp_ln29_fu_332_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_80 <= add_ln29_1_fu_338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_72 <= add_ln30_fu_456_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_704 <= grp_fu_332_p_dout0;
        add79_1_reg_709 <= grp_fu_336_p_dout0;
        add79_2_reg_714 <= grp_fu_340_p_dout0;
        add79_3_reg_719 <= grp_fu_344_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add79_4_reg_724 <= grp_fu_332_p_dout0;
        add79_5_reg_729 <= grp_fu_336_p_dout0;
        add79_6_reg_734 <= grp_fu_340_p_dout0;
        add79_7_reg_739 <= grp_fu_344_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_load_1_reg_609 <= buff_B_1_q0;
        buff_B_1_load_reg_589 <= buff_B_1_q1;
        buff_B_2_load_1_reg_614 <= buff_B_2_q0;
        buff_B_2_load_reg_594 <= buff_B_2_q1;
        buff_B_3_load_1_reg_619 <= buff_B_3_q0;
        buff_B_3_load_reg_599 <= buff_B_3_q1;
        buff_B_load_1_reg_604 <= buff_B_q0;
        buff_B_load_reg_584 <= buff_B_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_addr_1_reg_569[9 : 1] <= zext_ln32_1_fu_434_p1[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter1_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter2_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter1_reg[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter3_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter2_reg[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter4_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter3_reg[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter5_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter4_reg[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter6_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter5_reg[9 : 1];
        buff_C_out_1_addr_1_reg_569_pp0_iter7_reg[9 : 1] <= buff_C_out_1_addr_1_reg_569_pp0_iter6_reg[9 : 1];
        buff_C_out_1_addr_reg_529 <= zext_ln32_fu_402_p1;
        buff_C_out_1_addr_reg_529_pp0_iter1_reg <= buff_C_out_1_addr_reg_529;
        buff_C_out_1_addr_reg_529_pp0_iter2_reg <= buff_C_out_1_addr_reg_529_pp0_iter1_reg;
        buff_C_out_1_addr_reg_529_pp0_iter3_reg <= buff_C_out_1_addr_reg_529_pp0_iter2_reg;
        buff_C_out_1_addr_reg_529_pp0_iter4_reg <= buff_C_out_1_addr_reg_529_pp0_iter3_reg;
        buff_C_out_1_addr_reg_529_pp0_iter5_reg <= buff_C_out_1_addr_reg_529_pp0_iter4_reg;
        buff_C_out_1_addr_reg_529_pp0_iter6_reg <= buff_C_out_1_addr_reg_529_pp0_iter5_reg;
        buff_C_out_2_addr_1_reg_574[9 : 1] <= zext_ln32_1_fu_434_p1[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter1_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter2_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter1_reg[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter3_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter2_reg[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter4_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter3_reg[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter5_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter4_reg[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter6_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter5_reg[9 : 1];
        buff_C_out_2_addr_1_reg_574_pp0_iter7_reg[9 : 1] <= buff_C_out_2_addr_1_reg_574_pp0_iter6_reg[9 : 1];
        buff_C_out_2_addr_reg_534 <= zext_ln32_fu_402_p1;
        buff_C_out_2_addr_reg_534_pp0_iter1_reg <= buff_C_out_2_addr_reg_534;
        buff_C_out_2_addr_reg_534_pp0_iter2_reg <= buff_C_out_2_addr_reg_534_pp0_iter1_reg;
        buff_C_out_2_addr_reg_534_pp0_iter3_reg <= buff_C_out_2_addr_reg_534_pp0_iter2_reg;
        buff_C_out_2_addr_reg_534_pp0_iter4_reg <= buff_C_out_2_addr_reg_534_pp0_iter3_reg;
        buff_C_out_2_addr_reg_534_pp0_iter5_reg <= buff_C_out_2_addr_reg_534_pp0_iter4_reg;
        buff_C_out_2_addr_reg_534_pp0_iter6_reg <= buff_C_out_2_addr_reg_534_pp0_iter5_reg;
        buff_C_out_3_addr_1_reg_579[9 : 1] <= zext_ln32_1_fu_434_p1[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter1_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter2_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter1_reg[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter3_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter2_reg[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter4_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter3_reg[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter5_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter4_reg[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter6_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter5_reg[9 : 1];
        buff_C_out_3_addr_1_reg_579_pp0_iter7_reg[9 : 1] <= buff_C_out_3_addr_1_reg_579_pp0_iter6_reg[9 : 1];
        buff_C_out_3_addr_reg_539 <= zext_ln32_fu_402_p1;
        buff_C_out_3_addr_reg_539_pp0_iter1_reg <= buff_C_out_3_addr_reg_539;
        buff_C_out_3_addr_reg_539_pp0_iter2_reg <= buff_C_out_3_addr_reg_539_pp0_iter1_reg;
        buff_C_out_3_addr_reg_539_pp0_iter3_reg <= buff_C_out_3_addr_reg_539_pp0_iter2_reg;
        buff_C_out_3_addr_reg_539_pp0_iter4_reg <= buff_C_out_3_addr_reg_539_pp0_iter3_reg;
        buff_C_out_3_addr_reg_539_pp0_iter5_reg <= buff_C_out_3_addr_reg_539_pp0_iter4_reg;
        buff_C_out_3_addr_reg_539_pp0_iter6_reg <= buff_C_out_3_addr_reg_539_pp0_iter5_reg;
        buff_C_out_addr_1_reg_564[9 : 1] <= zext_ln32_1_fu_434_p1[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter1_reg[9 : 1] <= buff_C_out_addr_1_reg_564[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter2_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter1_reg[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter3_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter2_reg[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter4_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter3_reg[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter5_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter4_reg[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter6_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter5_reg[9 : 1];
        buff_C_out_addr_1_reg_564_pp0_iter7_reg[9 : 1] <= buff_C_out_addr_1_reg_564_pp0_iter6_reg[9 : 1];
        buff_C_out_addr_reg_524 <= zext_ln32_fu_402_p1;
        buff_C_out_addr_reg_524_pp0_iter1_reg <= buff_C_out_addr_reg_524;
        buff_C_out_addr_reg_524_pp0_iter2_reg <= buff_C_out_addr_reg_524_pp0_iter1_reg;
        buff_C_out_addr_reg_524_pp0_iter3_reg <= buff_C_out_addr_reg_524_pp0_iter2_reg;
        buff_C_out_addr_reg_524_pp0_iter4_reg <= buff_C_out_addr_reg_524_pp0_iter3_reg;
        buff_C_out_addr_reg_524_pp0_iter5_reg <= buff_C_out_addr_reg_524_pp0_iter4_reg;
        buff_C_out_addr_reg_524_pp0_iter6_reg <= buff_C_out_addr_reg_524_pp0_iter5_reg;
        icmp_ln29_reg_495 <= icmp_ln29_fu_332_p2;
        icmp_ln29_reg_495_pp0_iter1_reg <= icmp_ln29_reg_495;
        icmp_ln29_reg_495_pp0_iter2_reg <= icmp_ln29_reg_495_pp0_iter1_reg;
        icmp_ln29_reg_495_pp0_iter3_reg <= icmp_ln29_reg_495_pp0_iter2_reg;
        icmp_ln29_reg_495_pp0_iter4_reg <= icmp_ln29_reg_495_pp0_iter3_reg;
        icmp_ln29_reg_495_pp0_iter5_reg <= icmp_ln29_reg_495_pp0_iter4_reg;
        icmp_ln29_reg_495_pp0_iter6_reg <= icmp_ln29_reg_495_pp0_iter5_reg;
        select_ln5_reg_499 <= select_ln5_fu_364_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_load_1_reg_669 <= buff_C_out_1_q0;
        buff_C_out_1_load_reg_649 <= buff_C_out_1_q1;
        buff_C_out_2_load_1_reg_674 <= buff_C_out_2_q0;
        buff_C_out_2_load_reg_654 <= buff_C_out_2_q1;
        buff_C_out_3_load_1_reg_679 <= buff_C_out_3_q0;
        buff_C_out_3_load_reg_659 <= buff_C_out_3_q1;
        buff_C_out_load_1_reg_664 <= buff_C_out_q0;
        buff_C_out_load_reg_629 <= buff_C_out_q1;
        mul2_reg_624 <= grp_fu_348_p_dout0;
        mul74_1_reg_634 <= grp_fu_352_p_dout0;
        mul74_2_reg_639 <= grp_fu_356_p_dout0;
        mul74_3_reg_644 <= grp_fu_360_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul74_4_reg_684 <= grp_fu_348_p_dout0;
        mul74_5_reg_689 <= grp_fu_352_p_dout0;
        mul74_6_reg_694 <= grp_fu_356_p_dout0;
        mul74_7_reg_699 <= grp_fu_360_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_332_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_495_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_569_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_1_reg_569_pp0_iter1_reg;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_529_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address1_local = buff_C_out_1_addr_reg_529_pp0_iter1_reg;
    end else begin
        buff_C_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we1_local = 1'b1;
    end else begin
        buff_C_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_1_reg_574_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_1_reg_574_pp0_iter1_reg;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_address1_local = buff_C_out_2_addr_reg_534_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_2_address1_local = buff_C_out_2_addr_reg_534_pp0_iter1_reg;
    end else begin
        buff_C_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_2_ce1_local = 1'b1;
    end else begin
        buff_C_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_we1_local = 1'b1;
    end else begin
        buff_C_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_1_reg_579_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_1_reg_579_pp0_iter1_reg;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_address1_local = buff_C_out_3_addr_reg_539_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_3_address1_local = buff_C_out_3_addr_reg_539_pp0_iter1_reg;
    end else begin
        buff_C_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_3_ce1_local = 1'b1;
    end else begin
        buff_C_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_we1_local = 1'b1;
    end else begin
        buff_C_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_564_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address0_local = buff_C_out_addr_1_reg_564_pp0_iter1_reg;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_524_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address1_local = buff_C_out_addr_reg_524_pp0_iter1_reg;
    end else begin
        buff_C_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we1_local = 1'b1;
    end else begin
        buff_C_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p0 = buff_C_out_load_1_reg_664;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_282_p0 = buff_C_out_load_reg_629;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_282_p1 = mul74_4_reg_684;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_282_p1 = mul2_reg_624;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_286_p0 = buff_C_out_1_load_1_reg_669;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_286_p0 = buff_C_out_1_load_reg_649;
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_286_p1 = mul74_5_reg_689;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_286_p1 = mul74_1_reg_634;
    end else begin
        grp_fu_286_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p0 = buff_C_out_2_load_1_reg_674;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p0 = buff_C_out_2_load_reg_654;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p1 = mul74_6_reg_694;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p1 = mul74_2_reg_639;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p0 = buff_C_out_3_load_1_reg_679;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p0 = buff_C_out_3_load_reg_659;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p1 = mul74_7_reg_699;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p1 = mul74_3_reg_644;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = buff_B_load_1_reg_604;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = buff_B_load_reg_584;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = buff_B_1_load_1_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = buff_B_1_load_reg_589;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_306_p0 = buff_B_2_load_1_reg_614;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p0 = buff_B_2_load_reg_594;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_310_p0 = buff_B_3_load_1_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_310_p0 = buff_B_3_load_reg_599;
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to6 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter7_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_338_p2 = (indvar_flatten13_fu_80 + 10'd1);
assign add_ln29_fu_350_p2 = (i_fu_76 + 7'd1);
assign add_ln30_fu_456_p2 = (select_ln5_reg_499 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign buff_B_1_address0 = zext_ln32_1_fu_434_p1;
assign buff_B_1_address1 = zext_ln32_fu_402_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_2_address0 = zext_ln32_1_fu_434_p1;
assign buff_B_2_address1 = zext_ln32_fu_402_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_3_address0 = zext_ln32_1_fu_434_p1;
assign buff_B_3_address1 = zext_ln32_fu_402_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_address0 = zext_ln32_1_fu_434_p1;
assign buff_B_address1 = zext_ln32_fu_402_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_address1 = buff_C_out_1_address1_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_5_reg_729;
assign buff_C_out_1_d1 = add79_1_reg_709;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_1_we1 = buff_C_out_1_we1_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_address1 = buff_C_out_2_address1_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add79_6_reg_734;
assign buff_C_out_2_d1 = add79_2_reg_714;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_2_we1 = buff_C_out_2_we1_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_address1 = buff_C_out_3_address1_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add79_7_reg_739;
assign buff_C_out_3_d1 = add79_3_reg_719;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_3_we1 = buff_C_out_3_we1_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_address1 = buff_C_out_address1_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add79_4_reg_724;
assign buff_C_out_d1 = add1_reg_704;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign buff_C_out_we1 = buff_C_out_we1_local;
assign grp_fu_332_p_ce = 1'b1;
assign grp_fu_332_p_din0 = grp_fu_282_p0;
assign grp_fu_332_p_din1 = grp_fu_282_p1;
assign grp_fu_332_p_opcode = 2'd0;
assign grp_fu_336_p_ce = 1'b1;
assign grp_fu_336_p_din0 = grp_fu_286_p0;
assign grp_fu_336_p_din1 = grp_fu_286_p1;
assign grp_fu_336_p_opcode = 2'd0;
assign grp_fu_340_p_ce = 1'b1;
assign grp_fu_340_p_din0 = grp_fu_290_p0;
assign grp_fu_340_p_din1 = grp_fu_290_p1;
assign grp_fu_340_p_opcode = 2'd0;
assign grp_fu_344_p_ce = 1'b1;
assign grp_fu_344_p_din0 = grp_fu_294_p0;
assign grp_fu_344_p_din1 = grp_fu_294_p1;
assign grp_fu_344_p_opcode = 2'd0;
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = grp_fu_298_p0;
assign grp_fu_348_p_din1 = beta;
assign grp_fu_352_p_ce = 1'b1;
assign grp_fu_352_p_din0 = grp_fu_302_p0;
assign grp_fu_352_p_din1 = beta;
assign grp_fu_356_p_ce = 1'b1;
assign grp_fu_356_p_din0 = grp_fu_306_p0;
assign grp_fu_356_p_din1 = beta;
assign grp_fu_360_p_ce = 1'b1;
assign grp_fu_360_p_din0 = grp_fu_310_p0;
assign grp_fu_360_p_din1 = beta;
assign icmp_ln29_fu_332_p2 = ((indvar_flatten13_fu_80 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_384_p4 = {{select_ln5_fu_364_p3[5:2]}};
assign select_ln29_fu_372_p3 = ((tmp_fu_356_p3[0:0] == 1'b1) ? add_ln29_fu_350_p2 : i_fu_76);
assign select_ln5_fu_364_p3 = ((tmp_fu_356_p3[0:0] == 1'b1) ? 7'd0 : j_fu_72);
assign tmp_2_fu_414_p4 = {{select_ln5_fu_364_p3[5:3]}};
assign tmp_3_fu_424_p4 = {{{trunc_ln5_fu_380_p1}, {tmp_2_fu_414_p4}}, {1'd1}};
assign tmp_fu_356_p3 = j_fu_72[32'd6];
assign tmp_s_fu_394_p3 = {{trunc_ln5_fu_380_p1}, {lshr_ln5_3_fu_384_p4}};
assign trunc_ln5_fu_380_p1 = select_ln29_fu_372_p3[5:0];
assign zext_ln32_1_fu_434_p1 = tmp_3_fu_424_p4;
assign zext_ln32_fu_402_p1 = tmp_s_fu_394_p3;
always @ (posedge ap_clk) begin
    buff_C_out_addr_1_reg_564[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_addr_1_reg_564_pp0_iter7_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_1_addr_1_reg_569_pp0_iter7_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_2_addr_1_reg_574_pp0_iter7_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter1_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter2_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter3_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter4_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter5_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter6_reg[0] <= 1'b1;
    buff_C_out_3_addr_1_reg_579_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 