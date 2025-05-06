
module forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v14652_address0,v14652_ce0,v14652_we0,v14652_d0,v14652_1_address0,v14652_1_ce0,v14652_1_we0,v14652_1_d0,v14651_1_address0,v14651_1_ce0,v14651_1_q0,v14650_1_address0,v14650_1_ce0,v14650_1_q0,v14651_address0,v14651_ce0,v14651_q0,v14650_address0,v14650_ce0,v14650_q0,ap_return);  
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
input  [6:0] p_read;
output  [13:0] v14652_address0;
output   v14652_ce0;
output   v14652_we0;
output  [7:0] v14652_d0;
output  [13:0] v14652_1_address0;
output   v14652_1_ce0;
output   v14652_1_we0;
output  [7:0] v14652_1_d0;
output  [13:0] v14651_1_address0;
output   v14651_1_ce0;
input  [7:0] v14651_1_q0;
output  [13:0] v14650_1_address0;
output   v14650_1_ce0;
input  [7:0] v14650_1_q0;
output  [13:0] v14651_address0;
output   v14651_ce0;
input  [7:0] v14651_q0;
output  [13:0] v14650_address0;
output   v14650_ce0;
input  [7:0] v14650_q0;
output  [2:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] empty_fu_84_p1;
reg   [2:0] empty_reg_169;
reg    ap_block_state1;
reg   [3:0] trunc_ln_reg_173;
reg   [0:0] tmp_reg_180;
wire   [1:0] trunc_ln19065_fu_112_p1;
reg   [1:0] trunc_ln19065_reg_185;
wire    ap_CS_fsm_state8;
wire   [5:0] mul_i_fu_117_p3;
reg   [5:0] mul_i_reg_190;
reg   [2:0] udiv_ln_cast_reg_195;
wire   [0:0] brmerge_i_fu_162_p2;
reg   [0:0] brmerge_i_reg_200;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] grp_fu_98_p0;
wire   [2:0] grp_fu_98_p1;
wire   [1:0] grp_fu_98_p2;
wire   [3:0] mul_ln19066_fu_128_p0;
wire   [5:0] mul_ln19066_fu_128_p1;
wire   [8:0] mul_ln19066_fu_128_p2;
wire   [3:0] div7_off_i_fu_145_p2;
wire   [0:0] cmp30_i_not_i_fu_150_p2;
wire   [0:0] cmp33_i_not_i_fu_156_p2;
reg    grp_fu_98_ap_start;
wire    grp_fu_98_ap_done;
reg    grp_fu_98_ce;
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
wire   [8:0] mul_ln19066_fu_128_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_ready),.mul_i(mul_i_reg_190),.zext_ln19030_1(udiv_ln_cast_reg_195),.zext_ln19030(trunc_ln19065_reg_185),.v14652_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_address0),.v14652_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_ce0),.v14652_we0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_we0),.v14652_d0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_d0),.v14652_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_address0),.v14652_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_ce0),.v14652_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_we0),.v14652_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_d0),.v14651_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_address0),.v14651_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_ce0),.v14651_1_q0(v14651_1_q0),.v14650_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_address0),.v14650_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_ce0),.v14650_1_q0(v14650_1_q0),.v14651_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_address0),.v14651_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_ce0),.v14651_q0(v14651_q0),.v14650_address0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_address0),.v14650_ce0(grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_ce0),.v14650_q0(v14650_q0),.brmerge_i(brmerge_i_reg_200));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U1236(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_98_ap_start),.done(grp_fu_98_ap_done),.din0(grp_fu_98_p0),.din1(grp_fu_98_p1),.ce(grp_fu_98_ce),.dout(grp_fu_98_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U1237(.din0(mul_ln19066_fu_128_p0),.din1(mul_ln19066_fu_128_p1),.dout(mul_ln19066_fu_128_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        brmerge_i_reg_200 <= brmerge_i_fu_162_p2;
        mul_i_reg_190[5] <= mul_i_fu_117_p3[5];
        trunc_ln19065_reg_185 <= trunc_ln19065_fu_112_p1;
        udiv_ln_cast_reg_195 <= {{mul_ln19066_fu_128_p2[8:6]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_169 <= empty_fu_84_p1;
        tmp_reg_180 <= p_read[32'd2];
        trunc_ln_reg_173 <= {{p_read[6:3]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_98_ap_start = 1'b1;
    end else begin
        grp_fu_98_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_98_ce = 1'b0;
    end else begin
        grp_fu_98_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_done == 1'b1))) begin
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
assign ap_return = empty_reg_169;
assign brmerge_i_fu_162_p2 = (cmp33_i_not_i_fu_156_p2 | cmp30_i_not_i_fu_150_p2);
assign cmp30_i_not_i_fu_150_p2 = ((div7_off_i_fu_145_p2 > 4'd2) ? 1'b1 : 1'b0);
assign cmp33_i_not_i_fu_156_p2 = ((trunc_ln19065_fu_112_p1 != 2'd2) ? 1'b1 : 1'b0);
assign div7_off_i_fu_145_p2 = ($signed(trunc_ln_reg_173) + $signed(4'd10));
assign empty_fu_84_p1 = p_read[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_ap_start_reg;
assign grp_fu_98_p0 = {{p_read[6:3]}};
assign grp_fu_98_p1 = 4'd3;
assign mul_i_fu_117_p3 = {{tmp_reg_180}, {5'd0}};
assign mul_ln19066_fu_128_p0 = mul_ln19066_fu_128_p00;
assign mul_ln19066_fu_128_p00 = trunc_ln_reg_173;
assign mul_ln19066_fu_128_p1 = 9'd22;
assign trunc_ln19065_fu_112_p1 = grp_fu_98_p2[1:0];
assign v14650_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_address0;
assign v14650_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_1_ce0;
assign v14650_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_address0;
assign v14650_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14650_ce0;
assign v14651_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_address0;
assign v14651_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_1_ce0;
assign v14651_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_address0;
assign v14651_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14651_ce0;
assign v14652_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_address0;
assign v14652_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_ce0;
assign v14652_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_d0;
assign v14652_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_1_we0;
assign v14652_address0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_address0;
assign v14652_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_ce0;
assign v14652_d0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_d0;
assign v14652_we0 = grp_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_Pipeline_VITIS_s_fu_62_v14652_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_190[4:0] <= 5'b00000;
end
endmodule 
