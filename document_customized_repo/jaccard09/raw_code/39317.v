module backprop_backprop_Pipeline_VITIS_LOOP_66_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,output_difference_2_promoted,output_difference_0_promoted,output_difference_1_promoted,empty_34,empty_35,empty,mux_case_0152161_reload,mux_case_1153165_reload,mux_case_2154169_reload,mul_ln66,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0,mux_case_0155173_reload,mux_case_1156177_reload,mux_case_2157181_reload,output_difference_out,output_difference_out_ap_vld,output_difference_1_out,output_difference_1_out_ap_vld,output_difference_2_out,output_difference_2_out_ap_vld,p_out,p_out_ap_vld,p_out1,p_out1_ap_vld,p_out2,p_out2_ap_vld,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_opcode,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce); 
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
input  [63:0] empty_34;
input  [63:0] empty_35;
input  [63:0] empty;
input  [63:0] mux_case_0152161_reload;
input  [63:0] mux_case_1153165_reload;
input  [63:0] mux_case_2154169_reload;
input  [8:0] mul_ln66;
output  [7:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [7:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
input  [63:0] mux_case_0155173_reload;
input  [63:0] mux_case_1156177_reload;
input  [63:0] mux_case_2157181_reload;
output  [63:0] output_difference_out;
output   output_difference_out_ap_vld;
output  [63:0] output_difference_1_out;
output   output_difference_1_out_ap_vld;
output  [63:0] output_difference_2_out;
output   output_difference_2_out_ap_vld;
output  [63:0] p_out;
output   p_out_ap_vld;
output  [63:0] p_out1;
output   p_out1_ap_vld;
output  [63:0] p_out2;
output   p_out2_ap_vld;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
output  [0:0] grp_fu_3155_p_opcode;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
output  [63:0] grp_fu_1780_p_din0;
output  [63:0] grp_fu_1780_p_din1;
input  [63:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
reg ap_idle;
reg output_difference_out_ap_vld;
reg output_difference_1_out_ap_vld;
reg output_difference_2_out_ap_vld;
reg p_out_ap_vld;
reg p_out1_ap_vld;
reg p_out2_ap_vld;
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
wire   [0:0] icmp_ln66_fu_316_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_9_reg_567;
reg   [1:0] i_9_reg_567_pp0_iter1_reg;
reg   [1:0] i_9_reg_567_pp0_iter2_reg;
reg   [1:0] i_9_reg_567_pp0_iter3_reg;
reg   [1:0] i_9_reg_567_pp0_iter4_reg;
reg   [1:0] i_9_reg_567_pp0_iter5_reg;
reg   [1:0] i_9_reg_567_pp0_iter6_reg;
reg   [1:0] i_9_reg_567_pp0_iter7_reg;
reg   [1:0] i_9_reg_567_pp0_iter8_reg;
reg   [1:0] i_9_reg_567_pp0_iter9_reg;
reg   [1:0] i_9_reg_567_pp0_iter10_reg;
reg   [1:0] i_9_reg_567_pp0_iter11_reg;
reg   [1:0] i_9_reg_567_pp0_iter12_reg;
reg   [1:0] i_9_reg_567_pp0_iter13_reg;
reg   [1:0] i_9_reg_567_pp0_iter14_reg;
reg   [1:0] i_9_reg_567_pp0_iter15_reg;
reg   [1:0] i_9_reg_567_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_573;
reg   [0:0] icmp_ln66_reg_573_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_573_pp0_iter15_reg;
wire   [0:0] trunc_ln67_fu_338_p1;
reg   [0:0] trunc_ln67_reg_577;
wire   [63:0] select_ln67_fu_363_p3;
reg   [63:0] select_ln67_reg_592;
wire   [63:0] tmp_9_fu_370_p9;
wire   [63:0] bitcast_ln67_fu_387_p1;
wire   [0:0] xor_ln67_fu_403_p2;
reg   [0:0] xor_ln67_reg_607;
wire   [62:0] trunc_ln67_1_fu_409_p1;
reg   [62:0] trunc_ln67_1_reg_612;
wire   [63:0] tmp_10_fu_413_p9;
reg   [63:0] tmp_10_reg_617;
wire   [63:0] bitcast_ln67_2_fu_435_p1;
reg   [63:0] mul5_i_reg_627;
wire   [63:0] zext_ln67_1_fu_352_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_96;
wire   [1:0] add_ln66_fu_322_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_9;
reg   [63:0] empty_41_fu_100;
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
reg   [63:0] empty_42_fu_104;
reg   [63:0] empty_43_fu_108;
reg   [63:0] output_difference_2_fu_112;
reg   [63:0] output_difference_1_fu_116;
reg   [63:0] output_difference_fu_120;
wire    ap_block_pp0_stage0_01001;
reg    training_targets_0_ce0_local;
reg    training_targets_1_ce0_local;
wire   [8:0] zext_ln67_fu_328_p1;
wire   [8:0] add_ln67_fu_332_p2;
wire   [7:0] lshr_ln7_fu_342_p4;
wire   [63:0] tmp_9_fu_370_p7;
wire   [63:0] bitcast_ln67_1_fu_391_p1;
wire   [0:0] bit_sel5_fu_395_p3;
wire   [63:0] tmp_10_fu_413_p7;
wire   [63:0] xor_ln2_fu_429_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_626;
wire   [1:0] tmp_9_fu_370_p1;
wire   [1:0] tmp_9_fu_370_p3;
wire  signed [1:0] tmp_9_fu_370_p5;
wire   [1:0] tmp_10_fu_413_p1;
wire   [1:0] tmp_10_fu_413_p3;
wire  signed [1:0] tmp_10_fu_413_p5;
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
#0 i_fu_96 = 2'd0;
#0 empty_41_fu_100 = 64'd0;
#0 empty_42_fu_104 = 64'd0;
#0 empty_43_fu_108 = 64'd0;
#0 output_difference_2_fu_112 = 64'd0;
#0 output_difference_1_fu_116 = 64'd0;
#0 output_difference_fu_120 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U139(.din0(mux_case_0152161_reload),.din1(mux_case_1153165_reload),.din2(mux_case_2154169_reload),.def(tmp_9_fu_370_p7),.sel(i_9_reg_567_pp0_iter1_reg),.dout(tmp_9_fu_370_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U140(.din0(mux_case_0155173_reload),.din1(mux_case_1156177_reload),.din2(mux_case_2157181_reload),.def(tmp_10_fu_413_p7),.sel(i_9_reg_567_pp0_iter8_reg),.dout(tmp_10_fu_413_p9));
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_41_fu_100 <= empty;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_9_reg_567_pp0_iter16_reg == 2'd0))) begin
            empty_41_fu_100 <= mul5_i_reg_627;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_42_fu_104 <= empty_35;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_9_reg_567_pp0_iter16_reg == 2'd1))) begin
            empty_42_fu_104 <= mul5_i_reg_627;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            empty_43_fu_108 <= empty_34;
        end else if ((1'b1 == ap_condition_626)) begin
            empty_43_fu_108 <= mul5_i_reg_627;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln66_fu_316_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_96 <= add_ln66_fu_322_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_96 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_fu_116 <= output_difference_0_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_9_reg_567_pp0_iter16_reg == 2'd0))) begin
            output_difference_1_fu_116 <= mul5_i_reg_627;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_fu_112 <= output_difference_1_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_9_reg_567_pp0_iter16_reg == 2'd1))) begin
            output_difference_2_fu_112 <= mul5_i_reg_627;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_fu_120 <= output_difference_2_promoted;
        end else if ((1'b1 == ap_condition_626)) begin
            output_difference_fu_120 <= mul5_i_reg_627;
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
        i_9_reg_567_pp0_iter10_reg <= i_9_reg_567_pp0_iter9_reg;
        i_9_reg_567_pp0_iter11_reg <= i_9_reg_567_pp0_iter10_reg;
        i_9_reg_567_pp0_iter12_reg <= i_9_reg_567_pp0_iter11_reg;
        i_9_reg_567_pp0_iter13_reg <= i_9_reg_567_pp0_iter12_reg;
        i_9_reg_567_pp0_iter14_reg <= i_9_reg_567_pp0_iter13_reg;
        i_9_reg_567_pp0_iter15_reg <= i_9_reg_567_pp0_iter14_reg;
        i_9_reg_567_pp0_iter16_reg <= i_9_reg_567_pp0_iter15_reg;
        i_9_reg_567_pp0_iter2_reg <= i_9_reg_567_pp0_iter1_reg;
        i_9_reg_567_pp0_iter3_reg <= i_9_reg_567_pp0_iter2_reg;
        i_9_reg_567_pp0_iter4_reg <= i_9_reg_567_pp0_iter3_reg;
        i_9_reg_567_pp0_iter5_reg <= i_9_reg_567_pp0_iter4_reg;
        i_9_reg_567_pp0_iter6_reg <= i_9_reg_567_pp0_iter5_reg;
        i_9_reg_567_pp0_iter7_reg <= i_9_reg_567_pp0_iter6_reg;
        i_9_reg_567_pp0_iter8_reg <= i_9_reg_567_pp0_iter7_reg;
        i_9_reg_567_pp0_iter9_reg <= i_9_reg_567_pp0_iter8_reg;
        icmp_ln66_reg_573_pp0_iter10_reg <= icmp_ln66_reg_573_pp0_iter9_reg;
        icmp_ln66_reg_573_pp0_iter11_reg <= icmp_ln66_reg_573_pp0_iter10_reg;
        icmp_ln66_reg_573_pp0_iter12_reg <= icmp_ln66_reg_573_pp0_iter11_reg;
        icmp_ln66_reg_573_pp0_iter13_reg <= icmp_ln66_reg_573_pp0_iter12_reg;
        icmp_ln66_reg_573_pp0_iter14_reg <= icmp_ln66_reg_573_pp0_iter13_reg;
        icmp_ln66_reg_573_pp0_iter15_reg <= icmp_ln66_reg_573_pp0_iter14_reg;
        icmp_ln66_reg_573_pp0_iter2_reg <= icmp_ln66_reg_573_pp0_iter1_reg;
        icmp_ln66_reg_573_pp0_iter3_reg <= icmp_ln66_reg_573_pp0_iter2_reg;
        icmp_ln66_reg_573_pp0_iter4_reg <= icmp_ln66_reg_573_pp0_iter3_reg;
        icmp_ln66_reg_573_pp0_iter5_reg <= icmp_ln66_reg_573_pp0_iter4_reg;
        icmp_ln66_reg_573_pp0_iter6_reg <= icmp_ln66_reg_573_pp0_iter5_reg;
        icmp_ln66_reg_573_pp0_iter7_reg <= icmp_ln66_reg_573_pp0_iter6_reg;
        icmp_ln66_reg_573_pp0_iter8_reg <= icmp_ln66_reg_573_pp0_iter7_reg;
        icmp_ln66_reg_573_pp0_iter9_reg <= icmp_ln66_reg_573_pp0_iter8_reg;
        mul5_i_reg_627 <= grp_fu_1780_p_dout0;
        tmp_10_reg_617 <= tmp_10_fu_413_p9;
        trunc_ln67_1_reg_612 <= trunc_ln67_1_fu_409_p1;
        xor_ln67_reg_607 <= xor_ln67_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_9_reg_567 <= ap_sig_allocacmp_i_9;
        i_9_reg_567_pp0_iter1_reg <= i_9_reg_567;
        icmp_ln66_reg_573 <= icmp_ln66_fu_316_p2;
        icmp_ln66_reg_573_pp0_iter1_reg <= icmp_ln66_reg_573;
        select_ln67_reg_592 <= select_ln67_fu_363_p3;
        trunc_ln67_reg_577 <= trunc_ln67_fu_338_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_9 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        output_difference_1_out_ap_vld = 1'b1;
    end else begin
        output_difference_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        output_difference_2_out_ap_vld = 1'b1;
    end else begin
        output_difference_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        output_difference_out_ap_vld = 1'b1;
    end else begin
        output_difference_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_573_pp0_iter15_reg == 1'd1))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln66_fu_322_p2 = (ap_sig_allocacmp_i_9 + 2'd1);
assign add_ln67_fu_332_p2 = (zext_ln67_fu_328_p1 + mul_ln66);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_626 = (~(i_9_reg_567_pp0_iter16_reg == 2'd1) & ~(i_9_reg_567_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel5_fu_395_p3 = bitcast_ln67_1_fu_391_p1[64'd63];
assign bitcast_ln67_1_fu_391_p1 = grp_fu_3155_p_dout0;
assign bitcast_ln67_2_fu_435_p1 = xor_ln2_fu_429_p3;
assign bitcast_ln67_fu_387_p1 = select_ln67_reg_592;
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = bitcast_ln67_2_fu_435_p1;
assign grp_fu_1780_p_din1 = tmp_10_reg_617;
assign grp_fu_3155_p_ce = 1'b1;
assign grp_fu_3155_p_din0 = tmp_9_fu_370_p9;
assign grp_fu_3155_p_din1 = bitcast_ln67_fu_387_p1;
assign grp_fu_3155_p_opcode = 2'd1;
assign icmp_ln66_fu_316_p2 = ((ap_sig_allocacmp_i_9 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_342_p4 = {{add_ln67_fu_332_p2[8:1]}};
assign output_difference_1_out = output_difference_1_fu_116;
assign output_difference_2_out = output_difference_2_fu_112;
assign output_difference_out = output_difference_fu_120;
assign p_out = empty_43_fu_108;
assign p_out1 = empty_42_fu_104;
assign p_out2 = empty_41_fu_100;
assign select_ln67_fu_363_p3 = ((trunc_ln67_reg_577[0:0] == 1'b1) ? training_targets_1_q0 : training_targets_0_q0);
assign tmp_10_fu_413_p7 = 'bx;
assign tmp_9_fu_370_p7 = 'bx;
assign training_targets_0_address0 = zext_ln67_1_fu_352_p1;
assign training_targets_0_ce0 = training_targets_0_ce0_local;
assign training_targets_1_address0 = zext_ln67_1_fu_352_p1;
assign training_targets_1_ce0 = training_targets_1_ce0_local;
assign trunc_ln67_1_fu_409_p1 = bitcast_ln67_1_fu_391_p1[62:0];
assign trunc_ln67_fu_338_p1 = add_ln67_fu_332_p2[0:0];
assign xor_ln2_fu_429_p3 = {{xor_ln67_reg_607}, {trunc_ln67_1_reg_612}};
assign xor_ln67_fu_403_p2 = (bit_sel5_fu_395_p3 ^ 1'd1);
assign zext_ln67_1_fu_352_p1 = lshr_ln7_fu_342_p4;
assign zext_ln67_fu_328_p1 = ap_sig_allocacmp_i_9;
endmodule 