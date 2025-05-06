
module backprop_backprop_Pipeline_label_19_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_3_reload,v14_4_reload,v14_5_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v15_2_reload,v15_3_reload,v75_reload,v2_address0,v2_ce0,v2_q0,v8_address0,v8_ce0,v8_we0,v8_d0,v16_address0,v16_ce0,v16_q0,v16_1_address0,v16_1_ce0,v16_1_q0,grp_fu_22082_p_din0,grp_fu_22082_p_din1,grp_fu_22082_p_opcode,grp_fu_22082_p_dout0,grp_fu_22082_p_ce,grp_fu_22086_p_din0,grp_fu_22086_p_din1,grp_fu_22086_p_dout0,grp_fu_22086_p_ce);  
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
output  [7:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [7:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
input  [63:0] v15_2_reload;
input  [63:0] v15_3_reload;
input  [63:0] v75_reload;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [5:0] v8_address0;
output   v8_ce0;
output   v8_we0;
output  [63:0] v8_d0;
output  [4:0] v16_address0;
output   v16_ce0;
input  [63:0] v16_q0;
output  [4:0] v16_1_address0;
output   v16_1_ce0;
input  [63:0] v16_1_q0;
output  [63:0] grp_fu_22082_p_din0;
output  [63:0] grp_fu_22082_p_din1;
output  [1:0] grp_fu_22082_p_opcode;
input  [63:0] grp_fu_22082_p_dout0;
output   grp_fu_22082_p_ce;
output  [63:0] grp_fu_22086_p_din0;
output  [63:0] grp_fu_22086_p_din1;
input  [63:0] grp_fu_22086_p_dout0;
output   grp_fu_22086_p_ce;
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
reg   [0:0] icmp_ln190_reg_585;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln190_fu_262_p2;
reg   [0:0] icmp_ln190_reg_585_pp0_iter1_reg;
reg   [0:0] icmp_ln190_reg_585_pp0_iter2_reg;
reg   [0:0] icmp_ln190_reg_585_pp0_iter3_reg;
reg   [1:0] v111_load_reg_589;
wire   [0:0] icmp_ln192_fu_277_p2;
reg   [0:0] icmp_ln192_reg_594;
reg   [0:0] icmp_ln192_reg_594_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_594_pp0_iter2_reg;
reg   [0:0] icmp_ln192_reg_594_pp0_iter3_reg;
wire   [1:0] select_ln190_fu_288_p3;
reg   [1:0] select_ln190_reg_601;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] select_ln190_reg_601_pp0_iter1_reg;
wire   [0:0] trunc_ln194_fu_303_p1;
reg   [0:0] trunc_ln194_reg_608;
wire   [0:0] icmp_ln192_1_fu_329_p2;
reg   [0:0] icmp_ln192_1_reg_623;
reg   [0:0] icmp_ln192_1_reg_623_pp0_iter1_reg;
reg   [0:0] icmp_ln192_1_reg_623_pp0_iter2_reg;
reg   [0:0] icmp_ln192_1_reg_623_pp0_iter3_reg;
reg   [0:0] icmp_ln192_1_reg_623_pp0_iter4_reg;
wire   [63:0] select_ln194_fu_340_p3;
reg   [63:0] select_ln194_reg_627;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v112_fu_347_p9;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] v113_fu_364_p1;
wire   [6:0] select_ln190_2_fu_377_p3;
reg   [6:0] select_ln190_2_reg_642;
wire   [0:0] trunc_ln190_fu_384_p1;
reg   [0:0] trunc_ln190_reg_648;
reg   [0:0] trunc_ln190_reg_648_pp0_iter2_reg;
reg   [0:0] trunc_ln190_reg_648_pp0_iter3_reg;
wire   [5:0] trunc_ln192_fu_388_p1;
reg   [5:0] trunc_ln192_reg_653;
reg   [4:0] lshr_ln_reg_658;
reg   [4:0] lshr_ln_reg_658_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_658_pp0_iter3_reg;
reg   [5:0] v8_addr_reg_668;
reg   [5:0] v8_addr_reg_668_pp0_iter2_reg;
reg   [5:0] v8_addr_reg_668_pp0_iter3_reg;
reg   [5:0] v8_addr_reg_668_pp0_iter4_reg;
wire   [0:0] xor_ln196_fu_453_p2;
reg   [0:0] xor_ln196_reg_673;
wire   [62:0] trunc_ln196_fu_459_p1;
reg   [62:0] trunc_ln196_reg_678;
wire   [63:0] v116_fu_463_p9;
reg   [63:0] v116_reg_683;
reg   [63:0] v2_load_reg_688;
wire   [63:0] v115_fu_485_p1;
reg   [63:0] v117_reg_698;
wire   [63:0] v118_fu_490_p1;
reg   [63:0] v119_reg_708;
wire   [63:0] select_ln190_1_fu_497_p3;
wire   [63:0] v123_fu_510_p3;
reg   [63:0] v123_reg_728;
reg   [63:0] v122_reg_733;
reg   [63:0] v124_reg_738;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln194_fu_317_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln199_fu_436_p1;
wire   [63:0] zext_ln190_fu_407_p1;
wire   [63:0] zext_ln190_1_fu_505_p1;
reg   [63:0] v120_fu_96;
wire    ap_loop_init;
reg   [1:0] v111_fu_100;
wire   [1:0] add_ln192_fu_323_p2;
reg   [1:0] ap_sig_allocacmp_v111_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v110_fu_104;
reg   [7:0] indvar_flatten26_fu_108;
wire   [7:0] add_ln190_fu_268_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten26_load;
reg    v7_0_ce0_local;
reg    v7_1_ce0_local;
reg    v2_ce0_local;
reg    v16_ce0_local;
reg    v16_1_ce0_local;
reg    v8_we0_local;
reg    v8_ce0_local;
reg   [63:0] grp_fu_231_p0;
reg   [63:0] grp_fu_231_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_235_p0;
reg   [63:0] grp_fu_235_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] zext_ln192_2_fu_294_p1;
wire   [8:0] add_ln194_fu_298_p2;
wire   [7:0] lshr_ln9_fu_307_p4;
wire   [63:0] v112_fu_347_p7;
wire   [6:0] add_ln190_1_fu_371_p2;
wire   [7:0] p_shl_fu_414_p3;
wire   [7:0] zext_ln192_fu_411_p1;
wire   [7:0] zext_ln192_1_fu_427_p1;
wire   [7:0] sub_ln192_fu_421_p2;
wire   [7:0] add_ln199_fu_430_p2;
wire   [63:0] bitcast_ln196_fu_441_p1;
wire   [0:0] bit_sel_fu_445_p3;
wire   [63:0] v116_fu_463_p7;
wire   [63:0] xor_ln7_fu_479_p3;
reg   [1:0] grp_fu_231_opcode;
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
wire   [1:0] v112_fu_347_p1;
wire   [1:0] v112_fu_347_p3;
wire  signed [1:0] v112_fu_347_p5;
wire   [1:0] v116_fu_463_p1;
wire   [1:0] v116_fu_463_p3;
wire  signed [1:0] v116_fu_463_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_96 = 64'd0;
#0 v111_fu_100 = 2'd0;
#0 v110_fu_104 = 7'd0;
#0 indvar_flatten26_fu_108 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1042(.din0(v14_3_reload),.din1(v14_4_reload),.din2(v14_5_reload),.def(v112_fu_347_p7),.sel(select_ln190_reg_601),.dout(v112_fu_347_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1043(.din0(v15_2_reload),.din1(v15_3_reload),.din2(v75_reload),.def(v116_fu_463_p7),.sel(select_ln190_reg_601_pp0_iter1_reg),.dout(v116_fu_463_p9));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln190_fu_262_p2 == 1'd0))) begin
            indvar_flatten26_fu_108 <= add_ln190_fu_268_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten26_fu_108 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v110_fu_104 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v110_fu_104 <= select_ln190_2_fu_377_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_100 <= 2'd0;
    end else if (((icmp_ln190_reg_585 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v111_fu_100 <= add_ln192_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v120_fu_96 <= 64'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            v120_fu_96 <= grp_fu_22082_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln190_reg_585 <= icmp_ln190_fu_262_p2;
        icmp_ln190_reg_585_pp0_iter1_reg <= icmp_ln190_reg_585;
        icmp_ln190_reg_585_pp0_iter2_reg <= icmp_ln190_reg_585_pp0_iter1_reg;
        icmp_ln190_reg_585_pp0_iter3_reg <= icmp_ln190_reg_585_pp0_iter2_reg;
        icmp_ln192_reg_594 <= icmp_ln192_fu_277_p2;
        icmp_ln192_reg_594_pp0_iter1_reg <= icmp_ln192_reg_594;
        icmp_ln192_reg_594_pp0_iter2_reg <= icmp_ln192_reg_594_pp0_iter1_reg;
        icmp_ln192_reg_594_pp0_iter3_reg <= icmp_ln192_reg_594_pp0_iter2_reg;
        lshr_ln_reg_658 <= {{select_ln190_2_fu_377_p3[5:1]}};
        lshr_ln_reg_658_pp0_iter2_reg <= lshr_ln_reg_658;
        lshr_ln_reg_658_pp0_iter3_reg <= lshr_ln_reg_658_pp0_iter2_reg;
        select_ln190_2_reg_642 <= select_ln190_2_fu_377_p3;
        trunc_ln190_reg_648 <= trunc_ln190_fu_384_p1;
        trunc_ln190_reg_648_pp0_iter2_reg <= trunc_ln190_reg_648;
        trunc_ln190_reg_648_pp0_iter3_reg <= trunc_ln190_reg_648_pp0_iter2_reg;
        trunc_ln192_reg_653 <= trunc_ln192_fu_388_p1;
        v111_load_reg_589 <= ap_sig_allocacmp_v111_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln192_1_reg_623 <= icmp_ln192_1_fu_329_p2;
        icmp_ln192_1_reg_623_pp0_iter1_reg <= icmp_ln192_1_reg_623;
        icmp_ln192_1_reg_623_pp0_iter2_reg <= icmp_ln192_1_reg_623_pp0_iter1_reg;
        icmp_ln192_1_reg_623_pp0_iter3_reg <= icmp_ln192_1_reg_623_pp0_iter2_reg;
        icmp_ln192_1_reg_623_pp0_iter4_reg <= icmp_ln192_1_reg_623_pp0_iter3_reg;
        select_ln190_reg_601 <= select_ln190_fu_288_p3;
        select_ln190_reg_601_pp0_iter1_reg <= select_ln190_reg_601;
        trunc_ln194_reg_608 <= trunc_ln194_fu_303_p1;
        v8_addr_reg_668 <= zext_ln190_fu_407_p1;
        v8_addr_reg_668_pp0_iter2_reg <= v8_addr_reg_668;
        v8_addr_reg_668_pp0_iter3_reg <= v8_addr_reg_668_pp0_iter2_reg;
        v8_addr_reg_668_pp0_iter4_reg <= v8_addr_reg_668_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln194_reg_627 <= select_ln194_fu_340_p3;
        trunc_ln196_reg_678 <= trunc_ln196_fu_459_p1;
        v116_reg_683 <= v116_fu_463_p9;
        v123_reg_728 <= v123_fu_510_p3;
        v2_load_reg_688 <= v2_q0;
        xor_ln196_reg_673 <= xor_ln196_fu_453_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v117_reg_698 <= grp_fu_22086_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v119_reg_708 <= grp_fu_22086_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_733 <= grp_fu_22082_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v124_reg_738 <= grp_fu_22086_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_585 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln190_reg_585_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten26_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten26_load = indvar_flatten26_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_load = v111_fu_100;
    end
end
always @ (*) begin
    if (((icmp_ln190_reg_585 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_231_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_231_opcode = 2'd0;
    end else begin
        grp_fu_231_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_231_p0 = select_ln190_1_fu_497_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_231_p0 = v112_fu_347_p9;
    end else begin
        grp_fu_231_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_231_p1 = v119_reg_708;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_231_p1 = v113_fu_364_p1;
    end else begin
        grp_fu_231_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_235_p0 = v122_reg_733;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_235_p0 = v117_reg_698;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_235_p0 = v115_fu_485_p1;
    end else begin
        grp_fu_235_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_235_p1 = v123_reg_728;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_235_p1 = v118_fu_490_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_235_p1 = v116_reg_683;
    end else begin
        grp_fu_235_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln192_1_reg_623_pp0_iter4_reg == 1'd1))) begin
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
assign add_ln190_1_fu_371_p2 = (v110_fu_104 + 7'd1);
assign add_ln190_fu_268_p2 = (ap_sig_allocacmp_indvar_flatten26_load + 8'd1);
assign add_ln192_fu_323_p2 = (select_ln190_fu_288_p3 + 2'd1);
assign add_ln194_fu_298_p2 = (zext_ln192_2_fu_294_p1 + mul_ln168);
assign add_ln199_fu_430_p2 = (zext_ln192_1_fu_427_p1 + sub_ln192_fu_421_p2);
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
assign bit_sel_fu_445_p3 = bitcast_ln196_fu_441_p1[64'd63];
assign bitcast_ln196_fu_441_p1 = grp_fu_22082_p_dout0;
assign grp_fu_22082_p_ce = 1'b1;
assign grp_fu_22082_p_din0 = grp_fu_231_p0;
assign grp_fu_22082_p_din1 = grp_fu_231_p1;
assign grp_fu_22082_p_opcode = grp_fu_231_opcode;
assign grp_fu_22086_p_ce = 1'b1;
assign grp_fu_22086_p_din0 = grp_fu_235_p0;
assign grp_fu_22086_p_din1 = grp_fu_235_p1;
assign icmp_ln190_fu_262_p2 = ((ap_sig_allocacmp_indvar_flatten26_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln192_1_fu_329_p2 = ((add_ln192_fu_323_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln192_fu_277_p2 = ((ap_sig_allocacmp_v111_load == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_307_p4 = {{add_ln194_fu_298_p2[8:1]}};
assign p_shl_fu_414_p3 = {{trunc_ln192_reg_653}, {2'd0}};
assign select_ln190_1_fu_497_p3 = ((icmp_ln192_reg_594_pp0_iter3_reg[0:0] == 1'b1) ? 64'd0 : v120_fu_96);
assign select_ln190_2_fu_377_p3 = ((icmp_ln192_reg_594[0:0] == 1'b1) ? add_ln190_1_fu_371_p2 : v110_fu_104);
assign select_ln190_fu_288_p3 = ((icmp_ln192_reg_594[0:0] == 1'b1) ? 2'd0 : v111_load_reg_589);
assign select_ln194_fu_340_p3 = ((trunc_ln194_reg_608[0:0] == 1'b1) ? v7_1_q0 : v7_0_q0);
assign sub_ln192_fu_421_p2 = (p_shl_fu_414_p3 - zext_ln192_fu_411_p1);
assign trunc_ln190_fu_384_p1 = select_ln190_2_fu_377_p3[0:0];
assign trunc_ln192_fu_388_p1 = select_ln190_2_fu_377_p3[5:0];
assign trunc_ln194_fu_303_p1 = add_ln194_fu_298_p2[0:0];
assign trunc_ln196_fu_459_p1 = bitcast_ln196_fu_441_p1[62:0];
assign v112_fu_347_p7 = 'bx;
assign v113_fu_364_p1 = select_ln194_reg_627;
assign v115_fu_485_p1 = xor_ln7_fu_479_p3;
assign v116_fu_463_p7 = 'bx;
assign v118_fu_490_p1 = v2_load_reg_688;
assign v123_fu_510_p3 = ((trunc_ln190_reg_648_pp0_iter3_reg[0:0] == 1'b1) ? v16_1_q0 : v16_q0);
assign v16_1_address0 = zext_ln190_1_fu_505_p1;
assign v16_1_ce0 = v16_1_ce0_local;
assign v16_address0 = zext_ln190_1_fu_505_p1;
assign v16_ce0 = v16_ce0_local;
assign v2_address0 = zext_ln199_fu_436_p1;
assign v2_ce0 = v2_ce0_local;
assign v7_0_address0 = zext_ln194_fu_317_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = zext_ln194_fu_317_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v8_address0 = v8_addr_reg_668_pp0_iter4_reg;
assign v8_ce0 = v8_ce0_local;
assign v8_d0 = v124_reg_738;
assign v8_we0 = v8_we0_local;
assign xor_ln196_fu_453_p2 = (bit_sel_fu_445_p3 ^ 1'd1);
assign xor_ln7_fu_479_p3 = {{xor_ln196_reg_673}, {trunc_ln196_reg_678}};
assign zext_ln190_1_fu_505_p1 = lshr_ln_reg_658_pp0_iter3_reg;
assign zext_ln190_fu_407_p1 = select_ln190_2_reg_642;
assign zext_ln192_1_fu_427_p1 = select_ln190_reg_601;
assign zext_ln192_2_fu_294_p1 = select_ln190_fu_288_p3;
assign zext_ln192_fu_411_p1 = select_ln190_2_reg_642;
assign zext_ln194_fu_317_p1 = lshr_ln9_fu_307_p4;
assign zext_ln199_fu_436_p1 = add_ln199_fu_430_p2;
endmodule 
