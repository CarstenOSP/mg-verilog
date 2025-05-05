module forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v45_0,v40_0_address0,v40_0_ce0,v40_0_q0,v40_1_address0,v40_1_ce0,v40_1_q0,v49_1_address0,v49_1_ce0,v49_1_q0,v49_address0,v49_ce0,v49_q0,v48_address0,v48_ce0,v48_we0,v48_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [9:0] v45_0;
output  [7:0] v40_0_address0;
output   v40_0_ce0;
input  [7:0] v40_0_q0;
output  [7:0] v40_1_address0;
output   v40_1_ce0;
input  [7:0] v40_1_q0;
output  [8:0] v49_1_address0;
output   v49_1_ce0;
input  [7:0] v49_1_q0;
output  [8:0] v49_address0;
output   v49_ce0;
input  [7:0] v49_q0;
output  [4:0] v48_address0;
output   v48_ce0;
output   v48_we0;
output  [7:0] v48_d0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_reg_157;
wire    ap_CS_fsm_state14;
wire   [9:0] mul_ln99_fu_105_p2;
reg   [9:0] mul_ln99_reg_163;
reg   [4:0] tmp_353_reg_168;
wire   [8:0] mul_i_fu_121_p3;
reg   [8:0] mul_i_reg_173;
wire    ap_CS_fsm_state15;
wire   [7:0] tmp_s_fu_129_p3;
reg   [7:0] tmp_s_reg_178;
wire   [9:0] mul39_i_i_fu_144_p2;
reg   [9:0] mul39_i_i_reg_183;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [6:0] grp_fu_80_p1;
wire   [9:0] mul_ln129_fu_89_p0;
wire   [11:0] mul_ln129_fu_89_p1;
wire   [20:0] mul_ln129_fu_89_p2;
wire  signed [6:0] mul_ln99_fu_105_p0;
wire  signed [9:0] grp_fu_80_p2;
wire   [5:0] mul_ln99_fu_105_p1;
wire   [9:0] p_shl_fu_137_p3;
reg    grp_fu_80_ap_start;
wire    grp_fu_80_ap_done;
reg    grp_fu_80_ce;
reg   [9:0] ap_return_preg;
reg   [15:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state16_blk;
wire   [20:0] mul_ln129_fu_89_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 16'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_ready),.mul_i(mul_i_reg_173),.tmp_273(tmp_s_reg_178),.v40_0_address0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_address0),.v40_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_ce0),.v40_0_q0(v40_0_q0),.v40_1_address0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_address0),.v40_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_ce0),.v40_1_q0(v40_1_q0),.mul39_i_i(mul39_i_i_reg_183),.v49_1_address0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_address0),.v49_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_ce0),.v49_1_q0(v49_1_q0),.v49_address0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_address0),.v49_ce0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_ce0),.v49_q0(v49_q0),.mul_ln99(mul_ln99_reg_163),.v48_address0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_address0),.v48_ce0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_ce0),.v48_we0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_we0),.v48_d0(grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_d0));
forward_urem_10ns_7ns_10_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 7 ),.dout_WIDTH( 10 ))
urem_10ns_7ns_10_14_seq_1_U12992(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_80_ap_start),.done(grp_fu_80_ap_done),.din0(v45_0),.din1(grp_fu_80_p1),.ce(grp_fu_80_ce),.dout(grp_fu_80_p2));
forward_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U12993(.din0(mul_ln129_fu_89_p0),.din1(mul_ln129_fu_89_p1),.dout(mul_ln129_fu_89_p2));
forward_mul_7s_6ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 6 ),.dout_WIDTH( 10 ))
mul_7s_6ns_10_1_1_U12994(.din0(mul_ln99_fu_105_p0),.din1(mul_ln99_fu_105_p1),.dout(mul_ln99_fu_105_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
            ap_return_preg <= v45_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul39_i_i_reg_183[9 : 5] <= mul39_i_i_fu_144_p2[9 : 5];
        mul_i_reg_173[8 : 5] <= mul_i_fu_121_p3[8 : 5];
        tmp_s_reg_178[7 : 4] <= tmp_s_fu_129_p3[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln99_reg_163 <= mul_ln99_fu_105_p2;
        tmp_353_reg_168 <= {{mul_ln129_fu_89_p2[20:16]}};
        tmp_reg_157 <= {{mul_ln129_fu_89_p2[19:16]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
        ap_return = v45_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_80_ap_start = 1'b1;
    end else begin
        grp_fu_80_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_80_ce = 1'b0;
    end else begin
        grp_fu_80_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state16) & (grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
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
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_ap_start_reg;
assign grp_fu_80_p1 = 10'd40;
assign mul39_i_i_fu_144_p2 = (10'd0 - p_shl_fu_137_p3);
assign mul_i_fu_121_p3 = {{tmp_reg_157}, {5'd0}};
assign mul_ln129_fu_89_p0 = mul_ln129_fu_89_p00;
assign mul_ln129_fu_89_p00 = v45_0;
assign mul_ln129_fu_89_p1 = 21'd1639;
assign mul_ln99_fu_105_p0 = grp_fu_80_p2;
assign mul_ln99_fu_105_p1 = 10'd25;
assign p_shl_fu_137_p3 = {{tmp_353_reg_168}, {5'd0}};
assign tmp_s_fu_129_p3 = {{tmp_reg_157}, {4'd0}};
assign v40_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_address0;
assign v40_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_0_ce0;
assign v40_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_address0;
assign v40_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v40_1_ce0;
assign v48_address0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_address0;
assign v48_ce0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_ce0;
assign v48_d0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_d0;
assign v48_we0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v48_we0;
assign v49_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_address0;
assign v49_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_1_ce0;
assign v49_address0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_address0;
assign v49_ce0 = grp_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LOOP_s_fu_60_v49_ce0;
always @ (posedge ap_clk) begin
    mul_i_reg_173[4:0] <= 5'b00000;
    tmp_s_reg_178[3:0] <= 4'b0000;
    mul39_i_i_reg_183[4:0] <= 5'b00000;
end
endmodule 