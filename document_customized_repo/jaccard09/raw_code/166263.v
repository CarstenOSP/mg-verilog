module forward_dataflow_in_loop_VITIS_LOOP_14362_1_Loop_VITIS_LOOP_14065_1_proc54_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,v11205_address0,v11205_ce0,v11205_we0,v11205_d0,v11205_1_address0,v11205_1_ce0,v11205_1_we0,v11205_1_d0,v11205_2_address0,v11205_2_ce0,v11205_2_we0,v11205_2_d0,v11205_3_address0,v11205_3_ce0,v11205_3_we0,v11205_3_d0,v11205_4_address0,v11205_4_ce0,v11205_4_we0,v11205_4_d0,v11205_5_address0,v11205_5_ce0,v11205_5_we0,v11205_5_d0,v11205_6_address0,v11205_6_ce0,v11205_6_we0,v11205_6_d0,v11205_7_address0,v11205_7_ce0,v11205_7_we0,v11205_7_d0,mul_i,empty_108,empty,zext_ln14107_1,zext_ln14107,v13683_0_0_address0,v13683_0_0_ce0,v13683_0_0_q0,v13683_1_0_address0,v13683_1_0_ce0,v13683_1_0_q0,v13683_2_0_address0,v13683_2_0_ce0,v13683_2_0_q0,v13683_3_0_address0,v13683_3_0_ce0,v13683_3_0_q0,v13683_0_1_address0,v13683_0_1_ce0,v13683_0_1_q0,v13683_1_1_address0,v13683_1_1_ce0,v13683_1_1_q0,v13683_2_1_address0,v13683_2_1_ce0,v13683_2_1_q0,v13683_3_1_address0,v13683_3_1_ce0,v13683_3_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] rem4;
output  [5:0] v11205_address0;
output   v11205_ce0;
output   v11205_we0;
output  [7:0] v11205_d0;
output  [5:0] v11205_1_address0;
output   v11205_1_ce0;
output   v11205_1_we0;
output  [7:0] v11205_1_d0;
output  [5:0] v11205_2_address0;
output   v11205_2_ce0;
output   v11205_2_we0;
output  [7:0] v11205_2_d0;
output  [5:0] v11205_3_address0;
output   v11205_3_ce0;
output   v11205_3_we0;
output  [7:0] v11205_3_d0;
output  [5:0] v11205_4_address0;
output   v11205_4_ce0;
output   v11205_4_we0;
output  [7:0] v11205_4_d0;
output  [5:0] v11205_5_address0;
output   v11205_5_ce0;
output   v11205_5_we0;
output  [7:0] v11205_5_d0;
output  [5:0] v11205_6_address0;
output   v11205_6_ce0;
output   v11205_6_we0;
output  [7:0] v11205_6_d0;
output  [5:0] v11205_7_address0;
output   v11205_7_ce0;
output   v11205_7_we0;
output  [7:0] v11205_7_d0;
input  [4:0] mul_i;
input  [0:0] empty_108;
input  [0:0] empty;
input  [2:0] zext_ln14107_1;
input  [1:0] zext_ln14107;
output  [11:0] v13683_0_0_address0;
output   v13683_0_0_ce0;
input  [7:0] v13683_0_0_q0;
output  [11:0] v13683_1_0_address0;
output   v13683_1_0_ce0;
input  [7:0] v13683_1_0_q0;
output  [11:0] v13683_2_0_address0;
output   v13683_2_0_ce0;
input  [7:0] v13683_2_0_q0;
output  [11:0] v13683_3_0_address0;
output   v13683_3_0_ce0;
input  [7:0] v13683_3_0_q0;
output  [11:0] v13683_0_1_address0;
output   v13683_0_1_ce0;
input  [7:0] v13683_0_1_q0;
output  [11:0] v13683_1_1_address0;
output   v13683_1_1_ce0;
input  [7:0] v13683_1_1_q0;
output  [11:0] v13683_2_1_address0;
output   v13683_2_1_ce0;
input  [7:0] v13683_2_1_q0;
output  [11:0] v13683_3_1_address0;
output   v13683_3_1_ce0;
input  [7:0] v13683_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14065_fu_630_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln14107_cast_fu_418_p1;
reg   [11:0] zext_ln14107_cast_reg_858;
wire   [9:0] zext_ln14107_1_cast_fu_422_p1;
reg   [9:0] zext_ln14107_1_cast_reg_866;
wire   [2:0] tmp_s_fu_478_p4;
reg   [2:0] tmp_s_reg_872;
reg   [2:0] tmp_s_reg_872_pp0_iter1_reg;
reg   [3:0] tmp_105_reg_877;
wire   [2:0] lshr_ln_fu_498_p4;
reg   [2:0] lshr_ln_reg_885;
reg   [2:0] lshr_ln_reg_885_pp0_iter1_reg;
wire   [9:0] add_ln14069_fu_550_p2;
reg   [9:0] add_ln14069_reg_892;
wire   [3:0] lshr_ln60_fu_556_p4;
reg   [3:0] lshr_ln60_reg_898;
wire   [9:0] add_ln14071_fu_598_p2;
reg   [9:0] add_ln14071_reg_904;
wire   [0:0] xor_ln14066_fu_624_p2;
reg   [0:0] xor_ln14066_reg_910;
reg   [0:0] icmp_ln14065_reg_915;
wire   [9:0] add_ln14073_fu_703_p2;
reg   [9:0] add_ln14073_reg_924;
wire   [9:0] add_ln14075_fu_758_p2;
reg   [9:0] add_ln14075_reg_935;
wire   [63:0] zext_ln14083_fu_769_p1;
reg   [63:0] zext_ln14083_reg_941;
reg   [0:0] ap_phi_mux_icmp_ln1406696_phi_fu_411_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14069_2_fu_672_p1;
wire   [63:0] zext_ln14071_2_fu_729_p1;
wire   [63:0] zext_ln14073_2_fu_796_p1;
wire   [63:0] zext_ln14075_2_fu_824_p1;
reg   [5:0] indvar_flatten93_fu_144;
wire   [5:0] add_ln14065_1_fu_610_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [5:0] v1106794_fu_148;
wire   [5:0] v11067_fu_464_p3;
reg   [5:0] ap_sig_allocacmp_v1106794_load;
reg   [4:0] v1106895_fu_152;
wire   [4:0] v11068_fu_604_p2;
reg   [4:0] ap_sig_allocacmp_v1106895_load;
reg    v13683_0_0_ce0_local;
reg    v13683_0_1_ce0_local;
reg    v13683_1_0_ce0_local;
reg    v13683_1_1_ce0_local;
reg    v13683_2_0_ce0_local;
reg    v13683_2_1_ce0_local;
reg    v13683_3_0_ce0_local;
reg    v13683_3_1_ce0_local;
reg    v11205_7_we0_local;
reg    v11205_7_ce0_local;
reg    v11205_6_we0_local;
reg    v11205_6_ce0_local;
reg    v11205_5_we0_local;
reg    v11205_5_ce0_local;
reg    v11205_4_we0_local;
reg    v11205_4_ce0_local;
reg    v11205_3_we0_local;
reg    v11205_3_ce0_local;
reg    v11205_2_we0_local;
reg    v11205_2_ce0_local;
reg    v11205_1_we0_local;
reg    v11205_1_ce0_local;
reg    v11205_we0_local;
reg    v11205_ce0_local;
wire   [5:0] add_ln14065_fu_450_p2;
wire   [5:0] empty_384_fu_472_p2;
wire   [4:0] select_ln14065_fu_456_p3;
wire   [7:0] tmp_107_fu_514_p5;
wire   [9:0] p_shl25_fu_530_p6;
wire   [9:0] zext_ln14069_fu_526_p1;
wire   [9:0] sub_ln14069_fu_544_p2;
wire   [4:0] add_ln14068_fu_508_p2;
wire   [7:0] tmp_109_fu_566_p4;
wire   [9:0] p_shl21_fu_580_p5;
wire   [9:0] zext_ln14071_fu_576_p1;
wire   [9:0] sub_ln14071_fu_592_p2;
wire   [0:0] tmp_489_fu_616_p3;
wire   [11:0] p_shl24_fu_654_p3;
wire   [11:0] zext_ln14069_1_fu_651_p1;
wire   [11:0] sub_ln14069_1_fu_661_p2;
wire   [11:0] add_ln14069_1_fu_667_p2;
wire   [7:0] tmp_108_fu_677_p4;
wire   [9:0] p_shl23_fu_688_p5;
wire   [9:0] zext_ln14073_fu_684_p1;
wire   [9:0] sub_ln14073_fu_697_p2;
wire   [11:0] p_shl20_fu_711_p3;
wire   [11:0] zext_ln14071_1_fu_708_p1;
wire   [11:0] sub_ln14071_1_fu_718_p2;
wire   [11:0] add_ln14071_1_fu_724_p2;
wire   [7:0] tmp_110_fu_734_p3;
wire   [9:0] p_shl19_fu_744_p4;
wire   [9:0] zext_ln14075_fu_740_p1;
wire   [9:0] sub_ln14075_fu_752_p2;
wire   [5:0] tmp_106_fu_763_p3;
wire   [11:0] p_shl22_fu_778_p3;
wire   [11:0] zext_ln14073_1_fu_775_p1;
wire   [11:0] sub_ln14073_1_fu_785_p2;
wire   [11:0] add_ln14073_1_fu_791_p2;
wire   [11:0] p_shl_fu_806_p3;
wire   [11:0] zext_ln14075_1_fu_803_p1;
wire   [11:0] sub_ln14075_1_fu_813_p2;
wire   [11:0] add_ln14075_1_fu_819_p2;
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
reg    ap_condition_611;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten93_fu_144 = 6'd0;
#0 v1106794_fu_148 = 6'd0;
#0 v1106895_fu_152 = 5'd0;
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
            indvar_flatten93_fu_144 <= add_ln14065_1_fu_610_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_144 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1106794_fu_148 <= v11067_fu_464_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v1106794_fu_148 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v1106895_fu_152 <= v11068_fu_604_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v1106895_fu_152 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14069_reg_892 <= add_ln14069_fu_550_p2;
        add_ln14071_reg_904 <= add_ln14071_fu_598_p2;
        add_ln14073_reg_924 <= add_ln14073_fu_703_p2;
        add_ln14075_reg_935 <= add_ln14075_fu_758_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln14065_reg_915 <= icmp_ln14065_fu_630_p2;
        lshr_ln60_reg_898 <= {{add_ln14068_fu_508_p2[4:1]}};
        lshr_ln_reg_885 <= {{select_ln14065_fu_456_p3[3:1]}};
        lshr_ln_reg_885_pp0_iter1_reg <= lshr_ln_reg_885;
        tmp_105_reg_877 <= {{empty_384_fu_472_p2[5:2]}};
        tmp_s_reg_872 <= {{v11067_fu_464_p3[4:2]}};
        tmp_s_reg_872_pp0_iter1_reg <= tmp_s_reg_872;
        zext_ln14107_1_cast_reg_866[2 : 0] <= zext_ln14107_1_cast_fu_422_p1[2 : 0];
        zext_ln14107_cast_reg_858[1 : 0] <= zext_ln14107_cast_fu_418_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln14066_reg_910 <= xor_ln14066_fu_624_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln14083_reg_941[5 : 0] <= zext_ln14083_fu_769_p1[5 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln14065_fu_630_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_611)) begin
            ap_phi_mux_icmp_ln1406696_phi_fu_411_p4 = xor_ln14066_reg_910;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1406696_phi_fu_411_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1406696_phi_fu_411_p4 = xor_ln14066_reg_910;
        end
    end else begin
        ap_phi_mux_icmp_ln1406696_phi_fu_411_p4 = xor_ln14066_reg_910;
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
        ap_sig_allocacmp_indvar_flatten93_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1106794_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1106794_load = v1106794_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1106895_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1106895_load = v1106895_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_1_ce0_local = 1'b1;
    end else begin
        v11205_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_1_we0_local = 1'b1;
    end else begin
        v11205_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_2_ce0_local = 1'b1;
    end else begin
        v11205_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_2_we0_local = 1'b1;
    end else begin
        v11205_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_3_ce0_local = 1'b1;
    end else begin
        v11205_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_3_we0_local = 1'b1;
    end else begin
        v11205_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_4_ce0_local = 1'b1;
    end else begin
        v11205_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_4_we0_local = 1'b1;
    end else begin
        v11205_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_5_ce0_local = 1'b1;
    end else begin
        v11205_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_5_we0_local = 1'b1;
    end else begin
        v11205_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11205_6_ce0_local = 1'b1;
    end else begin
        v11205_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11205_6_we0_local = 1'b1;
    end else begin
        v11205_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11205_7_ce0_local = 1'b1;
    end else begin
        v11205_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v11205_7_we0_local = 1'b1;
    end else begin
        v11205_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_ce0_local = 1'b1;
    end else begin
        v11205_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11205_we0_local = 1'b1;
    end else begin
        v11205_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13683_0_0_ce0_local = 1'b1;
    end else begin
        v13683_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13683_0_1_ce0_local = 1'b1;
    end else begin
        v13683_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_1_0_ce0_local = 1'b1;
    end else begin
        v13683_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_1_1_ce0_local = 1'b1;
    end else begin
        v13683_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_2_0_ce0_local = 1'b1;
    end else begin
        v13683_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_2_1_ce0_local = 1'b1;
    end else begin
        v13683_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_3_0_ce0_local = 1'b1;
    end else begin
        v13683_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13683_3_1_ce0_local = 1'b1;
    end else begin
        v13683_3_1_ce0_local = 1'b0;
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
assign add_ln14065_1_fu_610_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 6'd1);
assign add_ln14065_fu_450_p2 = (ap_sig_allocacmp_v1106794_load + 6'd4);
assign add_ln14068_fu_508_p2 = (select_ln14065_fu_456_p3 + mul_i);
assign add_ln14069_1_fu_667_p2 = (sub_ln14069_1_fu_661_p2 + zext_ln14107_cast_reg_858);
assign add_ln14069_fu_550_p2 = (sub_ln14069_fu_544_p2 + zext_ln14107_1_cast_fu_422_p1);
assign add_ln14071_1_fu_724_p2 = (sub_ln14071_1_fu_718_p2 + zext_ln14107_cast_reg_858);
assign add_ln14071_fu_598_p2 = (sub_ln14071_fu_592_p2 + zext_ln14107_1_cast_fu_422_p1);
assign add_ln14073_1_fu_791_p2 = (sub_ln14073_1_fu_785_p2 + zext_ln14107_cast_reg_858);
assign add_ln14073_fu_703_p2 = (sub_ln14073_fu_697_p2 + zext_ln14107_1_cast_reg_866);
assign add_ln14075_1_fu_819_p2 = (sub_ln14075_1_fu_813_p2 + zext_ln14107_cast_reg_858);
assign add_ln14075_fu_758_p2 = (sub_ln14075_fu_752_p2 + zext_ln14107_1_cast_reg_866);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_611 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln14065_reg_915 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_384_fu_472_p2 = (v11067_fu_464_p3 + rem4);
assign icmp_ln14065_fu_630_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln60_fu_556_p4 = {{add_ln14068_fu_508_p2[4:1]}};
assign lshr_ln_fu_498_p4 = {{select_ln14065_fu_456_p3[3:1]}};
assign p_shl19_fu_744_p4 = {{{tmp_105_reg_877}, {lshr_ln60_reg_898}}, {2'd0}};
assign p_shl20_fu_711_p3 = {{add_ln14071_reg_904}, {2'd0}};
assign p_shl21_fu_580_p5 = {{{{empty_108}, {tmp_s_fu_478_p4}}, {lshr_ln60_fu_556_p4}}, {2'd0}};
assign p_shl22_fu_778_p3 = {{add_ln14073_reg_924}, {2'd0}};
assign p_shl23_fu_688_p5 = {{{{tmp_105_reg_877}, {empty}}, {lshr_ln_reg_885}}, {2'd0}};
assign p_shl24_fu_654_p3 = {{add_ln14069_reg_892}, {2'd0}};
assign p_shl25_fu_530_p6 = {{{{{empty_108}, {tmp_s_fu_478_p4}}, {empty}}, {lshr_ln_fu_498_p4}}, {2'd0}};
assign p_shl_fu_806_p3 = {{add_ln14075_reg_935}, {2'd0}};
assign select_ln14065_fu_456_p3 = ((ap_phi_mux_icmp_ln1406696_phi_fu_411_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1106895_load : 5'd0);
assign sub_ln14069_1_fu_661_p2 = (p_shl24_fu_654_p3 - zext_ln14069_1_fu_651_p1);
assign sub_ln14069_fu_544_p2 = (p_shl25_fu_530_p6 - zext_ln14069_fu_526_p1);
assign sub_ln14071_1_fu_718_p2 = (p_shl20_fu_711_p3 - zext_ln14071_1_fu_708_p1);
assign sub_ln14071_fu_592_p2 = (p_shl21_fu_580_p5 - zext_ln14071_fu_576_p1);
assign sub_ln14073_1_fu_785_p2 = (p_shl22_fu_778_p3 - zext_ln14073_1_fu_775_p1);
assign sub_ln14073_fu_697_p2 = (p_shl23_fu_688_p5 - zext_ln14073_fu_684_p1);
assign sub_ln14075_1_fu_813_p2 = (p_shl_fu_806_p3 - zext_ln14075_1_fu_803_p1);
assign sub_ln14075_fu_752_p2 = (p_shl19_fu_744_p4 - zext_ln14075_fu_740_p1);
assign tmp_106_fu_763_p3 = {{tmp_s_reg_872_pp0_iter1_reg}, {lshr_ln_reg_885_pp0_iter1_reg}};
assign tmp_107_fu_514_p5 = {{{{empty_108}, {tmp_s_fu_478_p4}}, {empty}}, {lshr_ln_fu_498_p4}};
assign tmp_108_fu_677_p4 = {{{tmp_105_reg_877}, {empty}}, {lshr_ln_reg_885}};
assign tmp_109_fu_566_p4 = {{{empty_108}, {tmp_s_fu_478_p4}}, {lshr_ln60_fu_556_p4}};
assign tmp_110_fu_734_p3 = {{tmp_105_reg_877}, {lshr_ln60_reg_898}};
assign tmp_489_fu_616_p3 = v11068_fu_604_p2[32'd4];
assign tmp_s_fu_478_p4 = {{v11067_fu_464_p3[4:2]}};
assign v11067_fu_464_p3 = ((ap_phi_mux_icmp_ln1406696_phi_fu_411_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1106794_load : add_ln14065_fu_450_p2);
assign v11068_fu_604_p2 = (select_ln14065_fu_456_p3 + 5'd2);
assign v11205_1_address0 = zext_ln14083_reg_941;
assign v11205_1_ce0 = v11205_1_ce0_local;
assign v11205_1_d0 = v13683_3_0_q0;
assign v11205_1_we0 = v11205_1_we0_local;
assign v11205_2_address0 = zext_ln14083_reg_941;
assign v11205_2_ce0 = v11205_2_ce0_local;
assign v11205_2_d0 = v13683_2_1_q0;
assign v11205_2_we0 = v11205_2_we0_local;
assign v11205_3_address0 = zext_ln14083_reg_941;
assign v11205_3_ce0 = v11205_3_ce0_local;
assign v11205_3_d0 = v13683_2_0_q0;
assign v11205_3_we0 = v11205_3_we0_local;
assign v11205_4_address0 = zext_ln14083_reg_941;
assign v11205_4_ce0 = v11205_4_ce0_local;
assign v11205_4_d0 = v13683_1_1_q0;
assign v11205_4_we0 = v11205_4_we0_local;
assign v11205_5_address0 = zext_ln14083_reg_941;
assign v11205_5_ce0 = v11205_5_ce0_local;
assign v11205_5_d0 = v13683_1_0_q0;
assign v11205_5_we0 = v11205_5_we0_local;
assign v11205_6_address0 = zext_ln14083_fu_769_p1;
assign v11205_6_ce0 = v11205_6_ce0_local;
assign v11205_6_d0 = v13683_0_1_q0;
assign v11205_6_we0 = v11205_6_we0_local;
assign v11205_7_address0 = zext_ln14083_fu_769_p1;
assign v11205_7_ce0 = v11205_7_ce0_local;
assign v11205_7_d0 = v13683_0_0_q0;
assign v11205_7_we0 = v11205_7_we0_local;
assign v11205_address0 = zext_ln14083_reg_941;
assign v11205_ce0 = v11205_ce0_local;
assign v11205_d0 = v13683_3_1_q0;
assign v11205_we0 = v11205_we0_local;
assign v13683_0_0_address0 = zext_ln14069_2_fu_672_p1;
assign v13683_0_0_ce0 = v13683_0_0_ce0_local;
assign v13683_0_1_address0 = zext_ln14071_2_fu_729_p1;
assign v13683_0_1_ce0 = v13683_0_1_ce0_local;
assign v13683_1_0_address0 = zext_ln14073_2_fu_796_p1;
assign v13683_1_0_ce0 = v13683_1_0_ce0_local;
assign v13683_1_1_address0 = zext_ln14075_2_fu_824_p1;
assign v13683_1_1_ce0 = v13683_1_1_ce0_local;
assign v13683_2_0_address0 = zext_ln14073_2_fu_796_p1;
assign v13683_2_0_ce0 = v13683_2_0_ce0_local;
assign v13683_2_1_address0 = zext_ln14075_2_fu_824_p1;
assign v13683_2_1_ce0 = v13683_2_1_ce0_local;
assign v13683_3_0_address0 = zext_ln14073_2_fu_796_p1;
assign v13683_3_0_ce0 = v13683_3_0_ce0_local;
assign v13683_3_1_address0 = zext_ln14075_2_fu_824_p1;
assign v13683_3_1_ce0 = v13683_3_1_ce0_local;
assign xor_ln14066_fu_624_p2 = (tmp_489_fu_616_p3 ^ 1'd1);
assign zext_ln14069_1_fu_651_p1 = add_ln14069_reg_892;
assign zext_ln14069_2_fu_672_p1 = add_ln14069_1_fu_667_p2;
assign zext_ln14069_fu_526_p1 = tmp_107_fu_514_p5;
assign zext_ln14071_1_fu_708_p1 = add_ln14071_reg_904;
assign zext_ln14071_2_fu_729_p1 = add_ln14071_1_fu_724_p2;
assign zext_ln14071_fu_576_p1 = tmp_109_fu_566_p4;
assign zext_ln14073_1_fu_775_p1 = add_ln14073_reg_924;
assign zext_ln14073_2_fu_796_p1 = add_ln14073_1_fu_791_p2;
assign zext_ln14073_fu_684_p1 = tmp_108_fu_677_p4;
assign zext_ln14075_1_fu_803_p1 = add_ln14075_reg_935;
assign zext_ln14075_2_fu_824_p1 = add_ln14075_1_fu_819_p2;
assign zext_ln14075_fu_740_p1 = tmp_110_fu_734_p3;
assign zext_ln14083_fu_769_p1 = tmp_106_fu_763_p3;
assign zext_ln14107_1_cast_fu_422_p1 = zext_ln14107_1;
assign zext_ln14107_cast_fu_418_p1 = zext_ln14107;
always @ (posedge ap_clk) begin
    zext_ln14107_cast_reg_858[11:2] <= 10'b0000000000;
    zext_ln14107_1_cast_reg_866[9:3] <= 7'b0000000;
    zext_ln14083_reg_941[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 