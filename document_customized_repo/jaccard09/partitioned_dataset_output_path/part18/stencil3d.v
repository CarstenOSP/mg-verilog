
module stencil3d (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_address0,C_ce0,C_q0,C_address1,C_ce1,C_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1);  
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] C_address0;
output   C_ce0;
input  [31:0] C_q0;
output  [0:0] C_address1;
output   C_ce1;
input  [31:0] C_q1;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [12:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] orig_0_address0;
reg orig_0_ce0;
reg[12:0] orig_0_address1;
reg orig_0_ce1;
reg[12:0] orig_1_address0;
reg orig_1_ce0;
reg[12:0] orig_1_address1;
reg orig_1_ce1;
reg[12:0] sol_0_address0;
reg sol_0_ce0;
reg sol_0_we0;
reg[31:0] sol_0_d0;
reg[12:0] sol_0_address1;
reg sol_0_ce1;
reg sol_0_we1;
reg[31:0] sol_0_d1;
reg[12:0] sol_1_address0;
reg sol_1_ce0;
reg sol_1_we0;
reg[31:0] sol_1_d0;
reg[12:0] sol_1_address1;
reg sol_1_ce1;
reg sol_1_we1;
reg[31:0] sol_1_d1;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
reg   [31:0] C_load_reg_177;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_1_reg_182;
reg   [4:0] i_reg_187;
wire    ap_CS_fsm_state7;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_done;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_idle;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_ready;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d0;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d1;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d0;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d1;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce0;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce1;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address0;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce0;
wire   [12:0] grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address1;
wire    grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_done;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_idle;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_ready;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d0;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d1;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d0;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d1;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce0;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce1;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address0;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce0;
wire   [12:0] grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address1;
wire    grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_done;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_idle;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_ready;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d0;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d1;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d0;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d1;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce0;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce1;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address0;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce0;
wire   [12:0] grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address1;
wire    grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_ap_start;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_ap_done;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_ap_idle;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_ap_ready;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d0;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d1;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we0;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d0;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we1;
wire   [31:0] grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d1;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce0;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce1;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address0;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce0;
wire   [12:0] grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address1;
wire    grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce1;
reg    grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg;
reg    grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg;
wire   [0:0] icmp_ln36_fu_143_p2;
wire    ap_CS_fsm_state8;
reg   [4:0] i_2_fu_52;
wire   [4:0] indvars_iv_next297_fu_149_p2;
reg    C_ce1_local;
reg    C_ce0_local;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg = 1'b0;
#0 grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg = 1'b0;
#0 i_2_fu_52 = 5'd0;
end
stencil3d_stencil3d_Pipeline_height_bound_col grp_stencil3d_Pipeline_height_bound_col_fu_83(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start),.ap_done(grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_done),.ap_idle(grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_idle),.ap_ready(grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_ready),.sol_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce1),.orig_1_q1(orig_1_q1));
stencil3d_stencil3d_Pipeline_col_bound_height grp_stencil3d_Pipeline_col_bound_height_fu_95(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start),.ap_done(grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_done),.ap_idle(grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_idle),.ap_ready(grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_ready),.sol_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce1),.orig_1_q1(orig_1_q1));
stencil3d_stencil3d_Pipeline_row_bound_height grp_stencil3d_Pipeline_row_bound_height_fu_107(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start),.ap_done(grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_done),.ap_idle(grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_idle),.ap_ready(grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_ready),.sol_1_address0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d1),.orig_0_address0(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce1),.orig_1_q1(orig_1_q1));
stencil3d_stencil3d_Pipeline_loop_col grp_stencil3d_Pipeline_loop_col_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil3d_Pipeline_loop_col_fu_119_ap_start),.ap_done(grp_stencil3d_Pipeline_loop_col_fu_119_ap_done),.ap_idle(grp_stencil3d_Pipeline_loop_col_fu_119_ap_idle),.ap_ready(grp_stencil3d_Pipeline_loop_col_fu_119_ap_ready),.sol_1_address0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address0),.sol_1_ce0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce0),.sol_1_we0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we0),.sol_1_d0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d0),.sol_1_address1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address1),.sol_1_ce1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce1),.sol_1_we1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we1),.sol_1_d1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d1),.sol_0_address0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address0),.sol_0_ce0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce0),.sol_0_we0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we0),.sol_0_d0(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d0),.sol_0_address1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address1),.sol_0_ce1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce1),.sol_0_we1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we1),.sol_0_d1(grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d1),.i_2(i_reg_187),.orig_1_address0(grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address0),.orig_1_ce0(grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address1),.orig_1_ce1(grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_0_address0(grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address0),.orig_0_ce0(grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address1),.orig_0_ce1(grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce1),.orig_0_q1(orig_0_q1),.C_load(C_load_reg_177),.C_load_1(C_load_1_reg_182));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln36_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
            grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_loop_col_fu_119_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg <= 1'b1;
        end else if ((grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_ready == 1'b1)) begin
            grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_2_fu_52 <= 5'd1;
    end else if (((icmp_ln36_fu_143_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        i_2_fu_52 <= indvars_iv_next297_fu_149_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_1_reg_182 <= C_q0;
        C_load_reg_177 <= C_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_187 <= i_2_fu_52;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce0_local = 1'b1;
    end else begin
        C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        C_ce1_local = 1'b1;
    end else begin
        C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_stencil3d_Pipeline_loop_col_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address0;
    end else begin
        orig_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_address1;
    end else begin
        orig_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce0;
    end else begin
        orig_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_0_ce1;
    end else begin
        orig_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address0;
    end else begin
        orig_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_address1;
    end else begin
        orig_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce0;
    end else begin
        orig_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_loop_col_fu_119_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_orig_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        orig_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_orig_1_ce1;
    end else begin
        orig_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address0;
    end else begin
        sol_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_address1;
    end else begin
        sol_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce0;
    end else begin
        sol_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_ce1;
    end else begin
        sol_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d0;
    end else begin
        sol_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_d1;
    end else begin
        sol_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we0;
    end else begin
        sol_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_0_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_0_we1;
    end else begin
        sol_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address0;
    end else begin
        sol_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_address1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_address1;
    end else begin
        sol_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce0;
    end else begin
        sol_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_ce1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_ce1;
    end else begin
        sol_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d0;
    end else begin
        sol_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_d1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_d1;
    end else begin
        sol_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we0 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we0;
    end else begin
        sol_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_loop_col_fu_119_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_row_bound_height_fu_107_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_col_bound_height_fu_95_sol_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sol_1_we1 = grp_stencil3d_Pipeline_height_bound_col_fu_83_sol_1_we1;
    end else begin
        sol_1_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln36_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((grp_stencil3d_Pipeline_loop_col_fu_119_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_address0 = 64'd1;
assign C_address1 = 64'd0;
assign C_ce0 = C_ce0_local;
assign C_ce1 = C_ce1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start = grp_stencil3d_Pipeline_col_bound_height_fu_95_ap_start_reg;
assign grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start = grp_stencil3d_Pipeline_height_bound_col_fu_83_ap_start_reg;
assign grp_stencil3d_Pipeline_loop_col_fu_119_ap_start = grp_stencil3d_Pipeline_loop_col_fu_119_ap_start_reg;
assign grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start = grp_stencil3d_Pipeline_row_bound_height_fu_107_ap_start_reg;
assign icmp_ln36_fu_143_p2 = ((i_2_fu_52 == 5'd31) ? 1'b1 : 1'b0);
assign indvars_iv_next297_fu_149_p2 = (i_2_fu_52 + 5'd1);
endmodule 
