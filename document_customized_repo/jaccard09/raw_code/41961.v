module backprop_backprop_Pipeline_VITIS_LOOP_66_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,output_difference_2_promoted,output_difference_0_promoted,output_difference_1_promoted,output_difference_idx30_val88,output_difference_idx29_val85,output_difference_idx_val82,mux_case_04756_reload,mux_case_14860_reload,mux_case_24964_reload,mul_ln66,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0,training_targets_2_address0,training_targets_2_ce0,training_targets_2_q0,training_targets_3_address0,training_targets_3_ce0,training_targets_3_q0,training_targets_4_address0,training_targets_4_ce0,training_targets_4_q0,training_targets_5_address0,training_targets_5_ce0,training_targets_5_q0,training_targets_6_address0,training_targets_6_ce0,training_targets_6_q0,training_targets_7_address0,training_targets_7_ce0,training_targets_7_q0,training_targets_8_address0,training_targets_8_ce0,training_targets_8_q0,training_targets_9_address0,training_targets_9_ce0,training_targets_9_q0,training_targets_10_address0,training_targets_10_ce0,training_targets_10_q0,training_targets_11_address0,training_targets_11_ce0,training_targets_11_q0,training_targets_12_address0,training_targets_12_ce0,training_targets_12_q0,training_targets_13_address0,training_targets_13_ce0,training_targets_13_q0,training_targets_14_address0,training_targets_14_ce0,training_targets_14_q0,training_targets_15_address0,training_targets_15_ce0,training_targets_15_q0,mux_case_05068_reload,mux_case_15172_reload,mux_case_25276_reload,output_difference_2_out,output_difference_2_out_ap_vld,output_difference_1_out,output_difference_1_out_ap_vld,output_difference_out,output_difference_out_ap_vld,output_difference_idx30_val86_out,output_difference_idx30_val86_out_ap_vld,output_difference_idx29_val83_out,output_difference_idx29_val83_out_ap_vld,output_difference_idx_val80_out,output_difference_idx_val80_out_ap_vld,grp_fu_4564_p_din0,grp_fu_4564_p_din1,grp_fu_4564_p_opcode,grp_fu_4564_p_dout0,grp_fu_4564_p_ce,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_dout0,grp_fu_4660_p_ce); 
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
input  [63:0] output_difference_idx30_val88;
input  [63:0] output_difference_idx29_val85;
input  [63:0] output_difference_idx_val82;
input  [63:0] mux_case_04756_reload;
input  [63:0] mux_case_14860_reload;
input  [63:0] mux_case_24964_reload;
input  [8:0] mul_ln66;
output  [4:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [4:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
output  [4:0] training_targets_2_address0;
output   training_targets_2_ce0;
input  [63:0] training_targets_2_q0;
output  [4:0] training_targets_3_address0;
output   training_targets_3_ce0;
input  [63:0] training_targets_3_q0;
output  [4:0] training_targets_4_address0;
output   training_targets_4_ce0;
input  [63:0] training_targets_4_q0;
output  [4:0] training_targets_5_address0;
output   training_targets_5_ce0;
input  [63:0] training_targets_5_q0;
output  [4:0] training_targets_6_address0;
output   training_targets_6_ce0;
input  [63:0] training_targets_6_q0;
output  [4:0] training_targets_7_address0;
output   training_targets_7_ce0;
input  [63:0] training_targets_7_q0;
output  [4:0] training_targets_8_address0;
output   training_targets_8_ce0;
input  [63:0] training_targets_8_q0;
output  [4:0] training_targets_9_address0;
output   training_targets_9_ce0;
input  [63:0] training_targets_9_q0;
output  [4:0] training_targets_10_address0;
output   training_targets_10_ce0;
input  [63:0] training_targets_10_q0;
output  [4:0] training_targets_11_address0;
output   training_targets_11_ce0;
input  [63:0] training_targets_11_q0;
output  [4:0] training_targets_12_address0;
output   training_targets_12_ce0;
input  [63:0] training_targets_12_q0;
output  [4:0] training_targets_13_address0;
output   training_targets_13_ce0;
input  [63:0] training_targets_13_q0;
output  [4:0] training_targets_14_address0;
output   training_targets_14_ce0;
input  [63:0] training_targets_14_q0;
output  [4:0] training_targets_15_address0;
output   training_targets_15_ce0;
input  [63:0] training_targets_15_q0;
input  [63:0] mux_case_05068_reload;
input  [63:0] mux_case_15172_reload;
input  [63:0] mux_case_25276_reload;
output  [63:0] output_difference_2_out;
output   output_difference_2_out_ap_vld;
output  [63:0] output_difference_1_out;
output   output_difference_1_out_ap_vld;
output  [63:0] output_difference_out;
output   output_difference_out_ap_vld;
output  [63:0] output_difference_idx30_val86_out;
output   output_difference_idx30_val86_out_ap_vld;
output  [63:0] output_difference_idx29_val83_out;
output   output_difference_idx29_val83_out_ap_vld;
output  [63:0] output_difference_idx_val80_out;
output   output_difference_idx_val80_out_ap_vld;
output  [63:0] grp_fu_4564_p_din0;
output  [63:0] grp_fu_4564_p_din1;
output  [0:0] grp_fu_4564_p_opcode;
input  [63:0] grp_fu_4564_p_dout0;
output   grp_fu_4564_p_ce;
output  [63:0] grp_fu_4660_p_din0;
output  [63:0] grp_fu_4660_p_din1;
input  [63:0] grp_fu_4660_p_dout0;
output   grp_fu_4660_p_ce;
reg ap_idle;
reg output_difference_2_out_ap_vld;
reg output_difference_1_out_ap_vld;
reg output_difference_out_ap_vld;
reg output_difference_idx30_val86_out_ap_vld;
reg output_difference_idx29_val83_out_ap_vld;
reg output_difference_idx_val80_out_ap_vld;
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
wire   [0:0] icmp_ln66_fu_562_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_15_reg_951;
reg   [1:0] i_15_reg_951_pp0_iter1_reg;
reg   [1:0] i_15_reg_951_pp0_iter2_reg;
reg   [1:0] i_15_reg_951_pp0_iter3_reg;
reg   [1:0] i_15_reg_951_pp0_iter4_reg;
reg   [1:0] i_15_reg_951_pp0_iter5_reg;
reg   [1:0] i_15_reg_951_pp0_iter6_reg;
reg   [1:0] i_15_reg_951_pp0_iter7_reg;
reg   [1:0] i_15_reg_951_pp0_iter8_reg;
reg   [1:0] i_15_reg_951_pp0_iter9_reg;
reg   [1:0] i_15_reg_951_pp0_iter10_reg;
reg   [1:0] i_15_reg_951_pp0_iter11_reg;
reg   [1:0] i_15_reg_951_pp0_iter12_reg;
reg   [1:0] i_15_reg_951_pp0_iter13_reg;
reg   [1:0] i_15_reg_951_pp0_iter14_reg;
reg   [1:0] i_15_reg_951_pp0_iter15_reg;
reg   [1:0] i_15_reg_951_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_957;
reg   [0:0] icmp_ln66_reg_957_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_957_pp0_iter15_reg;
wire   [3:0] trunc_ln67_fu_584_p1;
reg   [3:0] trunc_ln67_reg_961;
wire   [63:0] tmp_72_fu_687_p35;
reg   [63:0] tmp_72_reg_1046;
wire   [63:0] tmp_s_fu_758_p9;
wire   [0:0] xor_ln67_fu_787_p2;
reg   [0:0] xor_ln67_reg_1056;
wire   [62:0] trunc_ln67_1_fu_793_p1;
reg   [62:0] trunc_ln67_1_reg_1061;
wire   [63:0] tmp_73_fu_797_p9;
reg   [63:0] tmp_73_reg_1066;
wire   [63:0] bitcast_ln67_17_fu_819_p1;
reg   [63:0] mul5_i_reg_1076;
wire   [63:0] zext_ln67_fu_598_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_160;
wire   [1:0] add_ln66_fu_568_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_15;
reg   [63:0] output_difference_idx_val80_fu_164;
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
reg   [63:0] output_difference_idx29_val83_fu_168;
reg   [63:0] output_difference_idx30_val86_fu_172;
reg   [63:0] output_difference_fu_176;
reg   [63:0] output_difference_1_fu_180;
reg   [63:0] output_difference_2_fu_184;
wire    ap_block_pp0_stage0_01001;
reg    training_targets_0_ce0_local;
reg    training_targets_1_ce0_local;
reg    training_targets_2_ce0_local;
reg    training_targets_3_ce0_local;
reg    training_targets_4_ce0_local;
reg    training_targets_5_ce0_local;
reg    training_targets_6_ce0_local;
reg    training_targets_7_ce0_local;
reg    training_targets_8_ce0_local;
reg    training_targets_9_ce0_local;
reg    training_targets_10_ce0_local;
reg    training_targets_11_ce0_local;
reg    training_targets_12_ce0_local;
reg    training_targets_13_ce0_local;
reg    training_targets_14_ce0_local;
reg    training_targets_15_ce0_local;
wire   [8:0] zext_ln66_fu_574_p1;
wire   [8:0] add_ln67_fu_578_p2;
wire   [4:0] lshr_ln_fu_588_p4;
wire   [63:0] tmp_72_fu_687_p2;
wire   [63:0] tmp_72_fu_687_p4;
wire   [63:0] tmp_72_fu_687_p6;
wire   [63:0] tmp_72_fu_687_p8;
wire   [63:0] tmp_72_fu_687_p10;
wire   [63:0] tmp_72_fu_687_p12;
wire   [63:0] tmp_72_fu_687_p14;
wire   [63:0] tmp_72_fu_687_p16;
wire   [63:0] tmp_72_fu_687_p18;
wire   [63:0] tmp_72_fu_687_p20;
wire   [63:0] tmp_72_fu_687_p22;
wire   [63:0] tmp_72_fu_687_p24;
wire   [63:0] tmp_72_fu_687_p26;
wire   [63:0] tmp_72_fu_687_p28;
wire   [63:0] tmp_72_fu_687_p30;
wire   [63:0] tmp_72_fu_687_p32;
wire   [63:0] tmp_72_fu_687_p33;
wire   [63:0] tmp_s_fu_758_p7;
wire   [63:0] bitcast_ln67_16_fu_775_p1;
wire   [0:0] bit_sel3_fu_779_p3;
wire   [63:0] tmp_73_fu_797_p7;
wire   [63:0] xor_ln2_fu_813_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_874;
wire   [3:0] tmp_72_fu_687_p1;
wire   [3:0] tmp_72_fu_687_p3;
wire   [3:0] tmp_72_fu_687_p5;
wire   [3:0] tmp_72_fu_687_p7;
wire   [3:0] tmp_72_fu_687_p9;
wire   [3:0] tmp_72_fu_687_p11;
wire   [3:0] tmp_72_fu_687_p13;
wire   [3:0] tmp_72_fu_687_p15;
wire  signed [3:0] tmp_72_fu_687_p17;
wire  signed [3:0] tmp_72_fu_687_p19;
wire  signed [3:0] tmp_72_fu_687_p21;
wire  signed [3:0] tmp_72_fu_687_p23;
wire  signed [3:0] tmp_72_fu_687_p25;
wire  signed [3:0] tmp_72_fu_687_p27;
wire  signed [3:0] tmp_72_fu_687_p29;
wire  signed [3:0] tmp_72_fu_687_p31;
wire   [1:0] tmp_s_fu_758_p1;
wire   [1:0] tmp_s_fu_758_p3;
wire  signed [1:0] tmp_s_fu_758_p5;
wire   [1:0] tmp_73_fu_797_p1;
wire   [1:0] tmp_73_fu_797_p3;
wire  signed [1:0] tmp_73_fu_797_p5;
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
#0 i_fu_160 = 2'd0;
#0 output_difference_idx_val80_fu_164 = 64'd0;
#0 output_difference_idx29_val83_fu_168 = 64'd0;
#0 output_difference_idx30_val86_fu_172 = 64'd0;
#0 output_difference_fu_176 = 64'd0;
#0 output_difference_1_fu_180 = 64'd0;
#0 output_difference_2_fu_184 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U623(.din0(tmp_72_fu_687_p2),.din1(tmp_72_fu_687_p4),.din2(tmp_72_fu_687_p6),.din3(tmp_72_fu_687_p8),.din4(tmp_72_fu_687_p10),.din5(tmp_72_fu_687_p12),.din6(tmp_72_fu_687_p14),.din7(tmp_72_fu_687_p16),.din8(tmp_72_fu_687_p18),.din9(tmp_72_fu_687_p20),.din10(tmp_72_fu_687_p22),.din11(tmp_72_fu_687_p24),.din12(tmp_72_fu_687_p26),.din13(tmp_72_fu_687_p28),.din14(tmp_72_fu_687_p30),.din15(tmp_72_fu_687_p32),.def(tmp_72_fu_687_p33),.sel(trunc_ln67_reg_961),.dout(tmp_72_fu_687_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U624(.din0(mux_case_04756_reload),.din1(mux_case_14860_reload),.din2(mux_case_24964_reload),.def(tmp_s_fu_758_p7),.sel(i_15_reg_951_pp0_iter1_reg),.dout(tmp_s_fu_758_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U625(.din0(mux_case_05068_reload),.din1(mux_case_15172_reload),.din2(mux_case_25276_reload),.def(tmp_73_fu_797_p7),.sel(i_15_reg_951_pp0_iter8_reg),.dout(tmp_73_fu_797_p9));
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
        if (((icmp_ln66_fu_562_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_160 <= add_ln66_fu_568_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_160 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_fu_180 <= output_difference_0_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_951_pp0_iter16_reg == 2'd0))) begin
            output_difference_1_fu_180 <= mul5_i_reg_1076;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_fu_184 <= output_difference_2_promoted;
        end else if ((1'b1 == ap_condition_874)) begin
            output_difference_2_fu_184 <= mul5_i_reg_1076;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_fu_176 <= output_difference_1_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_951_pp0_iter16_reg == 2'd1))) begin
            output_difference_fu_176 <= mul5_i_reg_1076;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx29_val83_fu_168 <= output_difference_idx29_val85;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_951_pp0_iter16_reg == 2'd1))) begin
            output_difference_idx29_val83_fu_168 <= mul5_i_reg_1076;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx30_val86_fu_172 <= output_difference_idx30_val88;
        end else if ((1'b1 == ap_condition_874)) begin
            output_difference_idx30_val86_fu_172 <= mul5_i_reg_1076;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx_val80_fu_164 <= output_difference_idx_val82;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_951_pp0_iter16_reg == 2'd0))) begin
            output_difference_idx_val80_fu_164 <= mul5_i_reg_1076;
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
        i_15_reg_951_pp0_iter10_reg <= i_15_reg_951_pp0_iter9_reg;
        i_15_reg_951_pp0_iter11_reg <= i_15_reg_951_pp0_iter10_reg;
        i_15_reg_951_pp0_iter12_reg <= i_15_reg_951_pp0_iter11_reg;
        i_15_reg_951_pp0_iter13_reg <= i_15_reg_951_pp0_iter12_reg;
        i_15_reg_951_pp0_iter14_reg <= i_15_reg_951_pp0_iter13_reg;
        i_15_reg_951_pp0_iter15_reg <= i_15_reg_951_pp0_iter14_reg;
        i_15_reg_951_pp0_iter16_reg <= i_15_reg_951_pp0_iter15_reg;
        i_15_reg_951_pp0_iter2_reg <= i_15_reg_951_pp0_iter1_reg;
        i_15_reg_951_pp0_iter3_reg <= i_15_reg_951_pp0_iter2_reg;
        i_15_reg_951_pp0_iter4_reg <= i_15_reg_951_pp0_iter3_reg;
        i_15_reg_951_pp0_iter5_reg <= i_15_reg_951_pp0_iter4_reg;
        i_15_reg_951_pp0_iter6_reg <= i_15_reg_951_pp0_iter5_reg;
        i_15_reg_951_pp0_iter7_reg <= i_15_reg_951_pp0_iter6_reg;
        i_15_reg_951_pp0_iter8_reg <= i_15_reg_951_pp0_iter7_reg;
        i_15_reg_951_pp0_iter9_reg <= i_15_reg_951_pp0_iter8_reg;
        icmp_ln66_reg_957_pp0_iter10_reg <= icmp_ln66_reg_957_pp0_iter9_reg;
        icmp_ln66_reg_957_pp0_iter11_reg <= icmp_ln66_reg_957_pp0_iter10_reg;
        icmp_ln66_reg_957_pp0_iter12_reg <= icmp_ln66_reg_957_pp0_iter11_reg;
        icmp_ln66_reg_957_pp0_iter13_reg <= icmp_ln66_reg_957_pp0_iter12_reg;
        icmp_ln66_reg_957_pp0_iter14_reg <= icmp_ln66_reg_957_pp0_iter13_reg;
        icmp_ln66_reg_957_pp0_iter15_reg <= icmp_ln66_reg_957_pp0_iter14_reg;
        icmp_ln66_reg_957_pp0_iter2_reg <= icmp_ln66_reg_957_pp0_iter1_reg;
        icmp_ln66_reg_957_pp0_iter3_reg <= icmp_ln66_reg_957_pp0_iter2_reg;
        icmp_ln66_reg_957_pp0_iter4_reg <= icmp_ln66_reg_957_pp0_iter3_reg;
        icmp_ln66_reg_957_pp0_iter5_reg <= icmp_ln66_reg_957_pp0_iter4_reg;
        icmp_ln66_reg_957_pp0_iter6_reg <= icmp_ln66_reg_957_pp0_iter5_reg;
        icmp_ln66_reg_957_pp0_iter7_reg <= icmp_ln66_reg_957_pp0_iter6_reg;
        icmp_ln66_reg_957_pp0_iter8_reg <= icmp_ln66_reg_957_pp0_iter7_reg;
        icmp_ln66_reg_957_pp0_iter9_reg <= icmp_ln66_reg_957_pp0_iter8_reg;
        mul5_i_reg_1076 <= grp_fu_4660_p_dout0;
        tmp_73_reg_1066 <= tmp_73_fu_797_p9;
        trunc_ln67_1_reg_1061 <= trunc_ln67_1_fu_793_p1;
        xor_ln67_reg_1056 <= xor_ln67_fu_787_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_15_reg_951 <= ap_sig_allocacmp_i_15;
        i_15_reg_951_pp0_iter1_reg <= i_15_reg_951;
        icmp_ln66_reg_957 <= icmp_ln66_fu_562_p2;
        icmp_ln66_reg_957_pp0_iter1_reg <= icmp_ln66_reg_957;
        tmp_72_reg_1046 <= tmp_72_fu_687_p35;
        trunc_ln67_reg_961 <= trunc_ln67_fu_584_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_562_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_15 = i_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
        output_difference_1_out_ap_vld = 1'b1;
    end else begin
        output_difference_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
        output_difference_2_out_ap_vld = 1'b1;
    end else begin
        output_difference_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx29_val83_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx29_val83_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx30_val86_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx30_val86_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx_val80_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx_val80_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_957_pp0_iter15_reg == 1'd1))) begin
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
        training_targets_10_ce0_local = 1'b1;
    end else begin
        training_targets_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_11_ce0_local = 1'b1;
    end else begin
        training_targets_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_12_ce0_local = 1'b1;
    end else begin
        training_targets_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_13_ce0_local = 1'b1;
    end else begin
        training_targets_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_14_ce0_local = 1'b1;
    end else begin
        training_targets_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_15_ce0_local = 1'b1;
    end else begin
        training_targets_15_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_4_ce0_local = 1'b1;
    end else begin
        training_targets_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_5_ce0_local = 1'b1;
    end else begin
        training_targets_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_6_ce0_local = 1'b1;
    end else begin
        training_targets_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_7_ce0_local = 1'b1;
    end else begin
        training_targets_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_8_ce0_local = 1'b1;
    end else begin
        training_targets_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_9_ce0_local = 1'b1;
    end else begin
        training_targets_9_ce0_local = 1'b0;
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
assign add_ln66_fu_568_p2 = (ap_sig_allocacmp_i_15 + 2'd1);
assign add_ln67_fu_578_p2 = (zext_ln66_fu_574_p1 + mul_ln66);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_874 = (~(i_15_reg_951_pp0_iter16_reg == 2'd1) & ~(i_15_reg_951_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel3_fu_779_p3 = bitcast_ln67_16_fu_775_p1[64'd63];
assign bitcast_ln67_16_fu_775_p1 = grp_fu_4564_p_dout0;
assign bitcast_ln67_17_fu_819_p1 = xor_ln2_fu_813_p3;
assign grp_fu_4564_p_ce = 1'b1;
assign grp_fu_4564_p_din0 = tmp_s_fu_758_p9;
assign grp_fu_4564_p_din1 = tmp_72_reg_1046;
assign grp_fu_4564_p_opcode = 2'd1;
assign grp_fu_4660_p_ce = 1'b1;
assign grp_fu_4660_p_din0 = bitcast_ln67_17_fu_819_p1;
assign grp_fu_4660_p_din1 = tmp_73_reg_1066;
assign icmp_ln66_fu_562_p2 = ((ap_sig_allocacmp_i_15 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_588_p4 = {{add_ln67_fu_578_p2[8:4]}};
assign output_difference_1_out = output_difference_1_fu_180;
assign output_difference_2_out = output_difference_2_fu_184;
assign output_difference_idx29_val83_out = output_difference_idx29_val83_fu_168;
assign output_difference_idx30_val86_out = output_difference_idx30_val86_fu_172;
assign output_difference_idx_val80_out = output_difference_idx_val80_fu_164;
assign output_difference_out = output_difference_fu_176;
assign tmp_72_fu_687_p10 = training_targets_4_q0;
assign tmp_72_fu_687_p12 = training_targets_5_q0;
assign tmp_72_fu_687_p14 = training_targets_6_q0;
assign tmp_72_fu_687_p16 = training_targets_7_q0;
assign tmp_72_fu_687_p18 = training_targets_8_q0;
assign tmp_72_fu_687_p2 = training_targets_0_q0;
assign tmp_72_fu_687_p20 = training_targets_9_q0;
assign tmp_72_fu_687_p22 = training_targets_10_q0;
assign tmp_72_fu_687_p24 = training_targets_11_q0;
assign tmp_72_fu_687_p26 = training_targets_12_q0;
assign tmp_72_fu_687_p28 = training_targets_13_q0;
assign tmp_72_fu_687_p30 = training_targets_14_q0;
assign tmp_72_fu_687_p32 = training_targets_15_q0;
assign tmp_72_fu_687_p33 = 'bx;
assign tmp_72_fu_687_p4 = training_targets_1_q0;
assign tmp_72_fu_687_p6 = training_targets_2_q0;
assign tmp_72_fu_687_p8 = training_targets_3_q0;
assign tmp_73_fu_797_p7 = 'bx;
assign tmp_s_fu_758_p7 = 'bx;
assign training_targets_0_address0 = zext_ln67_fu_598_p1;
assign training_targets_0_ce0 = training_targets_0_ce0_local;
assign training_targets_10_address0 = zext_ln67_fu_598_p1;
assign training_targets_10_ce0 = training_targets_10_ce0_local;
assign training_targets_11_address0 = zext_ln67_fu_598_p1;
assign training_targets_11_ce0 = training_targets_11_ce0_local;
assign training_targets_12_address0 = zext_ln67_fu_598_p1;
assign training_targets_12_ce0 = training_targets_12_ce0_local;
assign training_targets_13_address0 = zext_ln67_fu_598_p1;
assign training_targets_13_ce0 = training_targets_13_ce0_local;
assign training_targets_14_address0 = zext_ln67_fu_598_p1;
assign training_targets_14_ce0 = training_targets_14_ce0_local;
assign training_targets_15_address0 = zext_ln67_fu_598_p1;
assign training_targets_15_ce0 = training_targets_15_ce0_local;
assign training_targets_1_address0 = zext_ln67_fu_598_p1;
assign training_targets_1_ce0 = training_targets_1_ce0_local;
assign training_targets_2_address0 = zext_ln67_fu_598_p1;
assign training_targets_2_ce0 = training_targets_2_ce0_local;
assign training_targets_3_address0 = zext_ln67_fu_598_p1;
assign training_targets_3_ce0 = training_targets_3_ce0_local;
assign training_targets_4_address0 = zext_ln67_fu_598_p1;
assign training_targets_4_ce0 = training_targets_4_ce0_local;
assign training_targets_5_address0 = zext_ln67_fu_598_p1;
assign training_targets_5_ce0 = training_targets_5_ce0_local;
assign training_targets_6_address0 = zext_ln67_fu_598_p1;
assign training_targets_6_ce0 = training_targets_6_ce0_local;
assign training_targets_7_address0 = zext_ln67_fu_598_p1;
assign training_targets_7_ce0 = training_targets_7_ce0_local;
assign training_targets_8_address0 = zext_ln67_fu_598_p1;
assign training_targets_8_ce0 = training_targets_8_ce0_local;
assign training_targets_9_address0 = zext_ln67_fu_598_p1;
assign training_targets_9_ce0 = training_targets_9_ce0_local;
assign trunc_ln67_1_fu_793_p1 = bitcast_ln67_16_fu_775_p1[62:0];
assign trunc_ln67_fu_584_p1 = add_ln67_fu_578_p2[3:0];
assign xor_ln2_fu_813_p3 = {{xor_ln67_reg_1056}, {trunc_ln67_1_reg_1061}};
assign xor_ln67_fu_787_p2 = (bit_sel3_fu_779_p3 ^ 1'd1);
assign zext_ln66_fu_574_p1 = ap_sig_allocacmp_i_15;
assign zext_ln67_fu_598_p1 = lshr_ln_fu_588_p4;
endmodule 