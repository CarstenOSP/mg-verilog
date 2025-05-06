
module main_graph_main_graph_Pipeline_VITIS_LOOP_749_114_VITIS_LOOP_750_115_VITIS_LOOP_751_116_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v74_address1,v74_ce1,v74_we1,v74_d1,v11_Addr_A,v11_EN_A,v11_WEN_A,v11_Din_A,v11_Dout_A,v75_address0,v75_ce0,v75_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v74_address1;
output   v74_ce1;
output   v74_we1;
output  [7:0] v74_d1;
output  [31:0] v11_Addr_A;
output   v11_EN_A;
output  [0:0] v11_WEN_A;
output  [7:0] v11_Din_A;
input  [7:0] v11_Dout_A;
output  [13:0] v75_address0;
output   v75_ce0;
input  [6:0] v75_q0;
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
wire   [0:0] icmp_ln749_fu_199_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln749_reg_616;
wire   [0:0] icmp_ln750_fu_211_p2;
reg   [0:0] icmp_ln750_reg_620;
reg   [0:0] icmp_ln750_reg_620_pp0_iter2_reg;
wire   [0:0] empty_fu_286_p2;
reg   [0:0] empty_reg_630;
wire   [0:0] icmp_ln753_mid2634_fu_308_p2;
reg   [0:0] icmp_ln753_mid2634_reg_635;
wire   [3:0] select_ln750_fu_314_p3;
reg   [3:0] select_ln750_reg_640;
wire   [0:0] empty_79_fu_328_p2;
reg   [0:0] empty_79_reg_645;
reg   [0:0] empty_79_reg_645_pp0_iter3_reg;
reg   [0:0] empty_79_reg_645_pp0_iter4_reg;
reg   [0:0] empty_79_reg_645_pp0_iter5_reg;
wire   [8:0] v343_mid2_fu_333_p3;
reg   [8:0] v343_mid2_reg_650;
wire   [7:0] empty_80_fu_341_p1;
reg   [7:0] empty_80_reg_655;
wire   [0:0] icmp_ln753_1_fu_351_p2;
reg   [0:0] icmp_ln753_1_reg_660;
reg   [0:0] icmp_ln753_1_reg_660_pp0_iter3_reg;
reg   [0:0] icmp_ln753_1_reg_660_pp0_iter4_reg;
reg   [0:0] icmp_ln753_1_reg_660_pp0_iter5_reg;
reg   [0:0] icmp_ln753_1_reg_660_pp0_iter6_reg;
wire   [13:0] add_ln752_1_fu_466_p2;
reg   [13:0] add_ln752_1_reg_664;
reg   [13:0] add_ln752_1_reg_664_pp0_iter4_reg;
reg   [13:0] add_ln752_1_reg_664_pp0_iter5_reg;
reg   [13:0] add_ln752_1_reg_664_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln755_1_fu_481_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln754_1_fu_513_p1;
wire   [63:0] zext_ln752_2_fu_542_p1;
reg   [7:0] v346_fu_78;
wire   [7:0] grp_fu_550_p3;
reg   [7:0] ap_sig_allocacmp_v346_load;
wire    ap_loop_init;
reg   [8:0] v343_fu_82;
wire   [8:0] add_ln753_fu_345_p2;
reg   [3:0] v342_fu_86;
wire   [3:0] select_ln751_fu_422_p3;
reg   [12:0] indvar_flatten621_fu_90;
wire   [12:0] select_ln751_1_fu_363_p3;
reg   [3:0] v341_fu_94;
reg   [15:0] indvar_flatten635_fu_98;
wire   [15:0] select_ln750_1_fu_223_p3;
reg   [8:0] v340_fu_102;
wire   [8:0] select_ln749_1_fu_398_p3;
reg   [22:0] indvar_flatten659_fu_106;
wire   [22:0] add_ln749_1_fu_205_p2;
reg    v75_ce0_local;
reg    v11_EN_A_local;
wire   [31:0] v11_Addr_A_orig;
reg    v74_we1_local;
reg    v74_ce1_local;
wire   [15:0] add_ln750_1_fu_217_p2;
wire   [0:0] icmp_ln751_fu_268_p2;
wire   [0:0] xor_ln749_fu_257_p2;
wire   [3:0] select_ln749_fu_250_p3;
wire   [0:0] and_ln749_1_fu_274_p2;
wire   [0:0] exitcond_flatten623_not_fu_291_p2;
wire   [0:0] icmp_ln753_fu_262_p2;
wire   [0:0] and_ln749_fu_302_p2;
wire   [0:0] not_exitcond_flatten623_mid2658_fu_297_p2;
wire   [3:0] add_ln750_fu_280_p2;
wire   [0:0] empty_78_fu_322_p2;
wire   [12:0] add_ln751_1_fu_357_p2;
wire   [8:0] add_ln749_fu_392_p2;
wire   [3:0] v342_mid2628_fu_409_p3;
wire   [3:0] add_ln751_fu_416_p2;
wire   [7:0] trunc_ln750_fu_405_p1;
wire   [10:0] tmp_8_fu_437_p3;
wire   [10:0] zext_ln752_fu_445_p1;
wire   [10:0] add_ln752_fu_448_p2;
wire   [13:0] tmp_fu_454_p3;
wire   [13:0] zext_ln752_1_fu_462_p1;
wire   [15:0] tmp_s_fu_429_p3;
wire   [15:0] zext_ln755_fu_472_p1;
wire   [15:0] add_ln755_fu_475_p2;
wire   [10:0] tmp_9_fu_486_p3;
wire   [10:0] add_ln754_fu_493_p2;
wire   [13:0] tmp_32_fu_499_p3;
wire   [13:0] add_ln754_1_fu_507_p2;
wire   [6:0] grp_fu_550_p1;
wire   [7:0] grp_fu_550_p2;
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
wire   [7:0] grp_fu_550_p10;
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
#0 v346_fu_78 = 8'd0;
#0 v343_fu_82 = 9'd0;
#0 v342_fu_86 = 4'd0;
#0 indvar_flatten621_fu_90 = 13'd0;
#0 v341_fu_94 = 4'd0;
#0 indvar_flatten635_fu_98 = 16'd0;
#0 v340_fu_102 = 9'd0;
#0 indvar_flatten659_fu_106 = 23'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U312(.clk(ap_clk),.reset(ap_rst),.din0(v11_Dout_A),.din1(grp_fu_550_p1),.din2(grp_fu_550_p2),.ce(1'b1),.dout(grp_fu_550_p3));
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
            indvar_flatten621_fu_90 <= 13'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln749_reg_616 == 1'd0))) begin
            indvar_flatten621_fu_90 <= select_ln751_1_fu_363_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten635_fu_98 <= 16'd0;
        end else if (((icmp_ln749_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten635_fu_98 <= select_ln750_1_fu_223_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten659_fu_106 <= 23'd0;
        end else if (((icmp_ln749_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten659_fu_106 <= add_ln749_1_fu_205_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v340_fu_102 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v340_fu_102 <= select_ln749_1_fu_398_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v341_fu_94 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln749_reg_616 == 1'd0))) begin
            v341_fu_94 <= select_ln750_fu_314_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v342_fu_86 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v342_fu_86 <= select_ln751_fu_422_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v343_fu_82 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln749_reg_616 == 1'd0))) begin
            v343_fu_82 <= add_ln753_fu_345_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v346_fu_78 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v346_fu_78 <= grp_fu_550_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln752_1_reg_664 <= add_ln752_1_fu_466_p2;
        add_ln752_1_reg_664_pp0_iter4_reg <= add_ln752_1_reg_664;
        add_ln752_1_reg_664_pp0_iter5_reg <= add_ln752_1_reg_664_pp0_iter4_reg;
        add_ln752_1_reg_664_pp0_iter6_reg <= add_ln752_1_reg_664_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_79_reg_645 <= empty_79_fu_328_p2;
        empty_79_reg_645_pp0_iter3_reg <= empty_79_reg_645;
        empty_79_reg_645_pp0_iter4_reg <= empty_79_reg_645_pp0_iter3_reg;
        empty_79_reg_645_pp0_iter5_reg <= empty_79_reg_645_pp0_iter4_reg;
        empty_80_reg_655 <= empty_80_fu_341_p1;
        empty_reg_630 <= empty_fu_286_p2;
        icmp_ln750_reg_620_pp0_iter2_reg <= icmp_ln750_reg_620;
        icmp_ln753_1_reg_660 <= icmp_ln753_1_fu_351_p2;
        icmp_ln753_1_reg_660_pp0_iter3_reg <= icmp_ln753_1_reg_660;
        icmp_ln753_1_reg_660_pp0_iter4_reg <= icmp_ln753_1_reg_660_pp0_iter3_reg;
        icmp_ln753_1_reg_660_pp0_iter5_reg <= icmp_ln753_1_reg_660_pp0_iter4_reg;
        icmp_ln753_1_reg_660_pp0_iter6_reg <= icmp_ln753_1_reg_660_pp0_iter5_reg;
        icmp_ln753_mid2634_reg_635 <= icmp_ln753_mid2634_fu_308_p2;
        select_ln750_reg_640 <= select_ln750_fu_314_p3;
        v343_mid2_reg_650 <= v343_mid2_fu_333_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln749_reg_616 <= icmp_ln749_fu_199_p2;
        icmp_ln750_reg_620 <= icmp_ln750_fu_211_p2;
    end
end
always @ (*) begin
    if (((icmp_ln749_fu_199_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln749_reg_616 == 1'd1))) begin
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
        ap_sig_allocacmp_v346_load = grp_fu_550_p3;
    end else begin
        ap_sig_allocacmp_v346_load = v346_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11_EN_A_local = 1'b1;
    end else begin
        v11_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v74_ce1_local = 1'b1;
    end else begin
        v74_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln753_1_reg_660_pp0_iter6_reg == 1'd1))) begin
        v74_we1_local = 1'b1;
    end else begin
        v74_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v75_ce0_local = 1'b1;
    end else begin
        v75_ce0_local = 1'b0;
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
assign add_ln749_1_fu_205_p2 = (indvar_flatten659_fu_106 + 23'd1);
assign add_ln749_fu_392_p2 = (v340_fu_102 + 9'd1);
assign add_ln750_1_fu_217_p2 = (indvar_flatten635_fu_98 + 16'd1);
assign add_ln750_fu_280_p2 = (select_ln749_fu_250_p3 + 4'd1);
assign add_ln751_1_fu_357_p2 = (indvar_flatten621_fu_90 + 13'd1);
assign add_ln751_fu_416_p2 = (v342_mid2628_fu_409_p3 + 4'd1);
assign add_ln752_1_fu_466_p2 = (tmp_fu_454_p3 + zext_ln752_1_fu_462_p1);
assign add_ln752_fu_448_p2 = (tmp_8_fu_437_p3 + zext_ln752_fu_445_p1);
assign add_ln753_fu_345_p2 = (v343_mid2_fu_333_p3 + 9'd1);
assign add_ln754_1_fu_507_p2 = (tmp_32_fu_499_p3 + zext_ln752_1_fu_462_p1);
assign add_ln754_fu_493_p2 = (tmp_9_fu_486_p3 + zext_ln752_fu_445_p1);
assign add_ln755_fu_475_p2 = (tmp_s_fu_429_p3 + zext_ln755_fu_472_p1);
assign and_ln749_1_fu_274_p2 = (xor_ln749_fu_257_p2 & icmp_ln751_fu_268_p2);
assign and_ln749_fu_302_p2 = (xor_ln749_fu_257_p2 & icmp_ln753_fu_262_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_78_fu_322_p2 = (icmp_ln753_mid2634_fu_308_p2 | and_ln749_1_fu_274_p2);
assign empty_79_fu_328_p2 = (icmp_ln750_reg_620 | empty_78_fu_322_p2);
assign empty_80_fu_341_p1 = v343_mid2_fu_333_p3[7:0];
assign empty_fu_286_p2 = (icmp_ln750_reg_620 | and_ln749_1_fu_274_p2);
assign exitcond_flatten623_not_fu_291_p2 = (icmp_ln751_fu_268_p2 ^ 1'd1);
assign grp_fu_550_p1 = grp_fu_550_p10;
assign grp_fu_550_p10 = v75_q0;
assign grp_fu_550_p2 = ((empty_79_reg_645_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v346_load);
assign icmp_ln749_fu_199_p2 = ((indvar_flatten659_fu_106 == 23'd4194304) ? 1'b1 : 1'b0);
assign icmp_ln750_fu_211_p2 = ((indvar_flatten635_fu_98 == 16'd16384) ? 1'b1 : 1'b0);
assign icmp_ln751_fu_268_p2 = ((indvar_flatten621_fu_90 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln753_1_fu_351_p2 = ((add_ln753_fu_345_p2 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln753_fu_262_p2 = ((v343_fu_82 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln753_mid2634_fu_308_p2 = (not_exitcond_flatten623_mid2658_fu_297_p2 & and_ln749_fu_302_p2);
assign not_exitcond_flatten623_mid2658_fu_297_p2 = (icmp_ln750_reg_620 | exitcond_flatten623_not_fu_291_p2);
assign select_ln749_1_fu_398_p3 = ((icmp_ln750_reg_620_pp0_iter2_reg[0:0] == 1'b1) ? add_ln749_fu_392_p2 : v340_fu_102);
assign select_ln749_fu_250_p3 = ((icmp_ln750_reg_620[0:0] == 1'b1) ? 4'd0 : v341_fu_94);
assign select_ln750_1_fu_223_p3 = ((icmp_ln750_fu_211_p2[0:0] == 1'b1) ? 16'd1 : add_ln750_1_fu_217_p2);
assign select_ln750_fu_314_p3 = ((and_ln749_1_fu_274_p2[0:0] == 1'b1) ? add_ln750_fu_280_p2 : select_ln749_fu_250_p3);
assign select_ln751_1_fu_363_p3 = ((empty_fu_286_p2[0:0] == 1'b1) ? 13'd1 : add_ln751_1_fu_357_p2);
assign select_ln751_fu_422_p3 = ((icmp_ln753_mid2634_reg_635[0:0] == 1'b1) ? add_ln751_fu_416_p2 : v342_mid2628_fu_409_p3);
assign tmp_32_fu_499_p3 = {{add_ln754_fu_493_p2}, {3'd0}};
assign tmp_8_fu_437_p3 = {{trunc_ln750_fu_405_p1}, {3'd0}};
assign tmp_9_fu_486_p3 = {{empty_80_reg_655}, {3'd0}};
assign tmp_fu_454_p3 = {{add_ln752_fu_448_p2}, {3'd0}};
assign tmp_s_fu_429_p3 = {{trunc_ln750_fu_405_p1}, {8'd0}};
assign trunc_ln750_fu_405_p1 = select_ln749_1_fu_398_p3[7:0];
assign v11_Addr_A = v11_Addr_A_orig << 32'd0;
assign v11_Addr_A_orig = zext_ln755_1_fu_481_p1;
assign v11_Din_A = 8'd0;
assign v11_EN_A = v11_EN_A_local;
assign v11_WEN_A = 1'd0;
assign v342_mid2628_fu_409_p3 = ((empty_reg_630[0:0] == 1'b1) ? 4'd0 : v342_fu_86);
assign v343_mid2_fu_333_p3 = ((empty_79_fu_328_p2[0:0] == 1'b1) ? 9'd0 : v343_fu_82);
assign v74_address1 = zext_ln752_2_fu_542_p1;
assign v74_ce1 = v74_ce1_local;
assign v74_d1 = grp_fu_550_p3;
assign v74_we1 = v74_we1_local;
assign v75_address0 = zext_ln754_1_fu_513_p1;
assign v75_ce0 = v75_ce0_local;
assign xor_ln749_fu_257_p2 = (icmp_ln750_reg_620 ^ 1'd1);
assign zext_ln752_1_fu_462_p1 = select_ln751_fu_422_p3;
assign zext_ln752_2_fu_542_p1 = add_ln752_1_reg_664_pp0_iter6_reg;
assign zext_ln752_fu_445_p1 = select_ln750_reg_640;
assign zext_ln754_1_fu_513_p1 = add_ln754_1_fu_507_p2;
assign zext_ln755_1_fu_481_p1 = add_ln755_fu_475_p2;
assign zext_ln755_fu_472_p1 = v343_mid2_reg_650;
endmodule 
