
module backprop_backprop_Pipeline_label_21_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_q0,v20_1_address0,v20_1_ce0,v20_1_q0,v20_2_address0,v20_2_ce0,v20_2_q0,v20_3_address0,v20_3_ce0,v20_3_q0,v20_4_address0,v20_4_ce0,v20_4_q0,v20_5_address0,v20_5_ce0,v20_5_q0,v20_6_address0,v20_6_ce0,v20_6_q0,v20_7_address0,v20_7_ce0,v20_7_q0,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_1_address0,v8_1_ce0,v8_1_q0,v8_2_address0,v8_2_ce0,v8_2_q0,v8_3_address0,v8_3_ce0,v8_3_q0,v8_4_address0,v8_4_ce0,v8_4_q0,v8_5_address0,v8_5_ce0,v8_5_q0,v8_6_address0,v8_6_ce0,v8_6_q0,v8_7_address0,v8_7_ce0,v8_7_q0,grp_fu_8145_p_din0,grp_fu_8145_p_din1,grp_fu_8145_p_dout0,grp_fu_8145_p_ce,grp_fu_8149_p_din0,grp_fu_8149_p_din1,grp_fu_8149_p_dout0,grp_fu_8149_p_ce,grp_fu_8153_p_din0,grp_fu_8153_p_din1,grp_fu_8153_p_dout0,grp_fu_8153_p_ce,grp_fu_17826_p_din0,grp_fu_17826_p_din1,grp_fu_17826_p_dout0,grp_fu_17826_p_ce,grp_fu_17830_p_din0,grp_fu_17830_p_din1,grp_fu_17830_p_dout0,grp_fu_17830_p_ce,grp_fu_17834_p_din0,grp_fu_17834_p_din1,grp_fu_17834_p_dout0,grp_fu_17834_p_ce,grp_fu_17838_p_din0,grp_fu_17838_p_din1,grp_fu_17838_p_dout0,grp_fu_17838_p_ce,grp_fu_17842_p_din0,grp_fu_17842_p_din1,grp_fu_17842_p_dout0,grp_fu_17842_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [2:0] v20_1_address0;
output   v20_1_ce0;
input  [63:0] v20_1_q0;
output  [2:0] v20_2_address0;
output   v20_2_ce0;
input  [63:0] v20_2_q0;
output  [2:0] v20_3_address0;
output   v20_3_ce0;
input  [63:0] v20_3_q0;
output  [2:0] v20_4_address0;
output   v20_4_ce0;
input  [63:0] v20_4_q0;
output  [2:0] v20_5_address0;
output   v20_5_ce0;
input  [63:0] v20_5_q0;
output  [2:0] v20_6_address0;
output   v20_6_ce0;
input  [63:0] v20_6_q0;
output  [2:0] v20_7_address0;
output   v20_7_ce0;
input  [63:0] v20_7_q0;
output  [9:0] v11_3_address0;
output   v11_3_ce0;
output   v11_3_we0;
output  [63:0] v11_3_d0;
output  [9:0] v11_3_address1;
output   v11_3_ce1;
output   v11_3_we1;
output  [63:0] v11_3_d1;
output  [9:0] v11_2_address0;
output   v11_2_ce0;
output   v11_2_we0;
output  [63:0] v11_2_d0;
output  [9:0] v11_2_address1;
output   v11_2_ce1;
output   v11_2_we1;
output  [63:0] v11_2_d1;
output  [9:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [9:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [9:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [9:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [2:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [2:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [2:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [2:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [2:0] v8_4_address0;
output   v8_4_ce0;
input  [63:0] v8_4_q0;
output  [2:0] v8_5_address0;
output   v8_5_ce0;
input  [63:0] v8_5_q0;
output  [2:0] v8_6_address0;
output   v8_6_ce0;
input  [63:0] v8_6_q0;
output  [2:0] v8_7_address0;
output   v8_7_ce0;
input  [63:0] v8_7_q0;
output  [63:0] grp_fu_8145_p_din0;
output  [63:0] grp_fu_8145_p_din1;
input  [63:0] grp_fu_8145_p_dout0;
output   grp_fu_8145_p_ce;
output  [63:0] grp_fu_8149_p_din0;
output  [63:0] grp_fu_8149_p_din1;
input  [63:0] grp_fu_8149_p_dout0;
output   grp_fu_8149_p_ce;
output  [63:0] grp_fu_8153_p_din0;
output  [63:0] grp_fu_8153_p_din1;
input  [63:0] grp_fu_8153_p_dout0;
output   grp_fu_8153_p_ce;
output  [63:0] grp_fu_17826_p_din0;
output  [63:0] grp_fu_17826_p_din1;
input  [63:0] grp_fu_17826_p_dout0;
output   grp_fu_17826_p_ce;
output  [63:0] grp_fu_17830_p_din0;
output  [63:0] grp_fu_17830_p_din1;
input  [63:0] grp_fu_17830_p_dout0;
output   grp_fu_17830_p_ce;
output  [63:0] grp_fu_17834_p_din0;
output  [63:0] grp_fu_17834_p_din1;
input  [63:0] grp_fu_17834_p_dout0;
output   grp_fu_17834_p_ce;
output  [63:0] grp_fu_17838_p_din0;
output  [63:0] grp_fu_17838_p_din1;
input  [63:0] grp_fu_17838_p_dout0;
output   grp_fu_17838_p_ce;
output  [63:0] grp_fu_17842_p_din0;
output  [63:0] grp_fu_17842_p_din1;
input  [63:0] grp_fu_17842_p_dout0;
output   grp_fu_17842_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln210_fu_482_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln210_fu_530_p1;
reg   [2:0] trunc_ln210_reg_703;
wire   [2:0] lshr_ln6_fu_556_p4;
reg   [2:0] lshr_ln6_reg_748;
reg   [2:0] lshr_ln6_reg_748_pp0_iter1_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter2_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter3_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter4_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter5_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter6_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter7_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter8_reg;
reg   [2:0] lshr_ln6_reg_748_pp0_iter9_reg;
wire   [63:0] zext_ln212_fu_566_p1;
reg   [63:0] zext_ln212_reg_753;
reg   [3:0] lshr_ln7_reg_766;
reg   [3:0] lshr_ln7_reg_766_pp0_iter1_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter2_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter3_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter4_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter5_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter6_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter7_reg;
reg   [3:0] lshr_ln7_reg_766_pp0_iter8_reg;
wire   [5:0] trunc_ln215_fu_584_p1;
reg   [5:0] trunc_ln215_reg_771;
reg   [5:0] trunc_ln215_reg_771_pp0_iter1_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter2_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter3_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter4_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter5_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter6_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter7_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter8_reg;
reg   [5:0] trunc_ln215_reg_771_pp0_iter9_reg;
wire   [63:0] v126_fu_609_p19;
reg   [63:0] v126_reg_792;
reg   [63:0] v126_reg_792_pp0_iter2_reg;
reg   [63:0] v128_reg_804;
reg   [63:0] v128_8_reg_829;
reg   [63:0] v128_9_reg_834;
reg   [63:0] v128_10_reg_839;
reg   [63:0] v128_11_reg_844;
reg   [63:0] v128_12_reg_849;
reg   [63:0] v128_13_reg_854;
reg   [63:0] v128_7_reg_859;
reg   [63:0] v129_reg_864;
reg   [63:0] v129_1_reg_869;
reg   [63:0] v129_2_reg_874;
reg   [63:0] v129_3_reg_879;
reg   [63:0] v129_4_reg_884;
reg   [63:0] v129_5_reg_889;
reg   [63:0] v129_6_reg_894;
reg   [63:0] v129_7_reg_899;
wire   [63:0] zext_ln210_fu_544_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln215_fu_654_p1;
wire   [63:0] zext_ln215_1_fu_670_p1;
reg   [6:0] v127_fu_112;
wire   [6:0] add_ln212_fu_588_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v127_load;
reg   [6:0] v125_fu_116;
wire   [6:0] select_ln210_1_fu_522_p3;
reg   [6:0] ap_sig_allocacmp_v125_load;
reg   [9:0] indvar_flatten26_fu_120;
wire   [9:0] add_ln210_fu_488_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten26_load;
reg    v20_ce0_local;
reg    v20_1_ce0_local;
reg    v20_2_ce0_local;
reg    v20_3_ce0_local;
reg    v20_4_ce0_local;
reg    v20_5_ce0_local;
reg    v20_6_ce0_local;
reg    v20_7_ce0_local;
reg    v8_ce0_local;
reg    v8_1_ce0_local;
reg    v8_2_ce0_local;
reg    v8_3_ce0_local;
reg    v8_4_ce0_local;
reg    v8_5_ce0_local;
reg    v8_6_ce0_local;
reg    v8_7_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
reg    v11_2_we1_local;
reg    v11_2_ce1_local;
reg    v11_2_we0_local;
reg    v11_2_ce0_local;
reg    v11_3_we1_local;
reg    v11_3_ce1_local;
reg    v11_3_we0_local;
reg    v11_3_ce0_local;
wire   [0:0] tmp_fu_500_p3;
wire   [6:0] add_ln210_1_fu_516_p2;
wire   [2:0] lshr_ln5_fu_534_p4;
wire   [6:0] select_ln210_fu_508_p3;
wire   [63:0] v126_fu_609_p17;
wire   [9:0] add_ln_fu_648_p3;
wire   [9:0] add_ln215_1_fu_662_p4;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v126_fu_609_p1;
wire   [2:0] v126_fu_609_p3;
wire   [2:0] v126_fu_609_p5;
wire   [2:0] v126_fu_609_p7;
wire  signed [2:0] v126_fu_609_p9;
wire  signed [2:0] v126_fu_609_p11;
wire  signed [2:0] v126_fu_609_p13;
wire  signed [2:0] v126_fu_609_p15;
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
#0 v127_fu_112 = 7'd0;
#0 v125_fu_116 = 7'd0;
#0 indvar_flatten26_fu_120 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U1327(.din0(v20_q0),.din1(v20_1_q0),.din2(v20_2_q0),.din3(v20_3_q0),.din4(v20_4_q0),.din5(v20_5_q0),.din6(v20_6_q0),.din7(v20_7_q0),.def(v126_fu_609_p17),.sel(trunc_ln210_reg_703),.dout(v126_fu_609_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln210_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten26_fu_120 <= add_ln210_fu_488_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten26_fu_120 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln210_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v125_fu_116 <= select_ln210_1_fu_522_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v125_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln210_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_fu_112 <= add_ln212_fu_588_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_fu_112 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln6_reg_748 <= {{select_ln210_fu_508_p3[5:3]}};
        lshr_ln6_reg_748_pp0_iter1_reg <= lshr_ln6_reg_748;
        lshr_ln7_reg_766 <= {{select_ln210_fu_508_p3[5:2]}};
        lshr_ln7_reg_766_pp0_iter1_reg <= lshr_ln7_reg_766;
        trunc_ln210_reg_703 <= trunc_ln210_fu_530_p1;
        trunc_ln215_reg_771 <= trunc_ln215_fu_584_p1;
        trunc_ln215_reg_771_pp0_iter1_reg <= trunc_ln215_reg_771;
        v126_reg_792 <= v126_fu_609_p19;
        v128_10_reg_839 <= v8_3_q0;
        v128_8_reg_829 <= v8_1_q0;
        v128_9_reg_834 <= v8_2_q0;
        v128_reg_804 <= v8_q0;
        zext_ln212_reg_753[2 : 0] <= zext_ln212_fu_566_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln6_reg_748_pp0_iter2_reg <= lshr_ln6_reg_748_pp0_iter1_reg;
        lshr_ln6_reg_748_pp0_iter3_reg <= lshr_ln6_reg_748_pp0_iter2_reg;
        lshr_ln6_reg_748_pp0_iter4_reg <= lshr_ln6_reg_748_pp0_iter3_reg;
        lshr_ln6_reg_748_pp0_iter5_reg <= lshr_ln6_reg_748_pp0_iter4_reg;
        lshr_ln6_reg_748_pp0_iter6_reg <= lshr_ln6_reg_748_pp0_iter5_reg;
        lshr_ln6_reg_748_pp0_iter7_reg <= lshr_ln6_reg_748_pp0_iter6_reg;
        lshr_ln6_reg_748_pp0_iter8_reg <= lshr_ln6_reg_748_pp0_iter7_reg;
        lshr_ln6_reg_748_pp0_iter9_reg <= lshr_ln6_reg_748_pp0_iter8_reg;
        lshr_ln7_reg_766_pp0_iter2_reg <= lshr_ln7_reg_766_pp0_iter1_reg;
        lshr_ln7_reg_766_pp0_iter3_reg <= lshr_ln7_reg_766_pp0_iter2_reg;
        lshr_ln7_reg_766_pp0_iter4_reg <= lshr_ln7_reg_766_pp0_iter3_reg;
        lshr_ln7_reg_766_pp0_iter5_reg <= lshr_ln7_reg_766_pp0_iter4_reg;
        lshr_ln7_reg_766_pp0_iter6_reg <= lshr_ln7_reg_766_pp0_iter5_reg;
        lshr_ln7_reg_766_pp0_iter7_reg <= lshr_ln7_reg_766_pp0_iter6_reg;
        lshr_ln7_reg_766_pp0_iter8_reg <= lshr_ln7_reg_766_pp0_iter7_reg;
        trunc_ln215_reg_771_pp0_iter2_reg <= trunc_ln215_reg_771_pp0_iter1_reg;
        trunc_ln215_reg_771_pp0_iter3_reg <= trunc_ln215_reg_771_pp0_iter2_reg;
        trunc_ln215_reg_771_pp0_iter4_reg <= trunc_ln215_reg_771_pp0_iter3_reg;
        trunc_ln215_reg_771_pp0_iter5_reg <= trunc_ln215_reg_771_pp0_iter4_reg;
        trunc_ln215_reg_771_pp0_iter6_reg <= trunc_ln215_reg_771_pp0_iter5_reg;
        trunc_ln215_reg_771_pp0_iter7_reg <= trunc_ln215_reg_771_pp0_iter6_reg;
        trunc_ln215_reg_771_pp0_iter8_reg <= trunc_ln215_reg_771_pp0_iter7_reg;
        trunc_ln215_reg_771_pp0_iter9_reg <= trunc_ln215_reg_771_pp0_iter8_reg;
        v126_reg_792_pp0_iter2_reg <= v126_reg_792;
        v128_11_reg_844 <= v8_4_q0;
        v128_12_reg_849 <= v8_5_q0;
        v128_13_reg_854 <= v8_6_q0;
        v128_7_reg_859 <= v8_7_q0;
        v129_1_reg_869 <= grp_fu_8149_p_dout0;
        v129_2_reg_874 <= grp_fu_8153_p_dout0;
        v129_3_reg_879 <= grp_fu_17826_p_dout0;
        v129_4_reg_884 <= grp_fu_17830_p_dout0;
        v129_5_reg_889 <= grp_fu_17834_p_dout0;
        v129_6_reg_894 <= grp_fu_17838_p_dout0;
        v129_7_reg_899 <= grp_fu_17842_p_dout0;
        v129_reg_864 <= grp_fu_8145_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln210_fu_482_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten26_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten26_load = indvar_flatten26_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v125_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v125_load = v125_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v127_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v127_load = v127_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_ce0_local = 1'b1;
    end else begin
        v11_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_ce1_local = 1'b1;
    end else begin
        v11_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_we0_local = 1'b1;
    end else begin
        v11_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_we1_local = 1'b1;
    end else begin
        v11_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_ce0_local = 1'b1;
    end else begin
        v11_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_ce1_local = 1'b1;
    end else begin
        v11_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_we0_local = 1'b1;
    end else begin
        v11_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_we1_local = 1'b1;
    end else begin
        v11_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_2_ce0_local = 1'b1;
    end else begin
        v20_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_3_ce0_local = 1'b1;
    end else begin
        v20_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_4_ce0_local = 1'b1;
    end else begin
        v20_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_5_ce0_local = 1'b1;
    end else begin
        v20_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_6_ce0_local = 1'b1;
    end else begin
        v20_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_7_ce0_local = 1'b1;
    end else begin
        v20_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_4_ce0_local = 1'b1;
    end else begin
        v8_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_5_ce0_local = 1'b1;
    end else begin
        v8_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_6_ce0_local = 1'b1;
    end else begin
        v8_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_7_ce0_local = 1'b1;
    end else begin
        v8_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
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
assign add_ln210_1_fu_516_p2 = (ap_sig_allocacmp_v125_load + 7'd1);
assign add_ln210_fu_488_p2 = (ap_sig_allocacmp_indvar_flatten26_load + 10'd1);
assign add_ln212_fu_588_p2 = (select_ln210_fu_508_p3 + 7'd8);
assign add_ln215_1_fu_662_p4 = {{{trunc_ln215_reg_771_pp0_iter9_reg}, {lshr_ln6_reg_748_pp0_iter9_reg}}, {1'd1}};
assign add_ln_fu_648_p3 = {{trunc_ln215_reg_771_pp0_iter8_reg}, {lshr_ln7_reg_766_pp0_iter8_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_17826_p_ce = 1'b1;
assign grp_fu_17826_p_din0 = v126_reg_792;
assign grp_fu_17826_p_din1 = v128_10_reg_839;
assign grp_fu_17830_p_ce = 1'b1;
assign grp_fu_17830_p_din0 = v126_reg_792_pp0_iter2_reg;
assign grp_fu_17830_p_din1 = v128_11_reg_844;
assign grp_fu_17834_p_ce = 1'b1;
assign grp_fu_17834_p_din0 = v126_reg_792_pp0_iter2_reg;
assign grp_fu_17834_p_din1 = v128_12_reg_849;
assign grp_fu_17838_p_ce = 1'b1;
assign grp_fu_17838_p_din0 = v126_reg_792_pp0_iter2_reg;
assign grp_fu_17838_p_din1 = v128_13_reg_854;
assign grp_fu_17842_p_ce = 1'b1;
assign grp_fu_17842_p_din0 = v126_reg_792_pp0_iter2_reg;
assign grp_fu_17842_p_din1 = v128_7_reg_859;
assign grp_fu_8145_p_ce = 1'b1;
assign grp_fu_8145_p_din0 = v126_reg_792;
assign grp_fu_8145_p_din1 = v128_reg_804;
assign grp_fu_8149_p_ce = 1'b1;
assign grp_fu_8149_p_din0 = v126_reg_792;
assign grp_fu_8149_p_din1 = v128_8_reg_829;
assign grp_fu_8153_p_ce = 1'b1;
assign grp_fu_8153_p_din0 = v126_reg_792;
assign grp_fu_8153_p_din1 = v128_9_reg_834;
assign icmp_ln210_fu_482_p2 = ((ap_sig_allocacmp_indvar_flatten26_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_534_p4 = {{select_ln210_1_fu_522_p3[5:3]}};
assign lshr_ln6_fu_556_p4 = {{select_ln210_fu_508_p3[5:3]}};
assign select_ln210_1_fu_522_p3 = ((tmp_fu_500_p3[0:0] == 1'b1) ? add_ln210_1_fu_516_p2 : ap_sig_allocacmp_v125_load);
assign select_ln210_fu_508_p3 = ((tmp_fu_500_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v127_load);
assign tmp_fu_500_p3 = ap_sig_allocacmp_v127_load[32'd6];
assign trunc_ln210_fu_530_p1 = select_ln210_1_fu_522_p3[2:0];
assign trunc_ln215_fu_584_p1 = select_ln210_1_fu_522_p3[5:0];
assign v11_1_address0 = zext_ln215_1_fu_670_p1;
assign v11_1_address1 = zext_ln215_fu_654_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_5_reg_889;
assign v11_1_d1 = v129_1_reg_869;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_1_fu_670_p1;
assign v11_2_address1 = zext_ln215_fu_654_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_6_reg_894;
assign v11_2_d1 = v129_2_reg_874;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_1_fu_670_p1;
assign v11_3_address1 = zext_ln215_fu_654_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_7_reg_899;
assign v11_3_d1 = v129_3_reg_879;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_1_fu_670_p1;
assign v11_address1 = zext_ln215_fu_654_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_4_reg_884;
assign v11_d1 = v129_reg_864;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v126_fu_609_p17 = 'bx;
assign v20_1_address0 = zext_ln210_fu_544_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_2_address0 = zext_ln210_fu_544_p1;
assign v20_2_ce0 = v20_2_ce0_local;
assign v20_3_address0 = zext_ln210_fu_544_p1;
assign v20_3_ce0 = v20_3_ce0_local;
assign v20_4_address0 = zext_ln210_fu_544_p1;
assign v20_4_ce0 = v20_4_ce0_local;
assign v20_5_address0 = zext_ln210_fu_544_p1;
assign v20_5_ce0 = v20_5_ce0_local;
assign v20_6_address0 = zext_ln210_fu_544_p1;
assign v20_6_ce0 = v20_6_ce0_local;
assign v20_7_address0 = zext_ln210_fu_544_p1;
assign v20_7_ce0 = v20_7_ce0_local;
assign v20_address0 = zext_ln210_fu_544_p1;
assign v20_ce0 = v20_ce0_local;
assign v8_1_address0 = zext_ln212_fu_566_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_2_address0 = zext_ln212_fu_566_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_3_address0 = zext_ln212_fu_566_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_4_address0 = zext_ln212_reg_753;
assign v8_4_ce0 = v8_4_ce0_local;
assign v8_5_address0 = zext_ln212_reg_753;
assign v8_5_ce0 = v8_5_ce0_local;
assign v8_6_address0 = zext_ln212_reg_753;
assign v8_6_ce0 = v8_6_ce0_local;
assign v8_7_address0 = zext_ln212_reg_753;
assign v8_7_ce0 = v8_7_ce0_local;
assign v8_address0 = zext_ln212_fu_566_p1;
assign v8_ce0 = v8_ce0_local;
assign zext_ln210_fu_544_p1 = lshr_ln5_fu_534_p4;
assign zext_ln212_fu_566_p1 = lshr_ln6_fu_556_p4;
assign zext_ln215_1_fu_670_p1 = add_ln215_1_fu_662_p4;
assign zext_ln215_fu_654_p1 = add_ln_fu_648_p3;
always @ (posedge ap_clk) begin
    zext_ln212_reg_753[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
