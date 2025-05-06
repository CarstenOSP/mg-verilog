
module forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_273,v40_0_address0,v40_0_ce0,v40_0_q0,v40_1_address0,v40_1_ce0,v40_1_q0,mul39_i_i,v49_1_address0,v49_1_ce0,v49_1_q0,v49_address0,v49_ce0,v49_q0,mul_ln99,v48_address0,v48_ce0,v48_we0,v48_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [7:0] tmp_273;
output  [7:0] v40_0_address0;
output   v40_0_ce0;
input  [7:0] v40_0_q0;
output  [7:0] v40_1_address0;
output   v40_1_ce0;
input  [7:0] v40_1_q0;
input  [9:0] mul39_i_i;
output  [8:0] v49_1_address0;
output   v49_1_ce0;
input  [7:0] v49_1_q0;
output  [8:0] v49_address0;
output   v49_ce0;
input  [7:0] v49_q0;
input  [9:0] mul_ln99;
output  [4:0] v48_address0;
output   v48_ce0;
output   v48_we0;
output  [7:0] v48_d0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln57_fu_326_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] v9385_address0;
wire   [7:0] v9385_q0;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln57_fu_258_p3;
reg   [4:0] select_ln57_reg_478;
reg   [4:0] select_ln57_reg_478_pp0_iter1_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter2_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter3_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter4_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter5_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter6_reg;
reg   [4:0] select_ln57_reg_478_pp0_iter7_reg;
wire   [5:0] v12_fu_266_p3;
reg   [5:0] v12_reg_485;
reg   [5:0] v12_reg_485_pp0_iter1_reg;
reg   [5:0] v12_reg_485_pp0_iter2_reg;
reg   [5:0] v12_reg_485_pp0_iter3_reg;
wire   [4:0] lshr_ln57_fu_274_p4;
reg   [4:0] lshr_ln57_reg_490;
reg   [4:0] lshr_ln57_reg_490_pp0_iter1_reg;
reg   [4:0] lshr_ln57_reg_490_pp0_iter2_reg;
wire   [0:0] cmp42_i_i_fu_302_p2;
reg   [0:0] cmp42_i_i_reg_500;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter1_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter2_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter3_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter4_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter5_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter6_reg;
reg   [0:0] cmp42_i_i_reg_500_pp0_iter7_reg;
wire   [0:0] icmp_ln59_fu_320_p2;
reg   [0:0] icmp_ln59_reg_504;
reg   [0:0] icmp_ln57_reg_509;
wire   [63:0] zext_ln62_1_fu_363_p1;
reg   [63:0] zext_ln62_1_reg_523;
wire   [7:0] mul_ln73_fu_390_p2;
reg   [7:0] mul_ln73_reg_553;
wire   [63:0] zext_ln70_fu_404_p1;
reg   [63:0] zext_ln70_reg_558;
reg   [9:0] v44_addr_reg_563;
(* use_dsp48 = "no" *) wire   [7:0] v26_fu_409_p2;
reg   [7:0] v26_reg_569;
wire   [9:0] v44_address1;
wire   [7:0] v44_q1;
reg   [0:0] ap_phi_mux_icmp_ln5942_phi_fu_221_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast9_i_fu_358_p1;
wire   [63:0] p_cast10_i_fu_385_p1;
wire   [63:0] zext_ln59_fu_415_p1;
reg   [8:0] indvar_flatten39_fu_84;
wire   [8:0] add_ln57_1_fu_308_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten39_load;
reg   [5:0] v1240_fu_88;
reg   [5:0] ap_sig_allocacmp_v1240_load;
reg   [4:0] v1341_fu_92;
wire   [4:0] v13_fu_314_p2;
reg   [4:0] ap_sig_allocacmp_v1341_load;
reg    v40_0_ce0_local;
reg    v49_1_ce0_local;
reg    v40_1_ce0_local;
reg    v49_ce0_local;
reg    v44_ce1_local;
reg    v44_we0_local;
reg    v44_ce0_local;
reg    v9385_ce0_local;
reg    v48_we0_local;
wire   [7:0] v31_fu_419_p2;
reg    v48_ce0_local;
wire   [5:0] add_ln57_fu_252_p2;
wire   [4:0] empty_371_fu_288_p1;
wire   [9:0] v12_cast4_cast_i_fu_292_p1;
wire   [9:0] empty_372_fu_296_p2;
wire   [7:0] zext_ln57_1_fu_350_p1;
wire   [7:0] empty_370_fu_353_p2;
wire   [8:0] grp_fu_425_p3;
wire   [8:0] zext_ln57_fu_367_p1;
wire   [8:0] empty_fu_370_p2;
wire   [7:0] tmp_s_fu_375_p4;
wire   [9:0] zext_ln59_1_fu_396_p1;
wire   [9:0] add_ln70_fu_399_p2;
wire  signed [7:0] v26_fu_409_p0;
wire   [7:0] grp_fu_434_p3;
wire   [4:0] grp_fu_425_p0;
wire   [4:0] grp_fu_425_p1;
wire   [4:0] grp_fu_425_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_425_p00;
wire   [8:0] grp_fu_425_p20;
reg    ap_condition_473;
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
#0 indvar_flatten39_fu_84 = 9'd0;
#0 v1240_fu_88 = 6'd0;
#0 v1341_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LObkb #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v9385_U(.clk(ap_clk),.reset(ap_rst),.address0(v9385_address0),.ce0(v9385_ce0_local),.q0(v9385_q0));
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOcud #(.DataWidth( 8 ),.AddressRange( 1000 ),.AddressWidth( 10 ))
v44_U(.clk(ap_clk),.reset(ap_rst),.address0(v44_addr_reg_563),.ce0(v44_ce0_local),.we0(v44_we0_local),.d0(v26_fu_409_p2),.address1(v44_address1),.ce1(v44_ce1_local),.q1(v44_q1));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U12978(.din0(v49_q0),.din1(v40_1_q0),.dout(mul_ln73_fu_390_p2));
forward_mac_muladd_5ns_5ns_5ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 9 ))
mac_muladd_5ns_5ns_5ns_9_4_1_U12979(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_425_p0),.din1(grp_fu_425_p1),.din2(grp_fu_425_p2),.ce(1'b1),.dout(grp_fu_425_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U12980(.clk(ap_clk),.reset(ap_rst),.din0(v49_1_q0),.din1(v40_0_q0),.din2(mul_ln73_reg_553),.ce(1'b1),.dout(grp_fu_434_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten39_fu_84 <= add_ln57_1_fu_308_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten39_fu_84 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1240_fu_88 <= v12_fu_266_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1240_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1341_fu_92 <= v13_fu_314_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1341_fu_92 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp42_i_i_reg_500 <= cmp42_i_i_fu_302_p2;
        cmp42_i_i_reg_500_pp0_iter1_reg <= cmp42_i_i_reg_500;
        icmp_ln57_reg_509 <= icmp_ln57_fu_326_p2;
        lshr_ln57_reg_490 <= {{v12_fu_266_p3[5:1]}};
        lshr_ln57_reg_490_pp0_iter1_reg <= lshr_ln57_reg_490;
        select_ln57_reg_478 <= select_ln57_fu_258_p3;
        select_ln57_reg_478_pp0_iter1_reg <= select_ln57_reg_478;
        v12_reg_485 <= v12_fu_266_p3;
        v12_reg_485_pp0_iter1_reg <= v12_reg_485;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        cmp42_i_i_reg_500_pp0_iter2_reg <= cmp42_i_i_reg_500_pp0_iter1_reg;
        cmp42_i_i_reg_500_pp0_iter3_reg <= cmp42_i_i_reg_500_pp0_iter2_reg;
        cmp42_i_i_reg_500_pp0_iter4_reg <= cmp42_i_i_reg_500_pp0_iter3_reg;
        cmp42_i_i_reg_500_pp0_iter5_reg <= cmp42_i_i_reg_500_pp0_iter4_reg;
        cmp42_i_i_reg_500_pp0_iter6_reg <= cmp42_i_i_reg_500_pp0_iter5_reg;
        cmp42_i_i_reg_500_pp0_iter7_reg <= cmp42_i_i_reg_500_pp0_iter6_reg;
        lshr_ln57_reg_490_pp0_iter2_reg <= lshr_ln57_reg_490_pp0_iter1_reg;
        mul_ln73_reg_553 <= mul_ln73_fu_390_p2;
        select_ln57_reg_478_pp0_iter2_reg <= select_ln57_reg_478_pp0_iter1_reg;
        select_ln57_reg_478_pp0_iter3_reg <= select_ln57_reg_478_pp0_iter2_reg;
        select_ln57_reg_478_pp0_iter4_reg <= select_ln57_reg_478_pp0_iter3_reg;
        select_ln57_reg_478_pp0_iter5_reg <= select_ln57_reg_478_pp0_iter4_reg;
        select_ln57_reg_478_pp0_iter6_reg <= select_ln57_reg_478_pp0_iter5_reg;
        select_ln57_reg_478_pp0_iter7_reg <= select_ln57_reg_478_pp0_iter6_reg;
        v12_reg_485_pp0_iter2_reg <= v12_reg_485_pp0_iter1_reg;
        v12_reg_485_pp0_iter3_reg <= v12_reg_485_pp0_iter2_reg;
        v26_reg_569 <= v26_fu_409_p2;
        v44_addr_reg_563 <= zext_ln70_fu_404_p1;
        zext_ln62_1_reg_523[8 : 0] <= zext_ln62_1_fu_363_p1[8 : 0];
        zext_ln70_reg_558[9 : 0] <= zext_ln70_fu_404_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln59_reg_504 <= icmp_ln59_fu_320_p2;
    end
end
always @ (*) begin
    if (((icmp_ln57_fu_326_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_473)) begin
            ap_phi_mux_icmp_ln5942_phi_fu_221_p4 = icmp_ln59_reg_504;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5942_phi_fu_221_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5942_phi_fu_221_p4 = icmp_ln59_reg_504;
        end
    end else begin
        ap_phi_mux_icmp_ln5942_phi_fu_221_p4 = icmp_ln59_reg_504;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten39_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten39_load = indvar_flatten39_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1240_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1240_load = v1240_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1341_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1341_load = v1341_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v40_0_ce0_local = 1'b1;
    end else begin
        v40_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v40_1_ce0_local = 1'b1;
    end else begin
        v40_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v44_ce0_local = 1'b1;
    end else begin
        v44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v44_ce1_local = 1'b1;
    end else begin
        v44_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v44_we0_local = 1'b1;
    end else begin
        v44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v48_ce0_local = 1'b1;
    end else begin
        v48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (cmp42_i_i_reg_500_pp0_iter7_reg == 1'd1))) begin
        v48_we0_local = 1'b1;
    end else begin
        v48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v49_1_ce0_local = 1'b1;
    end else begin
        v49_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v49_ce0_local = 1'b1;
    end else begin
        v49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v9385_ce0_local = 1'b1;
    end else begin
        v9385_ce0_local = 1'b0;
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
assign add_ln57_1_fu_308_p2 = (ap_sig_allocacmp_indvar_flatten39_load + 9'd1);
assign add_ln57_fu_252_p2 = (ap_sig_allocacmp_v1240_load + 6'd2);
assign add_ln70_fu_399_p2 = (mul_ln99 + zext_ln59_1_fu_396_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_473 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln57_reg_509 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cmp42_i_i_fu_302_p2 = ((empty_372_fu_296_p2 == 10'd514) ? 1'b1 : 1'b0);
assign empty_370_fu_353_p2 = (tmp_273 + zext_ln57_1_fu_350_p1);
assign empty_371_fu_288_p1 = v12_fu_266_p3[4:0];
assign empty_372_fu_296_p2 = (mul39_i_i - v12_cast4_cast_i_fu_292_p1);
assign empty_fu_370_p2 = (mul_i + zext_ln57_fu_367_p1);
assign grp_fu_425_p0 = grp_fu_425_p00;
assign grp_fu_425_p00 = lshr_ln57_fu_274_p4;
assign grp_fu_425_p1 = 9'd25;
assign grp_fu_425_p2 = grp_fu_425_p20;
assign grp_fu_425_p20 = select_ln57_reg_478_pp0_iter1_reg;
assign icmp_ln57_fu_326_p2 = ((ap_sig_allocacmp_indvar_flatten39_load == 9'd399) ? 1'b1 : 1'b0);
assign icmp_ln59_fu_320_p2 = ((v13_fu_314_p2 == 5'd25) ? 1'b1 : 1'b0);
assign lshr_ln57_fu_274_p4 = {{v12_fu_266_p3[5:1]}};
assign p_cast10_i_fu_385_p1 = tmp_s_fu_375_p4;
assign p_cast9_i_fu_358_p1 = empty_370_fu_353_p2;
assign select_ln57_fu_258_p3 = ((ap_phi_mux_icmp_ln5942_phi_fu_221_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1341_load);
assign tmp_s_fu_375_p4 = {{empty_fu_370_p2[8:1]}};
assign v12_cast4_cast_i_fu_292_p1 = empty_371_fu_288_p1;
assign v12_fu_266_p3 = ((ap_phi_mux_icmp_ln5942_phi_fu_221_p4[0:0] == 1'b1) ? add_ln57_fu_252_p2 : ap_sig_allocacmp_v1240_load);
assign v13_fu_314_p2 = (select_ln57_fu_258_p3 + 5'd1);
assign v26_fu_409_p0 = grp_fu_434_p3;
assign v26_fu_409_p2 = ($signed(v26_fu_409_p0) + $signed(v44_q1));
assign v31_fu_419_p2 = (v9385_q0 + v26_reg_569);
assign v40_0_address0 = p_cast9_i_fu_358_p1;
assign v40_0_ce0 = v40_0_ce0_local;
assign v40_1_address0 = p_cast10_i_fu_385_p1;
assign v40_1_ce0 = v40_1_ce0_local;
assign v44_address1 = zext_ln70_fu_404_p1;
assign v48_address0 = zext_ln59_fu_415_p1;
assign v48_ce0 = v48_ce0_local;
assign v48_d0 = v31_fu_419_p2;
assign v48_we0 = v48_we0_local;
assign v49_1_address0 = zext_ln62_1_fu_363_p1;
assign v49_1_ce0 = v49_1_ce0_local;
assign v49_address0 = zext_ln62_1_reg_523;
assign v49_ce0 = v49_ce0_local;
assign v9385_address0 = zext_ln70_reg_558;
assign zext_ln57_1_fu_350_p1 = lshr_ln57_reg_490_pp0_iter2_reg;
assign zext_ln57_fu_367_p1 = v12_reg_485_pp0_iter3_reg;
assign zext_ln59_1_fu_396_p1 = select_ln57_reg_478_pp0_iter5_reg;
assign zext_ln59_fu_415_p1 = select_ln57_reg_478_pp0_iter7_reg;
assign zext_ln62_1_fu_363_p1 = grp_fu_425_p3;
assign zext_ln70_fu_404_p1 = add_ln70_fu_399_p2;
always @ (posedge ap_clk) begin
    zext_ln62_1_reg_523[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln70_reg_558[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
