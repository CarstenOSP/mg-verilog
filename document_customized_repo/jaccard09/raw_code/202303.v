module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_7_address0,v3_7_ce0,v3_7_we0,v3_7_d0,v3_6_address0,v3_6_ce0,v3_6_we0,v3_6_d0,v3_5_address0,v3_5_ce0,v3_5_we0,v3_5_d0,v3_4_address0,v3_4_ce0,v3_4_we0,v3_4_d0,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,tmp,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v22,v5,grp_fu_372_p_din0,grp_fu_372_p_din1,grp_fu_372_p_dout0,grp_fu_372_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
output   v3_7_we0;
output  [31:0] v3_7_d0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
output   v3_6_we0;
output  [31:0] v3_6_d0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
output   v3_5_we0;
output  [31:0] v3_5_d0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
output   v3_4_we0;
output  [31:0] v3_4_d0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [6:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
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
input  [12:0] v5;
output  [31:0] grp_fu_372_p_din0;
output  [31:0] grp_fu_372_p_din1;
input  [31:0] grp_fu_372_p_dout0;
output   grp_fu_372_p_ce;
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
reg   [0:0] tmp_3_reg_602;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_304;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_300_p2;
reg   [31:0] reg_312;
reg   [10:0] v19_1_reg_595;
wire   [0:0] tmp_3_fu_328_p3;
wire   [22:0] add_ln51_1_fu_350_p4;
wire   [0:0] icmp_ln51_1_fu_372_p2;
reg   [0:0] icmp_ln51_1_reg_611;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter1_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter2_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter3_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter4_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter5_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter6_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter7_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter8_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter9_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter10_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter11_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter12_reg;
reg   [0:0] icmp_ln51_1_reg_611_pp0_iter13_reg;
wire   [7:0] tmp_2_fu_378_p4;
reg   [7:0] tmp_2_reg_616;
wire   [22:0] add_ln51_2_fu_388_p4;
wire   [0:0] icmp_ln51_2_fu_410_p2;
reg   [0:0] icmp_ln51_2_reg_626;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter1_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter2_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter3_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter4_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter5_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter6_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter7_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter8_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter9_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter10_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter11_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter12_reg;
reg   [0:0] icmp_ln51_2_reg_626_pp0_iter13_reg;
wire   [0:0] icmp_ln53_fu_416_p2;
reg   [0:0] icmp_ln53_reg_631;
reg   [0:0] icmp_ln53_reg_631_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter5_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter6_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter7_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter8_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter9_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter10_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter11_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter12_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter13_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter14_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter15_reg;
reg   [0:0] icmp_ln53_reg_631_pp0_iter16_reg;
reg   [6:0] lshr_ln_reg_635;
reg   [6:0] lshr_ln_reg_635_pp0_iter1_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter2_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter3_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter4_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter5_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter6_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter7_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter8_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter9_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter10_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter11_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter12_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter13_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter14_reg;
reg   [6:0] lshr_ln_reg_635_pp0_iter15_reg;
wire   [22:0] add_ln51_fu_434_p2;
wire   [0:0] icmp_ln51_fu_451_p2;
reg   [0:0] icmp_ln51_reg_645;
reg   [0:0] icmp_ln51_reg_645_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter6_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter7_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter8_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter9_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter10_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter11_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter12_reg;
reg   [0:0] icmp_ln51_reg_645_pp0_iter13_reg;
wire   [22:0] add_ln51_3_fu_457_p4;
wire   [0:0] icmp_ln51_3_fu_477_p2;
reg   [0:0] icmp_ln51_3_reg_655;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter1_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter2_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter3_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter4_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter5_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter6_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter7_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter8_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter9_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter10_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter11_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter12_reg;
reg   [0:0] icmp_ln51_3_reg_655_pp0_iter13_reg;
wire   [31:0] select_ln51_1_fu_511_p3;
reg   [31:0] select_ln51_1_reg_690;
wire   [31:0] select_ln51_2_fu_518_p3;
reg   [31:0] select_ln51_2_reg_695;
wire   [31:0] select_ln51_fu_531_p3;
reg   [31:0] select_ln51_reg_710;
wire   [31:0] v23_1_fu_538_p1;
wire   [31:0] v23_2_fu_542_p1;
wire   [31:0] select_ln51_3_fu_546_p3;
reg   [31:0] select_ln51_3_reg_725;
wire   [31:0] v23_fu_553_p1;
wire   [31:0] v23_3_fu_557_p1;
reg   [6:0] v3_addr_reg_740;
reg   [6:0] v3_4_addr_reg_745;
reg   [6:0] v3_3_addr_reg_750;
reg   [6:0] v3_7_addr_reg_755;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_1_fu_493_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_2_fu_499_p1;
wire   [63:0] zext_ln51_fu_505_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_3_fu_525_p1;
wire   [63:0] zext_ln48_fu_561_p1;
reg   [10:0] v19_fu_92;
wire   [10:0] add_ln47_fu_483_p2;
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
reg    v3_5_we0_local;
reg    v3_5_ce0_local;
reg    v3_6_we0_local;
reg    v3_6_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_4_we0_local;
reg    v3_4_ce0_local;
reg    v3_7_we0_local;
reg    v3_7_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_296_p1;
reg   [31:0] grp_fu_300_p1;
wire   [8:0] tmp_1_fu_340_p4;
wire   [22:0] add_ln51_5_fu_366_p2;
wire   [22:0] add_ln51_6_fu_404_p2;
wire   [2:0] trunc_ln47_fu_336_p1;
wire   [22:0] zext_ln47_fu_422_p1;
wire   [22:0] add_ln51_4_fu_445_p2;
wire   [22:0] add_ln51_7_fu_471_p2;
wire   [22:0] grp_fu_360_p2;
wire   [22:0] grp_fu_398_p2;
wire   [22:0] grp_fu_439_p2;
wire   [22:0] grp_fu_465_p2;
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
#0 v19_fu_92 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(v22),.din1(grp_fu_300_p1),.ce(1'b1),.dout(grp_fu_300_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_1_fu_350_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_360_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_2_fu_388_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_398_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_fu_434_p2),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_439_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_3_fu_457_p4),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_465_p2));
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
        v19_fu_92 <= 11'd0;
    end else if (((tmp_3_reg_602 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_92 <= add_ln47_fu_483_p2;
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
        icmp_ln51_3_reg_655 <= icmp_ln51_3_fu_477_p2;
        icmp_ln51_3_reg_655_pp0_iter10_reg <= icmp_ln51_3_reg_655_pp0_iter9_reg;
        icmp_ln51_3_reg_655_pp0_iter11_reg <= icmp_ln51_3_reg_655_pp0_iter10_reg;
        icmp_ln51_3_reg_655_pp0_iter12_reg <= icmp_ln51_3_reg_655_pp0_iter11_reg;
        icmp_ln51_3_reg_655_pp0_iter13_reg <= icmp_ln51_3_reg_655_pp0_iter12_reg;
        icmp_ln51_3_reg_655_pp0_iter1_reg <= icmp_ln51_3_reg_655;
        icmp_ln51_3_reg_655_pp0_iter2_reg <= icmp_ln51_3_reg_655_pp0_iter1_reg;
        icmp_ln51_3_reg_655_pp0_iter3_reg <= icmp_ln51_3_reg_655_pp0_iter2_reg;
        icmp_ln51_3_reg_655_pp0_iter4_reg <= icmp_ln51_3_reg_655_pp0_iter3_reg;
        icmp_ln51_3_reg_655_pp0_iter5_reg <= icmp_ln51_3_reg_655_pp0_iter4_reg;
        icmp_ln51_3_reg_655_pp0_iter6_reg <= icmp_ln51_3_reg_655_pp0_iter5_reg;
        icmp_ln51_3_reg_655_pp0_iter7_reg <= icmp_ln51_3_reg_655_pp0_iter6_reg;
        icmp_ln51_3_reg_655_pp0_iter8_reg <= icmp_ln51_3_reg_655_pp0_iter7_reg;
        icmp_ln51_3_reg_655_pp0_iter9_reg <= icmp_ln51_3_reg_655_pp0_iter8_reg;
        icmp_ln51_reg_645 <= icmp_ln51_fu_451_p2;
        icmp_ln51_reg_645_pp0_iter10_reg <= icmp_ln51_reg_645_pp0_iter9_reg;
        icmp_ln51_reg_645_pp0_iter11_reg <= icmp_ln51_reg_645_pp0_iter10_reg;
        icmp_ln51_reg_645_pp0_iter12_reg <= icmp_ln51_reg_645_pp0_iter11_reg;
        icmp_ln51_reg_645_pp0_iter13_reg <= icmp_ln51_reg_645_pp0_iter12_reg;
        icmp_ln51_reg_645_pp0_iter1_reg <= icmp_ln51_reg_645;
        icmp_ln51_reg_645_pp0_iter2_reg <= icmp_ln51_reg_645_pp0_iter1_reg;
        icmp_ln51_reg_645_pp0_iter3_reg <= icmp_ln51_reg_645_pp0_iter2_reg;
        icmp_ln51_reg_645_pp0_iter4_reg <= icmp_ln51_reg_645_pp0_iter3_reg;
        icmp_ln51_reg_645_pp0_iter5_reg <= icmp_ln51_reg_645_pp0_iter4_reg;
        icmp_ln51_reg_645_pp0_iter6_reg <= icmp_ln51_reg_645_pp0_iter5_reg;
        icmp_ln51_reg_645_pp0_iter7_reg <= icmp_ln51_reg_645_pp0_iter6_reg;
        icmp_ln51_reg_645_pp0_iter8_reg <= icmp_ln51_reg_645_pp0_iter7_reg;
        icmp_ln51_reg_645_pp0_iter9_reg <= icmp_ln51_reg_645_pp0_iter8_reg;
        lshr_ln_reg_635 <= {{v19_1_reg_595[9:3]}};
        lshr_ln_reg_635_pp0_iter10_reg <= lshr_ln_reg_635_pp0_iter9_reg;
        lshr_ln_reg_635_pp0_iter11_reg <= lshr_ln_reg_635_pp0_iter10_reg;
        lshr_ln_reg_635_pp0_iter12_reg <= lshr_ln_reg_635_pp0_iter11_reg;
        lshr_ln_reg_635_pp0_iter13_reg <= lshr_ln_reg_635_pp0_iter12_reg;
        lshr_ln_reg_635_pp0_iter14_reg <= lshr_ln_reg_635_pp0_iter13_reg;
        lshr_ln_reg_635_pp0_iter15_reg <= lshr_ln_reg_635_pp0_iter14_reg;
        lshr_ln_reg_635_pp0_iter1_reg <= lshr_ln_reg_635;
        lshr_ln_reg_635_pp0_iter2_reg <= lshr_ln_reg_635_pp0_iter1_reg;
        lshr_ln_reg_635_pp0_iter3_reg <= lshr_ln_reg_635_pp0_iter2_reg;
        lshr_ln_reg_635_pp0_iter4_reg <= lshr_ln_reg_635_pp0_iter3_reg;
        lshr_ln_reg_635_pp0_iter5_reg <= lshr_ln_reg_635_pp0_iter4_reg;
        lshr_ln_reg_635_pp0_iter6_reg <= lshr_ln_reg_635_pp0_iter5_reg;
        lshr_ln_reg_635_pp0_iter7_reg <= lshr_ln_reg_635_pp0_iter6_reg;
        lshr_ln_reg_635_pp0_iter8_reg <= lshr_ln_reg_635_pp0_iter7_reg;
        lshr_ln_reg_635_pp0_iter9_reg <= lshr_ln_reg_635_pp0_iter8_reg;
        select_ln51_1_reg_690 <= select_ln51_1_fu_511_p3;
        select_ln51_2_reg_695 <= select_ln51_2_fu_518_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln51_1_reg_611 <= icmp_ln51_1_fu_372_p2;
        icmp_ln51_1_reg_611_pp0_iter10_reg <= icmp_ln51_1_reg_611_pp0_iter9_reg;
        icmp_ln51_1_reg_611_pp0_iter11_reg <= icmp_ln51_1_reg_611_pp0_iter10_reg;
        icmp_ln51_1_reg_611_pp0_iter12_reg <= icmp_ln51_1_reg_611_pp0_iter11_reg;
        icmp_ln51_1_reg_611_pp0_iter13_reg <= icmp_ln51_1_reg_611_pp0_iter12_reg;
        icmp_ln51_1_reg_611_pp0_iter1_reg <= icmp_ln51_1_reg_611;
        icmp_ln51_1_reg_611_pp0_iter2_reg <= icmp_ln51_1_reg_611_pp0_iter1_reg;
        icmp_ln51_1_reg_611_pp0_iter3_reg <= icmp_ln51_1_reg_611_pp0_iter2_reg;
        icmp_ln51_1_reg_611_pp0_iter4_reg <= icmp_ln51_1_reg_611_pp0_iter3_reg;
        icmp_ln51_1_reg_611_pp0_iter5_reg <= icmp_ln51_1_reg_611_pp0_iter4_reg;
        icmp_ln51_1_reg_611_pp0_iter6_reg <= icmp_ln51_1_reg_611_pp0_iter5_reg;
        icmp_ln51_1_reg_611_pp0_iter7_reg <= icmp_ln51_1_reg_611_pp0_iter6_reg;
        icmp_ln51_1_reg_611_pp0_iter8_reg <= icmp_ln51_1_reg_611_pp0_iter7_reg;
        icmp_ln51_1_reg_611_pp0_iter9_reg <= icmp_ln51_1_reg_611_pp0_iter8_reg;
        icmp_ln51_2_reg_626 <= icmp_ln51_2_fu_410_p2;
        icmp_ln51_2_reg_626_pp0_iter10_reg <= icmp_ln51_2_reg_626_pp0_iter9_reg;
        icmp_ln51_2_reg_626_pp0_iter11_reg <= icmp_ln51_2_reg_626_pp0_iter10_reg;
        icmp_ln51_2_reg_626_pp0_iter12_reg <= icmp_ln51_2_reg_626_pp0_iter11_reg;
        icmp_ln51_2_reg_626_pp0_iter13_reg <= icmp_ln51_2_reg_626_pp0_iter12_reg;
        icmp_ln51_2_reg_626_pp0_iter1_reg <= icmp_ln51_2_reg_626;
        icmp_ln51_2_reg_626_pp0_iter2_reg <= icmp_ln51_2_reg_626_pp0_iter1_reg;
        icmp_ln51_2_reg_626_pp0_iter3_reg <= icmp_ln51_2_reg_626_pp0_iter2_reg;
        icmp_ln51_2_reg_626_pp0_iter4_reg <= icmp_ln51_2_reg_626_pp0_iter3_reg;
        icmp_ln51_2_reg_626_pp0_iter5_reg <= icmp_ln51_2_reg_626_pp0_iter4_reg;
        icmp_ln51_2_reg_626_pp0_iter6_reg <= icmp_ln51_2_reg_626_pp0_iter5_reg;
        icmp_ln51_2_reg_626_pp0_iter7_reg <= icmp_ln51_2_reg_626_pp0_iter6_reg;
        icmp_ln51_2_reg_626_pp0_iter8_reg <= icmp_ln51_2_reg_626_pp0_iter7_reg;
        icmp_ln51_2_reg_626_pp0_iter9_reg <= icmp_ln51_2_reg_626_pp0_iter8_reg;
        icmp_ln53_reg_631 <= icmp_ln53_fu_416_p2;
        icmp_ln53_reg_631_pp0_iter10_reg <= icmp_ln53_reg_631_pp0_iter9_reg;
        icmp_ln53_reg_631_pp0_iter11_reg <= icmp_ln53_reg_631_pp0_iter10_reg;
        icmp_ln53_reg_631_pp0_iter12_reg <= icmp_ln53_reg_631_pp0_iter11_reg;
        icmp_ln53_reg_631_pp0_iter13_reg <= icmp_ln53_reg_631_pp0_iter12_reg;
        icmp_ln53_reg_631_pp0_iter14_reg <= icmp_ln53_reg_631_pp0_iter13_reg;
        icmp_ln53_reg_631_pp0_iter15_reg <= icmp_ln53_reg_631_pp0_iter14_reg;
        icmp_ln53_reg_631_pp0_iter16_reg <= icmp_ln53_reg_631_pp0_iter15_reg;
        icmp_ln53_reg_631_pp0_iter1_reg <= icmp_ln53_reg_631;
        icmp_ln53_reg_631_pp0_iter2_reg <= icmp_ln53_reg_631_pp0_iter1_reg;
        icmp_ln53_reg_631_pp0_iter3_reg <= icmp_ln53_reg_631_pp0_iter2_reg;
        icmp_ln53_reg_631_pp0_iter4_reg <= icmp_ln53_reg_631_pp0_iter3_reg;
        icmp_ln53_reg_631_pp0_iter5_reg <= icmp_ln53_reg_631_pp0_iter4_reg;
        icmp_ln53_reg_631_pp0_iter6_reg <= icmp_ln53_reg_631_pp0_iter5_reg;
        icmp_ln53_reg_631_pp0_iter7_reg <= icmp_ln53_reg_631_pp0_iter6_reg;
        icmp_ln53_reg_631_pp0_iter8_reg <= icmp_ln53_reg_631_pp0_iter7_reg;
        icmp_ln53_reg_631_pp0_iter9_reg <= icmp_ln53_reg_631_pp0_iter8_reg;
        select_ln51_3_reg_725 <= select_ln51_3_fu_546_p3;
        select_ln51_reg_710 <= select_ln51_fu_531_p3;
        tmp_2_reg_616 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        tmp_3_reg_602 <= ap_sig_allocacmp_v19_1[32'd10];
        v19_1_reg_595 <= ap_sig_allocacmp_v19_1;
        v3_3_addr_reg_750 <= zext_ln48_fu_561_p1;
        v3_4_addr_reg_745 <= zext_ln48_fu_561_p1;
        v3_7_addr_reg_755 <= zext_ln48_fu_561_p1;
        v3_addr_reg_740 <= zext_ln48_fu_561_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_304 <= grp_fu_372_p_dout0;
        reg_312 <= grp_fu_300_p2;
    end
end
always @ (*) begin
    if (((tmp_3_reg_602 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v19_1 = v19_fu_92;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_296_p1 = v23_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_296_p1 = v23_1_fu_538_p1;
        end else begin
            grp_fu_296_p1 = 'bx;
        end
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_300_p1 = v23_3_fu_557_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_300_p1 = v23_2_fu_542_p1;
        end else begin
            grp_fu_300_p1 = 'bx;
        end
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_3_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_2_fu_499_p1;
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
            v0_0_address1_local = zext_ln51_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_1_fu_493_p1;
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
            v0_1_address0_local = zext_ln51_3_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_2_fu_499_p1;
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
            v0_1_address1_local = zext_ln51_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_1_fu_493_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_4_we0_local = 1'b1;
    end else begin
        v3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_we0_local = 1'b1;
    end else begin
        v3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_we0_local = 1'b1;
    end else begin
        v3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_7_we0_local = 1'b1;
    end else begin
        v3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_631_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln47_fu_483_p2 = (v19_1_reg_595 + 11'd4);
assign add_ln51_1_fu_350_p4 = {{{v5}, {tmp_1_fu_340_p4}}, {1'd1}};
assign add_ln51_2_fu_388_p4 = {{{v5}, {tmp_2_fu_378_p4}}, {2'd2}};
assign add_ln51_3_fu_457_p4 = {{{v5}, {tmp_2_reg_616}}, {2'd3}};
assign add_ln51_4_fu_445_p2 = ($signed(add_ln51_fu_434_p2) + $signed(23'd6084608));
assign add_ln51_5_fu_366_p2 = ($signed(add_ln51_1_fu_350_p4) + $signed(23'd6084608));
assign add_ln51_6_fu_404_p2 = ($signed(add_ln51_2_fu_388_p4) + $signed(23'd6084608));
assign add_ln51_7_fu_471_p2 = ($signed(add_ln51_3_fu_457_p4) + $signed(23'd6084608));
assign add_ln51_fu_434_p2 = (zext_ln47_fu_422_p1 + tmp);
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
assign grp_fu_372_p_ce = 1'b1;
assign grp_fu_372_p_din0 = v22;
assign grp_fu_372_p_din1 = grp_fu_296_p1;
assign icmp_ln51_1_fu_372_p2 = ((add_ln51_5_fu_366_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_2_fu_410_p2 = ((add_ln51_6_fu_404_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_3_fu_477_p2 = ((add_ln51_7_fu_471_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_451_p2 = ((add_ln51_4_fu_445_p2 < 23'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln53_fu_416_p2 = ((trunc_ln47_fu_336_p1 == 3'd0) ? 1'b1 : 1'b0);
assign select_ln51_1_fu_511_p3 = ((icmp_ln51_1_reg_611_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_2_fu_518_p3 = ((icmp_ln51_2_reg_626_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_3_fu_546_p3 = ((icmp_ln51_3_reg_655_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_fu_531_p3 = ((icmp_ln51_reg_645_pp0_iter13_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_1_fu_340_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign tmp_2_fu_378_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign tmp_3_fu_328_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign trunc_ln47_fu_336_p1 = ap_sig_allocacmp_v19_1[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v23_1_fu_538_p1 = select_ln51_1_reg_690;
assign v23_2_fu_542_p1 = select_ln51_2_reg_695;
assign v23_3_fu_557_p1 = select_ln51_3_reg_725;
assign v23_fu_553_p1 = select_ln51_reg_710;
assign v3_1_address0 = zext_ln48_fu_561_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_304;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_561_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_312;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = v3_3_addr_reg_750;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_312;
assign v3_3_we0 = v3_3_we0_local;
assign v3_4_address0 = v3_4_addr_reg_745;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_d0 = reg_304;
assign v3_4_we0 = v3_4_we0_local;
assign v3_5_address0 = zext_ln48_fu_561_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_d0 = reg_304;
assign v3_5_we0 = v3_5_we0_local;
assign v3_6_address0 = zext_ln48_fu_561_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_d0 = reg_312;
assign v3_6_we0 = v3_6_we0_local;
assign v3_7_address0 = v3_7_addr_reg_755;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_d0 = reg_312;
assign v3_7_we0 = v3_7_we0_local;
assign v3_address0 = v3_addr_reg_740;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_304;
assign v3_we0 = v3_we0_local;
assign zext_ln47_fu_422_p1 = v19_1_reg_595;
assign zext_ln48_fu_561_p1 = lshr_ln_reg_635_pp0_iter15_reg;
assign zext_ln51_1_fu_493_p1 = grp_fu_360_p2;
assign zext_ln51_2_fu_499_p1 = grp_fu_398_p2;
assign zext_ln51_3_fu_525_p1 = grp_fu_465_p2;
assign zext_ln51_fu_505_p1 = grp_fu_439_p2;
endmodule 