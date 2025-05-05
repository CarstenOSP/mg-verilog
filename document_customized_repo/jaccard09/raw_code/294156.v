module backprop_backprop_Pipeline_label_25_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul132,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v12_1_address0,v12_1_ce0,v12_1_we0,v12_1_d0,v12_1_address1,v12_1_ce1,v12_1_we1,v12_1_d1,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v9_1_address0,v9_1_ce0,v9_1_q0,v9_1_address1,v9_1_ce1,v9_1_q1,grp_fu_3224_p_din0,grp_fu_3224_p_din1,grp_fu_3224_p_dout0,grp_fu_3224_p_ce,grp_fu_3228_p_din0,grp_fu_3228_p_din1,grp_fu_3228_p_dout0,grp_fu_3228_p_ce,grp_fu_7385_p_din0,grp_fu_7385_p_din1,grp_fu_7385_p_dout0,grp_fu_7385_p_ce,grp_fu_7389_p_din0,grp_fu_7389_p_din1,grp_fu_7389_p_dout0,grp_fu_7389_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul132;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v12_1_address0;
output   v12_1_ce0;
output   v12_1_we0;
output  [63:0] v12_1_d0;
output  [8:0] v12_1_address1;
output   v12_1_ce1;
output   v12_1_we1;
output  [63:0] v12_1_d1;
output  [8:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [8:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [4:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [4:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
output  [4:0] v9_1_address0;
output   v9_1_ce0;
input  [63:0] v9_1_q0;
output  [4:0] v9_1_address1;
output   v9_1_ce1;
input  [63:0] v9_1_q1;
output  [63:0] grp_fu_3224_p_din0;
output  [63:0] grp_fu_3224_p_din1;
input  [63:0] grp_fu_3224_p_dout0;
output   grp_fu_3224_p_ce;
output  [63:0] grp_fu_3228_p_din0;
output  [63:0] grp_fu_3228_p_din1;
input  [63:0] grp_fu_3228_p_dout0;
output   grp_fu_3228_p_ce;
output  [63:0] grp_fu_7385_p_din0;
output  [63:0] grp_fu_7385_p_din1;
input  [63:0] grp_fu_7385_p_dout0;
output   grp_fu_7385_p_ce;
output  [63:0] grp_fu_7389_p_din0;
output  [63:0] grp_fu_7389_p_din1;
input  [63:0] grp_fu_7389_p_dout0;
output   grp_fu_7389_p_ce;
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
wire   [0:0] icmp_ln233_fu_256_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln233_1_fu_296_p3;
reg   [3:0] select_ln233_1_reg_463;
reg   [3:0] select_ln233_1_reg_463_pp0_iter1_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter2_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter3_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter4_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter5_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter6_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter7_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter8_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter9_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter10_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter11_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter12_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter13_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter14_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter15_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter16_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter17_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter18_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter19_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter20_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter21_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter22_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter23_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter24_reg;
reg   [3:0] select_ln233_1_reg_463_pp0_iter25_reg;
reg   [4:0] lshr_ln8_reg_470;
reg   [4:0] lshr_ln8_reg_470_pp0_iter1_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter2_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter3_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter4_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter5_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter6_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter7_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter8_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter9_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter10_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter11_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter12_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter13_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter14_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter15_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter16_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter17_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter18_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter19_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter20_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter21_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter22_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter23_reg;
reg   [4:0] lshr_ln8_reg_470_pp0_iter24_reg;
reg   [3:0] tmp_s_reg_476;
reg   [3:0] tmp_s_reg_476_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter8_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter9_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter10_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter11_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter12_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter13_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter14_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter15_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter16_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter17_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter18_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter19_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter20_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter21_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter22_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter23_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter24_reg;
reg   [3:0] tmp_s_reg_476_pp0_iter25_reg;
wire   [11:0] add_ln234_fu_348_p2;
wire   [0:0] icmp_ln234_fu_365_p2;
reg   [0:0] icmp_ln234_reg_487;
reg   [0:0] icmp_ln234_reg_487_pp0_iter2_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter3_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter4_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter5_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter6_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter7_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter8_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter9_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter10_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter11_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter12_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter13_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter14_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter15_reg;
reg   [0:0] icmp_ln234_reg_487_pp0_iter16_reg;
wire   [63:0] select_ln234_fu_382_p3;
reg   [63:0] select_ln234_reg_512;
reg   [63:0] v143_reg_517;
reg   [63:0] v143_4_reg_532;
wire   [63:0] v141_fu_402_p1;
reg   [63:0] v141_reg_537;
reg   [63:0] v143_5_reg_545;
reg   [63:0] v143_3_reg_550;
reg   [63:0] v144_reg_555;
reg   [63:0] v144_1_reg_560;
reg   [63:0] v144_2_reg_565;
reg   [63:0] v144_3_reg_570;
wire   [63:0] zext_ln234_fu_371_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln235_fu_377_p1;
wire   [63:0] zext_ln236_fu_396_p1;
wire   [63:0] zext_ln238_fu_413_p1;
wire   [63:0] zext_ln238_1_fu_427_p1;
reg   [6:0] v142_fu_78;
wire   [6:0] add_ln235_fu_324_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_load;
reg   [3:0] v140_fu_82;
reg   [3:0] ap_sig_allocacmp_v140_load;
reg   [7:0] indvar_flatten13_fu_86;
wire   [7:0] add_ln233_fu_262_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v9_1_ce1_local;
reg    v9_1_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
reg    v12_1_we1_local;
reg    v12_1_ce1_local;
reg    v12_1_we0_local;
reg    v12_1_ce0_local;
wire   [0:0] tmp_fu_274_p3;
wire   [3:0] add_ln233_1_fu_290_p2;
wire   [6:0] select_ln233_fu_282_p3;
wire   [11:0] zext_ln233_fu_345_p1;
wire   [11:0] add_ln234_1_fu_359_p2;
wire   [11:0] grp_fu_353_p2;
wire   [4:0] or_ln4_fu_389_p3;
wire   [8:0] add_ln_fu_407_p3;
wire   [8:0] add_ln238_1_fu_419_p4;
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
#0 v142_fu_78 = 7'd0;
#0 v140_fu_82 = 4'd0;
#0 indvar_flatten13_fu_86 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U449(.clk(ap_clk),.reset(ap_rst),.din0(add_ln234_fu_348_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_353_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_256_p2 == 1'd0))) begin
            indvar_flatten13_fu_86 <= add_ln233_fu_262_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_86 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_256_p2 == 1'd0))) begin
            v140_fu_82 <= select_ln233_1_fu_296_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v140_fu_82 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_256_p2 == 1'd0))) begin
            v142_fu_78 <= add_ln235_fu_324_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_78 <= 7'd0;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln234_reg_487_pp0_iter10_reg <= icmp_ln234_reg_487_pp0_iter9_reg;
        icmp_ln234_reg_487_pp0_iter11_reg <= icmp_ln234_reg_487_pp0_iter10_reg;
        icmp_ln234_reg_487_pp0_iter12_reg <= icmp_ln234_reg_487_pp0_iter11_reg;
        icmp_ln234_reg_487_pp0_iter13_reg <= icmp_ln234_reg_487_pp0_iter12_reg;
        icmp_ln234_reg_487_pp0_iter14_reg <= icmp_ln234_reg_487_pp0_iter13_reg;
        icmp_ln234_reg_487_pp0_iter15_reg <= icmp_ln234_reg_487_pp0_iter14_reg;
        icmp_ln234_reg_487_pp0_iter16_reg <= icmp_ln234_reg_487_pp0_iter15_reg;
        icmp_ln234_reg_487_pp0_iter2_reg <= icmp_ln234_reg_487;
        icmp_ln234_reg_487_pp0_iter3_reg <= icmp_ln234_reg_487_pp0_iter2_reg;
        icmp_ln234_reg_487_pp0_iter4_reg <= icmp_ln234_reg_487_pp0_iter3_reg;
        icmp_ln234_reg_487_pp0_iter5_reg <= icmp_ln234_reg_487_pp0_iter4_reg;
        icmp_ln234_reg_487_pp0_iter6_reg <= icmp_ln234_reg_487_pp0_iter5_reg;
        icmp_ln234_reg_487_pp0_iter7_reg <= icmp_ln234_reg_487_pp0_iter6_reg;
        icmp_ln234_reg_487_pp0_iter8_reg <= icmp_ln234_reg_487_pp0_iter7_reg;
        icmp_ln234_reg_487_pp0_iter9_reg <= icmp_ln234_reg_487_pp0_iter8_reg;
        lshr_ln8_reg_470_pp0_iter10_reg <= lshr_ln8_reg_470_pp0_iter9_reg;
        lshr_ln8_reg_470_pp0_iter11_reg <= lshr_ln8_reg_470_pp0_iter10_reg;
        lshr_ln8_reg_470_pp0_iter12_reg <= lshr_ln8_reg_470_pp0_iter11_reg;
        lshr_ln8_reg_470_pp0_iter13_reg <= lshr_ln8_reg_470_pp0_iter12_reg;
        lshr_ln8_reg_470_pp0_iter14_reg <= lshr_ln8_reg_470_pp0_iter13_reg;
        lshr_ln8_reg_470_pp0_iter15_reg <= lshr_ln8_reg_470_pp0_iter14_reg;
        lshr_ln8_reg_470_pp0_iter16_reg <= lshr_ln8_reg_470_pp0_iter15_reg;
        lshr_ln8_reg_470_pp0_iter17_reg <= lshr_ln8_reg_470_pp0_iter16_reg;
        lshr_ln8_reg_470_pp0_iter18_reg <= lshr_ln8_reg_470_pp0_iter17_reg;
        lshr_ln8_reg_470_pp0_iter19_reg <= lshr_ln8_reg_470_pp0_iter18_reg;
        lshr_ln8_reg_470_pp0_iter20_reg <= lshr_ln8_reg_470_pp0_iter19_reg;
        lshr_ln8_reg_470_pp0_iter21_reg <= lshr_ln8_reg_470_pp0_iter20_reg;
        lshr_ln8_reg_470_pp0_iter22_reg <= lshr_ln8_reg_470_pp0_iter21_reg;
        lshr_ln8_reg_470_pp0_iter23_reg <= lshr_ln8_reg_470_pp0_iter22_reg;
        lshr_ln8_reg_470_pp0_iter24_reg <= lshr_ln8_reg_470_pp0_iter23_reg;
        lshr_ln8_reg_470_pp0_iter2_reg <= lshr_ln8_reg_470_pp0_iter1_reg;
        lshr_ln8_reg_470_pp0_iter3_reg <= lshr_ln8_reg_470_pp0_iter2_reg;
        lshr_ln8_reg_470_pp0_iter4_reg <= lshr_ln8_reg_470_pp0_iter3_reg;
        lshr_ln8_reg_470_pp0_iter5_reg <= lshr_ln8_reg_470_pp0_iter4_reg;
        lshr_ln8_reg_470_pp0_iter6_reg <= lshr_ln8_reg_470_pp0_iter5_reg;
        lshr_ln8_reg_470_pp0_iter7_reg <= lshr_ln8_reg_470_pp0_iter6_reg;
        lshr_ln8_reg_470_pp0_iter8_reg <= lshr_ln8_reg_470_pp0_iter7_reg;
        lshr_ln8_reg_470_pp0_iter9_reg <= lshr_ln8_reg_470_pp0_iter8_reg;
        select_ln233_1_reg_463_pp0_iter10_reg <= select_ln233_1_reg_463_pp0_iter9_reg;
        select_ln233_1_reg_463_pp0_iter11_reg <= select_ln233_1_reg_463_pp0_iter10_reg;
        select_ln233_1_reg_463_pp0_iter12_reg <= select_ln233_1_reg_463_pp0_iter11_reg;
        select_ln233_1_reg_463_pp0_iter13_reg <= select_ln233_1_reg_463_pp0_iter12_reg;
        select_ln233_1_reg_463_pp0_iter14_reg <= select_ln233_1_reg_463_pp0_iter13_reg;
        select_ln233_1_reg_463_pp0_iter15_reg <= select_ln233_1_reg_463_pp0_iter14_reg;
        select_ln233_1_reg_463_pp0_iter16_reg <= select_ln233_1_reg_463_pp0_iter15_reg;
        select_ln233_1_reg_463_pp0_iter17_reg <= select_ln233_1_reg_463_pp0_iter16_reg;
        select_ln233_1_reg_463_pp0_iter18_reg <= select_ln233_1_reg_463_pp0_iter17_reg;
        select_ln233_1_reg_463_pp0_iter19_reg <= select_ln233_1_reg_463_pp0_iter18_reg;
        select_ln233_1_reg_463_pp0_iter20_reg <= select_ln233_1_reg_463_pp0_iter19_reg;
        select_ln233_1_reg_463_pp0_iter21_reg <= select_ln233_1_reg_463_pp0_iter20_reg;
        select_ln233_1_reg_463_pp0_iter22_reg <= select_ln233_1_reg_463_pp0_iter21_reg;
        select_ln233_1_reg_463_pp0_iter23_reg <= select_ln233_1_reg_463_pp0_iter22_reg;
        select_ln233_1_reg_463_pp0_iter24_reg <= select_ln233_1_reg_463_pp0_iter23_reg;
        select_ln233_1_reg_463_pp0_iter25_reg <= select_ln233_1_reg_463_pp0_iter24_reg;
        select_ln233_1_reg_463_pp0_iter2_reg <= select_ln233_1_reg_463_pp0_iter1_reg;
        select_ln233_1_reg_463_pp0_iter3_reg <= select_ln233_1_reg_463_pp0_iter2_reg;
        select_ln233_1_reg_463_pp0_iter4_reg <= select_ln233_1_reg_463_pp0_iter3_reg;
        select_ln233_1_reg_463_pp0_iter5_reg <= select_ln233_1_reg_463_pp0_iter4_reg;
        select_ln233_1_reg_463_pp0_iter6_reg <= select_ln233_1_reg_463_pp0_iter5_reg;
        select_ln233_1_reg_463_pp0_iter7_reg <= select_ln233_1_reg_463_pp0_iter6_reg;
        select_ln233_1_reg_463_pp0_iter8_reg <= select_ln233_1_reg_463_pp0_iter7_reg;
        select_ln233_1_reg_463_pp0_iter9_reg <= select_ln233_1_reg_463_pp0_iter8_reg;
        select_ln234_reg_512 <= select_ln234_fu_382_p3;
        tmp_s_reg_476_pp0_iter10_reg <= tmp_s_reg_476_pp0_iter9_reg;
        tmp_s_reg_476_pp0_iter11_reg <= tmp_s_reg_476_pp0_iter10_reg;
        tmp_s_reg_476_pp0_iter12_reg <= tmp_s_reg_476_pp0_iter11_reg;
        tmp_s_reg_476_pp0_iter13_reg <= tmp_s_reg_476_pp0_iter12_reg;
        tmp_s_reg_476_pp0_iter14_reg <= tmp_s_reg_476_pp0_iter13_reg;
        tmp_s_reg_476_pp0_iter15_reg <= tmp_s_reg_476_pp0_iter14_reg;
        tmp_s_reg_476_pp0_iter16_reg <= tmp_s_reg_476_pp0_iter15_reg;
        tmp_s_reg_476_pp0_iter17_reg <= tmp_s_reg_476_pp0_iter16_reg;
        tmp_s_reg_476_pp0_iter18_reg <= tmp_s_reg_476_pp0_iter17_reg;
        tmp_s_reg_476_pp0_iter19_reg <= tmp_s_reg_476_pp0_iter18_reg;
        tmp_s_reg_476_pp0_iter20_reg <= tmp_s_reg_476_pp0_iter19_reg;
        tmp_s_reg_476_pp0_iter21_reg <= tmp_s_reg_476_pp0_iter20_reg;
        tmp_s_reg_476_pp0_iter22_reg <= tmp_s_reg_476_pp0_iter21_reg;
        tmp_s_reg_476_pp0_iter23_reg <= tmp_s_reg_476_pp0_iter22_reg;
        tmp_s_reg_476_pp0_iter24_reg <= tmp_s_reg_476_pp0_iter23_reg;
        tmp_s_reg_476_pp0_iter25_reg <= tmp_s_reg_476_pp0_iter24_reg;
        tmp_s_reg_476_pp0_iter2_reg <= tmp_s_reg_476_pp0_iter1_reg;
        tmp_s_reg_476_pp0_iter3_reg <= tmp_s_reg_476_pp0_iter2_reg;
        tmp_s_reg_476_pp0_iter4_reg <= tmp_s_reg_476_pp0_iter3_reg;
        tmp_s_reg_476_pp0_iter5_reg <= tmp_s_reg_476_pp0_iter4_reg;
        tmp_s_reg_476_pp0_iter6_reg <= tmp_s_reg_476_pp0_iter5_reg;
        tmp_s_reg_476_pp0_iter7_reg <= tmp_s_reg_476_pp0_iter6_reg;
        tmp_s_reg_476_pp0_iter8_reg <= tmp_s_reg_476_pp0_iter7_reg;
        tmp_s_reg_476_pp0_iter9_reg <= tmp_s_reg_476_pp0_iter8_reg;
        v141_reg_537 <= v141_fu_402_p1;
        v144_1_reg_560 <= grp_fu_3228_p_dout0;
        v144_2_reg_565 <= grp_fu_7385_p_dout0;
        v144_3_reg_570 <= grp_fu_7389_p_dout0;
        v144_reg_555 <= grp_fu_3224_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln234_reg_487 <= icmp_ln234_fu_365_p2;
        lshr_ln8_reg_470 <= {{select_ln233_fu_282_p3[5:1]}};
        lshr_ln8_reg_470_pp0_iter1_reg <= lshr_ln8_reg_470;
        select_ln233_1_reg_463 <= select_ln233_1_fu_296_p3;
        select_ln233_1_reg_463_pp0_iter1_reg <= select_ln233_1_reg_463;
        tmp_s_reg_476 <= {{select_ln233_fu_282_p3[5:2]}};
        tmp_s_reg_476_pp0_iter1_reg <= tmp_s_reg_476;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v143_3_reg_550 <= v9_1_q0;
        v143_5_reg_545 <= v9_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v143_4_reg_532 <= v9_1_q1;
        v143_reg_517 <= v9_q1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln233_fu_256_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_86;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v140_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v140_load = v140_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v142_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_load = v142_fu_78;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_ce1_local = 1'b1;
    end else begin
        v12_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_we0_local = 1'b1;
    end else begin
        v12_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_we1_local = 1'b1;
    end else begin
        v12_1_we1_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_1_ce0_local = 1'b1;
    end else begin
        v9_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_1_ce1_local = 1'b1;
    end else begin
        v9_1_ce1_local = 1'b0;
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
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln233_1_fu_290_p2 = (ap_sig_allocacmp_v140_load + 4'd1);
assign add_ln233_fu_262_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 8'd1);
assign add_ln234_1_fu_359_p2 = ($signed(add_ln234_fu_348_p2) + $signed(12'd3036));
assign add_ln234_fu_348_p2 = (zext_ln233_fu_345_p1 + phi_mul132);
assign add_ln235_fu_324_p2 = (select_ln233_fu_282_p3 + 7'd4);
assign add_ln238_1_fu_419_p4 = {{{select_ln233_1_reg_463_pp0_iter25_reg}, {tmp_s_reg_476_pp0_iter25_reg}}, {1'd1}};
assign add_ln_fu_407_p3 = {{select_ln233_1_reg_463_pp0_iter24_reg}, {lshr_ln8_reg_470_pp0_iter24_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3224_p_ce = 1'b1;
assign grp_fu_3224_p_din0 = v141_fu_402_p1;
assign grp_fu_3224_p_din1 = v143_reg_517;
assign grp_fu_3228_p_ce = 1'b1;
assign grp_fu_3228_p_din0 = v141_fu_402_p1;
assign grp_fu_3228_p_din1 = v143_4_reg_532;
assign grp_fu_7385_p_ce = 1'b1;
assign grp_fu_7385_p_din0 = v141_reg_537;
assign grp_fu_7385_p_din1 = v143_5_reg_545;
assign grp_fu_7389_p_ce = 1'b1;
assign grp_fu_7389_p_din0 = v141_reg_537;
assign grp_fu_7389_p_din1 = v143_3_reg_550;
assign icmp_ln233_fu_256_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 8'd208) ? 1'b1 : 1'b0);
assign icmp_ln234_fu_365_p2 = ((add_ln234_1_fu_359_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign or_ln4_fu_389_p3 = {{tmp_s_reg_476_pp0_iter16_reg}, {1'd1}};
assign select_ln233_1_fu_296_p3 = ((tmp_fu_274_p3[0:0] == 1'b1) ? add_ln233_1_fu_290_p2 : ap_sig_allocacmp_v140_load);
assign select_ln233_fu_282_p3 = ((tmp_fu_274_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v142_load);
assign select_ln234_fu_382_p3 = ((icmp_ln234_reg_487_pp0_iter16_reg[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign tmp_fu_274_p3 = ap_sig_allocacmp_v142_load[32'd6];
assign v12_1_address0 = zext_ln238_1_fu_427_p1;
assign v12_1_address1 = zext_ln238_fu_413_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_1_ce1 = v12_1_ce1_local;
assign v12_1_d0 = v144_3_reg_570;
assign v12_1_d1 = v144_1_reg_560;
assign v12_1_we0 = v12_1_we0_local;
assign v12_1_we1 = v12_1_we1_local;
assign v12_address0 = zext_ln238_1_fu_427_p1;
assign v12_address1 = zext_ln238_fu_413_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_2_reg_565;
assign v12_d1 = v144_reg_555;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v141_fu_402_p1 = select_ln234_reg_512;
assign v6_0_address0 = zext_ln234_fu_371_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln234_fu_371_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v9_1_address0 = zext_ln236_fu_396_p1;
assign v9_1_address1 = zext_ln235_fu_377_p1;
assign v9_1_ce0 = v9_1_ce0_local;
assign v9_1_ce1 = v9_1_ce1_local;
assign v9_address0 = zext_ln236_fu_396_p1;
assign v9_address1 = zext_ln235_fu_377_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln233_fu_345_p1 = select_ln233_1_reg_463;
assign zext_ln234_fu_371_p1 = grp_fu_353_p2;
assign zext_ln235_fu_377_p1 = lshr_ln8_reg_470_pp0_iter15_reg;
assign zext_ln236_fu_396_p1 = or_ln4_fu_389_p3;
assign zext_ln238_1_fu_427_p1 = add_ln238_1_fu_419_p4;
assign zext_ln238_fu_413_p1 = add_ln_fu_407_p3;
endmodule 