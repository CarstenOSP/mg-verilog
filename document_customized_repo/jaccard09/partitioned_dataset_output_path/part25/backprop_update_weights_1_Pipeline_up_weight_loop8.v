
module backprop_update_weights_1_Pipeline_up_weight_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,bias_norm_7);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] biases2_address0;
output   biases2_ce0;
output   biases2_we0;
output  [63:0] biases2_d0;
input  [63:0] biases2_q0;
output  [5:0] biases2_address1;
output   biases2_ce1;
output   biases2_we1;
output  [63:0] biases2_d1;
input  [63:0] biases2_q1;
input  [63:0] bias_norm_7;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_168;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_93_p3;
reg   [5:0] biases2_addr_reg_172;
reg   [5:0] biases2_addr_reg_172_pp0_iter1_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter2_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter3_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter4_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter5_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter6_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter7_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter8_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter9_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter10_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter11_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter12_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter13_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter14_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter15_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter16_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter17_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter18_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter19_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter20_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter21_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter22_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter23_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter24_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter25_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter26_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter27_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter28_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter29_reg;
reg   [5:0] biases2_addr_reg_172_pp0_iter30_reg;
reg   [5:0] biases2_addr_1_reg_177;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter1_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter2_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter3_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter4_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter5_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter6_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter7_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter8_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter9_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter10_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter11_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter12_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter13_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter14_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter15_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter16_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter17_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter18_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter19_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter20_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter21_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter22_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter23_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter24_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter25_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter26_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter27_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter28_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter29_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter30_reg;
reg   [5:0] biases2_addr_1_reg_177_pp0_iter31_reg;
reg   [63:0] biases2_load_reg_182;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] biases2_load_1_reg_187;
wire   [63:0] bitcast_ln172_fu_140_p1;
wire   [63:0] bitcast_ln172_2_fu_144_p1;
wire   [63:0] grp_fu_81_p2;
reg   [63:0] div2_reg_202;
reg   [63:0] div147_1_reg_207;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln171_fu_101_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_fu_124_p1;
reg   [6:0] i_fu_46;
wire   [6:0] add_ln171_fu_129_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    biases2_ce1_local;
reg   [5:0] biases2_address1_local;
reg    biases2_ce0_local;
reg   [5:0] biases2_address0_local;
reg    biases2_we1_local;
wire   [63:0] bitcast_ln172_1_fu_148_p1;
wire    ap_block_pp0_stage1;
reg    biases2_we0_local;
wire   [63:0] bitcast_ln172_3_fu_152_p1;
reg   [63:0] grp_fu_81_p0;
wire   [4:0] tmp_s_fu_106_p4;
wire   [5:0] or_ln3_fu_116_p3;
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
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to31;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_46 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U442(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_81_p0),.din1(bias_norm_7),.ce(1'b1),.dout(grp_fu_81_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter30_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_93_p3 == 1'd0))) begin
            i_fu_46 <= add_ln171_fu_129_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_46 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
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
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
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
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        biases2_addr_1_reg_177[5 : 1] <= zext_ln172_fu_124_p1[5 : 1];
        biases2_addr_1_reg_177_pp0_iter10_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter9_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter11_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter10_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter12_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter11_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter13_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter12_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter14_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter13_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter15_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter14_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter16_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter15_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter17_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter16_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter18_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter17_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter19_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter18_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter1_reg[5 : 1] <= biases2_addr_1_reg_177[5 : 1];
        biases2_addr_1_reg_177_pp0_iter20_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter19_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter21_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter20_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter22_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter21_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter23_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter22_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter24_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter23_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter25_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter24_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter26_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter25_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter27_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter26_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter28_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter27_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter29_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter28_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter2_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter1_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter30_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter29_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter31_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter30_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter3_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter2_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter4_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter3_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter5_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter4_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter6_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter5_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter7_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter6_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter8_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter7_reg[5 : 1];
        biases2_addr_1_reg_177_pp0_iter9_reg[5 : 1] <= biases2_addr_1_reg_177_pp0_iter8_reg[5 : 1];
        biases2_addr_reg_172 <= zext_ln171_fu_101_p1;
        biases2_addr_reg_172_pp0_iter10_reg <= biases2_addr_reg_172_pp0_iter9_reg;
        biases2_addr_reg_172_pp0_iter11_reg <= biases2_addr_reg_172_pp0_iter10_reg;
        biases2_addr_reg_172_pp0_iter12_reg <= biases2_addr_reg_172_pp0_iter11_reg;
        biases2_addr_reg_172_pp0_iter13_reg <= biases2_addr_reg_172_pp0_iter12_reg;
        biases2_addr_reg_172_pp0_iter14_reg <= biases2_addr_reg_172_pp0_iter13_reg;
        biases2_addr_reg_172_pp0_iter15_reg <= biases2_addr_reg_172_pp0_iter14_reg;
        biases2_addr_reg_172_pp0_iter16_reg <= biases2_addr_reg_172_pp0_iter15_reg;
        biases2_addr_reg_172_pp0_iter17_reg <= biases2_addr_reg_172_pp0_iter16_reg;
        biases2_addr_reg_172_pp0_iter18_reg <= biases2_addr_reg_172_pp0_iter17_reg;
        biases2_addr_reg_172_pp0_iter19_reg <= biases2_addr_reg_172_pp0_iter18_reg;
        biases2_addr_reg_172_pp0_iter1_reg <= biases2_addr_reg_172;
        biases2_addr_reg_172_pp0_iter20_reg <= biases2_addr_reg_172_pp0_iter19_reg;
        biases2_addr_reg_172_pp0_iter21_reg <= biases2_addr_reg_172_pp0_iter20_reg;
        biases2_addr_reg_172_pp0_iter22_reg <= biases2_addr_reg_172_pp0_iter21_reg;
        biases2_addr_reg_172_pp0_iter23_reg <= biases2_addr_reg_172_pp0_iter22_reg;
        biases2_addr_reg_172_pp0_iter24_reg <= biases2_addr_reg_172_pp0_iter23_reg;
        biases2_addr_reg_172_pp0_iter25_reg <= biases2_addr_reg_172_pp0_iter24_reg;
        biases2_addr_reg_172_pp0_iter26_reg <= biases2_addr_reg_172_pp0_iter25_reg;
        biases2_addr_reg_172_pp0_iter27_reg <= biases2_addr_reg_172_pp0_iter26_reg;
        biases2_addr_reg_172_pp0_iter28_reg <= biases2_addr_reg_172_pp0_iter27_reg;
        biases2_addr_reg_172_pp0_iter29_reg <= biases2_addr_reg_172_pp0_iter28_reg;
        biases2_addr_reg_172_pp0_iter2_reg <= biases2_addr_reg_172_pp0_iter1_reg;
        biases2_addr_reg_172_pp0_iter30_reg <= biases2_addr_reg_172_pp0_iter29_reg;
        biases2_addr_reg_172_pp0_iter3_reg <= biases2_addr_reg_172_pp0_iter2_reg;
        biases2_addr_reg_172_pp0_iter4_reg <= biases2_addr_reg_172_pp0_iter3_reg;
        biases2_addr_reg_172_pp0_iter5_reg <= biases2_addr_reg_172_pp0_iter4_reg;
        biases2_addr_reg_172_pp0_iter6_reg <= biases2_addr_reg_172_pp0_iter5_reg;
        biases2_addr_reg_172_pp0_iter7_reg <= biases2_addr_reg_172_pp0_iter6_reg;
        biases2_addr_reg_172_pp0_iter8_reg <= biases2_addr_reg_172_pp0_iter7_reg;
        biases2_addr_reg_172_pp0_iter9_reg <= biases2_addr_reg_172_pp0_iter8_reg;
        tmp_reg_168 <= ap_sig_allocacmp_i_2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        biases2_load_1_reg_187 <= biases2_q0;
        biases2_load_reg_182 <= biases2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter30 == 1'b1))) begin
        div147_1_reg_207 <= grp_fu_81_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter30 == 1'b1))) begin
        div2_reg_202 <= grp_fu_81_p2;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_168 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter30_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
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
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0)& (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0)& (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0_1to31 = 1'b1;
    end else begin
        ap_idle_pp0_1to31 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_46;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        biases2_address0_local = biases2_addr_1_reg_177_pp0_iter31_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        biases2_address0_local = zext_ln172_fu_124_p1;
    end else begin
        biases2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter30 == 1'b1))) begin
        biases2_address1_local = biases2_addr_reg_172_pp0_iter30_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        biases2_address1_local = zext_ln171_fu_101_p1;
    end else begin
        biases2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)))) begin
        biases2_ce0_local = 1'b1;
    end else begin
        biases2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter30 == 1'b1)))) begin
        biases2_ce1_local = 1'b1;
    end else begin
        biases2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        biases2_we0_local = 1'b1;
    end else begin
        biases2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter30 == 1'b1))) begin
        biases2_we1_local = 1'b1;
    end else begin
        biases2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            grp_fu_81_p0 = bitcast_ln172_2_fu_144_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            grp_fu_81_p0 = bitcast_ln172_fu_140_p1;
        end else begin
            grp_fu_81_p0 = 'bx;
        end
    end else begin
        grp_fu_81_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to31 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln171_fu_129_p2 = (ap_sig_allocacmp_i_2 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign biases2_address0 = biases2_address0_local;
assign biases2_address1 = biases2_address1_local;
assign biases2_ce0 = biases2_ce0_local;
assign biases2_ce1 = biases2_ce1_local;
assign biases2_d0 = bitcast_ln172_3_fu_152_p1;
assign biases2_d1 = bitcast_ln172_1_fu_148_p1;
assign biases2_we0 = biases2_we0_local;
assign biases2_we1 = biases2_we1_local;
assign bitcast_ln172_1_fu_148_p1 = div2_reg_202;
assign bitcast_ln172_2_fu_144_p1 = biases2_load_1_reg_187;
assign bitcast_ln172_3_fu_152_p1 = div147_1_reg_207;
assign bitcast_ln172_fu_140_p1 = biases2_load_reg_182;
assign or_ln3_fu_116_p3 = {{tmp_s_fu_106_p4}, {1'd1}};
assign tmp_fu_93_p3 = ap_sig_allocacmp_i_2[32'd6];
assign tmp_s_fu_106_p4 = {{ap_sig_allocacmp_i_2[5:1]}};
assign zext_ln171_fu_101_p1 = ap_sig_allocacmp_i_2;
assign zext_ln172_fu_124_p1 = or_ln3_fu_116_p3;
always @ (posedge ap_clk) begin
    biases2_addr_1_reg_177[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter1_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter2_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter3_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter4_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter5_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter6_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter7_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter8_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter9_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter10_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter11_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter12_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter13_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter14_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter15_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter16_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter17_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter18_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter19_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter20_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter21_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter22_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter23_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter24_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter25_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter26_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter27_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter28_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter29_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter30_reg[0] <= 1'b1;
    biases2_addr_1_reg_177_pp0_iter31_reg[0] <= 1'b1;
end
endmodule 
