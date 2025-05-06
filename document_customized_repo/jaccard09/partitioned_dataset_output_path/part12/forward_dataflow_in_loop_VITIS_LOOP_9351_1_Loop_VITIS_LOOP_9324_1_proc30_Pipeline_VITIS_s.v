
module forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln9357_cast,select_ln9356,v7301_address0,v7301_ce0,v7301_we0,v7301_d0,v7301_1_address0,v7301_1_ce0,v7301_1_we0,v7301_1_d0,urem_ln9356_cast,zext_ln9324_3_cast_cast,v9014_0_address0,v9014_0_ce0,v9014_0_q0,v9014_1_address0,v9014_1_ce0,v9014_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] udiv_ln9357_cast;
input  [4:0] select_ln9356;
output  [13:0] v7301_address0;
output   v7301_ce0;
output   v7301_we0;
output  [7:0] v7301_d0;
output  [13:0] v7301_1_address0;
output   v7301_1_ce0;
output   v7301_1_we0;
output  [7:0] v7301_1_d0;
input  [1:0] urem_ln9356_cast;
input  [4:0] zext_ln9324_3_cast_cast;
output  [19:0] v9014_0_address0;
output   v9014_0_ce0;
input  [7:0] v9014_0_q0;
output  [19:0] v9014_1_address0;
output   v9014_1_ce0;
input  [7:0] v9014_1_q0;
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
wire   [0:0] icmp_ln9324_fu_423_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln932527_reg_208;
reg   [0:0] icmp_ln932626_reg_219;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] zext_ln9324_3_cast_cast_cast_cast_fu_234_p1;
reg   [6:0] zext_ln9324_3_cast_cast_cast_cast_reg_600;
wire   [5:0] urem_ln9356_cast_cast_fu_238_p1;
reg   [5:0] urem_ln9356_cast_cast_reg_605;
wire   [6:0] select_ln9356_cast_cast_fu_246_p1;
reg   [6:0] select_ln9356_cast_cast_reg_610;
wire   [5:0] udiv_ln9357_cast_cast_fu_250_p1;
reg   [5:0] udiv_ln9357_cast_cast_reg_615;
wire   [4:0] v7286_mid2_fu_340_p3;
reg   [4:0] v7286_mid2_reg_620;
reg   [4:0] v7286_mid2_reg_620_pp0_iter2_reg;
reg   [4:0] v7286_mid2_reg_620_pp0_iter3_reg;
reg   [4:0] v7286_mid2_reg_620_pp0_iter4_reg;
wire   [4:0] v7285_fu_348_p3;
reg   [4:0] v7285_reg_626;
reg   [4:0] v7285_reg_626_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_632;
reg   [3:0] lshr_ln_reg_632_pp0_iter2_reg;
reg   [5:0] tmp_s_reg_637;
wire   [0:0] icmp_ln9326_fu_411_p2;
reg   [0:0] icmp_ln9326_reg_642;
wire   [0:0] icmp_ln9325_fu_417_p2;
reg   [0:0] icmp_ln9325_reg_647;
reg   [0:0] icmp_ln9324_reg_652;
reg   [0:0] ap_phi_mux_icmp_ln932527_phi_fu_212_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln932626_phi_fu_223_p4;
wire   [63:0] zext_ln9329_4_fu_528_p1;
wire   [63:0] zext_ln9331_4_fu_533_p1;
reg   [13:0] indvar_flatten1221_fu_104;
wire   [13:0] add_ln9324_1_fu_405_p2;
reg   [5:0] v728422_fu_108;
wire   [5:0] v7284_fu_320_p3;
reg   [9:0] indvar_flatten23_fu_112;
wire   [9:0] select_ln9325_1_fu_397_p3;
reg   [4:0] v728524_fu_116;
reg   [4:0] v728625_fu_120;
wire   [4:0] v7286_fu_385_p2;
reg    v9014_0_ce0_local;
reg    v9014_1_ce0_local;
reg    v7301_1_we0_local;
reg    v7301_1_ce0_local;
reg    v7301_we0_local;
reg    v7301_ce0_local;
wire  signed [5:0] zext_ln9324_3_cast_cast_cast_fu_230_p1;
wire  signed [5:0] select_ln9356_cast_fu_242_p1;
wire   [0:0] xor_ln9324_fu_308_p2;
wire   [5:0] add_ln9324_fu_294_p2;
wire   [4:0] select_ln9324_fu_300_p3;
wire   [0:0] and_ln9324_fu_314_p2;
wire   [0:0] empty_fu_334_p2;
wire   [4:0] add_ln9325_fu_328_p2;
wire   [6:0] zext_ln9324_fu_356_p1;
wire   [6:0] empty_98_fu_370_p2;
wire   [9:0] add_ln9325_1_fu_391_p2;
wire   [5:0] mul_ln9329_fu_457_p0;
wire   [7:0] mul_ln9329_fu_457_p1;
wire   [5:0] tmp_30_fu_463_p3;
wire   [5:0] tmp_fu_470_p2;
wire   [6:0] tmp_cast_fu_475_p1;
wire   [6:0] empty_99_fu_479_p2;
wire   [3:0] mul_ln9331_fu_491_p0;
wire   [5:0] mul_ln9331_fu_491_p1;
wire   [5:0] shl_ln_fu_500_p3;
wire   [5:0] add_ln9328_1_fu_507_p2;
wire   [6:0] zext_ln9328_fu_512_p1;
wire   [6:0] add_ln9328_fu_516_p2;
wire   [19:0] grp_fu_538_p4;
wire   [13:0] grp_fu_549_p4;
wire   [12:0] mul_ln9329_fu_457_p2;
wire   [6:0] grp_fu_538_p1;
wire   [6:0] grp_fu_538_p2;
wire   [6:0] grp_fu_538_p3;
wire   [8:0] mul_ln9331_fu_491_p2;
wire   [4:0] grp_fu_549_p1;
wire   [4:0] grp_fu_549_p2;
wire   [4:0] grp_fu_549_p3;
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
wire   [12:0] grp_fu_538_p10;
wire   [19:0] grp_fu_538_p30;
wire   [8:0] grp_fu_549_p10;
wire   [13:0] grp_fu_549_p30;
wire   [12:0] mul_ln9329_fu_457_p00;
wire   [8:0] mul_ln9331_fu_491_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten1221_fu_104 = 14'd0;
#0 v728422_fu_108 = 6'd0;
#0 indvar_flatten23_fu_112 = 10'd0;
#0 v728524_fu_116 = 5'd0;
#0 v728625_fu_120 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U2920(.din0(mul_ln9329_fu_457_p0),.din1(mul_ln9329_fu_457_p1),.dout(mul_ln9329_fu_457_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U2921(.din0(mul_ln9331_fu_491_p0),.din1(mul_ln9331_fu_491_p1),.dout(mul_ln9331_fu_491_p2));
forward_ama_addmuladd_13ns_7ns_7ns_7ns_20_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 13 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 20 ))
ama_addmuladd_13ns_7ns_7ns_7ns_20_4_1_U2922(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9329_fu_457_p2),.din1(grp_fu_538_p1),.din2(grp_fu_538_p2),.din3(grp_fu_538_p3),.ce(1'b1),.dout(grp_fu_538_p4));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U2923(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9331_fu_491_p2),.din1(grp_fu_549_p1),.din2(grp_fu_549_p2),.din3(grp_fu_549_p3),.ce(1'b1),.dout(grp_fu_549_p4));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9324_reg_652 == 1'd0))) begin
        icmp_ln932527_reg_208 <= icmp_ln9325_reg_647;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln932527_reg_208 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9324_reg_652 == 1'd0))) begin
        icmp_ln932626_reg_219 <= icmp_ln9326_reg_642;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln932626_reg_219 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1221_fu_104 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1221_fu_104 <= add_ln9324_1_fu_405_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_112 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten23_fu_112 <= select_ln9325_1_fu_397_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v728422_fu_108 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v728422_fu_108 <= v7284_fu_320_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v728524_fu_116 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v728524_fu_116 <= v7285_fu_348_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v728625_fu_120 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v728625_fu_120 <= v7286_fu_385_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln9324_reg_652 <= icmp_ln9324_fu_423_p2;
        lshr_ln_reg_632 <= {{v7284_fu_320_p3[4:1]}};
        select_ln9356_cast_cast_reg_610[5 : 0] <= select_ln9356_cast_cast_fu_246_p1[5 : 0];
        tmp_s_reg_637 <= {{empty_98_fu_370_p2[6:1]}};
        udiv_ln9357_cast_cast_reg_615[1 : 0] <= udiv_ln9357_cast_cast_fu_250_p1[1 : 0];
        urem_ln9356_cast_cast_reg_605[1 : 0] <= urem_ln9356_cast_cast_fu_238_p1[1 : 0];
        v7285_reg_626 <= v7285_fu_348_p3;
        v7286_mid2_reg_620 <= v7286_mid2_fu_340_p3;
        zext_ln9324_3_cast_cast_cast_cast_reg_600[5 : 0] <= zext_ln9324_3_cast_cast_cast_cast_fu_234_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        lshr_ln_reg_632_pp0_iter2_reg <= lshr_ln_reg_632;
        v7285_reg_626_pp0_iter2_reg <= v7285_reg_626;
        v7286_mid2_reg_620_pp0_iter2_reg <= v7286_mid2_reg_620;
        v7286_mid2_reg_620_pp0_iter3_reg <= v7286_mid2_reg_620_pp0_iter2_reg;
        v7286_mid2_reg_620_pp0_iter4_reg <= v7286_mid2_reg_620_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9325_reg_647 <= icmp_ln9325_fu_417_p2;
        icmp_ln9326_reg_642 <= icmp_ln9326_fu_411_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9324_fu_423_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9324_reg_652 == 1'd0))) begin
        ap_phi_mux_icmp_ln932527_phi_fu_212_p4 = icmp_ln9325_reg_647;
    end else begin
        ap_phi_mux_icmp_ln932527_phi_fu_212_p4 = icmp_ln932527_reg_208;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9324_reg_652 == 1'd0))) begin
        ap_phi_mux_icmp_ln932626_phi_fu_223_p4 = icmp_ln9326_reg_642;
    end else begin
        ap_phi_mux_icmp_ln932626_phi_fu_223_p4 = icmp_ln932626_reg_219;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v7301_1_ce0_local = 1'b1;
    end else begin
        v7301_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v7301_1_we0_local = 1'b1;
    end else begin
        v7301_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v7301_ce0_local = 1'b1;
    end else begin
        v7301_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v7301_we0_local = 1'b1;
    end else begin
        v7301_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v9014_0_ce0_local = 1'b1;
    end else begin
        v9014_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v9014_1_ce0_local = 1'b1;
    end else begin
        v9014_1_ce0_local = 1'b0;
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
assign add_ln9324_1_fu_405_p2 = (indvar_flatten1221_fu_104 + 14'd1);
assign add_ln9324_fu_294_p2 = (v728422_fu_108 + 6'd2);
assign add_ln9325_1_fu_391_p2 = (indvar_flatten23_fu_112 + 10'd1);
assign add_ln9325_fu_328_p2 = (select_ln9324_fu_300_p3 + 5'd1);
assign add_ln9328_1_fu_507_p2 = (shl_ln_fu_500_p3 + urem_ln9356_cast_cast_reg_605);
assign add_ln9328_fu_516_p2 = (zext_ln9328_fu_512_p1 + zext_ln9324_3_cast_cast_cast_cast_reg_600);
assign and_ln9324_fu_314_p2 = (xor_ln9324_fu_308_p2 & ap_phi_mux_icmp_ln932626_phi_fu_223_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_98_fu_370_p2 = (mul_i + zext_ln9324_fu_356_p1);
assign empty_99_fu_479_p2 = (tmp_cast_fu_475_p1 + select_ln9356_cast_cast_reg_610);
assign empty_fu_334_p2 = (ap_phi_mux_icmp_ln932527_phi_fu_212_p4 | and_ln9324_fu_314_p2);
assign grp_fu_538_p1 = grp_fu_538_p10;
assign grp_fu_538_p10 = empty_99_fu_479_p2;
assign grp_fu_538_p2 = 20'd110;
assign grp_fu_538_p3 = grp_fu_538_p30;
assign grp_fu_538_p30 = add_ln9328_fu_516_p2;
assign grp_fu_549_p1 = grp_fu_549_p10;
assign grp_fu_549_p10 = v7285_reg_626_pp0_iter2_reg;
assign grp_fu_549_p2 = 14'd27;
assign grp_fu_549_p3 = grp_fu_549_p30;
assign grp_fu_549_p30 = v7286_mid2_reg_620_pp0_iter4_reg;
assign icmp_ln9324_fu_423_p2 = ((indvar_flatten1221_fu_104 == 14'd11663) ? 1'b1 : 1'b0);
assign icmp_ln9325_fu_417_p2 = ((select_ln9325_1_fu_397_p3 == 10'd729) ? 1'b1 : 1'b0);
assign icmp_ln9326_fu_411_p2 = ((v7286_fu_385_p2 == 5'd27) ? 1'b1 : 1'b0);
assign mul_ln9329_fu_457_p0 = mul_ln9329_fu_457_p00;
assign mul_ln9329_fu_457_p00 = tmp_s_reg_637;
assign mul_ln9329_fu_457_p1 = 13'd110;
assign mul_ln9331_fu_491_p0 = mul_ln9331_fu_491_p00;
assign mul_ln9331_fu_491_p00 = lshr_ln_reg_632_pp0_iter2_reg;
assign mul_ln9331_fu_491_p1 = 9'd27;
assign select_ln9324_fu_300_p3 = ((ap_phi_mux_icmp_ln932527_phi_fu_212_p4[0:0] == 1'b1) ? 5'd0 : v728524_fu_116);
assign select_ln9325_1_fu_397_p3 = ((ap_phi_mux_icmp_ln932527_phi_fu_212_p4[0:0] == 1'b1) ? 10'd1 : add_ln9325_1_fu_391_p2);
assign select_ln9356_cast_cast_fu_246_p1 = $unsigned(select_ln9356_cast_fu_242_p1);
assign select_ln9356_cast_fu_242_p1 = $signed(select_ln9356);
assign shl_ln_fu_500_p3 = {{v7286_mid2_reg_620_pp0_iter3_reg}, {1'd0}};
assign tmp_30_fu_463_p3 = {{v7285_reg_626}, {1'd0}};
assign tmp_cast_fu_475_p1 = tmp_fu_470_p2;
assign tmp_fu_470_p2 = (tmp_30_fu_463_p3 + udiv_ln9357_cast_cast_reg_615);
assign udiv_ln9357_cast_cast_fu_250_p1 = udiv_ln9357_cast;
assign urem_ln9356_cast_cast_fu_238_p1 = urem_ln9356_cast;
assign v7284_fu_320_p3 = ((ap_phi_mux_icmp_ln932527_phi_fu_212_p4[0:0] == 1'b1) ? add_ln9324_fu_294_p2 : v728422_fu_108);
assign v7285_fu_348_p3 = ((and_ln9324_fu_314_p2[0:0] == 1'b1) ? add_ln9325_fu_328_p2 : select_ln9324_fu_300_p3);
assign v7286_fu_385_p2 = (v7286_mid2_fu_340_p3 + 5'd1);
assign v7286_mid2_fu_340_p3 = ((empty_fu_334_p2[0:0] == 1'b1) ? 5'd0 : v728625_fu_120);
assign v7301_1_address0 = zext_ln9331_4_fu_533_p1;
assign v7301_1_ce0 = v7301_1_ce0_local;
assign v7301_1_d0 = v9014_0_q0;
assign v7301_1_we0 = v7301_1_we0_local;
assign v7301_address0 = zext_ln9331_4_fu_533_p1;
assign v7301_ce0 = v7301_ce0_local;
assign v7301_d0 = v9014_1_q0;
assign v7301_we0 = v7301_we0_local;
assign v9014_0_address0 = zext_ln9329_4_fu_528_p1;
assign v9014_0_ce0 = v9014_0_ce0_local;
assign v9014_1_address0 = zext_ln9329_4_fu_528_p1;
assign v9014_1_ce0 = v9014_1_ce0_local;
assign xor_ln9324_fu_308_p2 = (ap_phi_mux_icmp_ln932527_phi_fu_212_p4 ^ 1'd1);
assign zext_ln9324_3_cast_cast_cast_cast_fu_234_p1 = $unsigned(zext_ln9324_3_cast_cast_cast_fu_230_p1);
assign zext_ln9324_3_cast_cast_cast_fu_230_p1 = $signed(zext_ln9324_3_cast_cast);
assign zext_ln9324_fu_356_p1 = v7284_fu_320_p3;
assign zext_ln9328_fu_512_p1 = add_ln9328_1_fu_507_p2;
assign zext_ln9329_4_fu_528_p1 = grp_fu_538_p4;
assign zext_ln9331_4_fu_533_p1 = grp_fu_549_p4;
always @ (posedge ap_clk) begin
    zext_ln9324_3_cast_cast_cast_cast_reg_600[6] <= 1'b0;
    urem_ln9356_cast_cast_reg_605[5:2] <= 4'b0000;
    select_ln9356_cast_cast_reg_610[6] <= 1'b0;
    udiv_ln9357_cast_cast_reg_615[5:2] <= 4'b0000;
end
endmodule 
