module backprop_backprop_Pipeline_label_19_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_3_reload,v14_4_reload,v14_5_reload,mul_ln168,v7_address0,v7_ce0,v7_q0,v15_3_reload,v15_4_reload,v15_5_reload,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v8_address0,v8_ce0,v8_we0,v8_d0,v8_1_address0,v8_1_ce0,v8_1_we0,v8_1_d0,v8_2_address0,v8_2_ce0,v8_2_we0,v8_2_d0,v8_3_address0,v8_3_ce0,v8_3_we0,v8_3_d0,v16_address0,v16_ce0,v16_q0,v16_1_address0,v16_1_ce0,v16_1_q0,grp_fu_6044_p_din0,grp_fu_6044_p_din1,grp_fu_6044_p_opcode,grp_fu_6044_p_dout0,grp_fu_6044_p_ce,grp_fu_6048_p_din0,grp_fu_6048_p_din1,grp_fu_6048_p_dout0,grp_fu_6048_p_ce); 
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
input  [63:0] v14_4_reload;
input  [63:0] v14_5_reload;
input  [8:0] mul_ln168;
output  [8:0] v7_address0;
output   v7_ce0;
input  [63:0] v7_q0;
input  [63:0] v15_3_reload;
input  [63:0] v15_4_reload;
input  [63:0] v15_5_reload;
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
output  [3:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [3:0] v8_1_address0;
output   v8_1_ce0;
output   v8_1_we0;
output  [63:0] v8_1_d0;
output  [3:0] v8_2_address0;
output   v8_2_ce0;
output   v8_2_we0;
output  [63:0] v8_2_d0;
output  [3:0] v8_3_address0;
output   v8_3_ce0;
output   v8_3_we0;
output  [63:0] v8_3_d0;
output  [4:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [4:0] v16_1_address0;
output   v16_1_ce0;
input  [63:0] v16_1_q0;
output  [63:0] grp_fu_6044_p_din0;
output  [63:0] grp_fu_6044_p_din1;
output  [1:0] grp_fu_6044_p_opcode;
input  [63:0] grp_fu_6044_p_dout0;
output   grp_fu_6044_p_ce;
output  [63:0] grp_fu_6048_p_din0;
output  [63:0] grp_fu_6048_p_din1;
input  [63:0] grp_fu_6048_p_dout0;
output   grp_fu_6048_p_ce;
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
reg   [0:0] icmp_ln190_reg_715;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln190_fu_344_p2;
reg   [0:0] icmp_ln190_reg_715_pp0_iter1_reg;
reg   [0:0] icmp_ln190_reg_715_pp0_iter2_reg;
reg   [0:0] icmp_ln190_reg_715_pp0_iter3_reg;
reg   [1:0] v111_load_reg_719;
wire   [0:0] icmp_ln192_fu_359_p2;
reg   [0:0] icmp_ln192_reg_724;
reg   [0:0] icmp_ln192_reg_724_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_724_pp0_iter2_reg;
reg   [0:0] icmp_ln192_reg_724_pp0_iter3_reg;
wire   [1:0] select_ln190_fu_370_p3;
reg   [1:0] select_ln190_reg_731;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln190_reg_731_pp0_iter1_reg;
wire   [0:0] icmp_ln192_1_fu_396_p2;
reg   [0:0] icmp_ln192_1_reg_743;
reg   [0:0] icmp_ln192_1_reg_743_pp0_iter1_reg;
reg   [0:0] icmp_ln192_1_reg_743_pp0_iter2_reg;
reg   [0:0] icmp_ln192_1_reg_743_pp0_iter3_reg;
reg   [0:0] icmp_ln192_1_reg_743_pp0_iter4_reg;
reg   [63:0] v7_load_reg_747;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v112_fu_407_p9;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] v113_fu_424_p1;
wire   [1:0] trunc_ln190_fu_448_p1;
reg   [1:0] trunc_ln190_reg_762;
reg   [1:0] trunc_ln190_reg_762_pp0_iter2_reg;
reg   [1:0] trunc_ln190_reg_762_pp0_iter3_reg;
reg   [1:0] trunc_ln190_reg_762_pp0_iter4_reg;
wire   [0:0] trunc_ln190_1_fu_452_p1;
reg   [0:0] trunc_ln190_1_reg_766;
reg   [0:0] trunc_ln190_1_reg_766_pp0_iter2_reg;
reg   [0:0] trunc_ln190_1_reg_766_pp0_iter3_reg;
wire   [1:0] trunc_ln199_fu_483_p1;
reg   [1:0] trunc_ln199_reg_771;
reg   [5:0] lshr_ln6_reg_776;
reg   [4:0] lshr_ln7_reg_781;
reg   [4:0] lshr_ln7_reg_781_pp0_iter2_reg;
reg   [4:0] lshr_ln7_reg_781_pp0_iter3_reg;
reg   [3:0] lshr_ln190_1_reg_786;
reg   [3:0] lshr_ln190_1_reg_786_pp0_iter2_reg;
reg   [3:0] lshr_ln190_1_reg_786_pp0_iter3_reg;
reg   [3:0] lshr_ln190_1_reg_786_pp0_iter4_reg;
wire   [0:0] xor_ln196_fu_541_p2;
reg   [0:0] xor_ln196_reg_811;
wire   [62:0] trunc_ln196_fu_547_p1;
reg   [62:0] trunc_ln196_reg_816;
wire   [63:0] v116_fu_551_p9;
reg   [63:0] v116_reg_821;
wire   [63:0] v118_fu_583_p11;
reg   [63:0] v118_reg_826;
wire   [63:0] v115_fu_612_p1;
reg   [63:0] v117_reg_836;
reg   [63:0] v119_reg_841;
wire   [63:0] select_ln190_1_fu_620_p3;
wire   [63:0] v123_fu_633_p3;
reg   [63:0] v123_reg_861;
reg   [63:0] v122_reg_866;
reg   [63:0] v124_reg_871;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln194_fu_385_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln199_fu_522_p1;
wire   [63:0] zext_ln190_fu_628_p1;
wire   [63:0] zext_ln190_1_fu_645_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v120_fu_112;
wire    ap_loop_init;
reg   [1:0] v111_fu_116;
wire   [1:0] add_ln192_fu_390_p2;
reg   [1:0] ap_sig_allocacmp_v111_load;
reg   [6:0] v110_fu_120;
wire   [6:0] select_ln190_2_fu_437_p3;
reg   [7:0] indvar_flatten33_fu_124;
wire   [7:0] add_ln190_fu_350_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten33_load;
reg    v7_ce0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
reg    v2_2_ce0_local;
reg    v2_3_ce0_local;
reg    v16_ce0_local;
reg    v16_1_ce0_local;
reg    v8_2_we0_local;
reg    v8_2_ce0_local;
reg    v8_1_we0_local;
reg    v8_1_ce0_local;
reg    v8_we0_local;
reg    v8_ce0_local;
reg    v8_3_we0_local;
reg    v8_3_ce0_local;
reg   [63:0] grp_fu_313_p0;
reg   [63:0] grp_fu_313_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_317_p0;
reg   [63:0] grp_fu_317_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] zext_ln192_2_fu_376_p1;
wire   [8:0] add_ln194_fu_380_p2;
wire   [63:0] v112_fu_407_p7;
wire   [6:0] add_ln190_1_fu_431_p2;
wire   [5:0] trunc_ln192_fu_456_p1;
wire   [7:0] p_shl_fu_460_p3;
wire   [7:0] zext_ln192_fu_444_p1;
wire   [7:0] zext_ln192_1_fu_474_p1;
wire   [7:0] sub_ln192_fu_468_p2;
wire   [7:0] add_ln199_fu_477_p2;
wire   [63:0] bitcast_ln196_fu_529_p1;
wire   [0:0] bit_sel_fu_533_p3;
wire   [63:0] v116_fu_551_p7;
wire   [63:0] v118_fu_583_p2;
wire   [63:0] v118_fu_583_p4;
wire   [63:0] v118_fu_583_p6;
wire   [63:0] v118_fu_583_p8;
wire   [63:0] v118_fu_583_p9;
wire   [63:0] xor_ln7_fu_606_p3;
reg   [1:0] grp_fu_313_opcode;
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
wire   [1:0] v112_fu_407_p1;
wire   [1:0] v112_fu_407_p3;
wire  signed [1:0] v112_fu_407_p5;
wire   [1:0] v116_fu_551_p1;
wire   [1:0] v116_fu_551_p3;
wire  signed [1:0] v116_fu_551_p5;
wire   [1:0] v118_fu_583_p1;
wire   [1:0] v118_fu_583_p3;
wire  signed [1:0] v118_fu_583_p5;
wire  signed [1:0] v118_fu_583_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_112 = 64'd0;
#0 v111_fu_116 = 2'd0;
#0 v110_fu_120 = 7'd0;
#0 indvar_flatten33_fu_124 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U242(.din0(v14_3_reload),.din1(v14_4_reload),.din2(v14_5_reload),.def(v112_fu_407_p7),.sel(select_ln190_reg_731),.dout(v112_fu_407_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U243(.din0(v15_3_reload),.din1(v15_4_reload),.din2(v15_5_reload),.def(v116_fu_551_p7),.sel(select_ln190_reg_731_pp0_iter1_reg),.dout(v116_fu_551_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U244(.din0(v118_fu_583_p2),.din1(v118_fu_583_p4),.din2(v118_fu_583_p6),.din3(v118_fu_583_p8),.def(v118_fu_583_p9),.sel(trunc_ln199_reg_771),.dout(v118_fu_583_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln190_fu_344_p2 == 1'd0))) begin
            indvar_flatten33_fu_124 <= add_ln190_fu_350_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten33_fu_124 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_120 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v110_fu_120 <= select_ln190_2_fu_437_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_116 <= 2'd0;
    end else if (((icmp_ln190_reg_715 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_116 <= add_ln192_fu_390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v120_fu_112 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            v120_fu_112 <= grp_fu_6044_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_715 <= icmp_ln190_fu_344_p2;
        icmp_ln190_reg_715_pp0_iter1_reg <= icmp_ln190_reg_715;
        icmp_ln190_reg_715_pp0_iter2_reg <= icmp_ln190_reg_715_pp0_iter1_reg;
        icmp_ln190_reg_715_pp0_iter3_reg <= icmp_ln190_reg_715_pp0_iter2_reg;
        icmp_ln192_reg_724 <= icmp_ln192_fu_359_p2;
        icmp_ln192_reg_724_pp0_iter1_reg <= icmp_ln192_reg_724;
        icmp_ln192_reg_724_pp0_iter2_reg <= icmp_ln192_reg_724_pp0_iter1_reg;
        icmp_ln192_reg_724_pp0_iter3_reg <= icmp_ln192_reg_724_pp0_iter2_reg;
        lshr_ln190_1_reg_786 <= {{select_ln190_2_fu_437_p3[5:2]}};
        lshr_ln190_1_reg_786_pp0_iter2_reg <= lshr_ln190_1_reg_786;
        lshr_ln190_1_reg_786_pp0_iter3_reg <= lshr_ln190_1_reg_786_pp0_iter2_reg;
        lshr_ln190_1_reg_786_pp0_iter4_reg <= lshr_ln190_1_reg_786_pp0_iter3_reg;
        lshr_ln6_reg_776 <= {{add_ln199_fu_477_p2[7:2]}};
        lshr_ln7_reg_781 <= {{select_ln190_2_fu_437_p3[5:1]}};
        lshr_ln7_reg_781_pp0_iter2_reg <= lshr_ln7_reg_781;
        lshr_ln7_reg_781_pp0_iter3_reg <= lshr_ln7_reg_781_pp0_iter2_reg;
        trunc_ln190_1_reg_766 <= trunc_ln190_1_fu_452_p1;
        trunc_ln190_1_reg_766_pp0_iter2_reg <= trunc_ln190_1_reg_766;
        trunc_ln190_1_reg_766_pp0_iter3_reg <= trunc_ln190_1_reg_766_pp0_iter2_reg;
        trunc_ln190_reg_762 <= trunc_ln190_fu_448_p1;
        trunc_ln190_reg_762_pp0_iter2_reg <= trunc_ln190_reg_762;
        trunc_ln190_reg_762_pp0_iter3_reg <= trunc_ln190_reg_762_pp0_iter2_reg;
        trunc_ln190_reg_762_pp0_iter4_reg <= trunc_ln190_reg_762_pp0_iter3_reg;
        trunc_ln199_reg_771 <= trunc_ln199_fu_483_p1;
        v111_load_reg_719 <= ap_sig_allocacmp_v111_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln192_1_reg_743 <= icmp_ln192_1_fu_396_p2;
        icmp_ln192_1_reg_743_pp0_iter1_reg <= icmp_ln192_1_reg_743;
        icmp_ln192_1_reg_743_pp0_iter2_reg <= icmp_ln192_1_reg_743_pp0_iter1_reg;
        icmp_ln192_1_reg_743_pp0_iter3_reg <= icmp_ln192_1_reg_743_pp0_iter2_reg;
        icmp_ln192_1_reg_743_pp0_iter4_reg <= icmp_ln192_1_reg_743_pp0_iter3_reg;
        select_ln190_reg_731 <= select_ln190_fu_370_p3;
        select_ln190_reg_731_pp0_iter1_reg <= select_ln190_reg_731;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln196_reg_816 <= trunc_ln196_fu_547_p1;
        v116_reg_821 <= v116_fu_551_p9;
        v118_reg_826 <= v118_fu_583_p11;
        v123_reg_861 <= v123_fu_633_p3;
        v7_load_reg_747 <= v7_q0;
        xor_ln196_reg_811 <= xor_ln196_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v117_reg_836 <= grp_fu_6048_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v119_reg_841 <= grp_fu_6048_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_866 <= grp_fu_6044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v124_reg_871 <= grp_fu_6048_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_715 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln190_reg_715_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten33_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten33_load = indvar_flatten33_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_load = v111_fu_116;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_715 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_opcode = 2'd0;
    end else begin
        grp_fu_313_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p0 = select_ln190_1_fu_620_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p0 = v112_fu_407_p9;
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_313_p1 = v119_reg_841;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_313_p1 = v113_fu_424_p1;
    end else begin
        grp_fu_313_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_317_p0 = v122_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p0 = v117_reg_836;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p0 = v115_fu_612_p1;
    end else begin
        grp_fu_317_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_317_p1 = v123_reg_861;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_317_p1 = v118_reg_826;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p1 = v116_reg_821;
    end else begin
        grp_fu_317_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v16_1_ce0_local = 1'b1;
    end else begin
        v16_1_ce0_local = 1'b0;
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
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_ce0_local = 1'b1;
    end else begin
        v7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln190_reg_762_pp0_iter4_reg == 2'd1) & (icmp_ln192_1_reg_743_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_we0_local = 1'b1;
    end else begin
        v8_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln190_reg_762_pp0_iter4_reg == 2'd2) & (icmp_ln192_1_reg_743_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_we0_local = 1'b1;
    end else begin
        v8_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln190_reg_762_pp0_iter4_reg == 2'd3) & (icmp_ln192_1_reg_743_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_we0_local = 1'b1;
    end else begin
        v8_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln190_reg_762_pp0_iter4_reg == 2'd0) & (icmp_ln192_1_reg_743_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln190_1_fu_431_p2 = (v110_fu_120 + 7'd1);
assign add_ln190_fu_350_p2 = (ap_sig_allocacmp_indvar_flatten33_load + 8'd1);
assign add_ln192_fu_390_p2 = (select_ln190_fu_370_p3 + 2'd1);
assign add_ln194_fu_380_p2 = (zext_ln192_2_fu_376_p1 + mul_ln168);
assign add_ln199_fu_477_p2 = (zext_ln192_1_fu_474_p1 + sub_ln192_fu_468_p2);
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
assign bit_sel_fu_533_p3 = bitcast_ln196_fu_529_p1[64'd63];
assign bitcast_ln196_fu_529_p1 = grp_fu_6044_p_dout0;
assign grp_fu_6044_p_ce = 1'b1;
assign grp_fu_6044_p_din0 = grp_fu_313_p0;
assign grp_fu_6044_p_din1 = grp_fu_313_p1;
assign grp_fu_6044_p_opcode = grp_fu_313_opcode;
assign grp_fu_6048_p_ce = 1'b1;
assign grp_fu_6048_p_din0 = grp_fu_317_p0;
assign grp_fu_6048_p_din1 = grp_fu_317_p1;
assign icmp_ln190_fu_344_p2 = ((ap_sig_allocacmp_indvar_flatten33_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln192_1_fu_396_p2 = ((add_ln192_fu_390_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln192_fu_359_p2 = ((ap_sig_allocacmp_v111_load == 2'd3) ? 1'b1 : 1'b0);
assign p_shl_fu_460_p3 = {{trunc_ln192_fu_456_p1}, {2'd0}};
assign select_ln190_1_fu_620_p3 = ((icmp_ln192_reg_724_pp0_iter3_reg[0:0] == 1'b1) ? 64'd0 : v120_fu_112);
assign select_ln190_2_fu_437_p3 = ((icmp_ln192_reg_724[0:0] == 1'b1) ? add_ln190_1_fu_431_p2 : v110_fu_120);
assign select_ln190_fu_370_p3 = ((icmp_ln192_reg_724[0:0] == 1'b1) ? 2'd0 : v111_load_reg_719);
assign sub_ln192_fu_468_p2 = (p_shl_fu_460_p3 - zext_ln192_fu_444_p1);
assign trunc_ln190_1_fu_452_p1 = select_ln190_2_fu_437_p3[0:0];
assign trunc_ln190_fu_448_p1 = select_ln190_2_fu_437_p3[1:0];
assign trunc_ln192_fu_456_p1 = select_ln190_2_fu_437_p3[5:0];
assign trunc_ln196_fu_547_p1 = bitcast_ln196_fu_529_p1[62:0];
assign trunc_ln199_fu_483_p1 = add_ln199_fu_477_p2[1:0];
assign v112_fu_407_p7 = 'bx;
assign v113_fu_424_p1 = v7_load_reg_747;
assign v115_fu_612_p1 = xor_ln7_fu_606_p3;
assign v116_fu_551_p7 = 'bx;
assign v118_fu_583_p2 = v2_0_q0;
assign v118_fu_583_p4 = v2_1_q0;
assign v118_fu_583_p6 = v2_2_q0;
assign v118_fu_583_p8 = v2_3_q0;
assign v118_fu_583_p9 = 'bx;
assign v123_fu_633_p3 = ((trunc_ln190_1_reg_766_pp0_iter3_reg[0:0] == 1'b1) ? v16_1_q0 : v16_q0);
assign v16_1_address0 = zext_ln190_fu_628_p1;
assign v16_1_ce0 = v16_1_ce0_local;
assign v16_address0 = zext_ln190_fu_628_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_0_address0 = zext_ln199_fu_522_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln199_fu_522_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = zext_ln199_fu_522_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = zext_ln199_fu_522_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v7_address0 = zext_ln194_fu_385_p1;
assign v7_ce0 = v7_ce0_local;
assign v8_1_address0 = zext_ln190_1_fu_645_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_d0 = v124_reg_871;
assign v8_1_we0 = v8_1_we0_local;
assign v8_2_address0 = zext_ln190_1_fu_645_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_2_d0 = v124_reg_871;
assign v8_2_we0 = v8_2_we0_local;
assign v8_3_address0 = zext_ln190_1_fu_645_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_3_d0 = v124_reg_871;
assign v8_3_we0 = v8_3_we0_local;
assign v8_address0 = zext_ln190_1_fu_645_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_871;
assign v8_we0 = v8_we0_local;
assign xor_ln196_fu_541_p2 = (bit_sel_fu_533_p3 ^ 1'd1);
assign xor_ln7_fu_606_p3 = {{xor_ln196_reg_811}, {trunc_ln196_reg_816}};
assign zext_ln190_1_fu_645_p1 = lshr_ln190_1_reg_786_pp0_iter4_reg;
assign zext_ln190_fu_628_p1 = lshr_ln7_reg_781_pp0_iter3_reg;
assign zext_ln192_1_fu_474_p1 = select_ln190_reg_731;
assign zext_ln192_2_fu_376_p1 = select_ln190_fu_370_p3;
assign zext_ln192_fu_444_p1 = select_ln190_2_fu_437_p3;
assign zext_ln194_fu_385_p1 = add_ln194_fu_380_p2;
assign zext_ln199_fu_522_p1 = lshr_ln6_reg_776;
endmodule 