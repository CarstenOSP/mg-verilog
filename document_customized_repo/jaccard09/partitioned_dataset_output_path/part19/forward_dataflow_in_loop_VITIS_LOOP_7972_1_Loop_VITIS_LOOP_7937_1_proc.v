
module forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v6753_0,v15417_address0,v15417_ce0,v15417_q0,v6760_address0,v6760_ce0,v6760_we0,v6760_d0);  
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
input  [12:0] v6753_0;
output  [12:0] v15417_address0;
output   v15417_ce0;
input  [7:0] v15417_q0;
output  [4:0] v6760_address0;
output   v6760_ce0;
output   v6760_we0;
output  [7:0] v6760_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_reg_143;
reg   [1:0] v6733_cast_reg_148;
wire   [8:0] rem4_fu_125_p3;
reg   [8:0] rem4_reg_153;
wire    ap_CS_fsm_state8;
wire   [1:0] trunc_ln7937_fu_133_p1;
reg   [1:0] trunc_ln7937_reg_158;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [12:0] mul_ln7978_fu_77_p0;
wire   [26:0] zext_ln7978_fu_73_p1;
wire   [14:0] mul_ln7978_fu_77_p1;
wire   [12:0] mul_ln7977_fu_83_p0;
wire   [14:0] mul_ln7977_fu_83_p1;
wire   [26:0] mul_ln7977_fu_83_p2;
wire   [3:0] grp_fu_99_p0;
wire   [2:0] grp_fu_99_p1;
wire   [26:0] mul_ln7978_fu_77_p2;
wire   [1:0] grp_fu_99_p2;
reg    grp_fu_99_ap_start;
wire    grp_fu_99_ap_done;
reg    grp_fu_99_ce;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_ready),.rem4(rem4_reg_153),.idxprom1_i241_i(v6733_cast_reg_148),.idxprom3_i252_i(trunc_ln7937_reg_158),.v15417_address0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_address0),.v15417_ce0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_ce0),.v15417_q0(v15417_q0),.v6760_address0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_address0),.v6760_ce0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_ce0),.v6760_we0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_we0),.v6760_d0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_d0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U8409(.din0(mul_ln7978_fu_77_p0),.din1(mul_ln7978_fu_77_p1),.dout(mul_ln7978_fu_77_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U8410(.din0(mul_ln7977_fu_83_p0),.din1(mul_ln7977_fu_83_p1),.dout(mul_ln7977_fu_83_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U8411(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_99_ap_start),.done(grp_fu_99_ap_done),.din0(grp_fu_99_p0),.din1(grp_fu_99_p1),.ce(grp_fu_99_ce),.dout(grp_fu_99_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        rem4_reg_153[8 : 5] <= rem4_fu_125_p3[8 : 5];
        trunc_ln7937_reg_158 <= trunc_ln7937_fu_133_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_143 <= {{mul_ln7977_fu_83_p2[22:19]}};
        v6733_cast_reg_148 <= {{mul_ln7978_fu_77_p2[26:25]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_99_ap_start = 1'b1;
    end else begin
        grp_fu_99_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_99_ce = 1'b0;
    end else begin
        grp_fu_99_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_ap_start_reg;
assign grp_fu_99_p0 = {{mul_ln7977_fu_83_p2[26:23]}};
assign grp_fu_99_p1 = 4'd3;
assign mul_ln7977_fu_83_p0 = zext_ln7978_fu_73_p1;
assign mul_ln7977_fu_83_p1 = 27'd10700;
assign mul_ln7978_fu_77_p0 = zext_ln7978_fu_73_p1;
assign mul_ln7978_fu_77_p1 = 27'd14267;
assign rem4_fu_125_p3 = {{tmp_reg_143}, {5'd0}};
assign trunc_ln7937_fu_133_p1 = grp_fu_99_p2[1:0];
assign v15417_address0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_address0;
assign v15417_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v15417_ce0;
assign v6760_address0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_address0;
assign v6760_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_ce0;
assign v6760_d0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_d0;
assign v6760_we0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_Pipeline_VITIS_LO_fu_62_v6760_we0;
assign zext_ln7978_fu_73_p1 = v6753_0;
always @ (posedge ap_clk) begin
    rem4_reg_153[4:0] <= 5'b00000;
end
endmodule 
