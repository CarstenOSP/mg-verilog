module main_graph_main_graph_Pipeline_VITIS_LOOP_674_93_VITIS_LOOP_675_94_VITIS_LOOP_676_95_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v79_address1,v79_ce1,v79_we1,v79_d1,v9_Addr_A,v9_EN_A,v9_WEN_A,v9_Din_A,v9_Dout_A,v80_address0,v80_ce0,v80_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v79_address1;
output   v79_ce1;
output   v79_we1;
output  [7:0] v79_d1;
output  [31:0] v9_Addr_A;
output   v9_EN_A;
output  [0:0] v9_WEN_A;
output  [7:0] v9_Din_A;
input  [7:0] v9_Dout_A;
output  [12:0] v80_address0;
output   v80_ce0;
input  [6:0] v80_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln674_fu_204_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln674_reg_636;
wire   [0:0] icmp_ln675_fu_233_p2;
reg   [0:0] icmp_ln675_reg_640;
wire   [0:0] empty_fu_277_p2;
reg   [0:0] empty_reg_645;
wire   [0:0] icmp_ln678_mid2507_fu_301_p2;
reg   [0:0] icmp_ln678_mid2507_reg_650;
wire   [3:0] select_ln675_fu_307_p3;
reg   [3:0] select_ln675_reg_655;
wire   [0:0] empty_83_fu_321_p2;
reg   [0:0] empty_83_reg_661;
reg   [0:0] empty_83_reg_661_pp0_iter2_reg;
reg   [0:0] empty_83_reg_661_pp0_iter3_reg;
reg   [0:0] empty_83_reg_661_pp0_iter4_reg;
wire   [7:0] v297_mid2_fu_327_p3;
reg   [7:0] v297_mid2_reg_666;
wire   [6:0] empty_84_fu_335_p1;
reg   [6:0] empty_84_reg_671;
wire   [0:0] icmp_ln678_1_fu_345_p2;
reg   [0:0] icmp_ln678_1_reg_676;
reg   [0:0] icmp_ln678_1_reg_676_pp0_iter2_reg;
reg   [0:0] icmp_ln678_1_reg_676_pp0_iter3_reg;
reg   [0:0] icmp_ln678_1_reg_676_pp0_iter4_reg;
reg   [0:0] icmp_ln678_1_reg_676_pp0_iter5_reg;
wire   [13:0] add_ln677_1_fu_486_p2;
reg   [13:0] add_ln677_1_reg_680;
reg   [13:0] add_ln677_1_reg_680_pp0_iter3_reg;
reg   [13:0] add_ln677_1_reg_680_pp0_iter4_reg;
reg   [13:0] add_ln677_1_reg_680_pp0_iter5_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln680_1_fu_501_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln679_1_fu_533_p1;
wire   [63:0] zext_ln677_4_fu_562_p1;
reg   [7:0] v300_fu_86;
wire   [7:0] grp_fu_570_p3;
reg   [7:0] ap_sig_allocacmp_v300_load;
wire    ap_loop_init;
reg   [7:0] v297_fu_90;
wire   [7:0] add_ln678_fu_339_p2;
reg   [3:0] v296_fu_94;
wire   [3:0] select_ln676_fu_435_p3;
reg   [11:0] indvar_flatten494_fu_98;
wire   [11:0] select_ln676_1_fu_357_p3;
reg   [3:0] v295_fu_102;
reg   [14:0] indvar_flatten508_fu_106;
wire   [14:0] select_ln675_1_fu_371_p3;
reg   [8:0] v294_fu_110;
wire   [8:0] select_ln674_1_fu_411_p3;
reg   [21:0] indvar_flatten532_fu_114;
wire   [21:0] add_ln674_1_fu_210_p2;
reg   [21:0] ap_sig_allocacmp_indvar_flatten532_load;
reg    v80_ce0_local;
reg    v9_EN_A_local;
wire   [31:0] v9_Addr_A_orig;
reg    v79_we1_local;
reg    v79_ce1_local;
wire   [0:0] icmp_ln676_fu_259_p2;
wire   [0:0] xor_ln674_fu_247_p2;
wire   [3:0] select_ln674_fu_239_p3;
wire   [0:0] and_ln674_1_fu_265_p2;
wire   [0:0] exitcond_flatten496_not_fu_283_p2;
wire   [0:0] icmp_ln678_fu_253_p2;
wire   [0:0] and_ln674_fu_295_p2;
wire   [0:0] not_exitcond_flatten496_mid2531_fu_289_p2;
wire   [3:0] add_ln675_fu_271_p2;
wire   [0:0] empty_82_fu_315_p2;
wire   [11:0] add_ln676_1_fu_351_p2;
wire   [14:0] add_ln675_1_fu_365_p2;
wire   [8:0] add_ln674_fu_405_p2;
wire   [3:0] v296_mid2501_fu_422_p3;
wire   [3:0] add_ln676_fu_429_p2;
wire   [7:0] trunc_ln675_fu_418_p1;
wire   [10:0] tmp_10_fu_450_p3;
wire   [10:0] zext_ln677_1_fu_461_p1;
wire   [10:0] add_ln677_fu_464_p2;
wire   [13:0] tmp_fu_470_p3;
wire   [13:0] zext_ln677_3_fu_482_p1;
wire   [14:0] tmp_s_fu_442_p3;
wire   [14:0] zext_ln680_fu_492_p1;
wire   [14:0] add_ln680_fu_495_p2;
wire   [9:0] tmp_11_fu_506_p3;
wire   [9:0] zext_ln677_fu_458_p1;
wire   [9:0] add_ln679_fu_513_p2;
wire   [12:0] tmp_40_fu_519_p3;
wire   [12:0] zext_ln677_2_fu_478_p1;
wire   [12:0] add_ln679_1_fu_527_p2;
wire   [6:0] grp_fu_570_p1;
wire   [7:0] grp_fu_570_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_570_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v300_fu_86 = 8'd0;
#0 v297_fu_90 = 8'd0;
#0 v296_fu_94 = 4'd0;
#0 indvar_flatten494_fu_98 = 12'd0;
#0 v295_fu_102 = 4'd0;
#0 indvar_flatten508_fu_106 = 15'd0;
#0 v294_fu_110 = 9'd0;
#0 indvar_flatten532_fu_114 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(v9_Dout_A),.din1(grp_fu_570_p1),.din2(grp_fu_570_p2),.ce(1'b1),.dout(grp_fu_570_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten494_fu_98 <= 12'd0;
        end else if (((icmp_ln674_reg_636 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten494_fu_98 <= select_ln676_1_fu_357_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten508_fu_106 <= 15'd0;
        end else if (((icmp_ln674_reg_636 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten508_fu_106 <= select_ln675_1_fu_371_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln674_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten532_fu_114 <= add_ln674_1_fu_210_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten532_fu_114 <= 22'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v294_fu_110 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v294_fu_110 <= select_ln674_1_fu_411_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v295_fu_102 <= 4'd0;
        end else if (((icmp_ln674_reg_636 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v295_fu_102 <= select_ln675_fu_307_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v296_fu_94 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v296_fu_94 <= select_ln676_fu_435_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v297_fu_90 <= 8'd0;
        end else if (((icmp_ln674_reg_636 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v297_fu_90 <= add_ln678_fu_339_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v300_fu_86 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
            v300_fu_86 <= grp_fu_570_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln677_1_reg_680 <= add_ln677_1_fu_486_p2;
        add_ln677_1_reg_680_pp0_iter3_reg <= add_ln677_1_reg_680;
        add_ln677_1_reg_680_pp0_iter4_reg <= add_ln677_1_reg_680_pp0_iter3_reg;
        add_ln677_1_reg_680_pp0_iter5_reg <= add_ln677_1_reg_680_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        empty_83_reg_661_pp0_iter2_reg <= empty_83_reg_661;
        empty_83_reg_661_pp0_iter3_reg <= empty_83_reg_661_pp0_iter2_reg;
        empty_83_reg_661_pp0_iter4_reg <= empty_83_reg_661_pp0_iter3_reg;
        icmp_ln678_1_reg_676_pp0_iter2_reg <= icmp_ln678_1_reg_676;
        icmp_ln678_1_reg_676_pp0_iter3_reg <= icmp_ln678_1_reg_676_pp0_iter2_reg;
        icmp_ln678_1_reg_676_pp0_iter4_reg <= icmp_ln678_1_reg_676_pp0_iter3_reg;
        icmp_ln678_1_reg_676_pp0_iter5_reg <= icmp_ln678_1_reg_676_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_83_reg_661 <= empty_83_fu_321_p2;
        empty_84_reg_671 <= empty_84_fu_335_p1;
        empty_reg_645 <= empty_fu_277_p2;
        icmp_ln674_reg_636 <= icmp_ln674_fu_204_p2;
        icmp_ln675_reg_640 <= icmp_ln675_fu_233_p2;
        icmp_ln678_1_reg_676 <= icmp_ln678_1_fu_345_p2;
        icmp_ln678_mid2507_reg_650 <= icmp_ln678_mid2507_fu_301_p2;
        select_ln675_reg_655 <= select_ln675_fu_307_p3;
        v297_mid2_reg_666 <= v297_mid2_fu_327_p3;
    end
end
always @ (*) begin
    if (((icmp_ln674_fu_204_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln674_reg_636 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten532_load = 22'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten532_load = indvar_flatten532_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        ap_sig_allocacmp_v300_load = grp_fu_570_p3;
    end else begin
        ap_sig_allocacmp_v300_load = v300_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v79_ce1_local = 1'b1;
    end else begin
        v79_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln678_1_reg_676_pp0_iter5_reg == 1'd1))) begin
        v79_we1_local = 1'b1;
    end else begin
        v79_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v80_ce0_local = 1'b1;
    end else begin
        v80_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9_EN_A_local = 1'b1;
    end else begin
        v9_EN_A_local = 1'b0;
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
assign add_ln674_1_fu_210_p2 = (ap_sig_allocacmp_indvar_flatten532_load + 22'd1);
assign add_ln674_fu_405_p2 = (v294_fu_110 + 9'd1);
assign add_ln675_1_fu_365_p2 = (indvar_flatten508_fu_106 + 15'd1);
assign add_ln675_fu_271_p2 = (select_ln674_fu_239_p3 + 4'd1);
assign add_ln676_1_fu_351_p2 = (indvar_flatten494_fu_98 + 12'd1);
assign add_ln676_fu_429_p2 = (v296_mid2501_fu_422_p3 + 4'd1);
assign add_ln677_1_fu_486_p2 = (tmp_fu_470_p3 + zext_ln677_3_fu_482_p1);
assign add_ln677_fu_464_p2 = (tmp_10_fu_450_p3 + zext_ln677_1_fu_461_p1);
assign add_ln678_fu_339_p2 = (v297_mid2_fu_327_p3 + 8'd1);
assign add_ln679_1_fu_527_p2 = (tmp_40_fu_519_p3 + zext_ln677_2_fu_478_p1);
assign add_ln679_fu_513_p2 = (tmp_11_fu_506_p3 + zext_ln677_fu_458_p1);
assign add_ln680_fu_495_p2 = (tmp_s_fu_442_p3 + zext_ln680_fu_492_p1);
assign and_ln674_1_fu_265_p2 = (xor_ln674_fu_247_p2 & icmp_ln676_fu_259_p2);
assign and_ln674_fu_295_p2 = (xor_ln674_fu_247_p2 & icmp_ln678_fu_253_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_82_fu_315_p2 = (icmp_ln678_mid2507_fu_301_p2 | and_ln674_1_fu_265_p2);
assign empty_83_fu_321_p2 = (icmp_ln675_fu_233_p2 | empty_82_fu_315_p2);
assign empty_84_fu_335_p1 = v297_mid2_fu_327_p3[6:0];
assign empty_fu_277_p2 = (icmp_ln675_fu_233_p2 | and_ln674_1_fu_265_p2);
assign exitcond_flatten496_not_fu_283_p2 = (icmp_ln676_fu_259_p2 ^ 1'd1);
assign grp_fu_570_p1 = grp_fu_570_p10;
assign grp_fu_570_p10 = v80_q0;
assign grp_fu_570_p2 = ((empty_83_reg_661_pp0_iter4_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v300_load);
assign icmp_ln674_fu_204_p2 = ((ap_sig_allocacmp_indvar_flatten532_load == 22'd2097152) ? 1'b1 : 1'b0);
assign icmp_ln675_fu_233_p2 = ((indvar_flatten508_fu_106 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln676_fu_259_p2 = ((indvar_flatten494_fu_98 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln678_1_fu_345_p2 = ((add_ln678_fu_339_p2 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln678_fu_253_p2 = ((v297_fu_90 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln678_mid2507_fu_301_p2 = (not_exitcond_flatten496_mid2531_fu_289_p2 & and_ln674_fu_295_p2);
assign not_exitcond_flatten496_mid2531_fu_289_p2 = (icmp_ln675_fu_233_p2 | exitcond_flatten496_not_fu_283_p2);
assign select_ln674_1_fu_411_p3 = ((icmp_ln675_reg_640[0:0] == 1'b1) ? add_ln674_fu_405_p2 : v294_fu_110);
assign select_ln674_fu_239_p3 = ((icmp_ln675_fu_233_p2[0:0] == 1'b1) ? 4'd0 : v295_fu_102);
assign select_ln675_1_fu_371_p3 = ((icmp_ln675_fu_233_p2[0:0] == 1'b1) ? 15'd1 : add_ln675_1_fu_365_p2);
assign select_ln675_fu_307_p3 = ((and_ln674_1_fu_265_p2[0:0] == 1'b1) ? add_ln675_fu_271_p2 : select_ln674_fu_239_p3);
assign select_ln676_1_fu_357_p3 = ((empty_fu_277_p2[0:0] == 1'b1) ? 12'd1 : add_ln676_1_fu_351_p2);
assign select_ln676_fu_435_p3 = ((icmp_ln678_mid2507_reg_650[0:0] == 1'b1) ? add_ln676_fu_429_p2 : v296_mid2501_fu_422_p3);
assign tmp_10_fu_450_p3 = {{trunc_ln675_fu_418_p1}, {3'd0}};
assign tmp_11_fu_506_p3 = {{empty_84_reg_671}, {3'd0}};
assign tmp_40_fu_519_p3 = {{add_ln679_fu_513_p2}, {3'd0}};
assign tmp_fu_470_p3 = {{add_ln677_fu_464_p2}, {3'd0}};
assign tmp_s_fu_442_p3 = {{trunc_ln675_fu_418_p1}, {7'd0}};
assign trunc_ln675_fu_418_p1 = select_ln674_1_fu_411_p3[7:0];
assign v296_mid2501_fu_422_p3 = ((empty_reg_645[0:0] == 1'b1) ? 4'd0 : v296_fu_94);
assign v297_mid2_fu_327_p3 = ((empty_83_fu_321_p2[0:0] == 1'b1) ? 8'd0 : v297_fu_90);
assign v79_address1 = zext_ln677_4_fu_562_p1;
assign v79_ce1 = v79_ce1_local;
assign v79_d1 = grp_fu_570_p3;
assign v79_we1 = v79_we1_local;
assign v80_address0 = zext_ln679_1_fu_533_p1;
assign v80_ce0 = v80_ce0_local;
assign v9_Addr_A = v9_Addr_A_orig << 32'd0;
assign v9_Addr_A_orig = zext_ln680_1_fu_501_p1;
assign v9_Din_A = 8'd0;
assign v9_EN_A = v9_EN_A_local;
assign v9_WEN_A = 1'd0;
assign xor_ln674_fu_247_p2 = (icmp_ln675_fu_233_p2 ^ 1'd1);
assign zext_ln677_1_fu_461_p1 = select_ln675_reg_655;
assign zext_ln677_2_fu_478_p1 = select_ln676_fu_435_p3;
assign zext_ln677_3_fu_482_p1 = select_ln676_fu_435_p3;
assign zext_ln677_4_fu_562_p1 = add_ln677_1_reg_680_pp0_iter5_reg;
assign zext_ln677_fu_458_p1 = select_ln675_reg_655;
assign zext_ln679_1_fu_533_p1 = add_ln679_1_fu_527_p2;
assign zext_ln680_1_fu_501_p1 = add_ln680_fu_495_p2;
assign zext_ln680_fu_492_p1 = v297_mid2_reg_666;
endmodule 