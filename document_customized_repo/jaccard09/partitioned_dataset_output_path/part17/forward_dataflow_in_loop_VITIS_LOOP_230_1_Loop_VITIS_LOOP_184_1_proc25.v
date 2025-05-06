
module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v88_address0,v88_ce0,v88_we0,v88_d0,v88_1_address0,v88_1_ce0,v88_1_we0,v88_1_d0,v82_0,v13696_0_address0,v13696_0_ce0,v13696_0_q0,v13696_1_address0,v13696_1_ce0,v13696_1_q0);  
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
output  [8:0] v88_address0;
output   v88_ce0;
output   v88_we0;
output  [7:0] v88_d0;
output  [8:0] v88_1_address0;
output   v88_1_ce0;
output   v88_1_we0;
output  [7:0] v88_1_d0;
input  [12:0] v82_0;
output  [21:0] v13696_0_address0;
output   v13696_0_ce0;
input  [7:0] v13696_0_q0;
output  [21:0] v13696_1_address0;
output   v13696_1_ce0;
input  [7:0] v13696_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [6:0] tmp_reg_146;
wire   [11:0] mul_i_fu_102_p3;
reg   [11:0] mul_i_reg_151;
wire    ap_CS_fsm_state17;
wire   [10:0] mul5_i_fu_134_p2;
reg   [10:0] mul5_i_reg_156;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_d0;
wire   [21:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_ce0;
wire   [21:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg;
wire    ap_CS_fsm_state18;
wire   [12:0] mul_ln233_fu_80_p0;
wire   [14:0] mul_ln233_fu_80_p1;
wire   [26:0] mul_ln233_fu_80_p2;
wire   [6:0] grp_fu_96_p1;
wire   [9:0] grp_fu_96_p2;
wire   [5:0] empty_fu_110_p1;
wire   [9:0] empty_306_fu_122_p1;
wire   [10:0] p_shl_fu_114_p3;
wire   [10:0] p_shl29_fu_126_p3;
reg    grp_fu_96_ap_start;
wire    grp_fu_96_ap_done;
reg    grp_fu_96_ce;
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
wire   [26:0] mul_ln233_fu_80_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 18'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_ready),.mul_i(mul_i_reg_151),.v88_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_address0),.v88_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_ce0),.v88_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_we0),.v88_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_d0),.v88_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_address0),.v88_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_ce0),.v88_1_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_we0),.v88_1_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_d0),.mul5_i(mul5_i_reg_156),.v13696_0_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_address0),.v13696_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_ce0),.v13696_0_q0(v13696_0_q0),.v13696_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_address0),.v13696_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_ce0),.v13696_1_q0(v13696_1_q0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U14497(.din0(mul_ln233_fu_80_p0),.din1(mul_ln233_fu_80_p1),.dout(mul_ln233_fu_80_p2));
forward_urem_13ns_7ns_10_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 7 ),.dout_WIDTH( 10 ))
urem_13ns_7ns_10_17_seq_1_U14498(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_96_ap_start),.done(grp_fu_96_ap_done),.din0(v82_0),.din1(grp_fu_96_p1),.ce(grp_fu_96_ce),.dout(grp_fu_96_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        mul5_i_reg_156[10 : 1] <= mul5_i_fu_134_p2[10 : 1];
        mul_i_reg_151[11 : 5] <= mul_i_fu_102_p3[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_146 <= {{mul_ln233_fu_80_p2[25:19]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_96_ap_start = 1'b1;
    end else begin
        grp_fu_96_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_96_ce = 1'b0;
    end else begin
        grp_fu_96_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_306_fu_122_p1 = grp_fu_96_p2[9:0];
assign empty_fu_110_p1 = grp_fu_96_p2[5:0];
assign grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_ap_start_reg;
assign grp_fu_96_p1 = 13'd49;
assign mul5_i_fu_134_p2 = (p_shl_fu_114_p3 - p_shl29_fu_126_p3);
assign mul_i_fu_102_p3 = {{tmp_reg_146}, {5'd0}};
assign mul_ln233_fu_80_p0 = mul_ln233_fu_80_p00;
assign mul_ln233_fu_80_p00 = v82_0;
assign mul_ln233_fu_80_p1 = 27'd10700;
assign p_shl29_fu_126_p3 = {{empty_306_fu_122_p1}, {1'd0}};
assign p_shl_fu_114_p3 = {{empty_fu_110_p1}, {5'd0}};
assign v13696_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_address0;
assign v13696_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_0_ce0;
assign v13696_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_address0;
assign v13696_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v13696_1_ce0;
assign v88_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_address0;
assign v88_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_ce0;
assign v88_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_d0;
assign v88_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_1_we0;
assign v88_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_address0;
assign v88_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_ce0;
assign v88_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_d0;
assign v88_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO_fu_62_v88_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_151[4:0] <= 5'b00000;
    mul5_i_reg_156[0] <= 1'b0;
end
endmodule 
