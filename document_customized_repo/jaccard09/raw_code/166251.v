module forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,rem4,tmp,v9713_address0,v9713_ce0,v9713_we0,v9713_d0,v9713_1_address0,v9713_1_ce0,v9713_1_we0,v9713_1_d0,select_ln12502,v13711_0_address0,v13711_0_ce0,v13711_0_q0,v13711_1_address0,v13711_1_ce0,v13711_1_q0,empty,thr_add1_cast5_cast_cast_cast,v13711_2_address0,v13711_2_ce0,v13711_2_q0,v13711_3_address0,v13711_3_ce0,v13711_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] rem4;
input  [8:0] tmp;
output  [13:0] v9713_address0;
output   v9713_ce0;
output   v9713_we0;
output  [7:0] v9713_d0;
output  [13:0] v9713_1_address0;
output   v9713_1_ce0;
output   v9713_1_we0;
output  [7:0] v9713_1_d0;
input  [2:0] select_ln12502;
output  [18:0] v13711_0_address0;
output   v13711_0_ce0;
input  [7:0] v13711_0_q0;
output  [18:0] v13711_1_address0;
output   v13711_1_ce0;
input  [7:0] v13711_1_q0;
input  [0:0] empty;
input  [4:0] thr_add1_cast5_cast_cast_cast;
output  [18:0] v13711_2_address0;
output   v13711_2_ce0;
input  [7:0] v13711_2_q0;
output  [18:0] v13711_3_address0;
output   v13711_3_ce0;
input  [7:0] v13711_3_q0;
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
wire   [0:0] icmp_ln12470_fu_467_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1247139_reg_256;
reg   [0:0] icmp_ln1247238_reg_267;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] thr_add1_cast5_cast_cast_cast_cast_cast_fu_282_p1;
reg   [6:0] thr_add1_cast5_cast_cast_cast_cast_cast_reg_750;
wire   [4:0] select_ln12502_cast_cast_fu_290_p1;
reg   [4:0] select_ln12502_cast_cast_reg_755;
wire   [5:0] v9696_fu_362_p3;
reg   [5:0] v9696_reg_760;
reg   [5:0] v9696_reg_760_pp0_iter2_reg;
wire   [5:0] v9697_fu_384_p3;
reg   [5:0] v9697_reg_766;
reg   [5:0] v9697_reg_766_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_772;
reg   [3:0] lshr_ln_reg_772_pp0_iter2_reg;
reg   [4:0] lshr_ln64_reg_778;
reg   [4:0] lshr_ln64_reg_778_pp0_iter2_reg;
wire   [0:0] icmp_ln12472_fu_455_p2;
reg   [0:0] icmp_ln12472_reg_783;
wire   [0:0] icmp_ln12471_fu_461_p2;
reg   [0:0] icmp_ln12471_reg_788;
reg   [0:0] icmp_ln12470_reg_793;
wire   [18:0] sub_ln12473_fu_580_p2;
reg   [18:0] sub_ln12473_reg_797;
wire   [13:0] add_ln12477_1_fu_638_p2;
reg   [13:0] add_ln12477_1_reg_803;
reg   [0:0] ap_phi_mux_icmp_ln1247139_phi_fu_260_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1247238_phi_fu_271_p4;
wire   [63:0] zext_ln12475_5_fu_658_p1;
wire   [63:0] zext_ln12477_4_fu_672_p1;
wire   [63:0] zext_ln12477_2_fu_678_p1;
reg   [13:0] indvar_flatten1233_fu_128;
wire   [13:0] add_ln12470_1_fu_449_p2;
reg   [5:0] v969634_fu_132;
reg   [9:0] indvar_flatten35_fu_136;
wire   [9:0] select_ln12471_1_fu_441_p3;
reg   [5:0] v969736_fu_140;
reg   [4:0] v969837_fu_144;
wire   [4:0] v9698_fu_429_p2;
reg    v13711_0_ce0_local;
reg    v13711_1_ce0_local;
reg    v13711_2_ce0_local;
reg    v13711_3_ce0_local;
reg    v9713_1_we0_local;
wire   [7:0] select_ln12475_fu_683_p3;
reg    v9713_1_ce0_local;
reg    v9713_we0_local;
wire   [7:0] select_ln12477_fu_691_p3;
reg    v9713_ce0_local;
wire  signed [5:0] thr_add1_cast5_cast_cast_cast_cast_fu_278_p1;
wire  signed [3:0] select_ln12502_cast_fu_286_p1;
wire   [5:0] add_ln12470_fu_334_p2;
wire   [5:0] select_ln12470_fu_340_p3;
wire   [0:0] or_ln12470_fu_356_p2;
wire   [4:0] select_ln12470_1_fu_348_p3;
wire   [5:0] add_ln12471_fu_370_p2;
wire   [4:0] v9698_mid2_fu_376_p3;
wire   [5:0] shl_ln_fu_402_p3;
wire   [6:0] zext_ln12476_fu_410_p1;
wire   [6:0] add_ln12476_fu_414_p2;
wire   [9:0] add_ln12471_1_fu_435_p2;
wire   [5:0] empty_396_fu_498_p2;
wire   [13:0] tmp_507_fu_502_p3;
wire   [11:0] tmp_508_fu_514_p3;
wire   [14:0] zext_ln12475_fu_510_p1;
wire   [14:0] zext_ln12475_1_fu_522_p1;
wire   [5:0] empty_397_fu_532_p2;
wire   [8:0] p_cast4_i_fu_537_p1;
wire   [8:0] empty_398_fu_541_p2;
wire   [14:0] add_ln12475_3_fu_526_p2;
wire   [14:0] zext_ln12475_2_fu_546_p1;
wire   [14:0] add_ln12475_1_fu_550_p2;
wire   [13:0] trunc_ln12475_fu_556_p1;
wire   [17:0] tmp_511_fu_560_p3;
wire   [18:0] tmp_512_fu_568_p3;
wire   [18:0] zext_ln12475_3_fu_576_p1;
wire   [10:0] tmp_s_fu_586_p3;
wire   [11:0] tmp_421_cast_fu_593_p1;
wire   [11:0] zext_ln12477_fu_597_p1;
wire   [11:0] add_ln12477_fu_600_p2;
wire   [9:0] trunc_ln12477_fu_606_p1;
wire   [13:0] tmp_510_fu_618_p3;
wire   [13:0] tmp_509_fu_610_p3;
wire   [13:0] sub_ln12477_fu_626_p2;
wire   [13:0] zext_ln12477_1_fu_635_p1;
wire   [4:0] zext_ln12472_fu_632_p1;
wire   [4:0] add_ln12475_fu_644_p2;
wire   [18:0] zext_ln12475_4_fu_649_p1;
wire   [18:0] add_ln12475_2_fu_653_p2;
wire   [18:0] zext_ln12477_3_fu_664_p1;
wire   [18:0] add_ln12477_2_fu_667_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 indvar_flatten1233_fu_128 = 14'd0;
#0 v969634_fu_132 = 6'd0;
#0 indvar_flatten35_fu_136 = 10'd0;
#0 v969736_fu_140 = 6'd0;
#0 v969837_fu_144 = 5'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12470_reg_793 == 1'd0))) begin
        icmp_ln1247139_reg_256 <= icmp_ln12471_reg_788;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1247139_reg_256 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12470_reg_793 == 1'd0))) begin
        icmp_ln1247238_reg_267 <= icmp_ln12472_reg_783;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1247238_reg_267 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1233_fu_128 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1233_fu_128 <= add_ln12470_1_fu_449_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_136 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten35_fu_136 <= select_ln12471_1_fu_441_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v969634_fu_132 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v969634_fu_132 <= v9696_fu_362_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v969736_fu_140 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v969736_fu_140 <= v9697_fu_384_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v969837_fu_144 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v969837_fu_144 <= v9698_fu_429_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12477_1_reg_803 <= add_ln12477_1_fu_638_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln64_reg_778_pp0_iter2_reg <= lshr_ln64_reg_778;
        lshr_ln_reg_772_pp0_iter2_reg <= lshr_ln_reg_772;
        sub_ln12473_reg_797[18 : 3] <= sub_ln12473_fu_580_p2[18 : 3];
        v9696_reg_760_pp0_iter2_reg <= v9696_reg_760;
        v9697_reg_766_pp0_iter2_reg <= v9697_reg_766;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln12470_reg_793 <= icmp_ln12470_fu_467_p2;
        lshr_ln64_reg_778 <= {{add_ln12476_fu_414_p2[6:2]}};
        lshr_ln_reg_772 <= {{v9698_mid2_fu_376_p3[4:1]}};
        select_ln12502_cast_cast_reg_755[3 : 0] <= select_ln12502_cast_cast_fu_290_p1[3 : 0];
        thr_add1_cast5_cast_cast_cast_cast_cast_reg_750[5 : 0] <= thr_add1_cast5_cast_cast_cast_cast_cast_fu_282_p1[5 : 0];
        v9696_reg_760 <= v9696_fu_362_p3;
        v9697_reg_766 <= v9697_fu_384_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12471_reg_788 <= icmp_ln12471_fu_461_p2;
        icmp_ln12472_reg_783 <= icmp_ln12472_fu_455_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12470_fu_467_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12470_reg_793 == 1'd0))) begin
        ap_phi_mux_icmp_ln1247139_phi_fu_260_p4 = icmp_ln12471_reg_788;
    end else begin
        ap_phi_mux_icmp_ln1247139_phi_fu_260_p4 = icmp_ln1247139_reg_256;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln12470_reg_793 == 1'd0))) begin
        ap_phi_mux_icmp_ln1247238_phi_fu_271_p4 = icmp_ln12472_reg_783;
    end else begin
        ap_phi_mux_icmp_ln1247238_phi_fu_271_p4 = icmp_ln1247238_reg_267;
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
        v13711_0_ce0_local = 1'b1;
    end else begin
        v13711_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13711_1_ce0_local = 1'b1;
    end else begin
        v13711_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13711_2_ce0_local = 1'b1;
    end else begin
        v13711_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13711_3_ce0_local = 1'b1;
    end else begin
        v13711_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9713_1_ce0_local = 1'b1;
    end else begin
        v9713_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9713_1_we0_local = 1'b1;
    end else begin
        v9713_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9713_ce0_local = 1'b1;
    end else begin
        v9713_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9713_we0_local = 1'b1;
    end else begin
        v9713_we0_local = 1'b0;
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
assign add_ln12470_1_fu_449_p2 = (indvar_flatten1233_fu_128 + 14'd1);
assign add_ln12470_fu_334_p2 = (v969634_fu_132 + 6'd1);
assign add_ln12471_1_fu_435_p2 = (indvar_flatten35_fu_136 + 10'd1);
assign add_ln12471_fu_370_p2 = (select_ln12470_fu_340_p3 + 6'd1);
assign add_ln12475_1_fu_550_p2 = (add_ln12475_3_fu_526_p2 + zext_ln12475_2_fu_546_p1);
assign add_ln12475_2_fu_653_p2 = (sub_ln12473_reg_797 + zext_ln12475_4_fu_649_p1);
assign add_ln12475_3_fu_526_p2 = (zext_ln12475_fu_510_p1 + zext_ln12475_1_fu_522_p1);
assign add_ln12475_fu_644_p2 = (zext_ln12472_fu_632_p1 + select_ln12502_cast_cast_reg_755);
assign add_ln12476_fu_414_p2 = (zext_ln12476_fu_410_p1 + thr_add1_cast5_cast_cast_cast_cast_cast_reg_750);
assign add_ln12477_1_fu_638_p2 = (sub_ln12477_fu_626_p2 + zext_ln12477_1_fu_635_p1);
assign add_ln12477_2_fu_667_p2 = (sub_ln12473_reg_797 + zext_ln12477_3_fu_664_p1);
assign add_ln12477_fu_600_p2 = (tmp_421_cast_fu_593_p1 + zext_ln12477_fu_597_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_396_fu_498_p2 = (v9696_reg_760 + rem4);
assign empty_397_fu_532_p2 = v9697_reg_766 << 6'd1;
assign empty_398_fu_541_p2 = (tmp + p_cast4_i_fu_537_p1);
assign icmp_ln12470_fu_467_p2 = ((indvar_flatten1233_fu_128 == 14'd12287) ? 1'b1 : 1'b0);
assign icmp_ln12471_fu_461_p2 = ((select_ln12471_1_fu_441_p3 == 10'd384) ? 1'b1 : 1'b0);
assign icmp_ln12472_fu_455_p2 = ((v9698_fu_429_p2 < 5'd24) ? 1'b1 : 1'b0);
assign or_ln12470_fu_356_p2 = (ap_phi_mux_icmp_ln1247238_phi_fu_271_p4 | ap_phi_mux_icmp_ln1247139_phi_fu_260_p4);
assign p_cast4_i_fu_537_p1 = empty_397_fu_532_p2;
assign select_ln12470_1_fu_348_p3 = ((ap_phi_mux_icmp_ln1247139_phi_fu_260_p4[0:0] == 1'b1) ? 5'd0 : v969837_fu_144);
assign select_ln12470_fu_340_p3 = ((ap_phi_mux_icmp_ln1247139_phi_fu_260_p4[0:0] == 1'b1) ? 6'd0 : v969736_fu_140);
assign select_ln12471_1_fu_441_p3 = ((ap_phi_mux_icmp_ln1247139_phi_fu_260_p4[0:0] == 1'b1) ? 10'd1 : add_ln12471_1_fu_435_p2);
assign select_ln12475_fu_683_p3 = ((empty[0:0] == 1'b1) ? v13711_1_q0 : v13711_0_q0);
assign select_ln12477_fu_691_p3 = ((empty[0:0] == 1'b1) ? v13711_3_q0 : v13711_2_q0);
assign select_ln12502_cast_cast_fu_290_p1 = $unsigned(select_ln12502_cast_fu_286_p1);
assign select_ln12502_cast_fu_286_p1 = $signed(select_ln12502);
assign shl_ln_fu_402_p3 = {{v9698_mid2_fu_376_p3}, {1'd0}};
assign sub_ln12473_fu_580_p2 = (tmp_512_fu_568_p3 - zext_ln12475_3_fu_576_p1);
assign sub_ln12477_fu_626_p2 = (tmp_510_fu_618_p3 - tmp_509_fu_610_p3);
assign thr_add1_cast5_cast_cast_cast_cast_cast_fu_282_p1 = $unsigned(thr_add1_cast5_cast_cast_cast_cast_fu_278_p1);
assign thr_add1_cast5_cast_cast_cast_cast_fu_278_p1 = $signed(thr_add1_cast5_cast_cast_cast);
assign tmp_421_cast_fu_593_p1 = tmp_s_fu_586_p3;
assign tmp_507_fu_502_p3 = {{empty_396_fu_498_p2}, {8'd0}};
assign tmp_508_fu_514_p3 = {{empty_396_fu_498_p2}, {6'd0}};
assign tmp_509_fu_610_p3 = {{add_ln12477_fu_600_p2}, {2'd0}};
assign tmp_510_fu_618_p3 = {{trunc_ln12477_fu_606_p1}, {4'd0}};
assign tmp_511_fu_560_p3 = {{add_ln12475_1_fu_550_p2}, {3'd0}};
assign tmp_512_fu_568_p3 = {{trunc_ln12475_fu_556_p1}, {5'd0}};
assign tmp_s_fu_586_p3 = {{v9696_reg_760_pp0_iter2_reg}, {5'd0}};
assign trunc_ln12475_fu_556_p1 = add_ln12475_1_fu_550_p2[13:0];
assign trunc_ln12477_fu_606_p1 = add_ln12477_fu_600_p2[9:0];
assign v13711_0_address0 = zext_ln12475_5_fu_658_p1;
assign v13711_0_ce0 = v13711_0_ce0_local;
assign v13711_1_address0 = zext_ln12475_5_fu_658_p1;
assign v13711_1_ce0 = v13711_1_ce0_local;
assign v13711_2_address0 = zext_ln12477_4_fu_672_p1;
assign v13711_2_ce0 = v13711_2_ce0_local;
assign v13711_3_address0 = zext_ln12477_4_fu_672_p1;
assign v13711_3_ce0 = v13711_3_ce0_local;
assign v9696_fu_362_p3 = ((ap_phi_mux_icmp_ln1247139_phi_fu_260_p4[0:0] == 1'b1) ? add_ln12470_fu_334_p2 : v969634_fu_132);
assign v9697_fu_384_p3 = ((or_ln12470_fu_356_p2[0:0] == 1'b1) ? select_ln12470_fu_340_p3 : add_ln12471_fu_370_p2);
assign v9698_fu_429_p2 = (v9698_mid2_fu_376_p3 + 5'd2);
assign v9698_mid2_fu_376_p3 = ((or_ln12470_fu_356_p2[0:0] == 1'b1) ? select_ln12470_1_fu_348_p3 : 5'd0);
assign v9713_1_address0 = zext_ln12477_2_fu_678_p1;
assign v9713_1_ce0 = v9713_1_ce0_local;
assign v9713_1_d0 = select_ln12475_fu_683_p3;
assign v9713_1_we0 = v9713_1_we0_local;
assign v9713_address0 = zext_ln12477_2_fu_678_p1;
assign v9713_ce0 = v9713_ce0_local;
assign v9713_d0 = select_ln12477_fu_691_p3;
assign v9713_we0 = v9713_we0_local;
assign zext_ln12472_fu_632_p1 = lshr_ln_reg_772_pp0_iter2_reg;
assign zext_ln12475_1_fu_522_p1 = tmp_508_fu_514_p3;
assign zext_ln12475_2_fu_546_p1 = empty_398_fu_541_p2;
assign zext_ln12475_3_fu_576_p1 = tmp_511_fu_560_p3;
assign zext_ln12475_4_fu_649_p1 = add_ln12475_fu_644_p2;
assign zext_ln12475_5_fu_658_p1 = add_ln12475_2_fu_653_p2;
assign zext_ln12475_fu_510_p1 = tmp_507_fu_502_p3;
assign zext_ln12476_fu_410_p1 = shl_ln_fu_402_p3;
assign zext_ln12477_1_fu_635_p1 = lshr_ln_reg_772_pp0_iter2_reg;
assign zext_ln12477_2_fu_678_p1 = add_ln12477_1_reg_803;
assign zext_ln12477_3_fu_664_p1 = lshr_ln64_reg_778_pp0_iter2_reg;
assign zext_ln12477_4_fu_672_p1 = add_ln12477_2_fu_667_p2;
assign zext_ln12477_fu_597_p1 = v9697_reg_766_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    thr_add1_cast5_cast_cast_cast_cast_cast_reg_750[6] <= 1'b0;
    select_ln12502_cast_cast_reg_755[4] <= 1'b0;
    sub_ln12473_reg_797[2:0] <= 3'b000;
end
endmodule 