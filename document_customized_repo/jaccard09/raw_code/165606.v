module forward_dataflow_in_loop_VITIS_LOOP_18453_1_Loop_VITIS_LOOP_18244_1_proc51_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v14322_address0,v14322_ce0,v14322_we0,v14322_d0,v14322_1_address0,v14322_1_ce0,v14322_1_we0,v14322_1_d0,v14322_2_address0,v14322_2_ce0,v14322_2_we0,v14322_2_d0,v14322_3_address0,v14322_3_ce0,v14322_3_we0,v14322_3_d0,mul_i11,empty_100,empty,zext_ln18278_1,zext_ln18278,v16146_0_0_address0,v16146_0_0_ce0,v16146_0_0_q0,v16146_1_0_address0,v16146_1_0_ce0,v16146_1_0_q0,v16146_0_1_address0,v16146_0_1_ce0,v16146_0_1_q0,v16146_1_1_address0,v16146_1_1_ce0,v16146_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i;
output  [6:0] v14322_address0;
output   v14322_ce0;
output   v14322_we0;
output  [7:0] v14322_d0;
output  [6:0] v14322_1_address0;
output   v14322_1_ce0;
output   v14322_1_we0;
output  [7:0] v14322_1_d0;
output  [6:0] v14322_2_address0;
output   v14322_2_ce0;
output   v14322_2_we0;
output  [7:0] v14322_2_d0;
output  [6:0] v14322_3_address0;
output   v14322_3_ce0;
output   v14322_3_we0;
output  [7:0] v14322_3_d0;
input  [4:0] mul_i11;
input  [0:0] empty_100;
input  [0:0] empty;
input  [2:0] zext_ln18278_1;
input  [1:0] zext_ln18278;
output  [12:0] v16146_0_0_address0;
output   v16146_0_0_ce0;
input  [7:0] v16146_0_0_q0;
output  [12:0] v16146_1_0_address0;
output   v16146_1_0_ce0;
input  [7:0] v16146_1_0_q0;
output  [12:0] v16146_0_1_address0;
output   v16146_0_1_ce0;
input  [7:0] v16146_0_1_q0;
output  [12:0] v16146_1_1_address0;
output   v16146_1_1_ce0;
input  [7:0] v16146_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18244_fu_506_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] zext_ln18278_cast_fu_294_p1;
reg   [12:0] zext_ln18278_cast_reg_730;
wire   [10:0] zext_ln18278_1_cast_fu_298_p1;
reg   [10:0] zext_ln18278_1_cast_reg_738;
wire   [3:0] lshr_ln_fu_348_p4;
reg   [3:0] lshr_ln_reg_744;
reg   [3:0] lshr_ln_reg_744_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_749;
wire   [2:0] lshr_ln44_fu_374_p4;
reg   [2:0] lshr_ln44_reg_757;
reg   [2:0] lshr_ln44_reg_757_pp0_iter1_reg;
wire   [10:0] add_ln18248_fu_426_p2;
reg   [10:0] add_ln18248_reg_764;
wire   [3:0] lshr_ln45_fu_432_p4;
reg   [3:0] lshr_ln45_reg_770;
wire   [10:0] add_ln18250_fu_474_p2;
reg   [10:0] add_ln18250_reg_776;
wire   [0:0] xor_ln18245_fu_500_p2;
reg   [0:0] xor_ln18245_reg_782;
reg   [0:0] icmp_ln18244_reg_787;
wire   [10:0] add_ln18252_fu_579_p2;
reg   [10:0] add_ln18252_reg_796;
wire   [10:0] add_ln18254_fu_634_p2;
reg   [10:0] add_ln18254_reg_807;
wire   [63:0] zext_ln18254_fu_645_p1;
reg   [63:0] zext_ln18254_reg_813;
reg   [0:0] ap_phi_mux_icmp_ln1824548_phi_fu_287_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln18248_2_fu_548_p1;
wire   [63:0] zext_ln18250_2_fu_605_p1;
wire   [63:0] zext_ln18252_2_fu_672_p1;
wire   [63:0] zext_ln18254_3_fu_698_p1;
reg   [6:0] indvar_flatten45_fu_128;
wire   [6:0] add_ln18244_1_fu_486_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten45_load;
reg   [5:0] v1422846_fu_132;
wire   [5:0] v14228_fu_340_p3;
reg   [5:0] ap_sig_allocacmp_v1422846_load;
reg   [4:0] v1422947_fu_136;
wire   [4:0] v14229_fu_480_p2;
reg   [4:0] ap_sig_allocacmp_v1422947_load;
reg    v16146_0_0_ce0_local;
reg    v16146_0_1_ce0_local;
reg    v16146_1_0_ce0_local;
reg    v16146_1_1_ce0_local;
reg    v14322_3_we0_local;
reg    v14322_3_ce0_local;
reg    v14322_2_we0_local;
reg    v14322_2_ce0_local;
reg    v14322_1_we0_local;
reg    v14322_1_ce0_local;
reg    v14322_we0_local;
reg    v14322_ce0_local;
wire   [5:0] add_ln18244_fu_326_p2;
wire   [5:0] empty_325_fu_358_p2;
wire   [4:0] select_ln18244_fu_332_p3;
wire   [8:0] tmp_69_fu_390_p5;
wire   [10:0] p_shl25_fu_406_p6;
wire   [10:0] zext_ln18248_fu_402_p1;
wire   [10:0] sub_ln18248_fu_420_p2;
wire   [4:0] add_ln18247_fu_384_p2;
wire   [8:0] tmp_71_fu_442_p4;
wire   [10:0] p_shl21_fu_456_p5;
wire   [10:0] zext_ln18250_fu_452_p1;
wire   [10:0] sub_ln18250_fu_468_p2;
wire   [0:0] tmp_306_fu_492_p3;
wire   [12:0] p_shl24_fu_530_p3;
wire   [12:0] zext_ln18248_1_fu_527_p1;
wire   [12:0] sub_ln18248_1_fu_537_p2;
wire   [12:0] add_ln18248_1_fu_543_p2;
wire   [8:0] tmp_70_fu_553_p4;
wire   [10:0] p_shl23_fu_564_p5;
wire   [10:0] zext_ln18252_fu_560_p1;
wire   [10:0] sub_ln18252_fu_573_p2;
wire   [12:0] p_shl20_fu_587_p3;
wire   [12:0] zext_ln18250_1_fu_584_p1;
wire   [12:0] sub_ln18250_1_fu_594_p2;
wire   [12:0] add_ln18250_1_fu_600_p2;
wire   [8:0] tmp_72_fu_610_p3;
wire   [10:0] p_shl19_fu_620_p4;
wire   [10:0] zext_ln18254_1_fu_616_p1;
wire   [10:0] sub_ln18254_fu_628_p2;
wire   [6:0] tmp_68_fu_639_p3;
wire   [12:0] p_shl22_fu_654_p3;
wire   [12:0] zext_ln18252_1_fu_651_p1;
wire   [12:0] sub_ln18252_1_fu_661_p2;
wire   [12:0] add_ln18252_1_fu_667_p2;
wire   [12:0] p_shl_fu_680_p3;
wire   [12:0] zext_ln18254_2_fu_677_p1;
wire   [12:0] sub_ln18254_1_fu_687_p2;
wire   [12:0] add_ln18254_1_fu_693_p2;
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
reg    ap_condition_519;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten45_fu_128 = 7'd0;
#0 v1422846_fu_132 = 6'd0;
#0 v1422947_fu_136 = 5'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten45_fu_128 <= add_ln18244_1_fu_486_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten45_fu_128 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1422846_fu_132 <= v14228_fu_340_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1422846_fu_132 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1422947_fu_136 <= v14229_fu_480_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1422947_fu_136 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18248_reg_764 <= add_ln18248_fu_426_p2;
        add_ln18250_reg_776 <= add_ln18250_fu_474_p2;
        add_ln18252_reg_796 <= add_ln18252_fu_579_p2;
        add_ln18254_reg_807 <= add_ln18254_fu_634_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln18244_reg_787 <= icmp_ln18244_fu_506_p2;
        lshr_ln44_reg_757 <= {{select_ln18244_fu_332_p3[3:1]}};
        lshr_ln44_reg_757_pp0_iter1_reg <= lshr_ln44_reg_757;
        lshr_ln45_reg_770 <= {{add_ln18247_fu_384_p2[4:1]}};
        lshr_ln_reg_744 <= {{v14228_fu_340_p3[4:1]}};
        lshr_ln_reg_744_pp0_iter1_reg <= lshr_ln_reg_744;
        tmp_s_reg_749 <= {{empty_325_fu_358_p2[5:1]}};
        zext_ln18278_1_cast_reg_738[2 : 0] <= zext_ln18278_1_cast_fu_298_p1[2 : 0];
        zext_ln18278_cast_reg_730[1 : 0] <= zext_ln18278_cast_fu_294_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln18245_reg_782 <= xor_ln18245_fu_500_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln18254_reg_813[6 : 0] <= zext_ln18254_fu_645_p1[6 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln18244_fu_506_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_519)) begin
            ap_phi_mux_icmp_ln1824548_phi_fu_287_p4 = xor_ln18245_reg_782;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1824548_phi_fu_287_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1824548_phi_fu_287_p4 = xor_ln18245_reg_782;
        end
    end else begin
        ap_phi_mux_icmp_ln1824548_phi_fu_287_p4 = xor_ln18245_reg_782;
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
        ap_sig_allocacmp_indvar_flatten45_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_load = indvar_flatten45_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1422846_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1422846_load = v1422846_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1422947_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1422947_load = v1422947_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14322_1_ce0_local = 1'b1;
    end else begin
        v14322_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14322_1_we0_local = 1'b1;
    end else begin
        v14322_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14322_2_ce0_local = 1'b1;
    end else begin
        v14322_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14322_2_we0_local = 1'b1;
    end else begin
        v14322_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14322_3_ce0_local = 1'b1;
    end else begin
        v14322_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14322_3_we0_local = 1'b1;
    end else begin
        v14322_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14322_ce0_local = 1'b1;
    end else begin
        v14322_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14322_we0_local = 1'b1;
    end else begin
        v14322_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16146_0_0_ce0_local = 1'b1;
    end else begin
        v16146_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16146_0_1_ce0_local = 1'b1;
    end else begin
        v16146_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16146_1_0_ce0_local = 1'b1;
    end else begin
        v16146_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16146_1_1_ce0_local = 1'b1;
    end else begin
        v16146_1_1_ce0_local = 1'b0;
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
assign add_ln18244_1_fu_486_p2 = (ap_sig_allocacmp_indvar_flatten45_load + 7'd1);
assign add_ln18244_fu_326_p2 = (ap_sig_allocacmp_v1422846_load + 6'd2);
assign add_ln18247_fu_384_p2 = (select_ln18244_fu_332_p3 + mul_i11);
assign add_ln18248_1_fu_543_p2 = (sub_ln18248_1_fu_537_p2 + zext_ln18278_cast_reg_730);
assign add_ln18248_fu_426_p2 = (sub_ln18248_fu_420_p2 + zext_ln18278_1_cast_fu_298_p1);
assign add_ln18250_1_fu_600_p2 = (sub_ln18250_1_fu_594_p2 + zext_ln18278_cast_reg_730);
assign add_ln18250_fu_474_p2 = (sub_ln18250_fu_468_p2 + zext_ln18278_1_cast_fu_298_p1);
assign add_ln18252_1_fu_667_p2 = (sub_ln18252_1_fu_661_p2 + zext_ln18278_cast_reg_730);
assign add_ln18252_fu_579_p2 = (sub_ln18252_fu_573_p2 + zext_ln18278_1_cast_reg_738);
assign add_ln18254_1_fu_693_p2 = (sub_ln18254_1_fu_687_p2 + zext_ln18278_cast_reg_730);
assign add_ln18254_fu_634_p2 = (sub_ln18254_fu_628_p2 + zext_ln18278_1_cast_reg_738);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_519 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln18244_reg_787 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_325_fu_358_p2 = (v14228_fu_340_p3 + mul_i);
assign icmp_ln18244_fu_506_p2 = ((ap_sig_allocacmp_indvar_flatten45_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln44_fu_374_p4 = {{select_ln18244_fu_332_p3[3:1]}};
assign lshr_ln45_fu_432_p4 = {{add_ln18247_fu_384_p2[4:1]}};
assign lshr_ln_fu_348_p4 = {{v14228_fu_340_p3[4:1]}};
assign p_shl19_fu_620_p4 = {{{tmp_s_reg_749}, {lshr_ln45_reg_770}}, {2'd0}};
assign p_shl20_fu_587_p3 = {{add_ln18250_reg_776}, {2'd0}};
assign p_shl21_fu_456_p5 = {{{{empty_100}, {lshr_ln_fu_348_p4}}, {lshr_ln45_fu_432_p4}}, {2'd0}};
assign p_shl22_fu_654_p3 = {{add_ln18252_reg_796}, {2'd0}};
assign p_shl23_fu_564_p5 = {{{{tmp_s_reg_749}, {empty}}, {lshr_ln44_reg_757}}, {2'd0}};
assign p_shl24_fu_530_p3 = {{add_ln18248_reg_764}, {2'd0}};
assign p_shl25_fu_406_p6 = {{{{{empty_100}, {lshr_ln_fu_348_p4}}, {empty}}, {lshr_ln44_fu_374_p4}}, {2'd0}};
assign p_shl_fu_680_p3 = {{add_ln18254_reg_807}, {2'd0}};
assign select_ln18244_fu_332_p3 = ((ap_phi_mux_icmp_ln1824548_phi_fu_287_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1422947_load : 5'd0);
assign sub_ln18248_1_fu_537_p2 = (p_shl24_fu_530_p3 - zext_ln18248_1_fu_527_p1);
assign sub_ln18248_fu_420_p2 = (p_shl25_fu_406_p6 - zext_ln18248_fu_402_p1);
assign sub_ln18250_1_fu_594_p2 = (p_shl20_fu_587_p3 - zext_ln18250_1_fu_584_p1);
assign sub_ln18250_fu_468_p2 = (p_shl21_fu_456_p5 - zext_ln18250_fu_452_p1);
assign sub_ln18252_1_fu_661_p2 = (p_shl22_fu_654_p3 - zext_ln18252_1_fu_651_p1);
assign sub_ln18252_fu_573_p2 = (p_shl23_fu_564_p5 - zext_ln18252_fu_560_p1);
assign sub_ln18254_1_fu_687_p2 = (p_shl_fu_680_p3 - zext_ln18254_2_fu_677_p1);
assign sub_ln18254_fu_628_p2 = (p_shl19_fu_620_p4 - zext_ln18254_1_fu_616_p1);
assign tmp_306_fu_492_p3 = v14229_fu_480_p2[32'd4];
assign tmp_68_fu_639_p3 = {{lshr_ln_reg_744_pp0_iter1_reg}, {lshr_ln44_reg_757_pp0_iter1_reg}};
assign tmp_69_fu_390_p5 = {{{{empty_100}, {lshr_ln_fu_348_p4}}, {empty}}, {lshr_ln44_fu_374_p4}};
assign tmp_70_fu_553_p4 = {{{tmp_s_reg_749}, {empty}}, {lshr_ln44_reg_757}};
assign tmp_71_fu_442_p4 = {{{empty_100}, {lshr_ln_fu_348_p4}}, {lshr_ln45_fu_432_p4}};
assign tmp_72_fu_610_p3 = {{tmp_s_reg_749}, {lshr_ln45_reg_770}};
assign v14228_fu_340_p3 = ((ap_phi_mux_icmp_ln1824548_phi_fu_287_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1422846_load : add_ln18244_fu_326_p2);
assign v14229_fu_480_p2 = (select_ln18244_fu_332_p3 + 5'd2);
assign v14322_1_address0 = zext_ln18254_reg_813;
assign v14322_1_ce0 = v14322_1_ce0_local;
assign v14322_1_d0 = v16146_1_0_q0;
assign v14322_1_we0 = v14322_1_we0_local;
assign v14322_2_address0 = zext_ln18254_fu_645_p1;
assign v14322_2_ce0 = v14322_2_ce0_local;
assign v14322_2_d0 = v16146_0_1_q0;
assign v14322_2_we0 = v14322_2_we0_local;
assign v14322_3_address0 = zext_ln18254_fu_645_p1;
assign v14322_3_ce0 = v14322_3_ce0_local;
assign v14322_3_d0 = v16146_0_0_q0;
assign v14322_3_we0 = v14322_3_we0_local;
assign v14322_address0 = zext_ln18254_reg_813;
assign v14322_ce0 = v14322_ce0_local;
assign v14322_d0 = v16146_1_1_q0;
assign v14322_we0 = v14322_we0_local;
assign v16146_0_0_address0 = zext_ln18248_2_fu_548_p1;
assign v16146_0_0_ce0 = v16146_0_0_ce0_local;
assign v16146_0_1_address0 = zext_ln18250_2_fu_605_p1;
assign v16146_0_1_ce0 = v16146_0_1_ce0_local;
assign v16146_1_0_address0 = zext_ln18252_2_fu_672_p1;
assign v16146_1_0_ce0 = v16146_1_0_ce0_local;
assign v16146_1_1_address0 = zext_ln18254_3_fu_698_p1;
assign v16146_1_1_ce0 = v16146_1_1_ce0_local;
assign xor_ln18245_fu_500_p2 = (tmp_306_fu_492_p3 ^ 1'd1);
assign zext_ln18248_1_fu_527_p1 = add_ln18248_reg_764;
assign zext_ln18248_2_fu_548_p1 = add_ln18248_1_fu_543_p2;
assign zext_ln18248_fu_402_p1 = tmp_69_fu_390_p5;
assign zext_ln18250_1_fu_584_p1 = add_ln18250_reg_776;
assign zext_ln18250_2_fu_605_p1 = add_ln18250_1_fu_600_p2;
assign zext_ln18250_fu_452_p1 = tmp_71_fu_442_p4;
assign zext_ln18252_1_fu_651_p1 = add_ln18252_reg_796;
assign zext_ln18252_2_fu_672_p1 = add_ln18252_1_fu_667_p2;
assign zext_ln18252_fu_560_p1 = tmp_70_fu_553_p4;
assign zext_ln18254_1_fu_616_p1 = tmp_72_fu_610_p3;
assign zext_ln18254_2_fu_677_p1 = add_ln18254_reg_807;
assign zext_ln18254_3_fu_698_p1 = add_ln18254_1_fu_693_p2;
assign zext_ln18254_fu_645_p1 = tmp_68_fu_639_p3;
assign zext_ln18278_1_cast_fu_298_p1 = zext_ln18278_1;
assign zext_ln18278_cast_fu_294_p1 = zext_ln18278;
always @ (posedge ap_clk) begin
    zext_ln18278_cast_reg_730[12:2] <= 11'b00000000000;
    zext_ln18278_1_cast_reg_738[10:3] <= 8'b00000000;
    zext_ln18254_reg_813[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 