
module main_graph_main_graph_Pipeline_VITIS_LOOP_599_72_VITIS_LOOP_600_73_VITIS_LOOP_601_74_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v84_address1,v84_ce1,v84_we1,v84_d1,v7_Addr_A,v7_EN_A,v7_WEN_A,v7_Din_A,v7_Dout_A,v85_address0,v85_ce0,v85_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v84_address1;
output   v84_ce1;
output   v84_we1;
output  [7:0] v84_d1;
output  [31:0] v7_Addr_A;
output   v7_EN_A;
output  [0:0] v7_WEN_A;
output  [7:0] v7_Din_A;
input  [7:0] v7_Dout_A;
output  [14:0] v85_address0;
output   v85_ce0;
input  [6:0] v85_q0;
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
wire   [0:0] icmp_ln599_fu_196_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln599_reg_621;
wire   [0:0] icmp_ln600_fu_225_p2;
reg   [0:0] icmp_ln600_reg_625;
wire   [0:0] empty_fu_269_p2;
reg   [0:0] empty_reg_630;
wire   [0:0] icmp_ln603_mid2360_fu_293_p2;
reg   [0:0] icmp_ln603_mid2360_reg_635;
wire   [4:0] select_ln600_fu_299_p3;
reg   [4:0] select_ln600_reg_640;
wire   [0:0] empty_102_fu_313_p2;
reg   [0:0] empty_102_reg_645;
reg   [0:0] empty_102_reg_645_pp0_iter2_reg;
reg   [0:0] empty_102_reg_645_pp0_iter3_reg;
reg   [0:0] empty_102_reg_645_pp0_iter4_reg;
wire   [7:0] v251_mid2_fu_319_p3;
reg   [7:0] v251_mid2_reg_650;
wire   [6:0] empty_103_fu_327_p1;
reg   [6:0] empty_103_reg_655;
wire   [0:0] icmp_ln603_1_fu_337_p2;
reg   [0:0] icmp_ln603_1_reg_660;
reg   [0:0] icmp_ln603_1_reg_660_pp0_iter2_reg;
reg   [0:0] icmp_ln603_1_reg_660_pp0_iter3_reg;
reg   [0:0] icmp_ln603_1_reg_660_pp0_iter4_reg;
reg   [0:0] icmp_ln603_1_reg_660_pp0_iter5_reg;
wire   [14:0] add_ln602_1_fu_471_p2;
reg   [14:0] add_ln602_1_reg_664;
reg   [14:0] add_ln602_1_reg_664_pp0_iter3_reg;
reg   [14:0] add_ln602_1_reg_664_pp0_iter4_reg;
reg   [14:0] add_ln602_1_reg_664_pp0_iter5_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln605_1_fu_486_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln604_1_fu_518_p1;
wire   [63:0] zext_ln602_2_fu_547_p1;
reg   [7:0] v254_fu_78;
wire   [7:0] grp_fu_555_p3;
reg   [7:0] ap_sig_allocacmp_v254_load;
wire    ap_loop_init;
reg   [7:0] v251_fu_82;
wire   [7:0] add_ln603_fu_331_p2;
reg   [4:0] v250_fu_86;
wire   [4:0] select_ln601_fu_427_p3;
reg   [12:0] indvar_flatten347_fu_90;
wire   [12:0] select_ln601_1_fu_349_p3;
reg   [4:0] v249_fu_94;
reg   [16:0] indvar_flatten361_fu_98;
wire   [16:0] select_ln600_1_fu_363_p3;
reg   [7:0] v248_fu_102;
wire   [7:0] select_ln599_1_fu_403_p3;
reg   [22:0] indvar_flatten385_fu_106;
wire   [22:0] add_ln599_1_fu_202_p2;
reg   [22:0] ap_sig_allocacmp_indvar_flatten385_load;
reg    v85_ce0_local;
reg    v7_EN_A_local;
wire   [31:0] v7_Addr_A_orig;
reg    v84_we1_local;
reg    v84_ce1_local;
wire   [0:0] icmp_ln601_fu_251_p2;
wire   [0:0] xor_ln599_fu_239_p2;
wire   [4:0] select_ln599_fu_231_p3;
wire   [0:0] and_ln599_1_fu_257_p2;
wire   [0:0] exitcond_flatten349_not_fu_275_p2;
wire   [0:0] icmp_ln603_fu_245_p2;
wire   [0:0] and_ln599_fu_287_p2;
wire   [0:0] not_exitcond_flatten349_mid2384_fu_281_p2;
wire   [4:0] add_ln600_fu_263_p2;
wire   [0:0] empty_101_fu_307_p2;
wire   [12:0] add_ln601_1_fu_343_p2;
wire   [16:0] add_ln600_1_fu_357_p2;
wire   [7:0] add_ln599_fu_397_p2;
wire   [4:0] v250_mid2354_fu_414_p3;
wire   [4:0] add_ln601_fu_421_p2;
wire   [6:0] trunc_ln600_fu_410_p1;
wire   [10:0] tmp_13_fu_442_p3;
wire   [10:0] zext_ln602_fu_450_p1;
wire   [10:0] add_ln602_fu_453_p2;
wire   [14:0] tmp_fu_459_p3;
wire   [14:0] zext_ln602_1_fu_467_p1;
wire   [13:0] tmp_s_fu_434_p3;
wire   [13:0] zext_ln605_fu_477_p1;
wire   [13:0] add_ln605_fu_480_p2;
wire   [10:0] tmp_14_fu_491_p3;
wire   [10:0] add_ln604_fu_498_p2;
wire   [14:0] tmp_54_fu_504_p3;
wire   [14:0] add_ln604_1_fu_512_p2;
wire   [6:0] grp_fu_555_p1;
wire   [7:0] grp_fu_555_p2;
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
wire   [7:0] grp_fu_555_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v254_fu_78 = 8'd0;
#0 v251_fu_82 = 8'd0;
#0 v250_fu_86 = 5'd0;
#0 indvar_flatten347_fu_90 = 13'd0;
#0 v249_fu_94 = 5'd0;
#0 indvar_flatten361_fu_98 = 17'd0;
#0 v248_fu_102 = 8'd0;
#0 indvar_flatten385_fu_106 = 23'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(v7_Dout_A),.din1(grp_fu_555_p1),.din2(grp_fu_555_p2),.ce(1'b1),.dout(grp_fu_555_p3));
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
            indvar_flatten347_fu_90 <= 13'd0;
        end else if (((icmp_ln599_reg_621 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten347_fu_90 <= select_ln601_1_fu_349_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten361_fu_98 <= 17'd0;
        end else if (((icmp_ln599_reg_621 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten361_fu_98 <= select_ln600_1_fu_363_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln599_fu_196_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten385_fu_106 <= add_ln599_1_fu_202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten385_fu_106 <= 23'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v248_fu_102 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v248_fu_102 <= select_ln599_1_fu_403_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v249_fu_94 <= 5'd0;
        end else if (((icmp_ln599_reg_621 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v249_fu_94 <= select_ln600_fu_299_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v250_fu_86 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v250_fu_86 <= select_ln601_fu_427_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v251_fu_82 <= 8'd0;
        end else if (((icmp_ln599_reg_621 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v251_fu_82 <= add_ln603_fu_331_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v254_fu_78 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
            v254_fu_78 <= grp_fu_555_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln602_1_reg_664 <= add_ln602_1_fu_471_p2;
        add_ln602_1_reg_664_pp0_iter3_reg <= add_ln602_1_reg_664;
        add_ln602_1_reg_664_pp0_iter4_reg <= add_ln602_1_reg_664_pp0_iter3_reg;
        add_ln602_1_reg_664_pp0_iter5_reg <= add_ln602_1_reg_664_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        empty_102_reg_645_pp0_iter2_reg <= empty_102_reg_645;
        empty_102_reg_645_pp0_iter3_reg <= empty_102_reg_645_pp0_iter2_reg;
        empty_102_reg_645_pp0_iter4_reg <= empty_102_reg_645_pp0_iter3_reg;
        icmp_ln603_1_reg_660_pp0_iter2_reg <= icmp_ln603_1_reg_660;
        icmp_ln603_1_reg_660_pp0_iter3_reg <= icmp_ln603_1_reg_660_pp0_iter2_reg;
        icmp_ln603_1_reg_660_pp0_iter4_reg <= icmp_ln603_1_reg_660_pp0_iter3_reg;
        icmp_ln603_1_reg_660_pp0_iter5_reg <= icmp_ln603_1_reg_660_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_102_reg_645 <= empty_102_fu_313_p2;
        empty_103_reg_655 <= empty_103_fu_327_p1;
        empty_reg_630 <= empty_fu_269_p2;
        icmp_ln599_reg_621 <= icmp_ln599_fu_196_p2;
        icmp_ln600_reg_625 <= icmp_ln600_fu_225_p2;
        icmp_ln603_1_reg_660 <= icmp_ln603_1_fu_337_p2;
        icmp_ln603_mid2360_reg_635 <= icmp_ln603_mid2360_fu_293_p2;
        select_ln600_reg_640 <= select_ln600_fu_299_p3;
        v251_mid2_reg_650 <= v251_mid2_fu_319_p3;
    end
end
always @ (*) begin
    if (((icmp_ln599_fu_196_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln599_reg_621 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten385_load = 23'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten385_load = indvar_flatten385_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        ap_sig_allocacmp_v254_load = grp_fu_555_p3;
    end else begin
        ap_sig_allocacmp_v254_load = v254_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7_EN_A_local = 1'b1;
    end else begin
        v7_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v84_ce1_local = 1'b1;
    end else begin
        v84_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln603_1_reg_660_pp0_iter5_reg == 1'd1))) begin
        v84_we1_local = 1'b1;
    end else begin
        v84_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v85_ce0_local = 1'b1;
    end else begin
        v85_ce0_local = 1'b0;
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
assign add_ln599_1_fu_202_p2 = (ap_sig_allocacmp_indvar_flatten385_load + 23'd1);
assign add_ln599_fu_397_p2 = (v248_fu_102 + 8'd1);
assign add_ln600_1_fu_357_p2 = (indvar_flatten361_fu_98 + 17'd1);
assign add_ln600_fu_263_p2 = (select_ln599_fu_231_p3 + 5'd1);
assign add_ln601_1_fu_343_p2 = (indvar_flatten347_fu_90 + 13'd1);
assign add_ln601_fu_421_p2 = (v250_mid2354_fu_414_p3 + 5'd1);
assign add_ln602_1_fu_471_p2 = (tmp_fu_459_p3 + zext_ln602_1_fu_467_p1);
assign add_ln602_fu_453_p2 = (tmp_13_fu_442_p3 + zext_ln602_fu_450_p1);
assign add_ln603_fu_331_p2 = (v251_mid2_fu_319_p3 + 8'd1);
assign add_ln604_1_fu_512_p2 = (tmp_54_fu_504_p3 + zext_ln602_1_fu_467_p1);
assign add_ln604_fu_498_p2 = (tmp_14_fu_491_p3 + zext_ln602_fu_450_p1);
assign add_ln605_fu_480_p2 = (tmp_s_fu_434_p3 + zext_ln605_fu_477_p1);
assign and_ln599_1_fu_257_p2 = (xor_ln599_fu_239_p2 & icmp_ln601_fu_251_p2);
assign and_ln599_fu_287_p2 = (xor_ln599_fu_239_p2 & icmp_ln603_fu_245_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_101_fu_307_p2 = (icmp_ln603_mid2360_fu_293_p2 | and_ln599_1_fu_257_p2);
assign empty_102_fu_313_p2 = (icmp_ln600_fu_225_p2 | empty_101_fu_307_p2);
assign empty_103_fu_327_p1 = v251_mid2_fu_319_p3[6:0];
assign empty_fu_269_p2 = (icmp_ln600_fu_225_p2 | and_ln599_1_fu_257_p2);
assign exitcond_flatten349_not_fu_275_p2 = (icmp_ln601_fu_251_p2 ^ 1'd1);
assign grp_fu_555_p1 = grp_fu_555_p10;
assign grp_fu_555_p10 = v85_q0;
assign grp_fu_555_p2 = ((empty_102_reg_645_pp0_iter4_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v254_load);
assign icmp_ln599_fu_196_p2 = ((ap_sig_allocacmp_indvar_flatten385_load == 23'd4194304) ? 1'b1 : 1'b0);
assign icmp_ln600_fu_225_p2 = ((indvar_flatten361_fu_98 == 17'd32768) ? 1'b1 : 1'b0);
assign icmp_ln601_fu_251_p2 = ((indvar_flatten347_fu_90 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln603_1_fu_337_p2 = ((add_ln603_fu_331_p2 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln603_fu_245_p2 = ((v251_fu_82 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln603_mid2360_fu_293_p2 = (not_exitcond_flatten349_mid2384_fu_281_p2 & and_ln599_fu_287_p2);
assign not_exitcond_flatten349_mid2384_fu_281_p2 = (icmp_ln600_fu_225_p2 | exitcond_flatten349_not_fu_275_p2);
assign select_ln599_1_fu_403_p3 = ((icmp_ln600_reg_625[0:0] == 1'b1) ? add_ln599_fu_397_p2 : v248_fu_102);
assign select_ln599_fu_231_p3 = ((icmp_ln600_fu_225_p2[0:0] == 1'b1) ? 5'd0 : v249_fu_94);
assign select_ln600_1_fu_363_p3 = ((icmp_ln600_fu_225_p2[0:0] == 1'b1) ? 17'd1 : add_ln600_1_fu_357_p2);
assign select_ln600_fu_299_p3 = ((and_ln599_1_fu_257_p2[0:0] == 1'b1) ? add_ln600_fu_263_p2 : select_ln599_fu_231_p3);
assign select_ln601_1_fu_349_p3 = ((empty_fu_269_p2[0:0] == 1'b1) ? 13'd1 : add_ln601_1_fu_343_p2);
assign select_ln601_fu_427_p3 = ((icmp_ln603_mid2360_reg_635[0:0] == 1'b1) ? add_ln601_fu_421_p2 : v250_mid2354_fu_414_p3);
assign tmp_13_fu_442_p3 = {{trunc_ln600_fu_410_p1}, {4'd0}};
assign tmp_14_fu_491_p3 = {{empty_103_reg_655}, {4'd0}};
assign tmp_54_fu_504_p3 = {{add_ln604_fu_498_p2}, {4'd0}};
assign tmp_fu_459_p3 = {{add_ln602_fu_453_p2}, {4'd0}};
assign tmp_s_fu_434_p3 = {{trunc_ln600_fu_410_p1}, {7'd0}};
assign trunc_ln600_fu_410_p1 = select_ln599_1_fu_403_p3[6:0];
assign v250_mid2354_fu_414_p3 = ((empty_reg_630[0:0] == 1'b1) ? 5'd0 : v250_fu_86);
assign v251_mid2_fu_319_p3 = ((empty_102_fu_313_p2[0:0] == 1'b1) ? 8'd0 : v251_fu_82);
assign v7_Addr_A = v7_Addr_A_orig << 32'd0;
assign v7_Addr_A_orig = zext_ln605_1_fu_486_p1;
assign v7_Din_A = 8'd0;
assign v7_EN_A = v7_EN_A_local;
assign v7_WEN_A = 1'd0;
assign v84_address1 = zext_ln602_2_fu_547_p1;
assign v84_ce1 = v84_ce1_local;
assign v84_d1 = grp_fu_555_p3;
assign v84_we1 = v84_we1_local;
assign v85_address0 = zext_ln604_1_fu_518_p1;
assign v85_ce0 = v85_ce0_local;
assign xor_ln599_fu_239_p2 = (icmp_ln600_fu_225_p2 ^ 1'd1);
assign zext_ln602_1_fu_467_p1 = select_ln601_fu_427_p3;
assign zext_ln602_2_fu_547_p1 = add_ln602_1_reg_664_pp0_iter5_reg;
assign zext_ln602_fu_450_p1 = select_ln600_reg_640;
assign zext_ln604_1_fu_518_p1 = add_ln604_1_fu_512_p2;
assign zext_ln605_1_fu_486_p1 = add_ln605_fu_480_p2;
assign zext_ln605_fu_477_p1 = v251_mid2_reg_650;
endmodule 
