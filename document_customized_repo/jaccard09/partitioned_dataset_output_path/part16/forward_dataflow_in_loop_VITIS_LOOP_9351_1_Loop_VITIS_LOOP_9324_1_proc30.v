
module forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7301_address0,v7301_ce0,v7301_we0,v7301_d0,v7301_1_address0,v7301_1_ce0,v7301_1_we0,v7301_1_d0,v7294_0,v9014_0_address0,v9014_0_ce0,v9014_0_q0,v9014_1_address0,v9014_1_ce0,v9014_1_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v7301_address0;
output   v7301_ce0;
output   v7301_we0;
output  [7:0] v7301_d0;
output  [13:0] v7301_1_address0;
output   v7301_1_ce0;
output   v7301_1_we0;
output  [7:0] v7301_1_d0;
input  [6:0] v7294_0;
output  [19:0] v9014_0_address0;
output   v9014_0_ce0;
input  [7:0] v9014_0_q0;
output  [19:0] v9014_1_address0;
output   v9014_1_ce0;
input  [7:0] v9014_1_q0;
output  [6:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [4:0] trunc_ln_fu_93_p4;
reg   [1:0] udiv_ln_cast_reg_205;
reg   [0:0] tmp_reg_210;
wire   [0:0] empty_101_fu_159_p1;
reg   [0:0] empty_101_reg_220;
wire   [1:0] grp_fu_153_p2;
reg   [1:0] urem_ln9356_reg_225;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i_fu_167_p3;
reg   [6:0] mul_i_reg_230;
wire    ap_CS_fsm_state9;
wire   [4:0] select_ln9356_fu_176_p3;
reg   [4:0] select_ln9356_reg_235;
wire   [1:0] empty_100_fu_184_p1;
reg   [1:0] empty_100_reg_240;
wire   [4:0] zext_ln9324_3_cast_cast_fu_188_p3;
reg   [4:0] zext_ln9324_3_cast_cast_reg_245;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_d0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_ce0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] grp_fu_103_p0;
wire   [2:0] grp_fu_103_p1;
wire   [4:0] mul_ln9357_fu_113_p0;
wire   [10:0] zext_ln9357_fu_109_p1;
wire   [6:0] mul_ln9357_fu_113_p1;
wire   [10:0] mul_ln9357_fu_113_p2;
wire   [4:0] mul_ln9356_fu_137_p0;
wire   [6:0] mul_ln9356_fu_137_p1;
wire   [10:0] mul_ln9356_fu_137_p2;
wire   [3:0] grp_fu_153_p0;
wire   [2:0] grp_fu_153_p1;
wire   [1:0] grp_fu_103_p2;
wire   [1:0] empty_fu_163_p1;
reg    grp_fu_103_ap_start;
wire    grp_fu_103_ap_done;
reg    grp_fu_103_ce;
reg    grp_fu_153_ap_start;
wire    grp_fu_153_ap_done;
reg    grp_fu_153_ce;
reg   [6:0] ap_return_preg;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg = 1'b0;
#0 ap_return_preg = 7'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_ready),.mul_i(mul_i_reg_230),.udiv_ln9357_cast(udiv_ln_cast_reg_205),.select_ln9356(select_ln9356_reg_235),.v7301_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_address0),.v7301_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_ce0),.v7301_we0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_we0),.v7301_d0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_d0),.v7301_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_address0),.v7301_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_ce0),.v7301_1_we0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_we0),.v7301_1_d0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_d0),.urem_ln9356_cast(empty_100_reg_240),.zext_ln9324_3_cast_cast(zext_ln9324_3_cast_cast_reg_245),.v9014_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_address0),.v9014_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_ce0),.v9014_0_q0(v9014_0_q0),.v9014_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_address0),.v9014_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_ce0),.v9014_1_q0(v9014_1_q0));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U2937(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_103_ap_start),.done(grp_fu_103_ap_done),.din0(grp_fu_103_p0),.din1(grp_fu_103_p1),.ce(grp_fu_103_ce),.dout(grp_fu_103_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U2938(.din0(mul_ln9357_fu_113_p0),.din1(mul_ln9357_fu_113_p1),.dout(mul_ln9357_fu_113_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U2939(.din0(mul_ln9356_fu_137_p0),.din1(mul_ln9356_fu_137_p1),.dout(mul_ln9356_fu_137_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U2940(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_153_ap_start),.done(grp_fu_153_ap_done),.din0(grp_fu_153_p0),.din1(grp_fu_153_p1),.ce(grp_fu_153_ce),.dout(grp_fu_153_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 7'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
            ap_return_preg <= v7294_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_100_reg_240 <= empty_100_fu_184_p1;
        mul_i_reg_230[6 : 5] <= mul_i_fu_167_p3[6 : 5];
        select_ln9356_reg_235[2 : 1] <= select_ln9356_fu_176_p3[2 : 1];
