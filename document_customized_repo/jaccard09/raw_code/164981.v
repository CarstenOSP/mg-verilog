module forward_dataflow_in_loop_VITIS_LOOP_2185_1_Loop_VITIS_LOOP_2146_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,idxprom2_i,idxprom6_i,v9267_0_address0,v9267_0_ce0,v9267_0_q0,v9267_1_address0,v9267_1_ce0,v9267_1_q0,v9267_2_address0,v9267_2_ce0,v9267_2_q0,v9267_3_address0,v9267_3_ce0,v9267_3_q0,v9267_4_address0,v9267_4_ce0,v9267_4_q0,v9267_5_address0,v9267_5_ce0,v9267_5_q0,v9267_6_address0,v9267_6_ce0,v9267_6_q0,v9267_7_address0,v9267_7_ce0,v9267_7_q0,v1587_7_address0,v1587_7_ce0,v1587_7_we0,v1587_7_d0,v1587_6_address0,v1587_6_ce0,v1587_6_we0,v1587_6_d0,v1587_5_address0,v1587_5_ce0,v1587_5_we0,v1587_5_d0,v1587_4_address0,v1587_4_ce0,v1587_4_we0,v1587_4_d0,v1587_3_address0,v1587_3_ce0,v1587_3_we0,v1587_3_d0,v1587_2_address0,v1587_2_ce0,v1587_2_we0,v1587_2_d0,v1587_1_address0,v1587_1_ce0,v1587_1_we0,v1587_1_d0,v1587_address0,v1587_ce0,v1587_we0,v1587_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [5:0] shl_ln;
input  [3:0] idxprom2_i;
input  [3:0] idxprom6_i;
output  [11:0] v9267_0_address0;
output   v9267_0_ce0;
input  [7:0] v9267_0_q0;
output  [11:0] v9267_1_address0;
output   v9267_1_ce0;
input  [7:0] v9267_1_q0;
output  [11:0] v9267_2_address0;
output   v9267_2_ce0;
input  [7:0] v9267_2_q0;
output  [11:0] v9267_3_address0;
output   v9267_3_ce0;
input  [7:0] v9267_3_q0;
output  [11:0] v9267_4_address0;
output   v9267_4_ce0;
input  [7:0] v9267_4_q0;
output  [11:0] v9267_5_address0;
output   v9267_5_ce0;
input  [7:0] v9267_5_q0;
output  [11:0] v9267_6_address0;
output   v9267_6_ce0;
input  [7:0] v9267_6_q0;
output  [11:0] v9267_7_address0;
output   v9267_7_ce0;
input  [7:0] v9267_7_q0;
output  [1:0] v1587_7_address0;
output   v1587_7_ce0;
output   v1587_7_we0;
output  [7:0] v1587_7_d0;
output  [1:0] v1587_6_address0;
output   v1587_6_ce0;
output   v1587_6_we0;
output  [7:0] v1587_6_d0;
output  [1:0] v1587_5_address0;
output   v1587_5_ce0;
output   v1587_5_we0;
output  [7:0] v1587_5_d0;
output  [1:0] v1587_4_address0;
output   v1587_4_ce0;
output   v1587_4_we0;
output  [7:0] v1587_4_d0;
output  [1:0] v1587_3_address0;
output   v1587_3_ce0;
output   v1587_3_we0;
output  [7:0] v1587_3_d0;
output  [1:0] v1587_2_address0;
output   v1587_2_ce0;
output   v1587_2_we0;
output  [7:0] v1587_2_d0;
output  [1:0] v1587_1_address0;
output   v1587_1_ce0;
output   v1587_1_we0;
output  [7:0] v1587_1_d0;
output  [1:0] v1587_address0;
output   v1587_ce0;
output   v1587_we0;
output  [7:0] v1587_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_446_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [11:0] idxprom6_i_cast_fu_348_p1;
reg  signed [11:0] idxprom6_i_cast_reg_563;
wire    ap_block_pp0_stage0_11001;
wire  signed [9:0] idxprom2_i_cast_fu_352_p1;
reg  signed [9:0] idxprom2_i_cast_reg_569;
wire   [2:0] lshr_ln_fu_368_p4;
reg   [2:0] lshr_ln_reg_575;
reg   [2:0] lshr_ln_reg_575_pp0_iter1_reg;
wire   [8:0] sub_ln2149_fu_406_p2;
reg   [8:0] sub_ln2149_reg_580;
wire   [8:0] sub_ln2151_fu_434_p2;
reg   [8:0] sub_ln2151_reg_585;
wire   [63:0] zext_ln2149_2_fu_494_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln2151_2_fu_534_p1;
wire   [63:0] zext_ln2146_1_fu_545_p1;
reg   [5:0] v156393_fu_104;
wire   [5:0] v1563_fu_440_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v156393_load;
reg    v9267_0_ce0_local;
reg    v9267_1_ce0_local;
reg    v9267_2_ce0_local;
reg    v9267_3_ce0_local;
reg    v9267_4_ce0_local;
reg    v9267_5_ce0_local;
reg    v9267_6_ce0_local;
reg    v9267_7_ce0_local;
reg    v1587_7_we0_local;
reg    v1587_7_ce0_local;
reg    v1587_6_we0_local;
reg    v1587_6_ce0_local;
reg    v1587_5_we0_local;
reg    v1587_5_ce0_local;
reg    v1587_4_we0_local;
reg    v1587_4_ce0_local;
reg    v1587_3_we0_local;
reg    v1587_3_ce0_local;
reg    v1587_2_we0_local;
reg    v1587_2_ce0_local;
reg    v1587_1_we0_local;
reg    v1587_1_ce0_local;
reg    v1587_we0_local;
reg    v1587_ce0_local;
wire   [8:0] zext_ln2146_fu_364_p1;
wire   [5:0] zext_ln2146_2_fu_378_p1;
wire   [5:0] add_ln2149_fu_388_p2;
wire   [8:0] p_shl19_fu_398_p3;
wire   [8:0] zext_ln2149_fu_394_p1;
wire   [8:0] add_ln2148_fu_382_p2;
wire   [5:0] lshr_ln79_fu_412_p4;
wire   [8:0] p_shl17_fu_426_p3;
wire   [8:0] zext_ln2151_fu_422_p1;
wire   [9:0] zext_ln2149_1_fu_459_p1;
wire  signed [9:0] add_ln2149_1_fu_462_p2;
wire   [8:0] trunc_ln2149_fu_471_p1;
wire   [11:0] p_shl_fu_475_p3;
wire  signed [11:0] sext_ln2149_fu_467_p1;
wire   [11:0] sub_ln2149_1_fu_483_p2;
wire   [11:0] add_ln2149_2_fu_489_p2;
wire   [9:0] zext_ln2151_1_fu_499_p1;
wire  signed [9:0] add_ln2151_fu_502_p2;
wire   [8:0] trunc_ln2151_fu_511_p1;
wire   [11:0] p_shl21_fu_515_p3;
wire  signed [11:0] sext_ln2151_fu_507_p1;
wire   [11:0] sub_ln2151_1_fu_523_p2;
wire   [11:0] add_ln2151_1_fu_529_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 v156393_fu_104 = 6'd0;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v156393_fu_104 <= v1563_fu_440_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v156393_fu_104 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        idxprom2_i_cast_reg_569 <= idxprom2_i_cast_fu_352_p1;
        idxprom6_i_cast_reg_563 <= idxprom6_i_cast_fu_348_p1;
        lshr_ln_reg_575 <= {{ap_sig_allocacmp_v156393_load[5:3]}};
        lshr_ln_reg_575_pp0_iter1_reg <= lshr_ln_reg_575;
        sub_ln2149_reg_580 <= sub_ln2149_fu_406_p2;
        sub_ln2151_reg_585 <= sub_ln2151_fu_434_p2;
    end
