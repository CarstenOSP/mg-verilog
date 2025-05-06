
module forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7237_address0,v7237_ce0,v7237_we0,v7237_d0,v7237_1_address0,v7237_1_ce0,v7237_1_we0,v7237_1_d0,v7230,v13723_0_address0,v13723_0_ce0,v13723_0_q0,v13723_1_address0,v13723_1_ce0,v13723_1_q0,v13723_2_address0,v13723_2_ce0,v13723_2_q0,v13723_3_address0,v13723_3_ce0,v13723_3_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v7237_address0;
output   v7237_ce0;
output   v7237_we0;
output  [7:0] v7237_d0;
output  [10:0] v7237_1_address0;
output   v7237_1_ce0;
output   v7237_1_we0;
output  [7:0] v7237_1_d0;
input  [6:0] v7230;
output  [16:0] v13723_0_address0;
output   v13723_0_ce0;
input  [7:0] v13723_0_q0;
output  [16:0] v13723_1_address0;
output   v13723_1_ce0;
input  [7:0] v13723_1_q0;
output  [16:0] v13723_2_address0;
output   v13723_2_ce0;
input  [7:0] v13723_2_q0;
output  [16:0] v13723_3_address0;
output   v13723_3_ce0;
input  [7:0] v13723_3_q0;
output  [4:0] ap_return;
reg ap_idle;
reg[4:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9108_fu_538_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] empty_fu_260_p1;
reg   [4:0] empty_reg_814;
reg   [4:0] empty_reg_814_pp0_iter1_reg;
reg   [4:0] empty_reg_814_pp0_iter2_reg;
wire   [7:0] mul_i37_i_i_fu_274_p3;
reg   [7:0] mul_i37_i_i_reg_818;
wire   [6:0] tmp_i_fu_306_p4;
reg   [6:0] tmp_i_reg_823;
wire   [2:0] select_ln9140_fu_320_p3;
reg   [2:0] select_ln9140_reg_828;
reg   [2:0] select_ln9140_reg_828_pp0_iter1_reg;
wire   [0:0] tmp_2_fu_328_p3;
reg   [0:0] tmp_2_reg_833;
reg   [0:0] tmp_2_reg_833_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_833_pp0_iter2_reg;
wire   [5:0] select_ln9108_1_fu_426_p3;
reg   [5:0] select_ln9108_1_reg_839;
wire   [4:0] select_ln9109_fu_454_p3;
reg   [4:0] select_ln9109_reg_846;
reg   [1:0] lshr_ln_i_reg_852;
reg   [1:0] lshr_ln_i_reg_852_pp0_iter1_reg;
reg   [2:0] lshr_ln1_i_reg_858;
reg   [2:0] lshr_ln1_i_reg_858_pp0_iter1_reg;
wire   [0:0] icmp_ln9110_fu_526_p2;
reg   [0:0] icmp_ln9110_reg_863;
wire   [0:0] icmp_ln9109_fu_532_p2;
reg   [0:0] icmp_ln9109_reg_868;
reg   [0:0] icmp_ln9108_reg_873;
wire   [16:0] sub_ln9111_fu_706_p2;
reg   [16:0] sub_ln9111_reg_877;
wire   [10:0] add_ln9115_2_fu_715_p2;
reg   [10:0] add_ln9115_2_reg_883;
reg   [10:0] add_ln9115_2_reg_883_pp0_iter2_reg;
reg   [0:0] ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4;
wire   [63:0] zext_ln9113_5_fu_738_p1;
wire   [63:0] zext_ln9115_6_fu_752_p1;
wire   [63:0] zext_ln9115_4_fu_758_p1;
reg   [10:0] indvar_flatten1233_i_fu_132;
wire   [10:0] add_ln9108_1_fu_520_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1233_i_load;
reg   [5:0] v722034_i_fu_136;
reg   [5:0] ap_sig_allocacmp_v722034_i_load;
reg   [6:0] indvar_flatten35_i_fu_140;
wire   [6:0] select_ln9109_1_fu_512_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten35_i_load;
reg   [4:0] v722136_i_fu_144;
reg   [4:0] ap_sig_allocacmp_v722136_i_load;
reg   [2:0] v722237_i_fu_148;
wire   [2:0] add_ln9110_fu_500_p2;
reg   [2:0] ap_sig_allocacmp_v722237_i_load;
reg    v13723_0_ce0_local;
reg    v13723_1_ce0_local;
reg    v13723_2_ce0_local;
reg    v13723_3_ce0_local;
reg    v7237_1_we0_local;
wire   [7:0] select_ln9113_fu_763_p3;
reg    v7237_1_ce0_local;
reg    v7237_we0_local;
wire   [7:0] select_ln9115_fu_771_p3;
reg    v7237_ce0_local;
wire   [2:0] tmp_1_i_fu_264_p4;
wire   [7:0] v7230_cast3_fu_256_p1;
wire   [0:0] tmp_fu_282_p3;
wire   [4:0] empty_129_fu_298_p3;
wire   [0:0] tmp_1_fu_290_p3;
wire   [0:0] empty_130_fu_316_p1;
wire   [1:0] empty_131_fu_336_p3;
wire   [2:0] thr_add1_i_i_fu_344_p3;
wire  signed [3:0] thr_add1_cast9_cast_i_cast_cast_i_cast_fu_352_p1;
wire   [0:0] xor_ln9108_fu_414_p2;
wire   [5:0] add_ln9108_fu_400_p2;
wire   [4:0] select_ln9108_fu_406_p3;
wire   [0:0] and_ln9108_fu_420_p2;
wire   [0:0] empty_132_fu_440_p2;
wire   [4:0] add_ln9109_fu_434_p2;
wire   [2:0] v7222_mid2_i_fu_446_p3;
wire   [3:0] shl_ln_i_fu_472_p3;
wire   [4:0] zext_ln9114_fu_480_p1;
wire   [4:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_356_p1;
wire   [4:0] add_ln9114_fu_484_p2;
wire   [6:0] add_ln9109_1_fu_506_p2;
wire   [9:0] tmp_3_fu_572_p3;
wire   [7:0] tmp_4_fu_583_p3;
wire   [10:0] zext_ln9115_fu_579_p1;
wire   [10:0] zext_ln9115_1_fu_590_p1;
wire   [7:0] zext_ln9108_fu_569_p1;
wire   [7:0] empty_133_fu_600_p2;
wire   [13:0] tmp_5_fu_605_p3;
wire   [11:0] tmp_6_fu_617_p3;
wire   [14:0] zext_ln9113_fu_613_p1;
wire   [14:0] zext_ln9113_1_fu_625_p1;
wire   [10:0] add_ln9115_fu_594_p2;
wire   [10:0] zext_ln9115_2_fu_635_p1;
wire   [10:0] add_ln9115_1_fu_638_p2;
wire   [10:0] shl_ln9115_fu_644_p2;
wire   [5:0] tmp_5_i_fu_656_p3;
wire   [6:0] p_cast8_i_i_i_fu_663_p1;
wire   [6:0] empty_134_fu_667_p2;
wire   [14:0] add_ln9113_fu_629_p2;
wire   [14:0] zext_ln9113_2_fu_672_p1;
wire   [14:0] add_ln9113_1_fu_676_p2;
wire   [13:0] trunc_ln9113_fu_682_p1;
wire   [15:0] tmp_7_fu_686_p3;
wire   [16:0] tmp_8_fu_694_p3;
wire   [16:0] zext_ln9113_3_fu_702_p1;
wire   [10:0] sub_ln9115_fu_650_p2;
wire   [10:0] zext_ln9115_3_fu_712_p1;
wire   [2:0] zext_ln9110_fu_721_p1;
wire   [2:0] add_ln9113_2_fu_724_p2;
wire   [16:0] zext_ln9113_4_fu_729_p1;
wire   [16:0] add_ln9113_3_fu_733_p2;
wire   [16:0] zext_ln9115_5_fu_744_p1;
wire   [16:0] add_ln9115_3_fu_747_p2;
reg   [4:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_578;
reg    ap_condition_112;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_i_fu_132 = 11'd0;
#0 v722034_i_fu_136 = 6'd0;
#0 indvar_flatten35_i_fu_140 = 7'd0;
#0 v722136_i_fu_144 = 5'd0;
#0 v722237_i_fu_148 = 3'd0;
#0 ap_return_preg = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 5'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= empty_reg_814_pp0_iter2_reg;
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
    if ((1'b1 == ap_condition_112)) begin
        indvar_flatten1233_i_fu_132 <= add_ln9108_1_fu_520_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    indvar_flatten35_i_fu_140 <= select_ln9109_1_fu_512_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v722034_i_fu_136 <= select_ln9108_1_fu_426_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v722136_i_fu_144 <= select_ln9109_fu_454_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_112)) begin
    v722237_i_fu_148 <= add_ln9110_fu_500_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9115_2_reg_883 <= add_ln9115_2_fu_715_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_814_pp0_iter1_reg <= empty_reg_814;
        icmp_ln9108_reg_873 <= icmp_ln9108_fu_538_p2;
        lshr_ln1_i_reg_858 <= {{add_ln9114_fu_484_p2[4:2]}};
        lshr_ln1_i_reg_858_pp0_iter1_reg <= lshr_ln1_i_reg_858;
        lshr_ln_i_reg_852 <= {{v7222_mid2_i_fu_446_p3[2:1]}};
        lshr_ln_i_reg_852_pp0_iter1_reg <= lshr_ln_i_reg_852;
        mul_i37_i_i_reg_818[7 : 5] <= mul_i37_i_i_fu_274_p3[7 : 5];
        select_ln9108_1_reg_839 <= select_ln9108_1_fu_426_p3;
        select_ln9109_reg_846 <= select_ln9109_fu_454_p3;
        select_ln9140_reg_828[1 : 0] <= select_ln9140_fu_320_p3[1 : 0];
        select_ln9140_reg_828_pp0_iter1_reg[1 : 0] <= select_ln9140_reg_828[1 : 0];
        sub_ln9111_reg_877[16 : 1] <= sub_ln9111_fu_706_p2[16 : 1];
        tmp_2_reg_833 <= v7230_cast3_fu_256_p1[32'd5];
        tmp_2_reg_833_pp0_iter1_reg <= tmp_2_reg_833;
        tmp_i_reg_823[0] <= tmp_i_fu_306_p4[0];
tmp_i_reg_823[3] <= tmp_i_fu_306_p4[3];
tmp_i_reg_823[5] <= tmp_i_fu_306_p4[5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln9115_2_reg_883_pp0_iter2_reg <= add_ln9115_2_reg_883;
        empty_reg_814_pp0_iter2_reg <= empty_reg_814_pp0_iter1_reg;
        tmp_2_reg_833_pp0_iter2_reg <= tmp_2_reg_833_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_814 <= empty_fu_260_p1;
        icmp_ln9109_reg_868 <= icmp_ln9109_fu_532_p2;
        icmp_ln9110_reg_863 <= icmp_ln9110_fu_526_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9108_fu_538_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_578)) begin
            ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 = icmp_ln9109_reg_868;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 = icmp_ln9109_reg_868;
        end
    end else begin
        ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 = icmp_ln9109_reg_868;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_578)) begin
            ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4 = icmp_ln9110_reg_863;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4 = icmp_ln9110_reg_863;
        end
    end else begin
        ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4 = icmp_ln9110_reg_863;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = empty_reg_814_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = indvar_flatten1233_i_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_i_load = indvar_flatten35_i_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v722034_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v722034_i_load = v722034_i_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v722136_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v722136_i_load = v722136_i_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v722237_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v722237_i_load = v722237_i_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13723_0_ce0_local = 1'b1;
    end else begin
        v13723_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13723_1_ce0_local = 1'b1;
    end else begin
        v13723_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13723_2_ce0_local = 1'b1;
    end else begin
        v13723_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13723_3_ce0_local = 1'b1;
    end else begin
        v13723_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7237_1_ce0_local = 1'b1;
    end else begin
        v7237_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7237_1_we0_local = 1'b1;
    end else begin
        v7237_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7237_ce0_local = 1'b1;
    end else begin
        v7237_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7237_we0_local = 1'b1;
    end else begin
        v7237_we0_local = 1'b0;
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
assign add_ln9108_1_fu_520_p2 = (ap_sig_allocacmp_indvar_flatten1233_i_load + 11'd1);
assign add_ln9108_fu_400_p2 = (ap_sig_allocacmp_v722034_i_load + 6'd1);
assign add_ln9109_1_fu_506_p2 = (ap_sig_allocacmp_indvar_flatten35_i_load + 7'd1);
assign add_ln9109_fu_434_p2 = (select_ln9108_fu_406_p3 + 5'd1);
assign add_ln9110_fu_500_p2 = (v7222_mid2_i_fu_446_p3 + 3'd2);
assign add_ln9113_1_fu_676_p2 = (add_ln9113_fu_629_p2 + zext_ln9113_2_fu_672_p1);
assign add_ln9113_2_fu_724_p2 = (zext_ln9110_fu_721_p1 + select_ln9140_reg_828_pp0_iter1_reg);
assign add_ln9113_3_fu_733_p2 = (sub_ln9111_reg_877 + zext_ln9113_4_fu_729_p1);
assign add_ln9113_fu_629_p2 = (zext_ln9113_fu_613_p1 + zext_ln9113_1_fu_625_p1);
assign add_ln9114_fu_484_p2 = (zext_ln9114_fu_480_p1 + thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_356_p1);
assign add_ln9115_1_fu_638_p2 = (add_ln9115_fu_594_p2 + zext_ln9115_2_fu_635_p1);
assign add_ln9115_2_fu_715_p2 = (sub_ln9115_fu_650_p2 + zext_ln9115_3_fu_712_p1);
assign add_ln9115_3_fu_747_p2 = (sub_ln9111_reg_877 + zext_ln9115_5_fu_744_p1);
assign add_ln9115_fu_594_p2 = (zext_ln9115_fu_579_p1 + zext_ln9115_1_fu_590_p1);
assign and_ln9108_fu_420_p2 = (xor_ln9108_fu_414_p2 & ap_phi_mux_icmp_ln911038_i_phi_fu_249_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_112 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_578 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9108_reg_873 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_129_fu_298_p3 = ((tmp_fu_282_p3[0:0] == 1'b1) ? 5'd20 : 5'd0);
assign empty_130_fu_316_p1 = v7230[0:0];
assign empty_131_fu_336_p3 = ((empty_130_fu_316_p1[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign empty_132_fu_440_p2 = (ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 | and_ln9108_fu_420_p2);
assign empty_133_fu_600_p2 = (mul_i37_i_i_reg_818 + zext_ln9108_fu_569_p1);
assign empty_134_fu_667_p2 = (tmp_i_reg_823 + p_cast8_i_i_i_fu_663_p1);
assign empty_fu_260_p1 = v7230[4:0];
assign icmp_ln9108_fu_538_p2 = ((ap_sig_allocacmp_indvar_flatten1233_i_load == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln9109_fu_532_p2 = ((select_ln9109_1_fu_512_p3 == 7'd60) ? 1'b1 : 1'b0);
assign icmp_ln9110_fu_526_p2 = ((add_ln9110_fu_500_p2 == 3'd6) ? 1'b1 : 1'b0);
assign mul_i37_i_i_fu_274_p3 = {{tmp_1_i_fu_264_p4}, {5'd0}};
assign p_cast8_i_i_i_fu_663_p1 = tmp_5_i_fu_656_p3;
assign select_ln9108_1_fu_426_p3 = ((ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4[0:0] == 1'b1) ? add_ln9108_fu_400_p2 : ap_sig_allocacmp_v722034_i_load);
assign select_ln9108_fu_406_p3 = ((ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v722136_i_load);
assign select_ln9109_1_fu_512_p3 = ((ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4[0:0] == 1'b1) ? 7'd1 : add_ln9109_1_fu_506_p2);
assign select_ln9109_fu_454_p3 = ((and_ln9108_fu_420_p2[0:0] == 1'b1) ? add_ln9109_fu_434_p2 : select_ln9108_fu_406_p3);
assign select_ln9113_fu_763_p3 = ((tmp_2_reg_833_pp0_iter2_reg[0:0] == 1'b1) ? v13723_1_q0 : v13723_0_q0);
assign select_ln9115_fu_771_p3 = ((tmp_2_reg_833_pp0_iter2_reg[0:0] == 1'b1) ? v13723_3_q0 : v13723_2_q0);
assign select_ln9140_fu_320_p3 = ((empty_130_fu_316_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign shl_ln9115_fu_644_p2 = add_ln9115_1_fu_638_p2 << 11'd2;
assign shl_ln_i_fu_472_p3 = {{v7222_mid2_i_fu_446_p3}, {1'd0}};
assign sub_ln9111_fu_706_p2 = (tmp_8_fu_694_p3 - zext_ln9113_3_fu_702_p1);
assign sub_ln9115_fu_650_p2 = (shl_ln9115_fu_644_p2 - add_ln9115_1_fu_638_p2);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_356_p1 = $unsigned(thr_add1_cast9_cast_i_cast_cast_i_cast_fu_352_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_fu_352_p1 = $signed(thr_add1_i_i_fu_344_p3);
assign thr_add1_i_i_fu_344_p3 = {{empty_131_fu_336_p3}, {tmp_2_fu_328_p3}};
assign tmp_1_fu_290_p3 = v7230_cast3_fu_256_p1[32'd6];
assign tmp_1_i_fu_264_p4 = {{v7230[4:2]}};
assign tmp_2_fu_328_p3 = v7230_cast3_fu_256_p1[32'd5];
assign tmp_3_fu_572_p3 = {{select_ln9108_1_reg_839}, {4'd0}};
assign tmp_4_fu_583_p3 = {{select_ln9108_1_reg_839}, {2'd0}};
assign tmp_5_fu_605_p3 = {{empty_133_fu_600_p2}, {6'd0}};
assign tmp_5_i_fu_656_p3 = {{select_ln9109_reg_846}, {1'd0}};
assign tmp_6_fu_617_p3 = {{empty_133_fu_600_p2}, {4'd0}};
assign tmp_7_fu_686_p3 = {{add_ln9113_1_fu_676_p2}, {1'd0}};
assign tmp_8_fu_694_p3 = {{trunc_ln9113_fu_682_p1}, {3'd0}};
assign tmp_fu_282_p3 = v7230_cast3_fu_256_p1[32'd1];
assign tmp_i_fu_306_p4 = {{{{1'd0}, {empty_129_fu_298_p3}}}, {tmp_1_fu_290_p3}};
assign trunc_ln9113_fu_682_p1 = add_ln9113_1_fu_676_p2[13:0];
assign v13723_0_address0 = zext_ln9113_5_fu_738_p1;
assign v13723_0_ce0 = v13723_0_ce0_local;
assign v13723_1_address0 = zext_ln9113_5_fu_738_p1;
assign v13723_1_ce0 = v13723_1_ce0_local;
assign v13723_2_address0 = zext_ln9115_6_fu_752_p1;
assign v13723_2_ce0 = v13723_2_ce0_local;
assign v13723_3_address0 = zext_ln9115_6_fu_752_p1;
assign v13723_3_ce0 = v13723_3_ce0_local;
assign v7222_mid2_i_fu_446_p3 = ((empty_132_fu_440_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v722237_i_load);
assign v7230_cast3_fu_256_p1 = v7230;
assign v7237_1_address0 = zext_ln9115_4_fu_758_p1;
assign v7237_1_ce0 = v7237_1_ce0_local;
assign v7237_1_d0 = select_ln9113_fu_763_p3;
assign v7237_1_we0 = v7237_1_we0_local;
assign v7237_address0 = zext_ln9115_4_fu_758_p1;
assign v7237_ce0 = v7237_ce0_local;
assign v7237_d0 = select_ln9115_fu_771_p3;
assign v7237_we0 = v7237_we0_local;
assign xor_ln9108_fu_414_p2 = (ap_phi_mux_icmp_ln910939_i_phi_fu_239_p4 ^ 1'd1);
assign zext_ln9108_fu_569_p1 = select_ln9108_1_reg_839;
assign zext_ln9110_fu_721_p1 = lshr_ln_i_reg_852_pp0_iter1_reg;
assign zext_ln9113_1_fu_625_p1 = tmp_6_fu_617_p3;
assign zext_ln9113_2_fu_672_p1 = empty_134_fu_667_p2;
assign zext_ln9113_3_fu_702_p1 = tmp_7_fu_686_p3;
assign zext_ln9113_4_fu_729_p1 = add_ln9113_2_fu_724_p2;
assign zext_ln9113_5_fu_738_p1 = add_ln9113_3_fu_733_p2;
assign zext_ln9113_fu_613_p1 = tmp_5_fu_605_p3;
assign zext_ln9114_fu_480_p1 = shl_ln_i_fu_472_p3;
assign zext_ln9115_1_fu_590_p1 = tmp_4_fu_583_p3;
assign zext_ln9115_2_fu_635_p1 = select_ln9109_reg_846;
assign zext_ln9115_3_fu_712_p1 = lshr_ln_i_reg_852;
assign zext_ln9115_4_fu_758_p1 = add_ln9115_2_reg_883_pp0_iter2_reg;
assign zext_ln9115_5_fu_744_p1 = lshr_ln1_i_reg_858_pp0_iter1_reg;
assign zext_ln9115_6_fu_752_p1 = add_ln9115_3_fu_747_p2;
assign zext_ln9115_fu_579_p1 = tmp_3_fu_572_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_818[4:0] <= 5'b00000;
    tmp_i_reg_823[2:1] <= 2'b00;
    tmp_i_reg_823[4:4] <= 1'b0;
    tmp_i_reg_823[6] <= 1'b0;
    select_ln9140_reg_828[2] <= 1'b0;
    select_ln9140_reg_828_pp0_iter1_reg[2] <= 1'b0;
    sub_ln9111_reg_877[0] <= 1'b0;
end
endmodule 
