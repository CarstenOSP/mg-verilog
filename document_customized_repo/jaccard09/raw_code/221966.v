module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v22,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,grp_fu_919_p_din0,grp_fu_919_p_din1,grp_fu_919_p_dout0,grp_fu_919_p_ce,grp_fu_923_p_din0,grp_fu_923_p_din1,grp_fu_923_p_dout0,grp_fu_923_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [21:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [21:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
input  [31:0] v22;
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
output  [31:0] grp_fu_919_p_din0;
output  [31:0] grp_fu_919_p_din1;
input  [31:0] grp_fu_919_p_dout0;
output   grp_fu_919_p_ce;
output  [31:0] grp_fu_923_p_din0;
output  [31:0] grp_fu_923_p_din1;
input  [31:0] grp_fu_923_p_dout0;
output   grp_fu_923_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_532;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_225;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_230;
reg   [10:0] v19_3_reg_525;
reg   [10:0] v19_3_reg_525_pp0_iter1_reg;
reg   [10:0] v19_3_reg_525_pp0_iter2_reg;
reg   [10:0] v19_3_reg_525_pp0_iter3_reg;
reg   [10:0] v19_3_reg_525_pp0_iter4_reg;
reg   [10:0] v19_3_reg_525_pp0_iter5_reg;
reg   [10:0] v19_3_reg_525_pp0_iter6_reg;
reg   [10:0] v19_3_reg_525_pp0_iter7_reg;
reg   [10:0] v19_3_reg_525_pp0_iter8_reg;
reg   [10:0] v19_3_reg_525_pp0_iter9_reg;
reg   [10:0] v19_3_reg_525_pp0_iter10_reg;
reg   [10:0] v19_3_reg_525_pp0_iter11_reg;
reg   [10:0] v19_3_reg_525_pp0_iter12_reg;
reg   [10:0] v19_3_reg_525_pp0_iter13_reg;
reg   [10:0] v19_3_reg_525_pp0_iter14_reg;
reg   [10:0] v19_3_reg_525_pp0_iter15_reg;
wire   [0:0] tmp_fu_243_p3;
wire   [22:0] add_ln1_fu_261_p3;
wire   [0:0] icmp_ln51_fu_281_p2;
reg   [0:0] icmp_ln51_reg_541;
reg   [0:0] icmp_ln51_reg_541_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter6_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter7_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter8_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter9_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter10_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter11_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter12_reg;
reg   [0:0] icmp_ln51_reg_541_pp0_iter13_reg;
wire   [8:0] tmp_18_fu_287_p4;
reg   [8:0] tmp_18_reg_546;
reg   [8:0] tmp_18_reg_546_pp0_iter1_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter2_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter3_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter4_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter5_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter6_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter7_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter8_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter9_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter10_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter11_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter12_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter13_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter14_reg;
reg   [8:0] tmp_18_reg_546_pp0_iter15_reg;
wire   [22:0] add_ln51_1_fu_297_p4;
wire   [0:0] icmp_ln51_1_fu_319_p2;
reg   [0:0] icmp_ln51_1_reg_556;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter1_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter2_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter3_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter4_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter5_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter6_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter7_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter8_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter9_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter10_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter11_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter12_reg;
reg   [0:0] icmp_ln51_1_reg_556_pp0_iter13_reg;
wire   [7:0] tmp_19_fu_325_p4;
reg   [7:0] tmp_19_reg_561;
reg   [7:0] tmp_19_reg_561_pp0_iter1_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter2_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter3_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter4_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter5_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter6_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter7_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter8_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter9_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter10_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter11_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter12_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter13_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter14_reg;
reg   [7:0] tmp_19_reg_561_pp0_iter15_reg;
wire   [22:0] add_ln51_2_fu_334_p4;
wire   [0:0] icmp_ln51_2_fu_355_p2;
reg   [0:0] icmp_ln51_2_reg_572;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter1_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter2_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter3_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter4_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter5_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter6_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter7_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter8_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter9_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter10_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter11_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter12_reg;
reg   [0:0] icmp_ln51_2_reg_572_pp0_iter13_reg;
wire   [22:0] add_ln51_3_fu_361_p4;
wire   [0:0] icmp_ln51_3_fu_382_p2;
reg   [0:0] icmp_ln51_3_reg_582;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter1_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter2_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter3_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter4_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter5_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter6_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter7_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter8_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter9_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter10_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter11_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter12_reg;
reg   [0:0] icmp_ln51_3_reg_582_pp0_iter13_reg;
wire   [31:0] select_ln51_fu_410_p3;
reg   [31:0] select_ln51_reg_607;
wire   [31:0] select_ln51_1_fu_417_p3;
reg   [31:0] select_ln51_1_reg_612;
wire   [31:0] v23_fu_436_p1;
wire   [31:0] v23_11_fu_440_p1;
wire   [31:0] select_ln51_2_fu_444_p3;
reg   [31:0] select_ln51_2_reg_647;
wire   [31:0] select_ln51_3_fu_451_p3;
reg   [31:0] select_ln51_3_reg_652;
wire   [31:0] v23_12_fu_458_p1;
wire   [31:0] v23_13_fu_462_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_fu_398_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_2_fu_404_p1;
wire   [63:0] zext_ln51_4_fu_424_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_6_fu_430_p1;
wire   [63:0] zext_ln47_fu_466_p1;
wire   [63:0] zext_ln51_1_fu_477_p1;
wire   [63:0] zext_ln51_3_fu_489_p1;
wire   [63:0] zext_ln51_5_fu_501_p1;
reg   [10:0] v19_fu_78;
wire   [10:0] add_ln47_fu_388_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_3;
reg    v0_0_ce1_local;
reg   [21:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [21:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [21:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [21:0] v0_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg   [31:0] grp_fu_217_p1;
reg   [31:0] grp_fu_221_p1;
wire   [11:0] tmp_1_fu_251_p4;
wire   [22:0] add_ln51_fu_275_p2;
wire   [22:0] add_ln51_6_fu_313_p2;
wire   [22:0] add_ln51_7_fu_349_p2;
wire   [22:0] add_ln51_10_fu_376_p2;
wire   [22:0] grp_fu_269_p2;
wire   [22:0] grp_fu_307_p2;
wire   [22:0] grp_fu_343_p2;
wire   [22:0] grp_fu_370_p2;
wire   [9:0] or_ln1_fu_470_p3;
wire   [9:0] or_ln47_1_fu_482_p3;
wire   [9:0] or_ln47_2_fu_494_p3;
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
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_78 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(add_ln1_fu_261_p3),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_269_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_1_fu_297_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_307_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_2_fu_334_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_343_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_3_fu_361_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_370_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_78 <= 11'd0;
    end else if (((tmp_reg_532 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_78 <= add_ln47_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln51_2_reg_572 <= icmp_ln51_2_fu_355_p2;
        icmp_ln51_2_reg_572_pp0_iter10_reg <= icmp_ln51_2_reg_572_pp0_iter9_reg;
        icmp_ln51_2_reg_572_pp0_iter11_reg <= icmp_ln51_2_reg_572_pp0_iter10_reg;
        icmp_ln51_2_reg_572_pp0_iter12_reg <= icmp_ln51_2_reg_572_pp0_iter11_reg;
        icmp_ln51_2_reg_572_pp0_iter13_reg <= icmp_ln51_2_reg_572_pp0_iter12_reg;
        icmp_ln51_2_reg_572_pp0_iter1_reg <= icmp_ln51_2_reg_572;
        icmp_ln51_2_reg_572_pp0_iter2_reg <= icmp_ln51_2_reg_572_pp0_iter1_reg;
        icmp_ln51_2_reg_572_pp0_iter3_reg <= icmp_ln51_2_reg_572_pp0_iter2_reg;
        icmp_ln51_2_reg_572_pp0_iter4_reg <= icmp_ln51_2_reg_572_pp0_iter3_reg;
        icmp_ln51_2_reg_572_pp0_iter5_reg <= icmp_ln51_2_reg_572_pp0_iter4_reg;
        icmp_ln51_2_reg_572_pp0_iter6_reg <= icmp_ln51_2_reg_572_pp0_iter5_reg;
        icmp_ln51_2_reg_572_pp0_iter7_reg <= icmp_ln51_2_reg_572_pp0_iter6_reg;
        icmp_ln51_2_reg_572_pp0_iter8_reg <= icmp_ln51_2_reg_572_pp0_iter7_reg;
        icmp_ln51_2_reg_572_pp0_iter9_reg <= icmp_ln51_2_reg_572_pp0_iter8_reg;
        icmp_ln51_3_reg_582 <= icmp_ln51_3_fu_382_p2;
        icmp_ln51_3_reg_582_pp0_iter10_reg <= icmp_ln51_3_reg_582_pp0_iter9_reg;
        icmp_ln51_3_reg_582_pp0_iter11_reg <= icmp_ln51_3_reg_582_pp0_iter10_reg;
        icmp_ln51_3_reg_582_pp0_iter12_reg <= icmp_ln51_3_reg_582_pp0_iter11_reg;
        icmp_ln51_3_reg_582_pp0_iter13_reg <= icmp_ln51_3_reg_582_pp0_iter12_reg;
        icmp_ln51_3_reg_582_pp0_iter1_reg <= icmp_ln51_3_reg_582;
        icmp_ln51_3_reg_582_pp0_iter2_reg <= icmp_ln51_3_reg_582_pp0_iter1_reg;
        icmp_ln51_3_reg_582_pp0_iter3_reg <= icmp_ln51_3_reg_582_pp0_iter2_reg;
        icmp_ln51_3_reg_582_pp0_iter4_reg <= icmp_ln51_3_reg_582_pp0_iter3_reg;
        icmp_ln51_3_reg_582_pp0_iter5_reg <= icmp_ln51_3_reg_582_pp0_iter4_reg;
        icmp_ln51_3_reg_582_pp0_iter6_reg <= icmp_ln51_3_reg_582_pp0_iter5_reg;
        icmp_ln51_3_reg_582_pp0_iter7_reg <= icmp_ln51_3_reg_582_pp0_iter6_reg;
        icmp_ln51_3_reg_582_pp0_iter8_reg <= icmp_ln51_3_reg_582_pp0_iter7_reg;
        icmp_ln51_3_reg_582_pp0_iter9_reg <= icmp_ln51_3_reg_582_pp0_iter8_reg;
        select_ln51_1_reg_612 <= select_ln51_1_fu_417_p3;
        select_ln51_reg_607 <= select_ln51_fu_410_p3;
        tmp_19_reg_561 <= {{v19_3_reg_525[9:2]}};
        tmp_19_reg_561_pp0_iter10_reg <= tmp_19_reg_561_pp0_iter9_reg;
        tmp_19_reg_561_pp0_iter11_reg <= tmp_19_reg_561_pp0_iter10_reg;
        tmp_19_reg_561_pp0_iter12_reg <= tmp_19_reg_561_pp0_iter11_reg;
        tmp_19_reg_561_pp0_iter13_reg <= tmp_19_reg_561_pp0_iter12_reg;
        tmp_19_reg_561_pp0_iter14_reg <= tmp_19_reg_561_pp0_iter13_reg;
        tmp_19_reg_561_pp0_iter15_reg <= tmp_19_reg_561_pp0_iter14_reg;
        tmp_19_reg_561_pp0_iter1_reg <= tmp_19_reg_561;
        tmp_19_reg_561_pp0_iter2_reg <= tmp_19_reg_561_pp0_iter1_reg;
        tmp_19_reg_561_pp0_iter3_reg <= tmp_19_reg_561_pp0_iter2_reg;
        tmp_19_reg_561_pp0_iter4_reg <= tmp_19_reg_561_pp0_iter3_reg;
        tmp_19_reg_561_pp0_iter5_reg <= tmp_19_reg_561_pp0_iter4_reg;
        tmp_19_reg_561_pp0_iter6_reg <= tmp_19_reg_561_pp0_iter5_reg;
        tmp_19_reg_561_pp0_iter7_reg <= tmp_19_reg_561_pp0_iter6_reg;
        tmp_19_reg_561_pp0_iter8_reg <= tmp_19_reg_561_pp0_iter7_reg;
        tmp_19_reg_561_pp0_iter9_reg <= tmp_19_reg_561_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln51_1_reg_556 <= icmp_ln51_1_fu_319_p2;
        icmp_ln51_1_reg_556_pp0_iter10_reg <= icmp_ln51_1_reg_556_pp0_iter9_reg;
        icmp_ln51_1_reg_556_pp0_iter11_reg <= icmp_ln51_1_reg_556_pp0_iter10_reg;
        icmp_ln51_1_reg_556_pp0_iter12_reg <= icmp_ln51_1_reg_556_pp0_iter11_reg;
        icmp_ln51_1_reg_556_pp0_iter13_reg <= icmp_ln51_1_reg_556_pp0_iter12_reg;
        icmp_ln51_1_reg_556_pp0_iter1_reg <= icmp_ln51_1_reg_556;
        icmp_ln51_1_reg_556_pp0_iter2_reg <= icmp_ln51_1_reg_556_pp0_iter1_reg;
        icmp_ln51_1_reg_556_pp0_iter3_reg <= icmp_ln51_1_reg_556_pp0_iter2_reg;
        icmp_ln51_1_reg_556_pp0_iter4_reg <= icmp_ln51_1_reg_556_pp0_iter3_reg;
        icmp_ln51_1_reg_556_pp0_iter5_reg <= icmp_ln51_1_reg_556_pp0_iter4_reg;
        icmp_ln51_1_reg_556_pp0_iter6_reg <= icmp_ln51_1_reg_556_pp0_iter5_reg;
        icmp_ln51_1_reg_556_pp0_iter7_reg <= icmp_ln51_1_reg_556_pp0_iter6_reg;
        icmp_ln51_1_reg_556_pp0_iter8_reg <= icmp_ln51_1_reg_556_pp0_iter7_reg;
        icmp_ln51_1_reg_556_pp0_iter9_reg <= icmp_ln51_1_reg_556_pp0_iter8_reg;
        icmp_ln51_reg_541 <= icmp_ln51_fu_281_p2;
        icmp_ln51_reg_541_pp0_iter10_reg <= icmp_ln51_reg_541_pp0_iter9_reg;
        icmp_ln51_reg_541_pp0_iter11_reg <= icmp_ln51_reg_541_pp0_iter10_reg;
        icmp_ln51_reg_541_pp0_iter12_reg <= icmp_ln51_reg_541_pp0_iter11_reg;
        icmp_ln51_reg_541_pp0_iter13_reg <= icmp_ln51_reg_541_pp0_iter12_reg;
        icmp_ln51_reg_541_pp0_iter1_reg <= icmp_ln51_reg_541;
        icmp_ln51_reg_541_pp0_iter2_reg <= icmp_ln51_reg_541_pp0_iter1_reg;
        icmp_ln51_reg_541_pp0_iter3_reg <= icmp_ln51_reg_541_pp0_iter2_reg;
        icmp_ln51_reg_541_pp0_iter4_reg <= icmp_ln51_reg_541_pp0_iter3_reg;
        icmp_ln51_reg_541_pp0_iter5_reg <= icmp_ln51_reg_541_pp0_iter4_reg;
        icmp_ln51_reg_541_pp0_iter6_reg <= icmp_ln51_reg_541_pp0_iter5_reg;
        icmp_ln51_reg_541_pp0_iter7_reg <= icmp_ln51_reg_541_pp0_iter6_reg;
        icmp_ln51_reg_541_pp0_iter8_reg <= icmp_ln51_reg_541_pp0_iter7_reg;
        icmp_ln51_reg_541_pp0_iter9_reg <= icmp_ln51_reg_541_pp0_iter8_reg;
        select_ln51_2_reg_647 <= select_ln51_2_fu_444_p3;
        select_ln51_3_reg_652 <= select_ln51_3_fu_451_p3;
        tmp_18_reg_546 <= {{ap_sig_allocacmp_v19_3[9:1]}};
        tmp_18_reg_546_pp0_iter10_reg <= tmp_18_reg_546_pp0_iter9_reg;
        tmp_18_reg_546_pp0_iter11_reg <= tmp_18_reg_546_pp0_iter10_reg;
        tmp_18_reg_546_pp0_iter12_reg <= tmp_18_reg_546_pp0_iter11_reg;
        tmp_18_reg_546_pp0_iter13_reg <= tmp_18_reg_546_pp0_iter12_reg;
        tmp_18_reg_546_pp0_iter14_reg <= tmp_18_reg_546_pp0_iter13_reg;
        tmp_18_reg_546_pp0_iter15_reg <= tmp_18_reg_546_pp0_iter14_reg;
        tmp_18_reg_546_pp0_iter1_reg <= tmp_18_reg_546;
        tmp_18_reg_546_pp0_iter2_reg <= tmp_18_reg_546_pp0_iter1_reg;
        tmp_18_reg_546_pp0_iter3_reg <= tmp_18_reg_546_pp0_iter2_reg;
        tmp_18_reg_546_pp0_iter4_reg <= tmp_18_reg_546_pp0_iter3_reg;
        tmp_18_reg_546_pp0_iter5_reg <= tmp_18_reg_546_pp0_iter4_reg;
        tmp_18_reg_546_pp0_iter6_reg <= tmp_18_reg_546_pp0_iter5_reg;
        tmp_18_reg_546_pp0_iter7_reg <= tmp_18_reg_546_pp0_iter6_reg;
        tmp_18_reg_546_pp0_iter8_reg <= tmp_18_reg_546_pp0_iter7_reg;
        tmp_18_reg_546_pp0_iter9_reg <= tmp_18_reg_546_pp0_iter8_reg;
        tmp_reg_532 <= ap_sig_allocacmp_v19_3[32'd10];
        v19_3_reg_525 <= ap_sig_allocacmp_v19_3;
        v19_3_reg_525_pp0_iter10_reg <= v19_3_reg_525_pp0_iter9_reg;
        v19_3_reg_525_pp0_iter11_reg <= v19_3_reg_525_pp0_iter10_reg;
        v19_3_reg_525_pp0_iter12_reg <= v19_3_reg_525_pp0_iter11_reg;
        v19_3_reg_525_pp0_iter13_reg <= v19_3_reg_525_pp0_iter12_reg;
        v19_3_reg_525_pp0_iter14_reg <= v19_3_reg_525_pp0_iter13_reg;
        v19_3_reg_525_pp0_iter15_reg <= v19_3_reg_525_pp0_iter14_reg;
        v19_3_reg_525_pp0_iter1_reg <= v19_3_reg_525;
        v19_3_reg_525_pp0_iter2_reg <= v19_3_reg_525_pp0_iter1_reg;
        v19_3_reg_525_pp0_iter3_reg <= v19_3_reg_525_pp0_iter2_reg;
        v19_3_reg_525_pp0_iter4_reg <= v19_3_reg_525_pp0_iter3_reg;
        v19_3_reg_525_pp0_iter5_reg <= v19_3_reg_525_pp0_iter4_reg;
        v19_3_reg_525_pp0_iter6_reg <= v19_3_reg_525_pp0_iter5_reg;
        v19_3_reg_525_pp0_iter7_reg <= v19_3_reg_525_pp0_iter6_reg;
        v19_3_reg_525_pp0_iter8_reg <= v19_3_reg_525_pp0_iter7_reg;
        v19_3_reg_525_pp0_iter9_reg <= v19_3_reg_525_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_225 <= grp_fu_919_p_dout0;
        reg_230 <= grp_fu_923_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_532 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_3 = v19_fu_78;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_217_p1 = v23_12_fu_458_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_217_p1 = v23_fu_436_p1;
        end else begin
            grp_fu_217_p1 = 'bx;
        end
    end else begin
        grp_fu_217_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_221_p1 = v23_13_fu_462_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_221_p1 = v23_11_fu_440_p1;
        end else begin
            grp_fu_221_p1 = 'bx;
        end
    end else begin
        grp_fu_221_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_6_fu_430_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_2_fu_404_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_4_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_fu_398_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln51_6_fu_430_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_2_fu_404_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_4_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_fu_398_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_5_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_1_fu_477_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_3_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln47_fu_466_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln1_fu_261_p3 = {{tmp_1_fu_251_p4}, {ap_sig_allocacmp_v19_3}};
assign add_ln47_fu_388_p2 = (v19_3_reg_525 + 11'd4);
assign add_ln51_10_fu_376_p2 = ($signed(add_ln51_3_fu_361_p4) + $signed(23'd6084608));
assign add_ln51_1_fu_297_p4 = {{{v5}, {tmp_18_fu_287_p4}}, {1'd1}};
assign add_ln51_2_fu_334_p4 = {{{v5}, {tmp_19_fu_325_p4}}, {2'd2}};
assign add_ln51_3_fu_361_p4 = {{{v5}, {tmp_19_fu_325_p4}}, {2'd3}};
assign add_ln51_6_fu_313_p2 = ($signed(add_ln51_1_fu_297_p4) + $signed(23'd6084608));
assign add_ln51_7_fu_349_p2 = ($signed(add_ln51_2_fu_334_p4) + $signed(23'd6084608));
assign add_ln51_fu_275_p2 = ($signed(add_ln1_fu_261_p3) + $signed(23'd6084608));
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
assign grp_fu_919_p_ce = 1'b1;
assign grp_fu_919_p_din0 = v22;
assign grp_fu_919_p_din1 = grp_fu_217_p1;
assign grp_fu_923_p_ce = 1'b1;
assign grp_fu_923_p_din0 = v22;
assign grp_fu_923_p_din1 = grp_fu_221_p1;
assign icmp_ln51_1_fu_319_p2 = ((add_ln51_6_fu_313_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_2_fu_355_p2 = ((add_ln51_7_fu_349_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_3_fu_382_p2 = ((add_ln51_10_fu_376_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_281_p2 = ((add_ln51_fu_275_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign or_ln1_fu_470_p3 = {{tmp_18_reg_546_pp0_iter15_reg}, {1'd1}};
assign or_ln47_1_fu_482_p3 = {{tmp_19_reg_561_pp0_iter15_reg}, {2'd2}};
assign or_ln47_2_fu_494_p3 = {{tmp_19_reg_561_pp0_iter15_reg}, {2'd3}};
assign select_ln51_1_fu_417_p3 = ((icmp_ln51_1_reg_556_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_2_fu_444_p3 = ((icmp_ln51_2_reg_572_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_3_fu_451_p3 = ((icmp_ln51_3_reg_582_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_fu_410_p3 = ((icmp_ln51_reg_541_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_18_fu_287_p4 = {{ap_sig_allocacmp_v19_3[9:1]}};
assign tmp_19_fu_325_p4 = {{v19_3_reg_525[9:2]}};
assign tmp_1_fu_251_p4 = {{v5[12:1]}};
assign tmp_fu_243_p3 = ap_sig_allocacmp_v19_3[32'd10];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v23_11_fu_440_p1 = select_ln51_1_reg_612;
assign v23_12_fu_458_p1 = select_ln51_2_reg_647;
assign v23_13_fu_462_p1 = select_ln51_3_reg_652;
assign v23_fu_436_p1 = select_ln51_reg_607;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_230;
assign v3_d1 = reg_225;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_fu_466_p1 = v19_3_reg_525_pp0_iter15_reg;
assign zext_ln51_1_fu_477_p1 = or_ln1_fu_470_p3;
assign zext_ln51_2_fu_404_p1 = grp_fu_307_p2;
assign zext_ln51_3_fu_489_p1 = or_ln47_1_fu_482_p3;
assign zext_ln51_4_fu_424_p1 = grp_fu_343_p2;
assign zext_ln51_5_fu_501_p1 = or_ln47_2_fu_494_p3;
assign zext_ln51_6_fu_430_p1 = grp_fu_370_p2;
assign zext_ln51_fu_398_p1 = grp_fu_269_p2;
endmodule 