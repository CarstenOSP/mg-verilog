
module forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12441_1_proc155 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7953_address0,v7953_ce0,v7953_q0,v7952_address0,v7952_ce0,v7952_we0,v7952_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v7953_address0;
output   v7953_ce0;
input  [7:0] v7953_q0;
output  [13:0] v7952_address0;
output   v7952_ce0;
output   v7952_we0;
output  [7:0] v7952_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12441_fu_272_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1244219_reg_131;
reg   [0:0] icmp_ln1244318_reg_142;
wire   [0:0] xor_ln12441_fu_208_p2;
reg   [0:0] xor_ln12441_reg_602;
wire   [0:0] and_ln12441_1_fu_214_p2;
reg   [0:0] and_ln12441_1_reg_607;
wire   [0:0] empty_fu_220_p2;
reg   [0:0] empty_reg_613;
wire   [0:0] icmp_ln12443_fu_260_p2;
reg   [0:0] icmp_ln12443_reg_618;
wire   [0:0] icmp_ln12442_fu_266_p2;
reg   [0:0] icmp_ln12442_reg_623;
reg   [0:0] icmp_ln12441_reg_628;
reg   [0:0] icmp_ln12441_reg_628_pp0_iter1_reg;
wire   [6:0] empty_380_fu_467_p2;
reg   [6:0] empty_380_reg_632;
wire   [6:0] add_ln12446_fu_477_p2;
reg   [6:0] add_ln12446_reg_638;
wire   [0:0] icmp_ln12444_fu_489_p2;
reg   [0:0] icmp_ln12444_reg_643;
wire   [63:0] zext_ln12446_2_fu_548_p1;
reg   [63:0] zext_ln12446_2_reg_648;
reg   [0:0] ap_phi_mux_icmp_ln1244219_phi_fu_134_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1244318_phi_fu_145_p4;
reg   [0:0] ap_phi_mux_icmp_ln1244417_phi_fu_156_p4;
reg    ap_loop_init_pp0_iter1_reg;
reg   [13:0] indvar_flatten3510_fu_76;
wire   [13:0] add_ln12441_1_fu_254_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten3510_load;
reg   [2:0] v793211_fu_80;
wire   [2:0] v7932_fu_324_p3;
reg   [12:0] indvar_flatten1212_fu_84;
wire   [12:0] select_ln12442_1_fu_246_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1212_load;
reg   [2:0] v793313_fu_88;
wire   [2:0] v7933_fu_363_p3;
reg   [9:0] indvar_flatten14_fu_92;
wire   [9:0] select_ln12443_1_fu_232_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten14_load;
reg   [4:0] v793415_fu_96;
wire   [4:0] v7934_fu_395_p3;
reg   [4:0] v793516_fu_100;
wire   [4:0] v7935_fu_483_p2;
reg    v7953_ce0_local;
reg    v7952_we0_local;
reg    v7952_ce0_local;
wire   [9:0] add_ln12443_1_fu_226_p2;
wire   [12:0] add_ln12442_1_fu_240_p2;
wire   [2:0] add_ln12441_fu_305_p2;
wire   [2:0] select_ln12441_fu_311_p3;
wire   [0:0] exitcond_flatten_not_fu_345_p2;
wire   [0:0] and_ln12441_fu_319_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_351_p2;
wire   [2:0] add_ln12442_fu_332_p2;
wire   [4:0] v7934_mid26_fu_338_p3;
wire   [0:0] icmp_ln12444_mid211_fu_357_p2;
wire   [0:0] empty_378_fu_376_p2;
wire   [0:0] empty_379_fu_381_p2;
wire   [4:0] add_ln12443_fu_370_p2;
wire   [1:0] trunc_ln12442_fu_403_p1;
wire   [4:0] tmp_fu_415_p3;
wire   [6:0] p_shl26_fu_407_p3;
wire   [6:0] zext_ln12442_fu_423_p1;
wire   [1:0] trunc_ln12443_fu_433_p1;
wire   [4:0] tmp_384_fu_445_p3;
wire   [6:0] p_shl24_fu_437_p3;
wire   [6:0] zext_ln12443_fu_453_p1;
wire   [6:0] sub_ln12442_fu_427_p2;
wire   [6:0] zext_ln12443_1_fu_463_p1;
wire   [4:0] v7935_mid2_fu_387_p3;
wire   [6:0] sub_ln12443_fu_457_p2;
wire   [6:0] zext_ln12444_fu_473_p1;
wire   [10:0] tmp_385_fu_522_p3;
wire   [13:0] p_shl_fu_515_p3;
wire   [13:0] zext_ln12446_fu_529_p1;
wire   [13:0] sub_ln12446_fu_533_p2;
wire   [13:0] zext_ln12446_1_fu_539_p1;
wire   [13:0] add_ln12446_1_fu_542_p2;
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
reg    ap_condition_423;
reg    ap_condition_428;
reg    ap_condition_93;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten3510_fu_76 = 14'd0;
#0 v793211_fu_80 = 3'd0;
#0 indvar_flatten1212_fu_84 = 13'd0;
#0 v793313_fu_88 = 3'd0;
#0 indvar_flatten14_fu_92 = 10'd0;
#0 v793415_fu_96 = 5'd0;
#0 v793516_fu_100 = 5'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_428)) begin
            icmp_ln1244219_reg_131 <= icmp_ln12442_reg_623;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1244219_reg_131 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_428)) begin
            icmp_ln1244318_reg_142 <= icmp_ln12443_reg_618;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1244318_reg_142 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_93)) begin
        indvar_flatten1212_fu_84 <= select_ln12442_1_fu_246_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_93)) begin
    indvar_flatten14_fu_92 <= select_ln12443_1_fu_232_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_93)) begin
    indvar_flatten3510_fu_76 <= add_ln12441_1_fu_254_p2;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v793211_fu_80 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v793211_fu_80 <= v7932_fu_324_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v793313_fu_88 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v793313_fu_88 <= v7933_fu_363_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v793415_fu_96 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v793415_fu_96 <= v7934_fu_395_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v793516_fu_100 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v793516_fu_100 <= v7935_fu_483_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12446_reg_638 <= add_ln12446_fu_477_p2;
        and_ln12441_1_reg_607 <= and_ln12441_1_fu_214_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_380_reg_632 <= empty_380_fu_467_p2;
        empty_reg_613 <= empty_fu_220_p2;
        icmp_ln12441_reg_628 <= icmp_ln12441_fu_272_p2;
        icmp_ln12441_reg_628_pp0_iter1_reg <= icmp_ln12441_reg_628;
        xor_ln12441_reg_602 <= xor_ln12441_fu_208_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12442_reg_623 <= icmp_ln12442_fu_266_p2;
        icmp_ln12443_reg_618 <= icmp_ln12443_fu_260_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12444_reg_643 <= icmp_ln12444_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln12446_2_reg_648[13 : 0] <= zext_ln12446_2_fu_548_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln12441_fu_272_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_423)) begin
            ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 = icmp_ln12442_reg_623;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 = icmp_ln12442_reg_623;
        end
    end else begin
        ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 = icmp_ln12442_reg_623;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_423)) begin
            ap_phi_mux_icmp_ln1244318_phi_fu_145_p4 = icmp_ln12443_reg_618;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1244318_phi_fu_145_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1244318_phi_fu_145_p4 = icmp_ln12443_reg_618;
        end
    end else begin
        ap_phi_mux_icmp_ln1244318_phi_fu_145_p4 = icmp_ln12443_reg_618;
    end
