module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_address1,v2_7_ce1,v2_7_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_address1,v2_6_ce1,v2_6_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_address1,v2_5_ce1,v2_5_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_address1,v2_4_ce1,v2_4_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,grp_fu_358_p_din0,grp_fu_358_p_din1,grp_fu_358_p_opcode,grp_fu_358_p_dout0,grp_fu_358_p_ce,grp_fu_789_p_din0,grp_fu_789_p_din1,grp_fu_789_p_opcode,grp_fu_789_p_dout0,grp_fu_789_p_ce,grp_fu_793_p_din0,grp_fu_793_p_din1,grp_fu_793_p_opcode,grp_fu_793_p_dout0,grp_fu_793_p_ce,grp_fu_797_p_din0,grp_fu_797_p_din1,grp_fu_797_p_opcode,grp_fu_797_p_dout0,grp_fu_797_p_ce,grp_fu_785_p_din0,grp_fu_785_p_din1,grp_fu_785_p_dout0,grp_fu_785_p_ce,grp_fu_801_p_din0,grp_fu_801_p_din1,grp_fu_801_p_dout0,grp_fu_801_p_ce,grp_fu_805_p_din0,grp_fu_805_p_din1,grp_fu_805_p_dout0,grp_fu_805_p_ce,grp_fu_809_p_din0,grp_fu_809_p_din1,grp_fu_809_p_dout0,grp_fu_809_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
input  [31:0] v2_7_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
input  [31:0] v2_6_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
input  [31:0] v2_5_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
input  [31:0] v2_4_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [8:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [8:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [31:0] grp_fu_358_p_din0;
output  [31:0] grp_fu_358_p_din1;
output  [0:0] grp_fu_358_p_opcode;
input  [31:0] grp_fu_358_p_dout0;
output   grp_fu_358_p_ce;
output  [31:0] grp_fu_789_p_din0;
output  [31:0] grp_fu_789_p_din1;
output  [1:0] grp_fu_789_p_opcode;
input  [31:0] grp_fu_789_p_dout0;
output   grp_fu_789_p_ce;
output  [31:0] grp_fu_793_p_din0;
output  [31:0] grp_fu_793_p_din1;
output  [1:0] grp_fu_793_p_opcode;
input  [31:0] grp_fu_793_p_dout0;
output   grp_fu_793_p_ce;
output  [31:0] grp_fu_797_p_din0;
output  [31:0] grp_fu_797_p_din1;
output  [1:0] grp_fu_797_p_opcode;
input  [31:0] grp_fu_797_p_dout0;
output   grp_fu_797_p_ce;
output  [31:0] grp_fu_785_p_din0;
output  [31:0] grp_fu_785_p_din1;
input  [31:0] grp_fu_785_p_dout0;
output   grp_fu_785_p_ce;
output  [31:0] grp_fu_801_p_din0;
output  [31:0] grp_fu_801_p_din1;
input  [31:0] grp_fu_801_p_dout0;
output   grp_fu_801_p_ce;
output  [31:0] grp_fu_805_p_din0;
output  [31:0] grp_fu_805_p_din1;
input  [31:0] grp_fu_805_p_dout0;
output   grp_fu_805_p_ce;
output  [31:0] grp_fu_809_p_din0;
output  [31:0] grp_fu_809_p_din1;
input  [31:0] grp_fu_809_p_dout0;
output   grp_fu_809_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_306_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] lshr_ln55_1_reg_473;
reg   [6:0] lshr_ln55_1_reg_473_pp0_iter1_reg;
reg   [6:0] lshr_ln55_1_reg_473_pp0_iter2_reg;
reg   [6:0] lshr_ln55_1_reg_473_pp0_iter3_reg;
wire   [0:0] icmp_ln58_fu_344_p2;
reg   [0:0] icmp_ln58_reg_483;
reg   [0:0] icmp_ln58_reg_483_pp0_iter1_reg;
reg   [0:0] icmp_ln58_reg_483_pp0_iter2_reg;
reg   [0:0] icmp_ln58_reg_483_pp0_iter3_reg;
reg   [0:0] icmp_ln58_reg_483_pp0_iter4_reg;
wire   [0:0] icmp_ln60_fu_350_p2;
reg   [0:0] icmp_ln60_reg_491;
reg   [0:0] icmp_ln60_reg_491_pp0_iter1_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter2_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter3_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter4_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter5_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter6_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter7_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter8_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter9_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter10_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter11_reg;
reg   [0:0] icmp_ln60_reg_491_pp0_iter12_reg;
reg   [31:0] v26_reg_510;
reg   [31:0] v26_4_reg_515;
reg   [31:0] v26_5_reg_520;
reg   [31:0] v26_6_reg_525;
reg   [6:0] v2_0_addr_reg_530;
reg   [6:0] v2_0_addr_reg_530_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter6_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter7_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter8_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter9_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter10_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter11_reg;
reg   [6:0] v2_0_addr_reg_530_pp0_iter12_reg;
reg   [6:0] v2_4_addr_reg_536;
reg   [6:0] v2_4_addr_reg_536_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter7_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter8_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter9_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter10_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter11_reg;
reg   [6:0] v2_4_addr_reg_536_pp0_iter12_reg;
reg   [6:0] v2_1_addr_reg_542;
reg   [6:0] v2_1_addr_reg_542_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter7_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter8_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter9_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter10_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter11_reg;
reg   [6:0] v2_1_addr_reg_542_pp0_iter12_reg;
reg   [6:0] v2_5_addr_reg_548;
reg   [6:0] v2_5_addr_reg_548_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter7_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter8_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter9_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter10_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter11_reg;
reg   [6:0] v2_5_addr_reg_548_pp0_iter12_reg;
reg   [6:0] v2_2_addr_reg_554;
reg   [6:0] v2_2_addr_reg_554_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter7_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter8_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter9_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter10_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter11_reg;
reg   [6:0] v2_2_addr_reg_554_pp0_iter12_reg;
reg   [6:0] v2_6_addr_reg_560;
reg   [6:0] v2_6_addr_reg_560_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter7_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter8_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter9_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter10_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter11_reg;
reg   [6:0] v2_6_addr_reg_560_pp0_iter12_reg;
reg   [6:0] v2_3_addr_reg_566;
reg   [6:0] v2_3_addr_reg_566_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter7_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter8_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter9_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter10_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter11_reg;
reg   [6:0] v2_3_addr_reg_566_pp0_iter12_reg;
reg   [6:0] v2_7_addr_reg_572;
reg   [6:0] v2_7_addr_reg_572_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter7_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter8_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter9_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter10_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter11_reg;
reg   [6:0] v2_7_addr_reg_572_pp0_iter12_reg;
reg   [31:0] v27_reg_578;
wire   [31:0] select_ln58_fu_402_p3;
reg   [31:0] select_ln58_reg_583;
reg   [31:0] v27_1_reg_588;
wire   [31:0] select_ln58_1_fu_409_p3;
reg   [31:0] select_ln58_1_reg_593;
reg   [31:0] v27_2_reg_598;
wire   [31:0] select_ln58_2_fu_416_p3;
reg   [31:0] select_ln58_2_reg_603;
reg   [31:0] v27_3_reg_608;
wire   [31:0] select_ln58_3_fu_423_p3;
reg   [31:0] select_ln58_3_reg_613;
wire   [31:0] v28_fu_430_p1;
wire   [31:0] v28_4_fu_434_p1;
wire   [31:0] v28_5_fu_438_p1;
wire   [31:0] v28_6_fu_442_p1;
wire   [31:0] bitcast_ln60_fu_446_p1;
reg   [31:0] bitcast_ln60_reg_638;
wire   [31:0] bitcast_ln60_1_fu_450_p1;
reg   [31:0] bitcast_ln60_1_reg_644;
wire   [31:0] bitcast_ln60_2_fu_454_p1;
reg   [31:0] bitcast_ln60_2_reg_650;
wire   [31:0] bitcast_ln60_3_fu_458_p1;
reg   [31:0] bitcast_ln60_3_reg_656;
wire   [63:0] zext_ln55_fu_328_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_374_p1;
wire   [63:0] zext_ln55_1_fu_391_p1;
reg   [10:0] v25_fu_72;
wire   [10:0] add_ln55_fu_380_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_2;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_4_ce1_local;
reg    v2_4_we0_local;
reg    v2_4_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
reg    v2_5_ce1_local;
reg    v2_5_we0_local;
reg    v2_5_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
reg    v2_2_ce0_local;
reg    v2_6_ce1_local;
reg    v2_6_we0_local;
reg    v2_6_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
reg    v2_3_ce0_local;
reg    v2_7_ce1_local;
reg    v2_7_we0_local;
reg    v2_7_ce0_local;
wire   [8:0] lshr_ln3_fu_318_p4;
wire   [2:0] trunc_ln55_fu_314_p1;
wire   [7:0] tmp_3_fu_356_p4;
wire   [8:0] or_ln_fu_366_p3;
wire    ap_block_pp0_stage0_00001;
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
#0 v25_fu_72 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
        if (((tmp_fu_306_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_72 <= add_ln55_fu_380_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_72 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln60_1_reg_644 <= bitcast_ln60_1_fu_450_p1;
        bitcast_ln60_2_reg_650 <= bitcast_ln60_2_fu_454_p1;
        bitcast_ln60_3_reg_656 <= bitcast_ln60_3_fu_458_p1;
        bitcast_ln60_reg_638 <= bitcast_ln60_fu_446_p1;
        icmp_ln58_reg_483_pp0_iter2_reg <= icmp_ln58_reg_483_pp0_iter1_reg;
        icmp_ln58_reg_483_pp0_iter3_reg <= icmp_ln58_reg_483_pp0_iter2_reg;
        icmp_ln58_reg_483_pp0_iter4_reg <= icmp_ln58_reg_483_pp0_iter3_reg;
        icmp_ln60_reg_491_pp0_iter10_reg <= icmp_ln60_reg_491_pp0_iter9_reg;
        icmp_ln60_reg_491_pp0_iter11_reg <= icmp_ln60_reg_491_pp0_iter10_reg;
        icmp_ln60_reg_491_pp0_iter12_reg <= icmp_ln60_reg_491_pp0_iter11_reg;
        icmp_ln60_reg_491_pp0_iter2_reg <= icmp_ln60_reg_491_pp0_iter1_reg;
        icmp_ln60_reg_491_pp0_iter3_reg <= icmp_ln60_reg_491_pp0_iter2_reg;
        icmp_ln60_reg_491_pp0_iter4_reg <= icmp_ln60_reg_491_pp0_iter3_reg;
        icmp_ln60_reg_491_pp0_iter5_reg <= icmp_ln60_reg_491_pp0_iter4_reg;
        icmp_ln60_reg_491_pp0_iter6_reg <= icmp_ln60_reg_491_pp0_iter5_reg;
        icmp_ln60_reg_491_pp0_iter7_reg <= icmp_ln60_reg_491_pp0_iter6_reg;
        icmp_ln60_reg_491_pp0_iter8_reg <= icmp_ln60_reg_491_pp0_iter7_reg;
        icmp_ln60_reg_491_pp0_iter9_reg <= icmp_ln60_reg_491_pp0_iter8_reg;
        lshr_ln55_1_reg_473_pp0_iter2_reg <= lshr_ln55_1_reg_473_pp0_iter1_reg;
        lshr_ln55_1_reg_473_pp0_iter3_reg <= lshr_ln55_1_reg_473_pp0_iter2_reg;
        select_ln58_1_reg_593 <= select_ln58_1_fu_409_p3;
        select_ln58_2_reg_603 <= select_ln58_2_fu_416_p3;
        select_ln58_3_reg_613 <= select_ln58_3_fu_423_p3;
        select_ln58_reg_583 <= select_ln58_fu_402_p3;
        v27_1_reg_588 <= grp_fu_801_p_dout0;
        v27_2_reg_598 <= grp_fu_805_p_dout0;
        v27_3_reg_608 <= grp_fu_809_p_dout0;
        v27_reg_578 <= grp_fu_785_p_dout0;
        v2_0_addr_reg_530 <= zext_ln55_1_fu_391_p1;
        v2_0_addr_reg_530_pp0_iter10_reg <= v2_0_addr_reg_530_pp0_iter9_reg;
        v2_0_addr_reg_530_pp0_iter11_reg <= v2_0_addr_reg_530_pp0_iter10_reg;
        v2_0_addr_reg_530_pp0_iter12_reg <= v2_0_addr_reg_530_pp0_iter11_reg;
        v2_0_addr_reg_530_pp0_iter5_reg <= v2_0_addr_reg_530;
        v2_0_addr_reg_530_pp0_iter6_reg <= v2_0_addr_reg_530_pp0_iter5_reg;
        v2_0_addr_reg_530_pp0_iter7_reg <= v2_0_addr_reg_530_pp0_iter6_reg;
        v2_0_addr_reg_530_pp0_iter8_reg <= v2_0_addr_reg_530_pp0_iter7_reg;
        v2_0_addr_reg_530_pp0_iter9_reg <= v2_0_addr_reg_530_pp0_iter8_reg;
        v2_1_addr_reg_542 <= zext_ln55_1_fu_391_p1;
        v2_1_addr_reg_542_pp0_iter10_reg <= v2_1_addr_reg_542_pp0_iter9_reg;
        v2_1_addr_reg_542_pp0_iter11_reg <= v2_1_addr_reg_542_pp0_iter10_reg;
        v2_1_addr_reg_542_pp0_iter12_reg <= v2_1_addr_reg_542_pp0_iter11_reg;
        v2_1_addr_reg_542_pp0_iter5_reg <= v2_1_addr_reg_542;
        v2_1_addr_reg_542_pp0_iter6_reg <= v2_1_addr_reg_542_pp0_iter5_reg;
        v2_1_addr_reg_542_pp0_iter7_reg <= v2_1_addr_reg_542_pp0_iter6_reg;
        v2_1_addr_reg_542_pp0_iter8_reg <= v2_1_addr_reg_542_pp0_iter7_reg;
        v2_1_addr_reg_542_pp0_iter9_reg <= v2_1_addr_reg_542_pp0_iter8_reg;
        v2_2_addr_reg_554 <= zext_ln55_1_fu_391_p1;
        v2_2_addr_reg_554_pp0_iter10_reg <= v2_2_addr_reg_554_pp0_iter9_reg;
        v2_2_addr_reg_554_pp0_iter11_reg <= v2_2_addr_reg_554_pp0_iter10_reg;
        v2_2_addr_reg_554_pp0_iter12_reg <= v2_2_addr_reg_554_pp0_iter11_reg;
        v2_2_addr_reg_554_pp0_iter5_reg <= v2_2_addr_reg_554;
        v2_2_addr_reg_554_pp0_iter6_reg <= v2_2_addr_reg_554_pp0_iter5_reg;
        v2_2_addr_reg_554_pp0_iter7_reg <= v2_2_addr_reg_554_pp0_iter6_reg;
        v2_2_addr_reg_554_pp0_iter8_reg <= v2_2_addr_reg_554_pp0_iter7_reg;
        v2_2_addr_reg_554_pp0_iter9_reg <= v2_2_addr_reg_554_pp0_iter8_reg;
        v2_3_addr_reg_566 <= zext_ln55_1_fu_391_p1;
        v2_3_addr_reg_566_pp0_iter10_reg <= v2_3_addr_reg_566_pp0_iter9_reg;
        v2_3_addr_reg_566_pp0_iter11_reg <= v2_3_addr_reg_566_pp0_iter10_reg;
        v2_3_addr_reg_566_pp0_iter12_reg <= v2_3_addr_reg_566_pp0_iter11_reg;
        v2_3_addr_reg_566_pp0_iter5_reg <= v2_3_addr_reg_566;
        v2_3_addr_reg_566_pp0_iter6_reg <= v2_3_addr_reg_566_pp0_iter5_reg;
        v2_3_addr_reg_566_pp0_iter7_reg <= v2_3_addr_reg_566_pp0_iter6_reg;
        v2_3_addr_reg_566_pp0_iter8_reg <= v2_3_addr_reg_566_pp0_iter7_reg;
        v2_3_addr_reg_566_pp0_iter9_reg <= v2_3_addr_reg_566_pp0_iter8_reg;
        v2_4_addr_reg_536 <= zext_ln55_1_fu_391_p1;
        v2_4_addr_reg_536_pp0_iter10_reg <= v2_4_addr_reg_536_pp0_iter9_reg;
        v2_4_addr_reg_536_pp0_iter11_reg <= v2_4_addr_reg_536_pp0_iter10_reg;
        v2_4_addr_reg_536_pp0_iter12_reg <= v2_4_addr_reg_536_pp0_iter11_reg;
        v2_4_addr_reg_536_pp0_iter5_reg <= v2_4_addr_reg_536;
        v2_4_addr_reg_536_pp0_iter6_reg <= v2_4_addr_reg_536_pp0_iter5_reg;
        v2_4_addr_reg_536_pp0_iter7_reg <= v2_4_addr_reg_536_pp0_iter6_reg;
        v2_4_addr_reg_536_pp0_iter8_reg <= v2_4_addr_reg_536_pp0_iter7_reg;
        v2_4_addr_reg_536_pp0_iter9_reg <= v2_4_addr_reg_536_pp0_iter8_reg;
        v2_5_addr_reg_548 <= zext_ln55_1_fu_391_p1;
        v2_5_addr_reg_548_pp0_iter10_reg <= v2_5_addr_reg_548_pp0_iter9_reg;
        v2_5_addr_reg_548_pp0_iter11_reg <= v2_5_addr_reg_548_pp0_iter10_reg;
        v2_5_addr_reg_548_pp0_iter12_reg <= v2_5_addr_reg_548_pp0_iter11_reg;
        v2_5_addr_reg_548_pp0_iter5_reg <= v2_5_addr_reg_548;
        v2_5_addr_reg_548_pp0_iter6_reg <= v2_5_addr_reg_548_pp0_iter5_reg;
        v2_5_addr_reg_548_pp0_iter7_reg <= v2_5_addr_reg_548_pp0_iter6_reg;
        v2_5_addr_reg_548_pp0_iter8_reg <= v2_5_addr_reg_548_pp0_iter7_reg;
        v2_5_addr_reg_548_pp0_iter9_reg <= v2_5_addr_reg_548_pp0_iter8_reg;
        v2_6_addr_reg_560 <= zext_ln55_1_fu_391_p1;
        v2_6_addr_reg_560_pp0_iter10_reg <= v2_6_addr_reg_560_pp0_iter9_reg;
        v2_6_addr_reg_560_pp0_iter11_reg <= v2_6_addr_reg_560_pp0_iter10_reg;
        v2_6_addr_reg_560_pp0_iter12_reg <= v2_6_addr_reg_560_pp0_iter11_reg;
        v2_6_addr_reg_560_pp0_iter5_reg <= v2_6_addr_reg_560;
        v2_6_addr_reg_560_pp0_iter6_reg <= v2_6_addr_reg_560_pp0_iter5_reg;
        v2_6_addr_reg_560_pp0_iter7_reg <= v2_6_addr_reg_560_pp0_iter6_reg;
        v2_6_addr_reg_560_pp0_iter8_reg <= v2_6_addr_reg_560_pp0_iter7_reg;
        v2_6_addr_reg_560_pp0_iter9_reg <= v2_6_addr_reg_560_pp0_iter8_reg;
        v2_7_addr_reg_572 <= zext_ln55_1_fu_391_p1;
        v2_7_addr_reg_572_pp0_iter10_reg <= v2_7_addr_reg_572_pp0_iter9_reg;
        v2_7_addr_reg_572_pp0_iter11_reg <= v2_7_addr_reg_572_pp0_iter10_reg;
        v2_7_addr_reg_572_pp0_iter12_reg <= v2_7_addr_reg_572_pp0_iter11_reg;
        v2_7_addr_reg_572_pp0_iter5_reg <= v2_7_addr_reg_572;
        v2_7_addr_reg_572_pp0_iter6_reg <= v2_7_addr_reg_572_pp0_iter5_reg;
        v2_7_addr_reg_572_pp0_iter7_reg <= v2_7_addr_reg_572_pp0_iter6_reg;
        v2_7_addr_reg_572_pp0_iter8_reg <= v2_7_addr_reg_572_pp0_iter7_reg;
        v2_7_addr_reg_572_pp0_iter9_reg <= v2_7_addr_reg_572_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln58_reg_483 <= icmp_ln58_fu_344_p2;
        icmp_ln58_reg_483_pp0_iter1_reg <= icmp_ln58_reg_483;
        icmp_ln60_reg_491 <= icmp_ln60_fu_350_p2;
        icmp_ln60_reg_491_pp0_iter1_reg <= icmp_ln60_reg_491;
        lshr_ln55_1_reg_473 <= {{ap_sig_allocacmp_v25_2[9:3]}};
        lshr_ln55_1_reg_473_pp0_iter1_reg <= lshr_ln55_1_reg_473;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_4_reg_515 <= v3_1_q1;
        v26_5_reg_520 <= v3_q0;
        v26_6_reg_525 <= v3_1_q0;
        v26_reg_510 <= v3_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_306_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v25_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_2 = v25_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd0))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd0))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd0))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln60_reg_491_pp0_iter12_reg == 1'd0))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
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
assign add_ln55_fu_380_p2 = (ap_sig_allocacmp_v25_2 + 11'd4);
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
assign bitcast_ln60_1_fu_450_p1 = grp_fu_789_p_dout0;
assign bitcast_ln60_2_fu_454_p1 = grp_fu_793_p_dout0;
assign bitcast_ln60_3_fu_458_p1 = grp_fu_797_p_dout0;
assign bitcast_ln60_fu_446_p1 = grp_fu_358_p_dout0;
assign grp_fu_358_p_ce = 1'b1;
assign grp_fu_358_p_din0 = v28_fu_430_p1;
assign grp_fu_358_p_din1 = v27_reg_578;
assign grp_fu_358_p_opcode = 2'd0;
assign grp_fu_785_p_ce = 1'b1;
assign grp_fu_785_p_din0 = v26_reg_510;
assign grp_fu_785_p_din1 = 32'd3345637376;
assign grp_fu_789_p_ce = 1'b1;
assign grp_fu_789_p_din0 = v28_4_fu_434_p1;
assign grp_fu_789_p_din1 = v27_1_reg_588;
assign grp_fu_789_p_opcode = 2'd0;
assign grp_fu_793_p_ce = 1'b1;
assign grp_fu_793_p_din0 = v28_5_fu_438_p1;
assign grp_fu_793_p_din1 = v27_2_reg_598;
assign grp_fu_793_p_opcode = 2'd0;
assign grp_fu_797_p_ce = 1'b1;
assign grp_fu_797_p_din0 = v28_6_fu_442_p1;
assign grp_fu_797_p_din1 = v27_3_reg_608;
assign grp_fu_797_p_opcode = 2'd0;
assign grp_fu_801_p_ce = 1'b1;
assign grp_fu_801_p_din0 = v26_4_reg_515;
assign grp_fu_801_p_din1 = 32'd3345637376;
assign grp_fu_805_p_ce = 1'b1;
assign grp_fu_805_p_din0 = v26_5_reg_520;
assign grp_fu_805_p_din1 = 32'd3345637376;
assign grp_fu_809_p_ce = 1'b1;
assign grp_fu_809_p_din0 = v26_6_reg_525;
assign grp_fu_809_p_din1 = 32'd3345637376;
assign icmp_ln58_fu_344_p2 = ((trunc_ln55_fu_314_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln60_fu_350_p2 = ((trunc_ln55_fu_314_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_318_p4 = {{ap_sig_allocacmp_v25_2[9:1]}};
assign or_ln_fu_366_p3 = {{tmp_3_fu_356_p4}, {1'd1}};
assign select_ln58_1_fu_409_p3 = ((icmp_ln58_reg_483_pp0_iter4_reg[0:0] == 1'b1) ? v2_5_q1 : v2_1_q1);
assign select_ln58_2_fu_416_p3 = ((icmp_ln58_reg_483_pp0_iter4_reg[0:0] == 1'b1) ? v2_6_q1 : v2_2_q1);
assign select_ln58_3_fu_423_p3 = ((icmp_ln58_reg_483_pp0_iter4_reg[0:0] == 1'b1) ? v2_7_q1 : v2_3_q1);
assign select_ln58_fu_402_p3 = ((icmp_ln58_reg_483_pp0_iter4_reg[0:0] == 1'b1) ? v2_4_q1 : v2_0_q1);
assign tmp_3_fu_356_p4 = {{ap_sig_allocacmp_v25_2[9:2]}};
assign tmp_fu_306_p3 = ap_sig_allocacmp_v25_2[32'd10];
assign trunc_ln55_fu_314_p1 = ap_sig_allocacmp_v25_2[2:0];
assign v28_4_fu_434_p1 = select_ln58_1_reg_593;
assign v28_5_fu_438_p1 = select_ln58_2_reg_603;
assign v28_6_fu_442_p1 = select_ln58_3_reg_613;
assign v28_fu_430_p1 = select_ln58_reg_583;
assign v2_0_address0 = v2_0_addr_reg_530_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_1_fu_391_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_638;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_542_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_1_fu_391_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_1_reg_644;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_554_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_1_fu_391_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_2_reg_650;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_566_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_1_fu_391_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_3_reg_656;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_addr_reg_536_pp0_iter12_reg;
assign v2_4_address1 = zext_ln55_1_fu_391_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_reg_638;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_addr_reg_548_pp0_iter12_reg;
assign v2_5_address1 = zext_ln55_1_fu_391_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_1_reg_644;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_addr_reg_560_pp0_iter12_reg;
assign v2_6_address1 = zext_ln55_1_fu_391_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_2_reg_650;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_addr_reg_572_pp0_iter12_reg;
assign v2_7_address1 = zext_ln55_1_fu_391_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_3_reg_656;
assign v2_7_we0 = v2_7_we0_local;
assign v3_1_address0 = zext_ln56_fu_374_p1;
assign v3_1_address1 = zext_ln55_fu_328_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_address0 = zext_ln56_fu_374_p1;
assign v3_address1 = zext_ln55_fu_328_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_391_p1 = lshr_ln55_1_reg_473_pp0_iter3_reg;
assign zext_ln55_fu_328_p1 = lshr_ln3_fu_318_p4;
assign zext_ln56_fu_374_p1 = or_ln_fu_366_p3;
endmodule 