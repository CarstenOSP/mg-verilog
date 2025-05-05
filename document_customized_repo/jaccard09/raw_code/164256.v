module forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5908_0,v15502_address0,v15502_ce0,v15502_q0,v5916_address0,v5916_ce0,v5916_we0,v5916_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [13:0] v5908_0;
output  [15:0] v15502_address0;
output   v15502_ce0;
input  [7:0] v15502_q0;
output  [4:0] v5916_address0;
output   v5916_ce0;
output   v5916_we0;
output  [7:0] v5916_d0;
output  [13:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [4:0] tmp_s_reg_221;
wire    ap_CS_fsm_state3;
reg   [10:0] trunc_ln_reg_226;
reg   [1:0] udiv_ln6852_cast_reg_231;
wire   [1:0] grp_fu_154_p2;
reg   [1:0] urem_ln6851_reg_241;
wire    ap_CS_fsm_state10;
wire   [3:0] sub_i_fu_178_p2;
reg   [3:0] sub_i_reg_246;
wire    ap_CS_fsm_state18;
wire   [3:0] sub5_i_fu_201_p2;
reg   [3:0] sub5_i_reg_251;
wire   [9:0] rem4_fu_207_p3;
reg   [9:0] rem4_reg_256;
wire    ap_CS_fsm_state19;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_ready;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [3:0] grp_fu_87_p1;
wire   [13:0] mul_ln6850_fu_96_p0;
wire   [28:0] zext_ln6850_fu_93_p1;
wire   [15:0] mul_ln6850_fu_96_p1;
wire   [28:0] mul_ln6850_fu_96_p2;
wire   [13:0] mul_ln6849_fu_112_p0;
wire   [15:0] mul_ln6849_fu_112_p1;
wire   [28:0] mul_ln6849_fu_112_p2;
wire   [13:0] mul_ln6852_fu_128_p0;
wire   [15:0] mul_ln6852_fu_128_p1;
wire   [28:0] mul_ln6852_fu_128_p2;
wire   [3:0] grp_fu_154_p0;
wire   [2:0] grp_fu_154_p1;
wire   [3:0] grp_fu_160_p1;
wire    ap_CS_fsm_state4;
wire   [3:0] grp_fu_160_p2;
wire   [1:0] tmp_fu_169_p2;
wire  signed [3:0] tmp_cast_fu_174_p1;
wire   [3:0] trunc_ln6736_fu_165_p1;
wire   [3:0] grp_fu_87_p2;
wire   [1:0] empty_fu_188_p1;
wire   [1:0] tmp1_fu_191_p2;
wire  signed [3:0] tmp1_cast_fu_197_p1;
wire   [3:0] trunc_ln6737_fu_184_p1;
reg    grp_fu_87_ap_start;
wire    grp_fu_87_ap_done;
reg    grp_fu_87_ce;
reg    grp_fu_154_ap_start;
wire    grp_fu_154_ap_done;
reg    grp_fu_160_ap_start;
wire    grp_fu_160_ap_done;
reg   [13:0] ap_return_preg;
reg   [19:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 20'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg = 1'b0;
#0 ap_return_preg = 14'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_ready),.rem4(rem4_reg_256),.idxprom2_i(sub_i_reg_246),.idxprom6_i(sub5_i_reg_251),.v15502_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_address0),.v15502_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_ce0),.v15502_q0(v15502_q0),.v5916_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_address0),.v5916_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_ce0),.v5916_we0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_we0),.v5916_d0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_d0));
forward_urem_14ns_4ns_4_18_seq_1 #(.ID( 1 ),.NUM_STAGE( 18 ),.din0_WIDTH( 14 ),.din1_WIDTH( 4 ),.dout_WIDTH( 4 ))
urem_14ns_4ns_4_18_seq_1_U9376(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_87_ap_start),.done(grp_fu_87_ap_done),.din0(v5908_0),.din1(grp_fu_87_p1),.ce(grp_fu_87_ce),.dout(grp_fu_87_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U9377(.din0(mul_ln6850_fu_96_p0),.din1(mul_ln6850_fu_96_p1),.dout(mul_ln6850_fu_96_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U9378(.din0(mul_ln6849_fu_112_p0),.din1(mul_ln6849_fu_112_p1),.dout(mul_ln6849_fu_112_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U9379(.din0(mul_ln6852_fu_128_p0),.din1(mul_ln6852_fu_128_p1),.dout(mul_ln6852_fu_128_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U9380(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_154_ap_start),.done(grp_fu_154_ap_done),.din0(grp_fu_154_p0),.din1(grp_fu_154_p1),.ce(1'b1),.dout(grp_fu_154_p2));
forward_urem_11ns_4ns_4_15_seq_1 #(.ID( 1 ),.NUM_STAGE( 15 ),.din0_WIDTH( 11 ),.din1_WIDTH( 4 ),.dout_WIDTH( 4 ))
urem_11ns_4ns_4_15_seq_1_U9381(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_160_ap_start),.done(grp_fu_160_ap_done),.din0(trunc_ln_reg_226),.din1(grp_fu_160_p1),.ce(1'b1),.dout(grp_fu_160_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 14'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
            ap_return_preg <= v5908_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        rem4_reg_256[9 : 5] <= rem4_fu_207_p3[9 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        sub5_i_reg_251 <= sub5_i_fu_201_p2;
        sub_i_reg_246 <= sub_i_fu_178_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_221 <= {{mul_ln6850_fu_96_p2[24:20]}};
        trunc_ln_reg_226 <= {{mul_ln6849_fu_112_p2[27:17]}};
        udiv_ln6852_cast_reg_231 <= {{mul_ln6852_fu_128_p2[28:27]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln6851_reg_241 <= grp_fu_154_p2;
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
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
        ap_return = v5908_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_154_ap_start = 1'b1;
    end else begin
        grp_fu_154_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_160_ap_start = 1'b1;
    end else begin
        grp_fu_160_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_87_ap_start = 1'b1;
    end else begin
        grp_fu_87_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_87_ce = 1'b0;
    end else begin
        grp_fu_87_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_188_p1 = urem_ln6851_reg_241[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_ap_start_reg;
assign grp_fu_154_p0 = {{mul_ln6850_fu_96_p2[28:25]}};
assign grp_fu_154_p1 = 4'd3;
assign grp_fu_160_p1 = 11'd7;
assign grp_fu_87_p1 = 14'd7;
assign mul_ln6849_fu_112_p0 = zext_ln6850_fu_93_p1;
assign mul_ln6849_fu_112_p1 = 29'd18725;
assign mul_ln6850_fu_96_p0 = zext_ln6850_fu_93_p1;
assign mul_ln6850_fu_96_p1 = 29'd21400;
assign mul_ln6852_fu_128_p0 = zext_ln6850_fu_93_p1;
assign mul_ln6852_fu_128_p1 = 29'd28533;
assign rem4_fu_207_p3 = {{tmp_s_reg_221}, {5'd0}};
assign sub5_i_fu_201_p2 = ($signed(tmp1_cast_fu_197_p1) + $signed(trunc_ln6737_fu_184_p1));
assign sub_i_fu_178_p2 = ($signed(tmp_cast_fu_174_p1) + $signed(trunc_ln6736_fu_165_p1));
assign tmp1_cast_fu_197_p1 = $signed(tmp1_fu_191_p2);
assign tmp1_fu_191_p2 = ($signed(empty_fu_188_p1) + $signed(2'd3));
assign tmp_cast_fu_174_p1 = $signed(tmp_fu_169_p2);
assign tmp_fu_169_p2 = ($signed(udiv_ln6852_cast_reg_231) + $signed(2'd3));
assign trunc_ln6736_fu_165_p1 = grp_fu_160_p2[3:0];
assign trunc_ln6737_fu_184_p1 = grp_fu_87_p2[3:0];
assign v15502_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_address0;
assign v15502_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v15502_ce0;
assign v5916_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_address0;
assign v5916_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_ce0;
assign v5916_d0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_d0;
assign v5916_we0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_Pipeline_VITIS_LO_fu_76_v5916_we0;
assign zext_ln6850_fu_93_p1 = v5908_0;
always @ (posedge ap_clk) begin
    rem4_reg_256[4:0] <= 5'b00000;
end
endmodule 