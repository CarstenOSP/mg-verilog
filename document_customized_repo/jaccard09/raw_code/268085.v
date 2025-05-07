module backprop_backprop_Pipeline_label_25_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v9_address0,v9_ce0,v9_q0,v12_address0,v12_ce0,v12_we0,v12_d0,grp_fu_13778_p_din0,grp_fu_13778_p_din1,grp_fu_13778_p_dout0,grp_fu_13778_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [5:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [9:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [63:0] grp_fu_13778_p_din0;
output  [63:0] grp_fu_13778_p_din1;
input  [63:0] grp_fu_13778_p_dout0;
output   grp_fu_13778_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln233_fu_152_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln233_fu_181_p3;
reg   [6:0] select_ln233_reg_316;
reg   [6:0] select_ln233_reg_316_pp0_iter2_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter3_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter4_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter5_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter6_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter7_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter8_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter9_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter10_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter11_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter12_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter13_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter14_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter15_reg;
reg   [6:0] select_ln233_reg_316_pp0_iter16_reg;
wire   [3:0] select_ln233_1_fu_195_p3;
reg   [3:0] select_ln233_1_reg_322;
reg   [3:0] select_ln233_1_reg_322_pp0_iter2_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter3_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter4_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter5_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter6_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter7_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter8_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter9_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter10_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter11_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter12_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter13_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter14_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter15_reg;
reg   [3:0] select_ln233_1_reg_322_pp0_iter16_reg;
wire   [11:0] add_ln234_fu_222_p2;
wire   [0:0] icmp_ln234_fu_239_p2;
reg   [0:0] icmp_ln234_reg_333;
reg   [0:0] icmp_ln234_reg_333_pp0_iter3_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter4_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter5_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter6_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter7_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter8_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter9_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter10_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter11_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter12_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter13_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter14_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter15_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter16_reg;
reg   [0:0] icmp_ln234_reg_333_pp0_iter17_reg;
wire   [9:0] add_ln238_fu_265_p2;
reg   [9:0] add_ln238_reg_353;
reg   [9:0] add_ln238_reg_353_pp0_iter18_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter19_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter20_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter21_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter22_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter23_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter24_reg;
reg   [9:0] add_ln238_reg_353_pp0_iter25_reg;
wire   [63:0] select_ln234_fu_271_p3;
reg   [63:0] select_ln234_reg_358;
reg   [63:0] v143_reg_363;
wire   [63:0] v141_fu_278_p1;
reg   [63:0] v144_reg_373;
wire   [63:0] zext_ln234_fu_245_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln235_fu_258_p1;
wire   [63:0] zext_ln238_fu_282_p1;
reg   [6:0] v142_fu_60;
wire   [6:0] add_ln235_fu_203_p2;
wire    ap_loop_init;
reg   [3:0] v140_fu_64;
reg   [9:0] indvar_flatten6_fu_68;
wire   [9:0] add_ln233_fu_158_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v9_ce0_local;
reg    v12_we0_local;
reg    v12_ce0_local;
wire   [0:0] icmp_ln235_fu_175_p2;
wire   [3:0] add_ln233_1_fu_189_p2;
wire   [11:0] zext_ln233_fu_219_p1;
wire   [11:0] add_ln234_1_fu_233_p2;
wire   [11:0] grp_fu_227_p2;
wire   [9:0] zext_ln235_1_fu_262_p1;
wire   [9:0] tmp_s_fu_251_p3;
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
#0 v142_fu_60 = 7'd0;
#0 v140_fu_64 = 4'd0;
#0 indvar_flatten6_fu_68 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U1256(.clk(ap_clk),.reset(ap_rst),.din0(add_ln234_fu_222_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_227_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_152_p2 == 1'd0))) begin
            indvar_flatten6_fu_68 <= add_ln233_fu_158_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_68 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            v140_fu_64 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v140_fu_64 <= select_ln233_1_fu_195_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            v142_fu_60 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v142_fu_60 <= add_ln235_fu_203_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln238_reg_353 <= add_ln238_fu_265_p2;
        add_ln238_reg_353_pp0_iter18_reg <= add_ln238_reg_353;
        add_ln238_reg_353_pp0_iter19_reg <= add_ln238_reg_353_pp0_iter18_reg;
        add_ln238_reg_353_pp0_iter20_reg <= add_ln238_reg_353_pp0_iter19_reg;
        add_ln238_reg_353_pp0_iter21_reg <= add_ln238_reg_353_pp0_iter20_reg;
        add_ln238_reg_353_pp0_iter22_reg <= add_ln238_reg_353_pp0_iter21_reg;
        add_ln238_reg_353_pp0_iter23_reg <= add_ln238_reg_353_pp0_iter22_reg;
        add_ln238_reg_353_pp0_iter24_reg <= add_ln238_reg_353_pp0_iter23_reg;
        add_ln238_reg_353_pp0_iter25_reg <= add_ln238_reg_353_pp0_iter24_reg;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln234_reg_333 <= icmp_ln234_fu_239_p2;
        icmp_ln234_reg_333_pp0_iter10_reg <= icmp_ln234_reg_333_pp0_iter9_reg;
        icmp_ln234_reg_333_pp0_iter11_reg <= icmp_ln234_reg_333_pp0_iter10_reg;
        icmp_ln234_reg_333_pp0_iter12_reg <= icmp_ln234_reg_333_pp0_iter11_reg;
        icmp_ln234_reg_333_pp0_iter13_reg <= icmp_ln234_reg_333_pp0_iter12_reg;
        icmp_ln234_reg_333_pp0_iter14_reg <= icmp_ln234_reg_333_pp0_iter13_reg;
        icmp_ln234_reg_333_pp0_iter15_reg <= icmp_ln234_reg_333_pp0_iter14_reg;
        icmp_ln234_reg_333_pp0_iter16_reg <= icmp_ln234_reg_333_pp0_iter15_reg;
        icmp_ln234_reg_333_pp0_iter17_reg <= icmp_ln234_reg_333_pp0_iter16_reg;
        icmp_ln234_reg_333_pp0_iter3_reg <= icmp_ln234_reg_333;
        icmp_ln234_reg_333_pp0_iter4_reg <= icmp_ln234_reg_333_pp0_iter3_reg;
        icmp_ln234_reg_333_pp0_iter5_reg <= icmp_ln234_reg_333_pp0_iter4_reg;
        icmp_ln234_reg_333_pp0_iter6_reg <= icmp_ln234_reg_333_pp0_iter5_reg;
        icmp_ln234_reg_333_pp0_iter7_reg <= icmp_ln234_reg_333_pp0_iter6_reg;
        icmp_ln234_reg_333_pp0_iter8_reg <= icmp_ln234_reg_333_pp0_iter7_reg;
        icmp_ln234_reg_333_pp0_iter9_reg <= icmp_ln234_reg_333_pp0_iter8_reg;
        select_ln233_1_reg_322_pp0_iter10_reg <= select_ln233_1_reg_322_pp0_iter9_reg;
        select_ln233_1_reg_322_pp0_iter11_reg <= select_ln233_1_reg_322_pp0_iter10_reg;
        select_ln233_1_reg_322_pp0_iter12_reg <= select_ln233_1_reg_322_pp0_iter11_reg;
        select_ln233_1_reg_322_pp0_iter13_reg <= select_ln233_1_reg_322_pp0_iter12_reg;
        select_ln233_1_reg_322_pp0_iter14_reg <= select_ln233_1_reg_322_pp0_iter13_reg;
        select_ln233_1_reg_322_pp0_iter15_reg <= select_ln233_1_reg_322_pp0_iter14_reg;
        select_ln233_1_reg_322_pp0_iter16_reg <= select_ln233_1_reg_322_pp0_iter15_reg;
        select_ln233_1_reg_322_pp0_iter2_reg <= select_ln233_1_reg_322;
        select_ln233_1_reg_322_pp0_iter3_reg <= select_ln233_1_reg_322_pp0_iter2_reg;
        select_ln233_1_reg_322_pp0_iter4_reg <= select_ln233_1_reg_322_pp0_iter3_reg;
        select_ln233_1_reg_322_pp0_iter5_reg <= select_ln233_1_reg_322_pp0_iter4_reg;
        select_ln233_1_reg_322_pp0_iter6_reg <= select_ln233_1_reg_322_pp0_iter5_reg;
        select_ln233_1_reg_322_pp0_iter7_reg <= select_ln233_1_reg_322_pp0_iter6_reg;
        select_ln233_1_reg_322_pp0_iter8_reg <= select_ln233_1_reg_322_pp0_iter7_reg;
        select_ln233_1_reg_322_pp0_iter9_reg <= select_ln233_1_reg_322_pp0_iter8_reg;
        select_ln233_reg_316_pp0_iter10_reg <= select_ln233_reg_316_pp0_iter9_reg;
        select_ln233_reg_316_pp0_iter11_reg <= select_ln233_reg_316_pp0_iter10_reg;
        select_ln233_reg_316_pp0_iter12_reg <= select_ln233_reg_316_pp0_iter11_reg;
        select_ln233_reg_316_pp0_iter13_reg <= select_ln233_reg_316_pp0_iter12_reg;
        select_ln233_reg_316_pp0_iter14_reg <= select_ln233_reg_316_pp0_iter13_reg;
        select_ln233_reg_316_pp0_iter15_reg <= select_ln233_reg_316_pp0_iter14_reg;
        select_ln233_reg_316_pp0_iter16_reg <= select_ln233_reg_316_pp0_iter15_reg;
        select_ln233_reg_316_pp0_iter2_reg <= select_ln233_reg_316;
        select_ln233_reg_316_pp0_iter3_reg <= select_ln233_reg_316_pp0_iter2_reg;
        select_ln233_reg_316_pp0_iter4_reg <= select_ln233_reg_316_pp0_iter3_reg;
        select_ln233_reg_316_pp0_iter5_reg <= select_ln233_reg_316_pp0_iter4_reg;
        select_ln233_reg_316_pp0_iter6_reg <= select_ln233_reg_316_pp0_iter5_reg;
        select_ln233_reg_316_pp0_iter7_reg <= select_ln233_reg_316_pp0_iter6_reg;
        select_ln233_reg_316_pp0_iter8_reg <= select_ln233_reg_316_pp0_iter7_reg;
        select_ln233_reg_316_pp0_iter9_reg <= select_ln233_reg_316_pp0_iter8_reg;
        select_ln234_reg_358 <= select_ln234_fu_271_p3;
        v143_reg_363 <= v9_q0;
        v144_reg_373 <= grp_fu_13778_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln233_1_reg_322 <= select_ln233_1_fu_195_p3;
        select_ln233_reg_316 <= select_ln233_fu_181_p3;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln233_fu_152_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_68;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
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
assign add_ln233_1_fu_189_p2 = (v140_fu_64 + 4'd1);
assign add_ln233_fu_158_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 10'd1);
assign add_ln234_1_fu_233_p2 = ($signed(add_ln234_fu_222_p2) + $signed(12'd3036));
assign add_ln234_fu_222_p2 = (zext_ln233_fu_219_p1 + phi_mul);
assign add_ln235_fu_203_p2 = (select_ln233_fu_181_p3 + 7'd1);
assign add_ln238_fu_265_p2 = (zext_ln235_1_fu_262_p1 + tmp_s_fu_251_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_13778_p_ce = 1'b1;
assign grp_fu_13778_p_din0 = v141_fu_278_p1;
assign grp_fu_13778_p_din1 = v143_reg_363;
assign icmp_ln233_fu_152_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln234_fu_239_p2 = ((add_ln234_1_fu_233_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln235_fu_175_p2 = ((v142_fu_60 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln233_1_fu_195_p3 = ((icmp_ln235_fu_175_p2[0:0] == 1'b1) ? add_ln233_1_fu_189_p2 : v140_fu_64);
assign select_ln233_fu_181_p3 = ((icmp_ln235_fu_175_p2[0:0] == 1'b1) ? 7'd0 : v142_fu_60);
assign select_ln234_fu_271_p3 = ((icmp_ln234_reg_333_pp0_iter17_reg[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign tmp_s_fu_251_p3 = {{select_ln233_1_reg_322_pp0_iter16_reg}, {6'd0}};
assign v12_address0 = zext_ln238_fu_282_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_d0 = v144_reg_373;
assign v12_we0 = v12_we0_local;
assign v141_fu_278_p1 = select_ln234_reg_358;
assign v6_0_address0 = zext_ln234_fu_245_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln234_fu_245_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v9_address0 = zext_ln235_fu_258_p1;
assign v9_ce0 = v9_ce0_local;
assign zext_ln233_fu_219_p1 = select_ln233_1_reg_322;
assign zext_ln234_fu_245_p1 = grp_fu_227_p2;
assign zext_ln235_1_fu_262_p1 = select_ln233_reg_316_pp0_iter16_reg;
assign zext_ln235_fu_258_p1 = select_ln233_reg_316_pp0_iter16_reg;
assign zext_ln238_fu_282_p1 = add_ln238_reg_353_pp0_iter25_reg;
endmodule 