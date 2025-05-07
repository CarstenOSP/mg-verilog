module k2mm_k2mm_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_D_address0,buff_D_ce0,buff_D_q0,buff_D_address1,buff_D_ce1,buff_D_q1,buff_D_1_address0,buff_D_1_ce0,buff_D_1_q0,buff_D_1_address1,buff_D_1_ce1,buff_D_1_q1,buff_E_out_address0,buff_E_out_ce0,buff_E_out_we0,buff_E_out_d0,buff_E_out_address1,buff_E_out_ce1,buff_E_out_we1,buff_E_out_d1,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_we0,buff_E_out_1_d0,buff_E_out_1_address1,buff_E_out_1_ce1,buff_E_out_1_we1,buff_E_out_1_d1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_1_address1,tmp2_1_ce1,tmp2_1_q1,beta,grp_fu_1994_p_din0,grp_fu_1994_p_din1,grp_fu_1994_p_opcode,grp_fu_1994_p_dout0,grp_fu_1994_p_ce,grp_fu_1998_p_din0,grp_fu_1998_p_din1,grp_fu_1998_p_opcode,grp_fu_1998_p_dout0,grp_fu_1998_p_ce,grp_fu_2002_p_din0,grp_fu_2002_p_din1,grp_fu_2002_p_opcode,grp_fu_2002_p_dout0,grp_fu_2002_p_ce,grp_fu_2006_p_din0,grp_fu_2006_p_din1,grp_fu_2006_p_opcode,grp_fu_2006_p_dout0,grp_fu_2006_p_ce,grp_fu_2010_p_din0,grp_fu_2010_p_din1,grp_fu_2010_p_dout0,grp_fu_2010_p_ce,grp_fu_2014_p_din0,grp_fu_2014_p_din1,grp_fu_2014_p_dout0,grp_fu_2014_p_ce,grp_fu_2018_p_din0,grp_fu_2018_p_din1,grp_fu_2018_p_dout0,grp_fu_2018_p_ce,grp_fu_2022_p_din0,grp_fu_2022_p_din1,grp_fu_2022_p_dout0,grp_fu_2022_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] buff_D_address0;
output   buff_D_ce0;
input  [31:0] buff_D_q0;
output  [10:0] buff_D_address1;
output   buff_D_ce1;
input  [31:0] buff_D_q1;
output  [10:0] buff_D_1_address0;
output   buff_D_1_ce0;
input  [31:0] buff_D_1_q0;
output  [10:0] buff_D_1_address1;
output   buff_D_1_ce1;
input  [31:0] buff_D_1_q1;
output  [10:0] buff_E_out_address0;
output   buff_E_out_ce0;
output   buff_E_out_we0;
output  [31:0] buff_E_out_d0;
output  [10:0] buff_E_out_address1;
output   buff_E_out_ce1;
output   buff_E_out_we1;
output  [31:0] buff_E_out_d1;
output  [10:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
output   buff_E_out_1_we0;
output  [31:0] buff_E_out_1_d0;
output  [10:0] buff_E_out_1_address1;
output   buff_E_out_1_ce1;
output   buff_E_out_1_we1;
output  [31:0] buff_E_out_1_d1;
output  [10:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [10:0] tmp2_address1;
output   tmp2_ce1;
input  [31:0] tmp2_q1;
output  [10:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [10:0] tmp2_1_address1;
output   tmp2_1_ce1;
input  [31:0] tmp2_1_q1;
input  [31:0] beta;
output  [31:0] grp_fu_1994_p_din0;
output  [31:0] grp_fu_1994_p_din1;
output  [1:0] grp_fu_1994_p_opcode;
input  [31:0] grp_fu_1994_p_dout0;
output   grp_fu_1994_p_ce;
output  [31:0] grp_fu_1998_p_din0;
output  [31:0] grp_fu_1998_p_din1;
output  [1:0] grp_fu_1998_p_opcode;
input  [31:0] grp_fu_1998_p_dout0;
output   grp_fu_1998_p_ce;
output  [31:0] grp_fu_2002_p_din0;
output  [31:0] grp_fu_2002_p_din1;
output  [1:0] grp_fu_2002_p_opcode;
input  [31:0] grp_fu_2002_p_dout0;
output   grp_fu_2002_p_ce;
output  [31:0] grp_fu_2006_p_din0;
output  [31:0] grp_fu_2006_p_din1;
output  [1:0] grp_fu_2006_p_opcode;
input  [31:0] grp_fu_2006_p_dout0;
output   grp_fu_2006_p_ce;
output  [31:0] grp_fu_2010_p_din0;
output  [31:0] grp_fu_2010_p_din1;
input  [31:0] grp_fu_2010_p_dout0;
output   grp_fu_2010_p_ce;
output  [31:0] grp_fu_2014_p_din0;
output  [31:0] grp_fu_2014_p_din1;
input  [31:0] grp_fu_2014_p_dout0;
output   grp_fu_2014_p_ce;
output  [31:0] grp_fu_2018_p_din0;
output  [31:0] grp_fu_2018_p_din1;
input  [31:0] grp_fu_2018_p_dout0;
output   grp_fu_2018_p_ce;
output  [31:0] grp_fu_2022_p_din0;
output  [31:0] grp_fu_2022_p_din1;
input  [31:0] grp_fu_2022_p_dout0;
output   grp_fu_2022_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln43_fu_410_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_372;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_377;
reg   [31:0] reg_382;
reg   [31:0] reg_387;
wire   [6:0] select_ln6_fu_442_p3;
reg   [6:0] select_ln6_reg_620;
wire   [5:0] trunc_ln27_fu_458_p1;
reg   [5:0] trunc_ln27_reg_625;
wire   [63:0] zext_ln45_fu_480_p1;
reg   [63:0] zext_ln45_reg_631;
reg   [63:0] zext_ln45_reg_631_pp0_iter1_reg;
reg   [63:0] zext_ln45_reg_631_pp0_iter2_reg;
reg   [63:0] zext_ln45_reg_631_pp0_iter3_reg;
reg   [63:0] zext_ln45_reg_631_pp0_iter4_reg;
reg   [63:0] zext_ln45_reg_631_pp0_iter5_reg;
reg   [63:0] zext_ln45_reg_631_pp0_iter6_reg;
wire   [63:0] zext_ln45_1_fu_508_p1;
reg   [63:0] zext_ln45_1_reg_657;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter1_reg;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter2_reg;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter3_reg;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter4_reg;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter5_reg;
reg   [63:0] zext_ln45_1_reg_657_pp0_iter6_reg;
reg   [2:0] tmp_3_reg_683;
reg   [0:0] tmp_4_reg_689;
reg   [31:0] mux_case_0275_reg_694;
reg   [31:0] mux_case_0275_reg_694_pp0_iter2_reg;
reg   [31:0] mux_case_0275_reg_694_pp0_iter3_reg;
reg   [31:0] buff_D_load_reg_699;
wire   [63:0] zext_ln45_2_fu_553_p1;
reg   [63:0] zext_ln45_2_reg_704;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter2_reg;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter3_reg;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter4_reg;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter5_reg;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter6_reg;
reg   [63:0] zext_ln45_2_reg_704_pp0_iter7_reg;
wire   [63:0] zext_ln45_3_fu_569_p1;
reg   [63:0] zext_ln45_3_reg_730;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter2_reg;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter3_reg;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter4_reg;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter5_reg;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter6_reg;
reg   [63:0] zext_ln45_3_reg_730_pp0_iter7_reg;
reg   [31:0] tmp2_1_load_reg_756;
reg   [31:0] tmp2_1_load_reg_756_pp0_iter2_reg;
reg   [31:0] tmp2_1_load_reg_756_pp0_iter3_reg;
reg   [31:0] mux_case_0278_reg_761;
reg   [31:0] mux_case_0278_reg_761_pp0_iter2_reg;
reg   [31:0] mux_case_0278_reg_761_pp0_iter3_reg;
reg   [31:0] tmp2_1_load_1_reg_766;
reg   [31:0] tmp2_1_load_1_reg_766_pp0_iter2_reg;
reg   [31:0] tmp2_1_load_1_reg_766_pp0_iter3_reg;
reg   [31:0] buff_D_1_load_reg_771;
reg   [31:0] buff_D_load_1_reg_776;
reg   [31:0] buff_D_1_load_1_reg_781;
reg   [31:0] mux_case_0280_reg_786;
reg   [31:0] mux_case_0280_reg_786_pp0_iter2_reg;
reg   [31:0] mux_case_0280_reg_786_pp0_iter3_reg;
reg   [31:0] tmp2_1_load_2_reg_791;
reg   [31:0] tmp2_1_load_2_reg_791_pp0_iter2_reg;
reg   [31:0] tmp2_1_load_2_reg_791_pp0_iter3_reg;
reg   [31:0] mux_case_0282_reg_796;
reg   [31:0] mux_case_0282_reg_796_pp0_iter2_reg;
reg   [31:0] mux_case_0282_reg_796_pp0_iter3_reg;
reg   [31:0] tmp2_1_load_3_reg_801;
reg   [31:0] tmp2_1_load_3_reg_801_pp0_iter2_reg;
reg   [31:0] tmp2_1_load_3_reg_801_pp0_iter3_reg;
reg   [31:0] buff_D_load_2_reg_806;
reg   [31:0] buff_D_1_load_2_reg_811;
reg   [31:0] buff_D_load_3_reg_816;
reg   [31:0] buff_D_1_load_3_reg_821;
reg   [31:0] mul3_reg_826;
reg   [31:0] mul126_1_reg_831;
reg   [31:0] mul126_2_reg_836;
reg   [31:0] mul126_3_reg_841;
reg   [31:0] mul126_4_reg_846;
reg   [31:0] mul126_5_reg_851;
reg   [31:0] mul126_6_reg_856;
reg   [31:0] mul126_7_reg_861;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_76;
wire   [6:0] add_ln44_fu_577_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_80;
wire   [6:0] select_ln43_fu_450_p3;
reg   [9:0] indvar_flatten20_fu_84;
wire   [9:0] add_ln43_1_fu_416_p2;
reg    tmp2_ce1_local;
reg   [10:0] tmp2_address1_local;
reg    tmp2_ce0_local;
reg   [10:0] tmp2_address0_local;
reg    buff_D_ce1_local;
reg   [10:0] buff_D_address1_local;
reg    buff_D_ce0_local;
reg   [10:0] buff_D_address0_local;
reg    tmp2_1_ce1_local;
reg   [10:0] tmp2_1_address1_local;
reg    tmp2_1_ce0_local;
reg   [10:0] tmp2_1_address0_local;
reg    buff_D_1_ce1_local;
reg   [10:0] buff_D_1_address1_local;
reg    buff_D_1_ce0_local;
reg   [10:0] buff_D_1_address0_local;
reg    buff_E_out_we1_local;
reg    buff_E_out_ce1_local;
reg   [10:0] buff_E_out_address1_local;
reg    buff_E_out_we0_local;
reg    buff_E_out_ce0_local;
reg   [10:0] buff_E_out_address0_local;
reg    buff_E_out_1_we1_local;
reg    buff_E_out_1_ce1_local;
reg   [10:0] buff_E_out_1_address1_local;
reg    buff_E_out_1_we0_local;
reg    buff_E_out_1_ce0_local;
reg   [10:0] buff_E_out_1_address0_local;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_344_p1;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_348_p1;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_352_p1;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_368_p0;
wire   [0:0] tmp_fu_434_p3;
wire   [6:0] add_ln43_fu_428_p2;
wire   [4:0] lshr_ln6_3_fu_462_p4;
wire   [10:0] tmp_s_fu_472_p3;
wire   [3:0] tmp_1_fu_488_p4;
wire   [10:0] tmp_2_fu_498_p4;
wire   [10:0] tmp_5_fu_544_p5;
wire   [10:0] tmp_6_fu_561_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_76 = 7'd0;
#0 i_fu_80 = 7'd0;
#0 indvar_flatten20_fu_84 = 10'd0;
#0 ap_done_reg = 1'b0;
end
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 7'd0;
    end else if (((icmp_ln43_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_80 <= select_ln43_fu_450_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten20_fu_84 <= 10'd0;
    end else if (((icmp_ln43_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten20_fu_84 <= add_ln43_1_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_76 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_76 <= add_ln44_fu_577_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        mux_case_0280_reg_786_pp0_iter2_reg <= mux_case_0280_reg_786;
        mux_case_0280_reg_786_pp0_iter3_reg <= mux_case_0280_reg_786_pp0_iter2_reg;
        mux_case_0282_reg_796_pp0_iter2_reg <= mux_case_0282_reg_796;
        mux_case_0282_reg_796_pp0_iter3_reg <= mux_case_0282_reg_796_pp0_iter2_reg;
        select_ln6_reg_620 <= select_ln6_fu_442_p3;
        tmp2_1_load_2_reg_791_pp0_iter2_reg <= tmp2_1_load_2_reg_791;
        tmp2_1_load_2_reg_791_pp0_iter3_reg <= tmp2_1_load_2_reg_791_pp0_iter2_reg;
        tmp2_1_load_3_reg_801_pp0_iter2_reg <= tmp2_1_load_3_reg_801;
        tmp2_1_load_3_reg_801_pp0_iter3_reg <= tmp2_1_load_3_reg_801_pp0_iter2_reg;
        tmp_3_reg_683 <= {{select_ln6_fu_442_p3[5:3]}};
        tmp_4_reg_689 <= select_ln6_fu_442_p3[32'd1];
        trunc_ln27_reg_625 <= trunc_ln27_fu_458_p1;
        zext_ln45_1_reg_657[10 : 1] <= zext_ln45_1_fu_508_p1[10 : 1];
        zext_ln45_1_reg_657_pp0_iter1_reg[10 : 1] <= zext_ln45_1_reg_657[10 : 1];
        zext_ln45_1_reg_657_pp0_iter2_reg[10 : 1] <= zext_ln45_1_reg_657_pp0_iter1_reg[10 : 1];
        zext_ln45_1_reg_657_pp0_iter3_reg[10 : 1] <= zext_ln45_1_reg_657_pp0_iter2_reg[10 : 1];
        zext_ln45_1_reg_657_pp0_iter4_reg[10 : 1] <= zext_ln45_1_reg_657_pp0_iter3_reg[10 : 1];
        zext_ln45_1_reg_657_pp0_iter5_reg[10 : 1] <= zext_ln45_1_reg_657_pp0_iter4_reg[10 : 1];
        zext_ln45_1_reg_657_pp0_iter6_reg[10 : 1] <= zext_ln45_1_reg_657_pp0_iter5_reg[10 : 1];
        zext_ln45_reg_631[10 : 0] <= zext_ln45_fu_480_p1[10 : 0];
        zext_ln45_reg_631_pp0_iter1_reg[10 : 0] <= zext_ln45_reg_631[10 : 0];
        zext_ln45_reg_631_pp0_iter2_reg[10 : 0] <= zext_ln45_reg_631_pp0_iter1_reg[10 : 0];
        zext_ln45_reg_631_pp0_iter3_reg[10 : 0] <= zext_ln45_reg_631_pp0_iter2_reg[10 : 0];
        zext_ln45_reg_631_pp0_iter4_reg[10 : 0] <= zext_ln45_reg_631_pp0_iter3_reg[10 : 0];
        zext_ln45_reg_631_pp0_iter5_reg[10 : 0] <= zext_ln45_reg_631_pp0_iter4_reg[10 : 0];
        zext_ln45_reg_631_pp0_iter6_reg[10 : 0] <= zext_ln45_reg_631_pp0_iter5_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_load_1_reg_781 <= buff_D_1_q0;
        buff_D_1_load_reg_771 <= buff_D_1_q1;
        buff_D_load_1_reg_776 <= buff_D_q0;
        buff_D_load_reg_699 <= buff_D_q1;
        mux_case_0275_reg_694 <= tmp2_q1;
        mux_case_0278_reg_761 <= tmp2_q0;
        tmp2_1_load_1_reg_766 <= tmp2_1_q0;
        tmp2_1_load_reg_756 <= tmp2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_1_load_2_reg_811 <= buff_D_1_q1;
        buff_D_1_load_3_reg_821 <= buff_D_1_q0;
        buff_D_load_2_reg_806 <= buff_D_q1;
        buff_D_load_3_reg_816 <= buff_D_q0;
        mux_case_0280_reg_786 <= tmp2_q1;
        mux_case_0282_reg_796 <= tmp2_q0;
        tmp2_1_load_2_reg_791 <= tmp2_1_q1;
        tmp2_1_load_3_reg_801 <= tmp2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul126_1_reg_831 <= grp_fu_2014_p_dout0;
        mul126_2_reg_836 <= grp_fu_2018_p_dout0;
        mul126_3_reg_841 <= grp_fu_2022_p_dout0;
        mul3_reg_826 <= grp_fu_2010_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul126_4_reg_846 <= grp_fu_2010_p_dout0;
        mul126_5_reg_851 <= grp_fu_2014_p_dout0;
        mul126_6_reg_856 <= grp_fu_2018_p_dout0;
        mul126_7_reg_861 <= grp_fu_2022_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mux_case_0275_reg_694_pp0_iter2_reg <= mux_case_0275_reg_694;
        mux_case_0275_reg_694_pp0_iter3_reg <= mux_case_0275_reg_694_pp0_iter2_reg;
        mux_case_0278_reg_761_pp0_iter2_reg <= mux_case_0278_reg_761;
        mux_case_0278_reg_761_pp0_iter3_reg <= mux_case_0278_reg_761_pp0_iter2_reg;
        tmp2_1_load_1_reg_766_pp0_iter2_reg <= tmp2_1_load_1_reg_766;
        tmp2_1_load_1_reg_766_pp0_iter3_reg <= tmp2_1_load_1_reg_766_pp0_iter2_reg;
        tmp2_1_load_reg_756_pp0_iter2_reg <= tmp2_1_load_reg_756;
        tmp2_1_load_reg_756_pp0_iter3_reg <= tmp2_1_load_reg_756_pp0_iter2_reg;
        zext_ln45_2_reg_704[0] <= zext_ln45_2_fu_553_p1[0];
zext_ln45_2_reg_704[10 : 2] <= zext_ln45_2_fu_553_p1[10 : 2];
        zext_ln45_2_reg_704_pp0_iter2_reg[0] <= zext_ln45_2_reg_704[0];
zext_ln45_2_reg_704_pp0_iter2_reg[10 : 2] <= zext_ln45_2_reg_704[10 : 2];
        zext_ln45_2_reg_704_pp0_iter3_reg[0] <= zext_ln45_2_reg_704_pp0_iter2_reg[0];
zext_ln45_2_reg_704_pp0_iter3_reg[10 : 2] <= zext_ln45_2_reg_704_pp0_iter2_reg[10 : 2];
        zext_ln45_2_reg_704_pp0_iter4_reg[0] <= zext_ln45_2_reg_704_pp0_iter3_reg[0];
zext_ln45_2_reg_704_pp0_iter4_reg[10 : 2] <= zext_ln45_2_reg_704_pp0_iter3_reg[10 : 2];
        zext_ln45_2_reg_704_pp0_iter5_reg[0] <= zext_ln45_2_reg_704_pp0_iter4_reg[0];
zext_ln45_2_reg_704_pp0_iter5_reg[10 : 2] <= zext_ln45_2_reg_704_pp0_iter4_reg[10 : 2];
        zext_ln45_2_reg_704_pp0_iter6_reg[0] <= zext_ln45_2_reg_704_pp0_iter5_reg[0];
zext_ln45_2_reg_704_pp0_iter6_reg[10 : 2] <= zext_ln45_2_reg_704_pp0_iter5_reg[10 : 2];
        zext_ln45_2_reg_704_pp0_iter7_reg[0] <= zext_ln45_2_reg_704_pp0_iter6_reg[0];
zext_ln45_2_reg_704_pp0_iter7_reg[10 : 2] <= zext_ln45_2_reg_704_pp0_iter6_reg[10 : 2];
        zext_ln45_3_reg_730[10 : 2] <= zext_ln45_3_fu_569_p1[10 : 2];
        zext_ln45_3_reg_730_pp0_iter2_reg[10 : 2] <= zext_ln45_3_reg_730[10 : 2];
        zext_ln45_3_reg_730_pp0_iter3_reg[10 : 2] <= zext_ln45_3_reg_730_pp0_iter2_reg[10 : 2];
        zext_ln45_3_reg_730_pp0_iter4_reg[10 : 2] <= zext_ln45_3_reg_730_pp0_iter3_reg[10 : 2];
        zext_ln45_3_reg_730_pp0_iter5_reg[10 : 2] <= zext_ln45_3_reg_730_pp0_iter4_reg[10 : 2];
        zext_ln45_3_reg_730_pp0_iter6_reg[10 : 2] <= zext_ln45_3_reg_730_pp0_iter5_reg[10 : 2];
        zext_ln45_3_reg_730_pp0_iter7_reg[10 : 2] <= zext_ln45_3_reg_730_pp0_iter6_reg[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_372 <= grp_fu_1994_p_dout0;
        reg_377 <= grp_fu_1998_p_dout0;
        reg_382 <= grp_fu_2002_p_dout0;
        reg_387 <= grp_fu_2006_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln43_fu_410_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_address0_local = zext_ln45_3_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_1_address0_local = zext_ln45_1_fu_508_p1;
    end else begin
        buff_D_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_address1_local = zext_ln45_2_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_1_address1_local = zext_ln45_fu_480_p1;
    end else begin
        buff_D_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_D_1_ce0_local = 1'b1;
    end else begin
        buff_D_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_D_1_ce1_local = 1'b1;
    end else begin
        buff_D_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_address0_local = zext_ln45_3_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_address0_local = zext_ln45_1_fu_508_p1;
    end else begin
        buff_D_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_address1_local = zext_ln45_2_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_D_address1_local = zext_ln45_fu_480_p1;
    end else begin
        buff_D_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_D_ce0_local = 1'b1;
    end else begin
        buff_D_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_D_ce1_local = 1'b1;
    end else begin
        buff_D_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_E_out_1_address0_local = zext_ln45_3_reg_730_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buff_E_out_1_address0_local = zext_ln45_1_reg_657_pp0_iter6_reg;
        end else begin
            buff_E_out_1_address0_local = 'bx;
        end
    end else begin
        buff_E_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_E_out_1_address1_local = zext_ln45_2_reg_704_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buff_E_out_1_address1_local = zext_ln45_reg_631_pp0_iter6_reg;
        end else begin
            buff_E_out_1_address1_local = 'bx;
        end
    end else begin
        buff_E_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_1_ce1_local = 1'b1;
    end else begin
        buff_E_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_1_we0_local = 1'b1;
    end else begin
        buff_E_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_1_we1_local = 1'b1;
    end else begin
        buff_E_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_E_out_address0_local = zext_ln45_3_reg_730_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buff_E_out_address0_local = zext_ln45_1_reg_657_pp0_iter6_reg;
        end else begin
            buff_E_out_address0_local = 'bx;
        end
    end else begin
        buff_E_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            buff_E_out_address1_local = zext_ln45_2_reg_704_pp0_iter7_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            buff_E_out_address1_local = zext_ln45_reg_631_pp0_iter6_reg;
        end else begin
            buff_E_out_address1_local = 'bx;
        end
    end else begin
        buff_E_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_ce1_local = 1'b1;
    end else begin
        buff_E_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_we0_local = 1'b1;
    end else begin
        buff_E_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_E_out_we1_local = 1'b1;
    end else begin
        buff_E_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p0 = mux_case_0280_reg_786_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p0 = mux_case_0275_reg_694_pp0_iter3_reg;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p1 = mul126_4_reg_846;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p1 = mul3_reg_826;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p0 = tmp2_1_load_2_reg_791_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p0 = tmp2_1_load_reg_756_pp0_iter3_reg;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p1 = mul126_5_reg_851;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p1 = mul126_1_reg_831;
    end else begin
        grp_fu_344_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p0 = mux_case_0282_reg_796_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p0 = mux_case_0278_reg_761_pp0_iter3_reg;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p1 = mul126_6_reg_856;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p1 = mul126_2_reg_836;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p0 = tmp2_1_load_3_reg_801_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p0 = tmp2_1_load_1_reg_766_pp0_iter3_reg;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p1 = mul126_7_reg_861;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p1 = mul126_3_reg_841;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p0 = buff_D_load_2_reg_806;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = buff_D_load_reg_699;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = buff_D_1_load_2_reg_811;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_360_p0 = buff_D_1_load_reg_771;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = buff_D_load_3_reg_816;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = buff_D_load_1_reg_776;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = buff_D_1_load_3_reg_821;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = buff_D_1_load_1_reg_781;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_address0_local = zext_ln45_3_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_1_address0_local = zext_ln45_1_fu_508_p1;
    end else begin
        tmp2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_address1_local = zext_ln45_2_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_1_address1_local = zext_ln45_fu_480_p1;
    end else begin
        tmp2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_1_ce1_local = 1'b1;
    end else begin
        tmp2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_address0_local = zext_ln45_3_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address0_local = zext_ln45_1_fu_508_p1;
    end else begin
        tmp2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_address1_local = zext_ln45_2_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp2_address1_local = zext_ln45_fu_480_p1;
    end else begin
        tmp2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp2_ce1_local = 1'b1;
    end else begin
        tmp2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln43_1_fu_416_p2 = (indvar_flatten20_fu_84 + 10'd1);
assign add_ln43_fu_428_p2 = (i_fu_80 + 7'd1);
assign add_ln44_fu_577_p2 = (select_ln6_reg_620 + 7'd8);
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
assign buff_D_1_address0 = buff_D_1_address0_local;
assign buff_D_1_address1 = buff_D_1_address1_local;
assign buff_D_1_ce0 = buff_D_1_ce0_local;
assign buff_D_1_ce1 = buff_D_1_ce1_local;
assign buff_D_address0 = buff_D_address0_local;
assign buff_D_address1 = buff_D_address1_local;
assign buff_D_ce0 = buff_D_ce0_local;
assign buff_D_ce1 = buff_D_ce1_local;
assign buff_E_out_1_address0 = buff_E_out_1_address0_local;
assign buff_E_out_1_address1 = buff_E_out_1_address1_local;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_1_ce1 = buff_E_out_1_ce1_local;
assign buff_E_out_1_d0 = reg_387;
assign buff_E_out_1_d1 = reg_377;
assign buff_E_out_1_we0 = buff_E_out_1_we0_local;
assign buff_E_out_1_we1 = buff_E_out_1_we1_local;
assign buff_E_out_address0 = buff_E_out_address0_local;
assign buff_E_out_address1 = buff_E_out_address1_local;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign buff_E_out_ce1 = buff_E_out_ce1_local;
assign buff_E_out_d0 = reg_382;
assign buff_E_out_d1 = reg_372;
assign buff_E_out_we0 = buff_E_out_we0_local;
assign buff_E_out_we1 = buff_E_out_we1_local;
assign grp_fu_1994_p_ce = 1'b1;
assign grp_fu_1994_p_din0 = grp_fu_340_p0;
assign grp_fu_1994_p_din1 = grp_fu_340_p1;
assign grp_fu_1994_p_opcode = 2'd0;
assign grp_fu_1998_p_ce = 1'b1;
assign grp_fu_1998_p_din0 = grp_fu_344_p0;
assign grp_fu_1998_p_din1 = grp_fu_344_p1;
assign grp_fu_1998_p_opcode = 2'd0;
assign grp_fu_2002_p_ce = 1'b1;
assign grp_fu_2002_p_din0 = grp_fu_348_p0;
assign grp_fu_2002_p_din1 = grp_fu_348_p1;
assign grp_fu_2002_p_opcode = 2'd0;
assign grp_fu_2006_p_ce = 1'b1;
assign grp_fu_2006_p_din0 = grp_fu_352_p0;
assign grp_fu_2006_p_din1 = grp_fu_352_p1;
assign grp_fu_2006_p_opcode = 2'd0;
assign grp_fu_2010_p_ce = 1'b1;
assign grp_fu_2010_p_din0 = grp_fu_356_p0;
assign grp_fu_2010_p_din1 = beta;
assign grp_fu_2014_p_ce = 1'b1;
assign grp_fu_2014_p_din0 = grp_fu_360_p0;
assign grp_fu_2014_p_din1 = beta;
assign grp_fu_2018_p_ce = 1'b1;
assign grp_fu_2018_p_din0 = grp_fu_364_p0;
assign grp_fu_2018_p_din1 = beta;
assign grp_fu_2022_p_ce = 1'b1;
assign grp_fu_2022_p_din0 = grp_fu_368_p0;
assign grp_fu_2022_p_din1 = beta;
assign icmp_ln43_fu_410_p2 = ((indvar_flatten20_fu_84 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln6_3_fu_462_p4 = {{select_ln6_fu_442_p3[5:1]}};
assign select_ln43_fu_450_p3 = ((tmp_fu_434_p3[0:0] == 1'b1) ? add_ln43_fu_428_p2 : i_fu_80);
assign select_ln6_fu_442_p3 = ((tmp_fu_434_p3[0:0] == 1'b1) ? 7'd0 : j_fu_76);
assign tmp2_1_address0 = tmp2_1_address0_local;
assign tmp2_1_address1 = tmp2_1_address1_local;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_ce1 = tmp2_1_ce1_local;
assign tmp2_address0 = tmp2_address0_local;
assign tmp2_address1 = tmp2_address1_local;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_1_fu_488_p4 = {{select_ln6_fu_442_p3[5:2]}};
assign tmp_2_fu_498_p4 = {{{trunc_ln27_fu_458_p1}, {tmp_1_fu_488_p4}}, {1'd1}};
assign tmp_5_fu_544_p5 = {{{{trunc_ln27_reg_625}, {tmp_3_reg_683}}, {1'd1}}, {tmp_4_reg_689}};
assign tmp_6_fu_561_p4 = {{{trunc_ln27_reg_625}, {tmp_3_reg_683}}, {2'd3}};
assign tmp_fu_434_p3 = j_fu_76[32'd6];
assign tmp_s_fu_472_p3 = {{trunc_ln27_fu_458_p1}, {lshr_ln6_3_fu_462_p4}};
assign trunc_ln27_fu_458_p1 = select_ln43_fu_450_p3[5:0];
assign zext_ln45_1_fu_508_p1 = tmp_2_fu_498_p4;
assign zext_ln45_2_fu_553_p1 = tmp_5_fu_544_p5;
assign zext_ln45_3_fu_569_p1 = tmp_6_fu_561_p4;
assign zext_ln45_fu_480_p1 = tmp_s_fu_472_p3;
always @ (posedge ap_clk) begin
    zext_ln45_reg_631[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_631_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657[0] <= 1'b1;
    zext_ln45_1_reg_657[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter1_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter2_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter3_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter4_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter5_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_657_pp0_iter6_reg[0] <= 1'b1;
    zext_ln45_1_reg_657_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704[1] <= 1'b1;
    zext_ln45_2_reg_704[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter2_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter3_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter4_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter5_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter6_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_704_pp0_iter7_reg[1] <= 1'b1;
    zext_ln45_2_reg_704_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730[1:0] <= 2'b11;
    zext_ln45_3_reg_730[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter4_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter5_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter5_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter6_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter6_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_730_pp0_iter7_reg[1:0] <= 2'b11;
    zext_ln45_3_reg_730_pp0_iter7_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 