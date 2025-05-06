
module main_graph_main_graph_Pipeline_VITIS_LOOP_1349_282_VITIS_LOOP_1350_283_VITIS_LOOP_1351_284_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v34_address1,v34_ce1,v34_we1,v34_d1,v27_Addr_A,v27_EN_A,v27_WEN_A,v27_Din_A,v27_Dout_A,v35_address0,v35_ce0,v35_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v34_address1;
output   v34_ce1;
output   v34_we1;
output  [7:0] v34_d1;
output  [31:0] v27_Addr_A;
output   v27_EN_A;
output  [0:0] v27_WEN_A;
output  [7:0] v27_Din_A;
input  [7:0] v27_Dout_A;
output  [11:0] v35_address0;
output   v35_ce0;
input  [6:0] v35_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1349_fu_199_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1349_reg_609;
wire   [0:0] icmp_ln1350_fu_211_p2;
reg   [0:0] icmp_ln1350_reg_613;
reg   [0:0] icmp_ln1350_reg_613_pp0_iter2_reg;
wire   [1:0] select_ln1350_fu_325_p3;
reg   [1:0] select_ln1350_reg_623;
wire   [0:0] empty_124_fu_345_p2;
reg   [0:0] empty_124_reg_628;
reg   [0:0] empty_124_reg_628_pp0_iter3_reg;
reg   [0:0] empty_124_reg_628_pp0_iter4_reg;
reg   [0:0] empty_124_reg_628_pp0_iter5_reg;
wire   [10:0] v711_mid2_fu_350_p3;
reg   [10:0] v711_mid2_reg_633;
wire   [1:0] select_ln1351_fu_358_p3;
reg   [1:0] select_ln1351_reg_639;
wire   [0:0] icmp_ln1353_1_fu_372_p2;
reg   [0:0] icmp_ln1353_1_reg_644;
reg   [0:0] icmp_ln1353_1_reg_644_pp0_iter3_reg;
reg   [0:0] icmp_ln1353_1_reg_644_pp0_iter4_reg;
reg   [0:0] icmp_ln1353_1_reg_644_pp0_iter5_reg;
reg   [0:0] icmp_ln1353_1_reg_644_pp0_iter6_reg;
wire   [11:0] add_ln1352_1_fu_466_p2;
reg   [11:0] add_ln1352_1_reg_648;
reg   [11:0] add_ln1352_1_reg_648_pp0_iter4_reg;
reg   [11:0] add_ln1352_1_reg_648_pp0_iter5_reg;
reg   [11:0] add_ln1352_1_reg_648_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1355_1_fu_481_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1354_1_fu_511_p1;
wire   [63:0] zext_ln1352_2_fu_535_p1;
reg   [7:0] v714_fu_78;
wire   [7:0] grp_fu_543_p3;
reg   [7:0] ap_sig_allocacmp_v714_load;
wire    ap_loop_init;
reg   [10:0] v711_fu_82;
wire   [10:0] add_ln1353_fu_366_p2;
reg   [1:0] v710_fu_86;
reg   [12:0] indvar_flatten1677_fu_90;
wire   [12:0] select_ln1351_1_fu_384_p3;
reg   [1:0] v709_fu_94;
reg   [13:0] indvar_flatten1691_fu_98;
wire   [13:0] select_ln1350_1_fu_223_p3;
reg   [10:0] v708_fu_102;
wire   [10:0] select_ln1349_1_fu_421_p3;
reg   [22:0] indvar_flatten1715_fu_106;
wire   [22:0] add_ln1349_1_fu_205_p2;
reg    v35_ce0_local;
reg    v27_EN_A_local;
wire   [31:0] v27_Addr_A_orig;
reg    v34_we1_local;
reg    v34_ce1_local;
wire   [13:0] add_ln1350_1_fu_217_p2;
wire   [0:0] icmp_ln1351_fu_271_p2;
wire   [0:0] xor_ln1349_fu_260_p2;
wire   [1:0] select_ln1349_fu_253_p3;
wire   [0:0] and_ln1349_1_fu_277_p2;
wire   [0:0] empty_fu_289_p2;
wire   [0:0] exitcond_flatten1679_not_fu_302_p2;
wire   [0:0] icmp_ln1353_fu_265_p2;
wire   [0:0] and_ln1349_fu_313_p2;
wire   [0:0] not_exitcond_flatten1679_mid21714_fu_308_p2;
wire   [1:0] add_ln1350_fu_283_p2;
wire   [1:0] v710_mid21684_fu_294_p3;
wire   [0:0] icmp_ln1353_mid21690_fu_319_p2;
wire   [0:0] empty_123_fu_339_p2;
wire   [1:0] add_ln1351_fu_333_p2;
wire   [12:0] add_ln1351_1_fu_378_p2;
wire   [10:0] add_ln1349_fu_415_p2;
wire   [9:0] trunc_ln1350_fu_428_p1;
wire   [10:0] shl_ln1352_fu_440_p2;
wire   [10:0] zext_ln1352_fu_446_p1;
wire   [10:0] add_ln1352_fu_449_p2;
wire   [11:0] tmp_fu_455_p3;
wire   [11:0] zext_ln1352_1_fu_463_p1;
wire   [19:0] tmp_s_fu_432_p3;
wire   [19:0] zext_ln1355_fu_472_p1;
wire   [19:0] add_ln1355_fu_475_p2;
wire   [10:0] shl_ln1354_fu_486_p2;
wire   [10:0] add_ln1354_fu_491_p2;
wire   [11:0] tmp_89_fu_497_p3;
wire   [11:0] add_ln1354_1_fu_505_p2;
wire   [6:0] grp_fu_543_p1;
wire   [7:0] grp_fu_543_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_543_p10;
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
#0 v714_fu_78 = 8'd0;
#0 v711_fu_82 = 11'd0;
#0 v710_fu_86 = 2'd0;
#0 indvar_flatten1677_fu_90 = 13'd0;
#0 v709_fu_94 = 2'd0;
#0 indvar_flatten1691_fu_98 = 14'd0;
#0 v708_fu_102 = 11'd0;
#0 indvar_flatten1715_fu_106 = 23'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U558(.clk(ap_clk),.reset(ap_rst),.din0(v27_Dout_A),.din1(grp_fu_543_p1),.din2(grp_fu_543_p2),.ce(1'b1),.dout(grp_fu_543_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvar_flatten1677_fu_90 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1349_reg_609 == 1'd0))) begin
            indvar_flatten1677_fu_90 <= select_ln1351_1_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1691_fu_98 <= 14'd0;
        end else if (((icmp_ln1349_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1691_fu_98 <= select_ln1350_1_fu_223_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1715_fu_106 <= 23'd0;
        end else if (((icmp_ln1349_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1715_fu_106 <= add_ln1349_1_fu_205_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v708_fu_102 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v708_fu_102 <= select_ln1349_1_fu_421_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v709_fu_94 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1349_reg_609 == 1'd0))) begin
            v709_fu_94 <= select_ln1350_fu_325_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v710_fu_86 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1349_reg_609 == 1'd0))) begin
            v710_fu_86 <= select_ln1351_fu_358_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v711_fu_82 <= 11'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1349_reg_609 == 1'd0))) begin
            v711_fu_82 <= add_ln1353_fu_366_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v714_fu_78 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v714_fu_78 <= grp_fu_543_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1352_1_reg_648 <= add_ln1352_1_fu_466_p2;
        add_ln1352_1_reg_648_pp0_iter4_reg <= add_ln1352_1_reg_648;
        add_ln1352_1_reg_648_pp0_iter5_reg <= add_ln1352_1_reg_648_pp0_iter4_reg;
        add_ln1352_1_reg_648_pp0_iter6_reg <= add_ln1352_1_reg_648_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_124_reg_628 <= empty_124_fu_345_p2;
        empty_124_reg_628_pp0_iter3_reg <= empty_124_reg_628;
        empty_124_reg_628_pp0_iter4_reg <= empty_124_reg_628_pp0_iter3_reg;
        empty_124_reg_628_pp0_iter5_reg <= empty_124_reg_628_pp0_iter4_reg;
        icmp_ln1350_reg_613_pp0_iter2_reg <= icmp_ln1350_reg_613;
        icmp_ln1353_1_reg_644 <= icmp_ln1353_1_fu_372_p2;
        icmp_ln1353_1_reg_644_pp0_iter3_reg <= icmp_ln1353_1_reg_644;
        icmp_ln1353_1_reg_644_pp0_iter4_reg <= icmp_ln1353_1_reg_644_pp0_iter3_reg;
        icmp_ln1353_1_reg_644_pp0_iter5_reg <= icmp_ln1353_1_reg_644_pp0_iter4_reg;
        icmp_ln1353_1_reg_644_pp0_iter6_reg <= icmp_ln1353_1_reg_644_pp0_iter5_reg;
        select_ln1350_reg_623 <= select_ln1350_fu_325_p3;
        select_ln1351_reg_639 <= select_ln1351_fu_358_p3;
        v711_mid2_reg_633 <= v711_mid2_fu_350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln1349_reg_609 <= icmp_ln1349_fu_199_p2;
        icmp_ln1350_reg_613 <= icmp_ln1350_fu_211_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1349_fu_199_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1349_reg_609 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v714_load = grp_fu_543_p3;
    end else begin
        ap_sig_allocacmp_v714_load = v714_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v27_EN_A_local = 1'b1;
    end else begin
        v27_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v34_ce1_local = 1'b1;
    end else begin
        v34_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln1353_1_reg_644_pp0_iter6_reg == 1'd1))) begin
        v34_we1_local = 1'b1;
    end else begin
        v34_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v35_ce0_local = 1'b1;
    end else begin
        v35_ce0_local = 1'b0;
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
assign add_ln1349_1_fu_205_p2 = (indvar_flatten1715_fu_106 + 23'd1);
assign add_ln1349_fu_415_p2 = (v708_fu_102 + 11'd1);
assign add_ln1350_1_fu_217_p2 = (indvar_flatten1691_fu_98 + 14'd1);
assign add_ln1350_fu_283_p2 = (select_ln1349_fu_253_p3 + 2'd1);
assign add_ln1351_1_fu_378_p2 = (indvar_flatten1677_fu_90 + 13'd1);
assign add_ln1351_fu_333_p2 = (v710_mid21684_fu_294_p3 + 2'd1);
assign add_ln1352_1_fu_466_p2 = (tmp_fu_455_p3 + zext_ln1352_1_fu_463_p1);
assign add_ln1352_fu_449_p2 = (shl_ln1352_fu_440_p2 + zext_ln1352_fu_446_p1);
assign add_ln1353_fu_366_p2 = (v711_mid2_fu_350_p3 + 11'd1);
assign add_ln1354_1_fu_505_p2 = (tmp_89_fu_497_p3 + zext_ln1352_1_fu_463_p1);
assign add_ln1354_fu_491_p2 = (shl_ln1354_fu_486_p2 + zext_ln1352_fu_446_p1);
assign add_ln1355_fu_475_p2 = (tmp_s_fu_432_p3 + zext_ln1355_fu_472_p1);
assign and_ln1349_1_fu_277_p2 = (xor_ln1349_fu_260_p2 & icmp_ln1351_fu_271_p2);
assign and_ln1349_fu_313_p2 = (xor_ln1349_fu_260_p2 & icmp_ln1353_fu_265_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_123_fu_339_p2 = (icmp_ln1353_mid21690_fu_319_p2 | and_ln1349_1_fu_277_p2);
assign empty_124_fu_345_p2 = (icmp_ln1350_reg_613 | empty_123_fu_339_p2);
assign empty_fu_289_p2 = (icmp_ln1350_reg_613 | and_ln1349_1_fu_277_p2);
assign exitcond_flatten1679_not_fu_302_p2 = (icmp_ln1351_fu_271_p2 ^ 1'd1);
assign grp_fu_543_p1 = grp_fu_543_p10;
assign grp_fu_543_p10 = v35_q0;
assign grp_fu_543_p2 = ((empty_124_reg_628_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v714_load);
assign icmp_ln1349_fu_199_p2 = ((indvar_flatten1715_fu_106 == 23'd4194304) ? 1'b1 : 1'b0);
assign icmp_ln1350_fu_211_p2 = ((indvar_flatten1691_fu_98 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln1351_fu_271_p2 = ((indvar_flatten1677_fu_90 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln1353_1_fu_372_p2 = ((add_ln1353_fu_366_p2 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln1353_fu_265_p2 = ((v711_fu_82 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln1353_mid21690_fu_319_p2 = (not_exitcond_flatten1679_mid21714_fu_308_p2 & and_ln1349_fu_313_p2);
assign not_exitcond_flatten1679_mid21714_fu_308_p2 = (icmp_ln1350_reg_613 | exitcond_flatten1679_not_fu_302_p2);
assign select_ln1349_1_fu_421_p3 = ((icmp_ln1350_reg_613_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1349_fu_415_p2 : v708_fu_102);
assign select_ln1349_fu_253_p3 = ((icmp_ln1350_reg_613[0:0] == 1'b1) ? 2'd0 : v709_fu_94);
assign select_ln1350_1_fu_223_p3 = ((icmp_ln1350_fu_211_p2[0:0] == 1'b1) ? 14'd1 : add_ln1350_1_fu_217_p2);
assign select_ln1350_fu_325_p3 = ((and_ln1349_1_fu_277_p2[0:0] == 1'b1) ? add_ln1350_fu_283_p2 : select_ln1349_fu_253_p3);
assign select_ln1351_1_fu_384_p3 = ((empty_fu_289_p2[0:0] == 1'b1) ? 13'd1 : add_ln1351_1_fu_378_p2);
assign select_ln1351_fu_358_p3 = ((icmp_ln1353_mid21690_fu_319_p2[0:0] == 1'b1) ? add_ln1351_fu_333_p2 : v710_mid21684_fu_294_p3);
assign shl_ln1352_fu_440_p2 = select_ln1349_1_fu_421_p3 << 11'd1;
assign shl_ln1354_fu_486_p2 = v711_mid2_reg_633 << 11'd1;
assign tmp_89_fu_497_p3 = {{add_ln1354_fu_491_p2}, {1'd0}};
assign tmp_fu_455_p3 = {{add_ln1352_fu_449_p2}, {1'd0}};
assign tmp_s_fu_432_p3 = {{trunc_ln1350_fu_428_p1}, {10'd0}};
assign trunc_ln1350_fu_428_p1 = select_ln1349_1_fu_421_p3[9:0];
assign v27_Addr_A = v27_Addr_A_orig << 32'd0;
assign v27_Addr_A_orig = zext_ln1355_1_fu_481_p1;
assign v27_Din_A = 8'd0;
assign v27_EN_A = v27_EN_A_local;
assign v27_WEN_A = 1'd0;
assign v34_address1 = zext_ln1352_2_fu_535_p1;
assign v34_ce1 = v34_ce1_local;
assign v34_d1 = grp_fu_543_p3;
assign v34_we1 = v34_we1_local;
assign v35_address0 = zext_ln1354_1_fu_511_p1;
assign v35_ce0 = v35_ce0_local;
assign v710_mid21684_fu_294_p3 = ((empty_fu_289_p2[0:0] == 1'b1) ? 2'd0 : v710_fu_86);
assign v711_mid2_fu_350_p3 = ((empty_124_fu_345_p2[0:0] == 1'b1) ? 11'd0 : v711_fu_82);
assign xor_ln1349_fu_260_p2 = (icmp_ln1350_reg_613 ^ 1'd1);
assign zext_ln1352_1_fu_463_p1 = select_ln1351_reg_639;
assign zext_ln1352_2_fu_535_p1 = add_ln1352_1_reg_648_pp0_iter6_reg;
assign zext_ln1352_fu_446_p1 = select_ln1350_reg_623;
assign zext_ln1354_1_fu_511_p1 = add_ln1354_1_fu_505_p2;
assign zext_ln1355_1_fu_481_p1 = add_ln1355_fu_475_p2;
assign zext_ln1355_fu_472_p1 = v711_mid2_reg_633;
endmodule 
