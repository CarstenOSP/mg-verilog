module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v22,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,v5,grp_fu_348_p_din0,grp_fu_348_p_din1,grp_fu_348_p_dout0,grp_fu_348_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [22:0] tmp;
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
input  [12:0] v5;
output  [31:0] grp_fu_348_p_din0;
output  [31:0] grp_fu_348_p_din1;
input  [31:0] grp_fu_348_p_dout0;
output   grp_fu_348_p_ce;
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
reg   [0:0] tmp_3_reg_531;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_229;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_225_p2;
reg   [31:0] reg_234;
reg   [10:0] v19_1_reg_524;
reg   [10:0] v19_1_reg_524_pp0_iter1_reg;
reg   [10:0] v19_1_reg_524_pp0_iter2_reg;
reg   [10:0] v19_1_reg_524_pp0_iter3_reg;
reg   [10:0] v19_1_reg_524_pp0_iter4_reg;
reg   [10:0] v19_1_reg_524_pp0_iter5_reg;
reg   [10:0] v19_1_reg_524_pp0_iter6_reg;
reg   [10:0] v19_1_reg_524_pp0_iter7_reg;
reg   [10:0] v19_1_reg_524_pp0_iter8_reg;
reg   [10:0] v19_1_reg_524_pp0_iter9_reg;
reg   [10:0] v19_1_reg_524_pp0_iter10_reg;
reg   [10:0] v19_1_reg_524_pp0_iter11_reg;
reg   [10:0] v19_1_reg_524_pp0_iter12_reg;
reg   [10:0] v19_1_reg_524_pp0_iter13_reg;
reg   [10:0] v19_1_reg_524_pp0_iter14_reg;
reg   [10:0] v19_1_reg_524_pp0_iter15_reg;
reg   [10:0] v19_1_reg_524_pp0_iter16_reg;
wire   [0:0] tmp_3_fu_247_p3;
wire   [8:0] tmp_1_fu_255_p4;
reg   [8:0] tmp_1_reg_535;
reg   [8:0] tmp_1_reg_535_pp0_iter1_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter2_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter3_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter4_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter5_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter6_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter7_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter8_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter9_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter10_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter11_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter12_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter13_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter14_reg;
reg   [8:0] tmp_1_reg_535_pp0_iter15_reg;
wire   [22:0] add_ln51_1_fu_265_p4;
wire   [0:0] icmp_ln51_1_fu_287_p2;
reg   [0:0] icmp_ln51_1_reg_545;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter1_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter2_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter3_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter4_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter5_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter6_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter7_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter8_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter9_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter10_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter11_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter12_reg;
reg   [0:0] icmp_ln51_1_reg_545_pp0_iter13_reg;
wire   [7:0] tmp_2_fu_293_p4;
reg   [7:0] tmp_2_reg_550;
reg   [7:0] tmp_2_reg_550_pp0_iter1_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter2_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter3_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter4_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter5_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter6_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter7_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter8_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter9_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter10_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter11_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter12_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter13_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter14_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter15_reg;
reg   [7:0] tmp_2_reg_550_pp0_iter16_reg;
wire   [22:0] add_ln51_2_fu_303_p4;
wire   [0:0] icmp_ln51_2_fu_325_p2;
reg   [0:0] icmp_ln51_2_reg_562;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter1_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter2_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter3_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter4_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter5_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter6_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter7_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter8_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter9_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter10_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter11_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter12_reg;
reg   [0:0] icmp_ln51_2_reg_562_pp0_iter13_reg;
wire   [22:0] add_ln51_fu_334_p2;
wire   [0:0] icmp_ln51_fu_351_p2;
reg   [0:0] icmp_ln51_reg_572;
reg   [0:0] icmp_ln51_reg_572_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter6_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter7_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter8_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter9_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter10_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter11_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter12_reg;
reg   [0:0] icmp_ln51_reg_572_pp0_iter13_reg;
wire   [22:0] add_ln51_3_fu_357_p4;
wire   [0:0] icmp_ln51_3_fu_377_p2;
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
wire   [31:0] select_ln51_1_fu_411_p3;
reg   [31:0] select_ln51_1_reg_617;
wire   [31:0] select_ln51_2_fu_418_p3;
reg   [31:0] select_ln51_2_reg_622;
wire   [31:0] select_ln51_fu_431_p3;
reg   [31:0] select_ln51_reg_637;
wire   [31:0] v23_1_fu_438_p1;
wire   [31:0] v23_2_fu_442_p1;
wire   [31:0] select_ln51_3_fu_446_p3;
reg   [31:0] select_ln51_3_reg_652;
wire   [31:0] v23_fu_453_p1;
wire   [31:0] v23_3_fu_457_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_2_fu_393_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_4_fu_399_p1;
wire   [63:0] zext_ln51_fu_405_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_6_fu_425_p1;
wire   [63:0] zext_ln51_1_fu_468_p1;
wire   [63:0] zext_ln51_3_fu_480_p1;
wire   [63:0] zext_ln47_fu_485_p1;
wire   [63:0] zext_ln51_5_fu_496_p1;
reg   [10:0] v19_fu_76;
wire   [10:0] add_ln47_fu_383_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
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
reg   [31:0] grp_fu_221_p1;
reg   [31:0] grp_fu_225_p1;
wire   [22:0] add_ln51_5_fu_281_p2;
wire   [22:0] add_ln51_6_fu_319_p2;
wire   [22:0] zext_ln47_1_fu_331_p1;
wire   [22:0] add_ln51_4_fu_345_p2;
wire   [22:0] add_ln51_7_fu_371_p2;
wire   [22:0] grp_fu_275_p2;
wire   [22:0] grp_fu_313_p2;
wire   [22:0] grp_fu_339_p2;
wire   [22:0] grp_fu_365_p2;
wire   [9:0] or_ln_fu_461_p3;
wire   [9:0] or_ln47_1_fu_473_p3;
wire   [9:0] or_ln47_2_fu_489_p3;
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
#0 v19_fu_76 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(v22),.din1(grp_fu_225_p1),.ce(1'b1),.dout(grp_fu_225_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_1_fu_265_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_275_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_2_fu_303_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_313_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_fu_334_p2),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_339_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_3_fu_357_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_365_p2));
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
        v19_fu_76 <= 11'd0;
    end else if (((tmp_3_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_76 <= add_ln47_fu_383_p2;
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
        icmp_ln51_3_reg_582 <= icmp_ln51_3_fu_377_p2;
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
        icmp_ln51_reg_572 <= icmp_ln51_fu_351_p2;
        icmp_ln51_reg_572_pp0_iter10_reg <= icmp_ln51_reg_572_pp0_iter9_reg;
        icmp_ln51_reg_572_pp0_iter11_reg <= icmp_ln51_reg_572_pp0_iter10_reg;
        icmp_ln51_reg_572_pp0_iter12_reg <= icmp_ln51_reg_572_pp0_iter11_reg;
        icmp_ln51_reg_572_pp0_iter13_reg <= icmp_ln51_reg_572_pp0_iter12_reg;
        icmp_ln51_reg_572_pp0_iter1_reg <= icmp_ln51_reg_572;
        icmp_ln51_reg_572_pp0_iter2_reg <= icmp_ln51_reg_572_pp0_iter1_reg;
        icmp_ln51_reg_572_pp0_iter3_reg <= icmp_ln51_reg_572_pp0_iter2_reg;
        icmp_ln51_reg_572_pp0_iter4_reg <= icmp_ln51_reg_572_pp0_iter3_reg;
        icmp_ln51_reg_572_pp0_iter5_reg <= icmp_ln51_reg_572_pp0_iter4_reg;
        icmp_ln51_reg_572_pp0_iter6_reg <= icmp_ln51_reg_572_pp0_iter5_reg;
        icmp_ln51_reg_572_pp0_iter7_reg <= icmp_ln51_reg_572_pp0_iter6_reg;
        icmp_ln51_reg_572_pp0_iter8_reg <= icmp_ln51_reg_572_pp0_iter7_reg;
        icmp_ln51_reg_572_pp0_iter9_reg <= icmp_ln51_reg_572_pp0_iter8_reg;
        select_ln51_1_reg_617 <= select_ln51_1_fu_411_p3;
        select_ln51_2_reg_622 <= select_ln51_2_fu_418_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln51_1_reg_545 <= icmp_ln51_1_fu_287_p2;
        icmp_ln51_1_reg_545_pp0_iter10_reg <= icmp_ln51_1_reg_545_pp0_iter9_reg;
        icmp_ln51_1_reg_545_pp0_iter11_reg <= icmp_ln51_1_reg_545_pp0_iter10_reg;
        icmp_ln51_1_reg_545_pp0_iter12_reg <= icmp_ln51_1_reg_545_pp0_iter11_reg;
        icmp_ln51_1_reg_545_pp0_iter13_reg <= icmp_ln51_1_reg_545_pp0_iter12_reg;
        icmp_ln51_1_reg_545_pp0_iter1_reg <= icmp_ln51_1_reg_545;
        icmp_ln51_1_reg_545_pp0_iter2_reg <= icmp_ln51_1_reg_545_pp0_iter1_reg;
        icmp_ln51_1_reg_545_pp0_iter3_reg <= icmp_ln51_1_reg_545_pp0_iter2_reg;
        icmp_ln51_1_reg_545_pp0_iter4_reg <= icmp_ln51_1_reg_545_pp0_iter3_reg;
        icmp_ln51_1_reg_545_pp0_iter5_reg <= icmp_ln51_1_reg_545_pp0_iter4_reg;
        icmp_ln51_1_reg_545_pp0_iter6_reg <= icmp_ln51_1_reg_545_pp0_iter5_reg;
        icmp_ln51_1_reg_545_pp0_iter7_reg <= icmp_ln51_1_reg_545_pp0_iter6_reg;
        icmp_ln51_1_reg_545_pp0_iter8_reg <= icmp_ln51_1_reg_545_pp0_iter7_reg;
        icmp_ln51_1_reg_545_pp0_iter9_reg <= icmp_ln51_1_reg_545_pp0_iter8_reg;
        icmp_ln51_2_reg_562 <= icmp_ln51_2_fu_325_p2;
        icmp_ln51_2_reg_562_pp0_iter10_reg <= icmp_ln51_2_reg_562_pp0_iter9_reg;
        icmp_ln51_2_reg_562_pp0_iter11_reg <= icmp_ln51_2_reg_562_pp0_iter10_reg;
        icmp_ln51_2_reg_562_pp0_iter12_reg <= icmp_ln51_2_reg_562_pp0_iter11_reg;
        icmp_ln51_2_reg_562_pp0_iter13_reg <= icmp_ln51_2_reg_562_pp0_iter12_reg;
        icmp_ln51_2_reg_562_pp0_iter1_reg <= icmp_ln51_2_reg_562;
        icmp_ln51_2_reg_562_pp0_iter2_reg <= icmp_ln51_2_reg_562_pp0_iter1_reg;
        icmp_ln51_2_reg_562_pp0_iter3_reg <= icmp_ln51_2_reg_562_pp0_iter2_reg;
        icmp_ln51_2_reg_562_pp0_iter4_reg <= icmp_ln51_2_reg_562_pp0_iter3_reg;
        icmp_ln51_2_reg_562_pp0_iter5_reg <= icmp_ln51_2_reg_562_pp0_iter4_reg;
        icmp_ln51_2_reg_562_pp0_iter6_reg <= icmp_ln51_2_reg_562_pp0_iter5_reg;
        icmp_ln51_2_reg_562_pp0_iter7_reg <= icmp_ln51_2_reg_562_pp0_iter6_reg;
        icmp_ln51_2_reg_562_pp0_iter8_reg <= icmp_ln51_2_reg_562_pp0_iter7_reg;
        icmp_ln51_2_reg_562_pp0_iter9_reg <= icmp_ln51_2_reg_562_pp0_iter8_reg;
        select_ln51_3_reg_652 <= select_ln51_3_fu_446_p3;
        select_ln51_reg_637 <= select_ln51_fu_431_p3;
        tmp_1_reg_535 <= {{ap_sig_allocacmp_v19_1[9:1]}};
        tmp_1_reg_535_pp0_iter10_reg <= tmp_1_reg_535_pp0_iter9_reg;
        tmp_1_reg_535_pp0_iter11_reg <= tmp_1_reg_535_pp0_iter10_reg;
        tmp_1_reg_535_pp0_iter12_reg <= tmp_1_reg_535_pp0_iter11_reg;
        tmp_1_reg_535_pp0_iter13_reg <= tmp_1_reg_535_pp0_iter12_reg;
        tmp_1_reg_535_pp0_iter14_reg <= tmp_1_reg_535_pp0_iter13_reg;
        tmp_1_reg_535_pp0_iter15_reg <= tmp_1_reg_535_pp0_iter14_reg;
        tmp_1_reg_535_pp0_iter1_reg <= tmp_1_reg_535;
        tmp_1_reg_535_pp0_iter2_reg <= tmp_1_reg_535_pp0_iter1_reg;
        tmp_1_reg_535_pp0_iter3_reg <= tmp_1_reg_535_pp0_iter2_reg;
        tmp_1_reg_535_pp0_iter4_reg <= tmp_1_reg_535_pp0_iter3_reg;
        tmp_1_reg_535_pp0_iter5_reg <= tmp_1_reg_535_pp0_iter4_reg;
        tmp_1_reg_535_pp0_iter6_reg <= tmp_1_reg_535_pp0_iter5_reg;
        tmp_1_reg_535_pp0_iter7_reg <= tmp_1_reg_535_pp0_iter6_reg;
        tmp_1_reg_535_pp0_iter8_reg <= tmp_1_reg_535_pp0_iter7_reg;
        tmp_1_reg_535_pp0_iter9_reg <= tmp_1_reg_535_pp0_iter8_reg;
        tmp_2_reg_550 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        tmp_2_reg_550_pp0_iter10_reg <= tmp_2_reg_550_pp0_iter9_reg;
        tmp_2_reg_550_pp0_iter11_reg <= tmp_2_reg_550_pp0_iter10_reg;
        tmp_2_reg_550_pp0_iter12_reg <= tmp_2_reg_550_pp0_iter11_reg;
        tmp_2_reg_550_pp0_iter13_reg <= tmp_2_reg_550_pp0_iter12_reg;
        tmp_2_reg_550_pp0_iter14_reg <= tmp_2_reg_550_pp0_iter13_reg;
        tmp_2_reg_550_pp0_iter15_reg <= tmp_2_reg_550_pp0_iter14_reg;
        tmp_2_reg_550_pp0_iter16_reg <= tmp_2_reg_550_pp0_iter15_reg;
        tmp_2_reg_550_pp0_iter1_reg <= tmp_2_reg_550;
        tmp_2_reg_550_pp0_iter2_reg <= tmp_2_reg_550_pp0_iter1_reg;
        tmp_2_reg_550_pp0_iter3_reg <= tmp_2_reg_550_pp0_iter2_reg;
        tmp_2_reg_550_pp0_iter4_reg <= tmp_2_reg_550_pp0_iter3_reg;
        tmp_2_reg_550_pp0_iter5_reg <= tmp_2_reg_550_pp0_iter4_reg;
        tmp_2_reg_550_pp0_iter6_reg <= tmp_2_reg_550_pp0_iter5_reg;
        tmp_2_reg_550_pp0_iter7_reg <= tmp_2_reg_550_pp0_iter6_reg;
        tmp_2_reg_550_pp0_iter8_reg <= tmp_2_reg_550_pp0_iter7_reg;
        tmp_2_reg_550_pp0_iter9_reg <= tmp_2_reg_550_pp0_iter8_reg;
        tmp_3_reg_531 <= ap_sig_allocacmp_v19_1[32'd10];
        v19_1_reg_524 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_524_pp0_iter10_reg <= v19_1_reg_524_pp0_iter9_reg;
        v19_1_reg_524_pp0_iter11_reg <= v19_1_reg_524_pp0_iter10_reg;
        v19_1_reg_524_pp0_iter12_reg <= v19_1_reg_524_pp0_iter11_reg;
        v19_1_reg_524_pp0_iter13_reg <= v19_1_reg_524_pp0_iter12_reg;
        v19_1_reg_524_pp0_iter14_reg <= v19_1_reg_524_pp0_iter13_reg;
        v19_1_reg_524_pp0_iter15_reg <= v19_1_reg_524_pp0_iter14_reg;
        v19_1_reg_524_pp0_iter16_reg <= v19_1_reg_524_pp0_iter15_reg;
        v19_1_reg_524_pp0_iter1_reg <= v19_1_reg_524;
        v19_1_reg_524_pp0_iter2_reg <= v19_1_reg_524_pp0_iter1_reg;
        v19_1_reg_524_pp0_iter3_reg <= v19_1_reg_524_pp0_iter2_reg;
        v19_1_reg_524_pp0_iter4_reg <= v19_1_reg_524_pp0_iter3_reg;
        v19_1_reg_524_pp0_iter5_reg <= v19_1_reg_524_pp0_iter4_reg;
        v19_1_reg_524_pp0_iter6_reg <= v19_1_reg_524_pp0_iter5_reg;
        v19_1_reg_524_pp0_iter7_reg <= v19_1_reg_524_pp0_iter6_reg;
        v19_1_reg_524_pp0_iter8_reg <= v19_1_reg_524_pp0_iter7_reg;
        v19_1_reg_524_pp0_iter9_reg <= v19_1_reg_524_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_229 <= grp_fu_348_p_dout0;
        reg_234 <= grp_fu_225_p2;
    end
end
always @ (*) begin
    if (((tmp_3_reg_531 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_76;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_221_p1 = v23_fu_453_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_221_p1 = v23_1_fu_438_p1;
        end else begin
            grp_fu_221_p1 = 'bx;
        end
    end else begin
        grp_fu_221_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_225_p1 = v23_3_fu_457_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_225_p1 = v23_2_fu_442_p1;
        end else begin
            grp_fu_225_p1 = 'bx;
        end
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_6_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_4_fu_399_p1;
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
            v0_0_address1_local = zext_ln51_fu_405_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_2_fu_393_p1;
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
            v0_1_address0_local = zext_ln51_6_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_4_fu_399_p1;
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
            v0_1_address1_local = zext_ln51_fu_405_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_2_fu_393_p1;
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
            v3_address0_local = zext_ln51_5_fu_496_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_3_fu_480_p1;
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
            v3_address1_local = zext_ln47_fu_485_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_1_fu_468_p1;
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
assign add_ln47_fu_383_p2 = (v19_1_reg_524 + 11'd4);
assign add_ln51_1_fu_265_p4 = {{{v5}, {tmp_1_fu_255_p4}}, {1'd1}};
assign add_ln51_2_fu_303_p4 = {{{v5}, {tmp_2_fu_293_p4}}, {2'd2}};
assign add_ln51_3_fu_357_p4 = {{{v5}, {tmp_2_reg_550}}, {2'd3}};
assign add_ln51_4_fu_345_p2 = ($signed(add_ln51_fu_334_p2) + $signed(23'd6084608));
assign add_ln51_5_fu_281_p2 = ($signed(add_ln51_1_fu_265_p4) + $signed(23'd6084608));
assign add_ln51_6_fu_319_p2 = ($signed(add_ln51_2_fu_303_p4) + $signed(23'd6084608));
assign add_ln51_7_fu_371_p2 = ($signed(add_ln51_3_fu_357_p4) + $signed(23'd6084608));
assign add_ln51_fu_334_p2 = (zext_ln47_1_fu_331_p1 + tmp);
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
assign grp_fu_348_p_ce = 1'b1;
assign grp_fu_348_p_din0 = v22;
assign grp_fu_348_p_din1 = grp_fu_221_p1;
assign icmp_ln51_1_fu_287_p2 = ((add_ln51_5_fu_281_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_2_fu_325_p2 = ((add_ln51_6_fu_319_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_3_fu_377_p2 = ((add_ln51_7_fu_371_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_351_p2 = ((add_ln51_4_fu_345_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign or_ln47_1_fu_473_p3 = {{tmp_2_reg_550_pp0_iter15_reg}, {2'd2}};
assign or_ln47_2_fu_489_p3 = {{tmp_2_reg_550_pp0_iter16_reg}, {2'd3}};
assign or_ln_fu_461_p3 = {{tmp_1_reg_535_pp0_iter15_reg}, {1'd1}};
assign select_ln51_1_fu_411_p3 = ((icmp_ln51_1_reg_545_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_2_fu_418_p3 = ((icmp_ln51_2_reg_562_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_3_fu_446_p3 = ((icmp_ln51_3_reg_582_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_fu_431_p3 = ((icmp_ln51_reg_572_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_1_fu_255_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign tmp_2_fu_293_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign tmp_3_fu_247_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v23_1_fu_438_p1 = select_ln51_1_reg_617;
assign v23_2_fu_442_p1 = select_ln51_2_reg_622;
assign v23_3_fu_457_p1 = select_ln51_3_reg_652;
assign v23_fu_453_p1 = select_ln51_reg_637;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_234;
assign v3_d1 = reg_229;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_1_fu_331_p1 = v19_1_reg_524;
assign zext_ln47_fu_485_p1 = v19_1_reg_524_pp0_iter16_reg;
assign zext_ln51_1_fu_468_p1 = or_ln_fu_461_p3;
assign zext_ln51_2_fu_393_p1 = grp_fu_275_p2;
assign zext_ln51_3_fu_480_p1 = or_ln47_1_fu_473_p3;
assign zext_ln51_4_fu_399_p1 = grp_fu_313_p2;
assign zext_ln51_5_fu_496_p1 = or_ln47_2_fu_489_p3;
assign zext_ln51_6_fu_425_p1 = grp_fu_365_p2;
assign zext_ln51_fu_405_p1 = grp_fu_339_p2;
endmodule 