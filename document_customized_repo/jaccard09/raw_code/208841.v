module SgdLR_sw_SgdLR_sw_Pipeline_label_320 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_7_address0,v3_7_ce0,v3_7_we0,v3_7_d0,v3_6_address0,v3_6_ce0,v3_6_we0,v3_6_d0,v3_5_address0,v3_5_ce0,v3_5_we0,v3_5_d0,v3_4_address0,v3_4_ce0,v3_4_we0,v3_4_d0,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,zext_ln33_6,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v22_7,grp_fu_2503_p_din0,grp_fu_2503_p_din1,grp_fu_2503_p_dout0,grp_fu_2503_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
input  [22:0] zext_ln33_6;
output  [21:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
input  [31:0] v22_7;
output  [31:0] grp_fu_2503_p_din0;
output  [31:0] grp_fu_2503_p_din1;
input  [31:0] grp_fu_2503_p_dout0;
output   grp_fu_2503_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln47_fu_244_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [23:0] zext_ln33_6_cast_fu_232_p1;
reg   [23:0] zext_ln33_6_cast_reg_339;
reg   [10:0] v19_2_reg_344;
wire   [2:0] trunc_ln47_fu_264_p1;
reg   [2:0] trunc_ln47_reg_355;
reg   [2:0] trunc_ln47_reg_355_pp0_iter2_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter3_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter4_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter5_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter6_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter7_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter8_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter9_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter10_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter11_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter12_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter13_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter14_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter15_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter16_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter17_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter18_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter19_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter20_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter21_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter22_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter23_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter24_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter25_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter26_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter27_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter28_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter29_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter30_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter31_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter32_reg;
reg   [2:0] trunc_ln47_reg_355_pp0_iter33_reg;
reg   [6:0] lshr_ln48_7_reg_359;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter2_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter3_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter4_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter5_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter6_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter7_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter8_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter9_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter10_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter11_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter12_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter13_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter14_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter15_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter16_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter17_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter18_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter19_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter20_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter21_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter22_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter23_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter24_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter25_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter26_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter27_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter28_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter29_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter30_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter31_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter32_reg;
reg   [6:0] lshr_ln48_7_reg_359_pp0_iter33_reg;
wire   [23:0] add_ln51_fu_276_p2;
wire   [0:0] icmp_ln51_fu_293_p2;
reg   [0:0] icmp_ln51_reg_369;
reg   [0:0] icmp_ln51_reg_369_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter6_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter7_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter8_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter9_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter10_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter11_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter12_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter13_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter14_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter15_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter16_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter17_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter18_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter19_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter20_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter21_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter22_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter23_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter24_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter25_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter26_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter27_reg;
reg   [0:0] icmp_ln51_reg_369_pp0_iter28_reg;
wire   [31:0] select_ln51_fu_305_p3;
reg   [31:0] select_ln51_reg_384;
wire   [31:0] v23_fu_312_p1;
reg   [31:0] v24_reg_394;
wire   [63:0] zext_ln51_fu_299_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_fu_316_p1;
reg   [10:0] v19_fu_82;
wire   [10:0] add_ln47_fu_250_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_2;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v3_6_we0_local;
reg    v3_6_ce0_local;
reg    v3_5_we0_local;
reg    v3_5_ce0_local;
reg    v3_4_we0_local;
reg    v3_4_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_7_we0_local;
reg    v3_7_ce0_local;
wire   [23:0] zext_ln47_fu_261_p1;
wire   [22:0] grp_fu_281_p1;
wire   [23:0] add_ln51_2_fu_287_p2;
wire   [23:0] grp_fu_281_p2;
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
#0 v19_fu_82 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_24ns_23ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 23 ),.dout_WIDTH( 24 ))
urem_24ns_23ns_24_28_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_fu_276_p2),.din1(grp_fu_281_p1),.ce(1'b1),.dout(grp_fu_281_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter33_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln47_fu_244_p2 == 1'd0))) begin
            v19_fu_82 <= add_ln47_fu_250_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_82 <= 11'd0;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln51_reg_369_pp0_iter10_reg <= icmp_ln51_reg_369_pp0_iter9_reg;
        icmp_ln51_reg_369_pp0_iter11_reg <= icmp_ln51_reg_369_pp0_iter10_reg;
        icmp_ln51_reg_369_pp0_iter12_reg <= icmp_ln51_reg_369_pp0_iter11_reg;
        icmp_ln51_reg_369_pp0_iter13_reg <= icmp_ln51_reg_369_pp0_iter12_reg;
        icmp_ln51_reg_369_pp0_iter14_reg <= icmp_ln51_reg_369_pp0_iter13_reg;
        icmp_ln51_reg_369_pp0_iter15_reg <= icmp_ln51_reg_369_pp0_iter14_reg;
        icmp_ln51_reg_369_pp0_iter16_reg <= icmp_ln51_reg_369_pp0_iter15_reg;
        icmp_ln51_reg_369_pp0_iter17_reg <= icmp_ln51_reg_369_pp0_iter16_reg;
        icmp_ln51_reg_369_pp0_iter18_reg <= icmp_ln51_reg_369_pp0_iter17_reg;
        icmp_ln51_reg_369_pp0_iter19_reg <= icmp_ln51_reg_369_pp0_iter18_reg;
        icmp_ln51_reg_369_pp0_iter20_reg <= icmp_ln51_reg_369_pp0_iter19_reg;
        icmp_ln51_reg_369_pp0_iter21_reg <= icmp_ln51_reg_369_pp0_iter20_reg;
        icmp_ln51_reg_369_pp0_iter22_reg <= icmp_ln51_reg_369_pp0_iter21_reg;
        icmp_ln51_reg_369_pp0_iter23_reg <= icmp_ln51_reg_369_pp0_iter22_reg;
        icmp_ln51_reg_369_pp0_iter24_reg <= icmp_ln51_reg_369_pp0_iter23_reg;
        icmp_ln51_reg_369_pp0_iter25_reg <= icmp_ln51_reg_369_pp0_iter24_reg;
        icmp_ln51_reg_369_pp0_iter26_reg <= icmp_ln51_reg_369_pp0_iter25_reg;
        icmp_ln51_reg_369_pp0_iter27_reg <= icmp_ln51_reg_369_pp0_iter26_reg;
        icmp_ln51_reg_369_pp0_iter28_reg <= icmp_ln51_reg_369_pp0_iter27_reg;
        icmp_ln51_reg_369_pp0_iter2_reg <= icmp_ln51_reg_369;
        icmp_ln51_reg_369_pp0_iter3_reg <= icmp_ln51_reg_369_pp0_iter2_reg;
        icmp_ln51_reg_369_pp0_iter4_reg <= icmp_ln51_reg_369_pp0_iter3_reg;
        icmp_ln51_reg_369_pp0_iter5_reg <= icmp_ln51_reg_369_pp0_iter4_reg;
        icmp_ln51_reg_369_pp0_iter6_reg <= icmp_ln51_reg_369_pp0_iter5_reg;
        icmp_ln51_reg_369_pp0_iter7_reg <= icmp_ln51_reg_369_pp0_iter6_reg;
        icmp_ln51_reg_369_pp0_iter8_reg <= icmp_ln51_reg_369_pp0_iter7_reg;
        icmp_ln51_reg_369_pp0_iter9_reg <= icmp_ln51_reg_369_pp0_iter8_reg;
        lshr_ln48_7_reg_359_pp0_iter10_reg <= lshr_ln48_7_reg_359_pp0_iter9_reg;
        lshr_ln48_7_reg_359_pp0_iter11_reg <= lshr_ln48_7_reg_359_pp0_iter10_reg;
        lshr_ln48_7_reg_359_pp0_iter12_reg <= lshr_ln48_7_reg_359_pp0_iter11_reg;
        lshr_ln48_7_reg_359_pp0_iter13_reg <= lshr_ln48_7_reg_359_pp0_iter12_reg;
        lshr_ln48_7_reg_359_pp0_iter14_reg <= lshr_ln48_7_reg_359_pp0_iter13_reg;
        lshr_ln48_7_reg_359_pp0_iter15_reg <= lshr_ln48_7_reg_359_pp0_iter14_reg;
        lshr_ln48_7_reg_359_pp0_iter16_reg <= lshr_ln48_7_reg_359_pp0_iter15_reg;
        lshr_ln48_7_reg_359_pp0_iter17_reg <= lshr_ln48_7_reg_359_pp0_iter16_reg;
        lshr_ln48_7_reg_359_pp0_iter18_reg <= lshr_ln48_7_reg_359_pp0_iter17_reg;
        lshr_ln48_7_reg_359_pp0_iter19_reg <= lshr_ln48_7_reg_359_pp0_iter18_reg;
        lshr_ln48_7_reg_359_pp0_iter20_reg <= lshr_ln48_7_reg_359_pp0_iter19_reg;
        lshr_ln48_7_reg_359_pp0_iter21_reg <= lshr_ln48_7_reg_359_pp0_iter20_reg;
        lshr_ln48_7_reg_359_pp0_iter22_reg <= lshr_ln48_7_reg_359_pp0_iter21_reg;
        lshr_ln48_7_reg_359_pp0_iter23_reg <= lshr_ln48_7_reg_359_pp0_iter22_reg;
        lshr_ln48_7_reg_359_pp0_iter24_reg <= lshr_ln48_7_reg_359_pp0_iter23_reg;
        lshr_ln48_7_reg_359_pp0_iter25_reg <= lshr_ln48_7_reg_359_pp0_iter24_reg;
        lshr_ln48_7_reg_359_pp0_iter26_reg <= lshr_ln48_7_reg_359_pp0_iter25_reg;
        lshr_ln48_7_reg_359_pp0_iter27_reg <= lshr_ln48_7_reg_359_pp0_iter26_reg;
        lshr_ln48_7_reg_359_pp0_iter28_reg <= lshr_ln48_7_reg_359_pp0_iter27_reg;
        lshr_ln48_7_reg_359_pp0_iter29_reg <= lshr_ln48_7_reg_359_pp0_iter28_reg;
        lshr_ln48_7_reg_359_pp0_iter2_reg <= lshr_ln48_7_reg_359;
        lshr_ln48_7_reg_359_pp0_iter30_reg <= lshr_ln48_7_reg_359_pp0_iter29_reg;
        lshr_ln48_7_reg_359_pp0_iter31_reg <= lshr_ln48_7_reg_359_pp0_iter30_reg;
        lshr_ln48_7_reg_359_pp0_iter32_reg <= lshr_ln48_7_reg_359_pp0_iter31_reg;
        lshr_ln48_7_reg_359_pp0_iter33_reg <= lshr_ln48_7_reg_359_pp0_iter32_reg;
        lshr_ln48_7_reg_359_pp0_iter3_reg <= lshr_ln48_7_reg_359_pp0_iter2_reg;
        lshr_ln48_7_reg_359_pp0_iter4_reg <= lshr_ln48_7_reg_359_pp0_iter3_reg;
        lshr_ln48_7_reg_359_pp0_iter5_reg <= lshr_ln48_7_reg_359_pp0_iter4_reg;
        lshr_ln48_7_reg_359_pp0_iter6_reg <= lshr_ln48_7_reg_359_pp0_iter5_reg;
        lshr_ln48_7_reg_359_pp0_iter7_reg <= lshr_ln48_7_reg_359_pp0_iter6_reg;
        lshr_ln48_7_reg_359_pp0_iter8_reg <= lshr_ln48_7_reg_359_pp0_iter7_reg;
        lshr_ln48_7_reg_359_pp0_iter9_reg <= lshr_ln48_7_reg_359_pp0_iter8_reg;
        select_ln51_reg_384 <= select_ln51_fu_305_p3;
        trunc_ln47_reg_355_pp0_iter10_reg <= trunc_ln47_reg_355_pp0_iter9_reg;
        trunc_ln47_reg_355_pp0_iter11_reg <= trunc_ln47_reg_355_pp0_iter10_reg;
        trunc_ln47_reg_355_pp0_iter12_reg <= trunc_ln47_reg_355_pp0_iter11_reg;
        trunc_ln47_reg_355_pp0_iter13_reg <= trunc_ln47_reg_355_pp0_iter12_reg;
        trunc_ln47_reg_355_pp0_iter14_reg <= trunc_ln47_reg_355_pp0_iter13_reg;
        trunc_ln47_reg_355_pp0_iter15_reg <= trunc_ln47_reg_355_pp0_iter14_reg;
        trunc_ln47_reg_355_pp0_iter16_reg <= trunc_ln47_reg_355_pp0_iter15_reg;
        trunc_ln47_reg_355_pp0_iter17_reg <= trunc_ln47_reg_355_pp0_iter16_reg;
        trunc_ln47_reg_355_pp0_iter18_reg <= trunc_ln47_reg_355_pp0_iter17_reg;
        trunc_ln47_reg_355_pp0_iter19_reg <= trunc_ln47_reg_355_pp0_iter18_reg;
        trunc_ln47_reg_355_pp0_iter20_reg <= trunc_ln47_reg_355_pp0_iter19_reg;
        trunc_ln47_reg_355_pp0_iter21_reg <= trunc_ln47_reg_355_pp0_iter20_reg;
        trunc_ln47_reg_355_pp0_iter22_reg <= trunc_ln47_reg_355_pp0_iter21_reg;
        trunc_ln47_reg_355_pp0_iter23_reg <= trunc_ln47_reg_355_pp0_iter22_reg;
        trunc_ln47_reg_355_pp0_iter24_reg <= trunc_ln47_reg_355_pp0_iter23_reg;
        trunc_ln47_reg_355_pp0_iter25_reg <= trunc_ln47_reg_355_pp0_iter24_reg;
        trunc_ln47_reg_355_pp0_iter26_reg <= trunc_ln47_reg_355_pp0_iter25_reg;
        trunc_ln47_reg_355_pp0_iter27_reg <= trunc_ln47_reg_355_pp0_iter26_reg;
        trunc_ln47_reg_355_pp0_iter28_reg <= trunc_ln47_reg_355_pp0_iter27_reg;
        trunc_ln47_reg_355_pp0_iter29_reg <= trunc_ln47_reg_355_pp0_iter28_reg;
        trunc_ln47_reg_355_pp0_iter2_reg <= trunc_ln47_reg_355;
        trunc_ln47_reg_355_pp0_iter30_reg <= trunc_ln47_reg_355_pp0_iter29_reg;
        trunc_ln47_reg_355_pp0_iter31_reg <= trunc_ln47_reg_355_pp0_iter30_reg;
        trunc_ln47_reg_355_pp0_iter32_reg <= trunc_ln47_reg_355_pp0_iter31_reg;
        trunc_ln47_reg_355_pp0_iter33_reg <= trunc_ln47_reg_355_pp0_iter32_reg;
        trunc_ln47_reg_355_pp0_iter3_reg <= trunc_ln47_reg_355_pp0_iter2_reg;
        trunc_ln47_reg_355_pp0_iter4_reg <= trunc_ln47_reg_355_pp0_iter3_reg;
        trunc_ln47_reg_355_pp0_iter5_reg <= trunc_ln47_reg_355_pp0_iter4_reg;
        trunc_ln47_reg_355_pp0_iter6_reg <= trunc_ln47_reg_355_pp0_iter5_reg;
        trunc_ln47_reg_355_pp0_iter7_reg <= trunc_ln47_reg_355_pp0_iter6_reg;
        trunc_ln47_reg_355_pp0_iter8_reg <= trunc_ln47_reg_355_pp0_iter7_reg;
        trunc_ln47_reg_355_pp0_iter9_reg <= trunc_ln47_reg_355_pp0_iter8_reg;
        v24_reg_394 <= grp_fu_2503_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln51_reg_369 <= icmp_ln51_fu_293_p2;
        lshr_ln48_7_reg_359 <= {{v19_2_reg_344[9:3]}};
        trunc_ln47_reg_355 <= trunc_ln47_fu_264_p1;
        v19_2_reg_344 <= ap_sig_allocacmp_v19_2;
        zext_ln33_6_cast_reg_339[22 : 0] <= zext_ln33_6_cast_fu_232_p1[22 : 0];
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln47_fu_244_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter33_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0)& (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
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
        ap_sig_allocacmp_v19_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_2 = v19_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_4_we0_local = 1'b1;
    end else begin
        v3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_5_we0_local = 1'b1;
    end else begin
        v3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_6_we0_local = 1'b1;
    end else begin
        v3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_7_we0_local = 1'b1;
    end else begin
        v3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln47_reg_355_pp0_iter33_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln47_fu_250_p2 = (ap_sig_allocacmp_v19_2 + 11'd1);
assign add_ln51_2_fu_287_p2 = ($signed(add_ln51_fu_276_p2) + $signed(24'd14473216));
assign add_ln51_fu_276_p2 = (zext_ln47_fu_261_p1 + zext_ln33_6_cast_reg_339);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_2503_p_ce = 1'b1;
assign grp_fu_2503_p_din0 = v22_7;
assign grp_fu_2503_p_din1 = v23_fu_312_p1;
assign grp_fu_281_p1 = 24'd2304000;
assign icmp_ln47_fu_244_p2 = ((ap_sig_allocacmp_v19_2 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_293_p2 = ((add_ln51_2_fu_287_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign select_ln51_fu_305_p3 = ((icmp_ln51_reg_369_pp0_iter28_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign trunc_ln47_fu_264_p1 = v19_2_reg_344[2:0];
assign v0_0_address0 = zext_ln51_fu_299_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln51_fu_299_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v23_fu_312_p1 = select_ln51_reg_384;
assign v3_1_address0 = zext_ln48_fu_316_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = v24_reg_394;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_316_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = v24_reg_394;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_fu_316_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = v24_reg_394;
assign v3_3_we0 = v3_3_we0_local;
assign v3_4_address0 = zext_ln48_fu_316_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_d0 = v24_reg_394;
assign v3_4_we0 = v3_4_we0_local;
assign v3_5_address0 = zext_ln48_fu_316_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_d0 = v24_reg_394;
assign v3_5_we0 = v3_5_we0_local;
assign v3_6_address0 = zext_ln48_fu_316_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_d0 = v24_reg_394;
assign v3_6_we0 = v3_6_we0_local;
assign v3_7_address0 = zext_ln48_fu_316_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_d0 = v24_reg_394;
assign v3_7_we0 = v3_7_we0_local;
assign v3_address0 = zext_ln48_fu_316_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_394;
assign v3_we0 = v3_we0_local;
assign zext_ln33_6_cast_fu_232_p1 = zext_ln33_6;
assign zext_ln47_fu_261_p1 = v19_2_reg_344;
assign zext_ln48_fu_316_p1 = lshr_ln48_7_reg_359_pp0_iter33_reg;
assign zext_ln51_fu_299_p1 = grp_fu_281_p2;
always @ (posedge ap_clk) begin
    zext_ln33_6_cast_reg_339[23] <= 1'b0;
end
endmodule 