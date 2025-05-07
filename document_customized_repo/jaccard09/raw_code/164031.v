module forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v9343_address0,v9343_ce0,v9343_q0,v9344_address0,v9344_ce0,v9344_q0,v9342_address0,v9342_ce0,v9342_q0,v9345_address0,v9345_ce0,v9345_we0,v9345_d0,ap_return); 
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
input  [9:0] p_read;
output  [4:0] v9343_address0;
output   v9343_ce0;
input  [7:0] v9343_q0;
output  [10:0] v9344_address0;
output   v9344_ce0;
input  [7:0] v9344_q0;
output  [10:0] v9342_address0;
output   v9342_ce0;
input  [7:0] v9342_q0;
output  [10:0] v9345_address0;
output   v9345_ce0;
output   v9345_we0;
output  [7:0] v9345_d0;
output  [5:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] empty_fu_55_p1;
reg   [5:0] empty_reg_103;
reg    ap_block_state1;
wire   [3:0] trunc_ln_fu_59_p4;
wire   [0:0] cmp25_i_not_i_fu_81_p2;
reg   [0:0] cmp25_i_not_i_reg_112;
wire   [0:0] brmerge_i_fu_97_p2;
reg   [0:0] brmerge_i_reg_117;
wire    ap_CS_fsm_state8;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] grp_fu_69_p0;
wire   [2:0] grp_fu_69_p1;
wire   [3:0] div7_off_i_fu_75_p2;
wire   [1:0] grp_fu_69_p2;
wire   [1:0] trunc_ln11401_fu_87_p1;
wire   [0:0] cmp28_i_not_i_fu_91_p2;
reg    grp_fu_69_ap_start;
wire    grp_fu_69_ap_done;
reg    grp_fu_69_ce;
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
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_ready),.v9343_address0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_address0),.v9343_ce0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_ce0),.v9343_q0(v9343_q0),.v9344_address0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_address0),.v9344_ce0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_ce0),.v9344_q0(v9344_q0),.v9342_address0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_address0),.v9342_ce0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_ce0),.v9342_q0(v9342_q0),.v9345_address0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_address0),.v9345_ce0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_ce0),.v9345_we0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_we0),.v9345_d0(grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_d0),.brmerge_i(brmerge_i_reg_117));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U6165(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_69_ap_start),.done(grp_fu_69_ap_done),.din0(grp_fu_69_p0),.din1(grp_fu_69_p1),.ce(grp_fu_69_ce),.dout(grp_fu_69_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        brmerge_i_reg_117 <= brmerge_i_fu_97_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        cmp25_i_not_i_reg_112 <= cmp25_i_not_i_fu_81_p2;
        empty_reg_103 <= empty_fu_55_p1;
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_69_ap_start = 1'b1;
    end else begin
        grp_fu_69_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_69_ce = 1'b0;
    end else begin
        grp_fu_69_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign ap_return = empty_reg_103;
assign brmerge_i_fu_97_p2 = (cmp28_i_not_i_fu_91_p2 | cmp25_i_not_i_reg_112);
assign cmp25_i_not_i_fu_81_p2 = ((div7_off_i_fu_75_p2 > 4'd2) ? 1'b1 : 1'b0);
assign cmp28_i_not_i_fu_91_p2 = ((trunc_ln11401_fu_87_p1 != 2'd2) ? 1'b1 : 1'b0);
assign div7_off_i_fu_75_p2 = ($signed(trunc_ln_fu_59_p4) + $signed(4'd10));
assign empty_fu_55_p1 = p_read[5:0];
assign grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_ap_start_reg;
assign grp_fu_69_p0 = {{p_read[9:6]}};
assign grp_fu_69_p1 = 4'd3;
assign trunc_ln11401_fu_87_p1 = grp_fu_69_p2[1:0];
assign trunc_ln_fu_59_p4 = {{p_read[9:6]}};
assign v9342_address0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_address0;
assign v9342_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9342_ce0;
assign v9343_address0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_address0;
assign v9343_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9343_ce0;
assign v9344_address0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_address0;
assign v9344_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9344_ce0;
assign v9345_address0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_address0;
assign v9345_ce0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_ce0;
assign v9345_d0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_d0;
assign v9345_we0 = grp_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_Pipeline_VITIS_s_fu_42_v9345_we0;
endmodule 