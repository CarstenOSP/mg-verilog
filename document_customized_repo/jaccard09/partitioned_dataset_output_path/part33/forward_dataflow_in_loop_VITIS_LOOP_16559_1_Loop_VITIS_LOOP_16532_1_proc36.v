
module forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12817_address0,v12817_ce0,v12817_we0,v12817_d0,v12817_1_address0,v12817_1_ce0,v12817_1_we0,v12817_1_d0,v12810_0,v13699_0_address0,v13699_0_ce0,v13699_0_q0,v13699_1_address0,v13699_1_ce0,v13699_1_q0,v13699_2_address0,v13699_2_ce0,v13699_2_q0,v13699_3_address0,v13699_3_ce0,v13699_3_q0,ap_return);  
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
output  [11:0] v12817_address0;
output   v12817_ce0;
output   v12817_we0;
output  [7:0] v12817_d0;
output  [11:0] v12817_1_address0;
output   v12817_1_ce0;
output   v12817_1_we0;
output  [7:0] v12817_1_d0;
input  [9:0] v12810_0;
output  [20:0] v13699_0_address0;
output   v13699_0_ce0;
input  [7:0] v13699_0_q0;
output  [20:0] v13699_1_address0;
output   v13699_1_ce0;
input  [7:0] v13699_1_q0;
output  [20:0] v13699_2_address0;
output   v13699_2_ce0;
input  [7:0] v13699_2_q0;
output  [20:0] v13699_3_address0;
output   v13699_3_ce0;
input  [7:0] v13699_3_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_203;
wire    ap_CS_fsm_state2;
reg   [1:0] tmp_365_reg_208;
reg   [7:0] trunc_ln_reg_213;
reg   [0:0] tmp_366_reg_218;
wire   [3:0] rem4_fu_170_p3;
reg   [3:0] rem4_reg_223;
wire    ap_CS_fsm_state14;
wire   [10:0] tmp_6_fu_182_p4;
reg   [10:0] tmp_6_reg_228;
wire   [2:0] trunc_ln16564_fu_192_p1;
reg   [2:0] trunc_ln16564_reg_233;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_d0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_ce0;
wire   [20:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg;
wire    ap_CS_fsm_state15;
wire   [3:0] grp_fu_100_p1;
wire   [9:0] mul_ln16563_fu_109_p0;
wire   [20:0] zext_ln16563_fu_106_p1;
wire   [11:0] mul_ln16563_fu_109_p1;
wire   [20:0] mul_ln16563_fu_109_p2;
wire   [27:0] mul_ln16563_cast_fu_115_p1;
wire   [9:0] mul_ln16562_fu_137_p0;
wire   [11:0] mul_ln16562_fu_137_p1;
wire   [20:0] mul_ln16562_fu_137_p2;
wire   [28:0] zext_ln16564_fu_153_p1;
wire   [5:0] grp_fu_165_p1;
wire    ap_CS_fsm_state3;
wire   [4:0] grp_fu_165_p2;
wire   [4:0] empty_fu_178_p1;
wire   [2:0] grp_fu_100_p2;
reg    grp_fu_100_ap_start;
wire    grp_fu_100_ap_done;
reg    grp_fu_100_ce;
reg    grp_fu_165_ap_start;
wire    grp_fu_165_ap_done;
reg   [9:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_ready),.rem4(rem4_reg_223),.tmp_6(tmp_6_reg_228),.v12817_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_address0),.v12817_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_ce0),.v12817_we0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_we0),.v12817_d0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_d0),.v12817_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_address0),.v12817_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_ce0),.v12817_1_we0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_we0),.v12817_1_d0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_d0),.urem_ln16561(trunc_ln16564_reg_233),.v13699_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_address0),.v13699_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_ce0),.v13699_0_q0(v13699_0_q0),.v13699_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_address0),.v13699_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_ce0),.v13699_1_q0(v13699_1_q0),.v13699_2_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_address0),.v13699_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_ce0),.v13699_2_q0(v13699_2_q0),.v13699_3_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_address0),.v13699_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_ce0),.v13699_3_q0(v13699_3_q0),.empty(tmp_366_reg_218));
forward_urem_10ns_4ns_3_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_10ns_4ns_3_14_seq_1_U1474(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_100_ap_start),.done(grp_fu_100_ap_done),.din0(v12810_0),.din1(grp_fu_100_p1),.ce(grp_fu_100_ce),.dout(grp_fu_100_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U1475(.din0(mul_ln16563_fu_109_p0),.din1(mul_ln16563_fu_109_p1),.dout(mul_ln16563_fu_109_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U1476(.din0(mul_ln16562_fu_137_p0),.din1(mul_ln16562_fu_137_p1),.dout(mul_ln16562_fu_137_p2));
forward_urem_8ns_6ns_5_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.dout_WIDTH( 5 ))
urem_8ns_6ns_5_12_seq_1_U1477(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_165_ap_start),.done(grp_fu_165_ap_done),.din0(trunc_ln_reg_213),.din1(grp_fu_165_p1),.ce(1'b1),.dout(grp_fu_165_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
            ap_return_preg <= v12810_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        rem4_reg_223[3] <= rem4_fu_170_p3[3];
        tmp_6_reg_228[1 : 0] <= tmp_6_fu_182_p4[1 : 0];
tmp_6_reg_228[10 : 6] <= tmp_6_fu_182_p4[10 : 6];
        trunc_ln16564_reg_233 <= trunc_ln16564_fu_192_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_365_reg_208 <= {{mul_ln16563_fu_109_p2[20:19]}};
        tmp_366_reg_218 <= zext_ln16564_fu_153_p1[32'd18];
        tmp_reg_203 <= mul_ln16563_cast_fu_115_p1[32'd17];
        trunc_ln_reg_213 <= {{mul_ln16562_fu_137_p2[20:13]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
        ap_return = v12810_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_100_ap_start = 1'b1;
    end else begin
        grp_fu_100_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_100_ce = 1'b0;
    end else begin
        grp_fu_100_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_165_ap_start = 1'b1;
    end else begin
        grp_fu_165_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
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
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_178_p1 = grp_fu_165_p2[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_ap_start_reg;
assign grp_fu_100_p1 = 10'd6;
assign grp_fu_165_p1 = 8'd20;
assign mul_ln16562_fu_137_p0 = zext_ln16563_fu_106_p1;
assign mul_ln16562_fu_137_p1 = 21'd1366;
assign mul_ln16563_cast_fu_115_p1 = mul_ln16563_fu_109_p2;
assign mul_ln16563_fu_109_p0 = zext_ln16563_fu_106_p1;
assign mul_ln16563_fu_109_p1 = 21'd1093;
assign rem4_fu_170_p3 = {{tmp_reg_203}, {3'd0}};
assign tmp_6_fu_182_p4 = {{{empty_fu_178_p1}, {4'd0}}, {tmp_365_reg_208}};
assign trunc_ln16564_fu_192_p1 = grp_fu_100_p2[2:0];
assign v12817_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_address0;
assign v12817_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_ce0;
assign v12817_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_d0;
assign v12817_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_1_we0;
assign v12817_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_address0;
assign v12817_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_ce0;
assign v12817_d0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_d0;
assign v12817_we0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v12817_we0;
assign v13699_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_address0;
assign v13699_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_0_ce0;
assign v13699_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_address0;
assign v13699_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_1_ce0;
assign v13699_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_address0;
assign v13699_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_2_ce0;
assign v13699_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_address0;
assign v13699_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_Pipeline_VITI_fu_80_v13699_3_ce0;
assign zext_ln16563_fu_106_p1 = v12810_0;
assign zext_ln16564_fu_153_p1 = mul_ln16563_fu_109_p2;
always @ (posedge ap_clk) begin
    rem4_reg_223[2:0] <= 3'b000;
    tmp_6_reg_228[5:2] <= 4'b0000;
end
endmodule 
