
module forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v12362_address0,v12362_ce0,v12362_we0,v12362_d0,v12362_1_address0,v12362_1_ce0,v12362_1_we0,v12362_1_d0,v12360_address0,v12360_ce0,v12360_q0,v12361_1_address0,v12361_1_ce0,v12361_1_q0,v12359_1_address0,v12359_1_ce0,v12359_1_q0,v12361_address0,v12361_ce0,v12361_q0,v12359_address0,v12359_ce0,v12359_q0,ap_return);  
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
input  [8:0] p_read;
output  [11:0] v12362_address0;
output   v12362_ce0;
output   v12362_we0;
output  [7:0] v12362_d0;
output  [11:0] v12362_1_address0;
output   v12362_1_ce0;
output   v12362_1_we0;
output  [7:0] v12362_1_d0;
output  [4:0] v12360_address0;
output   v12360_ce0;
input  [7:0] v12360_q0;
output  [11:0] v12361_1_address0;
output   v12361_1_ce0;
input  [7:0] v12361_1_q0;
output  [11:0] v12359_1_address0;
output   v12359_1_ce0;
input  [7:0] v12359_1_q0;
output  [11:0] v12361_address0;
output   v12361_ce0;
input  [7:0] v12361_q0;
output  [11:0] v12359_address0;
output   v12359_ce0;
input  [7:0] v12359_q0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_67_p1;
reg   [4:0] empty_reg_115;
reg    ap_block_state1;
wire   [3:0] trunc_ln_fu_71_p4;
wire   [0:0] cmp25_i_not_i_fu_93_p2;
reg   [0:0] cmp25_i_not_i_reg_124;
wire   [0:0] brmerge_i_fu_109_p2;
reg   [0:0] brmerge_i_reg_129;
wire    ap_CS_fsm_state8;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] grp_fu_81_p0;
wire   [2:0] grp_fu_81_p1;
wire   [3:0] div7_off_i_fu_87_p2;
wire   [1:0] grp_fu_81_p2;
wire   [1:0] trunc_ln15595_fu_99_p1;
wire   [0:0] cmp28_i_not_i_fu_103_p2;
reg    grp_fu_81_ap_start;
wire    grp_fu_81_ap_done;
reg    grp_fu_81_ce;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_ready),.v12360_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_address0),.v12360_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_ce0),.v12360_q0(v12360_q0),.v12362_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_address0),.v12362_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_ce0),.v12362_we0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_we0),.v12362_d0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_d0),.v12362_1_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_address0),.v12362_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_ce0),.v12362_1_we0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_we0),.v12362_1_d0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_d0),.v12361_1_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_address0),.v12361_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_ce0),.v12361_1_q0(v12361_1_q0),.v12359_1_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_address0),.v12359_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_ce0),.v12359_1_q0(v12359_1_q0),.v12361_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_address0),.v12361_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_ce0),.v12361_q0(v12361_q0),.v12359_address0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_address0),.v12359_ce0(grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_ce0),.v12359_q0(v12359_q0),.brmerge_i(brmerge_i_reg_129));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U3598(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_81_ap_start),.done(grp_fu_81_ap_done),.din0(grp_fu_81_p0),.din1(grp_fu_81_p1),.ce(grp_fu_81_ce),.dout(grp_fu_81_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        brmerge_i_reg_129 <= brmerge_i_fu_109_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        cmp25_i_not_i_reg_124 <= cmp25_i_not_i_fu_93_p2;
        empty_reg_115 <= empty_fu_67_p1;
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_81_ap_start = 1'b1;
    end else begin
        grp_fu_81_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_81_ce = 1'b0;
    end else begin
        grp_fu_81_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_done == 1'b1))) begin
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
assign ap_return = empty_reg_115;
assign brmerge_i_fu_109_p2 = (cmp28_i_not_i_fu_103_p2 | cmp25_i_not_i_reg_124);
assign cmp25_i_not_i_fu_93_p2 = ((div7_off_i_fu_87_p2 > 4'd2) ? 1'b1 : 1'b0);
assign cmp28_i_not_i_fu_103_p2 = ((trunc_ln15595_fu_99_p1 != 2'd2) ? 1'b1 : 1'b0);
assign div7_off_i_fu_87_p2 = ($signed(trunc_ln_fu_71_p4) + $signed(4'd10));
assign empty_fu_67_p1 = p_read[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_ap_start_reg;
assign grp_fu_81_p0 = {{p_read[8:5]}};
assign grp_fu_81_p1 = 4'd3;
assign trunc_ln15595_fu_99_p1 = grp_fu_81_p2[1:0];
assign trunc_ln_fu_71_p4 = {{p_read[8:5]}};
assign v12359_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_address0;
assign v12359_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_1_ce0;
assign v12359_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_address0;
assign v12359_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12359_ce0;
assign v12360_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_address0;
assign v12360_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12360_ce0;
assign v12361_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_address0;
assign v12361_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_1_ce0;
assign v12361_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_address0;
assign v12361_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12361_ce0;
assign v12362_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_address0;
assign v12362_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_ce0;
assign v12362_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_d0;
assign v12362_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_1_we0;
assign v12362_address0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_address0;
assign v12362_ce0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_ce0;
assign v12362_d0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_d0;
assign v12362_we0 = grp_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_Pipeline_VITIS_s_fu_48_v12362_we0;
endmodule 
