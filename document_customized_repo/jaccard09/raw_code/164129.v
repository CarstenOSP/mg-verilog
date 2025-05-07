module forward_dataflow_in_loop_VITIS_LOOP_16245_1_Loop_VITIS_LOOP_16156_1_proc19290 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12751_address0,v12751_ce0,v12751_we0,v12751_d0,v12751_1_address0,v12751_1_ce0,v12751_1_we0,v12751_1_d0,v12751_2_address0,v12751_2_ce0,v12751_2_we0,v12751_2_d0,v12751_3_address0,v12751_3_ce0,v12751_3_we0,v12751_3_d0,v12751_4_address0,v12751_4_ce0,v12751_4_we0,v12751_4_d0,v12751_5_address0,v12751_5_ce0,v12751_5_we0,v12751_5_d0,v12751_6_address0,v12751_6_ce0,v12751_6_we0,v12751_6_d0,v12751_7_address0,v12751_7_ce0,v12751_7_we0,v12751_7_d0,v12745,v15406_0_0_address0,v15406_0_0_ce0,v15406_0_0_q0,v15406_0_1_address0,v15406_0_1_ce0,v15406_0_1_q0,v15406_1_0_address0,v15406_1_0_ce0,v15406_1_0_q0,v15406_1_1_address0,v15406_1_1_ce0,v15406_1_1_q0,v15406_2_0_address0,v15406_2_0_ce0,v15406_2_0_q0,v15406_2_1_address0,v15406_2_1_ce0,v15406_2_1_q0,v15406_3_0_address0,v15406_3_0_ce0,v15406_3_0_q0,v15406_3_1_address0,v15406_3_1_ce0,v15406_3_1_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v12751_address0;
output   v12751_ce0;
output   v12751_we0;
output  [7:0] v12751_d0;
output  [6:0] v12751_1_address0;
output   v12751_1_ce0;
output   v12751_1_we0;
output  [7:0] v12751_1_d0;
output  [6:0] v12751_2_address0;
output   v12751_2_ce0;
output   v12751_2_we0;
output  [7:0] v12751_2_d0;
output  [6:0] v12751_3_address0;
output   v12751_3_ce0;
output   v12751_3_we0;
output  [7:0] v12751_3_d0;
output  [6:0] v12751_4_address0;
output   v12751_4_ce0;
output   v12751_4_we0;
output  [7:0] v12751_4_d0;
output  [6:0] v12751_5_address0;
output   v12751_5_ce0;
output   v12751_5_we0;
output  [7:0] v12751_5_d0;
output  [6:0] v12751_6_address0;
output   v12751_6_ce0;
output   v12751_6_we0;
output  [7:0] v12751_6_d0;
output  [6:0] v12751_7_address0;
output   v12751_7_ce0;
output   v12751_7_we0;
output  [7:0] v12751_7_d0;
input  [6:0] v12745;
output  [11:0] v15406_0_0_address0;
output   v15406_0_0_ce0;
input  [7:0] v15406_0_0_q0;
output  [11:0] v15406_0_1_address0;
output   v15406_0_1_ce0;
input  [7:0] v15406_0_1_q0;
output  [11:0] v15406_1_0_address0;
output   v15406_1_0_ce0;
input  [7:0] v15406_1_0_q0;
output  [11:0] v15406_1_1_address0;
output   v15406_1_1_ce0;
input  [7:0] v15406_1_1_q0;
output  [11:0] v15406_2_0_address0;
output   v15406_2_0_ce0;
input  [7:0] v15406_2_0_q0;
output  [11:0] v15406_2_1_address0;
output   v15406_2_1_ce0;
input  [7:0] v15406_2_1_q0;
output  [11:0] v15406_3_0_address0;
output   v15406_3_0_ce0;
input  [7:0] v15406_3_0_q0;
output  [11:0] v15406_3_1_address0;
output   v15406_3_1_ce0;
input  [7:0] v15406_3_1_q0;
output  [6:0] ap_return;
reg ap_idle;
reg[6:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16156_fu_560_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [6:0] v12745_read_reg_697;
reg   [6:0] v12745_read_reg_697_pp0_iter1_reg;
wire   [5:0] trunc_ln_i_fu_388_p3;
reg   [5:0] trunc_ln_i_reg_701;
wire   [1:0] tmp_177_i_fu_396_p4;
reg   [1:0] tmp_177_i_reg_706;
reg   [3:0] lshr_ln_i_reg_712;
reg   [2:0] lshr_ln_i_cast_reg_717;
reg   [2:0] lshr_ln_i_cast_reg_717_pp0_iter1_reg;
reg   [5:0] tmp_179_i_reg_722;
reg   [3:0] lshr_ln89_i_reg_728;
reg   [3:0] lshr_ln89_i_reg_728_pp0_iter1_reg;
reg   [6:0] lshr_ln90_i_reg_735;
wire   [0:0] xor_ln16157_fu_554_p2;
reg   [0:0] xor_ln16157_reg_740;
reg   [0:0] icmp_ln16156_reg_745;
reg   [0:0] ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16160_fu_612_p1;
wire   [63:0] zext_ln16164_fu_624_p1;
wire   [63:0] zext_ln16162_1_fu_640_p1;
wire   [63:0] zext_ln16166_fu_651_p1;
wire   [63:0] zext_ln16174_fu_664_p1;
reg   [6:0] indvar_flatten93_i_fu_126;
wire   [6:0] add_ln16156_1_fu_540_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten93_i_load;
reg   [5:0] v1271394_i_fu_130;
wire   [5:0] select_ln16156_1_fu_456_p3;
reg   [5:0] ap_sig_allocacmp_v1271394_i_load;
reg   [5:0] v1271495_i_fu_134;
wire   [5:0] add_ln16157_fu_534_p2;
reg   [5:0] ap_sig_allocacmp_v1271495_i_load;
reg    v15406_0_0_ce0_local;
reg    v15406_0_1_ce0_local;
reg    v15406_1_0_ce0_local;
reg    v15406_1_1_ce0_local;
reg    v15406_2_0_ce0_local;
reg    v15406_2_1_ce0_local;
reg    v15406_3_0_ce0_local;
reg    v15406_3_1_ce0_local;
reg    v12751_7_we0_local;
reg    v12751_7_ce0_local;
reg    v12751_6_we0_local;
reg    v12751_6_ce0_local;
reg    v12751_5_we0_local;
reg    v12751_5_ce0_local;
reg    v12751_4_we0_local;
reg    v12751_4_ce0_local;
reg    v12751_3_we0_local;
reg    v12751_3_ce0_local;
reg    v12751_2_we0_local;
reg    v12751_2_ce0_local;
reg    v12751_1_we0_local;
reg    v12751_1_ce0_local;
reg    v12751_we0_local;
reg    v12751_ce0_local;
wire   [2:0] tmp_i_fu_370_p4;
wire   [6:0] mul_i235_i_i_fu_406_p3;
wire   [5:0] add_ln16156_fu_442_p2;
wire   [7:0] mul_i179_i_i_fu_380_p3;
wire   [7:0] zext_ln16156_fu_464_p1;
wire   [7:0] empty_fu_488_p2;
wire   [5:0] select_ln16156_fu_448_p3;
wire   [7:0] mul_i235_cast_i_i_fu_414_p1;
wire   [7:0] zext_ln16157_fu_504_p1;
wire   [7:0] add_ln16159_fu_518_p2;
wire   [0:0] tmp_fu_546_p3;
wire   [5:0] zext_ln16156_1_fu_581_p1;
wire   [5:0] empty_311_fu_584_p2;
wire   [11:0] tmp_184_i_fu_604_p4;
wire   [11:0] tmp_186_i_fu_617_p4;
wire   [11:0] tmp_178_i_fu_589_p3;
wire   [11:0] zext_ln16162_fu_631_p1;
wire   [11:0] add_ln16162_fu_634_p2;
wire   [11:0] tmp_180_i_fu_597_p3;
wire   [11:0] add_ln16166_fu_645_p2;
wire   [6:0] tmp_182_i_fu_658_p3;
reg   [6:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_511;
reg    ap_condition_173;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten93_i_fu_126 = 7'd0;
#0 v1271394_i_fu_130 = 6'd0;
#0 v1271495_i_fu_134 = 6'd0;
#0 ap_return_preg = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_return_preg <= 7'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= v12745_read_reg_697_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_173)) begin
        indvar_flatten93_i_fu_126 <= add_ln16156_1_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_173)) begin
    v1271394_i_fu_130 <= select_ln16156_1_fu_456_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_173)) begin
    v1271495_i_fu_134 <= add_ln16157_fu_534_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln16156_reg_745 <= icmp_ln16156_fu_560_p2;
        lshr_ln89_i_reg_728 <= {{select_ln16156_fu_448_p3[4:1]}};
        lshr_ln89_i_reg_728_pp0_iter1_reg <= lshr_ln89_i_reg_728;
        lshr_ln90_i_reg_735 <= {{add_ln16159_fu_518_p2[7:1]}};
        lshr_ln_i_cast_reg_717 <= {{select_ln16156_1_fu_456_p3[4:2]}};
        lshr_ln_i_cast_reg_717_pp0_iter1_reg <= lshr_ln_i_cast_reg_717;
        lshr_ln_i_reg_712 <= {{select_ln16156_1_fu_456_p3[5:2]}};
        tmp_177_i_reg_706 <= {{v12745[6:5]}};
        tmp_179_i_reg_722 <= {{empty_fu_488_p2[7:2]}};
        trunc_ln_i_reg_701[5 : 3] <= trunc_ln_i_fu_388_p3[5 : 3];
        v12745_read_reg_697_pp0_iter1_reg <= v12745_read_reg_697;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12745_read_reg_697 <= v12745;
        xor_ln16157_reg_740 <= xor_ln16157_fu_554_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16156_fu_560_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_511)) begin
            ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4 = xor_ln16157_reg_740;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4 = xor_ln16157_reg_740;
        end
    end else begin
        ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4 = xor_ln16157_reg_740;
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = v12745_read_reg_697_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten93_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten93_i_load = indvar_flatten93_i_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1271394_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1271394_i_load = v1271394_i_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v1271495_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1271495_i_load = v1271495_i_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_1_ce0_local = 1'b1;
    end else begin
        v12751_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_1_we0_local = 1'b1;
    end else begin
        v12751_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_2_ce0_local = 1'b1;
    end else begin
        v12751_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_2_we0_local = 1'b1;
    end else begin
        v12751_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_3_ce0_local = 1'b1;
    end else begin
        v12751_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_3_we0_local = 1'b1;
    end else begin
        v12751_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_4_ce0_local = 1'b1;
    end else begin
        v12751_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_4_we0_local = 1'b1;
    end else begin
        v12751_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_5_ce0_local = 1'b1;
    end else begin
        v12751_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_5_we0_local = 1'b1;
    end else begin
        v12751_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_6_ce0_local = 1'b1;
    end else begin
        v12751_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_6_we0_local = 1'b1;
    end else begin
        v12751_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_7_ce0_local = 1'b1;
    end else begin
        v12751_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_7_we0_local = 1'b1;
    end else begin
        v12751_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_ce0_local = 1'b1;
    end else begin
        v12751_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12751_we0_local = 1'b1;
    end else begin
        v12751_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_0_0_ce0_local = 1'b1;
    end else begin
        v15406_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_0_1_ce0_local = 1'b1;
    end else begin
        v15406_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_1_0_ce0_local = 1'b1;
    end else begin
        v15406_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_1_1_ce0_local = 1'b1;
    end else begin
        v15406_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_2_0_ce0_local = 1'b1;
    end else begin
        v15406_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_2_1_ce0_local = 1'b1;
    end else begin
        v15406_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_3_0_ce0_local = 1'b1;
    end else begin
        v15406_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15406_3_1_ce0_local = 1'b1;
    end else begin
        v15406_3_1_ce0_local = 1'b0;
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
assign add_ln16156_1_fu_540_p2 = (ap_sig_allocacmp_indvar_flatten93_i_load + 7'd1);
assign add_ln16156_fu_442_p2 = (ap_sig_allocacmp_v1271394_i_load + 6'd4);
assign add_ln16157_fu_534_p2 = (select_ln16156_fu_448_p3 + 6'd2);
assign add_ln16159_fu_518_p2 = (mul_i235_cast_i_i_fu_414_p1 + zext_ln16157_fu_504_p1);
assign add_ln16162_fu_634_p2 = (tmp_178_i_fu_589_p3 + zext_ln16162_fu_631_p1);
assign add_ln16166_fu_645_p2 = (tmp_180_i_fu_597_p3 + zext_ln16162_fu_631_p1);
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
    ap_condition_173 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_511 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16156_reg_745 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_311_fu_584_p2 = (zext_ln16156_1_fu_581_p1 + trunc_ln_i_reg_701);
assign empty_fu_488_p2 = (mul_i179_i_i_fu_380_p3 + zext_ln16156_fu_464_p1);
assign icmp_ln16156_fu_560_p2 = ((ap_sig_allocacmp_indvar_flatten93_i_load == 7'd127) ? 1'b1 : 1'b0);
assign mul_i179_i_i_fu_380_p3 = {{tmp_i_fu_370_p4}, {5'd0}};
assign mul_i235_cast_i_i_fu_414_p1 = mul_i235_i_i_fu_406_p3;
assign mul_i235_i_i_fu_406_p3 = {{tmp_177_i_fu_396_p4}, {5'd0}};
assign select_ln16156_1_fu_456_p3 = ((ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1271394_i_load : add_ln16156_fu_442_p2);
assign select_ln16156_fu_448_p3 = ((ap_phi_mux_icmp_ln1615796_i_phi_fu_363_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1271495_i_load : 6'd0);
assign tmp_177_i_fu_396_p4 = {{v12745[6:5]}};
assign tmp_178_i_fu_589_p3 = {{empty_311_fu_584_p2}, {6'd0}};
assign tmp_180_i_fu_597_p3 = {{tmp_179_i_reg_722}, {6'd0}};
assign tmp_182_i_fu_658_p3 = {{lshr_ln_i_cast_reg_717_pp0_iter1_reg}, {lshr_ln89_i_reg_728_pp0_iter1_reg}};
assign tmp_184_i_fu_604_p4 = {{{empty_311_fu_584_p2}, {tmp_177_i_reg_706}}, {lshr_ln89_i_reg_728}};
assign tmp_186_i_fu_617_p4 = {{{tmp_179_i_reg_722}, {tmp_177_i_reg_706}}, {lshr_ln89_i_reg_728}};
assign tmp_fu_546_p3 = add_ln16157_fu_534_p2[32'd5];
assign tmp_i_fu_370_p4 = {{v12745[4:2]}};
assign trunc_ln_i_fu_388_p3 = {{tmp_i_fu_370_p4}, {3'd0}};
assign v12751_1_address0 = zext_ln16174_fu_664_p1;
assign v12751_1_ce0 = v12751_1_ce0_local;
assign v12751_1_d0 = v15406_3_0_q0;
assign v12751_1_we0 = v12751_1_we0_local;
assign v12751_2_address0 = zext_ln16174_fu_664_p1;
assign v12751_2_ce0 = v12751_2_ce0_local;
assign v12751_2_d0 = v15406_2_1_q0;
assign v12751_2_we0 = v12751_2_we0_local;
assign v12751_3_address0 = zext_ln16174_fu_664_p1;
assign v12751_3_ce0 = v12751_3_ce0_local;
assign v12751_3_d0 = v15406_2_0_q0;
assign v12751_3_we0 = v12751_3_we0_local;
assign v12751_4_address0 = zext_ln16174_fu_664_p1;
assign v12751_4_ce0 = v12751_4_ce0_local;
assign v12751_4_d0 = v15406_1_1_q0;
assign v12751_4_we0 = v12751_4_we0_local;
assign v12751_5_address0 = zext_ln16174_fu_664_p1;
assign v12751_5_ce0 = v12751_5_ce0_local;
assign v12751_5_d0 = v15406_1_0_q0;
assign v12751_5_we0 = v12751_5_we0_local;
assign v12751_6_address0 = zext_ln16174_fu_664_p1;
assign v12751_6_ce0 = v12751_6_ce0_local;
assign v12751_6_d0 = v15406_0_1_q0;
assign v12751_6_we0 = v12751_6_we0_local;
assign v12751_7_address0 = zext_ln16174_fu_664_p1;
assign v12751_7_ce0 = v12751_7_ce0_local;
assign v12751_7_d0 = v15406_0_0_q0;
assign v12751_7_we0 = v12751_7_we0_local;
assign v12751_address0 = zext_ln16174_fu_664_p1;
assign v12751_ce0 = v12751_ce0_local;
assign v12751_d0 = v15406_3_1_q0;
assign v12751_we0 = v12751_we0_local;
assign v15406_0_0_address0 = zext_ln16160_fu_612_p1;
assign v15406_0_0_ce0 = v15406_0_0_ce0_local;
assign v15406_0_1_address0 = zext_ln16162_1_fu_640_p1;
assign v15406_0_1_ce0 = v15406_0_1_ce0_local;
assign v15406_1_0_address0 = zext_ln16164_fu_624_p1;
assign v15406_1_0_ce0 = v15406_1_0_ce0_local;
assign v15406_1_1_address0 = zext_ln16166_fu_651_p1;
assign v15406_1_1_ce0 = v15406_1_1_ce0_local;
assign v15406_2_0_address0 = zext_ln16164_fu_624_p1;
assign v15406_2_0_ce0 = v15406_2_0_ce0_local;
assign v15406_2_1_address0 = zext_ln16166_fu_651_p1;
assign v15406_2_1_ce0 = v15406_2_1_ce0_local;
assign v15406_3_0_address0 = zext_ln16164_fu_624_p1;
assign v15406_3_0_ce0 = v15406_3_0_ce0_local;
assign v15406_3_1_address0 = zext_ln16166_fu_651_p1;
assign v15406_3_1_ce0 = v15406_3_1_ce0_local;
assign xor_ln16157_fu_554_p2 = (tmp_fu_546_p3 ^ 1'd1);
assign zext_ln16156_1_fu_581_p1 = lshr_ln_i_reg_712;
assign zext_ln16156_fu_464_p1 = select_ln16156_1_fu_456_p3;
assign zext_ln16157_fu_504_p1 = select_ln16156_fu_448_p3;
assign zext_ln16160_fu_612_p1 = tmp_184_i_fu_604_p4;
assign zext_ln16162_1_fu_640_p1 = add_ln16162_fu_634_p2;
assign zext_ln16162_fu_631_p1 = lshr_ln90_i_reg_735;
assign zext_ln16164_fu_624_p1 = tmp_186_i_fu_617_p4;
assign zext_ln16166_fu_651_p1 = add_ln16166_fu_645_p2;
assign zext_ln16174_fu_664_p1 = tmp_182_i_fu_658_p3;
always @ (posedge ap_clk) begin
    trunc_ln_i_reg_701[2:0] <= 3'b000;
end
endmodule 