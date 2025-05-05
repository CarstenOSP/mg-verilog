module forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v94_0,v15508_address0,v15508_ce0,v15508_q0,v99_address0,v99_ce0,v99_we0,v99_d0,ap_return); 
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
input  [10:0] v94_0;
output  [15:0] v15508_address0;
output   v15508_ce0;
input  [7:0] v15508_q0;
output  [4:0] v99_address0;
output   v99_ce0;
output   v99_we0;
output  [7:0] v99_d0;
output  [10:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [4:0] empty_fu_69_p1;
reg   [4:0] empty_reg_126;
wire   [5:0] trunc_ln_fu_73_p4;
reg   [2:0] udiv_ln_cast_reg_136;
wire   [9:0] rem_fu_109_p3;
reg   [9:0] rem_reg_141;
wire    ap_CS_fsm_state10;
wire   [2:0] trunc_ln233_fu_117_p1;
reg   [2:0] trunc_ln233_reg_146;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln252_fu_87_p0;
wire   [7:0] mul_ln252_fu_87_p1;
wire   [12:0] mul_ln252_fu_87_p2;
wire   [5:0] grp_fu_103_p0;
wire   [3:0] grp_fu_103_p1;
wire   [2:0] grp_fu_103_p2;
reg    grp_fu_103_ap_start;
wire    grp_fu_103_ap_done;
reg    grp_fu_103_ce;
reg   [10:0] ap_return_preg;
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
wire   [12:0] mul_ln252_fu_87_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg = 1'b0;
#0 ap_return_preg = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready),.rem_r(rem_reg_141),.idxprom1_i241(udiv_ln_cast_reg_136),.idxprom3_i2(trunc_ln233_reg_146),.v15508_address0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_address0),.v15508_ce0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_ce0),.v15508_q0(v15508_q0),.v99_address0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_address0),.v99_ce0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_ce0),.v99_we0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_we0),.v99_d0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_d0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U14960(.din0(mul_ln252_fu_87_p0),.din1(mul_ln252_fu_87_p1),.dout(mul_ln252_fu_87_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U14961(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_103_ap_start),.done(grp_fu_103_ap_done),.din0(grp_fu_103_p0),.din1(grp_fu_103_p1),.ce(grp_fu_103_ce),.dout(grp_fu_103_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 11'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_return_preg <= v94_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_126 <= empty_fu_69_p1;
        udiv_ln_cast_reg_136 <= {{mul_ln252_fu_87_p2[11:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        rem_reg_141[9 : 5] <= rem_fu_109_p3[9 : 5];
        trunc_ln233_reg_146 <= trunc_ln233_fu_117_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_return = v94_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_103_ap_start = 1'b1;
    end else begin
        grp_fu_103_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_103_ce = 1'b0;
    end else begin
        grp_fu_103_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
assign empty_fu_69_p1 = v94_0[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg;
assign grp_fu_103_p0 = {{v94_0[10:5]}};
assign grp_fu_103_p1 = 6'd7;
assign mul_ln252_fu_87_p0 = mul_ln252_fu_87_p00;
assign mul_ln252_fu_87_p00 = trunc_ln_fu_73_p4;
assign mul_ln252_fu_87_p1 = 13'd74;
assign rem_fu_109_p3 = {{empty_reg_126}, {5'd0}};
assign trunc_ln233_fu_117_p1 = grp_fu_103_p2[2:0];
assign trunc_ln_fu_73_p4 = {{v94_0[10:5]}};
assign v15508_address0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_address0;
assign v15508_ce0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v15508_ce0;
assign v99_address0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_address0;
assign v99_ce0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_ce0;
assign v99_d0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_d0;
assign v99_we0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_Pipeline_VITIS_LOOP_fu_58_v99_we0;
always @ (posedge ap_clk) begin
    rem_reg_141[4:0] <= 5'b00000;
end
endmodule 