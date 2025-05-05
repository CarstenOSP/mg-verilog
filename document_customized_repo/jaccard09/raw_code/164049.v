module forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v10204_address0,v10204_ce0,v10204_q0,v10205_address0,v10205_ce0,v10205_q0,v10203_address0,v10203_ce0,v10203_q0,v10206_address0,v10206_ce0,v10206_we0,v10206_d0,brmerge_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v10204_address0;
output   v10204_ce0;
input  [7:0] v10204_q0;
output  [10:0] v10205_address0;
output   v10205_ce0;
input  [7:0] v10205_q0;
output  [10:0] v10203_address0;
output   v10203_ce0;
input  [7:0] v10203_q0;
output  [10:0] v10206_address0;
output   v10206_ce0;
output   v10206_we0;
output  [7:0] v10206_d0;
input  [0:0] brmerge_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12513_fu_338_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] brmerge_i_read_reg_468;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v10150_fu_232_p3;
reg   [5:0] v10150_reg_473;
wire   [2:0] v10152_mid2_fu_252_p3;
reg   [2:0] v10152_mid2_reg_478;
wire   [8:0] add_ln12517_fu_290_p2;
reg   [8:0] add_ln12517_reg_483;
wire   [7:0] trunc_ln12517_fu_296_p1;
reg   [7:0] trunc_ln12517_reg_488;
wire   [0:0] icmp_ln12515_fu_326_p2;
reg   [0:0] icmp_ln12515_reg_493;
wire   [0:0] icmp_ln12514_fu_332_p2;
reg   [0:0] icmp_ln12514_reg_498;
reg   [0:0] icmp_ln12513_reg_503;
wire   [63:0] zext_ln12517_4_fu_398_p1;
reg   [63:0] zext_ln12517_4_reg_512;
reg   [63:0] zext_ln12517_4_reg_512_pp0_iter2_reg;
reg   [63:0] zext_ln12517_4_reg_512_pp0_iter3_reg;
reg   [63:0] zext_ln12517_4_reg_512_pp0_iter4_reg;
reg   [0:0] ap_phi_mux_icmp_ln1251427_phi_fu_149_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1251526_phi_fu_159_p4;
wire   [63:0] zext_ln12513_fu_369_p1;
reg   [10:0] indvar_flatten1221_fu_68;
wire   [10:0] add_ln12513_1_fu_320_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1221_load;
reg   [5:0] v1015022_fu_72;
reg   [5:0] ap_sig_allocacmp_v1015022_load;
reg   [5:0] indvar_flatten23_fu_76;
wire   [5:0] select_ln12514_1_fu_312_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [2:0] v1015124_fu_80;
wire   [2:0] v10151_fu_260_p3;
reg   [2:0] ap_sig_allocacmp_v1015124_load;
reg   [2:0] v1015225_fu_84;
wire   [2:0] v10152_fu_300_p2;
reg   [2:0] ap_sig_allocacmp_v1015225_load;
reg    v10204_ce0_local;
reg    v10205_ce0_local;
reg    v10203_ce0_local;
reg    v10206_we0_local;
wire   [7:0] select_ln12528_fu_416_p3;
reg    v10206_ce0_local;
wire   [0:0] xor_ln12513_fu_220_p2;
wire   [5:0] add_ln12513_fu_206_p2;
wire   [2:0] select_ln12513_fu_212_p3;
wire   [0:0] and_ln12513_fu_226_p2;
wire   [0:0] empty_fu_246_p2;
wire   [2:0] add_ln12514_fu_240_p2;
wire   [8:0] p_shl11_fu_272_p3;
wire   [8:0] zext_ln12517_fu_268_p1;
wire   [8:0] sub_ln12517_fu_280_p2;
wire   [8:0] zext_ln12517_1_fu_286_p1;
wire   [5:0] add_ln12514_1_fu_306_p2;
wire   [10:0] tmp_fu_373_p3;
wire   [10:0] zext_ln12517_2_fu_380_p1;
wire   [10:0] sub_ln12515_fu_383_p2;
wire   [10:0] zext_ln12517_3_fu_389_p1;
wire   [10:0] add_ln12517_1_fu_392_p2;
wire  signed [7:0] v10161_fu_403_p0;
wire   [7:0] grp_fu_423_p3;
wire   [0:0] v10161_fu_403_p2;
wire  signed [7:0] select_ln12528_fu_416_p1;
wire   [7:0] select_ln12528_1_fu_408_p3;
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
reg    ap_condition_380;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten1221_fu_68 = 11'd0;
#0 v1015022_fu_72 = 6'd0;
#0 indvar_flatten23_fu_76 = 6'd0;
#0 v1015124_fu_80 = 3'd0;
#0 v1015225_fu_84 = 3'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5408(.clk(ap_clk),.reset(ap_rst),.din0(v10205_q0),.din1(v10204_q0),.din2(v10203_q0),.ce(1'b1),.dout(grp_fu_423_p3));
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1221_fu_68 <= add_ln12513_1_fu_320_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_fu_68 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten23_fu_76 <= select_ln12514_1_fu_312_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_76 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1015022_fu_72 <= v10150_fu_232_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1015022_fu_72 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1015124_fu_80 <= v10151_fu_260_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1015124_fu_80 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1015225_fu_84 <= v10152_fu_300_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1015225_fu_84 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12517_reg_483 <= add_ln12517_fu_290_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln12513_reg_503 <= icmp_ln12513_fu_338_p2;
        trunc_ln12517_reg_488 <= trunc_ln12517_fu_296_p1;
        v10150_reg_473 <= v10150_fu_232_p3;
        v10152_mid2_reg_478 <= v10152_mid2_fu_252_p3;
        zext_ln12517_4_reg_512[10 : 0] <= zext_ln12517_4_fu_398_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        zext_ln12517_4_reg_512_pp0_iter2_reg[10 : 0] <= zext_ln12517_4_reg_512[10 : 0];
        zext_ln12517_4_reg_512_pp0_iter3_reg[10 : 0] <= zext_ln12517_4_reg_512_pp0_iter2_reg[10 : 0];
        zext_ln12517_4_reg_512_pp0_iter4_reg[10 : 0] <= zext_ln12517_4_reg_512_pp0_iter3_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12514_reg_498 <= icmp_ln12514_fu_332_p2;
        icmp_ln12515_reg_493 <= icmp_ln12515_fu_326_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12513_fu_338_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_380)) begin
            ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 = icmp_ln12514_reg_498;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 = icmp_ln12514_reg_498;
        end
    end else begin
        ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 = icmp_ln12514_reg_498;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_380)) begin
            ap_phi_mux_icmp_ln1251526_phi_fu_159_p4 = icmp_ln12515_reg_493;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1251526_phi_fu_159_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1251526_phi_fu_159_p4 = icmp_ln12515_reg_493;
        end
    end else begin
        ap_phi_mux_icmp_ln1251526_phi_fu_159_p4 = icmp_ln12515_reg_493;
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
        ap_sig_allocacmp_indvar_flatten1221_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_load = indvar_flatten1221_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1015022_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1015022_load = v1015022_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1015124_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1015124_load = v1015124_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1015225_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v1015225_load = v1015225_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10203_ce0_local = 1'b1;
    end else begin
        v10203_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10204_ce0_local = 1'b1;
    end else begin
        v10204_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10205_ce0_local = 1'b1;
    end else begin
        v10205_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v10206_ce0_local = 1'b1;
    end else begin
        v10206_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v10206_we0_local = 1'b1;
    end else begin
        v10206_we0_local = 1'b0;
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
assign add_ln12513_1_fu_320_p2 = (ap_sig_allocacmp_indvar_flatten1221_load + 11'd1);
assign add_ln12513_fu_206_p2 = (ap_sig_allocacmp_v1015022_load + 6'd1);
assign add_ln12514_1_fu_306_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 6'd1);
assign add_ln12514_fu_240_p2 = (select_ln12513_fu_212_p3 + 3'd1);
assign add_ln12517_1_fu_392_p2 = (sub_ln12515_fu_383_p2 + zext_ln12517_3_fu_389_p1);
assign add_ln12517_fu_290_p2 = (sub_ln12517_fu_280_p2 + zext_ln12517_1_fu_286_p1);
assign and_ln12513_fu_226_p2 = (xor_ln12513_fu_220_p2 & ap_phi_mux_icmp_ln1251526_phi_fu_159_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_380 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12513_reg_503 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_468 = brmerge_i;
assign empty_fu_246_p2 = (ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 | and_ln12513_fu_226_p2);
assign icmp_ln12513_fu_338_p2 = ((ap_sig_allocacmp_indvar_flatten1221_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln12514_fu_332_p2 = ((select_ln12514_1_fu_312_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln12515_fu_326_p2 = ((v10152_fu_300_p2 == 3'd7) ? 1'b1 : 1'b0);
assign p_shl11_fu_272_p3 = {{v10150_fu_232_p3}, {3'd0}};
assign select_ln12513_fu_212_p3 = ((ap_phi_mux_icmp_ln1251427_phi_fu_149_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1015124_load);
assign select_ln12514_1_fu_312_p3 = ((ap_phi_mux_icmp_ln1251427_phi_fu_149_p4[0:0] == 1'b1) ? 6'd1 : add_ln12514_1_fu_306_p2);
assign select_ln12528_1_fu_408_p3 = ((v10161_fu_403_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln12528_fu_416_p1 = grp_fu_423_p3;
assign select_ln12528_fu_416_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln12528_fu_416_p1 : select_ln12528_1_fu_408_p3);
assign sub_ln12515_fu_383_p2 = (tmp_fu_373_p3 - zext_ln12517_2_fu_380_p1);
assign sub_ln12517_fu_280_p2 = (p_shl11_fu_272_p3 - zext_ln12517_fu_268_p1);
assign tmp_fu_373_p3 = {{trunc_ln12517_reg_488}, {3'd0}};
assign trunc_ln12517_fu_296_p1 = add_ln12517_fu_290_p2[7:0];
assign v10150_fu_232_p3 = ((ap_phi_mux_icmp_ln1251427_phi_fu_149_p4[0:0] == 1'b1) ? add_ln12513_fu_206_p2 : ap_sig_allocacmp_v1015022_load);
assign v10151_fu_260_p3 = ((and_ln12513_fu_226_p2[0:0] == 1'b1) ? add_ln12514_fu_240_p2 : select_ln12513_fu_212_p3);
assign v10152_fu_300_p2 = (v10152_mid2_fu_252_p3 + 3'd1);
assign v10152_mid2_fu_252_p3 = ((empty_fu_246_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v1015225_load);
assign v10161_fu_403_p0 = grp_fu_423_p3;
assign v10161_fu_403_p2 = ((v10161_fu_403_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v10203_address0 = zext_ln12517_4_reg_512_pp0_iter2_reg;
assign v10203_ce0 = v10203_ce0_local;
assign v10204_address0 = zext_ln12513_fu_369_p1;
assign v10204_ce0 = v10204_ce0_local;
assign v10205_address0 = zext_ln12517_4_fu_398_p1;
assign v10205_ce0 = v10205_ce0_local;
assign v10206_address0 = zext_ln12517_4_reg_512_pp0_iter4_reg;
assign v10206_ce0 = v10206_ce0_local;
assign v10206_d0 = select_ln12528_fu_416_p3;
assign v10206_we0 = v10206_we0_local;
assign xor_ln12513_fu_220_p2 = (ap_phi_mux_icmp_ln1251427_phi_fu_149_p4 ^ 1'd1);
assign zext_ln12513_fu_369_p1 = v10150_reg_473;
assign zext_ln12517_1_fu_286_p1 = v10151_fu_260_p3;
assign zext_ln12517_2_fu_380_p1 = add_ln12517_reg_483;
assign zext_ln12517_3_fu_389_p1 = v10152_mid2_reg_478;
assign zext_ln12517_4_fu_398_p1 = add_ln12517_1_fu_392_p2;
assign zext_ln12517_fu_268_p1 = v10150_fu_232_p3;
always @ (posedge ap_clk) begin
    zext_ln12517_4_reg_512[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12517_4_reg_512_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12517_4_reg_512_pp0_iter3_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12517_4_reg_512_pp0_iter4_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 