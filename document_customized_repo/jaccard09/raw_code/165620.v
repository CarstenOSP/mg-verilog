module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18534_1_proc123 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14383_address0,v14383_ce0,v14383_we0,v14383_d0,v14383_1_address0,v14383_1_ce0,v14383_1_we0,v14383_1_d0,v14382_1_address0,v14382_1_ce0,v14382_1_q0,v14381_1_address0,v14381_1_ce0,v14381_1_q0,v14382_address0,v14382_ce0,v14382_q0,v14381_address0,v14381_ce0,v14381_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v14383_address0;
output   v14383_ce0;
output   v14383_we0;
output  [7:0] v14383_d0;
output  [12:0] v14383_1_address0;
output   v14383_1_ce0;
output   v14383_1_we0;
output  [7:0] v14383_1_d0;
output  [12:0] v14382_1_address0;
output   v14382_1_ce0;
input  [7:0] v14382_1_q0;
output  [12:0] v14381_1_address0;
output   v14381_1_ce0;
input  [7:0] v14381_1_q0;
output  [12:0] v14382_address0;
output   v14382_ce0;
input  [7:0] v14382_q0;
output  [12:0] v14381_address0;
output   v14381_ce0;
input  [7:0] v14381_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18534_fu_382_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [9:0] add_ln18545_fu_324_p2;
reg   [9:0] add_ln18545_reg_519;
wire   [8:0] trunc_ln18545_fu_330_p1;
reg   [8:0] trunc_ln18545_reg_524;
reg   [3:0] lshr_ln_reg_529;
wire   [0:0] icmp_ln18536_fu_370_p2;
reg   [0:0] icmp_ln18536_reg_534;
wire   [0:0] icmp_ln18535_fu_376_p2;
reg   [0:0] icmp_ln18535_reg_539;
reg   [0:0] icmp_ln18534_reg_544;
wire   [63:0] zext_ln18545_4_fu_446_p1;
reg   [63:0] zext_ln18545_4_reg_548;
reg   [0:0] ap_phi_mux_icmp_ln1853539_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1853638_phi_fu_189_p4;
reg   [12:0] indvar_flatten1233_fu_78;
wire   [12:0] add_ln18534_1_fu_364_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [4:0] v1433934_fu_82;
wire   [4:0] v14339_fu_264_p3;
reg   [4:0] ap_sig_allocacmp_v1433934_load;
reg   [8:0] indvar_flatten35_fu_86;
wire   [8:0] select_ln18535_1_fu_356_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [4:0] v1434036_fu_90;
wire   [4:0] v14340_fu_286_p3;
reg   [4:0] ap_sig_allocacmp_v1434036_load;
reg   [4:0] v1434137_fu_94;
wire   [4:0] v14341_fu_344_p2;
reg   [4:0] ap_sig_allocacmp_v1434137_load;
reg    v14382_1_ce0_local;
reg    v14381_1_ce0_local;
reg    v14382_ce0_local;
reg    v14381_ce0_local;
reg    v14383_1_we0_local;
wire   [7:0] select_ln18541_fu_460_p3;
reg    v14383_1_ce0_local;
reg    v14383_we0_local;
wire   [7:0] select_ln18545_fu_475_p3;
reg    v14383_ce0_local;
wire   [4:0] add_ln18534_fu_236_p2;
wire   [4:0] select_ln18534_fu_242_p3;
wire   [0:0] or_ln18534_fu_258_p2;
wire   [4:0] select_ln18534_1_fu_250_p3;
wire   [4:0] add_ln18535_fu_272_p2;
wire   [6:0] tmp_fu_302_p3;
wire   [9:0] p_shl47_fu_294_p3;
wire   [9:0] zext_ln18545_fu_310_p1;
wire   [9:0] sub_ln18545_fu_314_p2;
wire   [9:0] zext_ln18545_1_fu_320_p1;
wire   [4:0] v14341_mid2_fu_278_p3;
wire   [8:0] add_ln18535_1_fu_350_p2;
wire   [10:0] tmp_253_fu_413_p3;
wire   [12:0] tmp_254_fu_420_p3;
wire   [12:0] zext_ln18545_2_fu_427_p1;
wire   [12:0] sub_ln18537_fu_431_p2;
wire   [12:0] zext_ln18545_3_fu_437_p1;
wire   [12:0] add_ln18545_1_fu_440_p2;
wire   [0:0] icmp_ln224_fu_454_p2;
wire   [0:0] icmp_ln224_2_fu_469_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_376;
reg    ap_condition_113;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_78 = 13'd0;
#0 v1433934_fu_82 = 5'd0;
#0 indvar_flatten35_fu_86 = 9'd0;
#0 v1434036_fu_90 = 5'd0;
#0 v1434137_fu_94 = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_113)) begin
        indvar_flatten1233_fu_78 <= add_ln18534_1_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    indvar_flatten35_fu_86 <= select_ln18535_1_fu_356_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v1433934_fu_82 <= v14339_fu_264_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v1434036_fu_90 <= v14340_fu_286_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v1434137_fu_94 <= v14341_fu_344_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18545_reg_519 <= add_ln18545_fu_324_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln18534_reg_544 <= icmp_ln18534_fu_382_p2;
        lshr_ln_reg_529 <= {{v14341_mid2_fu_278_p3[4:1]}};
        trunc_ln18545_reg_524 <= trunc_ln18545_fu_330_p1;
        zext_ln18545_4_reg_548[12 : 0] <= zext_ln18545_4_fu_446_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18535_reg_539 <= icmp_ln18535_fu_376_p2;
        icmp_ln18536_reg_534 <= icmp_ln18536_fu_370_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18534_fu_382_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_376)) begin
            ap_phi_mux_icmp_ln1853539_phi_fu_179_p4 = icmp_ln18535_reg_539;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1853539_phi_fu_179_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1853539_phi_fu_179_p4 = icmp_ln18535_reg_539;
        end
    end else begin
        ap_phi_mux_icmp_ln1853539_phi_fu_179_p4 = icmp_ln18535_reg_539;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_376)) begin
            ap_phi_mux_icmp_ln1853638_phi_fu_189_p4 = icmp_ln18536_reg_534;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1853638_phi_fu_189_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1853638_phi_fu_189_p4 = icmp_ln18536_reg_534;
        end
    end else begin
        ap_phi_mux_icmp_ln1853638_phi_fu_189_p4 = icmp_ln18536_reg_534;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1433934_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1433934_load = v1433934_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1434036_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1434036_load = v1434036_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1434137_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1434137_load = v1434137_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14381_1_ce0_local = 1'b1;
    end else begin
        v14381_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14381_ce0_local = 1'b1;
    end else begin
        v14381_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14382_1_ce0_local = 1'b1;
    end else begin
        v14382_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v14382_ce0_local = 1'b1;
    end else begin
        v14382_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_1_ce0_local = 1'b1;
    end else begin
        v14383_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_1_we0_local = 1'b1;
    end else begin
        v14383_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_ce0_local = 1'b1;
    end else begin
        v14383_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14383_we0_local = 1'b1;
    end else begin
        v14383_we0_local = 1'b0;
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
assign add_ln18534_1_fu_364_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 13'd1);
assign add_ln18534_fu_236_p2 = (ap_sig_allocacmp_v1433934_load + 5'd1);
assign add_ln18535_1_fu_350_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 9'd1);
assign add_ln18535_fu_272_p2 = (select_ln18534_fu_242_p3 + 5'd1);
assign add_ln18545_1_fu_440_p2 = (sub_ln18537_fu_431_p2 + zext_ln18545_3_fu_437_p1);
assign add_ln18545_fu_324_p2 = (sub_ln18545_fu_314_p2 + zext_ln18545_1_fu_320_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_113 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_376 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18534_reg_544 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln18534_fu_382_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18535_fu_376_p2 = ((select_ln18535_1_fu_356_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18536_fu_370_p2 = ((v14341_fu_344_p2 < 5'd28) ? 1'b1 : 1'b0);
assign icmp_ln224_2_fu_469_p2 = (($signed(v14381_q0) < $signed(v14382_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_454_p2 = (($signed(v14381_1_q0) < $signed(v14382_1_q0)) ? 1'b1 : 1'b0);
assign or_ln18534_fu_258_p2 = (ap_phi_mux_icmp_ln1853638_phi_fu_189_p4 | ap_phi_mux_icmp_ln1853539_phi_fu_179_p4);
assign p_shl47_fu_294_p3 = {{v14339_fu_264_p3}, {5'd0}};
assign select_ln18534_1_fu_250_p3 = ((ap_phi_mux_icmp_ln1853539_phi_fu_179_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1434137_load);
assign select_ln18534_fu_242_p3 = ((ap_phi_mux_icmp_ln1853539_phi_fu_179_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1434036_load);
assign select_ln18535_1_fu_356_p3 = ((ap_phi_mux_icmp_ln1853539_phi_fu_179_p4[0:0] == 1'b1) ? 9'd1 : add_ln18535_1_fu_350_p2);
assign select_ln18541_fu_460_p3 = ((icmp_ln224_fu_454_p2[0:0] == 1'b1) ? v14382_1_q0 : v14381_1_q0);
assign select_ln18545_fu_475_p3 = ((icmp_ln224_2_fu_469_p2[0:0] == 1'b1) ? v14382_q0 : v14381_q0);
assign sub_ln18537_fu_431_p2 = (tmp_254_fu_420_p3 - zext_ln18545_2_fu_427_p1);
assign sub_ln18545_fu_314_p2 = (p_shl47_fu_294_p3 - zext_ln18545_fu_310_p1);
assign tmp_253_fu_413_p3 = {{add_ln18545_reg_519}, {1'd0}};
assign tmp_254_fu_420_p3 = {{trunc_ln18545_reg_524}, {4'd0}};
assign tmp_fu_302_p3 = {{v14339_fu_264_p3}, {2'd0}};
assign trunc_ln18545_fu_330_p1 = add_ln18545_fu_324_p2[8:0];
assign v14339_fu_264_p3 = ((ap_phi_mux_icmp_ln1853539_phi_fu_179_p4[0:0] == 1'b1) ? add_ln18534_fu_236_p2 : ap_sig_allocacmp_v1433934_load);
assign v14340_fu_286_p3 = ((or_ln18534_fu_258_p2[0:0] == 1'b1) ? select_ln18534_fu_242_p3 : add_ln18535_fu_272_p2);
assign v14341_fu_344_p2 = (v14341_mid2_fu_278_p3 + 5'd2);
assign v14341_mid2_fu_278_p3 = ((or_ln18534_fu_258_p2[0:0] == 1'b1) ? select_ln18534_1_fu_250_p3 : 5'd0);
assign v14381_1_address0 = zext_ln18545_4_fu_446_p1;
assign v14381_1_ce0 = v14381_1_ce0_local;
assign v14381_address0 = zext_ln18545_4_fu_446_p1;
assign v14381_ce0 = v14381_ce0_local;
assign v14382_1_address0 = zext_ln18545_4_fu_446_p1;
assign v14382_1_ce0 = v14382_1_ce0_local;
assign v14382_address0 = zext_ln18545_4_fu_446_p1;
assign v14382_ce0 = v14382_ce0_local;
assign v14383_1_address0 = zext_ln18545_4_reg_548;
assign v14383_1_ce0 = v14383_1_ce0_local;
assign v14383_1_d0 = select_ln18541_fu_460_p3;
assign v14383_1_we0 = v14383_1_we0_local;
assign v14383_address0 = zext_ln18545_4_reg_548;
assign v14383_ce0 = v14383_ce0_local;
assign v14383_d0 = select_ln18545_fu_475_p3;
assign v14383_we0 = v14383_we0_local;
assign zext_ln18545_1_fu_320_p1 = v14340_fu_286_p3;
assign zext_ln18545_2_fu_427_p1 = tmp_253_fu_413_p3;
assign zext_ln18545_3_fu_437_p1 = lshr_ln_reg_529;
assign zext_ln18545_4_fu_446_p1 = add_ln18545_1_fu_440_p2;
assign zext_ln18545_fu_310_p1 = tmp_fu_302_p3;
always @ (posedge ap_clk) begin
    zext_ln18545_4_reg_548[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 