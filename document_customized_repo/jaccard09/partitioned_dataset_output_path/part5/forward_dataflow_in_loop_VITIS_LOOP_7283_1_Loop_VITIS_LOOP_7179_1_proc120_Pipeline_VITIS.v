
module forward_dataflow_in_loop_VITIS_LOOP_7283_1_Loop_VITIS_LOOP_7179_1_proc120_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v4881_address0,v4881_ce0,v4881_we0,v4881_d0,v4881_1_address0,v4881_1_ce0,v4881_1_we0,v4881_1_d0,v4881_2_address0,v4881_2_ce0,v4881_2_we0,v4881_2_d0,v4881_3_address0,v4881_3_ce0,v4881_3_we0,v4881_3_d0,v4881_4_address0,v4881_4_ce0,v4881_4_we0,v4881_4_d0,v4881_5_address0,v4881_5_ce0,v4881_5_we0,v4881_5_d0,v4881_6_address0,v4881_6_ce0,v4881_6_we0,v4881_6_d0,v4881_7_address0,v4881_7_ce0,v4881_7_we0,v4881_7_d0,mul_i4,p_udiv,tmp,zext_ln7221_2,zext_ln7221,v9182_0_0_address0,v9182_0_0_ce0,v9182_0_0_q0,v9182_1_0_address0,v9182_1_0_ce0,v9182_1_0_q0,v9182_2_0_address0,v9182_2_0_ce0,v9182_2_0_q0,v9182_3_0_address0,v9182_3_0_ce0,v9182_3_0_q0,v9182_0_1_address0,v9182_0_1_ce0,v9182_0_1_q0,v9182_1_1_address0,v9182_1_1_ce0,v9182_1_1_q0,v9182_2_1_address0,v9182_2_1_ce0,v9182_2_1_q0,v9182_3_1_address0,v9182_3_1_ce0,v9182_3_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
output  [6:0] v4881_address0;
output   v4881_ce0;
output   v4881_we0;
output  [7:0] v4881_d0;
output  [6:0] v4881_1_address0;
output   v4881_1_ce0;
output   v4881_1_we0;
output  [7:0] v4881_1_d0;
output  [6:0] v4881_2_address0;
output   v4881_2_ce0;
output   v4881_2_we0;
output  [7:0] v4881_2_d0;
output  [6:0] v4881_3_address0;
output   v4881_3_ce0;
output   v4881_3_we0;
output  [7:0] v4881_3_d0;
output  [6:0] v4881_4_address0;
output   v4881_4_ce0;
output   v4881_4_we0;
output  [7:0] v4881_4_d0;
output  [6:0] v4881_5_address0;
output   v4881_5_ce0;
output   v4881_5_we0;
output  [7:0] v4881_5_d0;
output  [6:0] v4881_6_address0;
output   v4881_6_ce0;
output   v4881_6_we0;
output  [7:0] v4881_6_d0;
output  [6:0] v4881_7_address0;
output   v4881_7_ce0;
output   v4881_7_we0;
output  [7:0] v4881_7_d0;
input  [6:0] mul_i4;
input  [5:0] p_udiv;
input  [1:0] tmp;
input  [1:0] zext_ln7221_2;
input  [1:0] zext_ln7221;
output  [14:0] v9182_0_0_address0;
output   v9182_0_0_ce0;
input  [7:0] v9182_0_0_q0;
output  [14:0] v9182_1_0_address0;
output   v9182_1_0_ce0;
input  [7:0] v9182_1_0_q0;
output  [14:0] v9182_2_0_address0;
output   v9182_2_0_ce0;
input  [7:0] v9182_2_0_q0;
output  [14:0] v9182_3_0_address0;
output   v9182_3_0_ce0;
input  [7:0] v9182_3_0_q0;
output  [14:0] v9182_0_1_address0;
output   v9182_0_1_ce0;
input  [7:0] v9182_0_1_q0;
output  [14:0] v9182_1_1_address0;
output   v9182_1_1_ce0;
input  [7:0] v9182_1_1_q0;
output  [14:0] v9182_2_1_address0;
output   v9182_2_1_ce0;
input  [7:0] v9182_2_1_q0;
output  [14:0] v9182_3_1_address0;
output   v9182_3_1_ce0;
input  [7:0] v9182_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7179_fu_652_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [14:0] zext_ln7221_cast_fu_408_p1;
reg   [14:0] zext_ln7221_cast_reg_865;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] zext_ln7221_2_cast_fu_412_p1;
reg   [12:0] zext_ln7221_2_cast_reg_873;
reg   [4:0] tmp_16_reg_879;
wire   [6:0] add_ln7197_fu_522_p2;
reg   [6:0] add_ln7197_reg_887;
reg   [6:0] add_ln7197_reg_887_pp0_iter1_reg;
wire   [5:0] add_ln7183_fu_534_p2;
reg   [5:0] add_ln7183_reg_892;
wire   [12:0] add_ln7183_1_fu_572_p2;
reg   [12:0] add_ln7183_1_reg_898;
wire   [5:0] lshr_ln39_fu_578_p4;
reg   [5:0] lshr_ln39_reg_904;
wire   [12:0] add_ln7185_fu_620_p2;
reg   [12:0] add_ln7185_reg_910;
wire   [0:0] xor_ln7180_fu_646_p2;
reg   [0:0] xor_ln7180_reg_916;
reg   [0:0] icmp_ln7179_reg_921;
wire   [12:0] add_ln7187_fu_723_p2;
reg   [12:0] add_ln7187_reg_930;
wire   [12:0] add_ln7189_fu_778_p2;
reg   [12:0] add_ln7189_reg_941;
wire   [63:0] zext_ln7197_1_fu_783_p1;
reg   [63:0] zext_ln7197_1_reg_947;
reg   [0:0] ap_phi_mux_icmp_ln718096_phi_fu_401_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7183_2_fu_694_p1;
wire   [63:0] zext_ln7185_2_fu_749_p1;
wire   [63:0] zext_ln7187_2_fu_809_p1;
wire   [63:0] zext_ln7189_2_fu_837_p1;
reg   [6:0] indvar_flatten93_fu_134;
wire   [6:0] add_ln7179_1_fu_632_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_load;
reg   [5:0] v483394_fu_138;
wire   [5:0] v4833_fu_454_p3;
reg   [5:0] ap_sig_allocacmp_v483394_load;
reg   [5:0] v483495_fu_142;
wire   [5:0] v4834_fu_626_p2;
reg   [5:0] ap_sig_allocacmp_v483495_load;
reg    v9182_0_0_ce0_local;
reg    v9182_0_1_ce0_local;
reg    v9182_1_0_ce0_local;
reg    v9182_1_1_ce0_local;
reg    v9182_2_0_ce0_local;
reg    v9182_2_1_ce0_local;
reg    v9182_3_0_ce0_local;
reg    v9182_3_1_ce0_local;
reg    v4881_7_we0_local;
reg    v4881_7_ce0_local;
reg    v4881_6_we0_local;
reg    v4881_6_ce0_local;
reg    v4881_5_we0_local;
reg    v4881_5_ce0_local;
reg    v4881_4_we0_local;
reg    v4881_4_ce0_local;
reg    v4881_3_we0_local;
reg    v4881_3_ce0_local;
reg    v4881_2_we0_local;
reg    v4881_2_ce0_local;
reg    v4881_1_we0_local;
reg    v4881_1_ce0_local;
reg    v4881_we0_local;
reg    v4881_ce0_local;
wire   [5:0] add_ln7179_fu_440_p2;
wire   [2:0] lshr_ln_fu_466_p4;
wire   [6:0] zext_ln7179_fu_462_p1;
wire   [6:0] empty_fu_484_p2;
wire   [5:0] select_ln7179_fu_446_p3;
wire   [4:0] lshr_ln38_fu_504_p4;
wire   [6:0] tmp_s_fu_476_p3;
wire   [6:0] zext_ln7197_fu_518_p1;
wire   [6:0] zext_ln7180_fu_500_p1;
wire   [5:0] zext_ln7180_1_fu_514_p1;
wire   [10:0] tmp_17_fu_540_p4;
wire   [12:0] p_shl31_fu_554_p5;
wire   [12:0] zext_ln7183_fu_550_p1;
wire   [12:0] sub_ln7183_fu_566_p2;
wire   [6:0] add_ln7182_fu_528_p2;
wire   [10:0] tmp_19_fu_588_p4;
wire   [12:0] p_shl27_fu_602_p5;
wire   [12:0] zext_ln7185_fu_598_p1;
wire   [12:0] sub_ln7185_fu_614_p2;
wire   [0:0] tmp_139_fu_638_p3;
wire   [14:0] p_shl30_fu_676_p3;
wire   [14:0] zext_ln7183_1_fu_673_p1;
wire   [14:0] sub_ln7183_1_fu_683_p2;
wire   [14:0] add_ln7183_2_fu_689_p2;
wire   [10:0] tmp_18_fu_699_p3;
wire   [12:0] p_shl29_fu_709_p4;
wire   [12:0] zext_ln7187_fu_705_p1;
wire   [12:0] sub_ln7187_fu_717_p2;
wire   [14:0] p_shl26_fu_731_p3;
wire   [14:0] zext_ln7185_1_fu_728_p1;
wire   [14:0] sub_ln7185_1_fu_738_p2;
wire   [14:0] add_ln7185_1_fu_744_p2;
wire   [10:0] tmp_20_fu_754_p3;
wire   [12:0] p_shl25_fu_764_p4;
wire   [12:0] zext_ln7189_fu_760_p1;
wire   [12:0] sub_ln7189_fu_772_p2;
wire   [14:0] p_shl28_fu_791_p3;
wire   [14:0] zext_ln7187_1_fu_788_p1;
wire   [14:0] sub_ln7187_1_fu_798_p2;
wire   [14:0] add_ln7187_1_fu_804_p2;
wire   [14:0] p_shl_fu_819_p3;
wire   [14:0] zext_ln7189_1_fu_816_p1;
wire   [14:0] sub_ln7189_1_fu_826_p2;
wire   [14:0] add_ln7189_1_fu_832_p2;
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
reg    ap_condition_621;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten93_fu_134 = 7'd0;
#0 v483394_fu_138 = 6'd0;
#0 v483495_fu_142 = 6'd0;
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
            indvar_flatten93_fu_134 <= add_ln7179_1_fu_632_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten93_fu_134 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v483394_fu_138 <= v4833_fu_454_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v483394_fu_138 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v483495_fu_142 <= v4834_fu_626_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v483495_fu_142 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7183_1_reg_898 <= add_ln7183_1_fu_572_p2;
        add_ln7183_reg_892 <= add_ln7183_fu_534_p2;
        add_ln7185_reg_910 <= add_ln7185_fu_620_p2;
        add_ln7187_reg_930 <= add_ln7187_fu_723_p2;
        add_ln7189_reg_941 <= add_ln7189_fu_778_p2;
        add_ln7197_reg_887 <= add_ln7197_fu_522_p2;
        add_ln7197_reg_887_pp0_iter1_reg <= add_ln7197_reg_887;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln7179_reg_921 <= icmp_ln7179_fu_652_p2;
        lshr_ln39_reg_904 <= {{add_ln7182_fu_528_p2[6:1]}};
        tmp_16_reg_879 <= {{empty_fu_484_p2[6:2]}};
        zext_ln7221_2_cast_reg_873[1 : 0] <= zext_ln7221_2_cast_fu_412_p1[1 : 0];
        zext_ln7221_cast_reg_865[1 : 0] <= zext_ln7221_cast_fu_408_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln7180_reg_916 <= xor_ln7180_fu_646_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln7197_1_reg_947[6 : 0] <= zext_ln7197_1_fu_783_p1[6 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln7179_fu_652_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_621)) begin
            ap_phi_mux_icmp_ln718096_phi_fu_401_p4 = xor_ln7180_reg_916;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln718096_phi_fu_401_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln718096_phi_fu_401_p4 = xor_ln7180_reg_916;
        end
    end else begin
        ap_phi_mux_icmp_ln718096_phi_fu_401_p4 = xor_ln7180_reg_916;
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
        ap_sig_allocacmp_indvar_flatten93_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_load = indvar_flatten93_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v483394_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v483394_load = v483394_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v483495_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v483495_load = v483495_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_1_ce0_local = 1'b1;
    end else begin
        v4881_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_1_we0_local = 1'b1;
    end else begin
        v4881_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_2_ce0_local = 1'b1;
    end else begin
        v4881_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_2_we0_local = 1'b1;
    end else begin
        v4881_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_3_ce0_local = 1'b1;
    end else begin
        v4881_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_3_we0_local = 1'b1;
    end else begin
        v4881_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_4_ce0_local = 1'b1;
    end else begin
        v4881_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_4_we0_local = 1'b1;
    end else begin
        v4881_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_5_ce0_local = 1'b1;
    end else begin
        v4881_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_5_we0_local = 1'b1;
    end else begin
        v4881_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_6_ce0_local = 1'b1;
    end else begin
        v4881_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_6_we0_local = 1'b1;
    end else begin
        v4881_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_7_ce0_local = 1'b1;
    end else begin
        v4881_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4881_7_we0_local = 1'b1;
    end else begin
        v4881_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_ce0_local = 1'b1;
    end else begin
        v4881_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4881_we0_local = 1'b1;
    end else begin
        v4881_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9182_0_0_ce0_local = 1'b1;
    end else begin
        v9182_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9182_0_1_ce0_local = 1'b1;
    end else begin
        v9182_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_1_0_ce0_local = 1'b1;
    end else begin
        v9182_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_1_1_ce0_local = 1'b1;
    end else begin
        v9182_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_2_0_ce0_local = 1'b1;
    end else begin
        v9182_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_2_1_ce0_local = 1'b1;
    end else begin
        v9182_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_3_0_ce0_local = 1'b1;
    end else begin
        v9182_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9182_3_1_ce0_local = 1'b1;
    end else begin
        v9182_3_1_ce0_local = 1'b0;
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
assign add_ln7179_1_fu_632_p2 = (ap_sig_allocacmp_indvar_flatten93_load + 7'd1);
assign add_ln7179_fu_440_p2 = (ap_sig_allocacmp_v483394_load + 6'd4);
assign add_ln7182_fu_528_p2 = (mul_i4 + zext_ln7180_fu_500_p1);
assign add_ln7183_1_fu_572_p2 = (sub_ln7183_fu_566_p2 + zext_ln7221_2_cast_fu_412_p1);
assign add_ln7183_2_fu_689_p2 = (sub_ln7183_1_fu_683_p2 + zext_ln7221_cast_reg_865);
assign add_ln7183_fu_534_p2 = (zext_ln7180_1_fu_514_p1 + p_udiv);
assign add_ln7185_1_fu_744_p2 = (sub_ln7185_1_fu_738_p2 + zext_ln7221_cast_reg_865);
assign add_ln7185_fu_620_p2 = (sub_ln7185_fu_614_p2 + zext_ln7221_2_cast_fu_412_p1);
assign add_ln7187_1_fu_804_p2 = (sub_ln7187_1_fu_798_p2 + zext_ln7221_cast_reg_865);
assign add_ln7187_fu_723_p2 = (sub_ln7187_fu_717_p2 + zext_ln7221_2_cast_reg_873);
assign add_ln7189_1_fu_832_p2 = (sub_ln7189_1_fu_826_p2 + zext_ln7221_cast_reg_865);
assign add_ln7189_fu_778_p2 = (sub_ln7189_fu_772_p2 + zext_ln7221_2_cast_reg_873);
assign add_ln7197_fu_522_p2 = (tmp_s_fu_476_p3 + zext_ln7197_fu_518_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_621 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7179_reg_921 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_484_p2 = (mul_i + zext_ln7179_fu_462_p1);
assign icmp_ln7179_fu_652_p2 = ((ap_sig_allocacmp_indvar_flatten93_load == 7'd127) ? 1'b1 : 1'b0);
assign lshr_ln38_fu_504_p4 = {{select_ln7179_fu_446_p3[5:1]}};
assign lshr_ln39_fu_578_p4 = {{add_ln7182_fu_528_p2[6:1]}};
assign lshr_ln_fu_466_p4 = {{v4833_fu_454_p3[4:2]}};
assign p_shl25_fu_764_p4 = {{{tmp_16_reg_879}, {lshr_ln39_reg_904}}, {2'd0}};
assign p_shl26_fu_731_p3 = {{add_ln7185_reg_910}, {2'd0}};
assign p_shl27_fu_602_p5 = {{{{tmp}, {lshr_ln_fu_466_p4}}, {lshr_ln39_fu_578_p4}}, {2'd0}};
assign p_shl28_fu_791_p3 = {{add_ln7187_reg_930}, {2'd0}};
assign p_shl29_fu_709_p4 = {{{tmp_16_reg_879}, {add_ln7183_reg_892}}, {2'd0}};
assign p_shl30_fu_676_p3 = {{add_ln7183_1_reg_898}, {2'd0}};
assign p_shl31_fu_554_p5 = {{{{tmp}, {lshr_ln_fu_466_p4}}, {add_ln7183_fu_534_p2}}, {2'd0}};
assign p_shl_fu_819_p3 = {{add_ln7189_reg_941}, {2'd0}};
assign select_ln7179_fu_446_p3 = ((ap_phi_mux_icmp_ln718096_phi_fu_401_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v483495_load : 6'd0);
assign sub_ln7183_1_fu_683_p2 = (p_shl30_fu_676_p3 - zext_ln7183_1_fu_673_p1);
assign sub_ln7183_fu_566_p2 = (p_shl31_fu_554_p5 - zext_ln7183_fu_550_p1);
assign sub_ln7185_1_fu_738_p2 = (p_shl26_fu_731_p3 - zext_ln7185_1_fu_728_p1);
assign sub_ln7185_fu_614_p2 = (p_shl27_fu_602_p5 - zext_ln7185_fu_598_p1);
assign sub_ln7187_1_fu_798_p2 = (p_shl28_fu_791_p3 - zext_ln7187_1_fu_788_p1);
assign sub_ln7187_fu_717_p2 = (p_shl29_fu_709_p4 - zext_ln7187_fu_705_p1);
assign sub_ln7189_1_fu_826_p2 = (p_shl_fu_819_p3 - zext_ln7189_1_fu_816_p1);
assign sub_ln7189_fu_772_p2 = (p_shl25_fu_764_p4 - zext_ln7189_fu_760_p1);
assign tmp_139_fu_638_p3 = v4834_fu_626_p2[32'd5];
assign tmp_17_fu_540_p4 = {{{tmp}, {lshr_ln_fu_466_p4}}, {add_ln7183_fu_534_p2}};
assign tmp_18_fu_699_p3 = {{tmp_16_reg_879}, {add_ln7183_reg_892}};
assign tmp_19_fu_588_p4 = {{{tmp}, {lshr_ln_fu_466_p4}}, {lshr_ln39_fu_578_p4}};
assign tmp_20_fu_754_p3 = {{tmp_16_reg_879}, {lshr_ln39_reg_904}};
assign tmp_s_fu_476_p3 = {{lshr_ln_fu_466_p4}, {4'd0}};
assign v4833_fu_454_p3 = ((ap_phi_mux_icmp_ln718096_phi_fu_401_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v483394_load : add_ln7179_fu_440_p2);
assign v4834_fu_626_p2 = (select_ln7179_fu_446_p3 + 6'd2);
assign v4881_1_address0 = zext_ln7197_1_reg_947;
assign v4881_1_ce0 = v4881_1_ce0_local;
assign v4881_1_d0 = v9182_3_0_q0;
assign v4881_1_we0 = v4881_1_we0_local;
assign v4881_2_address0 = zext_ln7197_1_reg_947;
assign v4881_2_ce0 = v4881_2_ce0_local;
assign v4881_2_d0 = v9182_2_1_q0;
assign v4881_2_we0 = v4881_2_we0_local;
assign v4881_3_address0 = zext_ln7197_1_reg_947;
assign v4881_3_ce0 = v4881_3_ce0_local;
assign v4881_3_d0 = v9182_2_0_q0;
assign v4881_3_we0 = v4881_3_we0_local;
assign v4881_4_address0 = zext_ln7197_1_reg_947;
assign v4881_4_ce0 = v4881_4_ce0_local;
assign v4881_4_d0 = v9182_1_1_q0;
assign v4881_4_we0 = v4881_4_we0_local;
assign v4881_5_address0 = zext_ln7197_1_reg_947;
assign v4881_5_ce0 = v4881_5_ce0_local;
assign v4881_5_d0 = v9182_1_0_q0;
assign v4881_5_we0 = v4881_5_we0_local;
assign v4881_6_address0 = zext_ln7197_1_fu_783_p1;
assign v4881_6_ce0 = v4881_6_ce0_local;
assign v4881_6_d0 = v9182_0_1_q0;
assign v4881_6_we0 = v4881_6_we0_local;
assign v4881_7_address0 = zext_ln7197_1_fu_783_p1;
assign v4881_7_ce0 = v4881_7_ce0_local;
assign v4881_7_d0 = v9182_0_0_q0;
assign v4881_7_we0 = v4881_7_we0_local;
assign v4881_address0 = zext_ln7197_1_reg_947;
assign v4881_ce0 = v4881_ce0_local;
assign v4881_d0 = v9182_3_1_q0;
assign v4881_we0 = v4881_we0_local;
assign v9182_0_0_address0 = zext_ln7183_2_fu_694_p1;
assign v9182_0_0_ce0 = v9182_0_0_ce0_local;
assign v9182_0_1_address0 = zext_ln7185_2_fu_749_p1;
assign v9182_0_1_ce0 = v9182_0_1_ce0_local;
assign v9182_1_0_address0 = zext_ln7187_2_fu_809_p1;
assign v9182_1_0_ce0 = v9182_1_0_ce0_local;
assign v9182_1_1_address0 = zext_ln7189_2_fu_837_p1;
assign v9182_1_1_ce0 = v9182_1_1_ce0_local;
assign v9182_2_0_address0 = zext_ln7187_2_fu_809_p1;
assign v9182_2_0_ce0 = v9182_2_0_ce0_local;
assign v9182_2_1_address0 = zext_ln7189_2_fu_837_p1;
assign v9182_2_1_ce0 = v9182_2_1_ce0_local;
assign v9182_3_0_address0 = zext_ln7187_2_fu_809_p1;
assign v9182_3_0_ce0 = v9182_3_0_ce0_local;
assign v9182_3_1_address0 = zext_ln7189_2_fu_837_p1;
assign v9182_3_1_ce0 = v9182_3_1_ce0_local;
assign xor_ln7180_fu_646_p2 = (tmp_139_fu_638_p3 ^ 1'd1);
assign zext_ln7179_fu_462_p1 = v4833_fu_454_p3;
assign zext_ln7180_1_fu_514_p1 = lshr_ln38_fu_504_p4;
assign zext_ln7180_fu_500_p1 = select_ln7179_fu_446_p3;
assign zext_ln7183_1_fu_673_p1 = add_ln7183_1_reg_898;
assign zext_ln7183_2_fu_694_p1 = add_ln7183_2_fu_689_p2;
assign zext_ln7183_fu_550_p1 = tmp_17_fu_540_p4;
assign zext_ln7185_1_fu_728_p1 = add_ln7185_reg_910;
assign zext_ln7185_2_fu_749_p1 = add_ln7185_1_fu_744_p2;
assign zext_ln7185_fu_598_p1 = tmp_19_fu_588_p4;
assign zext_ln7187_1_fu_788_p1 = add_ln7187_reg_930;
assign zext_ln7187_2_fu_809_p1 = add_ln7187_1_fu_804_p2;
assign zext_ln7187_fu_705_p1 = tmp_18_fu_699_p3;
assign zext_ln7189_1_fu_816_p1 = add_ln7189_reg_941;
assign zext_ln7189_2_fu_837_p1 = add_ln7189_1_fu_832_p2;
assign zext_ln7189_fu_760_p1 = tmp_20_fu_754_p3;
assign zext_ln7197_1_fu_783_p1 = add_ln7197_reg_887_pp0_iter1_reg;
assign zext_ln7197_fu_518_p1 = lshr_ln38_fu_504_p4;
assign zext_ln7221_2_cast_fu_412_p1 = zext_ln7221_2;
assign zext_ln7221_cast_fu_408_p1 = zext_ln7221;
always @ (posedge ap_clk) begin
    zext_ln7221_cast_reg_865[14:2] <= 13'b0000000000000;
    zext_ln7221_2_cast_reg_873[12:2] <= 11'b00000000000;
    zext_ln7197_1_reg_947[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
