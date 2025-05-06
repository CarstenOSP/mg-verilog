
module forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13700_1_address0,v13700_1_ce0,v13700_1_we0,v13700_1_d0,v13700_0_address0,v13700_0_ce0,v13700_0_we0,v13700_0_d0,p_read,v12818_1_address0,v12818_1_ce0,v12818_1_q0,v12818_address0,v12818_ce0,v12818_q0);  
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
output  [19:0] v13700_1_address0;
output   v13700_1_ce0;
output   v13700_1_we0;
output  [7:0] v13700_1_d0;
output  [19:0] v13700_0_address0;
output   v13700_0_ce0;
output   v13700_0_we0;
output  [7:0] v13700_0_d0;
input  [9:0] p_read;
output  [11:0] v12818_1_address0;
output   v12818_1_ce0;
input  [7:0] v12818_1_q0;
output  [11:0] v12818_address0;
output   v12818_ce0;
input  [7:0] v12818_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_173;
wire    ap_CS_fsm_state2;
reg   [7:0] trunc_ln_reg_178;
wire   [3:0] rem4_fu_133_p3;
reg   [3:0] rem4_reg_183;
wire    ap_CS_fsm_state14;
wire   [9:0] mul9_i_fu_145_p3;
reg   [9:0] mul9_i_reg_188;
wire   [7:0] mul13_i_fu_158_p3;
reg   [7:0] mul13_i_reg_193;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_ready;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_d0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg;
wire    ap_CS_fsm_state15;
wire   [3:0] grp_fu_85_p1;
wire   [9:0] mul_ln16563_fu_94_p0;
wire   [20:0] zext_ln16563_fu_91_p1;
wire   [11:0] mul_ln16563_fu_94_p1;
wire   [20:0] mul_ln16563_fu_94_p2;
wire   [27:0] mul_ln16563_cast_fu_100_p1;
wire   [9:0] mul_ln16562_fu_112_p0;
wire   [11:0] mul_ln16562_fu_112_p1;
wire   [20:0] mul_ln16562_fu_112_p2;
wire   [5:0] grp_fu_128_p1;
wire    ap_CS_fsm_state3;
wire   [4:0] grp_fu_128_p2;
wire   [4:0] empty_fu_141_p1;
wire   [2:0] grp_fu_85_p2;
wire   [2:0] empty_345_fu_154_p1;
reg    grp_fu_85_ap_start;
wire    grp_fu_85_ap_done;
reg    grp_fu_85_ce;
reg    grp_fu_128_ap_start;
wire    grp_fu_128_ap_done;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_ready),.v13700_0_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_address0),.v13700_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_ce0),.v13700_0_we0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_we0),.v13700_0_d0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_d0),.v13700_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_address0),.v13700_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_ce0),.v13700_1_we0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_we0),.v13700_1_d0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_d0),.rem4(rem4_reg_183),.mul9_i(mul9_i_reg_188),.v12818_1_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_address0),.v12818_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_ce0),.v12818_1_q0(v12818_1_q0),.v12818_address0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_address0),.v12818_ce0(grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_ce0),.v12818_q0(v12818_q0),.mul13_i(mul13_i_reg_193));
forward_urem_10ns_4ns_3_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_10ns_4ns_3_14_seq_1_U1517(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_85_ap_start),.done(grp_fu_85_ap_done),.din0(p_read),.din1(grp_fu_85_p1),.ce(grp_fu_85_ce),.dout(grp_fu_85_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U1518(.din0(mul_ln16563_fu_94_p0),.din1(mul_ln16563_fu_94_p1),.dout(mul_ln16563_fu_94_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U1519(.din0(mul_ln16562_fu_112_p0),.din1(mul_ln16562_fu_112_p1),.dout(mul_ln16562_fu_112_p2));
forward_urem_8ns_6ns_5_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.dout_WIDTH( 5 ))
urem_8ns_6ns_5_12_seq_1_U1520(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_128_ap_start),.done(grp_fu_128_ap_done),.din0(trunc_ln_reg_178),.din1(grp_fu_128_p1),.ce(1'b1),.dout(grp_fu_128_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul13_i_reg_193[7 : 5] <= mul13_i_fu_158_p3[7 : 5];
        mul9_i_reg_188[9 : 5] <= mul9_i_fu_145_p3[9 : 5];
        rem4_reg_183[3] <= rem4_fu_133_p3[3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_reg_173 <= mul_ln16563_cast_fu_100_p1[32'd17];
        trunc_ln_reg_178 <= {{mul_ln16562_fu_112_p2[20:13]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_128_ap_start = 1'b1;
    end else begin
        grp_fu_128_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_85_ap_start = 1'b1;
    end else begin
        grp_fu_85_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_85_ce = 1'b0;
    end else begin
        grp_fu_85_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
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
assign empty_345_fu_154_p1 = grp_fu_85_p2[2:0];
assign empty_fu_141_p1 = grp_fu_128_p2[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_ap_start_reg;
assign grp_fu_128_p1 = 8'd20;
assign grp_fu_85_p1 = 10'd6;
assign mul13_i_fu_158_p3 = {{empty_345_fu_154_p1}, {5'd0}};
assign mul9_i_fu_145_p3 = {{empty_fu_141_p1}, {5'd0}};
assign mul_ln16562_fu_112_p0 = zext_ln16563_fu_91_p1;
assign mul_ln16562_fu_112_p1 = 21'd1366;
assign mul_ln16563_cast_fu_100_p1 = mul_ln16563_fu_94_p2;
assign mul_ln16563_fu_94_p0 = zext_ln16563_fu_91_p1;
assign mul_ln16563_fu_94_p1 = 21'd1093;
assign rem4_fu_133_p3 = {{tmp_reg_173}, {3'd0}};
assign v12818_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_address0;
assign v12818_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_1_ce0;
assign v12818_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_address0;
assign v12818_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v12818_ce0;
assign v13700_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_address0;
assign v13700_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_ce0;
assign v13700_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_d0;
assign v13700_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_0_we0;
assign v13700_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_address0;
assign v13700_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_ce0;
assign v13700_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_d0;
assign v13700_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_Pipeline_VITI_fu_70_v13700_1_we0;
assign zext_ln16563_fu_91_p1 = p_read;
always @ (posedge ap_clk) begin
    rem4_reg_183[2:0] <= 3'b000;
    mul9_i_reg_188[4:0] <= 5'b00000;
    mul13_i_reg_193[4:0] <= 5'b00000;
end
endmodule 
