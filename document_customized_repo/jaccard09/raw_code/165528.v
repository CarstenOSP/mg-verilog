module forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v673_address0,v673_ce0,v673_we0,v673_d0,v673_1_address0,v673_1_ce0,v673_1_we0,v673_1_d0,v667_0,v16214_0_address0,v16214_0_ce0,v16214_0_q0,v16214_1_address0,v16214_1_ce0,v16214_1_q0); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v673_address0;
output   v673_ce0;
output   v673_we0;
output  [7:0] v673_d0;
output  [3:0] v673_1_address0;
output   v673_1_ce0;
output   v673_1_we0;
output  [7:0] v673_1_d0;
input  [11:0] v667_0;
output  [13:0] v16214_0_address0;
output   v16214_0_ce0;
input  [7:0] v16214_0_q0;
output  [13:0] v16214_1_address0;
output   v16214_1_ce0;
input  [7:0] v16214_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_reg_162;
reg   [8:0] trunc_ln_reg_168;
wire   [2:0] grp_fu_128_p2;
reg   [2:0] urem_ln1204_reg_173;
wire    ap_CS_fsm_state14;
wire   [2:0] grp_fu_106_p2;
reg   [2:0] urem_ln1203_reg_178;
wire    ap_CS_fsm_state16;
wire   [8:0] rem4_fu_133_p3;
reg   [8:0] rem4_reg_183;
wire    ap_CS_fsm_state17;
wire   [7:0] shl_ln_fu_141_p3;
reg   [7:0] shl_ln_reg_188;
wire   [2:0] empty_fu_149_p1;
reg   [2:0] empty_reg_193;
wire   [2:0] trunc_ln1154_fu_153_p1;
reg   [2:0] trunc_ln1154_reg_198;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg;
wire    ap_CS_fsm_state18;
wire   [11:0] mul_ln1205_fu_90_p0;
wire   [24:0] zext_ln1205_fu_86_p1;
wire   [13:0] mul_ln1205_fu_90_p1;
wire   [24:0] mul_ln1205_fu_90_p2;
wire   [3:0] grp_fu_106_p1;
wire   [11:0] mul_ln1204_fu_112_p0;
wire   [13:0] mul_ln1204_fu_112_p1;
wire   [24:0] mul_ln1204_fu_112_p2;
wire   [3:0] grp_fu_128_p1;
wire    ap_CS_fsm_state2;
reg    grp_fu_106_ap_start;
wire    grp_fu_106_ap_done;
reg    grp_fu_106_ce;
reg    grp_fu_128_ap_start;
wire    grp_fu_128_ap_done;
reg   [17:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 18'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_ready),.rem4(rem4_reg_183),.shl_ln(shl_ln_reg_188),.urem_ln1204_cast(trunc_ln1154_reg_198),.urem_ln1203_cast(empty_reg_193),.v16214_0_address0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_address0),.v16214_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_ce0),.v16214_0_q0(v16214_0_q0),.v16214_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_address0),.v16214_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_ce0),.v16214_1_q0(v16214_1_q0),.v673_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_address0),.v673_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_ce0),.v673_1_we0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_we0),.v673_1_d0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_d0),.v673_address0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_address0),.v673_ce0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_ce0),.v673_we0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_we0),.v673_d0(grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_d0));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U16313(.din0(mul_ln1205_fu_90_p0),.din1(mul_ln1205_fu_90_p1),.dout(mul_ln1205_fu_90_p2));
forward_urem_12ns_4ns_3_16_seq_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_12ns_4ns_3_16_seq_1_U16314(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_106_ap_start),.done(grp_fu_106_ap_done),.din0(v667_0),.din1(grp_fu_106_p1),.ce(grp_fu_106_ce),.dout(grp_fu_106_p2));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U16315(.din0(mul_ln1204_fu_112_p0),.din1(mul_ln1204_fu_112_p1),.dout(mul_ln1204_fu_112_p2));
forward_urem_9ns_4ns_3_13_seq_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_seq_1_U16316(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_128_ap_start),.done(grp_fu_128_ap_done),.din0(trunc_ln_reg_168),.din1(grp_fu_128_p1),.ce(1'b1),.dout(grp_fu_128_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state18) & (grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        empty_reg_193 <= empty_fu_149_p1;
        rem4_reg_183[8 : 5] <= rem4_fu_133_p3[8 : 5];
        shl_ln_reg_188[7 : 4] <= shl_ln_fu_141_p3[7 : 4];
        trunc_ln1154_reg_198 <= trunc_ln1154_fu_153_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_162 <= {{mul_ln1205_fu_90_p2[21:18]}};
        trunc_ln_reg_168 <= {{mul_ln1204_fu_112_p2[23:15]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        urem_ln1203_reg_178 <= grp_fu_106_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        urem_ln1204_reg_173 <= grp_fu_128_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state18) & (grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state18) & (grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_106_ap_start = 1'b1;
    end else begin
        grp_fu_106_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_106_ce = 1'b0;
    end else begin
        grp_fu_106_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_128_ap_start = 1'b1;
    end else begin
        grp_fu_128_ap_start = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_149_p1 = urem_ln1203_reg_178[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_ap_start_reg;
assign grp_fu_106_p1 = 12'd7;
assign grp_fu_128_p1 = 9'd7;
assign mul_ln1204_fu_112_p0 = zext_ln1205_fu_86_p1;
assign mul_ln1204_fu_112_p1 = 25'd4682;
assign mul_ln1205_fu_90_p0 = zext_ln1205_fu_86_p1;
assign mul_ln1205_fu_90_p1 = 25'd5350;
assign rem4_fu_133_p3 = {{tmp_reg_162}, {5'd0}};
assign shl_ln_fu_141_p3 = {{tmp_reg_162}, {4'd0}};
assign trunc_ln1154_fu_153_p1 = urem_ln1204_reg_173[2:0];
assign v16214_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_address0;
assign v16214_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_0_ce0;
assign v16214_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_address0;
assign v16214_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v16214_1_ce0;
assign v673_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_address0;
assign v673_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_ce0;
assign v673_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_d0;
assign v673_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_1_we0;
assign v673_address0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_address0;
assign v673_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_ce0;
assign v673_d0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_d0;
assign v673_we0 = grp_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_Pipeline_VITIS_LO_fu_70_v673_we0;
assign zext_ln1205_fu_86_p1 = v667_0;
always @ (posedge ap_clk) begin
    rem4_reg_183[4:0] <= 5'b00000;
    shl_ln_reg_188[3:0] <= 4'b0000;
end
endmodule 