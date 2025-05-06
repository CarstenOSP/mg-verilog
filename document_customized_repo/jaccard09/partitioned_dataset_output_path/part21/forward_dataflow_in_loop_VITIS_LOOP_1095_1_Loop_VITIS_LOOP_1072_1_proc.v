
module forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v561_address0,v561_ce0,v561_we0,v561_d0,v561_1_address0,v561_1_ce0,v561_1_we0,v561_1_d0,v554_0,v9032_0_address0,v9032_0_ce0,v9032_0_q0,v9032_1_address0,v9032_1_ce0,v9032_1_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v561_address0;
output   v561_ce0;
output   v561_we0;
output  [7:0] v561_d0;
output  [3:0] v561_1_address0;
output   v561_1_ce0;
output   v561_1_we0;
output  [7:0] v561_1_d0;
input  [10:0] v554_0;
output  [14:0] v9032_0_address0;
output   v9032_0_ce0;
input  [7:0] v9032_0_q0;
output  [14:0] v9032_1_address0;
output   v9032_1_ce0;
input  [7:0] v9032_1_q0;
output  [10:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [2:0] tmp_reg_240;
wire    ap_CS_fsm_state2;
reg   [1:0] tmp_247_reg_246;
reg   [8:0] trunc_ln_reg_251;
reg   [3:0] trunc_ln20_reg_256;
wire   [3:0] add2_i_fu_194_p2;
reg   [3:0] add2_i_reg_261;
wire    ap_CS_fsm_state15;
wire   [3:0] add6_i_fu_212_p2;
reg   [3:0] add6_i_reg_266;
wire   [7:0] rem4_fu_218_p3;
reg   [7:0] rem4_reg_271;
wire    ap_CS_fsm_state16;
wire   [6:0] shl_ln_fu_226_p3;
reg   [6:0] shl_ln_reg_276;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_ready;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg;
wire    ap_CS_fsm_state17;
wire   [3:0] grp_fu_102_p1;
wire   [10:0] mul_ln1099_fu_111_p0;
wire   [22:0] zext_ln1099_fu_108_p1;
wire   [12:0] mul_ln1099_fu_111_p1;
wire   [22:0] mul_ln1099_fu_111_p2;
wire   [10:0] mul_ln1101_fu_127_p0;
wire   [12:0] mul_ln1101_fu_127_p1;
wire   [22:0] mul_ln1101_fu_127_p2;
wire   [10:0] mul_ln1098_fu_143_p0;
wire   [12:0] mul_ln1098_fu_143_p1;
wire   [22:0] mul_ln1098_fu_143_p2;
wire   [3:0] grp_fu_169_p1;
wire    ap_CS_fsm_state3;
wire   [2:0] grp_fu_174_p1;
wire    ap_CS_fsm_state8;
wire   [2:0] grp_fu_169_p2;
wire   [2:0] empty_fu_182_p1;
wire   [3:0] zext_ln1101_fu_179_p1;
wire   [3:0] mul1_i_fu_186_p3;
wire   [2:0] grp_fu_102_p2;
wire   [2:0] empty_232_fu_200_p1;
wire   [3:0] grp_fu_174_p2;
wire   [3:0] mul5_i_fu_204_p3;
reg    grp_fu_102_ap_start;
wire    grp_fu_102_ap_done;
reg    grp_fu_102_ce;
reg    grp_fu_169_ap_start;
wire    grp_fu_169_ap_done;
reg    grp_fu_174_ap_start;
wire    grp_fu_174_ap_done;
reg   [10:0] ap_return_preg;
reg   [16:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 17'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg = 1'b0;
#0 ap_return_preg = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_ready),.rem4(rem4_reg_271),.shl_ln(shl_ln_reg_276),.idxprom3_i19(add2_i_reg_261),.idxprom7_i(add6_i_reg_266),.v9032_0_address0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_address0),.v9032_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_ce0),.v9032_0_q0(v9032_0_q0),.v9032_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_address0),.v9032_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_ce0),.v9032_1_q0(v9032_1_q0),.v561_1_address0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_address0),.v561_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_ce0),.v561_1_we0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_we0),.v561_1_d0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_d0),.v561_address0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_address0),.v561_ce0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_ce0),.v561_we0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_we0),.v561_d0(grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_d0));
forward_urem_11ns_4ns_3_15_seq_1 #(.ID( 1 ),.NUM_STAGE( 15 ),.din0_WIDTH( 11 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_11ns_4ns_3_15_seq_1_U9525(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_102_ap_start),.done(grp_fu_102_ap_done),.din0(v554_0),.din1(grp_fu_102_p1),.ce(grp_fu_102_ce),.dout(grp_fu_102_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U9526(.din0(mul_ln1099_fu_111_p0),.din1(mul_ln1099_fu_111_p1),.dout(mul_ln1099_fu_111_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U9527(.din0(mul_ln1101_fu_127_p0),.din1(mul_ln1101_fu_127_p1),.dout(mul_ln1101_fu_127_p2));
forward_mul_11ns_13ns_23_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 13 ),.dout_WIDTH( 23 ))
mul_11ns_13ns_23_1_1_U9528(.din0(mul_ln1098_fu_143_p0),.din1(mul_ln1098_fu_143_p1),.dout(mul_ln1098_fu_143_p2));
forward_urem_9ns_4ns_3_13_seq_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_seq_1_U9529(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_169_ap_start),.done(grp_fu_169_ap_done),.din0(trunc_ln_reg_251),.din1(grp_fu_169_p1),.ce(1'b1),.dout(grp_fu_169_p2));
forward_urem_4ns_3ns_4_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 4 ))
urem_4ns_3ns_4_8_seq_1_U9530(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_174_ap_start),.done(grp_fu_174_ap_done),.din0(trunc_ln20_reg_256),.din1(grp_fu_174_p1),.ce(1'b1),.dout(grp_fu_174_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 11'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
            ap_return_preg <= v554_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        add2_i_reg_261 <= add2_i_fu_194_p2;
        add6_i_reg_266 <= add6_i_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        rem4_reg_271[7 : 5] <= rem4_fu_218_p3[7 : 5];
        shl_ln_reg_276[6 : 4] <= shl_ln_fu_226_p3[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_247_reg_246 <= {{mul_ln1101_fu_127_p2[22:21]}};
        tmp_reg_240 <= {{mul_ln1099_fu_111_p2[18:16]}};
        trunc_ln20_reg_256 <= {{mul_ln1099_fu_111_p2[22:19]}};
        trunc_ln_reg_251 <= {{mul_ln1098_fu_143_p2[22:14]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
        ap_return = v554_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_102_ap_start = 1'b1;
    end else begin
        grp_fu_102_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_102_ce = 1'b0;
    end else begin
        grp_fu_102_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_169_ap_start = 1'b1;
    end else begin
        grp_fu_169_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_174_ap_start = 1'b1;
    end else begin
        grp_fu_174_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state17) & (grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add2_i_fu_194_p2 = (zext_ln1101_fu_179_p1 + mul1_i_fu_186_p3);
assign add6_i_fu_212_p2 = (grp_fu_174_p2 + mul5_i_fu_204_p3);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_232_fu_200_p1 = grp_fu_102_p2[2:0];
assign empty_fu_182_p1 = grp_fu_169_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_ap_start_reg;
assign grp_fu_102_p1 = 11'd5;
assign grp_fu_169_p1 = 9'd5;
assign grp_fu_174_p1 = 4'd3;
assign mul1_i_fu_186_p3 = {{empty_fu_182_p1}, {1'd0}};
assign mul5_i_fu_204_p3 = {{empty_232_fu_200_p1}, {1'd0}};
assign mul_ln1098_fu_143_p0 = zext_ln1099_fu_108_p1;
assign mul_ln1098_fu_143_p1 = 23'd3277;
assign mul_ln1099_fu_111_p0 = zext_ln1099_fu_108_p1;
assign mul_ln1099_fu_111_p1 = 23'd2622;
assign mul_ln1101_fu_127_p0 = zext_ln1099_fu_108_p1;
assign mul_ln1101_fu_127_p1 = 23'd3496;
assign rem4_fu_218_p3 = {{tmp_reg_240}, {5'd0}};
assign shl_ln_fu_226_p3 = {{tmp_reg_240}, {4'd0}};
assign v561_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_address0;
assign v561_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_ce0;
assign v561_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_d0;
assign v561_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_1_we0;
assign v561_address0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_address0;
assign v561_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_ce0;
assign v561_d0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_d0;
assign v561_we0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v561_we0;
assign v9032_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_address0;
assign v9032_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_0_ce0;
assign v9032_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_address0;
assign v9032_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_Pipeline_VITIS_LO_fu_86_v9032_1_ce0;
assign zext_ln1099_fu_108_p1 = v554_0;
assign zext_ln1101_fu_179_p1 = tmp_247_reg_246;
always @ (posedge ap_clk) begin
    rem4_reg_271[4:0] <= 5'b00000;
    shl_ln_reg_276[3:0] <= 4'b0000;
end
endmodule 
