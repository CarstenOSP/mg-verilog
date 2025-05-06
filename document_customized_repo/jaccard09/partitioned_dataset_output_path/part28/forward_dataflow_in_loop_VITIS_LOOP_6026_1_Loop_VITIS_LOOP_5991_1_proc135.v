
module forward_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4110_address0,v4110_ce0,v4110_we0,v4110_d0,v4110_1_address0,v4110_1_ce0,v4110_1_we0,v4110_1_d0,v4110_2_address0,v4110_2_ce0,v4110_2_we0,v4110_2_d0,v4110_3_address0,v4110_3_ce0,v4110_3_we0,v4110_3_d0,v4101_0,v9243_0_address0,v9243_0_ce0,v9243_0_q0,v9243_1_address0,v9243_1_ce0,v9243_1_q0,v9243_2_address0,v9243_2_ce0,v9243_2_q0,v9243_3_address0,v9243_3_ce0,v9243_3_q0);  
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v4110_address0;
output   v4110_ce0;
output   v4110_we0;
output  [7:0] v4110_d0;
output  [8:0] v4110_1_address0;
output   v4110_1_ce0;
output   v4110_1_we0;
output  [7:0] v4110_1_d0;
output  [8:0] v4110_2_address0;
output   v4110_2_ce0;
output   v4110_2_we0;
output  [7:0] v4110_2_d0;
output  [8:0] v4110_3_address0;
output   v4110_3_ce0;
output   v4110_3_we0;
output  [7:0] v4110_3_d0;
input  [11:0] v4101_0;
output  [13:0] v9243_0_address0;
output   v9243_0_ce0;
input  [7:0] v9243_0_q0;
output  [13:0] v9243_1_address0;
output   v9243_1_ce0;
input  [7:0] v9243_1_q0;
output  [13:0] v9243_2_address0;
output   v9243_2_ce0;
input  [7:0] v9243_2_q0;
output  [13:0] v9243_3_address0;
output   v9243_3_ce0;
input  [7:0] v9243_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] trunc_ln_fu_114_p4;
reg    ap_block_state1;
reg   [2:0] tmp_s_reg_222;
reg   [0:0] tmp_reg_228;
wire   [0:0] empty_277_fu_174_p1;
reg   [0:0] empty_277_reg_238;
wire   [1:0] grp_fu_168_p2;
reg   [1:0] urem_ln6032_reg_243;
wire    ap_CS_fsm_state9;
wire   [7:0] mul_i_fu_184_p3;
reg   [7:0] mul_i_reg_248;
wire    ap_CS_fsm_state11;
wire   [5:0] p_udiv36_cast_fu_192_p3;
reg   [5:0] p_udiv36_cast_reg_253;
wire   [3:0] select_ln6032_fu_200_p3;
reg   [3:0] select_ln6032_reg_258;
wire   [1:0] empty_fu_208_p1;
reg   [1:0] empty_reg_263;
wire   [1:0] empty_278_fu_212_p1;
reg   [1:0] empty_278_reg_268;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg;
wire    ap_CS_fsm_state12;
wire   [6:0] mul_ln6033_fu_128_p0;
wire   [14:0] zext_ln6033_fu_124_p1;
wire   [8:0] mul_ln6033_fu_128_p1;
wire   [14:0] mul_ln6033_fu_128_p2;
wire   [6:0] mul_ln6032_fu_152_p0;
wire   [8:0] mul_ln6032_fu_152_p1;
wire   [14:0] mul_ln6032_fu_152_p2;
wire   [4:0] grp_fu_168_p0;
wire   [2:0] grp_fu_168_p1;
wire   [6:0] grp_fu_178_p0;
wire   [2:0] grp_fu_178_p1;
wire   [1:0] grp_fu_178_p2;
reg    grp_fu_168_ap_start;
wire    grp_fu_168_ap_done;
reg    grp_fu_168_ce;
wire    ap_CS_fsm_state10;
reg    grp_fu_178_ap_start;
wire    grp_fu_178_ap_done;
reg    grp_fu_178_ce;
reg   [11:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 12'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_ready),.mul_i(mul_i_reg_248),.p_udiv36_cast(p_udiv36_cast_reg_253),.empty_97(empty_reg_263),.select_ln6032(select_ln6032_reg_258),.v4110_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_address0),.v4110_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_ce0),.v4110_we0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_we0),.v4110_d0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_d0),.v4110_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_address0),.v4110_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_ce0),.v4110_1_we0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_we0),.v4110_1_d0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_d0),.v4110_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_address0),.v4110_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_ce0),.v4110_2_we0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_we0),.v4110_2_d0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_d0),.v4110_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_address0),.v4110_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_ce0),.v4110_3_we0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_we0),.v4110_3_d0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_d0),.empty_98(empty_277_reg_238),.empty(empty_278_reg_268),.v9243_0_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_address0),.v9243_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_ce0),.v9243_0_q0(v9243_0_q0),.v9243_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_address0),.v9243_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_ce0),.v9243_1_q0(v9243_1_q0),.v9243_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_address0),.v9243_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_ce0),.v9243_2_q0(v9243_2_q0),.v9243_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_address0),.v9243_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_ce0),.v9243_3_q0(v9243_3_q0));
forward_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U7662(.din0(mul_ln6033_fu_128_p0),.din1(mul_ln6033_fu_128_p1),.dout(mul_ln6033_fu_128_p2));
forward_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U7663(.din0(mul_ln6032_fu_152_p0),.din1(mul_ln6032_fu_152_p1),.dout(mul_ln6032_fu_152_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U7664(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_168_ap_start),.done(grp_fu_168_ap_done),.din0(grp_fu_168_p0),.din1(grp_fu_168_p1),.ce(grp_fu_168_ce),.dout(grp_fu_168_p2));
forward_urem_7ns_3ns_2_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_7ns_3ns_2_11_seq_1_U7665(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_178_ap_start),.done(grp_fu_178_ap_done),.din0(grp_fu_178_p0),.din1(grp_fu_178_p1),.ce(grp_fu_178_ce),.dout(grp_fu_178_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state12) & (grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_277_reg_238 <= empty_277_fu_174_p1;
        tmp_reg_228 <= v4101_0[32'd1];
        tmp_s_reg_222 <= {{mul_ln6033_fu_128_p2[13:11]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_278_reg_268 <= empty_278_fu_212_p1;
        empty_reg_263 <= empty_fu_208_p1;
        mul_i_reg_248[7 : 5] <= mul_i_fu_184_p3[7 : 5];
        p_udiv36_cast_reg_253[5 : 3] <= p_udiv36_cast_fu_192_p3[5 : 3];
        select_ln6032_reg_258[0] <= select_ln6032_fu_200_p3[0];
select_ln6032_reg_258[3] <= select_ln6032_fu_200_p3[3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        urem_ln6032_reg_243 <= grp_fu_168_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state12) & (grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_168_ap_start = 1'b1;
    end else begin
        grp_fu_168_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_168_ce = 1'b0;
    end else begin
        grp_fu_168_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_178_ap_start = 1'b1;
    end else begin
        grp_fu_178_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_178_ce = 1'b0;
    end else begin
        grp_fu_178_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state12) & (grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_277_fu_174_p1 = v4101_0[0:0];
assign empty_278_fu_212_p1 = grp_fu_178_p2[1:0];
assign empty_fu_208_p1 = urem_ln6032_reg_243[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_ap_start_reg;
assign grp_fu_168_p0 = {{mul_ln6032_fu_152_p2[13:9]}};
assign grp_fu_168_p1 = 5'd3;
assign grp_fu_178_p0 = {{v4101_0[11:5]}};
assign grp_fu_178_p1 = 7'd3;
assign mul_i_fu_184_p3 = {{tmp_s_reg_222}, {5'd0}};
assign mul_ln6032_fu_152_p0 = zext_ln6033_fu_124_p1;
assign mul_ln6032_fu_152_p1 = 15'd171;
assign mul_ln6033_fu_128_p0 = zext_ln6033_fu_124_p1;
assign mul_ln6033_fu_128_p1 = 15'd228;
assign p_udiv36_cast_fu_192_p3 = {{tmp_s_reg_222}, {3'd0}};
assign select_ln6032_fu_200_p3 = ((tmp_reg_228[0:0] == 1'b1) ? 4'd6 : 4'd15);
assign trunc_ln_fu_114_p4 = {{v4101_0[11:5]}};
assign v4110_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_address0;
assign v4110_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_ce0;
assign v4110_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_d0;
assign v4110_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_1_we0;
assign v4110_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_address0;
assign v4110_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_ce0;
assign v4110_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_d0;
assign v4110_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_2_we0;
assign v4110_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_address0;
assign v4110_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_ce0;
assign v4110_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_d0;
assign v4110_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_3_we0;
assign v4110_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_address0;
assign v4110_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_ce0;
assign v4110_d0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_d0;
assign v4110_we0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v4110_we0;
assign v9243_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_address0;
assign v9243_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_0_ce0;
assign v9243_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_address0;
assign v9243_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_1_ce0;
assign v9243_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_address0;
assign v9243_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_2_ce0;
assign v9243_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_address0;
assign v9243_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5991_1_proc135_Pipeline_VITIS_fu_88_v9243_3_ce0;
assign zext_ln6033_fu_124_p1 = trunc_ln_fu_114_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_248[4:0] <= 5'b00000;
    p_udiv36_cast_reg_253[2:0] <= 3'b000;
    select_ln6032_reg_258[2:1] <= 2'b11;
end
endmodule 
