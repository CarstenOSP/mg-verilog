module backprop_backprop_Pipeline_label_19_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mux_case_059124_reload,mux_case_160128_reload,mux_case_261132_reload,mul_ln168_1,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v75,v75_3,v75_4,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v8_address0,v8_ce0,v8_we0,v8_d0,v8_1_address0,v8_1_ce0,v8_1_we0,v8_1_d0,v16_address0,v16_ce0,v16_q0,v16_1_address0,v16_1_ce0,v16_1_q0,grp_fu_2684_p_din0,grp_fu_2684_p_din1,grp_fu_2684_p_opcode,grp_fu_2684_p_dout0,grp_fu_2684_p_ce,grp_fu_5716_p_din0,grp_fu_5716_p_din1,grp_fu_5716_p_dout0,grp_fu_5716_p_ce); 
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
input  [63:0] mux_case_059124_reload;
input  [63:0] mux_case_160128_reload;
input  [63:0] mux_case_261132_reload;
input  [8:0] mul_ln168_1;
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
input  [63:0] v75;
input  [63:0] v75_3;
input  [63:0] v75_4;
output  [5:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [5:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [5:0] v2_2_address0;
output   v2_2_ce0;
input  [63:0] v2_2_q0;
output  [5:0] v2_3_address0;
output   v2_3_ce0;
input  [63:0] v2_3_q0;
output  [4:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [4:0] v8_1_address0;
output   v8_1_ce0;
output   v8_1_we0;
output  [63:0] v8_1_d0;
output  [4:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [4:0] v16_1_address0;
output   v16_1_ce0;
input  [63:0] v16_1_q0;
output  [63:0] grp_fu_2684_p_din0;
output  [63:0] grp_fu_2684_p_din1;
output  [1:0] grp_fu_2684_p_opcode;
input  [63:0] grp_fu_2684_p_dout0;
output   grp_fu_2684_p_ce;
output  [63:0] grp_fu_5716_p_din0;
output  [63:0] grp_fu_5716_p_din1;
input  [63:0] grp_fu_5716_p_dout0;
output   grp_fu_5716_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln190_reg_780;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln190_fu_365_p2;
reg   [0:0] icmp_ln190_reg_780_pp0_iter1_reg;
reg   [0:0] icmp_ln190_reg_780_pp0_iter2_reg;
reg   [0:0] icmp_ln190_reg_780_pp0_iter3_reg;
reg   [0:0] icmp_ln190_reg_780_pp0_iter4_reg;
reg   [0:0] icmp_ln190_reg_780_pp0_iter5_reg;
reg   [1:0] v111_load_reg_784;
wire   [0:0] icmp_ln192_fu_380_p2;
reg   [0:0] icmp_ln192_reg_789;
reg   [0:0] icmp_ln192_reg_789_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_789_pp0_iter2_reg;
reg   [0:0] icmp_ln192_reg_789_pp0_iter3_reg;
reg   [0:0] icmp_ln192_reg_789_pp0_iter4_reg;
wire   [1:0] select_ln190_fu_391_p3;
reg   [1:0] select_ln190_reg_796;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln190_reg_796_pp0_iter1_reg;
reg   [1:0] select_ln190_reg_796_pp0_iter2_reg;
wire   [8:0] add_ln194_fu_401_p2;
reg   [8:0] add_ln194_reg_803;
wire   [0:0] icmp_ln192_1_fu_418_p2;
reg   [0:0] icmp_ln192_1_reg_809;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter1_reg;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter2_reg;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter3_reg;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter4_reg;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter5_reg;
reg   [0:0] icmp_ln192_1_reg_809_pp0_iter6_reg;
reg   [1:0] trunc_ln9_reg_813;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [1:0] trunc_ln9_reg_813_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] v113_fu_472_p11;
reg   [63:0] v113_reg_838;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] v112_fu_495_p9;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] xor_ln196_fu_524_p2;
reg   [0:0] xor_ln196_reg_848;
wire   [62:0] trunc_ln196_fu_530_p1;
reg   [62:0] trunc_ln196_reg_853;
wire   [63:0] v116_fu_534_p9;
reg   [63:0] v116_reg_858;
wire   [63:0] v115_fu_556_p1;
wire   [0:0] trunc_ln190_fu_581_p1;
reg   [0:0] trunc_ln190_reg_868;
reg   [0:0] trunc_ln190_reg_868_pp0_iter4_reg;
reg   [0:0] trunc_ln190_reg_868_pp0_iter5_reg;
reg   [0:0] trunc_ln190_reg_868_pp0_iter6_reg;
wire   [1:0] trunc_ln199_fu_612_p1;
reg   [1:0] trunc_ln199_reg_873;
reg   [5:0] lshr_ln7_reg_878;
reg   [4:0] lshr_ln8_reg_883;
reg   [4:0] lshr_ln8_reg_883_pp0_iter4_reg;
reg   [4:0] lshr_ln8_reg_883_pp0_iter5_reg;
wire   [63:0] v118_fu_664_p11;
reg   [63:0] v118_reg_908;
reg   [63:0] v117_reg_913;
reg   [63:0] v119_reg_918;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] select_ln190_1_fu_690_p3;
reg   [4:0] v8_addr_reg_928;
reg   [4:0] v8_addr_reg_928_pp0_iter6_reg;
reg   [4:0] v8_1_addr_reg_933;
reg   [4:0] v8_1_addr_reg_933_pp0_iter6_reg;
wire   [63:0] v123_fu_705_p3;
reg   [63:0] v123_reg_948;
reg   [63:0] v122_reg_953;
reg   [63:0] v124_reg_958;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln194_fu_448_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln199_fu_641_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln190_fu_698_p1;
reg   [63:0] v120_fu_122;
wire    ap_loop_init;
reg   [1:0] v111_fu_126;
wire   [1:0] add_ln192_fu_412_p2;
reg   [1:0] ap_sig_allocacmp_v111_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v110_fu_130;
wire   [6:0] select_ln190_2_fu_570_p3;
reg   [7:0] indvar_flatten19_fu_134;
wire   [7:0] add_ln190_fu_371_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v7_2_ce0_local;
reg    v7_3_ce0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
reg    v2_2_ce0_local;
reg    v2_3_ce0_local;
reg    v16_ce0_local;
reg    v16_1_ce0_local;
reg    v8_we0_local;
wire    ap_block_pp0_stage4;
reg    v8_ce0_local;
reg    v8_1_we0_local;
reg    v8_1_ce0_local;
reg   [63:0] grp_fu_334_p0;
reg   [63:0] grp_fu_334_p1;
wire    ap_block_pp0_stage7;
reg   [63:0] grp_fu_338_p0;
reg   [63:0] grp_fu_338_p1;
wire    ap_block_pp0_stage6;
wire   [8:0] zext_ln192_2_fu_397_p1;
wire   [8:0] grp_fu_406_p0;
wire   [7:0] grp_fu_406_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] mul_ln194_fu_432_p0;
wire   [10:0] mul_ln194_fu_432_p1;
wire   [18:0] mul_ln194_fu_432_p2;
wire   [8:0] grp_fu_406_p2;
wire   [63:0] v113_fu_472_p2;
wire   [63:0] v113_fu_472_p4;
wire   [63:0] v113_fu_472_p6;
wire   [63:0] v113_fu_472_p8;
wire   [63:0] v113_fu_472_p9;
wire   [63:0] v112_fu_495_p7;
wire   [63:0] bitcast_ln196_fu_512_p1;
wire   [0:0] bit_sel_fu_516_p3;
wire   [63:0] v116_fu_534_p7;
wire   [63:0] xor_ln7_fu_550_p3;
wire   [6:0] add_ln190_1_fu_564_p2;
wire   [5:0] trunc_ln192_fu_585_p1;
wire   [7:0] p_shl_fu_589_p3;
wire   [7:0] zext_ln192_fu_577_p1;
wire   [7:0] zext_ln192_1_fu_603_p1;
wire   [7:0] sub_ln192_fu_597_p2;
wire   [7:0] add_ln199_fu_606_p2;
wire   [63:0] v118_fu_664_p2;
wire   [63:0] v118_fu_664_p4;
wire   [63:0] v118_fu_664_p6;
wire   [63:0] v118_fu_664_p8;
wire   [63:0] v118_fu_664_p9;
reg   [1:0] grp_fu_334_opcode;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage4;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln194_fu_432_p00;
wire   [1:0] v113_fu_472_p1;
wire   [1:0] v113_fu_472_p3;
wire  signed [1:0] v113_fu_472_p5;
wire  signed [1:0] v113_fu_472_p7;
wire   [1:0] v112_fu_495_p1;
wire   [1:0] v112_fu_495_p3;
wire  signed [1:0] v112_fu_495_p5;
wire   [1:0] v116_fu_534_p1;
wire   [1:0] v116_fu_534_p3;
wire  signed [1:0] v116_fu_534_p5;
wire   [1:0] v118_fu_664_p1;
wire   [1:0] v118_fu_664_p3;
wire  signed [1:0] v118_fu_664_p5;
wire  signed [1:0] v118_fu_664_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_122 = 64'd0;
#0 v111_fu_126 = 2'd0;
#0 v110_fu_130 = 7'd0;
#0 indvar_flatten19_fu_134 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_8ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_1_U235(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_406_p0),.din1(grp_fu_406_p1),.ce(1'b1),.dout(grp_fu_406_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U236(.din0(mul_ln194_fu_432_p0),.din1(mul_ln194_fu_432_p1),.dout(mul_ln194_fu_432_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U237(.din0(v113_fu_472_p2),.din1(v113_fu_472_p4),.din2(v113_fu_472_p6),.din3(v113_fu_472_p8),.def(v113_fu_472_p9),.sel(trunc_ln9_reg_813_pp0_iter1_reg),.dout(v113_fu_472_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U238(.din0(mux_case_059124_reload),.din1(mux_case_160128_reload),.din2(mux_case_261132_reload),.def(v112_fu_495_p7),.sel(select_ln190_reg_796_pp0_iter1_reg),.dout(v112_fu_495_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U239(.din0(v75),.din1(v75_3),.din2(v75_4),.def(v116_fu_534_p7),.sel(select_ln190_reg_796_pp0_iter2_reg),.dout(v116_fu_534_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U240(.din0(v118_fu_664_p2),.din1(v118_fu_664_p4),.din2(v118_fu_664_p6),.din3(v118_fu_664_p8),.def(v118_fu_664_p9),.sel(trunc_ln199_reg_873),.dout(v118_fu_664_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln190_fu_365_p2 == 1'd0))) begin
            indvar_flatten19_fu_134 <= add_ln190_fu_371_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_134 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_130 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v110_fu_130 <= select_ln190_2_fu_570_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_126 <= 2'd0;
    end else if (((icmp_ln190_reg_780 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_126 <= add_ln192_fu_412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_122 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v120_fu_122 <= grp_fu_2684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_reg_803 <= add_ln194_fu_401_p2;
        icmp_ln192_1_reg_809 <= icmp_ln192_1_fu_418_p2;
        icmp_ln192_1_reg_809_pp0_iter1_reg <= icmp_ln192_1_reg_809;
        icmp_ln192_1_reg_809_pp0_iter2_reg <= icmp_ln192_1_reg_809_pp0_iter1_reg;
        icmp_ln192_1_reg_809_pp0_iter3_reg <= icmp_ln192_1_reg_809_pp0_iter2_reg;
        icmp_ln192_1_reg_809_pp0_iter4_reg <= icmp_ln192_1_reg_809_pp0_iter3_reg;
        icmp_ln192_1_reg_809_pp0_iter5_reg <= icmp_ln192_1_reg_809_pp0_iter4_reg;
        icmp_ln192_1_reg_809_pp0_iter6_reg <= icmp_ln192_1_reg_809_pp0_iter5_reg;
        select_ln190_reg_796 <= select_ln190_fu_391_p3;
        select_ln190_reg_796_pp0_iter1_reg <= select_ln190_reg_796;
        select_ln190_reg_796_pp0_iter2_reg <= select_ln190_reg_796_pp0_iter1_reg;
        v8_1_addr_reg_933 <= zext_ln190_fu_698_p1;
        v8_1_addr_reg_933_pp0_iter6_reg <= v8_1_addr_reg_933;
        v8_addr_reg_928 <= zext_ln190_fu_698_p1;
        v8_addr_reg_928_pp0_iter6_reg <= v8_addr_reg_928;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_780 <= icmp_ln190_fu_365_p2;
        icmp_ln190_reg_780_pp0_iter1_reg <= icmp_ln190_reg_780;
        icmp_ln190_reg_780_pp0_iter2_reg <= icmp_ln190_reg_780_pp0_iter1_reg;
        icmp_ln190_reg_780_pp0_iter3_reg <= icmp_ln190_reg_780_pp0_iter2_reg;
        icmp_ln190_reg_780_pp0_iter4_reg <= icmp_ln190_reg_780_pp0_iter3_reg;
        icmp_ln190_reg_780_pp0_iter5_reg <= icmp_ln190_reg_780_pp0_iter4_reg;
        icmp_ln192_reg_789 <= icmp_ln192_fu_380_p2;
        icmp_ln192_reg_789_pp0_iter1_reg <= icmp_ln192_reg_789;
        icmp_ln192_reg_789_pp0_iter2_reg <= icmp_ln192_reg_789_pp0_iter1_reg;
        icmp_ln192_reg_789_pp0_iter3_reg <= icmp_ln192_reg_789_pp0_iter2_reg;
        icmp_ln192_reg_789_pp0_iter4_reg <= icmp_ln192_reg_789_pp0_iter3_reg;
        lshr_ln7_reg_878 <= {{add_ln199_fu_606_p2[7:2]}};
        lshr_ln8_reg_883 <= {{select_ln190_2_fu_570_p3[5:1]}};
        lshr_ln8_reg_883_pp0_iter4_reg <= lshr_ln8_reg_883;
        lshr_ln8_reg_883_pp0_iter5_reg <= lshr_ln8_reg_883_pp0_iter4_reg;
        trunc_ln190_reg_868 <= trunc_ln190_fu_581_p1;
        trunc_ln190_reg_868_pp0_iter4_reg <= trunc_ln190_reg_868;
        trunc_ln190_reg_868_pp0_iter5_reg <= trunc_ln190_reg_868_pp0_iter4_reg;
        trunc_ln190_reg_868_pp0_iter6_reg <= trunc_ln190_reg_868_pp0_iter5_reg;
        trunc_ln199_reg_873 <= trunc_ln199_fu_612_p1;
        v111_load_reg_784 <= ap_sig_allocacmp_v111_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln196_reg_853 <= trunc_ln196_fu_530_p1;
        v113_reg_838 <= v113_fu_472_p11;
        v116_reg_858 <= v116_fu_534_p9;
        xor_ln196_reg_848 <= xor_ln196_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln9_reg_813 <= {{mul_ln194_fu_432_p2[17:16]}};
        trunc_ln9_reg_813_pp0_iter1_reg <= trunc_ln9_reg_813;
        v118_reg_908 <= v118_fu_664_p11;
        v123_reg_948 <= v123_fu_705_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v117_reg_913 <= grp_fu_5716_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v119_reg_918 <= grp_fu_5716_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v122_reg_953 <= grp_fu_2684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v124_reg_958 <= grp_fu_5716_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_780 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln190_reg_780_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter5_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten19_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_134;
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
    if (((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_334_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_334_opcode = 2'd0;
    end else begin
        grp_fu_334_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_334_p0 = select_ln190_1_fu_690_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_334_p0 = v112_fu_495_p9;
    end else begin
        grp_fu_334_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_334_p1 = v119_reg_918;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_334_p1 = v113_reg_838;
    end else begin
        grp_fu_334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_338_p0 = v122_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_338_p0 = v117_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_338_p0 = v115_fu_556_p1;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_338_p1 = v123_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_338_p1 = v118_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_338_p1 = v116_reg_858;
    end else begin
        grp_fu_338_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v16_1_ce0_local = 1'b1;
    end else begin
        v16_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v16_ce0_local = 1'b1;
    end else begin
        v16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln190_reg_868_pp0_iter6_reg == 1'd1) & (icmp_ln192_1_reg_809_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v8_1_we0_local = 1'b1;
    end else begin
        v8_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln190_reg_868_pp0_iter6_reg == 1'd0) & (icmp_ln192_1_reg_809_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v8_we0_local = 1'b1;
    end else begin
        v8_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln190_1_fu_564_p2 = (v110_fu_130 + 7'd1);
assign add_ln190_fu_371_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 8'd1);
assign add_ln192_fu_412_p2 = (select_ln190_fu_391_p3 + 2'd1);
assign add_ln194_fu_401_p2 = (zext_ln192_2_fu_397_p1 + mul_ln168_1);
assign add_ln199_fu_606_p2 = (zext_ln192_1_fu_603_p1 + sub_ln192_fu_597_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_516_p3 = bitcast_ln196_fu_512_p1[64'd63];
assign bitcast_ln196_fu_512_p1 = grp_fu_2684_p_dout0;
assign grp_fu_2684_p_ce = 1'b1;
assign grp_fu_2684_p_din0 = grp_fu_334_p0;
assign grp_fu_2684_p_din1 = grp_fu_334_p1;
assign grp_fu_2684_p_opcode = grp_fu_334_opcode;
assign grp_fu_406_p0 = (zext_ln192_2_fu_397_p1 + mul_ln168_1);
assign grp_fu_406_p1 = 9'd123;
assign grp_fu_5716_p_ce = 1'b1;
assign grp_fu_5716_p_din0 = grp_fu_338_p0;
assign grp_fu_5716_p_din1 = grp_fu_338_p1;
assign icmp_ln190_fu_365_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln192_1_fu_418_p2 = ((add_ln192_fu_412_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln192_fu_380_p2 = ((ap_sig_allocacmp_v111_load == 2'd3) ? 1'b1 : 1'b0);
assign mul_ln194_fu_432_p0 = mul_ln194_fu_432_p00;
assign mul_ln194_fu_432_p00 = add_ln194_reg_803;
assign mul_ln194_fu_432_p1 = 19'd533;
assign p_shl_fu_589_p3 = {{trunc_ln192_fu_585_p1}, {2'd0}};
assign select_ln190_1_fu_690_p3 = ((icmp_ln192_reg_789_pp0_iter4_reg[0:0] == 1'b1) ? 64'd0 : v120_fu_122);
assign select_ln190_2_fu_570_p3 = ((icmp_ln192_reg_789_pp0_iter2_reg[0:0] == 1'b1) ? add_ln190_1_fu_564_p2 : v110_fu_130);
assign select_ln190_fu_391_p3 = ((icmp_ln192_reg_789[0:0] == 1'b1) ? 2'd0 : v111_load_reg_784);
assign sub_ln192_fu_597_p2 = (p_shl_fu_589_p3 - zext_ln192_fu_577_p1);
assign trunc_ln190_fu_581_p1 = select_ln190_2_fu_570_p3[0:0];
assign trunc_ln192_fu_585_p1 = select_ln190_2_fu_570_p3[5:0];
assign trunc_ln196_fu_530_p1 = bitcast_ln196_fu_512_p1[62:0];
assign trunc_ln199_fu_612_p1 = add_ln199_fu_606_p2[1:0];
assign v112_fu_495_p7 = 'bx;
assign v113_fu_472_p2 = v7_0_q0;
assign v113_fu_472_p4 = v7_1_q0;
assign v113_fu_472_p6 = v7_2_q0;
assign v113_fu_472_p8 = v7_3_q0;
assign v113_fu_472_p9 = 'bx;
assign v115_fu_556_p1 = xor_ln7_fu_550_p3;
assign v116_fu_534_p7 = 'bx;
assign v118_fu_664_p2 = v2_0_q0;
assign v118_fu_664_p4 = v2_1_q0;
assign v118_fu_664_p6 = v2_2_q0;
assign v118_fu_664_p8 = v2_3_q0;
assign v118_fu_664_p9 = 'bx;
assign v123_fu_705_p3 = ((trunc_ln190_reg_868_pp0_iter5_reg[0:0] == 1'b1) ? v16_1_q0 : v16_q0);
assign v16_1_address0 = zext_ln190_fu_698_p1;
assign v16_1_ce0 = v16_1_ce0_local;
assign v16_address0 = zext_ln190_fu_698_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_0_address0 = zext_ln199_fu_641_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln199_fu_641_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = zext_ln199_fu_641_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = zext_ln199_fu_641_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v7_0_address0 = zext_ln194_fu_448_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln194_fu_448_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = zext_ln194_fu_448_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = zext_ln194_fu_448_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v8_1_address0 = v8_1_addr_reg_933_pp0_iter6_reg;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_d0 = v124_reg_958;
assign v8_1_we0 = v8_1_we0_local;
assign v8_address0 = v8_addr_reg_928_pp0_iter6_reg;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_958;
assign v8_we0 = v8_we0_local;
assign xor_ln196_fu_524_p2 = (bit_sel_fu_516_p3 ^ 1'd1);
assign xor_ln7_fu_550_p3 = {{xor_ln196_reg_848}, {trunc_ln196_reg_853}};
assign zext_ln190_fu_698_p1 = lshr_ln8_reg_883_pp0_iter5_reg;
assign zext_ln192_1_fu_603_p1 = select_ln190_reg_796_pp0_iter2_reg;
assign zext_ln192_2_fu_397_p1 = select_ln190_fu_391_p3;
assign zext_ln192_fu_577_p1 = select_ln190_2_fu_570_p3;
assign zext_ln194_fu_448_p1 = grp_fu_406_p2;
assign zext_ln199_fu_641_p1 = lshr_ln7_reg_878;
endmodule 