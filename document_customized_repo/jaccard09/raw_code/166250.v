module forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9713_address0,v9713_ce0,v9713_we0,v9713_d0,v9713_1_address0,v9713_1_ce0,v9713_1_we0,v9713_1_d0,v9706_0,v13711_0_address0,v13711_0_ce0,v13711_0_q0,v13711_1_address0,v13711_1_ce0,v13711_1_q0,v13711_2_address0,v13711_2_ce0,v13711_2_q0,v13711_3_address0,v13711_3_ce0,v13711_3_q0,ap_return); 
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
output  [13:0] v9713_address0;
output   v9713_ce0;
output   v9713_we0;
output  [7:0] v9713_d0;
output  [13:0] v9713_1_address0;
output   v9713_1_ce0;
output   v9713_1_we0;
output  [7:0] v9713_1_d0;
input  [6:0] v9706_0;
output  [18:0] v13711_0_address0;
output   v13711_0_ce0;
input  [7:0] v13711_0_q0;
output  [18:0] v13711_1_address0;
output   v13711_1_ce0;
input  [7:0] v13711_1_q0;
output  [18:0] v13711_2_address0;
output   v13711_2_ce0;
input  [7:0] v13711_2_q0;
output  [18:0] v13711_3_address0;
output   v13711_3_ce0;
input  [7:0] v13711_3_q0;
output  [6:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [5:0] trunc_ln_fu_107_p4;
reg   [0:0] tmp_513_reg_227;
reg   [1:0] tmp_514_reg_232;
wire   [0:0] empty_399_fu_155_p1;
reg   [0:0] empty_399_reg_237;
reg   [0:0] tmp_515_reg_243;
wire   [5:0] rem4_fu_171_p3;
reg   [5:0] rem4_reg_249;
wire    ap_CS_fsm_state10;
wire   [8:0] tmp_fu_186_p3;
reg   [8:0] tmp_reg_254;
wire   [2:0] select_ln12502_fu_195_p3;
reg   [2:0] select_ln12502_reg_259;
wire   [4:0] thr_add1_fu_210_p3;
reg   [4:0] thr_add1_reg_264;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_d0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln12501_fu_121_p0;
wire   [7:0] mul_ln12501_fu_121_p1;
wire   [12:0] mul_ln12501_fu_121_p2;
wire   [15:0] mul_ln12501_cast_fu_127_p1;
wire   [5:0] grp_fu_149_p0;
wire   [3:0] grp_fu_149_p1;
wire   [16:0] zext_ln12502_fu_159_p1;
wire   [2:0] grp_fu_149_p2;
wire   [2:0] empty_fu_182_p1;
wire   [5:0] zext_ln12503_fu_179_p1;
wire   [3:0] empty_400_fu_203_p3;
reg    grp_fu_149_ap_start;
wire    grp_fu_149_ap_done;
reg    grp_fu_149_ce;
reg   [6:0] ap_return_preg;
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
wire   [12:0] mul_ln12501_fu_121_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg = 1'b0;
#0 ap_return_preg = 7'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_ready),.rem4(rem4_reg_249),.tmp(tmp_reg_254),.v9713_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_address0),.v9713_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_ce0),.v9713_we0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_we0),.v9713_d0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_d0),.v9713_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_address0),.v9713_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_ce0),.v9713_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_we0),.v9713_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_d0),.select_ln12502(select_ln12502_reg_259),.v13711_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_address0),.v13711_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_ce0),.v13711_0_q0(v13711_0_q0),.v13711_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_address0),.v13711_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_ce0),.v13711_1_q0(v13711_1_q0),.empty(tmp_515_reg_243),.thr_add1_cast5_cast_cast_cast(thr_add1_reg_264),.v13711_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_address0),.v13711_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_ce0),.v13711_2_q0(v13711_2_q0),.v13711_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_address0),.v13711_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_ce0),.v13711_3_q0(v13711_3_q0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U5277(.din0(mul_ln12501_fu_121_p0),.din1(mul_ln12501_fu_121_p1),.dout(mul_ln12501_fu_121_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U5278(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_149_ap_start),.done(grp_fu_149_ap_done),.din0(grp_fu_149_p0),.din1(grp_fu_149_p1),.ce(grp_fu_149_ce),.dout(grp_fu_149_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 7'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
            ap_return_preg <= v9706_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_399_reg_237 <= empty_399_fu_155_p1;
        tmp_513_reg_227 <= mul_ln12501_cast_fu_127_p1[32'd9];
        tmp_514_reg_232 <= {{mul_ln12501_fu_121_p2[12:11]}};
        tmp_515_reg_243 <= zext_ln12502_fu_159_p1[32'd10];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        rem4_reg_249[5] <= rem4_fu_171_p3[5];
        select_ln12502_reg_259[2] <= select_ln12502_fu_195_p3[2];
        thr_add1_reg_264[0] <= thr_add1_fu_210_p3[0];
thr_add1_reg_264[4] <= thr_add1_fu_210_p3[4];
        tmp_reg_254[1 : 0] <= tmp_fu_186_p3[1 : 0];
tmp_reg_254[8 : 6] <= tmp_fu_186_p3[8 : 6];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
        ap_return = v9706_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_149_ap_start = 1'b1;
    end else begin
        grp_fu_149_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_149_ce = 1'b0;
    end else begin
        grp_fu_149_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
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
assign empty_399_fu_155_p1 = v9706_0[0:0];
assign empty_400_fu_203_p3 = ((empty_399_reg_237[0:0] == 1'b1) ? 4'd8 : 4'd0);
assign empty_fu_182_p1 = grp_fu_149_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_ap_start_reg;
assign grp_fu_149_p0 = {{v9706_0[6:1]}};
assign grp_fu_149_p1 = 6'd5;
assign mul_ln12501_cast_fu_127_p1 = mul_ln12501_fu_121_p2;
assign mul_ln12501_fu_121_p0 = mul_ln12501_fu_121_p00;
assign mul_ln12501_fu_121_p00 = trunc_ln_fu_107_p4;
assign mul_ln12501_fu_121_p1 = 13'd103;
assign rem4_fu_171_p3 = {{tmp_513_reg_227}, {5'd0}};
assign select_ln12502_fu_195_p3 = ((empty_399_reg_237[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign thr_add1_fu_210_p3 = {{empty_400_fu_203_p3}, {tmp_515_reg_243}};
assign tmp_fu_186_p3 = {{empty_fu_182_p1}, {zext_ln12503_fu_179_p1}};
assign trunc_ln_fu_107_p4 = {{v9706_0[6:1]}};
assign v13711_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_address0;
assign v13711_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_0_ce0;
assign v13711_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_address0;
assign v13711_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_1_ce0;
assign v13711_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_address0;
assign v13711_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_2_ce0;
assign v13711_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_address0;
assign v13711_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v13711_3_ce0;
assign v9713_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_address0;
assign v9713_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_ce0;
assign v9713_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_d0;
assign v9713_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_1_we0;
assign v9713_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_address0;
assign v9713_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_ce0;
assign v9713_d0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_d0;
assign v9713_we0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_Pipeline_VITI_fu_86_v9713_we0;
assign zext_ln12502_fu_159_p1 = mul_ln12501_fu_121_p2;
assign zext_ln12503_fu_179_p1 = tmp_514_reg_232;
always @ (posedge ap_clk) begin
    rem4_reg_249[4:0] <= 5'b00000;
    tmp_reg_254[5:2] <= 4'b0000;
    select_ln12502_reg_259[1:0] <= 2'b00;
    thr_add1_reg_264[3:1] <= 3'b000;
end
endmodule 