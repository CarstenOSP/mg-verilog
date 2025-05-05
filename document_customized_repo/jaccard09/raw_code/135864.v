module k2mm_k2mm_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_D_address0,buff_D_ce0,buff_D_q0,buff_D_1_address0,buff_D_1_ce0,buff_D_1_q0,buff_D_2_address0,buff_D_2_ce0,buff_D_2_q0,buff_D_3_address0,buff_D_3_ce0,buff_D_3_q0,buff_E_out_address0,buff_E_out_ce0,buff_E_out_we0,buff_E_out_d0,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_we0,buff_E_out_1_d0,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_we0,buff_E_out_2_d0,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_we0,buff_E_out_3_d0,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,beta,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_opcode,grp_fu_2166_p_dout0,grp_fu_2166_p_ce,grp_fu_2174_p_din0,grp_fu_2174_p_din1,grp_fu_2174_p_opcode,grp_fu_2174_p_dout0,grp_fu_2174_p_ce,grp_fu_2170_p_din0,grp_fu_2170_p_din1,grp_fu_2170_p_dout0,grp_fu_2170_p_ce,grp_fu_2178_p_din0,grp_fu_2178_p_din1,grp_fu_2178_p_dout0,grp_fu_2178_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_D_address0;
output   buff_D_ce0;
input  [31:0] buff_D_q0;
output  [9:0] buff_D_1_address0;
output   buff_D_1_ce0;
input  [31:0] buff_D_1_q0;
output  [9:0] buff_D_2_address0;
output   buff_D_2_ce0;
input  [31:0] buff_D_2_q0;
output  [9:0] buff_D_3_address0;
output   buff_D_3_ce0;
input  [31:0] buff_D_3_q0;
output  [9:0] buff_E_out_address0;
output   buff_E_out_ce0;
output   buff_E_out_we0;
output  [31:0] buff_E_out_d0;
output  [9:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
output   buff_E_out_1_we0;
output  [31:0] buff_E_out_1_d0;
output  [9:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
output   buff_E_out_2_we0;
output  [31:0] buff_E_out_2_d0;
output  [9:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
output   buff_E_out_3_we0;
output  [31:0] buff_E_out_3_d0;
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
output  [31:0] grp_fu_2166_p_din0;
output  [31:0] grp_fu_2166_p_din1;
output  [1:0] grp_fu_2166_p_opcode;
input  [31:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
output  [31:0] grp_fu_2174_p_din0;
output  [31:0] grp_fu_2174_p_din1;
output  [1:0] grp_fu_2174_p_opcode;
input  [31:0] grp_fu_2174_p_dout0;
output   grp_fu_2174_p_ce;
output  [31:0] grp_fu_2170_p_din0;
output  [31:0] grp_fu_2170_p_din1;
input  [31:0] grp_fu_2170_p_dout0;
output   grp_fu_2170_p_ce;
output  [31:0] grp_fu_2178_p_din0;
output  [31:0] grp_fu_2178_p_din1;
input  [31:0] grp_fu_2178_p_dout0;
output   grp_fu_2178_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln43_fu_278_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln45_fu_357_p1;
reg   [63:0] zext_ln45_reg_452;
reg   [63:0] zext_ln45_reg_452_pp0_iter2_reg;
reg   [63:0] zext_ln45_reg_452_pp0_iter3_reg;
reg   [63:0] zext_ln45_reg_452_pp0_iter4_reg;
wire   [0:0] icmp_ln45_1_fu_365_p2;
reg   [0:0] icmp_ln45_1_reg_484;
reg   [0:0] icmp_ln45_1_reg_484_pp0_iter2_reg;
reg   [0:0] icmp_ln45_1_reg_484_pp0_iter3_reg;
reg   [0:0] icmp_ln45_1_reg_484_pp0_iter4_reg;
reg   [0:0] icmp_ln45_1_reg_484_pp0_iter5_reg;
wire   [0:0] icmp_ln45_fu_371_p2;
reg   [0:0] icmp_ln45_reg_492;
reg   [0:0] icmp_ln45_reg_492_pp0_iter2_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter3_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter4_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter5_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter6_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter7_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter8_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter9_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter10_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter11_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter12_reg;
reg   [0:0] icmp_ln45_reg_492_pp0_iter13_reg;
wire   [31:0] select_ln45_1_fu_393_p3;
reg   [31:0] select_ln45_1_reg_496;
wire   [31:0] select_ln45_3_fu_400_p3;
reg   [31:0] select_ln45_3_reg_501;
reg   [9:0] buff_E_out_addr_reg_506;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter6_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter7_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter8_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter9_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter10_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter11_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter12_reg;
reg   [9:0] buff_E_out_addr_reg_506_pp0_iter13_reg;
reg   [9:0] buff_E_out_1_addr_reg_511;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter6_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter7_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter8_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter9_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter10_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter11_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter12_reg;
reg   [9:0] buff_E_out_1_addr_reg_511_pp0_iter13_reg;
reg   [9:0] buff_E_out_2_addr_reg_516;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter6_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter7_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter8_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter9_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter10_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter11_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter12_reg;
reg   [9:0] buff_E_out_2_addr_reg_516_pp0_iter13_reg;
reg   [9:0] buff_E_out_3_addr_reg_521;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter6_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter7_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter8_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter9_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter10_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter11_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter12_reg;
reg   [9:0] buff_E_out_3_addr_reg_521_pp0_iter13_reg;
wire   [31:0] select_ln45_fu_407_p3;
reg   [31:0] select_ln45_reg_546;
reg   [31:0] mul3_reg_551;
wire   [31:0] select_ln45_2_fu_414_p3;
reg   [31:0] select_ln45_2_reg_556;
reg   [31:0] mul126_1_reg_561;
reg   [31:0] add2_reg_566;
reg   [31:0] add127_1_reg_572;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_74;
wire   [6:0] add_ln44_fu_377_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_78;
wire   [6:0] select_ln43_fu_323_p3;
reg   [11:0] indvar_flatten37_fu_82;
wire   [11:0] add_ln43_1_fu_284_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten37_load;
reg    buff_D_ce0_local;
reg    buff_D_2_ce0_local;
reg    buff_D_1_ce0_local;
reg    buff_D_3_ce0_local;
reg    tmp2_ce0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_3_ce0_local;
reg    buff_E_out_2_we0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_we0_local;
reg    buff_E_out_3_ce0_local;
reg    buff_E_out_we0_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_we0_local;
reg    buff_E_out_1_ce0_local;
wire   [0:0] tmp_fu_307_p3;
wire   [6:0] add_ln43_fu_301_p2;
wire   [6:0] select_ln6_fu_315_p3;
wire   [5:0] trunc_ln44_fu_331_p1;
wire   [3:0] lshr_ln6_6_fu_339_p4;
wire   [9:0] tmp_s_fu_349_p3;
wire   [1:0] trunc_ln44_1_fu_335_p1;
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
#0 j_fu_74 = 7'd0;
#0 i_fu_78 = 7'd0;
#0 indvar_flatten37_fu_82 = 12'd0;
#0 ap_done_reg = 1'b0;
end
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
            i_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_78 <= select_ln43_fu_323_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln43_fu_278_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten37_fu_82 <= add_ln43_1_fu_284_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_82 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_74 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_74 <= add_ln44_fu_377_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add127_1_reg_572 <= grp_fu_2174_p_dout0;
        add2_reg_566 <= grp_fu_2166_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_E_out_1_addr_reg_511 <= zext_ln45_reg_452_pp0_iter4_reg;
        buff_E_out_1_addr_reg_511_pp0_iter10_reg <= buff_E_out_1_addr_reg_511_pp0_iter9_reg;
        buff_E_out_1_addr_reg_511_pp0_iter11_reg <= buff_E_out_1_addr_reg_511_pp0_iter10_reg;
        buff_E_out_1_addr_reg_511_pp0_iter12_reg <= buff_E_out_1_addr_reg_511_pp0_iter11_reg;
        buff_E_out_1_addr_reg_511_pp0_iter13_reg <= buff_E_out_1_addr_reg_511_pp0_iter12_reg;
        buff_E_out_1_addr_reg_511_pp0_iter6_reg <= buff_E_out_1_addr_reg_511;
        buff_E_out_1_addr_reg_511_pp0_iter7_reg <= buff_E_out_1_addr_reg_511_pp0_iter6_reg;
        buff_E_out_1_addr_reg_511_pp0_iter8_reg <= buff_E_out_1_addr_reg_511_pp0_iter7_reg;
        buff_E_out_1_addr_reg_511_pp0_iter9_reg <= buff_E_out_1_addr_reg_511_pp0_iter8_reg;
        buff_E_out_2_addr_reg_516 <= zext_ln45_reg_452_pp0_iter4_reg;
        buff_E_out_2_addr_reg_516_pp0_iter10_reg <= buff_E_out_2_addr_reg_516_pp0_iter9_reg;
        buff_E_out_2_addr_reg_516_pp0_iter11_reg <= buff_E_out_2_addr_reg_516_pp0_iter10_reg;
        buff_E_out_2_addr_reg_516_pp0_iter12_reg <= buff_E_out_2_addr_reg_516_pp0_iter11_reg;
        buff_E_out_2_addr_reg_516_pp0_iter13_reg <= buff_E_out_2_addr_reg_516_pp0_iter12_reg;
        buff_E_out_2_addr_reg_516_pp0_iter6_reg <= buff_E_out_2_addr_reg_516;
        buff_E_out_2_addr_reg_516_pp0_iter7_reg <= buff_E_out_2_addr_reg_516_pp0_iter6_reg;
        buff_E_out_2_addr_reg_516_pp0_iter8_reg <= buff_E_out_2_addr_reg_516_pp0_iter7_reg;
        buff_E_out_2_addr_reg_516_pp0_iter9_reg <= buff_E_out_2_addr_reg_516_pp0_iter8_reg;
        buff_E_out_3_addr_reg_521 <= zext_ln45_reg_452_pp0_iter4_reg;
        buff_E_out_3_addr_reg_521_pp0_iter10_reg <= buff_E_out_3_addr_reg_521_pp0_iter9_reg;
        buff_E_out_3_addr_reg_521_pp0_iter11_reg <= buff_E_out_3_addr_reg_521_pp0_iter10_reg;
        buff_E_out_3_addr_reg_521_pp0_iter12_reg <= buff_E_out_3_addr_reg_521_pp0_iter11_reg;
        buff_E_out_3_addr_reg_521_pp0_iter13_reg <= buff_E_out_3_addr_reg_521_pp0_iter12_reg;
        buff_E_out_3_addr_reg_521_pp0_iter6_reg <= buff_E_out_3_addr_reg_521;
        buff_E_out_3_addr_reg_521_pp0_iter7_reg <= buff_E_out_3_addr_reg_521_pp0_iter6_reg;
        buff_E_out_3_addr_reg_521_pp0_iter8_reg <= buff_E_out_3_addr_reg_521_pp0_iter7_reg;
        buff_E_out_3_addr_reg_521_pp0_iter9_reg <= buff_E_out_3_addr_reg_521_pp0_iter8_reg;
        buff_E_out_addr_reg_506 <= zext_ln45_reg_452_pp0_iter4_reg;
        buff_E_out_addr_reg_506_pp0_iter10_reg <= buff_E_out_addr_reg_506_pp0_iter9_reg;
        buff_E_out_addr_reg_506_pp0_iter11_reg <= buff_E_out_addr_reg_506_pp0_iter10_reg;
        buff_E_out_addr_reg_506_pp0_iter12_reg <= buff_E_out_addr_reg_506_pp0_iter11_reg;
        buff_E_out_addr_reg_506_pp0_iter13_reg <= buff_E_out_addr_reg_506_pp0_iter12_reg;
        buff_E_out_addr_reg_506_pp0_iter6_reg <= buff_E_out_addr_reg_506;
        buff_E_out_addr_reg_506_pp0_iter7_reg <= buff_E_out_addr_reg_506_pp0_iter6_reg;
        buff_E_out_addr_reg_506_pp0_iter8_reg <= buff_E_out_addr_reg_506_pp0_iter7_reg;
        buff_E_out_addr_reg_506_pp0_iter9_reg <= buff_E_out_addr_reg_506_pp0_iter8_reg;
        icmp_ln45_1_reg_484_pp0_iter2_reg <= icmp_ln45_1_reg_484;
        icmp_ln45_1_reg_484_pp0_iter3_reg <= icmp_ln45_1_reg_484_pp0_iter2_reg;
        icmp_ln45_1_reg_484_pp0_iter4_reg <= icmp_ln45_1_reg_484_pp0_iter3_reg;
        icmp_ln45_1_reg_484_pp0_iter5_reg <= icmp_ln45_1_reg_484_pp0_iter4_reg;
        icmp_ln45_reg_492_pp0_iter10_reg <= icmp_ln45_reg_492_pp0_iter9_reg;
        icmp_ln45_reg_492_pp0_iter11_reg <= icmp_ln45_reg_492_pp0_iter10_reg;
        icmp_ln45_reg_492_pp0_iter12_reg <= icmp_ln45_reg_492_pp0_iter11_reg;
        icmp_ln45_reg_492_pp0_iter13_reg <= icmp_ln45_reg_492_pp0_iter12_reg;
        icmp_ln45_reg_492_pp0_iter2_reg <= icmp_ln45_reg_492;
        icmp_ln45_reg_492_pp0_iter3_reg <= icmp_ln45_reg_492_pp0_iter2_reg;
        icmp_ln45_reg_492_pp0_iter4_reg <= icmp_ln45_reg_492_pp0_iter3_reg;
        icmp_ln45_reg_492_pp0_iter5_reg <= icmp_ln45_reg_492_pp0_iter4_reg;
        icmp_ln45_reg_492_pp0_iter6_reg <= icmp_ln45_reg_492_pp0_iter5_reg;
        icmp_ln45_reg_492_pp0_iter7_reg <= icmp_ln45_reg_492_pp0_iter6_reg;
        icmp_ln45_reg_492_pp0_iter8_reg <= icmp_ln45_reg_492_pp0_iter7_reg;
        icmp_ln45_reg_492_pp0_iter9_reg <= icmp_ln45_reg_492_pp0_iter8_reg;
        mul126_1_reg_561 <= grp_fu_2178_p_dout0;
        mul3_reg_551 <= grp_fu_2170_p_dout0;
        select_ln45_1_reg_496 <= select_ln45_1_fu_393_p3;
        select_ln45_2_reg_556 <= select_ln45_2_fu_414_p3;
        select_ln45_3_reg_501 <= select_ln45_3_fu_400_p3;
        select_ln45_reg_546 <= select_ln45_fu_407_p3;
        zext_ln45_reg_452_pp0_iter2_reg[9 : 0] <= zext_ln45_reg_452[9 : 0];
        zext_ln45_reg_452_pp0_iter3_reg[9 : 0] <= zext_ln45_reg_452_pp0_iter2_reg[9 : 0];
        zext_ln45_reg_452_pp0_iter4_reg[9 : 0] <= zext_ln45_reg_452_pp0_iter3_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln45_1_reg_484 <= icmp_ln45_1_fu_365_p2;
        icmp_ln45_reg_492 <= icmp_ln45_fu_371_p2;
        zext_ln45_reg_452[9 : 0] <= zext_ln45_fu_357_p1[9 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln43_fu_278_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten37_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten37_load = indvar_flatten37_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_1_ce0_local = 1'b1;
    end else begin
        buff_D_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_2_ce0_local = 1'b1;
    end else begin
        buff_D_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_3_ce0_local = 1'b1;
    end else begin
        buff_D_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_ce0_local = 1'b1;
    end else begin
        buff_D_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln45_reg_492_pp0_iter13_reg == 1'd1))) begin
        buff_E_out_1_we0_local = 1'b1;
    end else begin
        buff_E_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln45_reg_492_pp0_iter13_reg == 1'd0))) begin
        buff_E_out_2_we0_local = 1'b1;
    end else begin
        buff_E_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln45_reg_492_pp0_iter13_reg == 1'd0))) begin
        buff_E_out_3_we0_local = 1'b1;
    end else begin
        buff_E_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln45_reg_492_pp0_iter13_reg == 1'd1))) begin
        buff_E_out_we0_local = 1'b1;
    end else begin
        buff_E_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
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
assign add_ln43_1_fu_284_p2 = (ap_sig_allocacmp_indvar_flatten37_load + 12'd1);
assign add_ln43_fu_301_p2 = (i_fu_78 + 7'd1);
assign add_ln44_fu_377_p2 = (select_ln6_fu_315_p3 + 7'd2);
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
assign buff_D_1_address0 = zext_ln45_fu_357_p1;
assign buff_D_1_ce0 = buff_D_1_ce0_local;
assign buff_D_2_address0 = zext_ln45_fu_357_p1;
assign buff_D_2_ce0 = buff_D_2_ce0_local;
assign buff_D_3_address0 = zext_ln45_fu_357_p1;
assign buff_D_3_ce0 = buff_D_3_ce0_local;
assign buff_D_address0 = zext_ln45_fu_357_p1;
assign buff_D_ce0 = buff_D_ce0_local;
assign buff_E_out_1_address0 = buff_E_out_1_addr_reg_511_pp0_iter13_reg;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_1_d0 = add127_1_reg_572;
assign buff_E_out_1_we0 = buff_E_out_1_we0_local;
assign buff_E_out_2_address0 = buff_E_out_2_addr_reg_516_pp0_iter13_reg;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_2_d0 = add2_reg_566;
assign buff_E_out_2_we0 = buff_E_out_2_we0_local;
assign buff_E_out_3_address0 = buff_E_out_3_addr_reg_521_pp0_iter13_reg;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_3_d0 = add127_1_reg_572;
assign buff_E_out_3_we0 = buff_E_out_3_we0_local;
assign buff_E_out_address0 = buff_E_out_addr_reg_506_pp0_iter13_reg;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign buff_E_out_d0 = add2_reg_566;
assign buff_E_out_we0 = buff_E_out_we0_local;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = select_ln45_reg_546;
assign grp_fu_2166_p_din1 = mul3_reg_551;
assign grp_fu_2166_p_opcode = 2'd0;
assign grp_fu_2170_p_ce = 1'b1;
assign grp_fu_2170_p_din0 = select_ln45_1_reg_496;
assign grp_fu_2170_p_din1 = beta;
assign grp_fu_2174_p_ce = 1'b1;
assign grp_fu_2174_p_din0 = select_ln45_2_reg_556;
assign grp_fu_2174_p_din1 = mul126_1_reg_561;
assign grp_fu_2174_p_opcode = 2'd0;
assign grp_fu_2178_p_ce = 1'b1;
assign grp_fu_2178_p_din0 = select_ln45_3_reg_501;
assign grp_fu_2178_p_din1 = beta;
assign icmp_ln43_fu_278_p2 = ((ap_sig_allocacmp_indvar_flatten37_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln45_1_fu_365_p2 = ((trunc_ln44_1_fu_335_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln45_fu_371_p2 = ((trunc_ln44_1_fu_335_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_6_fu_339_p4 = {{select_ln6_fu_315_p3[5:2]}};
assign select_ln43_fu_323_p3 = ((tmp_fu_307_p3[0:0] == 1'b1) ? add_ln43_fu_301_p2 : i_fu_78);
assign select_ln45_1_fu_393_p3 = ((icmp_ln45_1_reg_484[0:0] == 1'b1) ? buff_D_2_q0 : buff_D_q0);
assign select_ln45_2_fu_414_p3 = ((icmp_ln45_1_reg_484_pp0_iter5_reg[0:0] == 1'b1) ? tmp2_3_q0 : tmp2_1_q0);
assign select_ln45_3_fu_400_p3 = ((icmp_ln45_1_reg_484[0:0] == 1'b1) ? buff_D_3_q0 : buff_D_1_q0);
assign select_ln45_fu_407_p3 = ((icmp_ln45_1_reg_484_pp0_iter5_reg[0:0] == 1'b1) ? tmp2_2_q0 : tmp2_q0);
assign select_ln6_fu_315_p3 = ((tmp_fu_307_p3[0:0] == 1'b1) ? 7'd0 : j_fu_74);
assign tmp2_1_address0 = zext_ln45_reg_452_pp0_iter4_reg;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_2_address0 = zext_ln45_reg_452_pp0_iter4_reg;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_3_address0 = zext_ln45_reg_452_pp0_iter4_reg;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_address0 = zext_ln45_reg_452_pp0_iter4_reg;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp_fu_307_p3 = j_fu_74[32'd6];
assign tmp_s_fu_349_p3 = {{trunc_ln44_fu_331_p1}, {lshr_ln6_6_fu_339_p4}};
assign trunc_ln44_1_fu_335_p1 = select_ln6_fu_315_p3[1:0];
assign trunc_ln44_fu_331_p1 = select_ln43_fu_323_p3[5:0];
assign zext_ln45_fu_357_p1 = tmp_s_fu_349_p3;
always @ (posedge ap_clk) begin
    zext_ln45_reg_452[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_452_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_452_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln45_reg_452_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 