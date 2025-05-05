module forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_322,v70_address0,v70_ce0,v70_we0,v70_d0,v70_1_address0,v70_1_ce0,v70_1_we0,v70_1_d0,v70_2_address0,v70_2_ce0,v70_2_we0,v70_2_d0,v70_3_address0,v70_3_ce0,v70_3_we0,v70_3_d0,mul_ln109,v9011_0_address0,v9011_0_ce0,v9011_0_q0,v9011_1_address0,v9011_1_ce0,v9011_1_q0,v9011_2_address0,v9011_2_ce0,v9011_2_q0,v9011_3_address0,v9011_3_ce0,v9011_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] mul_i;
input  [9:0] tmp_322;
output  [7:0] v70_address0;
output   v70_ce0;
output   v70_we0;
output  [7:0] v70_d0;
output  [7:0] v70_1_address0;
output   v70_1_ce0;
output   v70_1_we0;
output  [7:0] v70_1_d0;
output  [7:0] v70_2_address0;
output   v70_2_ce0;
output   v70_2_we0;
output  [7:0] v70_2_d0;
output  [7:0] v70_3_address0;
output   v70_3_ce0;
output   v70_3_we0;
output  [7:0] v70_3_d0;
input  [9:0] mul_ln109;
output  [19:0] v9011_0_address0;
output   v9011_0_ce0;
input  [7:0] v9011_0_q0;
output  [19:0] v9011_1_address0;
output   v9011_1_ce0;
input  [7:0] v9011_1_q0;
output  [19:0] v9011_2_address0;
output   v9011_2_ce0;
input  [7:0] v9011_2_q0;
output  [19:0] v9011_3_address0;
output   v9011_3_ce0;
input  [7:0] v9011_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln109_fu_348_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln109_fu_272_p3;
reg   [4:0] select_ln109_reg_455;
reg   [4:0] select_ln109_reg_455_pp0_iter1_reg;
wire   [0:0] icmp_ln110_fu_342_p2;
reg   [0:0] icmp_ln110_reg_471;
reg   [0:0] icmp_ln109_reg_476;
wire   [19:0] zext_ln113_1_fu_380_p1;
wire   [7:0] grp_fu_401_p3;
reg   [7:0] add_ln119_reg_491;
reg   [0:0] ap_phi_mux_icmp_ln11048_phi_fu_235_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln113_2_fu_384_p1;
wire   [63:0] zext_ln115_1_fu_388_p1;
wire   [63:0] zext_ln119_1_fu_394_p1;
reg   [7:0] indvar_flatten45_fu_94;
wire   [7:0] add_ln109_1_fu_336_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v4646_fu_98;
wire   [5:0] v46_fu_280_p3;
reg   [5:0] ap_sig_allocacmp_v4646_load;
reg   [4:0] v4747_fu_102;
wire   [4:0] v47_fu_330_p2;
reg   [4:0] ap_sig_allocacmp_v4747_load;
reg    v9011_0_ce0_local;
reg    v9011_1_ce0_local;
reg    v9011_2_ce0_local;
reg    v9011_3_ce0_local;
reg    v70_3_we0_local;
reg    v70_3_ce0_local;
reg    v70_2_we0_local;
reg    v70_2_ce0_local;
reg    v70_1_we0_local;
reg    v70_1_ce0_local;
reg    v70_we0_local;
reg    v70_ce0_local;
wire   [5:0] add_ln109_fu_266_p2;
wire   [3:0] lshr_ln_fu_292_p4;
wire   [11:0] zext_ln109_fu_288_p1;
wire   [11:0] empty_fu_310_p2;
wire   [9:0] tmp_s_fu_316_p4;
wire   [9:0] zext_ln110_fu_372_p1;
wire   [9:0] add_ln112_fu_375_p2;
wire   [19:0] grp_fu_409_p4;
wire   [19:0] grp_fu_420_p3;
wire   [4:0] grp_fu_401_p0;
wire   [3:0] grp_fu_401_p1;
wire   [4:0] grp_fu_401_p2;
wire   [3:0] grp_fu_409_p1;
wire   [9:0] grp_fu_409_p2;
wire   [9:0] grp_fu_409_p3;
wire   [9:0] grp_fu_420_p0;
wire   [9:0] grp_fu_420_p1;
wire   [9:0] grp_fu_420_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_401_p10;
wire   [7:0] grp_fu_401_p20;
wire   [9:0] grp_fu_409_p10;
wire   [19:0] grp_fu_420_p00;
reg    ap_condition_377;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten45_fu_94 = 8'd0;
#0 v4646_fu_98 = 6'd0;
#0 v4747_fu_102 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_5ns_4ns_5ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.dout_WIDTH( 8 ))
mac_muladd_5ns_4ns_5ns_8_4_1_U10149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_401_p0),.din1(grp_fu_401_p1),.din2(grp_fu_401_p2),.ce(1'b1),.dout(grp_fu_401_p3));
forward_ama_addmuladd_10ns_4ns_10ns_10ns_20_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.din2_WIDTH( 10 ),.din3_WIDTH( 10 ),.dout_WIDTH( 20 ))
ama_addmuladd_10ns_4ns_10ns_10ns_20_4_1_U10150(.clk(ap_clk),.reset(ap_rst),.din0(tmp_322),.din1(grp_fu_409_p1),.din2(grp_fu_409_p2),.din3(grp_fu_409_p3),.ce(1'b1),.dout(grp_fu_409_p4));
forward_mac_muladd_10ns_10ns_10ns_20_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.din2_WIDTH( 10 ),.dout_WIDTH( 20 ))
mac_muladd_10ns_10ns_10ns_20_4_1_U10151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_420_p0),.din1(grp_fu_420_p1),.din2(grp_fu_420_p2),.ce(1'b1),.dout(grp_fu_420_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_94 <= add_ln109_1_fu_336_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_94 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4646_fu_98 <= v46_fu_280_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4646_fu_98 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4747_fu_102 <= v47_fu_330_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4747_fu_102 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        add_ln119_reg_491 <= grp_fu_401_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln109_reg_476 <= icmp_ln109_fu_348_p2;
        select_ln109_reg_455 <= select_ln109_fu_272_p3;
        select_ln109_reg_455_pp0_iter1_reg <= select_ln109_reg_455;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln110_reg_471 <= icmp_ln110_fu_342_p2;
    end
end
always @ (*) begin
    if (((icmp_ln109_fu_348_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_377)) begin
            ap_phi_mux_icmp_ln11048_phi_fu_235_p4 = icmp_ln110_reg_471;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln11048_phi_fu_235_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln11048_phi_fu_235_p4 = icmp_ln110_reg_471;
        end
    end else begin
        ap_phi_mux_icmp_ln11048_phi_fu_235_p4 = icmp_ln110_reg_471;
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
        ap_sig_allocacmp_indvar_flatten45_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v4646_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4646_load = v4646_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v4747_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v4747_load = v4747_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_1_ce0_local = 1'b1;
    end else begin
        v70_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_1_we0_local = 1'b1;
    end else begin
        v70_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_2_ce0_local = 1'b1;
    end else begin
        v70_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_2_we0_local = 1'b1;
    end else begin
        v70_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_3_ce0_local = 1'b1;
    end else begin
        v70_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_3_we0_local = 1'b1;
    end else begin
        v70_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_ce0_local = 1'b1;
    end else begin
        v70_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v70_we0_local = 1'b1;
    end else begin
        v70_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9011_0_ce0_local = 1'b1;
    end else begin
        v9011_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9011_1_ce0_local = 1'b1;
    end else begin
        v9011_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9011_2_ce0_local = 1'b1;
    end else begin
        v9011_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9011_3_ce0_local = 1'b1;
    end else begin
        v9011_3_ce0_local = 1'b0;
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
assign add_ln109_1_fu_336_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 8'd1);
assign add_ln109_fu_266_p2 = (ap_sig_allocacmp_v4646_load + 6'd4);
assign add_ln112_fu_375_p2 = (mul_ln109 + zext_ln110_fu_372_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_377 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln109_reg_476 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_310_p2 = (mul_i + zext_ln109_fu_288_p1);
assign grp_fu_401_p0 = 8'd25;
assign grp_fu_401_p1 = grp_fu_401_p10;
assign grp_fu_401_p10 = lshr_ln_fu_292_p4;
assign grp_fu_401_p2 = grp_fu_401_p20;
assign grp_fu_401_p20 = select_ln109_reg_455_pp0_iter1_reg;
assign grp_fu_409_p1 = grp_fu_409_p10;
assign grp_fu_409_p10 = lshr_ln_fu_292_p4;
assign grp_fu_409_p2 = 20'd1000;
assign grp_fu_409_p3 = zext_ln113_1_fu_380_p1;
assign grp_fu_420_p0 = grp_fu_420_p00;
assign grp_fu_420_p00 = tmp_s_fu_316_p4;
assign grp_fu_420_p1 = 20'd1000;
assign grp_fu_420_p2 = zext_ln113_1_fu_380_p1;
assign icmp_ln109_fu_348_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 8'd199) ? 1'b1 : 1'b0);
assign icmp_ln110_fu_342_p2 = ((v47_fu_330_p2 == 5'd25) ? 1'b1 : 1'b0);
assign lshr_ln_fu_292_p4 = {{v46_fu_280_p3[5:2]}};
assign select_ln109_fu_272_p3 = ((ap_phi_mux_icmp_ln11048_phi_fu_235_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v4747_load);
assign tmp_s_fu_316_p4 = {{empty_fu_310_p2[11:2]}};
assign v46_fu_280_p3 = ((ap_phi_mux_icmp_ln11048_phi_fu_235_p4[0:0] == 1'b1) ? add_ln109_fu_266_p2 : ap_sig_allocacmp_v4646_load);
assign v47_fu_330_p2 = (select_ln109_fu_272_p3 + 5'd1);
assign v70_1_address0 = zext_ln119_1_fu_394_p1;
assign v70_1_ce0 = v70_1_ce0_local;
assign v70_1_d0 = v9011_2_q0;
assign v70_1_we0 = v70_1_we0_local;
assign v70_2_address0 = zext_ln119_1_fu_394_p1;
assign v70_2_ce0 = v70_2_ce0_local;
assign v70_2_d0 = v9011_1_q0;
assign v70_2_we0 = v70_2_we0_local;
assign v70_3_address0 = zext_ln119_1_fu_394_p1;
assign v70_3_ce0 = v70_3_ce0_local;
assign v70_3_d0 = v9011_0_q0;
assign v70_3_we0 = v70_3_we0_local;
assign v70_address0 = zext_ln119_1_fu_394_p1;
assign v70_ce0 = v70_ce0_local;
assign v70_d0 = v9011_3_q0;
assign v70_we0 = v70_we0_local;
assign v9011_0_address0 = zext_ln113_2_fu_384_p1;
assign v9011_0_ce0 = v9011_0_ce0_local;
assign v9011_1_address0 = zext_ln115_1_fu_388_p1;
assign v9011_1_ce0 = v9011_1_ce0_local;
assign v9011_2_address0 = zext_ln115_1_fu_388_p1;
assign v9011_2_ce0 = v9011_2_ce0_local;
assign v9011_3_address0 = zext_ln115_1_fu_388_p1;
assign v9011_3_ce0 = v9011_3_ce0_local;
assign zext_ln109_fu_288_p1 = v46_fu_280_p3;
assign zext_ln110_fu_372_p1 = select_ln109_reg_455_pp0_iter1_reg;
assign zext_ln113_1_fu_380_p1 = add_ln112_fu_375_p2;
assign zext_ln113_2_fu_384_p1 = grp_fu_409_p4;
assign zext_ln115_1_fu_388_p1 = grp_fu_420_p3;
assign zext_ln119_1_fu_394_p1 = add_ln119_reg_491;
endmodule 