
module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,zext_ln19030_1,zext_ln19030,v14652_address0,v14652_ce0,v14652_we0,v14652_d0,v14652_1_address0,v14652_1_ce0,v14652_1_we0,v14652_1_d0,v14651_1_address0,v14651_1_ce0,v14651_1_q0,v14650_1_address0,v14650_1_ce0,v14650_1_q0,v14651_address0,v14651_ce0,v14651_q0,v14650_address0,v14650_ce0,v14650_q0,brmerge_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i;
input  [2:0] zext_ln19030_1;
input  [1:0] zext_ln19030;
output  [13:0] v14652_address0;
output   v14652_ce0;
output   v14652_we0;
output  [7:0] v14652_d0;
output  [13:0] v14652_1_address0;
output   v14652_1_ce0;
output   v14652_1_we0;
output  [7:0] v14652_1_d0;
output  [13:0] v14651_1_address0;
output   v14651_1_ce0;
input  [7:0] v14651_1_q0;
output  [13:0] v14650_1_address0;
output   v14650_1_ce0;
input  [7:0] v14650_1_q0;
output  [13:0] v14651_address0;
output   v14651_ce0;
input  [7:0] v14651_q0;
output  [13:0] v14650_address0;
output   v14650_ce0;
input  [7:0] v14650_q0;
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
wire   [0:0] icmp_ln18957_fu_305_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [9:0] v15625_address0;
wire  signed [7:0] v15625_q0;
reg   [0:0] icmp_ln1895845_reg_241;
reg   [0:0] icmp_ln1895944_reg_252;
wire   [0:0] brmerge_i_read_reg_676;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln19030_cast_fu_263_p1;
reg   [9:0] zext_ln19030_cast_reg_687;
wire   [7:0] zext_ln19030_1_cast_fu_267_p1;
reg   [7:0] zext_ln19030_1_cast_reg_692;
reg   [0:0] icmp_ln18957_reg_697;
reg   [0:0] icmp_ln18957_reg_697_pp0_iter1_reg;
wire   [7:0] empty_238_fu_435_p2;
reg   [7:0] empty_238_reg_701;
wire   [10:0] add_ln18983_fu_444_p2;
reg   [10:0] add_ln18983_reg_707;
wire   [9:0] trunc_ln18983_fu_450_p1;
reg   [9:0] trunc_ln18983_reg_712;
reg   [3:0] lshr_ln_reg_717;
wire   [0:0] icmp_ln18959_fu_484_p2;
reg   [0:0] icmp_ln18959_reg_722;
wire   [0:0] icmp_ln18958_fu_490_p2;
reg   [0:0] icmp_ln18958_reg_727;
wire   [63:0] zext_ln18983_4_fu_575_p1;
reg   [63:0] zext_ln18983_4_reg_737;
reg   [63:0] zext_ln18983_4_reg_737_pp0_iter3_reg;
reg   [63:0] zext_ln18983_4_reg_737_pp0_iter4_reg;
reg   [63:0] zext_ln18983_4_reg_737_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln1895845_phi_fu_245_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1895944_phi_fu_256_p4;
wire   [63:0] p_cast2_fu_537_p1;
reg   [13:0] indvar_flatten1239_fu_106;
wire   [13:0] add_ln18957_1_fu_299_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1239_load;
reg   [5:0] v1459240_fu_110;
wire   [5:0] v14592_fu_356_p3;
reg   [8:0] indvar_flatten41_fu_114;
wire   [8:0] select_ln18958_1_fu_476_p3;
reg   [4:0] v1459342_fu_118;
wire   [4:0] v14593_fu_378_p3;
reg   [4:0] v1459443_fu_122;
wire   [4:0] v14594_fu_464_p2;
reg    v15625_ce0_local;
reg    v14651_1_ce0_local;
reg    v14651_ce0_local;
reg    v14650_1_ce0_local;
reg    v14650_ce0_local;
reg    v14652_1_we0_local;
wire   [7:0] select_ln18972_fu_594_p3;
reg    v14652_1_ce0_local;
reg    v14652_we0_local;
wire   [7:0] select_ln18983_fu_614_p3;
reg    v14652_ce0_local;
wire   [5:0] add_ln18957_fu_328_p2;
wire   [4:0] select_ln18957_fu_334_p3;
wire   [0:0] or_ln18957_fu_350_p2;
wire   [4:0] select_ln18957_1_fu_342_p3;
wire   [4:0] add_ln18958_fu_364_p2;
wire   [7:0] tmp_fu_394_p3;
wire   [10:0] p_shl23_fu_386_p3;
wire   [10:0] zext_ln18983_fu_402_p1;
wire   [5:0] empty_fu_412_p2;
wire   [7:0] p_shl22_fu_421_p3;
wire   [7:0] p_cast_fu_417_p1;
wire   [7:0] empty_237_fu_429_p2;
wire   [10:0] sub_ln18983_fu_406_p2;
wire   [10:0] zext_ln18983_1_fu_440_p1;
wire   [4:0] v14594_mid2_fu_370_p3;
wire   [8:0] add_ln18958_1_fu_470_p2;
wire   [9:0] p_shl21_fu_519_p3;
wire   [9:0] p_cast1_fu_516_p1;
wire   [9:0] empty_239_fu_526_p2;
wire   [9:0] empty_240_fu_532_p2;
wire   [11:0] tmp_162_fu_542_p3;
wire   [13:0] tmp_163_fu_549_p3;
wire   [13:0] zext_ln18983_2_fu_556_p1;
wire   [13:0] sub_ln18960_fu_560_p2;
wire   [13:0] zext_ln18983_3_fu_566_p1;
wire   [13:0] add_ln18983_1_fu_569_p2;
wire  signed [7:0] v14603_fu_581_p0;
wire   [7:0] grp_fu_621_p3;
wire   [0:0] v14603_fu_581_p2;
wire  signed [7:0] select_ln18972_fu_594_p1;
wire   [7:0] select_ln18972_1_fu_586_p3;
wire  signed [7:0] v14613_fu_601_p0;
wire   [7:0] grp_fu_631_p3;
wire   [0:0] v14613_fu_601_p2;
wire  signed [7:0] select_ln18983_fu_614_p1;
wire   [7:0] select_ln18983_1_fu_606_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 indvar_flatten1239_fu_106 = 14'd0;
#0 v1459240_fu_110 = 6'd0;
#0 indvar_flatten41_fu_114 = 9'd0;
#0 v1459342_fu_118 = 5'd0;
#0 v1459443_fu_122 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITeOg #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v15625_U(.clk(ap_clk),.reset(ap_rst),.address0(v15625_address0),.ce0(v15625_ce0_local),.q0(v15625_q0));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1223(.clk(ap_clk),.reset(ap_rst),.din0(v14651_1_q0),.din1(v15625_q0),.din2(v14650_1_q0),.ce(1'b1),.dout(grp_fu_621_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U1224(.clk(ap_clk),.reset(ap_rst),.din0(v14651_q0),.din1(v15625_q0),.din2(v14650_q0),.ce(1'b1),.dout(grp_fu_631_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18957_reg_697_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1895845_reg_241 <= icmp_ln18958_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1895845_reg_241 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18957_reg_697_pp0_iter1_reg == 1'd0))) begin
        icmp_ln1895944_reg_252 <= icmp_ln18959_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1895944_reg_252 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten1239_fu_106 <= add_ln18957_1_fu_299_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1239_fu_106 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten41_fu_114 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten41_fu_114 <= select_ln18958_1_fu_476_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1459240_fu_110 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1459240_fu_110 <= v14592_fu_356_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1459342_fu_118 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1459342_fu_118 <= v14593_fu_378_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1459443_fu_122 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1459443_fu_122 <= v14594_fu_464_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18983_reg_707 <= add_ln18983_fu_444_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_238_reg_701 <= empty_238_fu_435_p2;
        icmp_ln18957_reg_697 <= icmp_ln18957_fu_305_p2;
        icmp_ln18957_reg_697_pp0_iter1_reg <= icmp_ln18957_reg_697;
        lshr_ln_reg_717 <= {{v14594_mid2_fu_370_p3[4:1]}};
        trunc_ln18983_reg_712 <= trunc_ln18983_fu_450_p1;
        zext_ln19030_1_cast_reg_692[2 : 0] <= zext_ln19030_1_cast_fu_267_p1[2 : 0];
        zext_ln19030_cast_reg_687[1 : 0] <= zext_ln19030_cast_fu_263_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        zext_ln18983_4_reg_737[13 : 0] <= zext_ln18983_4_fu_575_p1[13 : 0];
        zext_ln18983_4_reg_737_pp0_iter3_reg[13 : 0] <= zext_ln18983_4_reg_737[13 : 0];
        zext_ln18983_4_reg_737_pp0_iter4_reg[13 : 0] <= zext_ln18983_4_reg_737_pp0_iter3_reg[13 : 0];
        zext_ln18983_4_reg_737_pp0_iter5_reg[13 : 0] <= zext_ln18983_4_reg_737_pp0_iter4_reg[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18958_reg_727 <= icmp_ln18958_fu_490_p2;
        icmp_ln18959_reg_722 <= icmp_ln18959_fu_484_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18957_fu_305_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18957_reg_697_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1895845_phi_fu_245_p4 = icmp_ln18958_reg_727;
    end else begin
        ap_phi_mux_icmp_ln1895845_phi_fu_245_p4 = icmp_ln1895845_reg_241;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18957_reg_697_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1895944_phi_fu_256_p4 = icmp_ln18959_reg_722;
    end else begin
        ap_phi_mux_icmp_ln1895944_phi_fu_256_p4 = icmp_ln1895944_reg_252;
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
        ap_sig_allocacmp_indvar_flatten1239_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1239_load = indvar_flatten1239_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14650_1_ce0_local = 1'b1;
    end else begin
        v14650_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14650_ce0_local = 1'b1;
    end else begin
        v14650_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14651_1_ce0_local = 1'b1;
    end else begin
        v14651_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14651_ce0_local = 1'b1;
    end else begin
        v14651_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14652_1_ce0_local = 1'b1;
    end else begin
        v14652_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14652_1_we0_local = 1'b1;
    end else begin
        v14652_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14652_ce0_local = 1'b1;
    end else begin
        v14652_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v14652_we0_local = 1'b1;
    end else begin
        v14652_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15625_ce0_local = 1'b1;
    end else begin
        v15625_ce0_local = 1'b0;
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
assign add_ln18957_1_fu_299_p2 = (ap_sig_allocacmp_indvar_flatten1239_load + 14'd1);
assign add_ln18957_fu_328_p2 = (v1459240_fu_110 + 6'd1);
assign add_ln18958_1_fu_470_p2 = (indvar_flatten41_fu_114 + 9'd1);
assign add_ln18958_fu_364_p2 = (select_ln18957_fu_334_p3 + 5'd1);
assign add_ln18983_1_fu_569_p2 = (sub_ln18960_fu_560_p2 + zext_ln18983_3_fu_566_p1);
assign add_ln18983_fu_444_p2 = (sub_ln18983_fu_406_p2 + zext_ln18983_1_fu_440_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_676 = brmerge_i;
assign empty_237_fu_429_p2 = (p_shl22_fu_421_p3 - p_cast_fu_417_p1);
assign empty_238_fu_435_p2 = (empty_237_fu_429_p2 + zext_ln19030_1_cast_reg_692);
assign empty_239_fu_526_p2 = (p_shl21_fu_519_p3 - p_cast1_fu_516_p1);
assign empty_240_fu_532_p2 = (empty_239_fu_526_p2 + zext_ln19030_cast_reg_687);
assign empty_fu_412_p2 = (v14592_fu_356_p3 + mul_i);
assign icmp_ln18957_fu_305_p2 = ((ap_sig_allocacmp_indvar_flatten1239_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln18958_fu_490_p2 = ((select_ln18958_1_fu_476_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln18959_fu_484_p2 = ((v14594_fu_464_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln18957_fu_350_p2 = (ap_phi_mux_icmp_ln1895944_phi_fu_256_p4 | ap_phi_mux_icmp_ln1895845_phi_fu_245_p4);
assign p_cast1_fu_516_p1 = empty_238_reg_701;
assign p_cast2_fu_537_p1 = empty_240_fu_532_p2;
assign p_cast_fu_417_p1 = empty_fu_412_p2;
assign p_shl21_fu_519_p3 = {{empty_238_reg_701}, {2'd0}};
assign p_shl22_fu_421_p3 = {{empty_fu_412_p2}, {2'd0}};
assign p_shl23_fu_386_p3 = {{v14592_fu_356_p3}, {5'd0}};
assign select_ln18957_1_fu_342_p3 = ((ap_phi_mux_icmp_ln1895845_phi_fu_245_p4[0:0] == 1'b1) ? 5'd0 : v1459443_fu_122);
assign select_ln18957_fu_334_p3 = ((ap_phi_mux_icmp_ln1895845_phi_fu_245_p4[0:0] == 1'b1) ? 5'd0 : v1459342_fu_118);
assign select_ln18958_1_fu_476_p3 = ((ap_phi_mux_icmp_ln1895845_phi_fu_245_p4[0:0] == 1'b1) ? 9'd1 : add_ln18958_1_fu_470_p2);
assign select_ln18972_1_fu_586_p3 = ((v14603_fu_581_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18972_fu_594_p1 = grp_fu_621_p3;
assign select_ln18972_fu_594_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18972_fu_594_p1 : select_ln18972_1_fu_586_p3);
assign select_ln18983_1_fu_606_p3 = ((v14613_fu_601_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln18983_fu_614_p1 = grp_fu_631_p3;
assign select_ln18983_fu_614_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln18983_fu_614_p1 : select_ln18983_1_fu_606_p3);
assign sub_ln18960_fu_560_p2 = (tmp_163_fu_549_p3 - zext_ln18983_2_fu_556_p1);
assign sub_ln18983_fu_406_p2 = (p_shl23_fu_386_p3 - zext_ln18983_fu_402_p1);
assign tmp_162_fu_542_p3 = {{add_ln18983_reg_707}, {1'd0}};
assign tmp_163_fu_549_p3 = {{trunc_ln18983_reg_712}, {4'd0}};
assign tmp_fu_394_p3 = {{v14592_fu_356_p3}, {2'd0}};
assign trunc_ln18983_fu_450_p1 = add_ln18983_fu_444_p2[9:0];
assign v14592_fu_356_p3 = ((ap_phi_mux_icmp_ln1895845_phi_fu_245_p4[0:0] == 1'b1) ? add_ln18957_fu_328_p2 : v1459240_fu_110);
assign v14593_fu_378_p3 = ((or_ln18957_fu_350_p2[0:0] == 1'b1) ? select_ln18957_fu_334_p3 : add_ln18958_fu_364_p2);
assign v14594_fu_464_p2 = (v14594_mid2_fu_370_p3 + 5'd2);
assign v14594_mid2_fu_370_p3 = ((or_ln18957_fu_350_p2[0:0] == 1'b1) ? select_ln18957_1_fu_342_p3 : 5'd0);
assign v14603_fu_581_p0 = grp_fu_621_p3;
assign v14603_fu_581_p2 = ((v14603_fu_581_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14613_fu_601_p0 = grp_fu_631_p3;
assign v14613_fu_601_p2 = ((v14613_fu_601_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v14650_1_address0 = zext_ln18983_4_reg_737_pp0_iter3_reg;
assign v14650_1_ce0 = v14650_1_ce0_local;
assign v14650_address0 = zext_ln18983_4_reg_737_pp0_iter3_reg;
assign v14650_ce0 = v14650_ce0_local;
assign v14651_1_address0 = zext_ln18983_4_fu_575_p1;
assign v14651_1_ce0 = v14651_1_ce0_local;
assign v14651_address0 = zext_ln18983_4_fu_575_p1;
assign v14651_ce0 = v14651_ce0_local;
assign v14652_1_address0 = zext_ln18983_4_reg_737_pp0_iter5_reg;
assign v14652_1_ce0 = v14652_1_ce0_local;
assign v14652_1_d0 = select_ln18972_fu_594_p3;
assign v14652_1_we0 = v14652_1_we0_local;
assign v14652_address0 = zext_ln18983_4_reg_737_pp0_iter5_reg;
assign v14652_ce0 = v14652_ce0_local;
assign v14652_d0 = select_ln18983_fu_614_p3;
assign v14652_we0 = v14652_we0_local;
assign v15625_address0 = p_cast2_fu_537_p1;
assign zext_ln18983_1_fu_440_p1 = v14593_fu_378_p3;
assign zext_ln18983_2_fu_556_p1 = tmp_162_fu_542_p3;
assign zext_ln18983_3_fu_566_p1 = lshr_ln_reg_717;
assign zext_ln18983_4_fu_575_p1 = add_ln18983_1_fu_569_p2;
assign zext_ln18983_fu_402_p1 = tmp_fu_394_p3;
assign zext_ln19030_1_cast_fu_267_p1 = zext_ln19030_1;
assign zext_ln19030_cast_fu_263_p1 = zext_ln19030;
always @ (posedge ap_clk) begin
    zext_ln19030_cast_reg_687[9:2] <= 8'b00000000;
    zext_ln19030_1_cast_reg_692[7:3] <= 5'b00000;
    zext_ln18983_4_reg_737[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln18983_4_reg_737_pp0_iter3_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln18983_4_reg_737_pp0_iter4_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln18983_4_reg_737_pp0_iter5_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
