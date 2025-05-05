module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,and_ln,mul10_i,p_udiv4_cast,v15153_address0,v15153_ce0,v15153_we0,v15153_d0,v15153_1_address0,v15153_1_ce0,v15153_1_we0,v15153_1_d0,v15153_2_address0,v15153_2_ce0,v15153_2_we0,v15153_2_d0,v15153_3_address0,v15153_3_ce0,v15153_3_we0,v15153_3_d0,mul15_i78,trunc_ln,v15432_0_0_address0,v15432_0_0_ce0,v15432_0_0_q0,v15432_1_0_address0,v15432_1_0_ce0,v15432_1_0_q0,v15432_0_1_address0,v15432_0_1_ce0,v15432_0_1_q0,v15432_1_1_address0,v15432_1_1_ce0,v15432_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] and_ln;
input  [6:0] mul10_i;
input  [5:0] p_udiv4_cast;
output  [11:0] v15153_address0;
output   v15153_ce0;
output   v15153_we0;
output  [7:0] v15153_d0;
output  [11:0] v15153_1_address0;
output   v15153_1_ce0;
output   v15153_1_we0;
output  [7:0] v15153_1_d0;
output  [11:0] v15153_2_address0;
output   v15153_2_ce0;
output   v15153_2_we0;
output  [7:0] v15153_2_d0;
output  [11:0] v15153_3_address0;
output   v15153_3_ce0;
output   v15153_3_we0;
output  [7:0] v15153_3_d0;
input  [6:0] mul15_i78;
input  [5:0] trunc_ln;
output  [16:0] v15432_0_0_address0;
output   v15432_0_0_ce0;
input  [7:0] v15432_0_0_q0;
output  [16:0] v15432_1_0_address0;
output   v15432_1_0_ce0;
input  [7:0] v15432_1_0_q0;
output  [16:0] v15432_0_1_address0;
output   v15432_0_1_ce0;
input  [7:0] v15432_0_1_q0;
output  [16:0] v15432_1_1_address0;
output   v15432_1_1_ce0;
input  [7:0] v15432_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19825_fu_556_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1982651_reg_280;
reg   [0:0] icmp_ln1982750_reg_291;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] v15120_fu_370_p3;
reg   [4:0] v15120_reg_833;
wire   [3:0] lshr_ln_fu_435_p4;
reg   [3:0] lshr_ln_reg_839;
wire   [10:0] add_ln19830_1_fu_463_p2;
reg   [10:0] add_ln19830_1_reg_844;
wire   [10:0] add_ln19834_fu_483_p2;
reg   [10:0] add_ln19834_reg_850;
reg   [3:0] lshr_ln16_reg_856;
reg   [5:0] lshr_ln17_reg_862;
wire   [0:0] icmp_ln19827_fu_544_p2;
reg   [0:0] icmp_ln19827_reg_867;
wire   [0:0] icmp_ln19826_fu_550_p2;
reg   [0:0] icmp_ln19826_reg_872;
reg   [0:0] icmp_ln19825_reg_877;
wire   [11:0] add_ln19836_1_fu_701_p2;
reg   [11:0] add_ln19836_1_reg_881;
reg   [0:0] ap_phi_mux_icmp_ln1982651_phi_fu_284_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1982750_phi_fu_295_p4;
wire   [63:0] zext_ln19830_4_fu_725_p1;
wire   [63:0] zext_ln19834_2_fu_736_p1;
wire   [63:0] zext_ln19832_1_fu_750_p1;
wire   [63:0] zext_ln19836_5_fu_761_p1;
wire   [63:0] zext_ln19836_4_fu_766_p1;
reg   [11:0] indvar_flatten1245_fu_122;
wire   [11:0] add_ln19825_1_fu_538_p2;
reg   [4:0] v1512046_fu_126;
reg   [7:0] indvar_flatten47_fu_130;
wire   [7:0] select_ln19826_1_fu_530_p3;
reg   [4:0] v1512148_fu_134;
wire   [4:0] v15121_fu_392_p3;
reg   [4:0] v1512249_fu_138;
wire   [4:0] v15122_fu_518_p2;
reg    v15432_0_0_ce0_local;
reg    v15432_0_1_ce0_local;
reg    v15432_1_0_ce0_local;
reg    v15432_1_1_ce0_local;
reg    v15153_3_we0_local;
reg    v15153_3_ce0_local;
reg    v15153_2_we0_local;
reg    v15153_2_ce0_local;
reg    v15153_1_we0_local;
reg    v15153_1_ce0_local;
reg    v15153_we0_local;
reg    v15153_ce0_local;
wire   [4:0] add_ln19825_fu_342_p2;
wire   [4:0] select_ln19825_fu_348_p3;
wire   [0:0] or_ln19825_fu_364_p2;
wire   [4:0] select_ln19825_1_fu_356_p3;
wire   [4:0] add_ln19826_fu_378_p2;
wire   [4:0] empty_fu_400_p2;
wire   [7:0] tmp_91_fu_413_p3;
wire   [10:0] p_shl33_fu_405_p3;
wire   [10:0] zext_ln19830_fu_421_p1;
wire   [6:0] zext_ln19826_fu_431_p1;
wire   [5:0] zext_ln19826_1_fu_450_p1;
wire   [5:0] empty_205_fu_454_p2;
wire   [10:0] sub_ln19830_fu_425_p2;
wire   [10:0] zext_ln19830_1_fu_459_p1;
wire   [6:0] empty_204_fu_445_p2;
wire   [5:0] tmp_s_fu_469_p4;
wire   [10:0] zext_ln19834_fu_479_p1;
wire   [4:0] v15122_mid2_fu_384_p3;
wire   [6:0] zext_ln19827_fu_489_p1;
wire   [6:0] add_ln19829_fu_503_p2;
wire   [7:0] add_ln19826_1_fu_524_p2;
wire   [5:0] tmp_fu_594_p3;
wire   [8:0] p_shl35_fu_587_p3;
wire   [8:0] zext_ln19836_fu_601_p1;
wire   [8:0] sub_ln19836_fu_605_p2;
wire   [8:0] zext_ln19836_1_fu_611_p1;
wire   [8:0] add_ln19836_fu_614_p2;
wire   [7:0] trunc_ln19836_fu_620_p1;
wire   [9:0] tmp_92_fu_624_p3;
wire   [11:0] tmp_93_fu_632_p3;
wire   [11:0] zext_ln19836_2_fu_640_p1;
wire   [13:0] tmp_94_fu_657_p3;
wire   [16:0] p_shl29_fu_650_p3;
wire   [16:0] zext_ln19830_2_fu_664_p1;
wire   [13:0] tmp_95_fu_681_p3;
wire   [16:0] p_shl_fu_674_p3;
wire   [16:0] zext_ln19834_1_fu_688_p1;
wire   [11:0] sub_ln19836_1_fu_644_p2;
wire   [11:0] zext_ln19836_3_fu_698_p1;
wire   [5:0] zext_ln19827_1_fu_707_p1;
wire   [5:0] add_ln19830_fu_710_p2;
wire   [16:0] sub_ln19830_1_fu_668_p2;
wire   [16:0] zext_ln19830_3_fu_715_p1;
wire   [16:0] add_ln19830_2_fu_719_p2;
wire   [16:0] sub_ln19834_fu_692_p2;
wire   [16:0] add_ln19834_1_fu_730_p2;
wire   [16:0] zext_ln19832_fu_741_p1;
wire   [16:0] add_ln19832_fu_744_p2;
wire   [16:0] add_ln19836_2_fu_755_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 indvar_flatten1245_fu_122 = 12'd0;
#0 v1512046_fu_126 = 5'd0;
#0 indvar_flatten47_fu_130 = 8'd0;
#0 v1512148_fu_134 = 5'd0;
#0 v1512249_fu_138 = 5'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19825_reg_877 == 1'd0))) begin
        icmp_ln1982651_reg_280 <= icmp_ln19826_reg_872;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1982651_reg_280 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19825_reg_877 == 1'd0))) begin
        icmp_ln1982750_reg_291 <= icmp_ln19827_reg_867;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1982750_reg_291 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1245_fu_122 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1245_fu_122 <= add_ln19825_1_fu_538_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten47_fu_130 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten47_fu_130 <= select_ln19826_1_fu_530_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1512046_fu_126 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1512046_fu_126 <= v15120_fu_370_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1512148_fu_134 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1512148_fu_134 <= v15121_fu_392_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1512249_fu_138 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1512249_fu_138 <= v15122_fu_518_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19830_1_reg_844 <= add_ln19830_1_fu_463_p2;
        add_ln19834_reg_850 <= add_ln19834_fu_483_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln19825_reg_877 <= icmp_ln19825_fu_556_p2;
        lshr_ln16_reg_856 <= {{v15122_mid2_fu_384_p3[4:1]}};
        lshr_ln17_reg_862 <= {{add_ln19829_fu_503_p2[6:1]}};
        lshr_ln_reg_839 <= {{v15121_fu_392_p3[4:1]}};
        v15120_reg_833 <= v15120_fu_370_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19836_1_reg_881 <= add_ln19836_1_fu_701_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19826_reg_872 <= icmp_ln19826_fu_550_p2;
        icmp_ln19827_reg_867 <= icmp_ln19827_fu_544_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19825_fu_556_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19825_reg_877 == 1'd0))) begin
        ap_phi_mux_icmp_ln1982651_phi_fu_284_p4 = icmp_ln19826_reg_872;
    end else begin
        ap_phi_mux_icmp_ln1982651_phi_fu_284_p4 = icmp_ln1982651_reg_280;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19825_reg_877 == 1'd0))) begin
        ap_phi_mux_icmp_ln1982750_phi_fu_295_p4 = icmp_ln19827_reg_867;
    end else begin
        ap_phi_mux_icmp_ln1982750_phi_fu_295_p4 = icmp_ln1982750_reg_291;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_1_ce0_local = 1'b1;
    end else begin
        v15153_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_1_we0_local = 1'b1;
    end else begin
        v15153_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_2_ce0_local = 1'b1;
    end else begin
        v15153_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_2_we0_local = 1'b1;
    end else begin
        v15153_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_3_ce0_local = 1'b1;
    end else begin
        v15153_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_3_we0_local = 1'b1;
    end else begin
        v15153_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_ce0_local = 1'b1;
    end else begin
        v15153_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15153_we0_local = 1'b1;
    end else begin
        v15153_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15432_0_0_ce0_local = 1'b1;
    end else begin
        v15432_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15432_0_1_ce0_local = 1'b1;
    end else begin
        v15432_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15432_1_0_ce0_local = 1'b1;
    end else begin
        v15432_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15432_1_1_ce0_local = 1'b1;
    end else begin
        v15432_1_1_ce0_local = 1'b0;
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
assign add_ln19825_1_fu_538_p2 = (indvar_flatten1245_fu_122 + 12'd1);
assign add_ln19825_fu_342_p2 = (v1512046_fu_126 + 5'd1);
assign add_ln19826_1_fu_524_p2 = (indvar_flatten47_fu_130 + 8'd1);
assign add_ln19826_fu_378_p2 = (select_ln19825_fu_348_p3 + 5'd2);
assign add_ln19829_fu_503_p2 = (mul15_i78 + zext_ln19827_fu_489_p1);
assign add_ln19830_1_fu_463_p2 = (sub_ln19830_fu_425_p2 + zext_ln19830_1_fu_459_p1);
assign add_ln19830_2_fu_719_p2 = (sub_ln19830_1_fu_668_p2 + zext_ln19830_3_fu_715_p1);
assign add_ln19830_fu_710_p2 = (trunc_ln + zext_ln19827_1_fu_707_p1);
assign add_ln19832_fu_744_p2 = (sub_ln19830_1_fu_668_p2 + zext_ln19832_fu_741_p1);
assign add_ln19834_1_fu_730_p2 = (sub_ln19834_fu_692_p2 + zext_ln19830_3_fu_715_p1);
assign add_ln19834_fu_483_p2 = (sub_ln19830_fu_425_p2 + zext_ln19834_fu_479_p1);
assign add_ln19836_1_fu_701_p2 = (sub_ln19836_1_fu_644_p2 + zext_ln19836_3_fu_698_p1);
assign add_ln19836_2_fu_755_p2 = (sub_ln19834_fu_692_p2 + zext_ln19832_fu_741_p1);
assign add_ln19836_fu_614_p2 = (sub_ln19836_fu_605_p2 + zext_ln19836_1_fu_611_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_204_fu_445_p2 = (mul10_i + zext_ln19826_fu_431_p1);
assign empty_205_fu_454_p2 = (p_udiv4_cast + zext_ln19826_1_fu_450_p1);
assign empty_fu_400_p2 = (v15120_fu_370_p3 + and_ln);
assign icmp_ln19825_fu_556_p2 = ((indvar_flatten1245_fu_122 == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln19826_fu_550_p2 = ((select_ln19826_1_fu_530_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln19827_fu_544_p2 = ((v15122_fu_518_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln_fu_435_p4 = {{v15121_fu_392_p3[4:1]}};
assign or_ln19825_fu_364_p2 = (ap_phi_mux_icmp_ln1982750_phi_fu_295_p4 | ap_phi_mux_icmp_ln1982651_phi_fu_284_p4);
assign p_shl29_fu_650_p3 = {{add_ln19830_1_reg_844}, {6'd0}};
assign p_shl33_fu_405_p3 = {{empty_fu_400_p2}, {6'd0}};
assign p_shl35_fu_587_p3 = {{v15120_reg_833}, {4'd0}};
assign p_shl_fu_674_p3 = {{add_ln19834_reg_850}, {6'd0}};
assign select_ln19825_1_fu_356_p3 = ((ap_phi_mux_icmp_ln1982651_phi_fu_284_p4[0:0] == 1'b1) ? 5'd0 : v1512249_fu_138);
assign select_ln19825_fu_348_p3 = ((ap_phi_mux_icmp_ln1982651_phi_fu_284_p4[0:0] == 1'b1) ? 5'd0 : v1512148_fu_134);
assign select_ln19826_1_fu_530_p3 = ((ap_phi_mux_icmp_ln1982651_phi_fu_284_p4[0:0] == 1'b1) ? 8'd1 : add_ln19826_1_fu_524_p2);
assign sub_ln19830_1_fu_668_p2 = (p_shl29_fu_650_p3 - zext_ln19830_2_fu_664_p1);
assign sub_ln19830_fu_425_p2 = (p_shl33_fu_405_p3 - zext_ln19830_fu_421_p1);
assign sub_ln19834_fu_692_p2 = (p_shl_fu_674_p3 - zext_ln19834_1_fu_688_p1);
assign sub_ln19836_1_fu_644_p2 = (tmp_93_fu_632_p3 - zext_ln19836_2_fu_640_p1);
assign sub_ln19836_fu_605_p2 = (p_shl35_fu_587_p3 - zext_ln19836_fu_601_p1);
assign tmp_91_fu_413_p3 = {{empty_fu_400_p2}, {3'd0}};
assign tmp_92_fu_624_p3 = {{add_ln19836_fu_614_p2}, {1'd0}};
assign tmp_93_fu_632_p3 = {{trunc_ln19836_fu_620_p1}, {4'd0}};
assign tmp_94_fu_657_p3 = {{add_ln19830_1_reg_844}, {3'd0}};
assign tmp_95_fu_681_p3 = {{add_ln19834_reg_850}, {3'd0}};
assign tmp_fu_594_p3 = {{v15120_reg_833}, {1'd0}};
assign tmp_s_fu_469_p4 = {{empty_204_fu_445_p2[6:1]}};
assign trunc_ln19836_fu_620_p1 = add_ln19836_fu_614_p2[7:0];
assign v15120_fu_370_p3 = ((ap_phi_mux_icmp_ln1982651_phi_fu_284_p4[0:0] == 1'b1) ? add_ln19825_fu_342_p2 : v1512046_fu_126);
assign v15121_fu_392_p3 = ((or_ln19825_fu_364_p2[0:0] == 1'b1) ? select_ln19825_fu_348_p3 : add_ln19826_fu_378_p2);
assign v15122_fu_518_p2 = (v15122_mid2_fu_384_p3 + 5'd2);
assign v15122_mid2_fu_384_p3 = ((or_ln19825_fu_364_p2[0:0] == 1'b1) ? select_ln19825_1_fu_356_p3 : 5'd0);
assign v15153_1_address0 = zext_ln19836_4_fu_766_p1;
assign v15153_1_ce0 = v15153_1_ce0_local;
assign v15153_1_d0 = v15432_1_0_q0;
assign v15153_1_we0 = v15153_1_we0_local;
assign v15153_2_address0 = zext_ln19836_4_fu_766_p1;
assign v15153_2_ce0 = v15153_2_ce0_local;
assign v15153_2_d0 = v15432_0_1_q0;
assign v15153_2_we0 = v15153_2_we0_local;
assign v15153_3_address0 = zext_ln19836_4_fu_766_p1;
assign v15153_3_ce0 = v15153_3_ce0_local;
assign v15153_3_d0 = v15432_0_0_q0;
assign v15153_3_we0 = v15153_3_we0_local;
assign v15153_address0 = zext_ln19836_4_fu_766_p1;
assign v15153_ce0 = v15153_ce0_local;
assign v15153_d0 = v15432_1_1_q0;
assign v15153_we0 = v15153_we0_local;
assign v15432_0_0_address0 = zext_ln19830_4_fu_725_p1;
assign v15432_0_0_ce0 = v15432_0_0_ce0_local;
assign v15432_0_1_address0 = zext_ln19832_1_fu_750_p1;
assign v15432_0_1_ce0 = v15432_0_1_ce0_local;
assign v15432_1_0_address0 = zext_ln19834_2_fu_736_p1;
assign v15432_1_0_ce0 = v15432_1_0_ce0_local;
assign v15432_1_1_address0 = zext_ln19836_5_fu_761_p1;
assign v15432_1_1_ce0 = v15432_1_1_ce0_local;
assign zext_ln19826_1_fu_450_p1 = lshr_ln_fu_435_p4;
assign zext_ln19826_fu_431_p1 = v15121_fu_392_p3;
assign zext_ln19827_1_fu_707_p1 = lshr_ln16_reg_856;
assign zext_ln19827_fu_489_p1 = v15122_mid2_fu_384_p3;
assign zext_ln19830_1_fu_459_p1 = empty_205_fu_454_p2;
assign zext_ln19830_2_fu_664_p1 = tmp_94_fu_657_p3;
assign zext_ln19830_3_fu_715_p1 = add_ln19830_fu_710_p2;
assign zext_ln19830_4_fu_725_p1 = add_ln19830_2_fu_719_p2;
assign zext_ln19830_fu_421_p1 = tmp_91_fu_413_p3;
assign zext_ln19832_1_fu_750_p1 = add_ln19832_fu_744_p2;
assign zext_ln19832_fu_741_p1 = lshr_ln17_reg_862;
assign zext_ln19834_1_fu_688_p1 = tmp_95_fu_681_p3;
assign zext_ln19834_2_fu_736_p1 = add_ln19834_1_fu_730_p2;
assign zext_ln19834_fu_479_p1 = tmp_s_fu_469_p4;
assign zext_ln19836_1_fu_611_p1 = lshr_ln_reg_839;
assign zext_ln19836_2_fu_640_p1 = tmp_92_fu_624_p3;
assign zext_ln19836_3_fu_698_p1 = lshr_ln16_reg_856;
assign zext_ln19836_4_fu_766_p1 = add_ln19836_1_reg_881;
assign zext_ln19836_5_fu_761_p1 = add_ln19836_2_fu_755_p2;
assign zext_ln19836_fu_601_p1 = tmp_fu_594_p3;
endmodule 