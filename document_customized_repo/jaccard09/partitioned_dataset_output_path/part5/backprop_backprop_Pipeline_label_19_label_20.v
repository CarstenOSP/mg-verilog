
module backprop_backprop_Pipeline_label_19_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_3_reload,v14_10_reload,v14_5_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v7_4_address0,v7_4_ce0,v7_4_q0,v7_5_address0,v7_5_ce0,v7_5_q0,v7_6_address0,v7_6_ce0,v7_6_q0,v7_7_address0,v7_7_ce0,v7_7_q0,v15_3_reload,v15_10_reload,v15_5_reload,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v8_address0,v8_ce0,v8_we0,v8_d0,v16_address0,v16_ce0,v16_q0,grp_fu_8334_p_din0,grp_fu_8334_p_din1,grp_fu_8334_p_opcode,grp_fu_8334_p_dout0,grp_fu_8334_p_ce,grp_fu_8338_p_din0,grp_fu_8338_p_din1,grp_fu_8338_p_dout0,grp_fu_8338_p_ce);  
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
input  [63:0] v14_3_reload;
input  [63:0] v14_10_reload;
input  [63:0] v14_5_reload;
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
input  [63:0] v15_3_reload;
input  [63:0] v15_10_reload;
input  [63:0] v15_5_reload;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [5:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [5:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [63:0] grp_fu_8334_p_din0;
output  [63:0] grp_fu_8334_p_din1;
output  [1:0] grp_fu_8334_p_opcode;
input  [63:0] grp_fu_8334_p_dout0;
output   grp_fu_8334_p_ce;
output  [63:0] grp_fu_8338_p_din0;
output  [63:0] grp_fu_8338_p_din1;
input  [63:0] grp_fu_8338_p_dout0;
output   grp_fu_8338_p_ce;
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
reg   [0:0] icmp_ln190_reg_773;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln190_fu_376_p2;
reg   [0:0] icmp_ln190_reg_773_pp0_iter1_reg;
reg   [0:0] icmp_ln190_reg_773_pp0_iter2_reg;
reg   [0:0] icmp_ln190_reg_773_pp0_iter3_reg;
reg   [0:0] icmp_ln190_reg_773_pp0_iter4_reg;
reg   [0:0] icmp_ln190_reg_773_pp0_iter5_reg;
reg   [1:0] v111_load_reg_777;
wire   [0:0] icmp_ln192_fu_391_p2;
reg   [0:0] icmp_ln192_reg_782;
reg   [0:0] icmp_ln192_reg_782_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_782_pp0_iter2_reg;
reg   [0:0] icmp_ln192_reg_782_pp0_iter3_reg;
reg   [0:0] icmp_ln192_reg_782_pp0_iter4_reg;
wire   [1:0] select_ln190_fu_402_p3;
reg   [1:0] select_ln190_reg_789;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln190_reg_789_pp0_iter1_reg;
reg   [1:0] select_ln190_reg_789_pp0_iter2_reg;
wire   [8:0] add_ln194_fu_412_p2;
reg   [8:0] add_ln194_reg_796;
wire   [0:0] icmp_ln192_1_fu_429_p2;
reg   [0:0] icmp_ln192_1_reg_802;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter1_reg;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter2_reg;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter3_reg;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter4_reg;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter5_reg;
reg   [0:0] icmp_ln192_1_reg_802_pp0_iter6_reg;
reg   [2:0] trunc_ln9_reg_806;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] trunc_ln9_reg_806_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] v113_fu_503_p19;
reg   [63:0] v113_reg_851;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] v112_fu_542_p9;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] xor_ln196_fu_571_p2;
reg   [0:0] xor_ln196_reg_861;
wire   [62:0] trunc_ln196_fu_577_p1;
reg   [62:0] trunc_ln196_reg_866;
wire   [63:0] v116_fu_581_p9;
reg   [63:0] v116_reg_871;
wire   [63:0] v115_fu_603_p1;
wire   [6:0] select_ln190_2_fu_617_p3;
reg   [6:0] select_ln190_2_reg_881;
reg   [6:0] select_ln190_2_reg_881_pp0_iter4_reg;
reg   [6:0] select_ln190_2_reg_881_pp0_iter5_reg;
wire   [5:0] trunc_ln192_fu_624_p1;
reg   [5:0] trunc_ln192_reg_887;
wire   [0:0] trunc_ln199_fu_658_p1;
reg   [0:0] trunc_ln199_reg_892;
wire   [63:0] select_ln199_fu_678_p3;
reg   [63:0] select_ln199_reg_907;
reg   [63:0] v117_reg_912;
wire   [63:0] v118_fu_685_p1;
reg   [63:0] v119_reg_922;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] select_ln190_1_fu_692_p3;
reg   [5:0] v8_addr_reg_932;
reg   [5:0] v8_addr_reg_932_pp0_iter6_reg;
reg   [63:0] v123_reg_942;
reg   [63:0] v122_reg_947;
reg   [63:0] v124_reg_952;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln194_fu_459_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln199_fu_672_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln190_fu_700_p1;
reg   [63:0] v120_fu_132;
wire    ap_loop_init;
reg   [1:0] v111_fu_136;
wire   [1:0] add_ln192_fu_423_p2;
reg   [1:0] ap_sig_allocacmp_v111_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v110_fu_140;
reg   [7:0] indvar_flatten_fu_144;
wire   [7:0] add_ln190_fu_382_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v7_2_ce0_local;
reg    v7_3_ce0_local;
reg    v7_4_ce0_local;
reg    v7_5_ce0_local;
reg    v7_6_ce0_local;
reg    v7_7_ce0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
reg    v16_ce0_local;
reg    v8_we0_local;
wire    ap_block_pp0_stage4;
reg    v8_ce0_local;
reg   [63:0] grp_fu_345_p0;
reg   [63:0] grp_fu_345_p1;
wire    ap_block_pp0_stage7;
reg   [63:0] grp_fu_349_p0;
reg   [63:0] grp_fu_349_p1;
wire    ap_block_pp0_stage6;
wire   [8:0] zext_ln192_2_fu_408_p1;
wire   [8:0] grp_fu_417_p0;
wire   [6:0] grp_fu_417_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] mul_ln194_fu_443_p0;
wire   [10:0] mul_ln194_fu_443_p1;
wire   [18:0] mul_ln194_fu_443_p2;
wire   [8:0] grp_fu_417_p2;
wire   [63:0] v113_fu_503_p2;
wire   [63:0] v113_fu_503_p4;
wire   [63:0] v113_fu_503_p6;
wire   [63:0] v113_fu_503_p8;
wire   [63:0] v113_fu_503_p10;
wire   [63:0] v113_fu_503_p12;
wire   [63:0] v113_fu_503_p14;
wire   [63:0] v113_fu_503_p16;
wire   [63:0] v113_fu_503_p17;
wire   [63:0] v112_fu_542_p7;
wire   [63:0] bitcast_ln196_fu_559_p1;
wire   [0:0] bit_sel8_fu_563_p3;
wire   [63:0] v116_fu_581_p7;
wire   [63:0] xor_ln8_fu_597_p3;
wire   [6:0] add_ln190_1_fu_611_p2;
wire   [7:0] p_shl_fu_636_p3;
wire   [7:0] zext_ln192_fu_633_p1;
wire   [7:0] zext_ln192_1_fu_649_p1;
wire   [7:0] sub_ln192_fu_643_p2;
wire   [7:0] add_ln199_fu_652_p2;
wire   [6:0] lshr_ln6_fu_662_p4;
reg   [1:0] grp_fu_345_opcode;
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
wire   [18:0] mul_ln194_fu_443_p00;
wire   [2:0] v113_fu_503_p1;
wire   [2:0] v113_fu_503_p3;
wire   [2:0] v113_fu_503_p5;
wire   [2:0] v113_fu_503_p7;
wire  signed [2:0] v113_fu_503_p9;
wire  signed [2:0] v113_fu_503_p11;
wire  signed [2:0] v113_fu_503_p13;
wire  signed [2:0] v113_fu_503_p15;
wire   [1:0] v112_fu_542_p1;
wire   [1:0] v112_fu_542_p3;
wire  signed [1:0] v112_fu_542_p5;
wire   [1:0] v116_fu_581_p1;
wire   [1:0] v116_fu_581_p3;
wire  signed [1:0] v116_fu_581_p5;
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
#0 v120_fu_132 = 64'd0;
#0 v111_fu_136 = 2'd0;
#0 v110_fu_140 = 7'd0;
#0 indvar_flatten_fu_144 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_7ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 7 ),.dout_WIDTH( 9 ))
urem_9ns_7ns_9_13_1_U518(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_417_p0),.din1(grp_fu_417_p1),.ce(1'b1),.dout(grp_fu_417_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U519(.din0(mul_ln194_fu_443_p0),.din1(mul_ln194_fu_443_p1),.dout(mul_ln194_fu_443_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U520(.din0(v113_fu_503_p2),.din1(v113_fu_503_p4),.din2(v113_fu_503_p6),.din3(v113_fu_503_p8),.din4(v113_fu_503_p10),.din5(v113_fu_503_p12),.din6(v113_fu_503_p14),.din7(v113_fu_503_p16),.def(v113_fu_503_p17),.sel(trunc_ln9_reg_806_pp0_iter1_reg),.dout(v113_fu_503_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U521(.din0(v14_3_reload),.din1(v14_10_reload),.din2(v14_5_reload),.def(v112_fu_542_p7),.sel(select_ln190_reg_789_pp0_iter1_reg),.dout(v112_fu_542_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U522(.din0(v15_3_reload),.din1(v15_10_reload),.din2(v15_5_reload),.def(v116_fu_581_p7),.sel(select_ln190_reg_789_pp0_iter2_reg),.dout(v116_fu_581_p9));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln190_fu_376_p2 == 1'd0))) begin
            indvar_flatten_fu_144 <= add_ln190_fu_382_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_144 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_140 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v110_fu_140 <= select_ln190_2_fu_617_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_136 <= 2'd0;
    end else if (((icmp_ln190_reg_773 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_136 <= add_ln192_fu_423_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_132 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v120_fu_132 <= grp_fu_8334_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_reg_796 <= add_ln194_fu_412_p2;
        icmp_ln192_1_reg_802 <= icmp_ln192_1_fu_429_p2;
        icmp_ln192_1_reg_802_pp0_iter1_reg <= icmp_ln192_1_reg_802;
        icmp_ln192_1_reg_802_pp0_iter2_reg <= icmp_ln192_1_reg_802_pp0_iter1_reg;
        icmp_ln192_1_reg_802_pp0_iter3_reg <= icmp_ln192_1_reg_802_pp0_iter2_reg;
        icmp_ln192_1_reg_802_pp0_iter4_reg <= icmp_ln192_1_reg_802_pp0_iter3_reg;
        icmp_ln192_1_reg_802_pp0_iter5_reg <= icmp_ln192_1_reg_802_pp0_iter4_reg;
        icmp_ln192_1_reg_802_pp0_iter6_reg <= icmp_ln192_1_reg_802_pp0_iter5_reg;
        select_ln190_reg_789 <= select_ln190_fu_402_p3;
        select_ln190_reg_789_pp0_iter1_reg <= select_ln190_reg_789;
        select_ln190_reg_789_pp0_iter2_reg <= select_ln190_reg_789_pp0_iter1_reg;
        trunc_ln199_reg_892 <= trunc_ln199_fu_658_p1;
        v8_addr_reg_932 <= zext_ln190_fu_700_p1;
        v8_addr_reg_932_pp0_iter6_reg <= v8_addr_reg_932;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_773 <= icmp_ln190_fu_376_p2;
        icmp_ln190_reg_773_pp0_iter1_reg <= icmp_ln190_reg_773;
        icmp_ln190_reg_773_pp0_iter2_reg <= icmp_ln190_reg_773_pp0_iter1_reg;
        icmp_ln190_reg_773_pp0_iter3_reg <= icmp_ln190_reg_773_pp0_iter2_reg;
        icmp_ln190_reg_773_pp0_iter4_reg <= icmp_ln190_reg_773_pp0_iter3_reg;
        icmp_ln190_reg_773_pp0_iter5_reg <= icmp_ln190_reg_773_pp0_iter4_reg;
        icmp_ln192_reg_782 <= icmp_ln192_fu_391_p2;
        icmp_ln192_reg_782_pp0_iter1_reg <= icmp_ln192_reg_782;
        icmp_ln192_reg_782_pp0_iter2_reg <= icmp_ln192_reg_782_pp0_iter1_reg;
        icmp_ln192_reg_782_pp0_iter3_reg <= icmp_ln192_reg_782_pp0_iter2_reg;
        icmp_ln192_reg_782_pp0_iter4_reg <= icmp_ln192_reg_782_pp0_iter3_reg;
        select_ln190_2_reg_881 <= select_ln190_2_fu_617_p3;
        select_ln190_2_reg_881_pp0_iter4_reg <= select_ln190_2_reg_881;
        select_ln190_2_reg_881_pp0_iter5_reg <= select_ln190_2_reg_881_pp0_iter4_reg;
        trunc_ln192_reg_887 <= trunc_ln192_fu_624_p1;
        v111_load_reg_777 <= ap_sig_allocacmp_v111_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln199_reg_907 <= select_ln199_fu_678_p3;
        trunc_ln9_reg_806 <= {{mul_ln194_fu_443_p2[17:15]}};
        trunc_ln9_reg_806_pp0_iter1_reg <= trunc_ln9_reg_806;
        v123_reg_942 <= v16_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln196_reg_866 <= trunc_ln196_fu_577_p1;
        v113_reg_851 <= v113_fu_503_p19;
        v116_reg_871 <= v116_fu_581_p9;
        xor_ln196_reg_861 <= xor_ln196_fu_571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v117_reg_912 <= grp_fu_8338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v119_reg_922 <= grp_fu_8338_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v122_reg_947 <= grp_fu_8334_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v124_reg_952 <= grp_fu_8338_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_773 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln190_reg_773_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_load = v111_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_345_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_345_opcode = 2'd0;
    end else begin
        grp_fu_345_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_345_p0 = select_ln190_1_fu_692_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_345_p0 = v112_fu_542_p9;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_345_p1 = v119_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_345_p1 = v113_reg_851;
    end else begin
        grp_fu_345_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_349_p0 = v122_reg_947;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_349_p0 = v117_reg_912;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_349_p0 = v115_fu_603_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_349_p1 = v123_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_349_p1 = v118_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_349_p1 = v116_reg_871;
    end else begin
        grp_fu_349_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_4_ce0_local = 1'b1;
    end else begin
        v7_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_5_ce0_local = 1'b1;
    end else begin
        v7_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_6_ce0_local = 1'b1;
    end else begin
        v7_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_7_ce0_local = 1'b1;
    end else begin
        v7_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln192_1_reg_802_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
assign add_ln190_1_fu_611_p2 = (v110_fu_140 + 7'd1);
assign add_ln190_fu_382_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln192_fu_423_p2 = (select_ln190_fu_402_p3 + 2'd1);
assign add_ln194_fu_412_p2 = (zext_ln192_2_fu_408_p1 + mul_ln168);
assign add_ln199_fu_652_p2 = (zext_ln192_1_fu_649_p1 + sub_ln192_fu_643_p2);
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
assign bit_sel8_fu_563_p3 = bitcast_ln196_fu_559_p1[64'd63];
assign bitcast_ln196_fu_559_p1 = grp_fu_8334_p_dout0;
assign grp_fu_417_p0 = (zext_ln192_2_fu_408_p1 + mul_ln168);
assign grp_fu_417_p1 = 9'd62;
assign grp_fu_8334_p_ce = 1'b1;
assign grp_fu_8334_p_din0 = grp_fu_345_p0;
assign grp_fu_8334_p_din1 = grp_fu_345_p1;
assign grp_fu_8334_p_opcode = grp_fu_345_opcode;
assign grp_fu_8338_p_ce = 1'b1;
assign grp_fu_8338_p_din0 = grp_fu_349_p0;
assign grp_fu_8338_p_din1 = grp_fu_349_p1;
assign icmp_ln190_fu_376_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln192_1_fu_429_p2 = ((add_ln192_fu_423_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln192_fu_391_p2 = ((ap_sig_allocacmp_v111_load == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_662_p4 = {{add_ln199_fu_652_p2[7:1]}};
assign mul_ln194_fu_443_p0 = mul_ln194_fu_443_p00;
assign mul_ln194_fu_443_p00 = add_ln194_reg_796;
assign mul_ln194_fu_443_p1 = 19'd529;
assign p_shl_fu_636_p3 = {{trunc_ln192_reg_887}, {2'd0}};
assign select_ln190_1_fu_692_p3 = ((icmp_ln192_reg_782_pp0_iter4_reg[0:0] == 1'b1) ? 64'd0 : v120_fu_132);
assign select_ln190_2_fu_617_p3 = ((icmp_ln192_reg_782_pp0_iter2_reg[0:0] == 1'b1) ? add_ln190_1_fu_611_p2 : v110_fu_140);
assign select_ln190_fu_402_p3 = ((icmp_ln192_reg_782[0:0] == 1'b1) ? 2'd0 : v111_load_reg_777);
assign select_ln199_fu_678_p3 = ((trunc_ln199_reg_892[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign sub_ln192_fu_643_p2 = (p_shl_fu_636_p3 - zext_ln192_fu_633_p1);
assign trunc_ln192_fu_624_p1 = select_ln190_2_fu_617_p3[5:0];
assign trunc_ln196_fu_577_p1 = bitcast_ln196_fu_559_p1[62:0];
assign trunc_ln199_fu_658_p1 = add_ln199_fu_652_p2[0:0];
assign v112_fu_542_p7 = 'bx;
assign v113_fu_503_p10 = v7_4_q0;
assign v113_fu_503_p12 = v7_5_q0;
assign v113_fu_503_p14 = v7_6_q0;
assign v113_fu_503_p16 = v7_7_q0;
assign v113_fu_503_p17 = 'bx;
assign v113_fu_503_p2 = v7_0_q0;
assign v113_fu_503_p4 = v7_1_q0;
assign v113_fu_503_p6 = v7_2_q0;
assign v113_fu_503_p8 = v7_3_q0;
assign v115_fu_603_p1 = xor_ln8_fu_597_p3;
assign v116_fu_581_p7 = 'bx;
assign v118_fu_685_p1 = select_ln199_reg_907;
assign v16_address0 = zext_ln190_fu_700_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_0_address0 = zext_ln199_fu_672_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln199_fu_672_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v7_0_address0 = zext_ln194_fu_459_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln194_fu_459_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = zext_ln194_fu_459_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = zext_ln194_fu_459_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_4_address0 = zext_ln194_fu_459_p1;
assign v7_4_ce0 = v7_4_ce0_local;
assign v7_5_address0 = zext_ln194_fu_459_p1;
assign v7_5_ce0 = v7_5_ce0_local;
assign v7_6_address0 = zext_ln194_fu_459_p1;
assign v7_6_ce0 = v7_6_ce0_local;
assign v7_7_address0 = zext_ln194_fu_459_p1;
assign v7_7_ce0 = v7_7_ce0_local;
assign v8_address0 = v8_addr_reg_932_pp0_iter6_reg;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_952;
assign v8_we0 = v8_we0_local;
assign xor_ln196_fu_571_p2 = (bit_sel8_fu_563_p3 ^ 1'd1);
assign xor_ln8_fu_597_p3 = {{xor_ln196_reg_861}, {trunc_ln196_reg_866}};
assign zext_ln190_fu_700_p1 = select_ln190_2_reg_881_pp0_iter5_reg;
assign zext_ln192_1_fu_649_p1 = select_ln190_reg_789_pp0_iter2_reg;
assign zext_ln192_2_fu_408_p1 = select_ln190_fu_402_p3;
assign zext_ln192_fu_633_p1 = select_ln190_2_reg_881;
assign zext_ln194_fu_459_p1 = grp_fu_417_p2;
assign zext_ln199_fu_672_p1 = lshr_ln6_fu_662_p4;
endmodule 
