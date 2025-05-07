module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14651_address0,v14651_ce0,v14651_we0,v14651_d0,v14651_1_address0,v14651_1_ce0,v14651_1_we0,v14651_1_d0,v14644_0,v15436_0_address0,v15436_0_ce0,v15436_0_q0,v15436_1_address0,v15436_1_ce0,v15436_1_q0,v15436_2_address0,v15436_2_ce0,v15436_2_q0,v15436_3_address0,v15436_3_ce0,v15436_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v14651_address0;
output   v14651_ce0;
output   v14651_we0;
output  [7:0] v14651_d0;
output  [13:0] v14651_1_address0;
output   v14651_1_ce0;
output   v14651_1_we0;
output  [7:0] v14651_1_d0;
input  [6:0] v14644_0;
output  [17:0] v15436_0_address0;
output   v15436_0_ce0;
input  [7:0] v15436_0_q0;
output  [17:0] v15436_1_address0;
output   v15436_1_ce0;
input  [7:0] v15436_1_q0;
output  [17:0] v15436_2_address0;
output   v15436_2_ce0;
input  [7:0] v15436_2_q0;
output  [17:0] v15436_3_address0;
output   v15436_3_ce0;
input  [7:0] v15436_3_q0;
output  [6:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_195;
reg   [0:0] tmp_155_reg_200;
wire   [3:0] trunc_ln_fu_115_p4;
reg   [1:0] udiv_ln_cast_reg_210;
wire   [5:0] mul_i_fu_151_p3;
reg   [5:0] mul_i_reg_215;
wire    ap_CS_fsm_state8;
wire   [6:0] select_ln19065_fu_159_p3;
reg   [6:0] select_ln19065_reg_220;
wire   [3:0] thr_add2_fu_178_p2;
reg   [3:0] thr_add2_reg_225;
wire   [1:0] trunc_ln19065_fu_185_p1;
reg   [1:0] trunc_ln19065_reg_230;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_ln19066_fu_129_p0;
wire   [5:0] mul_ln19066_fu_129_p1;
wire   [8:0] mul_ln19066_fu_129_p2;
wire   [3:0] grp_fu_145_p0;
wire   [2:0] grp_fu_145_p1;
wire   [0:0] empty_fu_167_p1;
wire   [3:0] grp_fu_145_p2;
wire   [3:0] mul17_i_fu_170_p3;
reg    grp_fu_145_ap_start;
wire    grp_fu_145_ap_done;
reg    grp_fu_145_ce;
reg   [6:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [8:0] mul_ln19066_fu_129_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg = 1'b0;
#0 ap_return_preg = 7'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_ready),.mul_i(mul_i_reg_215),.zext_ln19065(udiv_ln_cast_reg_210),.select_ln19065(select_ln19065_reg_220),.v14651_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_address0),.v14651_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_ce0),.v14651_we0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_we0),.v14651_d0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_d0),.v14651_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_address0),.v14651_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_ce0),.v14651_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_we0),.v14651_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_d0),.thr_add2_cast10_cast_cast_cast(thr_add2_reg_225),.v15436_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_address0),.v15436_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_ce0),.v15436_0_q0(v15436_0_q0),.v15436_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_address0),.v15436_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_ce0),.v15436_1_q0(v15436_1_q0),.v15436_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_address0),.v15436_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_ce0),.v15436_2_q0(v15436_2_q0),.v15436_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_address0),.v15436_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_ce0),.v15436_3_q0(v15436_3_q0),.empty(trunc_ln19065_reg_230));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U1208(.din0(mul_ln19066_fu_129_p0),.din1(mul_ln19066_fu_129_p1),.dout(mul_ln19066_fu_129_p2));
forward_urem_4ns_3ns_4_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 4 ))
urem_4ns_3ns_4_8_seq_1_U1209(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_145_ap_start),.done(grp_fu_145_ap_done),.din0(grp_fu_145_p0),.din1(grp_fu_145_p1),.ce(grp_fu_145_ce),.dout(grp_fu_145_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 7'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
            ap_return_preg <= v14644_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_i_reg_215[5] <= mul_i_fu_151_p3[5];
        select_ln19065_reg_220[3] <= select_ln19065_fu_159_p3[3];
select_ln19065_reg_220[6] <= select_ln19065_fu_159_p3[6];
        thr_add2_reg_225 <= thr_add2_fu_178_p2;
        trunc_ln19065_reg_230 <= trunc_ln19065_fu_185_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_155_reg_200 <= v14644_0[32'd1];
        tmp_reg_195 <= v14644_0[32'd2];
        udiv_ln_cast_reg_210 <= {{mul_ln19066_fu_129_p2[7:6]}};
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
        ap_return = v14644_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_145_ap_start = 1'b1;
    end else begin
        grp_fu_145_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_145_ce = 1'b0;
    end else begin
        grp_fu_145_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_167_p1 = v14644_0[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_ap_start_reg;
assign grp_fu_145_p0 = {{v14644_0[6:3]}};
assign grp_fu_145_p1 = 4'd3;
assign mul17_i_fu_170_p3 = ((empty_fu_167_p1[0:0] == 1'b1) ? 4'd8 : 4'd0);
assign mul_i_fu_151_p3 = {{tmp_reg_195}, {5'd0}};
assign mul_ln19066_fu_129_p0 = mul_ln19066_fu_129_p00;
assign mul_ln19066_fu_129_p00 = trunc_ln_fu_115_p4;
assign mul_ln19066_fu_129_p1 = 9'd22;
assign select_ln19065_fu_159_p3 = ((tmp_155_reg_200[0:0] == 1'b1) ? 7'd55 : 7'd127);
assign thr_add2_fu_178_p2 = (mul17_i_fu_170_p3 | grp_fu_145_p2);
assign trunc_ln19065_fu_185_p1 = grp_fu_145_p2[1:0];
assign trunc_ln_fu_115_p4 = {{v14644_0[6:3]}};
assign v14651_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_address0;
assign v14651_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_ce0;
assign v14651_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_d0;
assign v14651_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_1_we0;
assign v14651_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_address0;
assign v14651_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_ce0;
assign v14651_d0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_d0;
assign v14651_we0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v14651_we0;
assign v15436_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_address0;
assign v15436_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_0_ce0;
assign v15436_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_address0;
assign v15436_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_1_ce0;
assign v15436_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_address0;
assign v15436_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_2_ce0;
assign v15436_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_address0;
assign v15436_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_Pipeline_VITI_fu_78_v15436_3_ce0;
always @ (posedge ap_clk) begin
    mul_i_reg_215[4:0] <= 5'b00000;
    select_ln19065_reg_220[2:0] <= 3'b111;
    select_ln19065_reg_220[5:4] <= 2'b11;
end
endmodule 