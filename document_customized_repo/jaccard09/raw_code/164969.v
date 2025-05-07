module forward_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v87_address0,v87_ce0,v87_we0,v87_d0,v87_1_address0,v87_1_ce0,v87_1_we0,v87_1_d0,v83_0,v9275_0_address0,v9275_0_ce0,v9275_0_q0,v9275_1_address0,v9275_1_ce0,v9275_1_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v87_address0;
output   v87_ce0;
output   v87_we0;
output  [7:0] v87_d0;
output  [3:0] v87_1_address0;
output   v87_1_ce0;
output   v87_1_we0;
output  [7:0] v87_1_d0;
input  [9:0] v83_0;
output  [13:0] v9275_0_address0;
output   v9275_0_ce0;
input  [7:0] v9275_0_q0;
output  [13:0] v9275_1_address0;
output   v9275_1_ce0;
input  [7:0] v9275_1_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [3:0] empty_fu_80_p1;
reg   [3:0] empty_reg_145;
wire   [5:0] trunc_ln_fu_84_p4;
reg   [2:0] udiv_ln_cast_reg_156;
wire   [8:0] rem_fu_120_p3;
reg   [8:0] rem_reg_161;
wire    ap_CS_fsm_state10;
wire   [7:0] shl_ln_fu_128_p3;
reg   [7:0] shl_ln_reg_166;
wire   [2:0] trunc_ln193_fu_136_p1;
reg   [2:0] trunc_ln193_reg_171;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln217_fu_98_p0;
wire   [7:0] mul_ln217_fu_98_p1;
wire   [12:0] mul_ln217_fu_98_p2;
wire   [5:0] grp_fu_114_p0;
wire   [3:0] grp_fu_114_p1;
wire   [2:0] grp_fu_114_p2;
reg    grp_fu_114_ap_start;
wire    grp_fu_114_ap_done;
reg    grp_fu_114_ce;
reg   [9:0] ap_return_preg;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire   [12:0] mul_ln217_fu_98_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_ready),.rem_r(rem_reg_161),.shl_ln(shl_ln_reg_166),.idxprom1_i61(udiv_ln_cast_reg_156),.idxprom3_i2(trunc_ln193_reg_171),.v9275_0_address0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_address0),.v9275_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_ce0),.v9275_0_q0(v9275_0_q0),.v9275_1_address0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_address0),.v9275_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_ce0),.v9275_1_q0(v9275_1_q0),.v87_1_address0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_address0),.v87_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_ce0),.v87_1_we0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_we0),.v87_1_d0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_d0),.v87_address0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_address0),.v87_ce0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_ce0),.v87_we0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_we0),.v87_d0(grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_d0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U12919(.din0(mul_ln217_fu_98_p0),.din1(mul_ln217_fu_98_p1),.dout(mul_ln217_fu_98_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U12920(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_114_ap_start),.done(grp_fu_114_ap_done),.din0(grp_fu_114_p0),.din1(grp_fu_114_p1),.ce(grp_fu_114_ce),.dout(grp_fu_114_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_return_preg <= v83_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_145 <= empty_fu_80_p1;
        udiv_ln_cast_reg_156 <= {{mul_ln217_fu_98_p2[11:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        rem_reg_161[8 : 5] <= rem_fu_120_p3[8 : 5];
        shl_ln_reg_166[7 : 4] <= shl_ln_fu_128_p3[7 : 4];
        trunc_ln193_reg_171 <= trunc_ln193_fu_136_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_return = v83_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_114_ap_start = 1'b1;
    end else begin
        grp_fu_114_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_114_ce = 1'b0;
    end else begin
        grp_fu_114_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
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
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_80_p1 = v83_0[3:0];
assign grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_ap_start_reg;
assign grp_fu_114_p0 = {{v83_0[9:4]}};
assign grp_fu_114_p1 = 6'd7;
assign mul_ln217_fu_98_p0 = mul_ln217_fu_98_p00;
assign mul_ln217_fu_98_p00 = trunc_ln_fu_84_p4;
assign mul_ln217_fu_98_p1 = 13'd74;
assign rem_fu_120_p3 = {{empty_reg_145}, {5'd0}};
assign shl_ln_fu_128_p3 = {{empty_reg_145}, {4'd0}};
assign trunc_ln193_fu_136_p1 = grp_fu_114_p2[2:0];
assign trunc_ln_fu_84_p4 = {{v83_0[9:4]}};
assign v87_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_address0;
assign v87_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_ce0;
assign v87_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_d0;
assign v87_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_1_we0;
assign v87_address0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_address0;
assign v87_ce0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_ce0;
assign v87_d0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_d0;
assign v87_we0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v87_we0;
assign v9275_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_address0;
assign v9275_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_0_ce0;
assign v9275_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_address0;
assign v9275_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_Pipeline_VITIS_LOOP_fu_64_v9275_1_ce0;
always @ (posedge ap_clk) begin
    rem_reg_161[4:0] <= 5'b00000;
    shl_ln_reg_166[3:0] <= 4'b0000;
end
endmodule 