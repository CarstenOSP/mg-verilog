module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v86_address0,v86_ce0,v86_we0,v86_d0,v86_1_address0,v86_1_ce0,v86_1_we0,v86_1_d0,v82_0,v13694_0_address0,v13694_0_ce0,v13694_0_q0,v13694_1_address0,v13694_1_ce0,v13694_1_q0); 
parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v86_address0;
output   v86_ce0;
output   v86_we0;
output  [7:0] v86_d0;
output  [3:0] v86_1_address0;
output   v86_1_ce0;
output   v86_1_we0;
output  [7:0] v86_1_d0;
input  [12:0] v82_0;
output  [9:0] v13694_0_address0;
output   v13694_0_ce0;
input  [7:0] v13694_0_q0;
output  [9:0] v13694_1_address0;
output   v13694_1_ce0;
input  [7:0] v13694_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [10:0] mul5_i_fu_95_p2;
reg   [10:0] mul5_i_reg_106;
wire    ap_CS_fsm_state17;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire   [6:0] grp_fu_65_p1;
wire   [9:0] grp_fu_65_p2;
wire   [5:0] empty_fu_71_p1;
wire   [9:0] empty_308_fu_83_p1;
wire   [10:0] p_shl_fu_75_p3;
wire   [10:0] p_shl24_fu_87_p3;
reg    grp_fu_65_ap_start;
wire    grp_fu_65_ap_done;
reg    grp_fu_65_ce;
reg   [18:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state19_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 19'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_ready),.mul5_i(mul5_i_reg_106),.v13694_0_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_address0),.v13694_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_ce0),.v13694_0_q0(v13694_0_q0),.v13694_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_address0),.v13694_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_ce0),.v13694_1_q0(v13694_1_q0),.v86_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_address0),.v86_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_ce0),.v86_1_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_we0),.v86_1_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_d0),.v86_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_address0),.v86_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_ce0),.v86_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_we0),.v86_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_d0));
forward_urem_13ns_7ns_10_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 7 ),.dout_WIDTH( 10 ))
urem_13ns_7ns_10_17_seq_1_U14521(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_65_ap_start),.done(grp_fu_65_ap_done),.din0(v82_0),.din1(grp_fu_65_p1),.ce(grp_fu_65_ce),.dout(grp_fu_65_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        mul5_i_reg_106[10 : 1] <= mul5_i_fu_95_p2[10 : 1];
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_65_ap_start = 1'b1;
    end else begin
        grp_fu_65_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        grp_fu_65_ce = 1'b0;
    end else begin
        grp_fu_65_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
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
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_308_fu_83_p1 = grp_fu_65_p2[9:0];
assign empty_fu_71_p1 = grp_fu_65_p2[5:0];
assign grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_ap_start_reg;
assign grp_fu_65_p1 = 13'd49;
assign mul5_i_fu_95_p2 = (p_shl_fu_75_p3 - p_shl24_fu_87_p3);
assign p_shl24_fu_87_p3 = {{empty_308_fu_83_p1}, {1'd0}};
assign p_shl_fu_75_p3 = {{empty_fu_71_p1}, {5'd0}};
assign v13694_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_address0;
assign v13694_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_0_ce0;
assign v13694_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_address0;
assign v13694_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v13694_1_ce0;
assign v86_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_address0;
assign v86_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_ce0;
assign v86_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_d0;
assign v86_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_1_we0;
assign v86_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_address0;
assign v86_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_ce0;
assign v86_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_d0;
assign v86_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_Pipeline_VITIS_LOOP_fu_52_v86_we0;
always @ (posedge ap_clk) begin
    mul5_i_reg_106[0] <= 1'b0;
end
endmodule 