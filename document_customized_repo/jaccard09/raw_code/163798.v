module backprop_backprop_Pipeline_VITIS_LOOP_173_16 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_address0,v18_ce0,v18_q0,v82_reload,v14_address0,v14_ce0,v14_we0,v14_d0,grp_fu_5442_p_din0,grp_fu_5442_p_din1,grp_fu_5442_p_dout0,grp_fu_5442_p_ce,grp_fu_5438_p_din0,grp_fu_5438_p_din1,grp_fu_5438_p_dout0,grp_fu_5438_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] v18_address0;
output   v18_ce0;
input  [63:0] v18_q0;
input  [63:0] v82_reload;
output  [1:0] v14_address0;
output   v14_ce0;
output   v14_we0;
output  [63:0] v14_d0;
output  [63:0] grp_fu_5442_p_din0;
output  [63:0] grp_fu_5442_p_din1;
input  [63:0] grp_fu_5442_p_dout0;
output   grp_fu_5442_p_ce;
output  [63:0] grp_fu_5438_p_din0;
output  [63:0] grp_fu_5438_p_din1;
input  [63:0] grp_fu_5438_p_dout0;
output   grp_fu_5438_p_ce;
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
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_enable_reg_pp0_iter37;
reg    ap_enable_reg_pp0_iter38;
reg    ap_enable_reg_pp0_iter39;
reg    ap_enable_reg_pp0_iter40;
reg    ap_enable_reg_pp0_iter41;
reg    ap_enable_reg_pp0_iter42;
reg    ap_enable_reg_pp0_iter43;
reg    ap_enable_reg_pp0_iter44;
reg    ap_enable_reg_pp0_iter45;
reg    ap_enable_reg_pp0_iter46;
reg    ap_enable_reg_pp0_iter47;
reg    ap_enable_reg_pp0_iter48;
reg    ap_enable_reg_pp0_iter49;
reg    ap_enable_reg_pp0_iter50;
reg    ap_enable_reg_pp0_iter51;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln173_fu_105_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln173_fu_117_p1;
reg   [63:0] zext_ln173_reg_177;
reg   [63:0] zext_ln173_reg_177_pp0_iter1_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter2_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter3_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter4_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter5_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter6_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter7_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter8_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter9_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter10_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter11_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter12_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter13_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter14_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter15_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter16_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter17_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter18_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter19_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter20_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter21_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter22_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter23_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter24_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter25_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter26_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter27_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter28_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter29_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter30_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter31_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter32_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter33_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter34_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter35_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter36_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter37_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter38_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter39_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter40_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter41_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter42_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter43_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter44_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter45_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter46_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter47_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter48_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter49_reg;
reg   [63:0] zext_ln173_reg_177_pp0_iter50_reg;
reg   [63:0] v89_reg_187;
wire   [63:0] v90_fu_156_p1;
reg   [63:0] v91_reg_197;
reg   [63:0] v92_reg_202;
wire    ap_block_pp0_stage0;
reg   [1:0] v88_fu_52;
wire   [1:0] add_ln173_fu_111_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v88_1;
reg    v18_ce0_local;
reg    v14_we0_local;
reg    v14_ce0_local;
wire   [63:0] bitcast_ln175_fu_127_p1;
wire   [0:0] bit_sel4_fu_130_p3;
wire   [0:0] xor_ln175_fu_138_p2;
wire   [62:0] trunc_ln175_fu_144_p1;
wire   [63:0] xor_ln4_fu_148_p3;
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
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg    ap_loop_exit_ready_pp0_iter37_reg;
reg    ap_loop_exit_ready_pp0_iter38_reg;
reg    ap_loop_exit_ready_pp0_iter39_reg;
reg    ap_loop_exit_ready_pp0_iter40_reg;
reg    ap_loop_exit_ready_pp0_iter41_reg;
reg    ap_loop_exit_ready_pp0_iter42_reg;
reg    ap_loop_exit_ready_pp0_iter43_reg;
reg    ap_loop_exit_ready_pp0_iter44_reg;
reg    ap_loop_exit_ready_pp0_iter45_reg;
reg    ap_loop_exit_ready_pp0_iter46_reg;
reg    ap_loop_exit_ready_pp0_iter47_reg;
reg    ap_loop_exit_ready_pp0_iter48_reg;
reg    ap_loop_exit_ready_pp0_iter49_reg;
reg    ap_loop_exit_ready_pp0_iter50_reg;
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
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 ap_enable_reg_pp0_iter37 = 1'b0;
#0 ap_enable_reg_pp0_iter38 = 1'b0;
#0 ap_enable_reg_pp0_iter39 = 1'b0;
#0 ap_enable_reg_pp0_iter40 = 1'b0;
#0 ap_enable_reg_pp0_iter41 = 1'b0;
#0 ap_enable_reg_pp0_iter42 = 1'b0;
#0 ap_enable_reg_pp0_iter43 = 1'b0;
#0 ap_enable_reg_pp0_iter44 = 1'b0;
#0 ap_enable_reg_pp0_iter45 = 1'b0;
#0 ap_enable_reg_pp0_iter46 = 1'b0;
#0 ap_enable_reg_pp0_iter47 = 1'b0;
#0 ap_enable_reg_pp0_iter48 = 1'b0;
#0 ap_enable_reg_pp0_iter49 = 1'b0;
#0 ap_enable_reg_pp0_iter50 = 1'b0;
#0 ap_enable_reg_pp0_iter51 = 1'b0;
#0 v88_fu_52 = 2'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter50_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter37 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter37 <= ap_enable_reg_pp0_iter36;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter38 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter38 <= ap_enable_reg_pp0_iter37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter39 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter39 <= ap_enable_reg_pp0_iter38;
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
        ap_enable_reg_pp0_iter40 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter40 <= ap_enable_reg_pp0_iter39;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter41 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter41 <= ap_enable_reg_pp0_iter40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter42 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter42 <= ap_enable_reg_pp0_iter41;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter43 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter43 <= ap_enable_reg_pp0_iter42;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter44 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter44 <= ap_enable_reg_pp0_iter43;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter45 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter45 <= ap_enable_reg_pp0_iter44;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter46 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter46 <= ap_enable_reg_pp0_iter45;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter47 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter47 <= ap_enable_reg_pp0_iter46;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter48 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter48 <= ap_enable_reg_pp0_iter47;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter49 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter49 <= ap_enable_reg_pp0_iter48;
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
        ap_enable_reg_pp0_iter50 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter50 <= ap_enable_reg_pp0_iter49;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter51 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter51 <= ap_enable_reg_pp0_iter50;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln173_fu_105_p2 == 1'd0))) begin
            v88_fu_52 <= add_ln173_fu_111_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v88_fu_52 <= 2'd0;
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
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
        ap_loop_exit_ready_pp0_iter37_reg <= ap_loop_exit_ready_pp0_iter36_reg;
        ap_loop_exit_ready_pp0_iter38_reg <= ap_loop_exit_ready_pp0_iter37_reg;
        ap_loop_exit_ready_pp0_iter39_reg <= ap_loop_exit_ready_pp0_iter38_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter40_reg <= ap_loop_exit_ready_pp0_iter39_reg;
        ap_loop_exit_ready_pp0_iter41_reg <= ap_loop_exit_ready_pp0_iter40_reg;
        ap_loop_exit_ready_pp0_iter42_reg <= ap_loop_exit_ready_pp0_iter41_reg;
        ap_loop_exit_ready_pp0_iter43_reg <= ap_loop_exit_ready_pp0_iter42_reg;
        ap_loop_exit_ready_pp0_iter44_reg <= ap_loop_exit_ready_pp0_iter43_reg;
        ap_loop_exit_ready_pp0_iter45_reg <= ap_loop_exit_ready_pp0_iter44_reg;
        ap_loop_exit_ready_pp0_iter46_reg <= ap_loop_exit_ready_pp0_iter45_reg;
        ap_loop_exit_ready_pp0_iter47_reg <= ap_loop_exit_ready_pp0_iter46_reg;
        ap_loop_exit_ready_pp0_iter48_reg <= ap_loop_exit_ready_pp0_iter47_reg;
        ap_loop_exit_ready_pp0_iter49_reg <= ap_loop_exit_ready_pp0_iter48_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter50_reg <= ap_loop_exit_ready_pp0_iter49_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v91_reg_197 <= grp_fu_5438_p_dout0;
        v92_reg_202 <= grp_fu_5442_p_dout0;
        zext_ln173_reg_177_pp0_iter10_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter9_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter11_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter10_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter12_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter11_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter13_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter12_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter14_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter13_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter15_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter14_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter16_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter15_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter17_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter16_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter18_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter17_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter19_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter18_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter20_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter19_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter21_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter20_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter22_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter21_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter23_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter22_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter24_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter23_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter25_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter24_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter26_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter25_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter27_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter26_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter28_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter27_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter29_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter28_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter2_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter1_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter30_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter29_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter31_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter30_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter32_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter31_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter33_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter32_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter34_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter33_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter35_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter34_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter36_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter35_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter37_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter36_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter38_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter37_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter39_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter38_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter3_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter2_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter40_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter39_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter41_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter40_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter42_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter41_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter43_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter42_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter44_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter43_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter45_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter44_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter46_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter45_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter47_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter46_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter48_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter47_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter49_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter48_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter4_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter3_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter50_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter49_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter5_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter4_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter6_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter5_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter7_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter6_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter8_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter7_reg[1 : 0];
        zext_ln173_reg_177_pp0_iter9_reg[1 : 0] <= zext_ln173_reg_177_pp0_iter8_reg[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v89_reg_187 <= v18_q0;
        zext_ln173_reg_177[1 : 0] <= zext_ln173_fu_117_p1[1 : 0];
        zext_ln173_reg_177_pp0_iter1_reg[1 : 0] <= zext_ln173_reg_177[1 : 0];
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln173_fu_105_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter50_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter51 == 1'b0)& (ap_enable_reg_pp0_iter50 == 1'b0) & (ap_enable_reg_pp0_iter49 == 1'b0) & (ap_enable_reg_pp0_iter48 == 1'b0) & (ap_enable_reg_pp0_iter47 == 1'b0) & (ap_enable_reg_pp0_iter46 == 1'b0) & (ap_enable_reg_pp0_iter45 == 1'b0) & (ap_enable_reg_pp0_iter44 == 1'b0) & (ap_enable_reg_pp0_iter43 == 1'b0) & (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
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
        ap_sig_allocacmp_v88_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v88_1 = v88_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter51 == 1'b1))) begin
        v14_ce0_local = 1'b1;
    end else begin
        v14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter51 == 1'b1))) begin
        v14_we0_local = 1'b1;
    end else begin
        v14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v18_ce0_local = 1'b1;
    end else begin
        v18_ce0_local = 1'b0;
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
assign add_ln173_fu_111_p2 = (ap_sig_allocacmp_v88_1 + 2'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel4_fu_130_p3 = bitcast_ln175_fu_127_p1[64'd63];
assign bitcast_ln175_fu_127_p1 = v89_reg_187;
assign grp_fu_5438_p_ce = 1'b1;
assign grp_fu_5438_p_din0 = 64'd0;
assign grp_fu_5438_p_din1 = v90_fu_156_p1;
assign grp_fu_5442_p_ce = 1'b1;
assign grp_fu_5442_p_din0 = v91_reg_197;
assign grp_fu_5442_p_din1 = v82_reload;
assign icmp_ln173_fu_105_p2 = ((ap_sig_allocacmp_v88_1 == 2'd3) ? 1'b1 : 1'b0);
assign trunc_ln175_fu_144_p1 = bitcast_ln175_fu_127_p1[62:0];
assign v14_address0 = zext_ln173_reg_177_pp0_iter50_reg;
assign v14_ce0 = v14_ce0_local;
assign v14_d0 = v92_reg_202;
assign v14_we0 = v14_we0_local;
assign v18_address0 = zext_ln173_fu_117_p1;
assign v18_ce0 = v18_ce0_local;
assign v90_fu_156_p1 = xor_ln4_fu_148_p3;
assign xor_ln175_fu_138_p2 = (bit_sel4_fu_130_p3 ^ 1'd1);
assign xor_ln4_fu_148_p3 = {{xor_ln175_fu_138_p2}, {trunc_ln175_fu_144_p1}};
assign zext_ln173_fu_117_p1 = ap_sig_allocacmp_v88_1;
always @ (posedge ap_clk) begin
    zext_ln173_reg_177[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter1_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter2_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter3_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter4_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter5_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter6_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter7_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter8_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter9_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter10_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter11_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter12_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter13_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter14_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter15_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter16_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter17_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter18_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter19_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter20_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter21_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter22_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter23_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter24_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter25_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter26_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter27_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter28_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter29_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter30_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter31_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter32_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter33_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter34_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter35_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter36_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter37_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter38_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter39_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter40_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter41_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter42_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter43_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter44_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter45_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter46_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter47_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter48_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter49_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    zext_ln173_reg_177_pp0_iter50_reg[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
end
endmodule 