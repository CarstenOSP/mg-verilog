module forward_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v622_address0,v622_ce0,v622_we0,v622_d0,v622_1_address0,v622_1_ce0,v622_1_we0,v622_1_d0,v622_2_address0,v622_2_ce0,v622_2_we0,v622_2_d0,v622_3_address0,v622_3_ce0,v622_3_we0,v622_3_d0,v616_0,v16215_0_address0,v16215_0_ce0,v16215_0_q0,v16215_1_address0,v16215_1_ce0,v16215_1_q0,v16215_2_address0,v16215_2_ce0,v16215_2_q0,v16215_3_address0,v16215_3_ce0,v16215_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] v622_address0;
output   v622_ce0;
output   v622_we0;
output  [7:0] v622_d0;
output  [2:0] v622_1_address0;
output   v622_1_ce0;
output   v622_1_we0;
output  [7:0] v622_1_d0;
output  [2:0] v622_2_address0;
output   v622_2_ce0;
output   v622_2_we0;
output  [7:0] v622_2_d0;
output  [2:0] v622_3_address0;
output   v622_3_ce0;
output   v622_3_we0;
output  [7:0] v622_3_d0;
input  [15:0] v616_0;
output  [12:0] v16215_0_address0;
output   v16215_0_ce0;
input  [7:0] v16215_0_q0;
output  [12:0] v16215_1_address0;
output   v16215_1_ce0;
input  [7:0] v16215_1_q0;
output  [12:0] v16215_2_address0;
output   v16215_2_ce0;
input  [7:0] v16215_2_q0;
output  [12:0] v16215_3_address0;
output   v16215_3_ce0;
input  [7:0] v16215_3_q0;
output  [15:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [9:0] trunc_ln_fu_106_p4;
reg   [3:0] tmp_reg_197;
reg   [6:0] trunc_ln1058_1_reg_203;
wire   [2:0] grp_fu_158_p2;
reg   [2:0] urem_ln1058_reg_208;
wire    ap_CS_fsm_state12;
wire   [8:0] mul_i_fu_163_p3;
reg   [8:0] mul_i_reg_213;
wire    ap_CS_fsm_state14;
wire   [6:0] shl_ln_fu_171_p3;
reg   [6:0] shl_ln_reg_218;
wire   [2:0] trunc_ln1057_fu_179_p1;
reg   [2:0] trunc_ln1057_reg_223;
wire   [2:0] trunc_ln956_fu_183_p1;
reg   [2:0] trunc_ln956_reg_228;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg;
wire    ap_CS_fsm_state15;
wire   [9:0] mul_ln1059_fu_120_p0;
wire   [20:0] zext_ln1059_fu_116_p1;
wire   [11:0] mul_ln1059_fu_120_p1;
wire   [20:0] mul_ln1059_fu_120_p2;
wire   [9:0] mul_ln1058_fu_136_p0;
wire   [11:0] mul_ln1058_fu_136_p1;
wire   [20:0] mul_ln1058_fu_136_p2;
wire   [9:0] grp_fu_152_p0;
wire   [3:0] grp_fu_152_p1;
wire   [3:0] grp_fu_158_p1;
wire    ap_CS_fsm_state2;
wire   [2:0] grp_fu_152_p2;
reg    grp_fu_152_ap_start;
wire    grp_fu_152_ap_done;
reg    grp_fu_152_ce;
reg    grp_fu_158_ap_start;
wire    grp_fu_158_ap_done;
reg   [15:0] ap_return_preg;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 15'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg = 1'b0;
#0 ap_return_preg = 16'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_ready),.mul_i(mul_i_reg_213),.shl_ln(shl_ln_reg_218),.idxprom1_i711(trunc_ln1057_reg_223),.idxprom3_i2(trunc_ln956_reg_228),.v16215_0_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_address0),.v16215_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_ce0),.v16215_0_q0(v16215_0_q0),.v16215_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_address0),.v16215_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_ce0),.v16215_1_q0(v16215_1_q0),.v16215_2_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_address0),.v16215_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_ce0),.v16215_2_q0(v16215_2_q0),.v16215_3_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_address0),.v16215_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_ce0),.v16215_3_q0(v16215_3_q0),.v622_3_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_address0),.v622_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_ce0),.v622_3_we0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_we0),.v622_3_d0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_d0),.v622_2_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_address0),.v622_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_ce0),.v622_2_we0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_we0),.v622_2_d0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_d0),.v622_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_address0),.v622_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_ce0),.v622_1_we0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_we0),.v622_1_d0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_d0),.v622_address0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_address0),.v622_ce0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_ce0),.v622_we0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_we0),.v622_d0(grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_d0));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U16413(.din0(mul_ln1059_fu_120_p0),.din1(mul_ln1059_fu_120_p1),.dout(mul_ln1059_fu_120_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U16414(.din0(mul_ln1058_fu_136_p0),.din1(mul_ln1058_fu_136_p1),.dout(mul_ln1058_fu_136_p2));
forward_urem_10ns_4ns_3_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_10ns_4ns_3_14_seq_1_U16415(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_152_ap_start),.done(grp_fu_152_ap_done),.din0(grp_fu_152_p0),.din1(grp_fu_152_p1),.ce(grp_fu_152_ce),.dout(grp_fu_152_p2));
forward_urem_7ns_4ns_3_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_7ns_4ns_3_11_seq_1_U16416(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_158_ap_start),.done(grp_fu_158_ap_done),.din0(trunc_ln1058_1_reg_203),.din1(grp_fu_158_p1),.ce(1'b1),.dout(grp_fu_158_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
            ap_return_preg <= v616_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_i_reg_213[8 : 5] <= mul_i_fu_163_p3[8 : 5];
        shl_ln_reg_218[6 : 3] <= shl_ln_fu_171_p3[6 : 3];
        trunc_ln1057_reg_223 <= trunc_ln1057_fu_179_p1;
        trunc_ln956_reg_228 <= trunc_ln956_fu_183_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_197 <= {{mul_ln1059_fu_120_p2[19:16]}};
        trunc_ln1058_1_reg_203 <= {{mul_ln1058_fu_136_p2[19:13]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        urem_ln1058_reg_208 <= grp_fu_158_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
        ap_return = v616_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_152_ap_start = 1'b1;
    end else begin
        grp_fu_152_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_152_ce = 1'b0;
    end else begin
        grp_fu_152_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_158_ap_start = 1'b1;
    end else begin
        grp_fu_158_ap_start = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_ap_start_reg;
assign grp_fu_152_p0 = {{v616_0[15:6]}};
assign grp_fu_152_p1 = 10'd7;
assign grp_fu_158_p1 = 7'd7;
assign mul_i_fu_163_p3 = {{tmp_reg_197}, {5'd0}};
assign mul_ln1058_fu_136_p0 = zext_ln1059_fu_116_p1;
assign mul_ln1058_fu_136_p1 = 21'd1171;
assign mul_ln1059_fu_120_p0 = zext_ln1059_fu_116_p1;
assign mul_ln1059_fu_120_p1 = 21'd1338;
assign shl_ln_fu_171_p3 = {{tmp_reg_197}, {3'd0}};
assign trunc_ln1057_fu_179_p1 = urem_ln1058_reg_208[2:0];
assign trunc_ln956_fu_183_p1 = grp_fu_152_p2[2:0];
assign trunc_ln_fu_106_p4 = {{v616_0[15:6]}};
assign v16215_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_address0;
assign v16215_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_0_ce0;
assign v16215_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_address0;
assign v16215_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_1_ce0;
assign v16215_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_address0;
assign v16215_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_2_ce0;
assign v16215_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_address0;
assign v16215_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v16215_3_ce0;
assign v622_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_address0;
assign v622_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_ce0;
assign v622_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_d0;
assign v622_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_1_we0;
assign v622_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_address0;
assign v622_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_ce0;
assign v622_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_d0;
assign v622_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_2_we0;
assign v622_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_address0;
assign v622_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_ce0;
assign v622_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_d0;
assign v622_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_3_we0;
assign v622_address0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_address0;
assign v622_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_ce0;
assign v622_d0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_d0;
assign v622_we0 = grp_dataflow_in_loop_VITIS_LOOP_1054_1_Loop_VITIS_LOOP_956_1_proc_Pipeline_VITIS_LOO_fu_82_v622_we0;
assign zext_ln1059_fu_116_p1 = trunc_ln_fu_106_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_213[4:0] <= 5'b00000;
    shl_ln_reg_218[2:0] <= 3'b000;
end
endmodule 