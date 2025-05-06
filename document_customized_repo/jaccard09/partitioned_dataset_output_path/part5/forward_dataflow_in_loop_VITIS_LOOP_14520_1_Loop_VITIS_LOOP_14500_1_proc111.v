
module forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11555_0,v15460_address0,v15460_ce0,v15460_q0,v11563_address0,v11563_ce0,v11563_we0,v11563_d0);  
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
input  [8:0] v11555_0;
output  [17:0] v15460_address0;
output   v15460_ce0;
input  [7:0] v15460_q0;
output  [10:0] v11563_address0;
output   v11563_ce0;
output   v11563_we0;
output  [7:0] v11563_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] tmp_s_reg_172;
reg    ap_block_state1;
reg   [0:0] tmp_reg_177;
wire   [3:0] trunc_ln_fu_103_p4;
reg   [1:0] udiv_ln_cast_reg_187;
wire   [0:0] empty_fu_133_p1;
reg   [0:0] empty_reg_192;
wire   [7:0] mul_i_fu_143_p3;
reg   [7:0] mul_i_reg_197;
wire    ap_CS_fsm_state8;
wire   [4:0] select_ln14525_fu_151_p3;
reg   [4:0] select_ln14525_reg_202;
wire   [4:0] select_ln14525_1_fu_159_p3;
reg   [4:0] select_ln14525_1_reg_207;
wire   [1:0] empty_364_fu_167_p1;
reg   [1:0] empty_364_reg_212;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_ready;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_ln14526_fu_117_p0;
wire   [5:0] mul_ln14526_fu_117_p1;
wire   [8:0] mul_ln14526_fu_117_p2;
wire   [3:0] grp_fu_137_p0;
wire   [2:0] grp_fu_137_p1;
wire   [1:0] grp_fu_137_p2;
reg    grp_fu_137_ap_start;
wire    grp_fu_137_ap_done;
reg    grp_fu_137_ce;
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
wire   [8:0] mul_ln14526_fu_117_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_ready),.mul_i(mul_i_reg_197),.udiv_ln14526_cast(udiv_ln_cast_reg_187),.select_ln14525(select_ln14525_reg_202),.v11563_address0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_address0),.v11563_ce0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_ce0),.v11563_we0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_we0),.v11563_d0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_d0),.urem_ln14525_cast(empty_364_reg_212),.select_ln14525_1(select_ln14525_1_reg_207),.v15460_address0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_address0),.v15460_ce0(grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_ce0),.v15460_q0(v15460_q0));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U4169(.din0(mul_ln14526_fu_117_p0),.din1(mul_ln14526_fu_117_p1),.dout(mul_ln14526_fu_117_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U4170(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_137_ap_start),.done(grp_fu_137_ap_done),.din0(grp_fu_137_p0),.din1(grp_fu_137_p1),.ce(grp_fu_137_ce),.dout(grp_fu_137_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_364_reg_212 <= empty_364_fu_167_p1;
        mul_i_reg_197[7 : 5] <= mul_i_fu_143_p3[7 : 5];
        select_ln14525_1_reg_207[1] <= select_ln14525_1_fu_159_p3[1];
select_ln14525_1_reg_207[4] <= select_ln14525_1_fu_159_p3[4];
        select_ln14525_reg_202[1] <= select_ln14525_fu_151_p3[1];
select_ln14525_reg_202[4] <= select_ln14525_fu_151_p3[4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_192 <= empty_fu_133_p1;
        tmp_reg_177 <= v11555_0[32'd1];
        tmp_s_reg_172 <= {{v11555_0[4:2]}};
        udiv_ln_cast_reg_187 <= {{mul_ln14526_fu_117_p2[7:6]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_137_ap_start = 1'b1;
    end else begin
        grp_fu_137_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_137_ce = 1'b0;
    end else begin
        grp_fu_137_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign empty_364_fu_167_p1 = grp_fu_137_p2[1:0];
assign empty_fu_133_p1 = v11555_0[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_ap_start_reg;
assign grp_fu_137_p0 = {{v11555_0[8:5]}};
assign grp_fu_137_p1 = 4'd3;
assign mul_i_fu_143_p3 = {{tmp_s_reg_172}, {5'd0}};
assign mul_ln14526_fu_117_p0 = mul_ln14526_fu_117_p00;
assign mul_ln14526_fu_117_p00 = trunc_ln_fu_103_p4;
assign mul_ln14526_fu_117_p1 = 9'd22;
assign select_ln14525_1_fu_159_p3 = ((empty_reg_192[0:0] == 1'b1) ? 5'd13 : 5'd31);
assign select_ln14525_fu_151_p3 = ((tmp_reg_177[0:0] == 1'b1) ? 5'd13 : 5'd31);
assign trunc_ln_fu_103_p4 = {{v11555_0[8:5]}};
assign v11563_address0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_address0;
assign v11563_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_ce0;
assign v11563_d0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_d0;
assign v11563_we0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v11563_we0;
assign v15460_address0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_address0;
assign v15460_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_Pipeline_VIT_fu_72_v15460_ce0;
always @ (posedge ap_clk) begin
    mul_i_reg_197[4:0] <= 5'b00000;
    select_ln14525_reg_202[0] <= 1'b1;
    select_ln14525_reg_202[3:2] <= 2'b11;
    select_ln14525_1_reg_207[0] <= 1'b1;
    select_ln14525_1_reg_207[3:2] <= 2'b11;
end
endmodule 
