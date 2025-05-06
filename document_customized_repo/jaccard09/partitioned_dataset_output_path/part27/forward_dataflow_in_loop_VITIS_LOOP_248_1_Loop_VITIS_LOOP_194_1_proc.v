
module forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v99_address0,v99_ce0,v99_q0,v98_address0,v98_ce0,v98_q0,v100_address0,v100_ce0,v100_we0,v100_d0,ap_return);  
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
input  [10:0] p_read;
output  [4:0] v99_address0;
output   v99_ce0;
input  [7:0] v99_q0;
output  [4:0] v98_address0;
output   v98_ce0;
input  [7:0] v98_q0;
output  [4:0] v100_address0;
output   v100_ce0;
output   v100_we0;
output  [7:0] v100_d0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_51_p1;
reg   [4:0] empty_reg_103;
reg    ap_block_state1;
wire   [5:0] tmp_fu_55_p4;
wire   [0:0] cmp5_i_not_i_fu_81_p2;
reg   [0:0] cmp5_i_not_i_reg_112;
wire   [0:0] brmerge_i_fu_97_p2;
reg   [0:0] brmerge_i_reg_117;
wire    ap_CS_fsm_state10;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] grp_fu_69_p0;
wire   [3:0] grp_fu_69_p1;
wire   [6:0] zext_ln251_fu_65_p1;
wire   [6:0] div_off_i_fu_75_p2;
wire   [2:0] grp_fu_69_p2;
wire   [2:0] trunc_ln251_fu_87_p1;
wire   [0:0] cmp8_i_not_i_fu_91_p2;
reg    grp_fu_69_ap_start;
wire    grp_fu_69_ap_done;
reg    grp_fu_69_ce;
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
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_ready),.v99_address0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_address0),.v99_ce0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_ce0),.v99_q0(v99_q0),.v98_address0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_address0),.v98_ce0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_ce0),.v98_q0(v98_q0),.brmerge_i(brmerge_i_reg_117),.v100_address0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_address0),.v100_ce0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_ce0),.v100_we0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_we0),.v100_d0(grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_d0));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U14975(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_69_ap_start),.done(grp_fu_69_ap_done),.din0(grp_fu_69_p0),.din1(grp_fu_69_p1),.ce(grp_fu_69_ce),.dout(grp_fu_69_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        brmerge_i_reg_117 <= brmerge_i_fu_97_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        cmp5_i_not_i_reg_112 <= cmp5_i_not_i_fu_81_p2;
        empty_reg_103 <= empty_fu_51_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
assign ap_return = empty_reg_103;
assign brmerge_i_fu_97_p2 = (cmp8_i_not_i_fu_91_p2 | cmp5_i_not_i_reg_112);
assign cmp5_i_not_i_fu_81_p2 = ((div_off_i_fu_75_p2 > 7'd6) ? 1'b1 : 1'b0);
assign cmp8_i_not_i_fu_91_p2 = ((trunc_ln251_fu_87_p1 != 3'd6) ? 1'b1 : 1'b0);
assign div_off_i_fu_75_p2 = ($signed(zext_ln251_fu_65_p1) + $signed(7'd86));
assign empty_fu_51_p1 = p_read[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_ap_start_reg;
assign grp_fu_69_p0 = {{p_read[10:5]}};
assign grp_fu_69_p1 = 6'd7;
assign tmp_fu_55_p4 = {{p_read[10:5]}};
assign trunc_ln251_fu_87_p1 = grp_fu_69_p2[2:0];
assign v100_address0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_address0;
assign v100_ce0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_ce0;
assign v100_d0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_d0;
assign v100_we0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v100_we0;
assign v98_address0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_address0;
assign v98_ce0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v98_ce0;
assign v99_address0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_address0;
assign v99_ce0 = grp_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_Pipeline_VITIS_LOOP_fu_40_v99_ce0;
assign zext_ln251_fu_65_p1 = tmp_fu_55_p4;
endmodule 