end
always @ (*) begin
    if (((icmp_ln12441_reg_628_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1244417_phi_fu_156_p4 = icmp_ln12444_reg_643;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1244417_phi_fu_156_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1244417_phi_fu_156_p4 = icmp_ln12444_reg_643;
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
        ap_sig_allocacmp_indvar_flatten1212_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1212_load = indvar_flatten1212_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten14_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten14_load = indvar_flatten14_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten3510_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3510_load = indvar_flatten3510_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7952_ce0_local = 1'b1;
    end else begin
        v7952_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7952_we0_local = 1'b1;
    end else begin
        v7952_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7953_ce0_local = 1'b1;
    end else begin
        v7953_ce0_local = 1'b0;
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
assign add_ln12441_1_fu_254_p2 = (ap_sig_allocacmp_indvar_flatten3510_load + 14'd1);
assign add_ln12441_fu_305_p2 = (v793211_fu_80 + 3'd1);
assign add_ln12442_1_fu_240_p2 = (ap_sig_allocacmp_indvar_flatten1212_load + 13'd1);
assign add_ln12442_fu_332_p2 = (select_ln12441_fu_311_p3 + 3'd1);
assign add_ln12443_1_fu_226_p2 = (ap_sig_allocacmp_indvar_flatten14_load + 10'd1);
assign add_ln12443_fu_370_p2 = (v7934_mid26_fu_338_p3 + 5'd1);
assign add_ln12446_1_fu_542_p2 = (sub_ln12446_fu_533_p2 + zext_ln12446_1_fu_539_p1);
assign add_ln12446_fu_477_p2 = (sub_ln12443_fu_457_p2 + zext_ln12444_fu_473_p1);
assign and_ln12441_1_fu_214_p2 = (xor_ln12441_fu_208_p2 & ap_phi_mux_icmp_ln1244318_phi_fu_145_p4);
assign and_ln12441_fu_319_p2 = (xor_ln12441_reg_602 & ap_phi_mux_icmp_ln1244417_phi_fu_156_p4);
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
    ap_condition_423 = ((icmp_ln12441_reg_628 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_428 = ((icmp_ln12441_reg_628 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_93 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_378_fu_376_p2 = (icmp_ln12444_mid211_fu_357_p2 | and_ln12441_1_reg_607);
assign empty_379_fu_381_p2 = (icmp_ln1244219_reg_131 | empty_378_fu_376_p2);
assign empty_380_fu_467_p2 = (sub_ln12442_fu_427_p2 + zext_ln12443_1_fu_463_p1);
assign empty_fu_220_p2 = (ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 | and_ln12441_1_fu_214_p2);
assign exitcond_flatten_not_fu_345_p2 = (icmp_ln1244318_reg_142 ^ 1'd1);
assign icmp_ln12441_fu_272_p2 = ((ap_sig_allocacmp_indvar_flatten3510_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12442_fu_266_p2 = ((select_ln12442_1_fu_246_p3 == 13'd3136) ? 1'b1 : 1'b0);
assign icmp_ln12443_fu_260_p2 = ((select_ln12443_1_fu_232_p3 == 10'd784) ? 1'b1 : 1'b0);
assign icmp_ln12444_fu_489_p2 = ((v7935_fu_483_p2 == 5'd28) ? 1'b1 : 1'b0);
assign icmp_ln12444_mid211_fu_357_p2 = (not_exitcond_flatten_mid234_fu_351_p2 & and_ln12441_fu_319_p2);
assign not_exitcond_flatten_mid234_fu_351_p2 = (icmp_ln1244219_reg_131 | exitcond_flatten_not_fu_345_p2);
assign p_shl24_fu_437_p3 = {{trunc_ln12443_fu_433_p1}, {5'd0}};
assign p_shl26_fu_407_p3 = {{trunc_ln12442_fu_403_p1}, {5'd0}};
assign p_shl_fu_515_p3 = {{empty_380_reg_632}, {7'd0}};
assign select_ln12441_fu_311_p3 = ((icmp_ln1244219_reg_131[0:0] == 1'b1) ? 3'd0 : v793313_fu_88);
assign select_ln12442_1_fu_246_p3 = ((ap_phi_mux_icmp_ln1244219_phi_fu_134_p4[0:0] == 1'b1) ? 13'd1 : add_ln12442_1_fu_240_p2);
assign select_ln12443_1_fu_232_p3 = ((empty_fu_220_p2[0:0] == 1'b1) ? 10'd1 : add_ln12443_1_fu_226_p2);
assign sub_ln12442_fu_427_p2 = (p_shl26_fu_407_p3 - zext_ln12442_fu_423_p1);
assign sub_ln12443_fu_457_p2 = (p_shl24_fu_437_p3 - zext_ln12443_fu_453_p1);
assign sub_ln12446_fu_533_p2 = (p_shl_fu_515_p3 - zext_ln12446_fu_529_p1);
assign tmp_384_fu_445_p3 = {{v7933_fu_363_p3}, {2'd0}};
assign tmp_385_fu_522_p3 = {{empty_380_reg_632}, {4'd0}};
assign tmp_fu_415_p3 = {{v7932_fu_324_p3}, {2'd0}};
assign trunc_ln12442_fu_403_p1 = v7932_fu_324_p3[1:0];
assign trunc_ln12443_fu_433_p1 = v7933_fu_363_p3[1:0];
assign v7932_fu_324_p3 = ((icmp_ln1244219_reg_131[0:0] == 1'b1) ? add_ln12441_fu_305_p2 : v793211_fu_80);
assign v7933_fu_363_p3 = ((and_ln12441_1_reg_607[0:0] == 1'b1) ? add_ln12442_fu_332_p2 : select_ln12441_fu_311_p3);
assign v7934_fu_395_p3 = ((icmp_ln12444_mid211_fu_357_p2[0:0] == 1'b1) ? add_ln12443_fu_370_p2 : v7934_mid26_fu_338_p3);
assign v7934_mid26_fu_338_p3 = ((empty_reg_613[0:0] == 1'b1) ? 5'd0 : v793415_fu_96);
assign v7935_fu_483_p2 = (v7935_mid2_fu_387_p3 + 5'd1);
assign v7935_mid2_fu_387_p3 = ((empty_379_fu_381_p2[0:0] == 1'b1) ? 5'd0 : v793516_fu_100);
assign v7952_address0 = zext_ln12446_2_reg_648;
assign v7952_ce0 = v7952_ce0_local;
assign v7952_d0 = v7953_q0;
assign v7952_we0 = v7952_we0_local;
assign v7953_address0 = zext_ln12446_2_fu_548_p1;
assign v7953_ce0 = v7953_ce0_local;
assign xor_ln12441_fu_208_p2 = (ap_phi_mux_icmp_ln1244219_phi_fu_134_p4 ^ 1'd1);
assign zext_ln12442_fu_423_p1 = tmp_fu_415_p3;
assign zext_ln12443_1_fu_463_p1 = v7934_fu_395_p3;
assign zext_ln12443_fu_453_p1 = tmp_384_fu_445_p3;
assign zext_ln12444_fu_473_p1 = v7935_mid2_fu_387_p3;
assign zext_ln12446_1_fu_539_p1 = add_ln12446_reg_638;
assign zext_ln12446_2_fu_548_p1 = add_ln12446_1_fu_542_p2;
assign zext_ln12446_fu_529_p1 = tmp_385_fu_522_p3;
always @ (posedge ap_clk) begin
    zext_ln12446_2_reg_648[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
