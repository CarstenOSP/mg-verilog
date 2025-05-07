module backprop_backprop_Pipeline_label_19_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mux_case_02448_reload,mux_case_12552_reload,mux_case_22656_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v7_4_address0,v7_4_ce0,v7_4_q0,v7_5_address0,v7_5_ce0,v7_5_q0,v7_6_address0,v7_6_ce0,v7_6_q0,v7_7_address0,v7_7_ce0,v7_7_q0,mux_case_02760_reload,mux_case_12864_reload,mux_case_22968_reload,v2_address0,v2_ce0,v2_q0,v8_address0,v8_ce0,v8_we0,v8_d0,v16_address0,v16_ce0,v16_q0,grp_fu_7553_p_din0,grp_fu_7553_p_din1,grp_fu_7553_p_opcode,grp_fu_7553_p_dout0,grp_fu_7553_p_ce,grp_fu_7557_p_din0,grp_fu_7557_p_din1,grp_fu_7557_p_dout0,grp_fu_7557_p_ce); 
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
input  [63:0] mux_case_02448_reload;
input  [63:0] mux_case_12552_reload;
input  [63:0] mux_case_22656_reload;
input  [8:0] mul_ln168;
output  [5:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [5:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [5:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [5:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [5:0] v7_4_address0;
output   v7_4_ce0;
input  [63:0] v7_4_q0;
output  [5:0] v7_5_address0;
output   v7_5_ce0;
input  [63:0] v7_5_q0;
output  [5:0] v7_6_address0;
output   v7_6_ce0;
input  [63:0] v7_6_q0;
output  [5:0] v7_7_address0;
output   v7_7_ce0;
input  [63:0] v7_7_q0;
input  [63:0] mux_case_02760_reload;
input  [63:0] mux_case_12864_reload;
input  [63:0] mux_case_22968_reload;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [5:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [5:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [63:0] grp_fu_7553_p_din0;
output  [63:0] grp_fu_7553_p_din1;
output  [1:0] grp_fu_7553_p_opcode;
input  [63:0] grp_fu_7553_p_dout0;
output   grp_fu_7553_p_ce;
output  [63:0] grp_fu_7557_p_din0;
output  [63:0] grp_fu_7557_p_din1;
input  [63:0] grp_fu_7557_p_dout0;
output   grp_fu_7557_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln190_reg_717;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln190_fu_353_p2;
reg   [0:0] icmp_ln190_reg_717_pp0_iter1_reg;
reg   [0:0] icmp_ln190_reg_717_pp0_iter2_reg;
reg   [0:0] icmp_ln190_reg_717_pp0_iter3_reg;
reg   [1:0] v111_load_reg_721;
wire   [0:0] icmp_ln192_fu_368_p2;
reg   [0:0] icmp_ln192_reg_726;
reg   [0:0] icmp_ln192_reg_726_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_726_pp0_iter2_reg;
reg   [0:0] icmp_ln192_reg_726_pp0_iter3_reg;
wire   [1:0] select_ln190_fu_379_p3;
reg   [1:0] select_ln190_reg_733;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln190_reg_733_pp0_iter1_reg;
wire   [2:0] trunc_ln194_fu_394_p1;
reg   [2:0] trunc_ln194_reg_740;
wire   [0:0] icmp_ln192_1_fu_426_p2;
reg   [0:0] icmp_ln192_1_reg_785;
reg   [0:0] icmp_ln192_1_reg_785_pp0_iter1_reg;
reg   [0:0] icmp_ln192_1_reg_785_pp0_iter2_reg;
reg   [0:0] icmp_ln192_1_reg_785_pp0_iter3_reg;
reg   [0:0] icmp_ln192_1_reg_785_pp0_iter4_reg;
wire   [63:0] v113_fu_469_p19;
reg   [63:0] v113_reg_789;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v112_fu_508_p9;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [6:0] select_ln190_2_fu_534_p3;
reg   [6:0] select_ln190_2_reg_799;
reg   [6:0] select_ln190_2_reg_799_pp0_iter2_reg;
reg   [6:0] select_ln190_2_reg_799_pp0_iter3_reg;
wire   [5:0] trunc_ln192_fu_541_p1;
reg   [5:0] trunc_ln192_reg_805;
wire   [0:0] xor_ln196_fu_592_p2;
reg   [0:0] xor_ln196_reg_815;
wire   [62:0] trunc_ln196_fu_598_p1;
reg   [62:0] trunc_ln196_reg_820;
wire   [63:0] v116_fu_602_p9;
reg   [63:0] v116_reg_825;
reg   [63:0] v2_load_reg_830;
wire   [63:0] v115_fu_624_p1;
reg   [63:0] v117_reg_840;
wire   [63:0] v118_fu_629_p1;
reg   [63:0] v119_reg_850;
wire   [63:0] select_ln190_1_fu_636_p3;
reg   [5:0] v8_addr_reg_860;
reg   [5:0] v8_addr_reg_860_pp0_iter4_reg;
reg   [63:0] v123_reg_870;
reg   [63:0] v122_reg_875;
reg   [63:0] v124_reg_880;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln194_fu_408_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln199_fu_575_p1;
wire   [63:0] zext_ln190_fu_644_p1;
reg   [63:0] v120_fu_122;
wire    ap_loop_init;
reg   [1:0] v111_fu_126;
wire   [1:0] add_ln192_fu_420_p2;
reg   [1:0] ap_sig_allocacmp_v111_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v110_fu_130;
reg   [7:0] indvar_flatten6_fu_134;
wire   [7:0] add_ln190_fu_359_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v7_2_ce0_local;
reg    v7_3_ce0_local;
reg    v7_4_ce0_local;
reg    v7_5_ce0_local;
reg    v7_6_ce0_local;
reg    v7_7_ce0_local;
reg    v2_ce0_local;
reg    v16_ce0_local;
reg    v8_we0_local;
reg    v8_ce0_local;
reg   [63:0] grp_fu_322_p0;
reg   [63:0] grp_fu_322_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_326_p0;
reg   [63:0] grp_fu_326_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] zext_ln192_2_fu_385_p1;
wire   [8:0] add_ln194_fu_389_p2;
wire   [5:0] lshr_ln3_fu_398_p4;
wire   [63:0] v113_fu_469_p2;
wire   [63:0] v113_fu_469_p4;
wire   [63:0] v113_fu_469_p6;
wire   [63:0] v113_fu_469_p8;
wire   [63:0] v113_fu_469_p10;
wire   [63:0] v113_fu_469_p12;
wire   [63:0] v113_fu_469_p14;
wire   [63:0] v113_fu_469_p16;
wire   [63:0] v113_fu_469_p17;
wire   [63:0] v112_fu_508_p7;
wire   [6:0] add_ln190_1_fu_528_p2;
wire   [7:0] p_shl_fu_553_p3;
wire   [7:0] zext_ln192_fu_550_p1;
wire   [7:0] zext_ln192_1_fu_566_p1;
wire   [7:0] sub_ln192_fu_560_p2;
wire   [7:0] add_ln199_fu_569_p2;
wire   [63:0] bitcast_ln196_fu_580_p1;
wire   [0:0] bit_sel7_fu_584_p3;
wire   [63:0] v116_fu_602_p7;
wire   [63:0] xor_ln7_fu_618_p3;
reg   [1:0] grp_fu_322_opcode;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
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
wire   [2:0] v113_fu_469_p1;
wire   [2:0] v113_fu_469_p3;
wire   [2:0] v113_fu_469_p5;
wire   [2:0] v113_fu_469_p7;
wire  signed [2:0] v113_fu_469_p9;
wire  signed [2:0] v113_fu_469_p11;
wire  signed [2:0] v113_fu_469_p13;
wire  signed [2:0] v113_fu_469_p15;
wire   [1:0] v112_fu_508_p1;
wire   [1:0] v112_fu_508_p3;
wire  signed [1:0] v112_fu_508_p5;
wire   [1:0] v116_fu_602_p1;
wire   [1:0] v116_fu_602_p3;
wire  signed [1:0] v116_fu_602_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_122 = 64'd0;
#0 v111_fu_126 = 2'd0;
#0 v110_fu_130 = 7'd0;
#0 indvar_flatten6_fu_134 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U364(.din0(v113_fu_469_p2),.din1(v113_fu_469_p4),.din2(v113_fu_469_p6),.din3(v113_fu_469_p8),.din4(v113_fu_469_p10),.din5(v113_fu_469_p12),.din6(v113_fu_469_p14),.din7(v113_fu_469_p16),.def(v113_fu_469_p17),.sel(trunc_ln194_reg_740),.dout(v113_fu_469_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U365(.din0(mux_case_02448_reload),.din1(mux_case_12552_reload),.din2(mux_case_22656_reload),.def(v112_fu_508_p7),.sel(select_ln190_reg_733),.dout(v112_fu_508_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U366(.din0(mux_case_02760_reload),.din1(mux_case_12864_reload),.din2(mux_case_22968_reload),.def(v116_fu_602_p7),.sel(select_ln190_reg_733_pp0_iter1_reg),.dout(v116_fu_602_p9));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln190_fu_353_p2 == 1'd0))) begin
            indvar_flatten6_fu_134 <= add_ln190_fu_359_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_134 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_130 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v110_fu_130 <= select_ln190_2_fu_534_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_126 <= 2'd0;
    end else if (((icmp_ln190_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_126 <= add_ln192_fu_420_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v120_fu_122 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            v120_fu_122 <= grp_fu_7553_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_717 <= icmp_ln190_fu_353_p2;
        icmp_ln190_reg_717_pp0_iter1_reg <= icmp_ln190_reg_717;
        icmp_ln190_reg_717_pp0_iter2_reg <= icmp_ln190_reg_717_pp0_iter1_reg;
        icmp_ln190_reg_717_pp0_iter3_reg <= icmp_ln190_reg_717_pp0_iter2_reg;
        icmp_ln192_reg_726 <= icmp_ln192_fu_368_p2;
        icmp_ln192_reg_726_pp0_iter1_reg <= icmp_ln192_reg_726;
        icmp_ln192_reg_726_pp0_iter2_reg <= icmp_ln192_reg_726_pp0_iter1_reg;
        icmp_ln192_reg_726_pp0_iter3_reg <= icmp_ln192_reg_726_pp0_iter2_reg;
        select_ln190_2_reg_799 <= select_ln190_2_fu_534_p3;
        select_ln190_2_reg_799_pp0_iter2_reg <= select_ln190_2_reg_799;
        select_ln190_2_reg_799_pp0_iter3_reg <= select_ln190_2_reg_799_pp0_iter2_reg;
        trunc_ln192_reg_805 <= trunc_ln192_fu_541_p1;
        v111_load_reg_721 <= ap_sig_allocacmp_v111_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln192_1_reg_785 <= icmp_ln192_1_fu_426_p2;
        icmp_ln192_1_reg_785_pp0_iter1_reg <= icmp_ln192_1_reg_785;
        icmp_ln192_1_reg_785_pp0_iter2_reg <= icmp_ln192_1_reg_785_pp0_iter1_reg;
        icmp_ln192_1_reg_785_pp0_iter3_reg <= icmp_ln192_1_reg_785_pp0_iter2_reg;
        icmp_ln192_1_reg_785_pp0_iter4_reg <= icmp_ln192_1_reg_785_pp0_iter3_reg;
        select_ln190_reg_733 <= select_ln190_fu_379_p3;
        select_ln190_reg_733_pp0_iter1_reg <= select_ln190_reg_733;
        trunc_ln194_reg_740 <= trunc_ln194_fu_394_p1;
        v8_addr_reg_860 <= zext_ln190_fu_644_p1;
        v8_addr_reg_860_pp0_iter4_reg <= v8_addr_reg_860;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln196_reg_820 <= trunc_ln196_fu_598_p1;
        v113_reg_789 <= v113_fu_469_p19;
        v116_reg_825 <= v116_fu_602_p9;
        v123_reg_870 <= v16_q0;
        v2_load_reg_830 <= v2_q0;
        xor_ln196_reg_815 <= xor_ln196_fu_592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v117_reg_840 <= grp_fu_7557_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v119_reg_850 <= grp_fu_7557_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_875 <= grp_fu_7553_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v124_reg_880 <= grp_fu_7557_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_717 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln190_reg_717_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten6_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_load = v111_fu_126;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_322_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_opcode = 2'd0;
    end else begin
        grp_fu_322_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p0 = select_ln190_1_fu_636_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_322_p0 = v112_fu_508_p9;
    end else begin
        grp_fu_322_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_322_p1 = v119_reg_850;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_322_p1 = v113_reg_789;
    end else begin
        grp_fu_322_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_326_p0 = v122_reg_875;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_326_p0 = v117_reg_840;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_326_p0 = v115_fu_624_p1;
    end else begin
        grp_fu_326_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_326_p1 = v123_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_326_p1 = v118_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_326_p1 = v116_reg_825;
    end else begin
        grp_fu_326_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v16_ce0_local = 1'b1;
    end else begin
        v16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_4_ce0_local = 1'b1;
    end else begin
        v7_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_5_ce0_local = 1'b1;
    end else begin
        v7_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_6_ce0_local = 1'b1;
    end else begin
        v7_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_7_ce0_local = 1'b1;
    end else begin
        v7_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln192_1_reg_785_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_we0_local = 1'b1;
    end else begin
        v8_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln190_1_fu_528_p2 = (v110_fu_130 + 7'd1);
assign add_ln190_fu_359_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 8'd1);
assign add_ln192_fu_420_p2 = (select_ln190_fu_379_p3 + 2'd1);
assign add_ln194_fu_389_p2 = (zext_ln192_2_fu_385_p1 + mul_ln168);
assign add_ln199_fu_569_p2 = (zext_ln192_1_fu_566_p1 + sub_ln192_fu_560_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel7_fu_584_p3 = bitcast_ln196_fu_580_p1[64'd63];
assign bitcast_ln196_fu_580_p1 = grp_fu_7553_p_dout0;
assign grp_fu_7553_p_ce = 1'b1;
assign grp_fu_7553_p_din0 = grp_fu_322_p0;
assign grp_fu_7553_p_din1 = grp_fu_322_p1;
assign grp_fu_7553_p_opcode = grp_fu_322_opcode;
assign grp_fu_7557_p_ce = 1'b1;
assign grp_fu_7557_p_din0 = grp_fu_326_p0;
assign grp_fu_7557_p_din1 = grp_fu_326_p1;
assign icmp_ln190_fu_353_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln192_1_fu_426_p2 = ((add_ln192_fu_420_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln192_fu_368_p2 = ((ap_sig_allocacmp_v111_load == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_398_p4 = {{add_ln194_fu_389_p2[8:3]}};
assign p_shl_fu_553_p3 = {{trunc_ln192_reg_805}, {2'd0}};
assign select_ln190_1_fu_636_p3 = ((icmp_ln192_reg_726_pp0_iter3_reg[0:0] == 1'b1) ? 64'd0 : v120_fu_122);
assign select_ln190_2_fu_534_p3 = ((icmp_ln192_reg_726[0:0] == 1'b1) ? add_ln190_1_fu_528_p2 : v110_fu_130);
assign select_ln190_fu_379_p3 = ((icmp_ln192_reg_726[0:0] == 1'b1) ? 2'd0 : v111_load_reg_721);
assign sub_ln192_fu_560_p2 = (p_shl_fu_553_p3 - zext_ln192_fu_550_p1);
assign trunc_ln192_fu_541_p1 = select_ln190_2_fu_534_p3[5:0];
assign trunc_ln194_fu_394_p1 = add_ln194_fu_389_p2[2:0];
assign trunc_ln196_fu_598_p1 = bitcast_ln196_fu_580_p1[62:0];
assign v112_fu_508_p7 = 'bx;
assign v113_fu_469_p10 = v7_4_q0;
assign v113_fu_469_p12 = v7_5_q0;
assign v113_fu_469_p14 = v7_6_q0;
assign v113_fu_469_p16 = v7_7_q0;
assign v113_fu_469_p17 = 'bx;
assign v113_fu_469_p2 = v7_0_q0;
assign v113_fu_469_p4 = v7_1_q0;
assign v113_fu_469_p6 = v7_2_q0;
assign v113_fu_469_p8 = v7_3_q0;
assign v115_fu_624_p1 = xor_ln7_fu_618_p3;
assign v116_fu_602_p7 = 'bx;
assign v118_fu_629_p1 = v2_load_reg_830;
assign v16_address0 = zext_ln190_fu_644_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_address0 = zext_ln199_fu_575_p1;
assign v2_ce0 = v2_ce0_local;
assign v7_0_address0 = zext_ln194_fu_408_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln194_fu_408_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = zext_ln194_fu_408_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = zext_ln194_fu_408_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_4_address0 = zext_ln194_fu_408_p1;
assign v7_4_ce0 = v7_4_ce0_local;
assign v7_5_address0 = zext_ln194_fu_408_p1;
assign v7_5_ce0 = v7_5_ce0_local;
assign v7_6_address0 = zext_ln194_fu_408_p1;
assign v7_6_ce0 = v7_6_ce0_local;
assign v7_7_address0 = zext_ln194_fu_408_p1;
assign v7_7_ce0 = v7_7_ce0_local;
assign v8_address0 = v8_addr_reg_860_pp0_iter4_reg;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_880;
assign v8_we0 = v8_we0_local;
assign xor_ln196_fu_592_p2 = (bit_sel7_fu_584_p3 ^ 1'd1);
assign xor_ln7_fu_618_p3 = {{xor_ln196_reg_815}, {trunc_ln196_reg_820}};
assign zext_ln190_fu_644_p1 = select_ln190_2_reg_799_pp0_iter3_reg;
assign zext_ln192_1_fu_566_p1 = select_ln190_reg_733;
assign zext_ln192_2_fu_385_p1 = select_ln190_fu_379_p3;
assign zext_ln192_fu_550_p1 = select_ln190_2_reg_799;
assign zext_ln194_fu_408_p1 = lshr_ln3_fu_398_p4;
assign zext_ln199_fu_575_p1 = add_ln199_fu_569_p2;
endmodule 