end
always @ (*) begin
    if (((tmp_fu_446_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v156393_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v156393_load = v156393_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_1_ce0_local = 1'b1;
    end else begin
        v1587_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_1_we0_local = 1'b1;
    end else begin
        v1587_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_2_ce0_local = 1'b1;
    end else begin
        v1587_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_2_we0_local = 1'b1;
    end else begin
        v1587_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_3_ce0_local = 1'b1;
    end else begin
        v1587_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_3_we0_local = 1'b1;
    end else begin
        v1587_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_4_ce0_local = 1'b1;
    end else begin
        v1587_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_4_we0_local = 1'b1;
    end else begin
        v1587_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_5_ce0_local = 1'b1;
    end else begin
        v1587_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_5_we0_local = 1'b1;
    end else begin
        v1587_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_6_ce0_local = 1'b1;
    end else begin
        v1587_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_6_we0_local = 1'b1;
    end else begin
        v1587_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_7_ce0_local = 1'b1;
    end else begin
        v1587_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_7_we0_local = 1'b1;
    end else begin
        v1587_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_ce0_local = 1'b1;
    end else begin
        v1587_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v1587_we0_local = 1'b1;
    end else begin
        v1587_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_0_ce0_local = 1'b1;
    end else begin
        v9267_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_1_ce0_local = 1'b1;
    end else begin
        v9267_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_2_ce0_local = 1'b1;
    end else begin
        v9267_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_3_ce0_local = 1'b1;
    end else begin
        v9267_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_4_ce0_local = 1'b1;
    end else begin
        v9267_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_5_ce0_local = 1'b1;
    end else begin
        v9267_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_6_ce0_local = 1'b1;
    end else begin
        v9267_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9267_7_ce0_local = 1'b1;
    end else begin
        v9267_7_ce0_local = 1'b0;
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
assign add_ln2148_fu_382_p2 = (mul_i + zext_ln2146_fu_364_p1);
assign add_ln2149_1_fu_462_p2 = ($signed(zext_ln2149_1_fu_459_p1) + $signed(idxprom2_i_cast_reg_569));
assign add_ln2149_2_fu_489_p2 = ($signed(sub_ln2149_1_fu_483_p2) + $signed(idxprom6_i_cast_reg_563));
assign add_ln2149_fu_388_p2 = (zext_ln2146_2_fu_378_p1 + shl_ln);
assign add_ln2151_1_fu_529_p2 = ($signed(sub_ln2151_1_fu_523_p2) + $signed(idxprom6_i_cast_reg_563));
assign add_ln2151_fu_502_p2 = ($signed(zext_ln2151_1_fu_499_p1) + $signed(idxprom2_i_cast_reg_569));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign idxprom2_i_cast_fu_352_p1 = $signed(idxprom2_i);
assign idxprom6_i_cast_fu_348_p1 = $signed(idxprom6_i);
assign lshr_ln79_fu_412_p4 = {{add_ln2148_fu_382_p2[8:3]}};
assign lshr_ln_fu_368_p4 = {{ap_sig_allocacmp_v156393_load[5:3]}};
assign p_shl17_fu_426_p3 = {{lshr_ln79_fu_412_p4}, {3'd0}};
assign p_shl19_fu_398_p3 = {{add_ln2149_fu_388_p2}, {3'd0}};
assign p_shl21_fu_515_p3 = {{trunc_ln2151_fu_511_p1}, {3'd0}};
assign p_shl_fu_475_p3 = {{trunc_ln2149_fu_471_p1}, {3'd0}};
assign sext_ln2149_fu_467_p1 = add_ln2149_1_fu_462_p2;
assign sext_ln2151_fu_507_p1 = add_ln2151_fu_502_p2;
assign sub_ln2149_1_fu_483_p2 = ($signed(p_shl_fu_475_p3) - $signed(sext_ln2149_fu_467_p1));
assign sub_ln2149_fu_406_p2 = (p_shl19_fu_398_p3 - zext_ln2149_fu_394_p1);
assign sub_ln2151_1_fu_523_p2 = ($signed(p_shl21_fu_515_p3) - $signed(sext_ln2151_fu_507_p1));
assign sub_ln2151_fu_434_p2 = (p_shl17_fu_426_p3 - zext_ln2151_fu_422_p1);
assign tmp_fu_446_p3 = v1563_fu_440_p2[32'd5];
assign trunc_ln2149_fu_471_p1 = add_ln2149_1_fu_462_p2[8:0];
assign trunc_ln2151_fu_511_p1 = add_ln2151_fu_502_p2[8:0];
assign v1563_fu_440_p2 = (ap_sig_allocacmp_v156393_load + 6'd8);
assign v1587_1_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_1_ce0 = v1587_1_ce0_local;
assign v1587_1_d0 = v9267_6_q0;
assign v1587_1_we0 = v1587_1_we0_local;
assign v1587_2_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_2_ce0 = v1587_2_ce0_local;
assign v1587_2_d0 = v9267_5_q0;
assign v1587_2_we0 = v1587_2_we0_local;
assign v1587_3_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_3_ce0 = v1587_3_ce0_local;
assign v1587_3_d0 = v9267_4_q0;
assign v1587_3_we0 = v1587_3_we0_local;
assign v1587_4_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_4_ce0 = v1587_4_ce0_local;
assign v1587_4_d0 = v9267_3_q0;
assign v1587_4_we0 = v1587_4_we0_local;
assign v1587_5_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_5_ce0 = v1587_5_ce0_local;
assign v1587_5_d0 = v9267_2_q0;
assign v1587_5_we0 = v1587_5_we0_local;
assign v1587_6_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_6_ce0 = v1587_6_ce0_local;
assign v1587_6_d0 = v9267_1_q0;
assign v1587_6_we0 = v1587_6_we0_local;
assign v1587_7_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_7_ce0 = v1587_7_ce0_local;
assign v1587_7_d0 = v9267_0_q0;
assign v1587_7_we0 = v1587_7_we0_local;
assign v1587_address0 = zext_ln2146_1_fu_545_p1;
assign v1587_ce0 = v1587_ce0_local;
assign v1587_d0 = v9267_7_q0;
assign v1587_we0 = v1587_we0_local;
assign v9267_0_address0 = zext_ln2149_2_fu_494_p1;
assign v9267_0_ce0 = v9267_0_ce0_local;
assign v9267_1_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_1_ce0 = v9267_1_ce0_local;
assign v9267_2_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_2_ce0 = v9267_2_ce0_local;
assign v9267_3_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_3_ce0 = v9267_3_ce0_local;
assign v9267_4_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_4_ce0 = v9267_4_ce0_local;
assign v9267_5_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_5_ce0 = v9267_5_ce0_local;
assign v9267_6_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_6_ce0 = v9267_6_ce0_local;
assign v9267_7_address0 = zext_ln2151_2_fu_534_p1;
assign v9267_7_ce0 = v9267_7_ce0_local;
assign zext_ln2146_1_fu_545_p1 = lshr_ln_reg_575_pp0_iter1_reg;
assign zext_ln2146_2_fu_378_p1 = lshr_ln_fu_368_p4;
assign zext_ln2146_fu_364_p1 = ap_sig_allocacmp_v156393_load;
assign zext_ln2149_1_fu_459_p1 = sub_ln2149_reg_580;
assign zext_ln2149_2_fu_494_p1 = add_ln2149_2_fu_489_p2;
assign zext_ln2149_fu_394_p1 = add_ln2149_fu_388_p2;
assign zext_ln2151_1_fu_499_p1 = sub_ln2151_reg_585;
assign zext_ln2151_2_fu_534_p1 = add_ln2151_1_fu_529_p2;
assign zext_ln2151_fu_422_p1 = lshr_ln79_fu_412_p4;
endmodule 