select_ln9356_reg_235[4] <= select_ln9356_fu_176_p3[4];
        zext_ln9324_3_cast_cast_reg_245[2 : 1] <= zext_ln9324_3_cast_cast_fu_188_p3[2 : 1];
zext_ln9324_3_cast_cast_reg_245[4] <= zext_ln9324_3_cast_cast_fu_188_p3[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_101_reg_220 <= empty_101_fu_159_p1;
        tmp_reg_210 <= v7294_0[32'd1];
        udiv_ln_cast_reg_205 <= {{mul_ln9357_fu_113_p2[10:9]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        urem_ln9356_reg_225 <= grp_fu_153_p2;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
        ap_return = v7294_0;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_103_ce = 1'b0;
    end else begin
        grp_fu_103_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_153_ap_start = 1'b1;
    end else begin
        grp_fu_153_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_153_ce = 1'b0;
    end else begin
        grp_fu_153_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_100_fu_184_p1 = urem_ln9356_reg_225[1:0];
assign empty_101_fu_159_p1 = v7294_0[0:0];
assign empty_fu_163_p1 = grp_fu_103_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_ap_start_reg;
assign grp_fu_103_p0 = {{v7294_0[6:2]}};
assign grp_fu_103_p1 = 5'd3;
assign grp_fu_153_p0 = {{mul_ln9356_fu_137_p2[10:7]}};
assign grp_fu_153_p1 = 4'd3;
assign mul_i_fu_167_p3 = {{empty_fu_163_p1}, {5'd0}};
assign mul_ln9356_fu_137_p0 = zext_ln9357_fu_109_p1;
assign mul_ln9356_fu_137_p1 = 11'd43;
assign mul_ln9357_fu_113_p0 = zext_ln9357_fu_109_p1;
assign mul_ln9357_fu_113_p1 = 11'd57;
assign select_ln9356_fu_176_p3 = ((tmp_reg_210[0:0] == 1'b1) ? 5'd22 : 5'd0);
assign trunc_ln_fu_93_p4 = {{v7294_0[6:2]}};
assign v7301_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_address0;
assign v7301_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_ce0;
assign v7301_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_d0;
assign v7301_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_1_we0;
assign v7301_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_address0;
assign v7301_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_ce0;
assign v7301_d0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_d0;
assign v7301_we0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v7301_we0;
assign v9014_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_address0;
assign v9014_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_0_ce0;
assign v9014_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_address0;
assign v9014_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_Pipeline_VITIS_s_fu_76_v9014_1_ce0;
assign zext_ln9324_3_cast_cast_fu_188_p3 = ((empty_101_reg_220[0:0] == 1'b1) ? 5'd22 : 5'd0);
assign zext_ln9357_fu_109_p1 = trunc_ln_fu_93_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_230[4:0] <= 5'b00000;
    select_ln9356_reg_235[0] <= 1'b0;
    select_ln9356_reg_235[3] <= 1'b0;
    zext_ln9324_3_cast_cast_reg_245[0] <= 1'b0;
    zext_ln9324_3_cast_cast_reg_245[3] <= 1'b0;
end
endmodule 
