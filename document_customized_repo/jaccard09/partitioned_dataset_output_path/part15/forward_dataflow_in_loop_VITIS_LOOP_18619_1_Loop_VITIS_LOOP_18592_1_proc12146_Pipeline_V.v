
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,and_ln_i,tmp_6_i,v14382_address0,v14382_ce0,v14382_we0,v14382_d0,v14382_1_address0,v14382_1_ce0,v14382_1_we0,v14382_1_d0,thr_add_udiv_i_cast_i,v16167_0_address0,v16167_0_ce0,v16167_0_q0,v16167_1_address0,v16167_1_ce0,v16167_1_q0,empty,thr_add1_cast8_i_i,v16167_2_address0,v16167_2_ce0,v16167_2_q0,v16167_3_address0,v16167_3_ce0,v16167_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] and_ln_i;
input  [7:0] tmp_6_i;
output  [12:0] v14382_address0;
output   v14382_ce0;
output   v14382_we0;
output  [7:0] v14382_d0;
output  [12:0] v14382_1_address0;
output   v14382_1_ce0;
output   v14382_1_we0;
output  [7:0] v14382_1_d0;
input  [5:0] thr_add_udiv_i_cast_i;
output  [18:0] v16167_0_address0;
output   v16167_0_ce0;
input  [7:0] v16167_0_q0;
output  [18:0] v16167_1_address0;
output   v16167_1_ce0;
input  [7:0] v16167_1_q0;
input  [0:0] empty;
input  [7:0] thr_add1_cast8_i_i;
output  [18:0] v16167_2_address0;
output   v16167_2_ce0;
input  [7:0] v16167_2_q0;
output  [18:0] v16167_3_address0;
output   v16167_3_ce0;
input  [7:0] v16167_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18592_fu_408_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1859339_i_reg_254;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] thr_add1_cast8_i_i_cast_fu_275_p1;
reg   [8:0] thr_add1_cast8_i_i_cast_reg_752;
wire   [4:0] v14367_mid2_i_fu_344_p3;
reg   [4:0] v14367_mid2_i_reg_757;
reg   [4:0] v14367_mid2_i_reg_757_pp0_iter1_reg;
wire   [4:0] select_ln18593_fu_352_p3;
reg   [4:0] select_ln18593_reg_762;
reg   [4:0] select_ln18593_reg_762_pp0_iter1_reg;
reg   [3:0] lshr_ln63_i_reg_768;
reg   [3:0] lshr_ln63_i_reg_768_pp0_iter1_reg;
wire   [0:0] icmp_ln18594_fu_396_p2;
reg   [0:0] icmp_ln18594_reg_774;
wire   [0:0] icmp_ln18593_fu_402_p2;
reg   [0:0] icmp_ln18593_reg_779;
reg   [0:0] icmp_ln18592_reg_784;
wire   [4:0] select_ln18592_2_fu_443_p3;
reg   [4:0] select_ln18592_2_reg_788;
wire   [12:0] add_ln18597_fu_502_p2;
reg   [12:0] add_ln18597_reg_794;
wire   [12:0] add_ln18599_1_fu_603_p2;
reg   [12:0] add_ln18599_1_reg_800;
reg   [0:0] ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4;
wire   [63:0] zext_ln18597_5_fu_627_p1;
wire   [63:0] zext_ln18599_6_fu_669_p1;
wire   [63:0] zext_ln18599_4_fu_675_p1;
reg   [12:0] indvar_flatten1233_i_fu_126;
wire   [12:0] add_ln18592_1_fu_390_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1233_i_load;
reg   [4:0] v1436534_i_fu_130;
reg   [8:0] indvar_flatten35_i_fu_134;
wire   [8:0] select_ln18593_1_fu_382_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten35_i_load;
reg   [4:0] v1436636_i_fu_138;
reg   [4:0] ap_sig_allocacmp_v1436636_i_load;
reg   [4:0] v1436737_i_fu_142;
wire   [4:0] add_ln18594_fu_370_p2;
reg   [4:0] ap_sig_allocacmp_v1436737_i_load;
reg    v16167_0_ce0_local;
reg    v16167_1_ce0_local;
reg    v16167_2_ce0_local;
reg    v16167_3_ce0_local;
reg    v14382_1_we0_local;
wire   [7:0] select_ln18597_fu_680_p3;
reg    v14382_1_ce0_local;
reg    v14382_we0_local;
wire   [7:0] select_ln18599_fu_688_p3;
reg    v14382_ce0_local;
wire   [4:0] select_ln18592_fu_316_p3;
wire   [0:0] or_ln18592_fu_332_p2;
wire   [4:0] select_ln18592_1_fu_324_p3;
wire   [4:0] add_ln18593_fu_338_p2;
wire   [8:0] add_ln18593_1_fu_376_p2;
wire   [4:0] add_ln18592_fu_437_p2;
wire   [4:0] empty_306_fu_451_p2;
wire   [9:0] tmp_237_fu_464_p3;
wire   [12:0] p_shl25_fu_456_p3;
wire   [12:0] zext_ln18597_fu_472_p1;
wire   [5:0] tmp_224_i_fu_482_p3;
wire   [7:0] p_cast_i_i_i_fu_489_p1;
wire   [7:0] empty_307_fu_493_p2;
wire   [12:0] sub_ln18597_fu_476_p2;
wire   [12:0] zext_ln18597_1_fu_498_p1;
wire   [6:0] tmp_236_fu_520_p3;
wire   [9:0] p_shl27_fu_513_p3;
wire   [9:0] zext_ln18599_fu_527_p1;
wire   [9:0] sub_ln18599_fu_531_p2;
wire   [9:0] zext_ln18599_1_fu_537_p1;
wire   [9:0] add_ln18599_fu_540_p2;
wire   [8:0] trunc_ln18599_fu_546_p1;
wire   [10:0] tmp_238_fu_550_p3;
wire   [12:0] tmp_239_fu_558_p3;
wire   [12:0] zext_ln18599_2_fu_566_p1;
wire   [15:0] tmp_240_fu_583_p3;
wire   [18:0] p_shl_fu_576_p3;
wire   [18:0] zext_ln18597_2_fu_590_p1;
wire   [12:0] sub_ln18599_1_fu_570_p2;
wire   [12:0] zext_ln18599_3_fu_600_p1;
wire   [5:0] zext_ln18597_3_fu_609_p1;
wire   [5:0] add_ln18597_1_fu_612_p2;
wire   [18:0] sub_ln18597_1_fu_594_p2;
wire   [18:0] zext_ln18597_4_fu_617_p1;
wire   [18:0] add_ln18597_2_fu_621_p2;
wire   [5:0] shl_ln_i_fu_633_p3;
wire   [8:0] zext_ln18598_fu_640_p1;
wire   [8:0] add_ln18598_fu_644_p2;
wire   [6:0] lshr_ln64_i_fu_649_p4;
wire   [18:0] zext_ln18599_5_fu_659_p1;
wire   [18:0] add_ln18599_2_fu_663_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_504;
reg    ap_condition_509;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten1233_i_fu_126 = 13'd0;
#0 v1436534_i_fu_130 = 5'd0;
#0 indvar_flatten35_i_fu_134 = 9'd0;
#0 v1436636_i_fu_138 = 5'd0;
#0 v1436737_i_fu_142 = 5'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_509)) begin
            icmp_ln1859339_i_reg_254 <= icmp_ln18593_reg_779;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1859339_i_reg_254 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1233_i_fu_126 <= add_ln18592_1_fu_390_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_i_fu_126 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten35_i_fu_134 <= select_ln18593_1_fu_382_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_i_fu_134 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1436534_i_fu_130 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1436534_i_fu_130 <= select_ln18592_2_fu_443_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1436636_i_fu_138 <= select_ln18593_fu_352_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1436636_i_fu_138 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1436737_i_fu_142 <= add_ln18594_fu_370_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1436737_i_fu_142 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18597_reg_794 <= add_ln18597_fu_502_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln18592_reg_784 <= icmp_ln18592_fu_408_p2;
        lshr_ln63_i_reg_768 <= {{v14367_mid2_i_fu_344_p3[4:1]}};
        lshr_ln63_i_reg_768_pp0_iter1_reg <= lshr_ln63_i_reg_768;
        select_ln18592_2_reg_788 <= select_ln18592_2_fu_443_p3;
        select_ln18593_reg_762 <= select_ln18593_fu_352_p3;
        select_ln18593_reg_762_pp0_iter1_reg <= select_ln18593_reg_762;
        thr_add1_cast8_i_i_cast_reg_752[7 : 0] <= thr_add1_cast8_i_i_cast_fu_275_p1[7 : 0];
        v14367_mid2_i_reg_757 <= v14367_mid2_i_fu_344_p3;
        v14367_mid2_i_reg_757_pp0_iter1_reg <= v14367_mid2_i_reg_757;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18599_1_reg_800 <= add_ln18599_1_fu_603_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18593_reg_779 <= icmp_ln18593_fu_402_p2;
        icmp_ln18594_reg_774 <= icmp_ln18594_fu_396_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18592_fu_408_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_504)) begin
            ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4 = icmp_ln18593_reg_779;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4 = icmp_ln18593_reg_779;
        end
    end else begin
        ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4 = icmp_ln18593_reg_779;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_504)) begin
            ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4 = icmp_ln18594_reg_774;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4 = icmp_ln18594_reg_774;
        end
    end else begin
        ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4 = icmp_ln18594_reg_774;
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
        ap_sig_allocacmp_indvar_flatten1233_i_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = indvar_flatten1233_i_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_i_load = indvar_flatten35_i_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1436636_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1436636_i_load = v1436636_i_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1436737_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1436737_i_load = v1436737_i_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14382_1_ce0_local = 1'b1;
    end else begin
        v14382_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14382_1_we0_local = 1'b1;
    end else begin
        v14382_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14382_ce0_local = 1'b1;
    end else begin
        v14382_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14382_we0_local = 1'b1;
    end else begin
        v14382_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16167_0_ce0_local = 1'b1;
    end else begin
        v16167_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16167_1_ce0_local = 1'b1;
    end else begin
        v16167_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16167_2_ce0_local = 1'b1;
    end else begin
        v16167_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16167_3_ce0_local = 1'b1;
    end else begin
        v16167_3_ce0_local = 1'b0;
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
assign add_ln18592_1_fu_390_p2 = (ap_sig_allocacmp_indvar_flatten1233_i_load + 13'd1);
assign add_ln18592_fu_437_p2 = (v1436534_i_fu_130 + 5'd1);
assign add_ln18593_1_fu_376_p2 = (ap_sig_allocacmp_indvar_flatten35_i_load + 9'd1);
assign add_ln18593_fu_338_p2 = (select_ln18592_fu_316_p3 + 5'd1);
assign add_ln18594_fu_370_p2 = (v14367_mid2_i_fu_344_p3 + 5'd2);
assign add_ln18597_1_fu_612_p2 = (thr_add_udiv_i_cast_i + zext_ln18597_3_fu_609_p1);
assign add_ln18597_2_fu_621_p2 = (sub_ln18597_1_fu_594_p2 + zext_ln18597_4_fu_617_p1);
assign add_ln18597_fu_502_p2 = (sub_ln18597_fu_476_p2 + zext_ln18597_1_fu_498_p1);
assign add_ln18598_fu_644_p2 = (thr_add1_cast8_i_i_cast_reg_752 + zext_ln18598_fu_640_p1);
assign add_ln18599_1_fu_603_p2 = (sub_ln18599_1_fu_570_p2 + zext_ln18599_3_fu_600_p1);
assign add_ln18599_2_fu_663_p2 = (sub_ln18597_1_fu_594_p2 + zext_ln18599_5_fu_659_p1);
assign add_ln18599_fu_540_p2 = (sub_ln18599_fu_531_p2 + zext_ln18599_1_fu_537_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_504 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18592_reg_784 == 1'd0));
end
always @ (*) begin
    ap_condition_509 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18592_reg_784 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_306_fu_451_p2 = (select_ln18592_2_fu_443_p3 + and_ln_i);
assign empty_307_fu_493_p2 = (tmp_6_i + p_cast_i_i_i_fu_489_p1);
assign icmp_ln18592_fu_408_p2 = ((ap_sig_allocacmp_indvar_flatten1233_i_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18593_fu_402_p2 = ((select_ln18593_1_fu_382_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18594_fu_396_p2 = ((add_ln18594_fu_370_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln64_i_fu_649_p4 = {{add_ln18598_fu_644_p2[8:2]}};
assign or_ln18592_fu_332_p2 = (ap_phi_mux_icmp_ln1859438_i_phi_fu_268_p4 | ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4);
assign p_cast_i_i_i_fu_489_p1 = tmp_224_i_fu_482_p3;
assign p_shl25_fu_456_p3 = {{empty_306_fu_451_p2}, {8'd0}};
assign p_shl27_fu_513_p3 = {{select_ln18592_2_reg_788}, {5'd0}};
assign p_shl_fu_576_p3 = {{add_ln18597_reg_794}, {6'd0}};
assign select_ln18592_1_fu_324_p3 = ((ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1436737_i_load);
assign select_ln18592_2_fu_443_p3 = ((icmp_ln1859339_i_reg_254[0:0] == 1'b1) ? add_ln18592_fu_437_p2 : v1436534_i_fu_130);
assign select_ln18592_fu_316_p3 = ((ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1436636_i_load);
assign select_ln18593_1_fu_382_p3 = ((ap_phi_mux_icmp_ln1859339_i_phi_fu_257_p4[0:0] == 1'b1) ? 9'd1 : add_ln18593_1_fu_376_p2);
assign select_ln18593_fu_352_p3 = ((or_ln18592_fu_332_p2[0:0] == 1'b1) ? select_ln18592_fu_316_p3 : add_ln18593_fu_338_p2);
assign select_ln18597_fu_680_p3 = ((empty[0:0] == 1'b1) ? v16167_1_q0 : v16167_0_q0);
assign select_ln18599_fu_688_p3 = ((empty[0:0] == 1'b1) ? v16167_3_q0 : v16167_2_q0);
assign shl_ln_i_fu_633_p3 = {{v14367_mid2_i_reg_757_pp0_iter1_reg}, {1'd0}};
assign sub_ln18597_1_fu_594_p2 = (p_shl_fu_576_p3 - zext_ln18597_2_fu_590_p1);
assign sub_ln18597_fu_476_p2 = (p_shl25_fu_456_p3 - zext_ln18597_fu_472_p1);
assign sub_ln18599_1_fu_570_p2 = (tmp_239_fu_558_p3 - zext_ln18599_2_fu_566_p1);
assign sub_ln18599_fu_531_p2 = (p_shl27_fu_513_p3 - zext_ln18599_fu_527_p1);
assign thr_add1_cast8_i_i_cast_fu_275_p1 = thr_add1_cast8_i_i;
assign tmp_224_i_fu_482_p3 = {{select_ln18593_reg_762}, {1'd0}};
assign tmp_236_fu_520_p3 = {{select_ln18592_2_reg_788}, {2'd0}};
assign tmp_237_fu_464_p3 = {{empty_306_fu_451_p2}, {5'd0}};
assign tmp_238_fu_550_p3 = {{add_ln18599_fu_540_p2}, {1'd0}};
assign tmp_239_fu_558_p3 = {{trunc_ln18599_fu_546_p1}, {4'd0}};
assign tmp_240_fu_583_p3 = {{add_ln18597_reg_794}, {3'd0}};
assign trunc_ln18599_fu_546_p1 = add_ln18599_fu_540_p2[8:0];
assign v14367_mid2_i_fu_344_p3 = ((or_ln18592_fu_332_p2[0:0] == 1'b1) ? select_ln18592_1_fu_324_p3 : 5'd0);
assign v14382_1_address0 = zext_ln18599_4_fu_675_p1;
assign v14382_1_ce0 = v14382_1_ce0_local;
assign v14382_1_d0 = select_ln18597_fu_680_p3;
assign v14382_1_we0 = v14382_1_we0_local;
assign v14382_address0 = zext_ln18599_4_fu_675_p1;
assign v14382_ce0 = v14382_ce0_local;
assign v14382_d0 = select_ln18599_fu_688_p3;
assign v14382_we0 = v14382_we0_local;
assign v16167_0_address0 = zext_ln18597_5_fu_627_p1;
assign v16167_0_ce0 = v16167_0_ce0_local;
assign v16167_1_address0 = zext_ln18597_5_fu_627_p1;
assign v16167_1_ce0 = v16167_1_ce0_local;
assign v16167_2_address0 = zext_ln18599_6_fu_669_p1;
assign v16167_2_ce0 = v16167_2_ce0_local;
assign v16167_3_address0 = zext_ln18599_6_fu_669_p1;
assign v16167_3_ce0 = v16167_3_ce0_local;
assign zext_ln18597_1_fu_498_p1 = empty_307_fu_493_p2;
assign zext_ln18597_2_fu_590_p1 = tmp_240_fu_583_p3;
assign zext_ln18597_3_fu_609_p1 = lshr_ln63_i_reg_768_pp0_iter1_reg;
assign zext_ln18597_4_fu_617_p1 = add_ln18597_1_fu_612_p2;
assign zext_ln18597_5_fu_627_p1 = add_ln18597_2_fu_621_p2;
assign zext_ln18597_fu_472_p1 = tmp_237_fu_464_p3;
assign zext_ln18598_fu_640_p1 = shl_ln_i_fu_633_p3;
assign zext_ln18599_1_fu_537_p1 = select_ln18593_reg_762_pp0_iter1_reg;
assign zext_ln18599_2_fu_566_p1 = tmp_238_fu_550_p3;
assign zext_ln18599_3_fu_600_p1 = lshr_ln63_i_reg_768_pp0_iter1_reg;
assign zext_ln18599_4_fu_675_p1 = add_ln18599_1_reg_800;
assign zext_ln18599_5_fu_659_p1 = lshr_ln64_i_fu_649_p4;
assign zext_ln18599_6_fu_669_p1 = add_ln18599_2_fu_663_p2;
assign zext_ln18599_fu_527_p1 = tmp_236_fu_520_p3;
always @ (posedge ap_clk) begin
    thr_add1_cast8_i_i_cast_reg_752[8] <= 1'b0;
end
endmodule 
