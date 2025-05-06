
module forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v56_address0,v56_ce0,v56_we0,v56_d0,v56_1_address0,v56_1_ce0,v56_1_we0,v56_1_d0,v52_0,v15427_0_address0,v15427_0_ce0,v15427_0_q0,v15427_1_address0,v15427_1_ce0,v15427_1_q0);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v56_address0;
output   v56_ce0;
output   v56_we0;
output  [7:0] v56_d0;
output  [8:0] v56_1_address0;
output   v56_1_ce0;
output   v56_1_we0;
output  [7:0] v56_1_d0;
input  [10:0] v52_0;
output  [18:0] v15427_0_address0;
output   v15427_0_ce0;
input  [7:0] v15427_0_q0;
output  [18:0] v15427_1_address0;
output   v15427_1_ce0;
input  [7:0] v15427_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_73_p1;
reg   [4:0] empty_reg_113;
reg    ap_block_state1;
wire   [9:0] mul_ln97_fu_91_p2;
reg   [9:0] mul_ln97_reg_119;
wire   [9:0] mul_i_fu_97_p3;
reg   [9:0] mul_i_reg_124;
wire    ap_CS_fsm_state2;
wire   [8:0] shl_ln_fu_105_p3;
reg   [8:0] shl_ln_reg_129;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_d0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [5:0] tmp_s_fu_77_p4;
wire   [5:0] mul_ln97_fu_91_p0;
wire   [5:0] mul_ln97_fu_91_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [9:0] mul_ln97_fu_91_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_ready),.mul_i(mul_i_reg_124),.shl_ln(shl_ln_reg_129),.v56_address0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_address0),.v56_ce0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_ce0),.v56_we0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_we0),.v56_d0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_d0),.v56_1_address0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_address0),.v56_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_ce0),.v56_1_we0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_we0),.v56_1_d0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_d0),.mul_ln97(mul_ln97_reg_119),.v15427_0_address0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_address0),.v15427_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_ce0),.v15427_0_q0(v15427_0_q0),.v15427_1_address0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_address0),.v15427_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_ce0),.v15427_1_q0(v15427_1_q0));
forward_mul_6ns_6ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 6 ),.dout_WIDTH( 10 ))
mul_6ns_6ns_10_1_1_U15015(.din0(mul_ln97_fu_91_p0),.din1(mul_ln97_fu_91_p1),.dout(mul_ln97_fu_91_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_113 <= empty_fu_73_p1;
        mul_ln97_reg_119 <= mul_ln97_fu_91_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_i_reg_124[9 : 5] <= mul_i_fu_97_p3[9 : 5];
        shl_ln_reg_129[8 : 4] <= shl_ln_fu_105_p3[8 : 4];
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_73_p1 = v52_0[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_ap_start_reg;
assign mul_i_fu_97_p3 = {{empty_reg_113}, {5'd0}};
assign mul_ln97_fu_91_p0 = mul_ln97_fu_91_p00;
assign mul_ln97_fu_91_p00 = tmp_s_fu_77_p4;
assign mul_ln97_fu_91_p1 = 10'd25;
assign shl_ln_fu_105_p3 = {{empty_reg_113}, {4'd0}};
assign tmp_s_fu_77_p4 = {{v52_0[10:5]}};
assign v15427_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_address0;
assign v15427_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_0_ce0;
assign v15427_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_address0;
assign v15427_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v15427_1_ce0;
assign v56_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_address0;
assign v56_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_ce0;
assign v56_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_d0;
assign v56_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_1_we0;
assign v56_address0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_address0;
assign v56_ce0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_ce0;
assign v56_d0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_d0;
assign v56_we0 = grp_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO_fu_58_v56_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_124[4:0] <= 5'b00000;
    shl_ln_reg_129[3:0] <= 4'b0000;
end
endmodule 
