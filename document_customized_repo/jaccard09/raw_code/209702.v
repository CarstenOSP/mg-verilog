module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v22,v3_address0,v3_ce0,v3_we0,v3_d0,grp_fu_1923_p_din0,grp_fu_1923_p_din1,grp_fu_1923_p_dout0,grp_fu_1923_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [12:0] v5;
output  [21:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
input  [31:0] v22;
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [31:0] grp_fu_1923_p_din0;
output  [31:0] grp_fu_1923_p_din1;
input  [31:0] grp_fu_1923_p_dout0;
output   grp_fu_1923_p_ce;
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
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln47_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v19_5_reg_207;
reg   [10:0] v19_5_reg_207_pp0_iter1_reg;
reg   [10:0] v19_5_reg_207_pp0_iter2_reg;
reg   [10:0] v19_5_reg_207_pp0_iter3_reg;
reg   [10:0] v19_5_reg_207_pp0_iter4_reg;
reg   [10:0] v19_5_reg_207_pp0_iter5_reg;
reg   [10:0] v19_5_reg_207_pp0_iter6_reg;
reg   [10:0] v19_5_reg_207_pp0_iter7_reg;
reg   [10:0] v19_5_reg_207_pp0_iter8_reg;
reg   [10:0] v19_5_reg_207_pp0_iter9_reg;
reg   [10:0] v19_5_reg_207_pp0_iter10_reg;
reg   [10:0] v19_5_reg_207_pp0_iter11_reg;
reg   [10:0] v19_5_reg_207_pp0_iter12_reg;
reg   [10:0] v19_5_reg_207_pp0_iter13_reg;
reg   [10:0] v19_5_reg_207_pp0_iter14_reg;
reg   [10:0] v19_5_reg_207_pp0_iter15_reg;
reg   [10:0] v19_5_reg_207_pp0_iter16_reg;
reg   [10:0] v19_5_reg_207_pp0_iter17_reg;
reg   [10:0] v19_5_reg_207_pp0_iter18_reg;
reg   [10:0] v19_5_reg_207_pp0_iter19_reg;
reg   [10:0] v19_5_reg_207_pp0_iter20_reg;
reg   [10:0] v19_5_reg_207_pp0_iter21_reg;
reg   [10:0] v19_5_reg_207_pp0_iter22_reg;
reg   [10:0] v19_5_reg_207_pp0_iter23_reg;
reg   [10:0] v19_5_reg_207_pp0_iter24_reg;
reg   [10:0] v19_5_reg_207_pp0_iter25_reg;
reg   [10:0] v19_5_reg_207_pp0_iter26_reg;
reg   [10:0] v19_5_reg_207_pp0_iter27_reg;
reg   [10:0] v19_5_reg_207_pp0_iter28_reg;
reg   [10:0] v19_5_reg_207_pp0_iter29_reg;
reg   [10:0] v19_5_reg_207_pp0_iter30_reg;
reg   [10:0] v19_5_reg_207_pp0_iter31_reg;
wire   [22:0] add_ln1_fu_143_p3;
wire   [0:0] icmp_ln51_fu_163_p2;
reg   [0:0] icmp_ln51_reg_221;
reg   [0:0] icmp_ln51_reg_221_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter6_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter7_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter8_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter9_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter10_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter11_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter12_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter13_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter14_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter15_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter16_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter17_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter18_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter19_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter20_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter21_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter22_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter23_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter24_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter25_reg;
reg   [0:0] icmp_ln51_reg_221_pp0_iter26_reg;
wire   [31:0] select_ln51_fu_180_p3;
reg   [31:0] select_ln51_reg_236;
wire   [31:0] v23_fu_187_p1;
reg   [31:0] v24_reg_246;
wire   [63:0] zext_ln51_fu_174_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_191_p1;
reg   [10:0] v19_fu_54;
wire   [10:0] add_ln47_fu_127_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_5;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
wire   [11:0] tmp_1_fu_133_p4;
wire   [22:0] add_ln51_fu_157_p2;
wire   [22:0] grp_fu_151_p2;
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
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 v19_fu_54 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(add_ln1_fu_143_p3),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_151_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
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
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln47_fu_121_p2 == 1'd0))) begin
            v19_fu_54 <= add_ln47_fu_127_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_54 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln51_reg_221_pp0_iter10_reg <= icmp_ln51_reg_221_pp0_iter9_reg;
        icmp_ln51_reg_221_pp0_iter11_reg <= icmp_ln51_reg_221_pp0_iter10_reg;
        icmp_ln51_reg_221_pp0_iter12_reg <= icmp_ln51_reg_221_pp0_iter11_reg;
        icmp_ln51_reg_221_pp0_iter13_reg <= icmp_ln51_reg_221_pp0_iter12_reg;
        icmp_ln51_reg_221_pp0_iter14_reg <= icmp_ln51_reg_221_pp0_iter13_reg;
        icmp_ln51_reg_221_pp0_iter15_reg <= icmp_ln51_reg_221_pp0_iter14_reg;
        icmp_ln51_reg_221_pp0_iter16_reg <= icmp_ln51_reg_221_pp0_iter15_reg;
        icmp_ln51_reg_221_pp0_iter17_reg <= icmp_ln51_reg_221_pp0_iter16_reg;
        icmp_ln51_reg_221_pp0_iter18_reg <= icmp_ln51_reg_221_pp0_iter17_reg;
        icmp_ln51_reg_221_pp0_iter19_reg <= icmp_ln51_reg_221_pp0_iter18_reg;
        icmp_ln51_reg_221_pp0_iter20_reg <= icmp_ln51_reg_221_pp0_iter19_reg;
        icmp_ln51_reg_221_pp0_iter21_reg <= icmp_ln51_reg_221_pp0_iter20_reg;
        icmp_ln51_reg_221_pp0_iter22_reg <= icmp_ln51_reg_221_pp0_iter21_reg;
        icmp_ln51_reg_221_pp0_iter23_reg <= icmp_ln51_reg_221_pp0_iter22_reg;
        icmp_ln51_reg_221_pp0_iter24_reg <= icmp_ln51_reg_221_pp0_iter23_reg;
        icmp_ln51_reg_221_pp0_iter25_reg <= icmp_ln51_reg_221_pp0_iter24_reg;
        icmp_ln51_reg_221_pp0_iter26_reg <= icmp_ln51_reg_221_pp0_iter25_reg;
        icmp_ln51_reg_221_pp0_iter2_reg <= icmp_ln51_reg_221_pp0_iter1_reg;
        icmp_ln51_reg_221_pp0_iter3_reg <= icmp_ln51_reg_221_pp0_iter2_reg;
        icmp_ln51_reg_221_pp0_iter4_reg <= icmp_ln51_reg_221_pp0_iter3_reg;
        icmp_ln51_reg_221_pp0_iter5_reg <= icmp_ln51_reg_221_pp0_iter4_reg;
        icmp_ln51_reg_221_pp0_iter6_reg <= icmp_ln51_reg_221_pp0_iter5_reg;
        icmp_ln51_reg_221_pp0_iter7_reg <= icmp_ln51_reg_221_pp0_iter6_reg;
        icmp_ln51_reg_221_pp0_iter8_reg <= icmp_ln51_reg_221_pp0_iter7_reg;
        icmp_ln51_reg_221_pp0_iter9_reg <= icmp_ln51_reg_221_pp0_iter8_reg;
        select_ln51_reg_236 <= select_ln51_fu_180_p3;
        v19_5_reg_207_pp0_iter10_reg <= v19_5_reg_207_pp0_iter9_reg;
        v19_5_reg_207_pp0_iter11_reg <= v19_5_reg_207_pp0_iter10_reg;
        v19_5_reg_207_pp0_iter12_reg <= v19_5_reg_207_pp0_iter11_reg;
        v19_5_reg_207_pp0_iter13_reg <= v19_5_reg_207_pp0_iter12_reg;
        v19_5_reg_207_pp0_iter14_reg <= v19_5_reg_207_pp0_iter13_reg;
        v19_5_reg_207_pp0_iter15_reg <= v19_5_reg_207_pp0_iter14_reg;
        v19_5_reg_207_pp0_iter16_reg <= v19_5_reg_207_pp0_iter15_reg;
        v19_5_reg_207_pp0_iter17_reg <= v19_5_reg_207_pp0_iter16_reg;
        v19_5_reg_207_pp0_iter18_reg <= v19_5_reg_207_pp0_iter17_reg;
        v19_5_reg_207_pp0_iter19_reg <= v19_5_reg_207_pp0_iter18_reg;
        v19_5_reg_207_pp0_iter20_reg <= v19_5_reg_207_pp0_iter19_reg;
        v19_5_reg_207_pp0_iter21_reg <= v19_5_reg_207_pp0_iter20_reg;
        v19_5_reg_207_pp0_iter22_reg <= v19_5_reg_207_pp0_iter21_reg;
        v19_5_reg_207_pp0_iter23_reg <= v19_5_reg_207_pp0_iter22_reg;
        v19_5_reg_207_pp0_iter24_reg <= v19_5_reg_207_pp0_iter23_reg;
        v19_5_reg_207_pp0_iter25_reg <= v19_5_reg_207_pp0_iter24_reg;
        v19_5_reg_207_pp0_iter26_reg <= v19_5_reg_207_pp0_iter25_reg;
        v19_5_reg_207_pp0_iter27_reg <= v19_5_reg_207_pp0_iter26_reg;
        v19_5_reg_207_pp0_iter28_reg <= v19_5_reg_207_pp0_iter27_reg;
        v19_5_reg_207_pp0_iter29_reg <= v19_5_reg_207_pp0_iter28_reg;
        v19_5_reg_207_pp0_iter2_reg <= v19_5_reg_207_pp0_iter1_reg;
        v19_5_reg_207_pp0_iter30_reg <= v19_5_reg_207_pp0_iter29_reg;
        v19_5_reg_207_pp0_iter31_reg <= v19_5_reg_207_pp0_iter30_reg;
        v19_5_reg_207_pp0_iter3_reg <= v19_5_reg_207_pp0_iter2_reg;
        v19_5_reg_207_pp0_iter4_reg <= v19_5_reg_207_pp0_iter3_reg;
        v19_5_reg_207_pp0_iter5_reg <= v19_5_reg_207_pp0_iter4_reg;
        v19_5_reg_207_pp0_iter6_reg <= v19_5_reg_207_pp0_iter5_reg;
        v19_5_reg_207_pp0_iter7_reg <= v19_5_reg_207_pp0_iter6_reg;
        v19_5_reg_207_pp0_iter8_reg <= v19_5_reg_207_pp0_iter7_reg;
        v19_5_reg_207_pp0_iter9_reg <= v19_5_reg_207_pp0_iter8_reg;
        v24_reg_246 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln51_reg_221 <= icmp_ln51_fu_163_p2;
        icmp_ln51_reg_221_pp0_iter1_reg <= icmp_ln51_reg_221;
        v19_5_reg_207 <= ap_sig_allocacmp_v19_5;
        v19_5_reg_207_pp0_iter1_reg <= v19_5_reg_207;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln47_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0)& (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v19_5 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_5 = v19_fu_54;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln1_fu_143_p3 = {{tmp_1_fu_133_p4}, {ap_sig_allocacmp_v19_5}};
assign add_ln47_fu_127_p2 = (ap_sig_allocacmp_v19_5 + 11'd1);
assign add_ln51_fu_157_p2 = ($signed(add_ln1_fu_143_p3) + $signed(23'd6084608));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1923_p_ce = 1'b1;
assign grp_fu_1923_p_din0 = v22;
assign grp_fu_1923_p_din1 = v23_fu_187_p1;
assign icmp_ln47_fu_121_p2 = ((ap_sig_allocacmp_v19_5 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_163_p2 = ((add_ln51_fu_157_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign select_ln51_fu_180_p3 = ((icmp_ln51_reg_221_pp0_iter26_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign tmp_1_fu_133_p4 = {{v5[12:1]}};
assign v0_0_address0 = zext_ln51_fu_174_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln51_fu_174_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v23_fu_187_p1 = select_ln51_reg_236;
assign v3_address0 = zext_ln47_fu_191_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_246;
assign v3_we0 = v3_we0_local;
assign zext_ln47_fu_191_p1 = v19_5_reg_207_pp0_iter31_reg;
assign zext_ln51_fu_174_p1 = grp_fu_151_p2;
endmodule 