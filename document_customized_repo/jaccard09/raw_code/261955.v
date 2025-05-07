module backprop_backprop_Pipeline_label_17_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v19_address0,v19_ce0,v19_q0,mux_case_02240_reload,mux_case_12344_reload,mux_case_22448_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v116_reload,mux_case_12656_reload,v116_2_reload,v10_address0,v10_ce0,v10_we0,v10_d0,grp_fu_3141_p_din0,grp_fu_3141_p_din1,grp_fu_3141_p_opcode,grp_fu_3141_p_dout0,grp_fu_3141_p_ce,grp_fu_3149_p_din0,grp_fu_3149_p_din1,grp_fu_3149_p_dout0,grp_fu_3149_p_ce,grp_fu_3153_p_din0,grp_fu_3153_p_din1,grp_fu_3153_p_dout0,grp_fu_3153_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
input  [63:0] mux_case_02240_reload;
input  [63:0] mux_case_12344_reload;
input  [63:0] mux_case_22448_reload;
input  [8:0] mul_ln168;
output  [6:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [6:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [6:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [6:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
input  [63:0] v116_reload;
input  [63:0] mux_case_12656_reload;
input  [63:0] v116_2_reload;
output  [7:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
output  [63:0] grp_fu_3141_p_din0;
output  [63:0] grp_fu_3141_p_din1;
output  [0:0] grp_fu_3141_p_opcode;
input  [63:0] grp_fu_3141_p_dout0;
output   grp_fu_3141_p_ce;
output  [63:0] grp_fu_3149_p_din0;
output  [63:0] grp_fu_3149_p_din1;
input  [63:0] grp_fu_3149_p_dout0;
output   grp_fu_3149_p_ce;
output  [63:0] grp_fu_3153_p_din0;
output  [63:0] grp_fu_3153_p_din1;
input  [63:0] grp_fu_3153_p_dout0;
output   grp_fu_3153_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln177_fu_256_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln179_fu_276_p2;
reg   [0:0] icmp_ln179_reg_557;
reg   [0:0] icmp_ln179_reg_557_pp0_iter2_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter3_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter4_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter5_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter6_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter7_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter8_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter9_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter10_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter11_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter12_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter13_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter14_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter15_reg;
reg   [0:0] icmp_ln179_reg_557_pp0_iter16_reg;
wire   [1:0] select_ln177_fu_282_p3;
reg   [1:0] select_ln177_reg_562;
reg   [1:0] select_ln177_reg_562_pp0_iter2_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter3_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter4_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter5_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter6_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter7_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter8_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter9_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter10_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter11_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter12_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter13_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter14_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter15_reg;
reg   [1:0] select_ln177_reg_562_pp0_iter16_reg;
wire   [1:0] trunc_ln181_fu_309_p1;
reg   [1:0] trunc_ln181_reg_570;
wire   [63:0] v104_fu_347_p11;
reg   [63:0] v104_reg_595;
wire   [63:0] v103_fu_370_p9;
wire   [0:0] xor_ln183_fu_399_p2;
reg   [0:0] xor_ln183_reg_605;
wire   [62:0] trunc_ln183_fu_405_p1;
reg   [62:0] trunc_ln183_reg_610;
wire   [63:0] v107_fu_409_p9;
reg   [63:0] v107_reg_615;
wire   [63:0] v106_fu_431_p1;
wire   [7:0] add_ln187_fu_482_p2;
reg   [7:0] add_ln187_reg_630;
reg   [7:0] add_ln187_reg_630_pp0_iter18_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter19_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter20_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter21_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter22_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter23_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter24_reg;
reg   [7:0] add_ln187_reg_630_pp0_iter25_reg;
reg   [63:0] v101_reg_635;
reg   [63:0] v108_reg_640;
reg   [63:0] v109_reg_645;
wire   [63:0] zext_ln181_fu_323_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln177_fu_452_p1;
wire   [63:0] zext_ln187_fu_493_p1;
reg   [1:0] v102_fu_94;
wire   [1:0] add_ln179_fu_290_p2;
wire    ap_loop_init;
reg   [6:0] v100_fu_98;
wire   [6:0] select_ln177_1_fu_445_p3;
reg   [7:0] indvar_flatten_fu_102;
wire   [7:0] add_ln177_fu_262_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v7_2_ce0_local;
reg    v7_3_ce0_local;
reg    v19_ce0_local;
reg    v10_we0_local;
reg    v10_ce0_local;
wire   [8:0] zext_ln179_2_fu_301_p1;
wire   [8:0] add_ln181_fu_304_p2;
wire   [6:0] lshr_ln2_fu_313_p4;
wire   [63:0] v104_fu_347_p2;
wire   [63:0] v104_fu_347_p4;
wire   [63:0] v104_fu_347_p6;
wire   [63:0] v104_fu_347_p8;
wire   [63:0] v104_fu_347_p9;
wire   [63:0] v103_fu_370_p7;
wire   [63:0] bitcast_ln183_fu_387_p1;
wire   [0:0] bit_sel9_fu_391_p3;
wire   [63:0] v107_fu_409_p7;
wire   [63:0] xor_ln6_fu_425_p3;
wire   [6:0] add_ln177_1_fu_439_p2;
wire   [5:0] trunc_ln179_fu_461_p1;
wire   [7:0] p_shl_fu_465_p3;
wire   [7:0] zext_ln179_fu_457_p1;
wire   [7:0] zext_ln179_1_fu_479_p1;
wire   [7:0] sub_ln179_fu_473_p2;
wire    ap_block_pp0_stage0_00001;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v104_fu_347_p1;
wire   [1:0] v104_fu_347_p3;
wire  signed [1:0] v104_fu_347_p5;
wire  signed [1:0] v104_fu_347_p7;
wire   [1:0] v103_fu_370_p1;
wire   [1:0] v103_fu_370_p3;
wire  signed [1:0] v103_fu_370_p5;
wire   [1:0] v107_fu_409_p1;
wire   [1:0] v107_fu_409_p3;
wire  signed [1:0] v107_fu_409_p5;
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
#0 v102_fu_94 = 2'd0;
#0 v100_fu_98 = 7'd0;
#0 indvar_flatten_fu_102 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U261(.din0(v104_fu_347_p2),.din1(v104_fu_347_p4),.din2(v104_fu_347_p6),.din3(v104_fu_347_p8),.def(v104_fu_347_p9),.sel(trunc_ln181_reg_570),.dout(v104_fu_347_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U262(.din0(mux_case_02240_reload),.din1(mux_case_12344_reload),.din2(mux_case_22448_reload),.def(v103_fu_370_p7),.sel(select_ln177_reg_562_pp0_iter3_reg),.dout(v103_fu_370_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U263(.din0(v116_reload),.din1(mux_case_12656_reload),.din2(v116_2_reload),.def(v107_fu_409_p7),.sel(select_ln177_reg_562_pp0_iter10_reg),.dout(v107_fu_409_p9));
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
        end else if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln177_fu_256_p2 == 1'd0))) begin
            indvar_flatten_fu_102 <= add_ln177_fu_262_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v100_fu_98 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter17 == 1'b1)) begin
            v100_fu_98 <= select_ln177_1_fu_445_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            v102_fu_94 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v102_fu_94 <= add_ln179_fu_290_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln187_reg_630 <= add_ln187_fu_482_p2;
        add_ln187_reg_630_pp0_iter18_reg <= add_ln187_reg_630;
        add_ln187_reg_630_pp0_iter19_reg <= add_ln187_reg_630_pp0_iter18_reg;
        add_ln187_reg_630_pp0_iter20_reg <= add_ln187_reg_630_pp0_iter19_reg;
        add_ln187_reg_630_pp0_iter21_reg <= add_ln187_reg_630_pp0_iter20_reg;
        add_ln187_reg_630_pp0_iter22_reg <= add_ln187_reg_630_pp0_iter21_reg;
        add_ln187_reg_630_pp0_iter23_reg <= add_ln187_reg_630_pp0_iter22_reg;
        add_ln187_reg_630_pp0_iter24_reg <= add_ln187_reg_630_pp0_iter23_reg;
        add_ln187_reg_630_pp0_iter25_reg <= add_ln187_reg_630_pp0_iter24_reg;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln179_reg_557_pp0_iter10_reg <= icmp_ln179_reg_557_pp0_iter9_reg;
        icmp_ln179_reg_557_pp0_iter11_reg <= icmp_ln179_reg_557_pp0_iter10_reg;
        icmp_ln179_reg_557_pp0_iter12_reg <= icmp_ln179_reg_557_pp0_iter11_reg;
        icmp_ln179_reg_557_pp0_iter13_reg <= icmp_ln179_reg_557_pp0_iter12_reg;
        icmp_ln179_reg_557_pp0_iter14_reg <= icmp_ln179_reg_557_pp0_iter13_reg;
        icmp_ln179_reg_557_pp0_iter15_reg <= icmp_ln179_reg_557_pp0_iter14_reg;
        icmp_ln179_reg_557_pp0_iter16_reg <= icmp_ln179_reg_557_pp0_iter15_reg;
        icmp_ln179_reg_557_pp0_iter2_reg <= icmp_ln179_reg_557;
        icmp_ln179_reg_557_pp0_iter3_reg <= icmp_ln179_reg_557_pp0_iter2_reg;
        icmp_ln179_reg_557_pp0_iter4_reg <= icmp_ln179_reg_557_pp0_iter3_reg;
        icmp_ln179_reg_557_pp0_iter5_reg <= icmp_ln179_reg_557_pp0_iter4_reg;
        icmp_ln179_reg_557_pp0_iter6_reg <= icmp_ln179_reg_557_pp0_iter5_reg;
        icmp_ln179_reg_557_pp0_iter7_reg <= icmp_ln179_reg_557_pp0_iter6_reg;
        icmp_ln179_reg_557_pp0_iter8_reg <= icmp_ln179_reg_557_pp0_iter7_reg;
        icmp_ln179_reg_557_pp0_iter9_reg <= icmp_ln179_reg_557_pp0_iter8_reg;
        select_ln177_reg_562_pp0_iter10_reg <= select_ln177_reg_562_pp0_iter9_reg;
        select_ln177_reg_562_pp0_iter11_reg <= select_ln177_reg_562_pp0_iter10_reg;
        select_ln177_reg_562_pp0_iter12_reg <= select_ln177_reg_562_pp0_iter11_reg;
        select_ln177_reg_562_pp0_iter13_reg <= select_ln177_reg_562_pp0_iter12_reg;
        select_ln177_reg_562_pp0_iter14_reg <= select_ln177_reg_562_pp0_iter13_reg;
        select_ln177_reg_562_pp0_iter15_reg <= select_ln177_reg_562_pp0_iter14_reg;
        select_ln177_reg_562_pp0_iter16_reg <= select_ln177_reg_562_pp0_iter15_reg;
        select_ln177_reg_562_pp0_iter2_reg <= select_ln177_reg_562;
        select_ln177_reg_562_pp0_iter3_reg <= select_ln177_reg_562_pp0_iter2_reg;
        select_ln177_reg_562_pp0_iter4_reg <= select_ln177_reg_562_pp0_iter3_reg;
        select_ln177_reg_562_pp0_iter5_reg <= select_ln177_reg_562_pp0_iter4_reg;
        select_ln177_reg_562_pp0_iter6_reg <= select_ln177_reg_562_pp0_iter5_reg;
        select_ln177_reg_562_pp0_iter7_reg <= select_ln177_reg_562_pp0_iter6_reg;
        select_ln177_reg_562_pp0_iter8_reg <= select_ln177_reg_562_pp0_iter7_reg;
        select_ln177_reg_562_pp0_iter9_reg <= select_ln177_reg_562_pp0_iter8_reg;
        trunc_ln181_reg_570 <= trunc_ln181_fu_309_p1;
        trunc_ln183_reg_610 <= trunc_ln183_fu_405_p1;
        v101_reg_635 <= v19_q0;
        v104_reg_595 <= v104_fu_347_p11;
        v107_reg_615 <= v107_fu_409_p9;
        v108_reg_640 <= grp_fu_3149_p_dout0;
        v109_reg_645 <= grp_fu_3153_p_dout0;
        xor_ln183_reg_605 <= xor_ln183_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln179_reg_557 <= icmp_ln179_fu_276_p2;
        select_ln177_reg_562 <= select_ln177_fu_282_p3;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln177_fu_256_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_102;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
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
assign add_ln177_1_fu_439_p2 = (v100_fu_98 + 7'd1);
assign add_ln177_fu_262_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln179_fu_290_p2 = (select_ln177_fu_282_p3 + 2'd1);
assign add_ln181_fu_304_p2 = (zext_ln179_2_fu_301_p1 + mul_ln168);
assign add_ln187_fu_482_p2 = (zext_ln179_1_fu_479_p1 + sub_ln179_fu_473_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel9_fu_391_p3 = bitcast_ln183_fu_387_p1[64'd63];
assign bitcast_ln183_fu_387_p1 = grp_fu_3141_p_dout0;
assign grp_fu_3141_p_ce = 1'b1;
assign grp_fu_3141_p_din0 = v103_fu_370_p9;
assign grp_fu_3141_p_din1 = v104_reg_595;
assign grp_fu_3141_p_opcode = 2'd1;
assign grp_fu_3149_p_ce = 1'b1;
assign grp_fu_3149_p_din0 = v106_fu_431_p1;
assign grp_fu_3149_p_din1 = v107_reg_615;
assign grp_fu_3153_p_ce = 1'b1;
assign grp_fu_3153_p_din0 = v101_reg_635;
assign grp_fu_3153_p_din1 = v108_reg_640;
assign icmp_ln177_fu_256_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln179_fu_276_p2 = ((v102_fu_94 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_313_p4 = {{add_ln181_fu_304_p2[8:2]}};
assign p_shl_fu_465_p3 = {{trunc_ln179_fu_461_p1}, {2'd0}};
assign select_ln177_1_fu_445_p3 = ((icmp_ln179_reg_557_pp0_iter16_reg[0:0] == 1'b1) ? add_ln177_1_fu_439_p2 : v100_fu_98);
assign select_ln177_fu_282_p3 = ((icmp_ln179_fu_276_p2[0:0] == 1'b1) ? 2'd0 : v102_fu_94);
assign sub_ln179_fu_473_p2 = (p_shl_fu_465_p3 - zext_ln179_fu_457_p1);
assign trunc_ln179_fu_461_p1 = select_ln177_1_fu_445_p3[5:0];
assign trunc_ln181_fu_309_p1 = add_ln181_fu_304_p2[1:0];
assign trunc_ln183_fu_405_p1 = bitcast_ln183_fu_387_p1[62:0];
assign v103_fu_370_p7 = 'bx;
assign v104_fu_347_p2 = v7_0_q0;
assign v104_fu_347_p4 = v7_1_q0;
assign v104_fu_347_p6 = v7_2_q0;
assign v104_fu_347_p8 = v7_3_q0;
assign v104_fu_347_p9 = 'bx;
assign v106_fu_431_p1 = xor_ln6_fu_425_p3;
assign v107_fu_409_p7 = 'bx;
assign v10_address0 = zext_ln187_fu_493_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_d0 = v109_reg_645;
assign v10_we0 = v10_we0_local;
assign v19_address0 = zext_ln177_fu_452_p1;
assign v19_ce0 = v19_ce0_local;
assign v7_0_address0 = zext_ln181_fu_323_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln181_fu_323_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = zext_ln181_fu_323_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = zext_ln181_fu_323_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign xor_ln183_fu_399_p2 = (bit_sel9_fu_391_p3 ^ 1'd1);
assign xor_ln6_fu_425_p3 = {{xor_ln183_reg_605}, {trunc_ln183_reg_610}};
assign zext_ln177_fu_452_p1 = select_ln177_1_fu_445_p3;
assign zext_ln179_1_fu_479_p1 = select_ln177_reg_562_pp0_iter16_reg;
assign zext_ln179_2_fu_301_p1 = select_ln177_reg_562;
assign zext_ln179_fu_457_p1 = select_ln177_1_fu_445_p3;
assign zext_ln181_fu_323_p1 = lshr_ln2_fu_313_p4;
assign zext_ln187_fu_493_p1 = add_ln187_reg_630_pp0_iter25_reg;
endmodule 