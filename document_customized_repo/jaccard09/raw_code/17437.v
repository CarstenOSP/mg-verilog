module backprop_backprop_Pipeline_VITIS_LOOP_66_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,output_difference_2_promoted,output_difference_0_promoted,output_difference_1_promoted,output_difference_idx6_val64,output_difference_idx5_val61,output_difference_idx_val58,mux_case_02332_reload,mux_case_12436_reload,mux_case_22540_reload,mul_ln66,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0,training_targets_2_address0,training_targets_2_ce0,training_targets_2_q0,training_targets_3_address0,training_targets_3_ce0,training_targets_3_q0,mux_case_02644_reload,mux_case_12748_reload,mux_case_22852_reload,output_difference_2_out,output_difference_2_out_ap_vld,output_difference_1_out,output_difference_1_out_ap_vld,output_difference_out,output_difference_out_ap_vld,output_difference_idx6_val62_out,output_difference_idx6_val62_out_ap_vld,output_difference_idx5_val59_out,output_difference_idx5_val59_out_ap_vld,output_difference_idx_val56_out,output_difference_idx_val56_out_ap_vld,grp_fu_3044_p_din0,grp_fu_3044_p_din1,grp_fu_3044_p_opcode,grp_fu_3044_p_dout0,grp_fu_3044_p_ce,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_dout0,grp_fu_3076_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] output_difference_2_promoted;
input  [63:0] output_difference_0_promoted;
input  [63:0] output_difference_1_promoted;
input  [63:0] output_difference_idx6_val64;
input  [63:0] output_difference_idx5_val61;
input  [63:0] output_difference_idx_val58;
input  [63:0] mux_case_02332_reload;
input  [63:0] mux_case_12436_reload;
input  [63:0] mux_case_22540_reload;
input  [8:0] mul_ln66;
output  [6:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [6:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
output  [6:0] training_targets_2_address0;
output   training_targets_2_ce0;
input  [63:0] training_targets_2_q0;
output  [6:0] training_targets_3_address0;
output   training_targets_3_ce0;
input  [63:0] training_targets_3_q0;
input  [63:0] mux_case_02644_reload;
input  [63:0] mux_case_12748_reload;
input  [63:0] mux_case_22852_reload;
output  [63:0] output_difference_2_out;
output   output_difference_2_out_ap_vld;
output  [63:0] output_difference_1_out;
output   output_difference_1_out_ap_vld;
output  [63:0] output_difference_out;
output   output_difference_out_ap_vld;
output  [63:0] output_difference_idx6_val62_out;
output   output_difference_idx6_val62_out_ap_vld;
output  [63:0] output_difference_idx5_val59_out;
output   output_difference_idx5_val59_out_ap_vld;
output  [63:0] output_difference_idx_val56_out;
output   output_difference_idx_val56_out_ap_vld;
output  [63:0] grp_fu_3044_p_din0;
output  [63:0] grp_fu_3044_p_din1;
output  [0:0] grp_fu_3044_p_opcode;
input  [63:0] grp_fu_3044_p_dout0;
output   grp_fu_3044_p_ce;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
reg ap_idle;
reg output_difference_2_out_ap_vld;
reg output_difference_1_out_ap_vld;
reg output_difference_out_ap_vld;
reg output_difference_idx6_val62_out_ap_vld;
reg output_difference_idx5_val59_out_ap_vld;
reg output_difference_idx_val56_out_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln66_fu_350_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_15_reg_631;
reg   [1:0] i_15_reg_631_pp0_iter1_reg;
reg   [1:0] i_15_reg_631_pp0_iter2_reg;
reg   [1:0] i_15_reg_631_pp0_iter3_reg;
reg   [1:0] i_15_reg_631_pp0_iter4_reg;
reg   [1:0] i_15_reg_631_pp0_iter5_reg;
reg   [1:0] i_15_reg_631_pp0_iter6_reg;
reg   [1:0] i_15_reg_631_pp0_iter7_reg;
reg   [1:0] i_15_reg_631_pp0_iter8_reg;
reg   [1:0] i_15_reg_631_pp0_iter9_reg;
reg   [1:0] i_15_reg_631_pp0_iter10_reg;
reg   [1:0] i_15_reg_631_pp0_iter11_reg;
reg   [1:0] i_15_reg_631_pp0_iter12_reg;
reg   [1:0] i_15_reg_631_pp0_iter13_reg;
reg   [1:0] i_15_reg_631_pp0_iter14_reg;
reg   [1:0] i_15_reg_631_pp0_iter15_reg;
reg   [1:0] i_15_reg_631_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_637;
reg   [0:0] icmp_ln66_reg_637_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_637_pp0_iter15_reg;
wire   [1:0] trunc_ln67_fu_372_p1;
reg   [1:0] trunc_ln67_reg_641;
wire   [63:0] tmp_23_fu_415_p11;
reg   [63:0] tmp_23_reg_666;
wire   [63:0] tmp_22_fu_438_p9;
wire   [0:0] xor_ln67_fu_467_p2;
reg   [0:0] xor_ln67_reg_676;
wire   [62:0] trunc_ln67_1_fu_473_p1;
reg   [62:0] trunc_ln67_1_reg_681;
wire   [63:0] tmp_24_fu_477_p9;
reg   [63:0] tmp_24_reg_686;
wire   [63:0] bitcast_ln67_5_fu_499_p1;
reg   [63:0] mul5_i_reg_696;
wire   [63:0] zext_ln67_fu_386_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_104;
wire   [1:0] add_ln66_fu_356_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_15;
reg   [63:0] output_difference_idx_val56_fu_108;
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
reg   [63:0] output_difference_idx5_val59_fu_112;
reg   [63:0] output_difference_idx6_val62_fu_116;
reg   [63:0] output_difference_fu_120;
reg   [63:0] output_difference_1_fu_124;
reg   [63:0] output_difference_2_fu_128;
wire    ap_block_pp0_stage0_01001;
reg    training_targets_0_ce0_local;
reg    training_targets_1_ce0_local;
reg    training_targets_2_ce0_local;
reg    training_targets_3_ce0_local;
wire   [8:0] zext_ln66_fu_362_p1;
wire   [8:0] add_ln67_fu_366_p2;
wire   [6:0] lshr_ln_fu_376_p4;
wire   [63:0] tmp_23_fu_415_p2;
wire   [63:0] tmp_23_fu_415_p4;
wire   [63:0] tmp_23_fu_415_p6;
wire   [63:0] tmp_23_fu_415_p8;
wire   [63:0] tmp_23_fu_415_p9;
wire   [63:0] tmp_22_fu_438_p7;
wire   [63:0] bitcast_ln67_4_fu_455_p1;
wire   [0:0] bit_sel3_fu_459_p3;
wire   [63:0] tmp_24_fu_477_p7;
wire   [63:0] xor_ln2_fu_493_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_666;
wire   [1:0] tmp_23_fu_415_p1;
wire   [1:0] tmp_23_fu_415_p3;
wire  signed [1:0] tmp_23_fu_415_p5;
wire  signed [1:0] tmp_23_fu_415_p7;
wire   [1:0] tmp_22_fu_438_p1;
wire   [1:0] tmp_22_fu_438_p3;
wire  signed [1:0] tmp_22_fu_438_p5;
wire   [1:0] tmp_24_fu_477_p1;
wire   [1:0] tmp_24_fu_477_p3;
wire  signed [1:0] tmp_24_fu_477_p5;
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
#0 i_fu_104 = 2'd0;
#0 output_difference_idx_val56_fu_108 = 64'd0;
#0 output_difference_idx5_val59_fu_112 = 64'd0;
#0 output_difference_idx6_val62_fu_116 = 64'd0;
#0 output_difference_fu_120 = 64'd0;
#0 output_difference_1_fu_124 = 64'd0;
#0 output_difference_2_fu_128 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U246(.din0(tmp_23_fu_415_p2),.din1(tmp_23_fu_415_p4),.din2(tmp_23_fu_415_p6),.din3(tmp_23_fu_415_p8),.def(tmp_23_fu_415_p9),.sel(trunc_ln67_reg_641),.dout(tmp_23_fu_415_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U247(.din0(mux_case_02332_reload),.din1(mux_case_12436_reload),.din2(mux_case_22540_reload),.def(tmp_22_fu_438_p7),.sel(i_15_reg_631_pp0_iter1_reg),.dout(tmp_22_fu_438_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U248(.din0(mux_case_02644_reload),.din1(mux_case_12748_reload),.din2(mux_case_22852_reload),.def(tmp_24_fu_477_p7),.sel(i_15_reg_631_pp0_iter8_reg),.dout(tmp_24_fu_477_p9));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln66_fu_350_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_104 <= add_ln66_fu_356_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_104 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_fu_124 <= output_difference_0_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_631_pp0_iter16_reg == 2'd0))) begin
            output_difference_1_fu_124 <= mul5_i_reg_696;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_fu_128 <= output_difference_2_promoted;
        end else if ((1'b1 == ap_condition_666)) begin
            output_difference_2_fu_128 <= mul5_i_reg_696;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_fu_120 <= output_difference_1_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_631_pp0_iter16_reg == 2'd1))) begin
            output_difference_fu_120 <= mul5_i_reg_696;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx5_val59_fu_112 <= output_difference_idx5_val61;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_631_pp0_iter16_reg == 2'd1))) begin
            output_difference_idx5_val59_fu_112 <= mul5_i_reg_696;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx6_val62_fu_116 <= output_difference_idx6_val64;
        end else if ((1'b1 == ap_condition_666)) begin
            output_difference_idx6_val62_fu_116 <= mul5_i_reg_696;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx_val56_fu_108 <= output_difference_idx_val58;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_631_pp0_iter16_reg == 2'd0))) begin
            output_difference_idx_val56_fu_108 <= mul5_i_reg_696;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_15_reg_631_pp0_iter10_reg <= i_15_reg_631_pp0_iter9_reg;
        i_15_reg_631_pp0_iter11_reg <= i_15_reg_631_pp0_iter10_reg;
        i_15_reg_631_pp0_iter12_reg <= i_15_reg_631_pp0_iter11_reg;
        i_15_reg_631_pp0_iter13_reg <= i_15_reg_631_pp0_iter12_reg;
        i_15_reg_631_pp0_iter14_reg <= i_15_reg_631_pp0_iter13_reg;
        i_15_reg_631_pp0_iter15_reg <= i_15_reg_631_pp0_iter14_reg;
        i_15_reg_631_pp0_iter16_reg <= i_15_reg_631_pp0_iter15_reg;
        i_15_reg_631_pp0_iter2_reg <= i_15_reg_631_pp0_iter1_reg;
        i_15_reg_631_pp0_iter3_reg <= i_15_reg_631_pp0_iter2_reg;
        i_15_reg_631_pp0_iter4_reg <= i_15_reg_631_pp0_iter3_reg;
        i_15_reg_631_pp0_iter5_reg <= i_15_reg_631_pp0_iter4_reg;
        i_15_reg_631_pp0_iter6_reg <= i_15_reg_631_pp0_iter5_reg;
        i_15_reg_631_pp0_iter7_reg <= i_15_reg_631_pp0_iter6_reg;
        i_15_reg_631_pp0_iter8_reg <= i_15_reg_631_pp0_iter7_reg;
        i_15_reg_631_pp0_iter9_reg <= i_15_reg_631_pp0_iter8_reg;
        icmp_ln66_reg_637_pp0_iter10_reg <= icmp_ln66_reg_637_pp0_iter9_reg;
        icmp_ln66_reg_637_pp0_iter11_reg <= icmp_ln66_reg_637_pp0_iter10_reg;
        icmp_ln66_reg_637_pp0_iter12_reg <= icmp_ln66_reg_637_pp0_iter11_reg;
        icmp_ln66_reg_637_pp0_iter13_reg <= icmp_ln66_reg_637_pp0_iter12_reg;
        icmp_ln66_reg_637_pp0_iter14_reg <= icmp_ln66_reg_637_pp0_iter13_reg;
        icmp_ln66_reg_637_pp0_iter15_reg <= icmp_ln66_reg_637_pp0_iter14_reg;
        icmp_ln66_reg_637_pp0_iter2_reg <= icmp_ln66_reg_637_pp0_iter1_reg;
        icmp_ln66_reg_637_pp0_iter3_reg <= icmp_ln66_reg_637_pp0_iter2_reg;
        icmp_ln66_reg_637_pp0_iter4_reg <= icmp_ln66_reg_637_pp0_iter3_reg;
        icmp_ln66_reg_637_pp0_iter5_reg <= icmp_ln66_reg_637_pp0_iter4_reg;
        icmp_ln66_reg_637_pp0_iter6_reg <= icmp_ln66_reg_637_pp0_iter5_reg;
        icmp_ln66_reg_637_pp0_iter7_reg <= icmp_ln66_reg_637_pp0_iter6_reg;
        icmp_ln66_reg_637_pp0_iter8_reg <= icmp_ln66_reg_637_pp0_iter7_reg;
        icmp_ln66_reg_637_pp0_iter9_reg <= icmp_ln66_reg_637_pp0_iter8_reg;
        mul5_i_reg_696 <= grp_fu_3076_p_dout0;
        tmp_24_reg_686 <= tmp_24_fu_477_p9;
        trunc_ln67_1_reg_681 <= trunc_ln67_1_fu_473_p1;
        xor_ln67_reg_676 <= xor_ln67_fu_467_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_15_reg_631 <= ap_sig_allocacmp_i_15;
        i_15_reg_631_pp0_iter1_reg <= i_15_reg_631;
        icmp_ln66_reg_637 <= icmp_ln66_fu_350_p2;
        icmp_ln66_reg_637_pp0_iter1_reg <= icmp_ln66_reg_637;
        tmp_23_reg_666 <= tmp_23_fu_415_p11;
        trunc_ln67_reg_641 <= trunc_ln67_fu_372_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_350_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_15 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_15 = i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_1_out_ap_vld = 1'b1;
    end else begin
        output_difference_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_2_out_ap_vld = 1'b1;
    end else begin
        output_difference_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx5_val59_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx5_val59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx6_val62_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx6_val62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx_val56_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx_val56_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_637_pp0_iter15_reg == 1'd1))) begin
        output_difference_out_ap_vld = 1'b1;
    end else begin
        output_difference_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_0_ce0_local = 1'b1;
    end else begin
        training_targets_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_1_ce0_local = 1'b1;
    end else begin
        training_targets_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_2_ce0_local = 1'b1;
    end else begin
        training_targets_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_3_ce0_local = 1'b1;
    end else begin
        training_targets_3_ce0_local = 1'b0;
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
assign add_ln66_fu_356_p2 = (ap_sig_allocacmp_i_15 + 2'd1);
assign add_ln67_fu_366_p2 = (zext_ln66_fu_362_p1 + mul_ln66);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_666 = (~(i_15_reg_631_pp0_iter16_reg == 2'd1) & ~(i_15_reg_631_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel3_fu_459_p3 = bitcast_ln67_4_fu_455_p1[64'd63];
assign bitcast_ln67_4_fu_455_p1 = grp_fu_3044_p_dout0;
assign bitcast_ln67_5_fu_499_p1 = xor_ln2_fu_493_p3;
assign grp_fu_3044_p_ce = 1'b1;
assign grp_fu_3044_p_din0 = tmp_22_fu_438_p9;
assign grp_fu_3044_p_din1 = tmp_23_reg_666;
assign grp_fu_3044_p_opcode = 2'd1;
assign grp_fu_3076_p_ce = 1'b1;
assign grp_fu_3076_p_din0 = bitcast_ln67_5_fu_499_p1;
assign grp_fu_3076_p_din1 = tmp_24_reg_686;
assign icmp_ln66_fu_350_p2 = ((ap_sig_allocacmp_i_15 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_376_p4 = {{add_ln67_fu_366_p2[8:2]}};
assign output_difference_1_out = output_difference_1_fu_124;
assign output_difference_2_out = output_difference_2_fu_128;
assign output_difference_idx5_val59_out = output_difference_idx5_val59_fu_112;
assign output_difference_idx6_val62_out = output_difference_idx6_val62_fu_116;
assign output_difference_idx_val56_out = output_difference_idx_val56_fu_108;
assign output_difference_out = output_difference_fu_120;
assign tmp_22_fu_438_p7 = 'bx;
assign tmp_23_fu_415_p2 = training_targets_0_q0;
assign tmp_23_fu_415_p4 = training_targets_1_q0;
assign tmp_23_fu_415_p6 = training_targets_2_q0;
assign tmp_23_fu_415_p8 = training_targets_3_q0;
assign tmp_23_fu_415_p9 = 'bx;
assign tmp_24_fu_477_p7 = 'bx;
assign training_targets_0_address0 = zext_ln67_fu_386_p1;
assign training_targets_0_ce0 = training_targets_0_ce0_local;
assign training_targets_1_address0 = zext_ln67_fu_386_p1;
assign training_targets_1_ce0 = training_targets_1_ce0_local;
assign training_targets_2_address0 = zext_ln67_fu_386_p1;
assign training_targets_2_ce0 = training_targets_2_ce0_local;
assign training_targets_3_address0 = zext_ln67_fu_386_p1;
assign training_targets_3_ce0 = training_targets_3_ce0_local;
assign trunc_ln67_1_fu_473_p1 = bitcast_ln67_4_fu_455_p1[62:0];
assign trunc_ln67_fu_372_p1 = add_ln67_fu_366_p2[1:0];
assign xor_ln2_fu_493_p3 = {{xor_ln67_reg_676}, {trunc_ln67_1_reg_681}};
assign xor_ln67_fu_467_p2 = (bit_sel3_fu_459_p3 ^ 1'd1);
assign zext_ln66_fu_362_p1 = ap_sig_allocacmp_i_15;
assign zext_ln67_fu_386_p1 = lshr_ln_fu_376_p4;
endmodule 