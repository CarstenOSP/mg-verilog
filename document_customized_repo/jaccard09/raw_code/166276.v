module forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11264_address0,v11264_ce0,v11264_we0,v11264_d0,v11264_1_address0,v11264_1_ce0,v11264_1_we0,v11264_1_d0,v11258_0,v13707_0_address0,v13707_0_ce0,v13707_0_q0,v13707_1_address0,v13707_1_ce0,v13707_1_q0); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v11264_address0;
output   v11264_ce0;
output   v11264_we0;
output  [7:0] v11264_d0;
output  [12:0] v11264_1_address0;
output   v11264_1_ce0;
output   v11264_1_we0;
output  [7:0] v11264_1_d0;
input  [7:0] v11258_0;
output  [18:0] v13707_0_address0;
output   v13707_0_ce0;
input  [7:0] v13707_0_q0;
output  [18:0] v13707_1_address0;
output   v13707_1_ce0;
input  [7:0] v13707_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_173;
wire   [3:0] grp_fu_123_p2;
reg   [3:0] urem_ln14531_reg_183;
wire    ap_CS_fsm_state11;
wire   [4:0] rem4_fu_135_p3;
reg   [4:0] rem4_reg_188;
wire    ap_CS_fsm_state12;
wire   [8:0] mul9_i_fu_146_p3;
reg   [8:0] mul9_i_reg_193;
wire   [6:0] mul13_i_fu_159_p3;
reg   [6:0] mul13_i_reg_198;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_d0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [7:0] mul_ln14532_fu_89_p0;
wire   [16:0] zext_ln14532_fu_85_p1;
wire   [9:0] mul_ln14532_fu_89_p1;
wire   [16:0] mul_ln14532_fu_89_p2;
wire   [21:0] mul_ln14532_cast_fu_95_p1;
wire   [7:0] mul_ln14531_fu_107_p0;
wire   [9:0] mul_ln14531_fu_107_p1;
wire   [16:0] mul_ln14531_fu_107_p2;
wire   [6:0] grp_fu_123_p0;
wire   [4:0] grp_fu_123_p1;
wire   [2:0] grp_fu_129_p1;
wire   [3:0] empty_fu_143_p1;
wire   [1:0] grp_fu_129_p2;
wire   [1:0] empty_371_fu_155_p1;
reg    grp_fu_123_ap_start;
wire    grp_fu_123_ap_done;
reg    grp_fu_123_ce;
reg    grp_fu_129_ap_start;
wire    grp_fu_129_ap_done;
reg    grp_fu_129_ce;
reg   [12:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_ready),.rem4(rem4_reg_188),.mul9_i(mul9_i_reg_193),.v11264_address0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_address0),.v11264_ce0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_ce0),.v11264_we0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_we0),.v11264_d0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_d0),.v11264_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_address0),.v11264_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_ce0),.v11264_1_we0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_we0),.v11264_1_d0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_d0),.mul13_i(mul13_i_reg_198),.v13707_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_address0),.v13707_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_ce0),.v13707_0_q0(v13707_0_q0),.v13707_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_address0),.v13707_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_ce0),.v13707_1_q0(v13707_1_q0));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U3398(.din0(mul_ln14532_fu_89_p0),.din1(mul_ln14532_fu_89_p1),.dout(mul_ln14532_fu_89_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U3399(.din0(mul_ln14531_fu_107_p0),.din1(mul_ln14531_fu_107_p1),.dout(mul_ln14531_fu_107_p2));
forward_urem_7ns_5ns_4_11_seq_1 #(.ID( 1 ),.NUM_STAGE( 11 ),.din0_WIDTH( 7 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_7ns_5ns_4_11_seq_1_U3400(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_123_ap_start),.done(grp_fu_123_ap_done),.din0(grp_fu_123_p0),.din1(grp_fu_123_p1),.ce(grp_fu_123_ce),.dout(grp_fu_123_p2));
forward_urem_8ns_3ns_2_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_8ns_3ns_2_12_seq_1_U3401(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_129_ap_start),.done(grp_fu_129_ap_done),.din0(v11258_0),.din1(grp_fu_129_p1),.ce(grp_fu_129_ce),.dout(grp_fu_129_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul13_i_reg_198[6 : 5] <= mul13_i_fu_159_p3[6 : 5];
        mul9_i_reg_193[8 : 5] <= mul9_i_fu_146_p3[8 : 5];
        rem4_reg_188[4] <= rem4_fu_135_p3[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_173 <= mul_ln14532_cast_fu_95_p1[32'd13];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        urem_ln14531_reg_183 <= grp_fu_123_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_123_ap_start = 1'b1;
    end else begin
        grp_fu_123_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13))) begin
        grp_fu_123_ce = 1'b0;
    end else begin
        grp_fu_123_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_129_ap_start = 1'b1;
    end else begin
        grp_fu_129_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_129_ce = 1'b0;
    end else begin
        grp_fu_129_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_371_fu_155_p1 = grp_fu_129_p2[1:0];
assign empty_fu_143_p1 = urem_ln14531_reg_183[3:0];
assign grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_ap_start_reg;
assign grp_fu_123_p0 = {{mul_ln14531_fu_107_p2[16:10]}};
assign grp_fu_123_p1 = 7'd10;
assign grp_fu_129_p1 = 8'd3;
assign mul13_i_fu_159_p3 = {{empty_371_fu_155_p1}, {5'd0}};
assign mul9_i_fu_146_p3 = {{empty_fu_143_p1}, {5'd0}};
assign mul_ln14531_fu_107_p0 = zext_ln14532_fu_85_p1;
assign mul_ln14531_fu_107_p1 = 17'd342;
assign mul_ln14532_cast_fu_95_p1 = mul_ln14532_fu_89_p2;
assign mul_ln14532_fu_89_p0 = zext_ln14532_fu_85_p1;
assign mul_ln14532_fu_89_p1 = 17'd274;
assign rem4_fu_135_p3 = {{tmp_reg_173}, {4'd0}};
assign v11264_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_address0;
assign v11264_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_ce0;
assign v11264_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_d0;
assign v11264_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_1_we0;
assign v11264_address0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_address0;
assign v11264_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_ce0;
assign v11264_d0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_d0;
assign v11264_we0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v11264_we0;
assign v13707_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_address0;
assign v13707_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_0_ce0;
assign v13707_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_address0;
assign v13707_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_Pipeline_VITI_fu_70_v13707_1_ce0;
assign zext_ln14532_fu_85_p1 = v11258_0;
always @ (posedge ap_clk) begin
    rem4_reg_188[3:0] <= 4'b0000;
    mul9_i_reg_193[4:0] <= 5'b00000;
    mul13_i_reg_198[4:0] <= 5'b00000;
end
endmodule 