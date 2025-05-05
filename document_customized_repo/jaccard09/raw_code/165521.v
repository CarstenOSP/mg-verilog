module forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8734_address0,v8734_ce0,v8734_we0,v8734_d0,v8734_1_address0,v8734_1_ce0,v8734_1_we0,v8734_1_d0,v8727,v16188_0_address0,v16188_0_ce0,v16188_0_q0,v16188_1_address0,v16188_1_ce0,v16188_1_q0,v16188_2_address0,v16188_2_ce0,v16188_2_q0,v16188_3_address0,v16188_3_ce0,v16188_3_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8734_address0;
output   v8734_ce0;
output   v8734_we0;
output  [7:0] v8734_d0;
output  [11:0] v8734_1_address0;
output   v8734_1_ce0;
output   v8734_1_we0;
output  [7:0] v8734_1_d0;
input  [5:0] v8727;
output  [16:0] v16188_0_address0;
output   v16188_0_ce0;
input  [7:0] v16188_0_q0;
output  [16:0] v16188_1_address0;
output   v16188_1_ce0;
input  [7:0] v16188_1_q0;
output  [16:0] v16188_2_address0;
output   v16188_2_ce0;
input  [7:0] v16188_2_q0;
output  [16:0] v16188_3_address0;
output   v16188_3_ce0;
input  [7:0] v16188_3_q0;
output  [3:0] ap_return;
reg ap_idle;
reg[3:0] ap_return;
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
wire   [0:0] icmp_ln11078_fu_402_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] empty_fu_258_p1;
reg   [3:0] empty_reg_821;
reg   [3:0] empty_reg_821_pp0_iter1_reg;
reg   [3:0] empty_reg_821_pp0_iter2_reg;
wire   [6:0] mul_i37_i_i_fu_272_p3;
reg   [6:0] mul_i37_i_i_reg_825;
wire   [5:0] tmp_i_fu_316_p3;
reg   [5:0] tmp_i_reg_830;
wire   [3:0] select_ln11110_fu_328_p3;
reg   [3:0] select_ln11110_reg_835;
reg   [3:0] select_ln11110_reg_835_pp0_iter1_reg;
wire   [0:0] tmp_647_fu_336_p3;
reg   [0:0] tmp_647_reg_840;
reg   [0:0] tmp_647_reg_840_pp0_iter1_reg;
reg   [0:0] tmp_647_reg_840_pp0_iter2_reg;
wire   [5:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_364_p1;
reg   [5:0] thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846;
reg   [0:0] icmp_ln11078_reg_851;
reg   [0:0] icmp_ln11078_reg_851_pp0_iter1_reg;
wire   [5:0] select_ln11078_2_fu_451_p3;
reg   [5:0] select_ln11078_2_reg_855;
wire   [3:0] select_ln11079_fu_479_p3;
reg   [3:0] select_ln11079_reg_861;
wire   [12:0] add_ln11083_fu_543_p2;
reg   [12:0] add_ln11083_reg_866;
reg   [2:0] lshr_ln_i_reg_872;
reg   [3:0] lshr_ln119_i_reg_878;
wire   [0:0] icmp_ln11080_fu_606_p2;
reg   [0:0] icmp_ln11080_reg_883;
wire   [0:0] icmp_ln11079_fu_612_p2;
reg   [0:0] icmp_ln11079_reg_888;
wire   [11:0] add_ln11085_1_fu_723_p2;
reg   [11:0] add_ln11085_1_reg_893;
reg   [0:0] ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1108038_i_phi_fu_247_p4;
wire   [63:0] zext_ln11083_4_fu_744_p1;
wire   [63:0] zext_ln11085_6_fu_759_p1;
wire   [63:0] zext_ln11085_4_fu_765_p1;
reg   [11:0] indvar_flatten1233_i_fu_128;
wire   [11:0] add_ln11078_1_fu_396_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_i_load;
reg   [5:0] v871734_i_fu_132;
reg   [6:0] indvar_flatten35_i_fu_136;
wire   [6:0] select_ln11079_1_fu_598_p3;
reg   [3:0] v871836_i_fu_140;
reg   [3:0] v871937_i_fu_144;
wire   [3:0] add_ln11080_fu_586_p2;
reg    v16188_0_ce0_local;
reg    v16188_1_ce0_local;
reg    v16188_2_ce0_local;
reg    v16188_3_ce0_local;
reg    v8734_1_we0_local;
wire   [7:0] select_ln11083_fu_770_p3;
reg    v8734_1_ce0_local;
reg    v8734_we0_local;
wire   [7:0] select_ln11085_fu_778_p3;
reg    v8734_ce0_local;
wire   [1:0] tmp_591_i_fu_262_p4;
wire   [6:0] v8727_cast3_fu_254_p1;
wire   [0:0] tmp_fu_280_p3;
wire   [1:0] select_ln11078_fu_296_p3;
wire   [0:0] tmp_646_fu_288_p3;
wire   [2:0] tmp_595_i_fu_304_p3;
wire  signed [4:0] p_cast_i_fu_312_p1;
wire   [0:0] empty_471_fu_324_p1;
wire   [1:0] empty_472_fu_344_p3;
wire   [2:0] thr_add1_i_i_fu_352_p3;
wire  signed [4:0] thr_add1_cast9_cast_i_cast_cast_i_cast_fu_360_p1;
wire   [0:0] xor_ln11078_fu_439_p2;
wire   [5:0] add_ln11078_fu_425_p2;
wire   [3:0] select_ln11078_1_fu_431_p3;
wire   [0:0] and_ln11078_fu_445_p2;
wire   [0:0] empty_473_fu_465_p2;
wire   [3:0] add_ln11079_fu_459_p2;
wire   [6:0] zext_ln11078_fu_487_p1;
wire   [6:0] empty_474_fu_491_p2;
wire   [9:0] tmp_649_fu_504_p3;
wire   [12:0] p_shl28_fu_496_p3;
wire   [12:0] zext_ln11083_fu_512_p1;
wire   [4:0] tmp_596_i_fu_522_p3;
wire   [5:0] p_cast8_i_i_i_fu_530_p1;
wire   [5:0] empty_475_fu_534_p2;
wire   [12:0] sub_ln11083_fu_516_p2;
wire   [12:0] zext_ln11083_1_fu_539_p1;
wire   [3:0] v8719_mid2_i_fu_471_p3;
wire   [4:0] shl_ln_i_fu_559_p3;
wire   [5:0] zext_ln11084_fu_567_p1;
wire   [5:0] add_ln11084_fu_571_p2;
wire   [6:0] add_ln11079_1_fu_592_p2;
wire   [6:0] tmp_648_fu_645_p3;
wire   [9:0] p_shl30_fu_638_p3;
wire   [9:0] zext_ln11085_fu_652_p1;
wire   [9:0] sub_ln11085_fu_656_p2;
wire   [9:0] zext_ln11085_1_fu_662_p1;
wire   [9:0] add_ln11085_fu_665_p2;
wire   [8:0] trunc_ln11085_fu_671_p1;
wire   [11:0] tmp_650_fu_675_p3;
wire   [11:0] zext_ln11085_2_fu_683_p1;
wire   [13:0] tmp_651_fu_700_p3;
wire   [16:0] p_shl_fu_693_p3;
wire   [16:0] zext_ln11083_2_fu_707_p1;
wire   [11:0] sub_ln11085_1_fu_687_p2;
wire   [11:0] zext_ln11085_3_fu_720_p1;
wire   [3:0] zext_ln11080_fu_717_p1;
wire   [3:0] add_ln11083_1_fu_729_p2;
wire   [16:0] sub_ln11083_1_fu_711_p2;
wire   [16:0] zext_ln11083_3_fu_734_p1;
wire   [16:0] add_ln11083_2_fu_738_p2;
wire   [16:0] zext_ln11085_5_fu_750_p1;
wire   [16:0] add_ln11085_2_fu_753_p2;
reg   [3:0] ap_return_preg;
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
reg    ap_condition_112;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_i_fu_128 = 12'd0;
#0 v871734_i_fu_132 = 6'd0;
#0 indvar_flatten35_i_fu_136 = 7'd0;
#0 v871836_i_fu_140 = 4'd0;
#0 v871937_i_fu_144 = 4'd0;
#0 ap_return_preg = 4'd0;
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
        ap_return_preg <= 4'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= empty_reg_821_pp0_iter2_reg;
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
        indvar_flatten1233_i_fu_128 <= add_ln11078_1_fu_396_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_i_fu_136 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_i_fu_136 <= select_ln11079_1_fu_598_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v871734_i_fu_132 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v871734_i_fu_132 <= select_ln11078_2_fu_451_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v871836_i_fu_140 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v871836_i_fu_140 <= select_ln11079_fu_479_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v871937_i_fu_144 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v871937_i_fu_144 <= add_ln11080_fu_586_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11083_reg_866 <= add_ln11083_fu_543_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_reg_821_pp0_iter1_reg <= empty_reg_821;
        icmp_ln11078_reg_851 <= icmp_ln11078_fu_402_p2;
        icmp_ln11078_reg_851_pp0_iter1_reg <= icmp_ln11078_reg_851;
        lshr_ln119_i_reg_878 <= {{add_ln11084_fu_571_p2[5:2]}};
        lshr_ln_i_reg_872 <= {{v8719_mid2_i_fu_471_p3[3:1]}};
        mul_i37_i_i_reg_825[6 : 5] <= mul_i37_i_i_fu_272_p3[6 : 5];
        select_ln11078_2_reg_855 <= select_ln11078_2_fu_451_p3;
        select_ln11079_reg_861 <= select_ln11079_fu_479_p3;
        select_ln11110_reg_835[2 : 0] <= select_ln11110_fu_328_p3[2 : 0];
        select_ln11110_reg_835_pp0_iter1_reg[2 : 0] <= select_ln11110_reg_835[2 : 0];
        thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846[0] <= thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_364_p1[0];
thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846[4 : 2] <= thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_364_p1[4 : 2];
        tmp_647_reg_840 <= v8727_cast3_fu_254_p1[32'd4];
        tmp_647_reg_840_pp0_iter1_reg <= tmp_647_reg_840;
        tmp_i_reg_830[0] <= tmp_i_fu_316_p3[0];
tmp_i_reg_830[4 : 2] <= tmp_i_fu_316_p3[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln11085_1_reg_893 <= add_ln11085_1_fu_723_p2;
        empty_reg_821_pp0_iter2_reg <= empty_reg_821_pp0_iter1_reg;
        tmp_647_reg_840_pp0_iter2_reg <= tmp_647_reg_840_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_821 <= empty_fu_258_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11079_reg_888 <= icmp_ln11079_fu_612_p2;
        icmp_ln11080_reg_883 <= icmp_ln11080_fu_606_p2;
    end
end
always @ (*) begin
    if (((icmp_ln11078_fu_402_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11078_reg_851_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4 = icmp_ln11079_reg_888;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4 = icmp_ln11079_reg_888;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11078_reg_851_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1108038_i_phi_fu_247_p4 = icmp_ln11080_reg_883;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1108038_i_phi_fu_247_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1108038_i_phi_fu_247_p4 = icmp_ln11080_reg_883;
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
        ap_return = empty_reg_821_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_i_load = indvar_flatten1233_i_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16188_0_ce0_local = 1'b1;
    end else begin
        v16188_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16188_1_ce0_local = 1'b1;
    end else begin
        v16188_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16188_2_ce0_local = 1'b1;
    end else begin
        v16188_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16188_3_ce0_local = 1'b1;
    end else begin
        v16188_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8734_1_ce0_local = 1'b1;
    end else begin
        v8734_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8734_1_we0_local = 1'b1;
    end else begin
        v8734_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8734_ce0_local = 1'b1;
    end else begin
        v8734_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8734_we0_local = 1'b1;
    end else begin
        v8734_we0_local = 1'b0;
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
assign add_ln11078_1_fu_396_p2 = (ap_sig_allocacmp_indvar_flatten1233_i_load + 12'd1);
assign add_ln11078_fu_425_p2 = (v871734_i_fu_132 + 6'd1);
assign add_ln11079_1_fu_592_p2 = (indvar_flatten35_i_fu_136 + 7'd1);
assign add_ln11079_fu_459_p2 = (select_ln11078_1_fu_431_p3 + 4'd1);
assign add_ln11080_fu_586_p2 = (v8719_mid2_i_fu_471_p3 + 4'd2);
assign add_ln11083_1_fu_729_p2 = (zext_ln11080_fu_717_p1 + select_ln11110_reg_835_pp0_iter1_reg);
assign add_ln11083_2_fu_738_p2 = (sub_ln11083_1_fu_711_p2 + zext_ln11083_3_fu_734_p1);
assign add_ln11083_fu_543_p2 = (sub_ln11083_fu_516_p2 + zext_ln11083_1_fu_539_p1);
assign add_ln11084_fu_571_p2 = (zext_ln11084_fu_567_p1 + thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846);
assign add_ln11085_1_fu_723_p2 = (sub_ln11085_1_fu_687_p2 + zext_ln11085_3_fu_720_p1);
assign add_ln11085_2_fu_753_p2 = (sub_ln11083_1_fu_711_p2 + zext_ln11085_5_fu_750_p1);
assign add_ln11085_fu_665_p2 = (sub_ln11085_fu_656_p2 + zext_ln11085_1_fu_662_p1);
assign and_ln11078_fu_445_p2 = (xor_ln11078_fu_439_p2 & ap_phi_mux_icmp_ln1108038_i_phi_fu_247_p4);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_471_fu_324_p1 = v8727[0:0];
assign empty_472_fu_344_p3 = ((empty_471_fu_324_p1[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign empty_473_fu_465_p2 = (ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4 | and_ln11078_fu_445_p2);
assign empty_474_fu_491_p2 = (mul_i37_i_i_reg_825 + zext_ln11078_fu_487_p1);
assign empty_475_fu_534_p2 = (tmp_i_reg_830 + p_cast8_i_i_i_fu_530_p1);
assign empty_fu_258_p1 = v8727[3:0];
assign icmp_ln11078_fu_402_p2 = ((ap_sig_allocacmp_indvar_flatten1233_i_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln11079_fu_612_p2 = ((select_ln11079_1_fu_598_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln11080_fu_606_p2 = ((add_ln11080_fu_586_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i37_i_i_fu_272_p3 = {{tmp_591_i_fu_262_p4}, {5'd0}};
assign p_cast8_i_i_i_fu_530_p1 = tmp_596_i_fu_522_p3;
assign p_cast_i_fu_312_p1 = $signed(tmp_595_i_fu_304_p3);
assign p_shl28_fu_496_p3 = {{empty_474_fu_491_p2}, {6'd0}};
assign p_shl30_fu_638_p3 = {{select_ln11078_2_reg_855}, {4'd0}};
assign p_shl_fu_693_p3 = {{add_ln11083_reg_866}, {4'd0}};
assign select_ln11078_1_fu_431_p3 = ((ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4[0:0] == 1'b1) ? 4'd0 : v871836_i_fu_140);
assign select_ln11078_2_fu_451_p3 = ((ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4[0:0] == 1'b1) ? add_ln11078_fu_425_p2 : v871734_i_fu_132);
assign select_ln11078_fu_296_p3 = ((tmp_fu_280_p3[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign select_ln11079_1_fu_598_p3 = ((ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4[0:0] == 1'b1) ? 7'd1 : add_ln11079_1_fu_592_p2);
assign select_ln11079_fu_479_p3 = ((and_ln11078_fu_445_p2[0:0] == 1'b1) ? add_ln11079_fu_459_p2 : select_ln11078_1_fu_431_p3);
assign select_ln11083_fu_770_p3 = ((tmp_647_reg_840_pp0_iter2_reg[0:0] == 1'b1) ? v16188_1_q0 : v16188_0_q0);
assign select_ln11085_fu_778_p3 = ((tmp_647_reg_840_pp0_iter2_reg[0:0] == 1'b1) ? v16188_3_q0 : v16188_2_q0);
assign select_ln11110_fu_328_p3 = ((empty_471_fu_324_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign shl_ln_i_fu_559_p3 = {{v8719_mid2_i_fu_471_p3}, {1'd0}};
assign sub_ln11083_1_fu_711_p2 = (p_shl_fu_693_p3 - zext_ln11083_2_fu_707_p1);
assign sub_ln11083_fu_516_p2 = (p_shl28_fu_496_p3 - zext_ln11083_fu_512_p1);
assign sub_ln11085_1_fu_687_p2 = (tmp_650_fu_675_p3 - zext_ln11085_2_fu_683_p1);
assign sub_ln11085_fu_656_p2 = (p_shl30_fu_638_p3 - zext_ln11085_fu_652_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_cast_fu_364_p1 = $unsigned(thr_add1_cast9_cast_i_cast_cast_i_cast_fu_360_p1);
assign thr_add1_cast9_cast_i_cast_cast_i_cast_fu_360_p1 = $signed(thr_add1_i_i_fu_352_p3);
assign thr_add1_i_i_fu_352_p3 = {{empty_472_fu_344_p3}, {tmp_647_fu_336_p3}};
assign tmp_591_i_fu_262_p4 = {{v8727[3:2]}};
assign tmp_595_i_fu_304_p3 = {{select_ln11078_fu_296_p3}, {tmp_646_fu_288_p3}};
assign tmp_596_i_fu_522_p3 = {{select_ln11079_fu_479_p3}, {1'd0}};
assign tmp_646_fu_288_p3 = v8727_cast3_fu_254_p1[32'd5];
assign tmp_647_fu_336_p3 = v8727_cast3_fu_254_p1[32'd4];
assign tmp_648_fu_645_p3 = {{select_ln11078_2_reg_855}, {1'd0}};
assign tmp_649_fu_504_p3 = {{empty_474_fu_491_p2}, {3'd0}};
assign tmp_650_fu_675_p3 = {{trunc_ln11085_fu_671_p1}, {3'd0}};
assign tmp_651_fu_700_p3 = {{add_ln11083_reg_866}, {1'd0}};
assign tmp_fu_280_p3 = v8727_cast3_fu_254_p1[32'd1];
assign tmp_i_fu_316_p3 = {{1'd0}, {p_cast_i_fu_312_p1}};
assign trunc_ln11085_fu_671_p1 = add_ln11085_fu_665_p2[8:0];
assign v16188_0_address0 = zext_ln11083_4_fu_744_p1;
assign v16188_0_ce0 = v16188_0_ce0_local;
assign v16188_1_address0 = zext_ln11083_4_fu_744_p1;
assign v16188_1_ce0 = v16188_1_ce0_local;
assign v16188_2_address0 = zext_ln11085_6_fu_759_p1;
assign v16188_2_ce0 = v16188_2_ce0_local;
assign v16188_3_address0 = zext_ln11085_6_fu_759_p1;
assign v16188_3_ce0 = v16188_3_ce0_local;
assign v8719_mid2_i_fu_471_p3 = ((empty_473_fu_465_p2[0:0] == 1'b1) ? 4'd0 : v871937_i_fu_144);
assign v8727_cast3_fu_254_p1 = v8727;
assign v8734_1_address0 = zext_ln11085_4_fu_765_p1;
assign v8734_1_ce0 = v8734_1_ce0_local;
assign v8734_1_d0 = select_ln11083_fu_770_p3;
assign v8734_1_we0 = v8734_1_we0_local;
assign v8734_address0 = zext_ln11085_4_fu_765_p1;
assign v8734_ce0 = v8734_ce0_local;
assign v8734_d0 = select_ln11085_fu_778_p3;
assign v8734_we0 = v8734_we0_local;
assign xor_ln11078_fu_439_p2 = (ap_phi_mux_icmp_ln1107939_i_phi_fu_236_p4 ^ 1'd1);
assign zext_ln11078_fu_487_p1 = select_ln11078_2_fu_451_p3;
assign zext_ln11080_fu_717_p1 = lshr_ln_i_reg_872;
assign zext_ln11083_1_fu_539_p1 = empty_475_fu_534_p2;
assign zext_ln11083_2_fu_707_p1 = tmp_651_fu_700_p3;
assign zext_ln11083_3_fu_734_p1 = add_ln11083_1_fu_729_p2;
assign zext_ln11083_4_fu_744_p1 = add_ln11083_2_fu_738_p2;
assign zext_ln11083_fu_512_p1 = tmp_649_fu_504_p3;
assign zext_ln11084_fu_567_p1 = shl_ln_i_fu_559_p3;
assign zext_ln11085_1_fu_662_p1 = select_ln11079_reg_861;
assign zext_ln11085_2_fu_683_p1 = add_ln11085_fu_665_p2;
assign zext_ln11085_3_fu_720_p1 = lshr_ln_i_reg_872;
assign zext_ln11085_4_fu_765_p1 = add_ln11085_1_reg_893;
assign zext_ln11085_5_fu_750_p1 = lshr_ln119_i_reg_878;
assign zext_ln11085_6_fu_759_p1 = add_ln11085_2_fu_753_p2;
assign zext_ln11085_fu_652_p1 = tmp_648_fu_645_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_825[4:0] <= 5'b00000;
    tmp_i_reg_830[1] <= 1'b0;
    tmp_i_reg_830[5] <= 1'b0;
    select_ln11110_reg_835[3] <= 1'b0;
    select_ln11110_reg_835_pp0_iter1_reg[3] <= 1'b0;
    thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846[1] <= 1'b0;
    thr_add1_cast9_cast_i_cast_cast_i_cast_cast_reg_846[5] <= 1'b0;
end
endmodule 