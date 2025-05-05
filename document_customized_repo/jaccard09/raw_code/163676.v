module backprop_backprop_Pipeline_VITIS_LOOP_78_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,v20_address0,v20_ce0,v20_we0,v20_d0,grp_fu_2584_p_din0,grp_fu_2584_p_din1,grp_fu_2584_p_opcode,grp_fu_2584_p_dout0,grp_fu_2584_p_ce,grp_fu_2588_p_din0,grp_fu_2588_p_din1,grp_fu_2588_p_opcode,grp_fu_2588_p_dout0,grp_fu_2588_p_ce,grp_fu_2592_p_din0,grp_fu_2592_p_din1,grp_fu_2592_p_dout0,grp_fu_2592_p_ce,grp_fu_2596_p_din0,grp_fu_2596_p_din1,grp_fu_2596_p_dout0,grp_fu_2596_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
output  [9:0] v0_address1;
output   v0_ce1;
input  [63:0] v0_q1;
input  [63:0] v26;
input  [63:0] v26_1;
input  [63:0] v26_2;
input  [63:0] v26_3;
input  [63:0] v26_4;
input  [63:0] v26_5;
input  [63:0] v26_6;
input  [63:0] v26_7;
input  [63:0] v26_8;
input  [63:0] v26_9;
input  [63:0] v26_10;
input  [63:0] v26_11;
input  [63:0] v26_12;
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [63:0] grp_fu_2584_p_din0;
output  [63:0] grp_fu_2584_p_din1;
output  [0:0] grp_fu_2584_p_opcode;
input  [63:0] grp_fu_2584_p_dout0;
output   grp_fu_2584_p_ce;
output  [63:0] grp_fu_2588_p_din0;
output  [63:0] grp_fu_2588_p_din1;
output  [0:0] grp_fu_2588_p_opcode;
input  [63:0] grp_fu_2588_p_dout0;
output   grp_fu_2588_p_ce;
output  [63:0] grp_fu_2592_p_din0;
output  [63:0] grp_fu_2592_p_din1;
input  [63:0] grp_fu_2592_p_dout0;
output   grp_fu_2592_p_ce;
output  [63:0] grp_fu_2596_p_din0;
output  [63:0] grp_fu_2596_p_din1;
input  [63:0] grp_fu_2596_p_dout0;
output   grp_fu_2596_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln78_reg_661;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_329;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_334;
reg   [6:0] v23_1_reg_656;
reg   [6:0] v23_1_reg_656_pp0_iter1_reg;
reg   [6:0] v23_1_reg_656_pp0_iter2_reg;
reg   [6:0] v23_1_reg_656_pp0_iter3_reg;
reg   [6:0] v23_1_reg_656_pp0_iter4_reg;
reg   [6:0] v23_1_reg_656_pp0_iter5_reg;
reg   [6:0] v23_1_reg_656_pp0_iter6_reg;
reg   [6:0] v23_1_reg_656_pp0_iter7_reg;
reg   [6:0] v23_1_reg_656_pp0_iter8_reg;
reg   [6:0] v23_1_reg_656_pp0_iter9_reg;
reg   [6:0] v23_1_reg_656_pp0_iter10_reg;
reg   [6:0] v23_1_reg_656_pp0_iter11_reg;
reg   [6:0] v23_1_reg_656_pp0_iter12_reg;
reg   [6:0] v23_1_reg_656_pp0_iter13_reg;
reg   [6:0] v23_1_reg_656_pp0_iter14_reg;
wire   [0:0] icmp_ln78_fu_351_p2;
reg   [0:0] icmp_ln78_reg_661_pp0_iter1_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter2_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter3_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter4_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter5_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter6_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter7_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter8_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter9_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter10_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter11_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter12_reg;
reg   [0:0] icmp_ln78_reg_661_pp0_iter13_reg;
reg   [9:0] phi_mul_load_reg_665;
wire   [63:0] v25_fu_418_p1;
wire   [63:0] v25_1_fu_423_p1;
wire   [63:0] v25_2_fu_448_p1;
wire   [63:0] v25_3_fu_453_p1;
wire   [63:0] v25_4_fu_478_p1;
wire   [63:0] v25_5_fu_483_p1;
wire   [63:0] v25_6_fu_508_p1;
wire   [63:0] v25_7_fu_513_p1;
wire   [63:0] v25_8_fu_538_p1;
wire   [63:0] v25_9_fu_543_p1;
reg   [63:0] v27_reg_795;
reg   [63:0] v27_1_reg_800;
reg   [63:0] v27_1_reg_800_pp0_iter2_reg;
wire   [63:0] v25_10_fu_558_p1;
wire   [63:0] v25_11_fu_563_p1;
reg   [63:0] v27_2_reg_815;
reg   [63:0] v27_2_reg_815_pp0_iter2_reg;
reg   [63:0] v27_2_reg_815_pp0_iter3_reg;
reg   [63:0] v27_3_reg_820;
reg   [63:0] v27_3_reg_820_pp0_iter2_reg;
reg   [63:0] v27_3_reg_820_pp0_iter3_reg;
reg   [63:0] v27_3_reg_820_pp0_iter4_reg;
wire   [63:0] v25_12_fu_568_p1;
reg   [63:0] v27_4_reg_830;
reg   [63:0] v27_4_reg_830_pp0_iter2_reg;
reg   [63:0] v27_4_reg_830_pp0_iter3_reg;
reg   [63:0] v27_4_reg_830_pp0_iter4_reg;
reg   [63:0] v27_4_reg_830_pp0_iter5_reg;
reg   [63:0] v27_5_reg_835;
reg   [63:0] v27_5_reg_835_pp0_iter2_reg;
reg   [63:0] v27_5_reg_835_pp0_iter3_reg;
reg   [63:0] v27_5_reg_835_pp0_iter4_reg;
reg   [63:0] v27_5_reg_835_pp0_iter5_reg;
reg   [63:0] v27_5_reg_835_pp0_iter6_reg;
reg   [63:0] v27_6_reg_840;
reg   [63:0] v27_6_reg_840_pp0_iter2_reg;
reg   [63:0] v27_6_reg_840_pp0_iter3_reg;
reg   [63:0] v27_6_reg_840_pp0_iter4_reg;
reg   [63:0] v27_6_reg_840_pp0_iter5_reg;
reg   [63:0] v27_6_reg_840_pp0_iter6_reg;
reg   [63:0] v27_6_reg_840_pp0_iter7_reg;
reg   [63:0] v27_7_reg_845;
reg   [63:0] v27_7_reg_845_pp0_iter2_reg;
reg   [63:0] v27_7_reg_845_pp0_iter3_reg;
reg   [63:0] v27_7_reg_845_pp0_iter4_reg;
reg   [63:0] v27_7_reg_845_pp0_iter5_reg;
reg   [63:0] v27_7_reg_845_pp0_iter6_reg;
reg   [63:0] v27_7_reg_845_pp0_iter7_reg;
reg   [63:0] v27_7_reg_845_pp0_iter8_reg;
reg   [63:0] v27_8_reg_850;
reg   [63:0] v27_8_reg_850_pp0_iter2_reg;
reg   [63:0] v27_8_reg_850_pp0_iter3_reg;
reg   [63:0] v27_8_reg_850_pp0_iter4_reg;
reg   [63:0] v27_8_reg_850_pp0_iter5_reg;
reg   [63:0] v27_8_reg_850_pp0_iter6_reg;
reg   [63:0] v27_8_reg_850_pp0_iter7_reg;
reg   [63:0] v27_8_reg_850_pp0_iter8_reg;
reg   [63:0] v27_8_reg_850_pp0_iter9_reg;
reg   [63:0] v27_9_reg_855;
reg   [63:0] v27_9_reg_855_pp0_iter2_reg;
reg   [63:0] v27_9_reg_855_pp0_iter3_reg;
reg   [63:0] v27_9_reg_855_pp0_iter4_reg;
reg   [63:0] v27_9_reg_855_pp0_iter5_reg;
reg   [63:0] v27_9_reg_855_pp0_iter6_reg;
reg   [63:0] v27_9_reg_855_pp0_iter7_reg;
reg   [63:0] v27_9_reg_855_pp0_iter8_reg;
reg   [63:0] v27_9_reg_855_pp0_iter9_reg;
reg   [63:0] v27_9_reg_855_pp0_iter10_reg;
reg   [63:0] v27_10_reg_860;
reg   [63:0] v27_10_reg_860_pp0_iter2_reg;
reg   [63:0] v27_10_reg_860_pp0_iter3_reg;
reg   [63:0] v27_10_reg_860_pp0_iter4_reg;
reg   [63:0] v27_10_reg_860_pp0_iter5_reg;
reg   [63:0] v27_10_reg_860_pp0_iter6_reg;
reg   [63:0] v27_10_reg_860_pp0_iter7_reg;
reg   [63:0] v27_10_reg_860_pp0_iter8_reg;
reg   [63:0] v27_10_reg_860_pp0_iter9_reg;
reg   [63:0] v27_10_reg_860_pp0_iter10_reg;
reg   [63:0] v27_10_reg_860_pp0_iter11_reg;
reg   [63:0] v27_11_reg_865;
reg   [63:0] v27_11_reg_865_pp0_iter2_reg;
reg   [63:0] v27_11_reg_865_pp0_iter3_reg;
reg   [63:0] v27_11_reg_865_pp0_iter4_reg;
reg   [63:0] v27_11_reg_865_pp0_iter5_reg;
reg   [63:0] v27_11_reg_865_pp0_iter6_reg;
reg   [63:0] v27_11_reg_865_pp0_iter7_reg;
reg   [63:0] v27_11_reg_865_pp0_iter8_reg;
reg   [63:0] v27_11_reg_865_pp0_iter9_reg;
reg   [63:0] v27_11_reg_865_pp0_iter10_reg;
reg   [63:0] v27_11_reg_865_pp0_iter11_reg;
reg   [63:0] v27_11_reg_865_pp0_iter12_reg;
reg   [63:0] v27_12_reg_870;
reg   [63:0] v27_12_reg_870_pp0_iter2_reg;
reg   [63:0] v27_12_reg_870_pp0_iter3_reg;
reg   [63:0] v27_12_reg_870_pp0_iter4_reg;
reg   [63:0] v27_12_reg_870_pp0_iter5_reg;
reg   [63:0] v27_12_reg_870_pp0_iter6_reg;
reg   [63:0] v27_12_reg_870_pp0_iter7_reg;
reg   [63:0] v27_12_reg_870_pp0_iter8_reg;
reg   [63:0] v27_12_reg_870_pp0_iter9_reg;
reg   [63:0] v27_12_reg_870_pp0_iter10_reg;
reg   [63:0] v27_12_reg_870_pp0_iter11_reg;
reg   [63:0] v27_12_reg_870_pp0_iter12_reg;
reg   [63:0] v27_12_reg_870_pp0_iter13_reg;
reg   [63:0] v29_13_reg_875;
reg   [63:0] v29_14_reg_880;
reg   [63:0] v29_15_reg_885;
reg   [63:0] v29_16_reg_890;
reg   [63:0] v29_17_reg_895;
reg   [63:0] v29_18_reg_900;
reg   [63:0] v29_19_reg_905;
reg   [63:0] v29_20_reg_910;
reg   [63:0] v29_21_reg_915;
reg   [63:0] v29_22_reg_920;
reg   [63:0] v29_23_reg_925;
reg   [63:0] v29_24_reg_930;
reg   [63:0] v29_reg_935;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln81_fu_372_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln81_1_fu_383_p1;
wire   [63:0] zext_ln81_2_fu_403_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln81_3_fu_413_p1;
wire   [63:0] zext_ln81_4_fu_433_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln81_5_fu_443_p1;
wire   [63:0] zext_ln81_6_fu_463_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln81_7_fu_473_p1;
wire   [63:0] zext_ln81_8_fu_493_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln81_9_fu_503_p1;
wire   [63:0] zext_ln81_10_fu_523_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln81_11_fu_533_p1;
wire   [63:0] zext_ln81_12_fu_553_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln78_fu_573_p1;
reg   [9:0] phi_mul_fu_100;
wire   [9:0] next_mul_fu_366_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_104;
wire   [6:0] add_ln78_fu_357_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_ce1_local;
reg   [9:0] v0_address1_local;
reg    v0_ce0_local;
reg   [9:0] v0_address0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
reg   [63:0] grp_fu_317_p0;
reg   [63:0] grp_fu_317_p1;
reg   [63:0] grp_fu_321_p0;
reg   [63:0] grp_fu_321_p1;
reg   [63:0] grp_fu_325_p0;
reg   [63:0] grp_fu_325_p1;
wire   [9:0] add_ln81_fu_377_p2;
wire   [9:0] add_ln81_1_fu_398_p2;
wire   [9:0] add_ln81_2_fu_408_p2;
wire   [9:0] add_ln81_3_fu_428_p2;
wire   [9:0] add_ln81_4_fu_438_p2;
wire   [9:0] add_ln81_5_fu_458_p2;
wire   [9:0] add_ln81_6_fu_468_p2;
wire   [9:0] add_ln81_7_fu_488_p2;
wire   [9:0] add_ln81_8_fu_498_p2;
wire   [9:0] add_ln81_9_fu_518_p2;
wire   [9:0] add_ln81_10_fu_528_p2;
wire   [9:0] add_ln81_11_fu_548_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter14_stage0;
reg    ap_idle_pp0_0to13;
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
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to15;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 phi_mul_fu_100 = 10'd0;
#0 v23_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter15 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln78_fu_351_p2 == 1'd0))) begin
            phi_mul_fu_100 <= next_mul_fu_366_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_mul_fu_100 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_329 <= v0_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_329 <= v0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln78_fu_351_p2 == 1'd0))) begin
            v23_fu_104 <= add_ln78_fu_357_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v23_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln78_reg_661 <= icmp_ln78_fu_351_p2;
        icmp_ln78_reg_661_pp0_iter10_reg <= icmp_ln78_reg_661_pp0_iter9_reg;
        icmp_ln78_reg_661_pp0_iter11_reg <= icmp_ln78_reg_661_pp0_iter10_reg;
        icmp_ln78_reg_661_pp0_iter12_reg <= icmp_ln78_reg_661_pp0_iter11_reg;
        icmp_ln78_reg_661_pp0_iter13_reg <= icmp_ln78_reg_661_pp0_iter12_reg;
        icmp_ln78_reg_661_pp0_iter1_reg <= icmp_ln78_reg_661;
        icmp_ln78_reg_661_pp0_iter2_reg <= icmp_ln78_reg_661_pp0_iter1_reg;
        icmp_ln78_reg_661_pp0_iter3_reg <= icmp_ln78_reg_661_pp0_iter2_reg;
        icmp_ln78_reg_661_pp0_iter4_reg <= icmp_ln78_reg_661_pp0_iter3_reg;
        icmp_ln78_reg_661_pp0_iter5_reg <= icmp_ln78_reg_661_pp0_iter4_reg;
        icmp_ln78_reg_661_pp0_iter6_reg <= icmp_ln78_reg_661_pp0_iter5_reg;
        icmp_ln78_reg_661_pp0_iter7_reg <= icmp_ln78_reg_661_pp0_iter6_reg;
        icmp_ln78_reg_661_pp0_iter8_reg <= icmp_ln78_reg_661_pp0_iter7_reg;
        icmp_ln78_reg_661_pp0_iter9_reg <= icmp_ln78_reg_661_pp0_iter8_reg;
        phi_mul_load_reg_665 <= ap_sig_allocacmp_phi_mul_load;
        v23_1_reg_656 <= ap_sig_allocacmp_v23_1;
        v23_1_reg_656_pp0_iter10_reg <= v23_1_reg_656_pp0_iter9_reg;
        v23_1_reg_656_pp0_iter11_reg <= v23_1_reg_656_pp0_iter10_reg;
        v23_1_reg_656_pp0_iter12_reg <= v23_1_reg_656_pp0_iter11_reg;
        v23_1_reg_656_pp0_iter13_reg <= v23_1_reg_656_pp0_iter12_reg;
        v23_1_reg_656_pp0_iter14_reg <= v23_1_reg_656_pp0_iter13_reg;
        v23_1_reg_656_pp0_iter1_reg <= v23_1_reg_656;
        v23_1_reg_656_pp0_iter2_reg <= v23_1_reg_656_pp0_iter1_reg;
        v23_1_reg_656_pp0_iter3_reg <= v23_1_reg_656_pp0_iter2_reg;
        v23_1_reg_656_pp0_iter4_reg <= v23_1_reg_656_pp0_iter3_reg;
        v23_1_reg_656_pp0_iter5_reg <= v23_1_reg_656_pp0_iter4_reg;
        v23_1_reg_656_pp0_iter6_reg <= v23_1_reg_656_pp0_iter5_reg;
        v23_1_reg_656_pp0_iter7_reg <= v23_1_reg_656_pp0_iter6_reg;
        v23_1_reg_656_pp0_iter8_reg <= v23_1_reg_656_pp0_iter7_reg;
        v23_1_reg_656_pp0_iter9_reg <= v23_1_reg_656_pp0_iter8_reg;
        v27_1_reg_800_pp0_iter2_reg <= v27_1_reg_800;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_334 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_860 <= grp_fu_2592_p_dout0;
        v27_11_reg_865 <= grp_fu_2596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_860_pp0_iter10_reg <= v27_10_reg_860_pp0_iter9_reg;
        v27_10_reg_860_pp0_iter11_reg <= v27_10_reg_860_pp0_iter10_reg;
        v27_10_reg_860_pp0_iter2_reg <= v27_10_reg_860;
        v27_10_reg_860_pp0_iter3_reg <= v27_10_reg_860_pp0_iter2_reg;
        v27_10_reg_860_pp0_iter4_reg <= v27_10_reg_860_pp0_iter3_reg;
        v27_10_reg_860_pp0_iter5_reg <= v27_10_reg_860_pp0_iter4_reg;
        v27_10_reg_860_pp0_iter6_reg <= v27_10_reg_860_pp0_iter5_reg;
        v27_10_reg_860_pp0_iter7_reg <= v27_10_reg_860_pp0_iter6_reg;
        v27_10_reg_860_pp0_iter8_reg <= v27_10_reg_860_pp0_iter7_reg;
        v27_10_reg_860_pp0_iter9_reg <= v27_10_reg_860_pp0_iter8_reg;
        v27_11_reg_865_pp0_iter10_reg <= v27_11_reg_865_pp0_iter9_reg;
        v27_11_reg_865_pp0_iter11_reg <= v27_11_reg_865_pp0_iter10_reg;
        v27_11_reg_865_pp0_iter12_reg <= v27_11_reg_865_pp0_iter11_reg;
        v27_11_reg_865_pp0_iter2_reg <= v27_11_reg_865;
        v27_11_reg_865_pp0_iter3_reg <= v27_11_reg_865_pp0_iter2_reg;
        v27_11_reg_865_pp0_iter4_reg <= v27_11_reg_865_pp0_iter3_reg;
        v27_11_reg_865_pp0_iter5_reg <= v27_11_reg_865_pp0_iter4_reg;
        v27_11_reg_865_pp0_iter6_reg <= v27_11_reg_865_pp0_iter5_reg;
        v27_11_reg_865_pp0_iter7_reg <= v27_11_reg_865_pp0_iter6_reg;
        v27_11_reg_865_pp0_iter8_reg <= v27_11_reg_865_pp0_iter7_reg;
        v27_11_reg_865_pp0_iter9_reg <= v27_11_reg_865_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_870 <= grp_fu_2592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_870_pp0_iter10_reg <= v27_12_reg_870_pp0_iter9_reg;
        v27_12_reg_870_pp0_iter11_reg <= v27_12_reg_870_pp0_iter10_reg;
        v27_12_reg_870_pp0_iter12_reg <= v27_12_reg_870_pp0_iter11_reg;
        v27_12_reg_870_pp0_iter13_reg <= v27_12_reg_870_pp0_iter12_reg;
        v27_12_reg_870_pp0_iter2_reg <= v27_12_reg_870;
        v27_12_reg_870_pp0_iter3_reg <= v27_12_reg_870_pp0_iter2_reg;
        v27_12_reg_870_pp0_iter4_reg <= v27_12_reg_870_pp0_iter3_reg;
        v27_12_reg_870_pp0_iter5_reg <= v27_12_reg_870_pp0_iter4_reg;
        v27_12_reg_870_pp0_iter6_reg <= v27_12_reg_870_pp0_iter5_reg;
        v27_12_reg_870_pp0_iter7_reg <= v27_12_reg_870_pp0_iter6_reg;
        v27_12_reg_870_pp0_iter8_reg <= v27_12_reg_870_pp0_iter7_reg;
        v27_12_reg_870_pp0_iter9_reg <= v27_12_reg_870_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_800 <= grp_fu_2596_p_dout0;
        v27_reg_795 <= grp_fu_2592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_2_reg_815 <= grp_fu_2592_p_dout0;
        v27_3_reg_820 <= grp_fu_2596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_2_reg_815_pp0_iter2_reg <= v27_2_reg_815;
        v27_2_reg_815_pp0_iter3_reg <= v27_2_reg_815_pp0_iter2_reg;
        v27_3_reg_820_pp0_iter2_reg <= v27_3_reg_820;
        v27_3_reg_820_pp0_iter3_reg <= v27_3_reg_820_pp0_iter2_reg;
        v27_3_reg_820_pp0_iter4_reg <= v27_3_reg_820_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_4_reg_830 <= grp_fu_2592_p_dout0;
        v27_5_reg_835 <= grp_fu_2596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_4_reg_830_pp0_iter2_reg <= v27_4_reg_830;
        v27_4_reg_830_pp0_iter3_reg <= v27_4_reg_830_pp0_iter2_reg;
        v27_4_reg_830_pp0_iter4_reg <= v27_4_reg_830_pp0_iter3_reg;
        v27_4_reg_830_pp0_iter5_reg <= v27_4_reg_830_pp0_iter4_reg;
        v27_5_reg_835_pp0_iter2_reg <= v27_5_reg_835;
        v27_5_reg_835_pp0_iter3_reg <= v27_5_reg_835_pp0_iter2_reg;
        v27_5_reg_835_pp0_iter4_reg <= v27_5_reg_835_pp0_iter3_reg;
        v27_5_reg_835_pp0_iter5_reg <= v27_5_reg_835_pp0_iter4_reg;
        v27_5_reg_835_pp0_iter6_reg <= v27_5_reg_835_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_840 <= grp_fu_2592_p_dout0;
        v27_7_reg_845 <= grp_fu_2596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_840_pp0_iter2_reg <= v27_6_reg_840;
        v27_6_reg_840_pp0_iter3_reg <= v27_6_reg_840_pp0_iter2_reg;
        v27_6_reg_840_pp0_iter4_reg <= v27_6_reg_840_pp0_iter3_reg;
        v27_6_reg_840_pp0_iter5_reg <= v27_6_reg_840_pp0_iter4_reg;
        v27_6_reg_840_pp0_iter6_reg <= v27_6_reg_840_pp0_iter5_reg;
        v27_6_reg_840_pp0_iter7_reg <= v27_6_reg_840_pp0_iter6_reg;
        v27_7_reg_845_pp0_iter2_reg <= v27_7_reg_845;
        v27_7_reg_845_pp0_iter3_reg <= v27_7_reg_845_pp0_iter2_reg;
        v27_7_reg_845_pp0_iter4_reg <= v27_7_reg_845_pp0_iter3_reg;
        v27_7_reg_845_pp0_iter5_reg <= v27_7_reg_845_pp0_iter4_reg;
        v27_7_reg_845_pp0_iter6_reg <= v27_7_reg_845_pp0_iter5_reg;
        v27_7_reg_845_pp0_iter7_reg <= v27_7_reg_845_pp0_iter6_reg;
        v27_7_reg_845_pp0_iter8_reg <= v27_7_reg_845_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_850 <= grp_fu_2592_p_dout0;
        v27_9_reg_855 <= grp_fu_2596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_850_pp0_iter2_reg <= v27_8_reg_850;
        v27_8_reg_850_pp0_iter3_reg <= v27_8_reg_850_pp0_iter2_reg;
        v27_8_reg_850_pp0_iter4_reg <= v27_8_reg_850_pp0_iter3_reg;
        v27_8_reg_850_pp0_iter5_reg <= v27_8_reg_850_pp0_iter4_reg;
        v27_8_reg_850_pp0_iter6_reg <= v27_8_reg_850_pp0_iter5_reg;
        v27_8_reg_850_pp0_iter7_reg <= v27_8_reg_850_pp0_iter6_reg;
        v27_8_reg_850_pp0_iter8_reg <= v27_8_reg_850_pp0_iter7_reg;
        v27_8_reg_850_pp0_iter9_reg <= v27_8_reg_850_pp0_iter8_reg;
        v27_9_reg_855_pp0_iter10_reg <= v27_9_reg_855_pp0_iter9_reg;
        v27_9_reg_855_pp0_iter2_reg <= v27_9_reg_855;
        v27_9_reg_855_pp0_iter3_reg <= v27_9_reg_855_pp0_iter2_reg;
        v27_9_reg_855_pp0_iter4_reg <= v27_9_reg_855_pp0_iter3_reg;
        v27_9_reg_855_pp0_iter5_reg <= v27_9_reg_855_pp0_iter4_reg;
        v27_9_reg_855_pp0_iter6_reg <= v27_9_reg_855_pp0_iter5_reg;
        v27_9_reg_855_pp0_iter7_reg <= v27_9_reg_855_pp0_iter6_reg;
        v27_9_reg_855_pp0_iter8_reg <= v27_9_reg_855_pp0_iter7_reg;
        v27_9_reg_855_pp0_iter9_reg <= v27_9_reg_855_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_13_reg_875 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_14_reg_880 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_15_reg_885 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_16_reg_890 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_17_reg_895 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_18_reg_900 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_19_reg_905 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_20_reg_910 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_21_reg_915 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_22_reg_920 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_23_reg_925 <= grp_fu_2584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_930 <= grp_fu_2588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_935 <= grp_fu_2584_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln78_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln78_reg_661_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter14_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter14_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to13 = 1'b1;
    end else begin
        ap_idle_pp0_0to13 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to15 = 1'b1;
    end else begin
        ap_idle_pp0_1to15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_mul_load = 10'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p0 = v29_24_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_312_p0 = v29_22_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_312_p0 = v29_20_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_312_p0 = v29_18_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_312_p0 = v29_16_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p0 = v29_14_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p0 = v27_reg_795;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p1 = v27_12_reg_870_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_312_p1 = v27_10_reg_860_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_312_p1 = v27_8_reg_850_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_312_p1 = v27_6_reg_840_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_312_p1 = v27_4_reg_830_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p1 = v27_2_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p1 = 64'd0;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_317_p0 = v29_23_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_317_p0 = v29_21_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_317_p0 = v29_19_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p0 = v29_17_reg_895;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p0 = v29_15_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_317_p0 = v29_13_reg_875;
    end else begin
        grp_fu_317_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_317_p1 = v27_11_reg_865_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_317_p1 = v27_9_reg_855_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_317_p1 = v27_7_reg_845_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p1 = v27_5_reg_835_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p1 = v27_3_reg_820_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_317_p1 = v27_1_reg_800_pp0_iter2_reg;
    end else begin
        grp_fu_317_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_321_p0 = v25_12_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_321_p0 = v25_10_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_321_p0 = v25_8_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_321_p0 = v25_6_fu_508_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_321_p0 = v25_4_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_321_p0 = v25_2_fu_448_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p0 = v25_fu_418_p1;
    end else begin
        grp_fu_321_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_321_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_321_p1 = v26_10;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_321_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_321_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_321_p1 = v26_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_321_p1 = v26_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_321_p1 = v26;
    end else begin
        grp_fu_321_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_325_p0 = v25_11_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_325_p0 = v25_9_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_325_p0 = v25_7_fu_513_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_325_p0 = v25_5_fu_483_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_325_p0 = v25_3_fu_453_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_325_p0 = v25_1_fu_423_p1;
    end else begin
        grp_fu_325_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_325_p1 = v26_11;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_325_p1 = v26_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_325_p1 = v26_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_325_p1 = v26_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_325_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_325_p1 = v26_1;
    end else begin
        grp_fu_325_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v0_address0_local = zext_ln81_12_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address0_local = zext_ln81_11_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address0_local = zext_ln81_9_fu_503_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln81_7_fu_473_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln81_5_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln81_3_fu_413_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln81_1_fu_383_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address1_local = zext_ln81_10_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address1_local = zext_ln81_8_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address1_local = zext_ln81_6_fu_463_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln81_4_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln81_2_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln81_fu_372_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to13 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter14_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to15 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln78_fu_357_p2 = (ap_sig_allocacmp_v23_1 + 7'd1);
assign add_ln81_10_fu_528_p2 = (phi_mul_load_reg_665 + 10'd11);
assign add_ln81_11_fu_548_p2 = (phi_mul_load_reg_665 + 10'd12);
assign add_ln81_1_fu_398_p2 = (phi_mul_load_reg_665 + 10'd2);
assign add_ln81_2_fu_408_p2 = (phi_mul_load_reg_665 + 10'd3);
assign add_ln81_3_fu_428_p2 = (phi_mul_load_reg_665 + 10'd4);
assign add_ln81_4_fu_438_p2 = (phi_mul_load_reg_665 + 10'd5);
assign add_ln81_5_fu_458_p2 = (phi_mul_load_reg_665 + 10'd6);
assign add_ln81_6_fu_468_p2 = (phi_mul_load_reg_665 + 10'd7);
assign add_ln81_7_fu_488_p2 = (phi_mul_load_reg_665 + 10'd8);
assign add_ln81_8_fu_498_p2 = (phi_mul_load_reg_665 + 10'd9);
assign add_ln81_9_fu_518_p2 = (phi_mul_load_reg_665 + 10'd10);
assign add_ln81_fu_377_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign grp_fu_2584_p_ce = 1'b1;
assign grp_fu_2584_p_din0 = grp_fu_312_p0;
assign grp_fu_2584_p_din1 = grp_fu_312_p1;
assign grp_fu_2584_p_opcode = 2'd0;
assign grp_fu_2588_p_ce = 1'b1;
assign grp_fu_2588_p_din0 = grp_fu_317_p0;
assign grp_fu_2588_p_din1 = grp_fu_317_p1;
assign grp_fu_2588_p_opcode = 2'd0;
assign grp_fu_2592_p_ce = 1'b1;
assign grp_fu_2592_p_din0 = grp_fu_321_p0;
assign grp_fu_2592_p_din1 = grp_fu_321_p1;
assign grp_fu_2596_p_ce = 1'b1;
assign grp_fu_2596_p_din0 = grp_fu_325_p0;
assign grp_fu_2596_p_din1 = grp_fu_325_p1;
assign icmp_ln78_fu_351_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign next_mul_fu_366_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd13);
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v20_address0 = zext_ln78_fu_573_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_935;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_558_p1 = reg_329;
assign v25_11_fu_563_p1 = reg_334;
assign v25_12_fu_568_p1 = reg_329;
assign v25_1_fu_423_p1 = reg_334;
assign v25_2_fu_448_p1 = reg_329;
assign v25_3_fu_453_p1 = reg_334;
assign v25_4_fu_478_p1 = reg_329;
assign v25_5_fu_483_p1 = reg_334;
assign v25_6_fu_508_p1 = reg_329;
assign v25_7_fu_513_p1 = reg_334;
assign v25_8_fu_538_p1 = reg_329;
assign v25_9_fu_543_p1 = reg_334;
assign v25_fu_418_p1 = reg_329;
assign zext_ln78_fu_573_p1 = v23_1_reg_656_pp0_iter14_reg;
assign zext_ln81_10_fu_523_p1 = add_ln81_9_fu_518_p2;
assign zext_ln81_11_fu_533_p1 = add_ln81_10_fu_528_p2;
assign zext_ln81_12_fu_553_p1 = add_ln81_11_fu_548_p2;
assign zext_ln81_1_fu_383_p1 = add_ln81_fu_377_p2;
assign zext_ln81_2_fu_403_p1 = add_ln81_1_fu_398_p2;
assign zext_ln81_3_fu_413_p1 = add_ln81_2_fu_408_p2;
assign zext_ln81_4_fu_433_p1 = add_ln81_3_fu_428_p2;
assign zext_ln81_5_fu_443_p1 = add_ln81_4_fu_438_p2;
assign zext_ln81_6_fu_463_p1 = add_ln81_5_fu_458_p2;
assign zext_ln81_7_fu_473_p1 = add_ln81_6_fu_468_p2;
assign zext_ln81_8_fu_493_p1 = add_ln81_7_fu_488_p2;
assign zext_ln81_9_fu_503_p1 = add_ln81_8_fu_498_p2;
assign zext_ln81_fu_372_p1 = ap_sig_allocacmp_phi_mul_load;
endmodule 