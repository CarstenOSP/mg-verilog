
module forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12823_address0,v12823_ce0,v12823_q0,v12824_address0,v12824_ce0,v12824_q0,v12822_address0,v12822_ce0,v12822_q0,v12825_address0,v12825_ce0,v12825_we0,v12825_d0,brmerge_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v12823_address0;
output   v12823_ce0;
input  [7:0] v12823_q0;
output  [12:0] v12824_address0;
output   v12824_ce0;
input  [7:0] v12824_q0;
output  [12:0] v12822_address0;
output   v12822_ce0;
input  [7:0] v12822_q0;
output  [12:0] v12825_address0;
output   v12825_ce0;
output   v12825_we0;
output  [7:0] v12825_d0;
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
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16321_fu_356_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1632227_reg_154;
reg   [0:0] icmp_ln1632326_reg_165;
wire   [0:0] brmerge_i_read_reg_494;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] v12769_fu_242_p3;
reg   [5:0] v12769_reg_499;
wire   [3:0] v12771_mid2_fu_262_p3;
reg   [3:0] v12771_mid2_reg_504;
wire   [9:0] add_ln16325_fu_308_p2;
reg   [9:0] add_ln16325_reg_509;
wire   [8:0] trunc_ln16325_fu_314_p1;
reg   [8:0] trunc_ln16325_reg_514;
wire   [0:0] icmp_ln16323_fu_344_p2;
reg   [0:0] icmp_ln16323_reg_519;
wire   [0:0] icmp_ln16322_fu_350_p2;
reg   [0:0] icmp_ln16322_reg_524;
reg   [0:0] icmp_ln16321_reg_529;
wire   [63:0] zext_ln16325_4_fu_424_p1;
reg   [63:0] zext_ln16325_4_reg_538;
reg   [63:0] zext_ln16325_4_reg_538_pp0_iter3_reg;
reg   [63:0] zext_ln16325_4_reg_538_pp0_iter4_reg;
reg   [63:0] zext_ln16325_4_reg_538_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln1632227_phi_fu_158_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1632326_phi_fu_169_p4;
wire   [63:0] zext_ln16321_fu_387_p1;
reg   [12:0] indvar_flatten1221_fu_76;
wire   [12:0] add_ln16321_1_fu_338_p2;
reg   [5:0] v1276922_fu_80;
reg   [7:0] indvar_flatten23_fu_84;
wire   [7:0] select_ln16322_1_fu_330_p3;
reg   [3:0] v1277024_fu_88;
wire   [3:0] v12770_fu_270_p3;
reg   [3:0] v1277125_fu_92;
wire   [3:0] v12771_fu_318_p2;
reg    v12823_ce0_local;
reg    v12824_ce0_local;
reg    v12822_ce0_local;
reg    v12825_we0_local;
wire   [7:0] select_ln16336_fu_442_p3;
reg    v12825_ce0_local;
wire   [0:0] xor_ln16321_fu_230_p2;
wire   [5:0] add_ln16321_fu_216_p2;
wire   [3:0] select_ln16321_fu_222_p3;
wire   [0:0] and_ln16321_fu_236_p2;
wire   [0:0] empty_fu_256_p2;
wire   [3:0] add_ln16322_fu_250_p2;
wire   [6:0] tmp_fu_286_p3;
wire   [9:0] p_shl12_fu_278_p3;
wire   [9:0] zext_ln16325_fu_294_p1;
wire   [9:0] sub_ln16325_fu_298_p2;
wire   [9:0] zext_ln16325_1_fu_304_p1;
wire   [7:0] add_ln16322_1_fu_324_p2;
wire   [10:0] tmp_298_fu_391_p3;
wire   [12:0] tmp_299_fu_398_p3;
wire   [12:0] zext_ln16325_2_fu_405_p1;
wire   [12:0] sub_ln16323_fu_409_p2;
wire   [12:0] zext_ln16325_3_fu_415_p1;
wire   [12:0] add_ln16325_1_fu_418_p2;
wire  signed [7:0] v12780_fu_429_p0;
wire   [7:0] grp_fu_449_p3;
wire   [0:0] v12780_fu_429_p2;
wire  signed [7:0] select_ln16336_fu_442_p1;
wire   [7:0] select_ln16336_1_fu_434_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten1221_fu_76 = 13'd0;
#0 v1276922_fu_80 = 6'd0;
#0 indvar_flatten23_fu_84 = 8'd0;
#0 v1277024_fu_88 = 4'd0;
#0 v1277125_fu_92 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U3144(.clk(ap_clk),.reset(ap_rst),.din0(v12824_q0),.din1(v12823_q0),.din2(v12822_q0),.ce(1'b1),.dout(grp_fu_449_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16321_reg_529 == 1'd0))) begin
        icmp_ln1632227_reg_154 <= icmp_ln16322_reg_524;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1632227_reg_154 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16321_reg_529 == 1'd0))) begin
        icmp_ln1632326_reg_165 <= icmp_ln16323_reg_519;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1632326_reg_165 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_fu_76 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1221_fu_76 <= add_ln16321_1_fu_338_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_84 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten23_fu_84 <= select_ln16322_1_fu_330_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1276922_fu_80 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1276922_fu_80 <= v12769_fu_242_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1277024_fu_88 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1277024_fu_88 <= v12770_fu_270_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1277125_fu_92 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1277125_fu_92 <= v12771_fu_318_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16325_reg_509 <= add_ln16325_fu_308_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln16321_reg_529 <= icmp_ln16321_fu_356_p2;
        trunc_ln16325_reg_514 <= trunc_ln16325_fu_314_p1;
        v12769_reg_499 <= v12769_fu_242_p3;
        v12771_mid2_reg_504 <= v12771_mid2_fu_262_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        zext_ln16325_4_reg_538[12 : 0] <= zext_ln16325_4_fu_424_p1[12 : 0];
        zext_ln16325_4_reg_538_pp0_iter3_reg[12 : 0] <= zext_ln16325_4_reg_538[12 : 0];
        zext_ln16325_4_reg_538_pp0_iter4_reg[12 : 0] <= zext_ln16325_4_reg_538_pp0_iter3_reg[12 : 0];
        zext_ln16325_4_reg_538_pp0_iter5_reg[12 : 0] <= zext_ln16325_4_reg_538_pp0_iter4_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16322_reg_524 <= icmp_ln16322_fu_350_p2;
        icmp_ln16323_reg_519 <= icmp_ln16323_fu_344_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16321_fu_356_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16321_reg_529 == 1'd0))) begin
        ap_phi_mux_icmp_ln1632227_phi_fu_158_p4 = icmp_ln16322_reg_524;
    end else begin
        ap_phi_mux_icmp_ln1632227_phi_fu_158_p4 = icmp_ln1632227_reg_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16321_reg_529 == 1'd0))) begin
        ap_phi_mux_icmp_ln1632326_phi_fu_169_p4 = icmp_ln16323_reg_519;
    end else begin
        ap_phi_mux_icmp_ln1632326_phi_fu_169_p4 = icmp_ln1632326_reg_165;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12822_ce0_local = 1'b1;
    end else begin
        v12822_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12823_ce0_local = 1'b1;
    end else begin
        v12823_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12824_ce0_local = 1'b1;
    end else begin
        v12824_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12825_ce0_local = 1'b1;
    end else begin
        v12825_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v12825_we0_local = 1'b1;
    end else begin
        v12825_we0_local = 1'b0;
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
assign add_ln16321_1_fu_338_p2 = (indvar_flatten1221_fu_76 + 13'd1);
assign add_ln16321_fu_216_p2 = (v1276922_fu_80 + 6'd1);
assign add_ln16322_1_fu_324_p2 = (indvar_flatten23_fu_84 + 8'd1);
assign add_ln16322_fu_250_p2 = (select_ln16321_fu_222_p3 + 4'd1);
assign add_ln16325_1_fu_418_p2 = (sub_ln16323_fu_409_p2 + zext_ln16325_3_fu_415_p1);
assign add_ln16325_fu_308_p2 = (sub_ln16325_fu_298_p2 + zext_ln16325_1_fu_304_p1);
assign and_ln16321_fu_236_p2 = (xor_ln16321_fu_230_p2 & ap_phi_mux_icmp_ln1632326_phi_fu_169_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_494 = brmerge_i;
assign empty_fu_256_p2 = (ap_phi_mux_icmp_ln1632227_phi_fu_158_p4 | and_ln16321_fu_236_p2);
assign icmp_ln16321_fu_356_p2 = ((indvar_flatten1221_fu_76 == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln16322_fu_350_p2 = ((select_ln16322_1_fu_330_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln16323_fu_344_p2 = ((v12771_fu_318_p2 == 4'd14) ? 1'b1 : 1'b0);
assign p_shl12_fu_278_p3 = {{v12769_fu_242_p3}, {4'd0}};
assign select_ln16321_fu_222_p3 = ((ap_phi_mux_icmp_ln1632227_phi_fu_158_p4[0:0] == 1'b1) ? 4'd0 : v1277024_fu_88);
assign select_ln16322_1_fu_330_p3 = ((ap_phi_mux_icmp_ln1632227_phi_fu_158_p4[0:0] == 1'b1) ? 8'd1 : add_ln16322_1_fu_324_p2);
assign select_ln16336_1_fu_434_p3 = ((v12780_fu_429_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln16336_fu_442_p1 = grp_fu_449_p3;
assign select_ln16336_fu_442_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln16336_fu_442_p1 : select_ln16336_1_fu_434_p3);
assign sub_ln16323_fu_409_p2 = (tmp_299_fu_398_p3 - zext_ln16325_2_fu_405_p1);
assign sub_ln16325_fu_298_p2 = (p_shl12_fu_278_p3 - zext_ln16325_fu_294_p1);
assign tmp_298_fu_391_p3 = {{add_ln16325_reg_509}, {1'd0}};
assign tmp_299_fu_398_p3 = {{trunc_ln16325_reg_514}, {4'd0}};
assign tmp_fu_286_p3 = {{v12769_fu_242_p3}, {1'd0}};
assign trunc_ln16325_fu_314_p1 = add_ln16325_fu_308_p2[8:0];
assign v12769_fu_242_p3 = ((ap_phi_mux_icmp_ln1632227_phi_fu_158_p4[0:0] == 1'b1) ? add_ln16321_fu_216_p2 : v1276922_fu_80);
assign v12770_fu_270_p3 = ((and_ln16321_fu_236_p2[0:0] == 1'b1) ? add_ln16322_fu_250_p2 : select_ln16321_fu_222_p3);
assign v12771_fu_318_p2 = (v12771_mid2_fu_262_p3 + 4'd1);
assign v12771_mid2_fu_262_p3 = ((empty_fu_256_p2[0:0] == 1'b1) ? 4'd0 : v1277125_fu_92);
assign v12780_fu_429_p0 = grp_fu_449_p3;
assign v12780_fu_429_p2 = ((v12780_fu_429_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v12822_address0 = zext_ln16325_4_reg_538_pp0_iter3_reg;
assign v12822_ce0 = v12822_ce0_local;
assign v12823_address0 = zext_ln16321_fu_387_p1;
assign v12823_ce0 = v12823_ce0_local;
assign v12824_address0 = zext_ln16325_4_fu_424_p1;
assign v12824_ce0 = v12824_ce0_local;
assign v12825_address0 = zext_ln16325_4_reg_538_pp0_iter5_reg;
assign v12825_ce0 = v12825_ce0_local;
assign v12825_d0 = select_ln16336_fu_442_p3;
assign v12825_we0 = v12825_we0_local;
assign xor_ln16321_fu_230_p2 = (ap_phi_mux_icmp_ln1632227_phi_fu_158_p4 ^ 1'd1);
assign zext_ln16321_fu_387_p1 = v12769_reg_499;
assign zext_ln16325_1_fu_304_p1 = v12770_fu_270_p3;
assign zext_ln16325_2_fu_405_p1 = tmp_298_fu_391_p3;
assign zext_ln16325_3_fu_415_p1 = v12771_mid2_reg_504;
assign zext_ln16325_4_fu_424_p1 = add_ln16325_1_fu_418_p2;
assign zext_ln16325_fu_294_p1 = tmp_fu_286_p3;
always @ (posedge ap_clk) begin
    zext_ln16325_4_reg_538[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln16325_4_reg_538_pp0_iter3_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln16325_4_reg_538_pp0_iter4_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln16325_4_reg_538_pp0_iter5_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
