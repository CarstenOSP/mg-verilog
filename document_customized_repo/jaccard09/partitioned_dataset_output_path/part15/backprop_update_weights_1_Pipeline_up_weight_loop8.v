
module backprop_update_weights_1_Pipeline_up_weight_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,bias_norm_23);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
input  [63:0] bias_norm_23;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_419;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_157;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_161;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_153_p2;
reg   [63:0] reg_166;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_2_reg_412;
wire   [0:0] tmp_fu_178_p3;
reg   [5:0] biases2_addr_reg_423;
reg   [5:0] biases2_addr_reg_423_pp0_iter1_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter2_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter3_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter4_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter5_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter6_reg;
reg   [5:0] biases2_addr_reg_423_pp0_iter7_reg;
reg   [5:0] biases2_addr_1_reg_428;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter1_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter2_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter3_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter4_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter5_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter6_reg;
reg   [5:0] biases2_addr_1_reg_428_pp0_iter7_reg;
reg   [5:0] biases2_addr_2_reg_434;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter1_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter2_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter3_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter4_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter5_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter6_reg;
reg   [5:0] biases2_addr_2_reg_434_pp0_iter7_reg;
reg   [5:0] biases2_addr_3_reg_439;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter1_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter2_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter3_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter4_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter5_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter6_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter7_reg;
reg   [5:0] biases2_addr_3_reg_439_pp0_iter8_reg;
reg   [2:0] tmp_5_reg_445;
reg   [0:0] tmp_1_reg_453;
wire   [63:0] bitcast_ln172_fu_276_p1;
reg   [63:0] biases2_load_3_reg_463;
reg   [5:0] biases2_addr_4_reg_468;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter1_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter2_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter3_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter4_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter5_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter6_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter7_reg;
reg   [5:0] biases2_addr_4_reg_468_pp0_iter8_reg;
reg   [5:0] biases2_addr_5_reg_474;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter1_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter2_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter3_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter4_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter5_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter6_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter7_reg;
reg   [5:0] biases2_addr_5_reg_474_pp0_iter8_reg;
wire   [63:0] bitcast_ln172_2_fu_308_p1;
reg   [63:0] biases2_load_5_reg_484;
reg   [5:0] biases2_addr_6_reg_489;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter1_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter2_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter3_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter4_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter5_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter6_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter7_reg;
reg   [5:0] biases2_addr_6_reg_489_pp0_iter8_reg;
reg   [5:0] biases2_addr_7_reg_495;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter1_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter2_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter3_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter4_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter5_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter6_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter7_reg;
reg   [5:0] biases2_addr_7_reg_495_pp0_iter8_reg;
wire   [63:0] bitcast_ln172_4_fu_337_p1;
reg   [63:0] biases2_load_7_reg_505;
wire   [63:0] bitcast_ln172_6_fu_342_p1;
wire   [63:0] bitcast_ln172_8_fu_346_p1;
wire   [63:0] bitcast_ln172_10_fu_351_p1;
wire   [63:0] bitcast_ln172_12_fu_355_p1;
wire   [63:0] bitcast_ln172_14_fu_360_p1;
reg   [63:0] div147_4_reg_535;
reg   [63:0] div147_5_reg_540;
reg   [63:0] div147_6_reg_545;
reg   [63:0] div147_7_reg_550;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln171_fu_186_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_fu_209_p1;
wire   [63:0] zext_ln172_1_fu_242_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_2_fu_255_p1;
wire   [63:0] zext_ln172_3_fu_288_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln172_4_fu_303_p1;
wire   [63:0] zext_ln172_5_fu_320_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_6_fu_332_p1;
reg   [6:0] i_fu_70;
wire   [6:0] add_ln171_fu_214_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    biases2_ce1_local;
reg   [5:0] biases2_address1_local;
reg    biases2_ce0_local;
reg   [5:0] biases2_address0_local;
reg    biases2_we1_local;
reg   [63:0] biases2_d1_local;
wire   [63:0] bitcast_ln172_1_fu_364_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln172_3_fu_369_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln172_5_fu_374_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln172_7_fu_379_p1;
wire    ap_block_pp0_stage4;
reg    biases2_we0_local;
reg   [63:0] biases2_d0_local;
wire   [63:0] bitcast_ln172_9_fu_384_p1;
wire   [63:0] bitcast_ln172_11_fu_388_p1;
wire   [63:0] bitcast_ln172_13_fu_392_p1;
wire   [63:0] bitcast_ln172_15_fu_396_p1;
reg   [63:0] grp_fu_153_p0;
wire   [4:0] tmp_s_fu_191_p4;
wire   [5:0] or_ln3_fu_201_p3;
wire   [3:0] tmp_4_fu_225_p4;
wire   [5:0] or_ln171_1_fu_234_p3;
wire   [5:0] or_ln171_2_fu_247_p3;
wire   [5:0] or_ln171_3_fu_281_p3;
wire   [5:0] or_ln171_4_fu_293_p5;
wire   [5:0] or_ln171_5_fu_313_p3;
wire   [5:0] or_ln171_6_fu_325_p3;
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
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_70 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U382(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_153_p0),.din1(bias_norm_23),.ce(1'b1),.dout(grp_fu_153_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_178_p3 == 1'd0))) begin
            i_fu_70 <= add_ln171_fu_214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_161 <= biases2_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_161 <= biases2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_addr_1_reg_428[5 : 1] <= zext_ln172_fu_209_p1[5 : 1];
        biases2_addr_1_reg_428_pp0_iter1_reg[5 : 1] <= biases2_addr_1_reg_428[5 : 1];
        biases2_addr_1_reg_428_pp0_iter2_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter1_reg[5 : 1];
        biases2_addr_1_reg_428_pp0_iter3_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter2_reg[5 : 1];
        biases2_addr_1_reg_428_pp0_iter4_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter3_reg[5 : 1];
        biases2_addr_1_reg_428_pp0_iter5_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter4_reg[5 : 1];
        biases2_addr_1_reg_428_pp0_iter6_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter5_reg[5 : 1];
        biases2_addr_1_reg_428_pp0_iter7_reg[5 : 1] <= biases2_addr_1_reg_428_pp0_iter6_reg[5 : 1];
        biases2_addr_reg_423 <= zext_ln171_fu_186_p1;
        biases2_addr_reg_423_pp0_iter1_reg <= biases2_addr_reg_423;
        biases2_addr_reg_423_pp0_iter2_reg <= biases2_addr_reg_423_pp0_iter1_reg;
        biases2_addr_reg_423_pp0_iter3_reg <= biases2_addr_reg_423_pp0_iter2_reg;
        biases2_addr_reg_423_pp0_iter4_reg <= biases2_addr_reg_423_pp0_iter3_reg;
        biases2_addr_reg_423_pp0_iter5_reg <= biases2_addr_reg_423_pp0_iter4_reg;
        biases2_addr_reg_423_pp0_iter6_reg <= biases2_addr_reg_423_pp0_iter5_reg;
        biases2_addr_reg_423_pp0_iter7_reg <= biases2_addr_reg_423_pp0_iter6_reg;
        i_2_reg_412 <= ap_sig_allocacmp_i_2;
        tmp_reg_419 <= ap_sig_allocacmp_i_2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_addr_2_reg_434[5 : 2] <= zext_ln172_1_fu_242_p1[5 : 2];
        biases2_addr_2_reg_434_pp0_iter1_reg[5 : 2] <= biases2_addr_2_reg_434[5 : 2];
        biases2_addr_2_reg_434_pp0_iter2_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter1_reg[5 : 2];
        biases2_addr_2_reg_434_pp0_iter3_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter2_reg[5 : 2];
        biases2_addr_2_reg_434_pp0_iter4_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter3_reg[5 : 2];
        biases2_addr_2_reg_434_pp0_iter5_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter4_reg[5 : 2];
        biases2_addr_2_reg_434_pp0_iter6_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter5_reg[5 : 2];
        biases2_addr_2_reg_434_pp0_iter7_reg[5 : 2] <= biases2_addr_2_reg_434_pp0_iter6_reg[5 : 2];
        biases2_addr_3_reg_439[5 : 2] <= zext_ln172_2_fu_255_p1[5 : 2];
        biases2_addr_3_reg_439_pp0_iter1_reg[5 : 2] <= biases2_addr_3_reg_439[5 : 2];
        biases2_addr_3_reg_439_pp0_iter2_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter1_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter3_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter2_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter4_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter3_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter5_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter4_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter6_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter5_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter7_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter6_reg[5 : 2];
        biases2_addr_3_reg_439_pp0_iter8_reg[5 : 2] <= biases2_addr_3_reg_439_pp0_iter7_reg[5 : 2];
        tmp_1_reg_453 <= i_2_reg_412[32'd1];
        tmp_5_reg_445 <= {{i_2_reg_412[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_addr_4_reg_468[5 : 3] <= zext_ln172_3_fu_288_p1[5 : 3];
        biases2_addr_4_reg_468_pp0_iter1_reg[5 : 3] <= biases2_addr_4_reg_468[5 : 3];
        biases2_addr_4_reg_468_pp0_iter2_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter1_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter3_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter2_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter4_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter3_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter5_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter4_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter6_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter5_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter7_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter6_reg[5 : 3];
        biases2_addr_4_reg_468_pp0_iter8_reg[5 : 3] <= biases2_addr_4_reg_468_pp0_iter7_reg[5 : 3];
        biases2_addr_5_reg_474[1] <= zext_ln172_4_fu_303_p1[1];
biases2_addr_5_reg_474[5 : 3] <= zext_ln172_4_fu_303_p1[5 : 3];
        biases2_addr_5_reg_474_pp0_iter1_reg[1] <= biases2_addr_5_reg_474[1];
biases2_addr_5_reg_474_pp0_iter1_reg[5 : 3] <= biases2_addr_5_reg_474[5 : 3];
        biases2_addr_5_reg_474_pp0_iter2_reg[1] <= biases2_addr_5_reg_474_pp0_iter1_reg[1];
biases2_addr_5_reg_474_pp0_iter2_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter1_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter3_reg[1] <= biases2_addr_5_reg_474_pp0_iter2_reg[1];
biases2_addr_5_reg_474_pp0_iter3_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter2_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter4_reg[1] <= biases2_addr_5_reg_474_pp0_iter3_reg[1];
biases2_addr_5_reg_474_pp0_iter4_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter3_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter5_reg[1] <= biases2_addr_5_reg_474_pp0_iter4_reg[1];
biases2_addr_5_reg_474_pp0_iter5_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter4_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter6_reg[1] <= biases2_addr_5_reg_474_pp0_iter5_reg[1];
biases2_addr_5_reg_474_pp0_iter6_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter5_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter7_reg[1] <= biases2_addr_5_reg_474_pp0_iter6_reg[1];
biases2_addr_5_reg_474_pp0_iter7_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter6_reg[5 : 3];
        biases2_addr_5_reg_474_pp0_iter8_reg[1] <= biases2_addr_5_reg_474_pp0_iter7_reg[1];
biases2_addr_5_reg_474_pp0_iter8_reg[5 : 3] <= biases2_addr_5_reg_474_pp0_iter7_reg[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_addr_6_reg_489[5 : 3] <= zext_ln172_5_fu_320_p1[5 : 3];
        biases2_addr_6_reg_489_pp0_iter1_reg[5 : 3] <= biases2_addr_6_reg_489[5 : 3];
        biases2_addr_6_reg_489_pp0_iter2_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter1_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter3_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter2_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter4_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter3_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter5_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter4_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter6_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter5_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter7_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter6_reg[5 : 3];
        biases2_addr_6_reg_489_pp0_iter8_reg[5 : 3] <= biases2_addr_6_reg_489_pp0_iter7_reg[5 : 3];
        biases2_addr_7_reg_495[5 : 3] <= zext_ln172_6_fu_332_p1[5 : 3];
        biases2_addr_7_reg_495_pp0_iter1_reg[5 : 3] <= biases2_addr_7_reg_495[5 : 3];
        biases2_addr_7_reg_495_pp0_iter2_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter1_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter3_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter2_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter4_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter3_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter5_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter4_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter6_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter5_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter7_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter6_reg[5 : 3];
        biases2_addr_7_reg_495_pp0_iter8_reg[5 : 3] <= biases2_addr_7_reg_495_pp0_iter7_reg[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_load_3_reg_463 <= biases2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_load_5_reg_484 <= biases2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        biases2_load_7_reg_505 <= biases2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div147_4_reg_535 <= grp_fu_153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div147_5_reg_540 <= grp_fu_153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div147_6_reg_545 <= grp_fu_153_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div147_7_reg_550 <= grp_fu_153_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_157 <= biases2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_166 <= grp_fu_153_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_419 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        biases2_address0_local = biases2_addr_7_reg_495_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        biases2_address0_local = biases2_addr_6_reg_489_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        biases2_address0_local = biases2_addr_5_reg_474_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        biases2_address0_local = biases2_addr_4_reg_468_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_address0_local = zext_ln172_6_fu_332_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_address0_local = zext_ln172_4_fu_303_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_address0_local = zext_ln172_2_fu_255_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_address0_local = zext_ln172_fu_209_p1;
    end else begin
        biases2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        biases2_address1_local = biases2_addr_3_reg_439_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        biases2_address1_local = biases2_addr_2_reg_434_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        biases2_address1_local = biases2_addr_1_reg_428_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        biases2_address1_local = biases2_addr_reg_423_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_address1_local = zext_ln172_5_fu_320_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_address1_local = zext_ln172_3_fu_288_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_address1_local = zext_ln172_1_fu_242_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_address1_local = zext_ln171_fu_186_p1;
    end else begin
        biases2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_ce0_local = 1'b1;
    end else begin
        biases2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_ce1_local = 1'b1;
    end else begin
        biases2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            biases2_d0_local = bitcast_ln172_15_fu_396_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            biases2_d0_local = bitcast_ln172_13_fu_392_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            biases2_d0_local = bitcast_ln172_11_fu_388_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            biases2_d0_local = bitcast_ln172_9_fu_384_p1;
        end else begin
            biases2_d0_local = 'bx;
        end
    end else begin
        biases2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        biases2_d1_local = bitcast_ln172_7_fu_379_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        biases2_d1_local = bitcast_ln172_5_fu_374_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        biases2_d1_local = bitcast_ln172_3_fu_369_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        biases2_d1_local = bitcast_ln172_1_fu_364_p1;
    end else begin
        biases2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        biases2_we0_local = 1'b1;
    end else begin
        biases2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        biases2_we1_local = 1'b1;
    end else begin
        biases2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_153_p0 = bitcast_ln172_14_fu_360_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_153_p0 = bitcast_ln172_12_fu_355_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_153_p0 = bitcast_ln172_10_fu_351_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_153_p0 = bitcast_ln172_8_fu_346_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_153_p0 = bitcast_ln172_6_fu_342_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_153_p0 = bitcast_ln172_4_fu_337_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_153_p0 = bitcast_ln172_2_fu_308_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_153_p0 = bitcast_ln172_fu_276_p1;
    end else begin
        grp_fu_153_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln171_fu_214_p2 = (ap_sig_allocacmp_i_2 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign biases2_address0 = biases2_address0_local;
assign biases2_address1 = biases2_address1_local;
assign biases2_ce0 = biases2_ce0_local;
assign biases2_ce1 = biases2_ce1_local;
assign biases2_d0 = biases2_d0_local;
assign biases2_d1 = biases2_d1_local;
assign biases2_we0 = biases2_we0_local;
assign biases2_we1 = biases2_we1_local;
assign bitcast_ln172_10_fu_351_p1 = biases2_load_5_reg_484;
assign bitcast_ln172_11_fu_388_p1 = div147_5_reg_540;
assign bitcast_ln172_12_fu_355_p1 = reg_157;
assign bitcast_ln172_13_fu_392_p1 = div147_6_reg_545;
assign bitcast_ln172_14_fu_360_p1 = biases2_load_7_reg_505;
assign bitcast_ln172_15_fu_396_p1 = div147_7_reg_550;
assign bitcast_ln172_1_fu_364_p1 = reg_166;
assign bitcast_ln172_2_fu_308_p1 = reg_161;
assign bitcast_ln172_3_fu_369_p1 = reg_166;
assign bitcast_ln172_4_fu_337_p1 = reg_157;
assign bitcast_ln172_5_fu_374_p1 = reg_166;
assign bitcast_ln172_6_fu_342_p1 = biases2_load_3_reg_463;
assign bitcast_ln172_7_fu_379_p1 = reg_166;
assign bitcast_ln172_8_fu_346_p1 = reg_161;
assign bitcast_ln172_9_fu_384_p1 = div147_4_reg_535;
assign bitcast_ln172_fu_276_p1 = reg_157;
assign or_ln171_1_fu_234_p3 = {{tmp_4_fu_225_p4}, {2'd2}};
assign or_ln171_2_fu_247_p3 = {{tmp_4_fu_225_p4}, {2'd3}};
assign or_ln171_3_fu_281_p3 = {{tmp_5_reg_445}, {3'd4}};
assign or_ln171_4_fu_293_p5 = {{{{tmp_5_reg_445}, {1'd1}}, {tmp_1_reg_453}}, {1'd1}};
assign or_ln171_5_fu_313_p3 = {{tmp_5_reg_445}, {3'd6}};
assign or_ln171_6_fu_325_p3 = {{tmp_5_reg_445}, {3'd7}};
assign or_ln3_fu_201_p3 = {{tmp_s_fu_191_p4}, {1'd1}};
assign tmp_4_fu_225_p4 = {{i_2_reg_412[5:2]}};
assign tmp_fu_178_p3 = ap_sig_allocacmp_i_2[32'd6];
assign tmp_s_fu_191_p4 = {{ap_sig_allocacmp_i_2[5:1]}};
assign zext_ln171_fu_186_p1 = ap_sig_allocacmp_i_2;
assign zext_ln172_1_fu_242_p1 = or_ln171_1_fu_234_p3;
assign zext_ln172_2_fu_255_p1 = or_ln171_2_fu_247_p3;
assign zext_ln172_3_fu_288_p1 = or_ln171_3_fu_281_p3;
assign zext_ln172_4_fu_303_p1 = or_ln171_4_fu_293_p5;
assign zext_ln172_5_fu_320_p1 = or_ln171_5_fu_313_p3;
assign zext_ln172_6_fu_332_p1 = or_ln171_6_fu_325_p3;
assign zext_ln172_fu_209_p1 = or_ln3_fu_201_p3;
always @ (posedge ap_clk) begin
    biases2_addr_1_reg_428[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter1_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter2_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter3_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter4_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter5_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter6_reg[0] <= 1'b1;
    biases2_addr_1_reg_428_pp0_iter7_reg[0] <= 1'b1;
    biases2_addr_2_reg_434[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter1_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter2_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter3_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter4_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter5_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter6_reg[1:0] <= 2'b10;
    biases2_addr_2_reg_434_pp0_iter7_reg[1:0] <= 2'b10;
    biases2_addr_3_reg_439[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter1_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter2_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter3_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter4_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter5_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter6_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter7_reg[1:0] <= 2'b11;
    biases2_addr_3_reg_439_pp0_iter8_reg[1:0] <= 2'b11;
    biases2_addr_4_reg_468[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter1_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter2_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter3_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter4_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter5_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter6_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter7_reg[2:0] <= 3'b100;
    biases2_addr_4_reg_468_pp0_iter8_reg[2:0] <= 3'b100;
    biases2_addr_5_reg_474[0] <= 1'b1;
    biases2_addr_5_reg_474[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter1_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter1_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter2_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter2_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter3_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter3_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter4_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter4_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter5_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter5_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter6_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter6_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter7_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter7_reg[2] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter8_reg[0] <= 1'b1;
    biases2_addr_5_reg_474_pp0_iter8_reg[2] <= 1'b1;
    biases2_addr_6_reg_489[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter1_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter2_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter3_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter4_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter5_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter6_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter7_reg[2:0] <= 3'b110;
    biases2_addr_6_reg_489_pp0_iter8_reg[2:0] <= 3'b110;
    biases2_addr_7_reg_495[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter1_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter2_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter3_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter4_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter5_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter6_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter7_reg[2:0] <= 3'b111;
    biases2_addr_7_reg_495_pp0_iter8_reg[2:0] <= 3'b111;
end
endmodule 
