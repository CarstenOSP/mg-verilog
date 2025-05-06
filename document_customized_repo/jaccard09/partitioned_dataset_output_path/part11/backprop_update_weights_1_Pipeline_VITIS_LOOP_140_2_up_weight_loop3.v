
module backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,norm_1,grp_fu_585_p_din0,grp_fu_585_p_din1,grp_fu_585_p_dout0,grp_fu_585_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_585_p_din0;
output  [63:0] grp_fu_585_p_din1;
input  [63:0] grp_fu_585_p_dout0;
output   grp_fu_585_p_ce;
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
reg    ap_enable_reg_pp0_iter32;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln140_reg_281;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln140_fu_125_p2;
reg   [0:0] icmp_ln140_reg_281_pp0_iter1_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter2_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter3_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter4_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter5_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter6_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter7_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter8_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter9_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter10_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter11_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter12_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter13_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter14_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter15_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter16_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter17_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter18_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter19_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter20_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter21_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter22_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter23_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter24_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter25_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter26_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter27_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter28_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter29_reg;
reg   [0:0] icmp_ln140_reg_281_pp0_iter30_reg;
reg   [3:0] i_2_load_reg_285;
wire   [3:0] add_ln140_1_fu_140_p2;
reg   [3:0] add_ln140_1_reg_290;
wire   [6:0] select_ln121_fu_162_p3;
reg   [6:0] select_ln121_reg_295;
wire    ap_block_pp0_stage1_11001;
reg   [9:0] weights1_addr_reg_300;
reg   [9:0] weights1_addr_reg_300_pp0_iter1_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter2_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter3_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter4_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter5_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter6_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter7_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter8_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter9_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter10_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter11_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter12_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter13_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter14_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter15_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter16_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter17_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter18_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter19_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter20_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter21_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter22_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter23_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter24_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter25_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter26_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter27_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter28_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter29_reg;
reg   [9:0] weights1_addr_reg_300_pp0_iter30_reg;
reg   [9:0] weights1_addr_1_reg_305;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter1_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter2_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter3_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter4_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter5_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter6_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter7_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter8_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter9_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter10_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter11_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter12_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter13_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter14_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter15_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter16_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter17_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter18_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter19_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter20_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter21_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter22_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter23_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter24_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter25_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter26_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter27_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter28_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter29_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter30_reg;
reg   [9:0] weights1_addr_1_reg_305_pp0_iter31_reg;
reg   [63:0] weights1_load_reg_310;
reg   [63:0] weights1_load_1_reg_315;
wire   [63:0] bitcast_ln142_fu_239_p1;
wire   [63:0] bitcast_ln142_2_fu_243_p1;
reg   [63:0] div_reg_330;
reg   [63:0] div_1_reg_335;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln142_fu_194_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_219_p1;
reg   [6:0] j_fu_60;
wire   [6:0] add_ln141_fu_229_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_64;
wire   [3:0] select_ln140_fu_170_p3;
reg   [3:0] ap_sig_allocacmp_i_2_load;
wire    ap_block_pp0_stage0;
reg   [8:0] indvar_flatten6_fu_68;
wire   [8:0] add_ln140_fu_131_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we1_local;
wire   [63:0] bitcast_ln142_1_fu_247_p1;
reg    weights1_we0_local;
wire   [63:0] bitcast_ln142_3_fu_251_p1;
reg   [63:0] grp_fu_103_p0;
wire   [0:0] tmp_fu_154_p3;
wire   [9:0] zext_ln141_fu_184_p1;
wire   [9:0] tmp_s_fu_176_p3;
wire   [9:0] add_ln142_fu_188_p2;
wire   [4:0] tmp_8_fu_199_p4;
wire   [9:0] add_ln142_1_fu_209_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter31_stage0;
reg    ap_idle_pp0_0to30;
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
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to32;
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
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_60 = 7'd0;
#0 i_2_fu_64 = 4'd0;
#0 indvar_flatten6_fu_68 = 9'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
            ap_enable_reg_pp0_iter32 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
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
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter29_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter30_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter31_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_2_fu_64 <= 4'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln140_reg_281 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        i_2_fu_64 <= select_ln140_fu_170_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_125_p2 == 1'd0))) begin
            indvar_flatten6_fu_68 <= add_ln140_fu_131_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_68 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_60 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_60 <= add_ln141_fu_229_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln140_1_reg_290 <= add_ln140_1_fu_140_p2;
        i_2_load_reg_285 <= ap_sig_allocacmp_i_2_load;
        icmp_ln140_reg_281 <= icmp_ln140_fu_125_p2;
        icmp_ln140_reg_281_pp0_iter10_reg <= icmp_ln140_reg_281_pp0_iter9_reg;
        icmp_ln140_reg_281_pp0_iter11_reg <= icmp_ln140_reg_281_pp0_iter10_reg;
        icmp_ln140_reg_281_pp0_iter12_reg <= icmp_ln140_reg_281_pp0_iter11_reg;
        icmp_ln140_reg_281_pp0_iter13_reg <= icmp_ln140_reg_281_pp0_iter12_reg;
        icmp_ln140_reg_281_pp0_iter14_reg <= icmp_ln140_reg_281_pp0_iter13_reg;
        icmp_ln140_reg_281_pp0_iter15_reg <= icmp_ln140_reg_281_pp0_iter14_reg;
        icmp_ln140_reg_281_pp0_iter16_reg <= icmp_ln140_reg_281_pp0_iter15_reg;
        icmp_ln140_reg_281_pp0_iter17_reg <= icmp_ln140_reg_281_pp0_iter16_reg;
        icmp_ln140_reg_281_pp0_iter18_reg <= icmp_ln140_reg_281_pp0_iter17_reg;
        icmp_ln140_reg_281_pp0_iter19_reg <= icmp_ln140_reg_281_pp0_iter18_reg;
        icmp_ln140_reg_281_pp0_iter1_reg <= icmp_ln140_reg_281;
        icmp_ln140_reg_281_pp0_iter20_reg <= icmp_ln140_reg_281_pp0_iter19_reg;
        icmp_ln140_reg_281_pp0_iter21_reg <= icmp_ln140_reg_281_pp0_iter20_reg;
        icmp_ln140_reg_281_pp0_iter22_reg <= icmp_ln140_reg_281_pp0_iter21_reg;
        icmp_ln140_reg_281_pp0_iter23_reg <= icmp_ln140_reg_281_pp0_iter22_reg;
        icmp_ln140_reg_281_pp0_iter24_reg <= icmp_ln140_reg_281_pp0_iter23_reg;
        icmp_ln140_reg_281_pp0_iter25_reg <= icmp_ln140_reg_281_pp0_iter24_reg;
        icmp_ln140_reg_281_pp0_iter26_reg <= icmp_ln140_reg_281_pp0_iter25_reg;
        icmp_ln140_reg_281_pp0_iter27_reg <= icmp_ln140_reg_281_pp0_iter26_reg;
        icmp_ln140_reg_281_pp0_iter28_reg <= icmp_ln140_reg_281_pp0_iter27_reg;
        icmp_ln140_reg_281_pp0_iter29_reg <= icmp_ln140_reg_281_pp0_iter28_reg;
        icmp_ln140_reg_281_pp0_iter2_reg <= icmp_ln140_reg_281_pp0_iter1_reg;
        icmp_ln140_reg_281_pp0_iter30_reg <= icmp_ln140_reg_281_pp0_iter29_reg;
        icmp_ln140_reg_281_pp0_iter3_reg <= icmp_ln140_reg_281_pp0_iter2_reg;
        icmp_ln140_reg_281_pp0_iter4_reg <= icmp_ln140_reg_281_pp0_iter3_reg;
        icmp_ln140_reg_281_pp0_iter5_reg <= icmp_ln140_reg_281_pp0_iter4_reg;
        icmp_ln140_reg_281_pp0_iter6_reg <= icmp_ln140_reg_281_pp0_iter5_reg;
        icmp_ln140_reg_281_pp0_iter7_reg <= icmp_ln140_reg_281_pp0_iter6_reg;
        icmp_ln140_reg_281_pp0_iter8_reg <= icmp_ln140_reg_281_pp0_iter7_reg;
        icmp_ln140_reg_281_pp0_iter9_reg <= icmp_ln140_reg_281_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        div_1_reg_335 <= grp_fu_585_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter30 == 1'b1))) begin
        div_reg_330 <= grp_fu_585_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        select_ln121_reg_295 <= select_ln121_fu_162_p3;
        weights1_addr_1_reg_305[9 : 1] <= zext_ln142_1_fu_219_p1[9 : 1];
        weights1_addr_1_reg_305_pp0_iter10_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter9_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter11_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter10_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter12_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter11_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter13_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter12_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter14_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter13_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter15_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter14_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter16_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter15_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter17_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter16_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter18_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter17_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter19_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter18_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter1_reg[9 : 1] <= weights1_addr_1_reg_305[9 : 1];
        weights1_addr_1_reg_305_pp0_iter20_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter19_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter21_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter20_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter22_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter21_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter23_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter22_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter24_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter23_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter25_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter24_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter26_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter25_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter27_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter26_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter28_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter27_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter29_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter28_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter2_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter1_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter30_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter29_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter31_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter30_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter3_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter2_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter4_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter3_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter5_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter4_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter6_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter5_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter7_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter6_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter8_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter7_reg[9 : 1];
        weights1_addr_1_reg_305_pp0_iter9_reg[9 : 1] <= weights1_addr_1_reg_305_pp0_iter8_reg[9 : 1];
        weights1_addr_reg_300 <= zext_ln142_fu_194_p1;
        weights1_addr_reg_300_pp0_iter10_reg <= weights1_addr_reg_300_pp0_iter9_reg;
        weights1_addr_reg_300_pp0_iter11_reg <= weights1_addr_reg_300_pp0_iter10_reg;
        weights1_addr_reg_300_pp0_iter12_reg <= weights1_addr_reg_300_pp0_iter11_reg;
        weights1_addr_reg_300_pp0_iter13_reg <= weights1_addr_reg_300_pp0_iter12_reg;
        weights1_addr_reg_300_pp0_iter14_reg <= weights1_addr_reg_300_pp0_iter13_reg;
        weights1_addr_reg_300_pp0_iter15_reg <= weights1_addr_reg_300_pp0_iter14_reg;
        weights1_addr_reg_300_pp0_iter16_reg <= weights1_addr_reg_300_pp0_iter15_reg;
        weights1_addr_reg_300_pp0_iter17_reg <= weights1_addr_reg_300_pp0_iter16_reg;
        weights1_addr_reg_300_pp0_iter18_reg <= weights1_addr_reg_300_pp0_iter17_reg;
        weights1_addr_reg_300_pp0_iter19_reg <= weights1_addr_reg_300_pp0_iter18_reg;
        weights1_addr_reg_300_pp0_iter1_reg <= weights1_addr_reg_300;
        weights1_addr_reg_300_pp0_iter20_reg <= weights1_addr_reg_300_pp0_iter19_reg;
        weights1_addr_reg_300_pp0_iter21_reg <= weights1_addr_reg_300_pp0_iter20_reg;
        weights1_addr_reg_300_pp0_iter22_reg <= weights1_addr_reg_300_pp0_iter21_reg;
        weights1_addr_reg_300_pp0_iter23_reg <= weights1_addr_reg_300_pp0_iter22_reg;
        weights1_addr_reg_300_pp0_iter24_reg <= weights1_addr_reg_300_pp0_iter23_reg;
        weights1_addr_reg_300_pp0_iter25_reg <= weights1_addr_reg_300_pp0_iter24_reg;
        weights1_addr_reg_300_pp0_iter26_reg <= weights1_addr_reg_300_pp0_iter25_reg;
        weights1_addr_reg_300_pp0_iter27_reg <= weights1_addr_reg_300_pp0_iter26_reg;
        weights1_addr_reg_300_pp0_iter28_reg <= weights1_addr_reg_300_pp0_iter27_reg;
        weights1_addr_reg_300_pp0_iter29_reg <= weights1_addr_reg_300_pp0_iter28_reg;
        weights1_addr_reg_300_pp0_iter2_reg <= weights1_addr_reg_300_pp0_iter1_reg;
        weights1_addr_reg_300_pp0_iter30_reg <= weights1_addr_reg_300_pp0_iter29_reg;
        weights1_addr_reg_300_pp0_iter3_reg <= weights1_addr_reg_300_pp0_iter2_reg;
        weights1_addr_reg_300_pp0_iter4_reg <= weights1_addr_reg_300_pp0_iter3_reg;
        weights1_addr_reg_300_pp0_iter5_reg <= weights1_addr_reg_300_pp0_iter4_reg;
        weights1_addr_reg_300_pp0_iter6_reg <= weights1_addr_reg_300_pp0_iter5_reg;
        weights1_addr_reg_300_pp0_iter7_reg <= weights1_addr_reg_300_pp0_iter6_reg;
        weights1_addr_reg_300_pp0_iter8_reg <= weights1_addr_reg_300_pp0_iter7_reg;
        weights1_addr_reg_300_pp0_iter9_reg <= weights1_addr_reg_300_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights1_load_1_reg_315 <= weights1_q0;
        weights1_load_reg_310 <= weights1_q1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln140_reg_281 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_281_pp0_iter30_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        ap_condition_exit_pp0_iter31_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter31_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0)& (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0)& (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0_0to30 = 1'b1;
    end else begin
        ap_idle_pp0_0to30 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0)& (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0_1to32 = 1'b1;
    end else begin
        ap_idle_pp0_1to32 = 1'b0;
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
        ap_sig_allocacmp_i_2_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_64;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten6_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_68;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_103_p0 = bitcast_ln142_2_fu_243_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_103_p0 = bitcast_ln142_fu_239_p1;
    end else begin
        grp_fu_103_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_address0_local = weights1_addr_1_reg_305_pp0_iter31_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_address0_local = zext_ln142_1_fu_219_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_address1_local = weights1_addr_reg_300_pp0_iter30_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_address1_local = zext_ln142_fu_194_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to32 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln140_1_fu_140_p2 = (ap_sig_allocacmp_i_2_load + 4'd1);
assign add_ln140_fu_131_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 9'd1);
assign add_ln141_fu_229_p2 = (select_ln121_reg_295 + 7'd2);
assign add_ln142_1_fu_209_p4 = {{{select_ln140_fu_170_p3}, {tmp_8_fu_199_p4}}, {1'd1}};
assign add_ln142_fu_188_p2 = (zext_ln141_fu_184_p1 + tmp_s_fu_176_p3);
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
assign bitcast_ln142_1_fu_247_p1 = div_reg_330;
assign bitcast_ln142_2_fu_243_p1 = weights1_load_1_reg_315;
assign bitcast_ln142_3_fu_251_p1 = div_1_reg_335;
assign bitcast_ln142_fu_239_p1 = weights1_load_reg_310;
assign grp_fu_585_p_ce = 1'b1;
assign grp_fu_585_p_din0 = grp_fu_103_p0;
assign grp_fu_585_p_din1 = norm_1;
assign icmp_ln140_fu_125_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 9'd416) ? 1'b1 : 1'b0);
assign select_ln121_fu_162_p3 = ((tmp_fu_154_p3[0:0] == 1'b1) ? 7'd0 : j_fu_60);
assign select_ln140_fu_170_p3 = ((tmp_fu_154_p3[0:0] == 1'b1) ? add_ln140_1_reg_290 : i_2_load_reg_285);
assign tmp_8_fu_199_p4 = {{select_ln121_fu_162_p3[5:1]}};
assign tmp_fu_154_p3 = j_fu_60[32'd6];
assign tmp_s_fu_176_p3 = {{select_ln140_fu_170_p3}, {6'd0}};
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = bitcast_ln142_3_fu_251_p1;
assign weights1_d1 = bitcast_ln142_1_fu_247_p1;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln141_fu_184_p1 = select_ln121_fu_162_p3;
assign zext_ln142_1_fu_219_p1 = add_ln142_1_fu_209_p4;
assign zext_ln142_fu_194_p1 = add_ln142_fu_188_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_305[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter1_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter2_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter3_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter4_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter5_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter6_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter7_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter8_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter9_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter10_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter11_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter12_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter13_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter14_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter15_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter16_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter17_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter18_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter19_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter20_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter21_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter22_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter23_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter24_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter25_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter26_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter27_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter28_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter29_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter30_reg[0] <= 1'b1;
    weights1_addr_1_reg_305_pp0_iter31_reg[0] <= 1'b1;
end
endmodule 
