
module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8017_address0,v8017_ce0,v8017_we0,v8017_d0,v8017_1_address0,v8017_1_ce0,v8017_1_we0,v8017_1_d0,v8011,v9198_0_address0,v9198_0_ce0,v9198_0_q0,v9198_1_address0,v9198_1_ce0,v9198_1_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v8017_address0;
output   v8017_ce0;
output   v8017_we0;
output  [7:0] v8017_d0;
output  [13:0] v8017_1_address0;
output   v8017_1_ce0;
output   v8017_1_we0;
output  [7:0] v8017_1_d0;
input  [4:0] v8011;
output  [18:0] v9198_0_address0;
output   v9198_0_ce0;
input  [7:0] v9198_0_q0;
output  [18:0] v9198_1_address0;
output   v9198_1_ce0;
input  [7:0] v9198_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] mul_i29_i_i_fu_96_p3;
reg   [5:0] mul_i29_i_i_reg_184;
reg    ap_block_state1;
wire   [6:0] mul9_i57_i_i_fu_135_p2;
reg   [6:0] mul9_i57_i_i_reg_189;
wire   [6:0] mul13_i_i_i_fu_166_p2;
reg   [6:0] mul13_i_i_i_reg_194;
reg   [5:0] trunc_ln_i_reg_199;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_d0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg;
reg    ap_block_state1_ignore_call21;
wire    ap_CS_fsm_state2;
wire   [7:0] v8011_cast1_fu_84_p1;
wire   [0:0] tmp_fu_88_p3;
wire   [1:0] tmp_368_fu_105_p4;
wire   [3:0] tmp_369_fu_123_p3;
wire   [6:0] p_shl6_fu_115_p3;
wire   [6:0] p_shl7_fu_131_p1;
wire   [1:0] empty_fu_142_p1;
wire   [3:0] tmp_370_fu_154_p3;
wire   [6:0] p_shl_fu_146_p3;
wire   [6:0] p_shl5_fu_162_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_ready),.mul_i29_i_i(mul_i29_i_i_reg_184),.mul9_i57_i_i(mul9_i57_i_i_reg_189),.v8017_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_address0),.v8017_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_ce0),.v8017_we0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_we0),.v8017_d0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_d0),.v8017_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_address0),.v8017_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_ce0),.v8017_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_we0),.v8017_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_d0),.mul13_i_i_i(mul13_i_i_i_reg_194),.trunc_ln_i(trunc_ln_i_reg_199),.v9198_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_address0),.v9198_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_ce0),.v9198_0_q0(v9198_0_q0),.v9198_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_address0),.v9198_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_ce0),.v9198_1_q0(v9198_1_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call21) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul13_i_i_i_reg_194[6 : 2] <= mul13_i_i_i_fu_166_p2[6 : 2];
        mul9_i57_i_i_reg_189[6 : 2] <= mul9_i57_i_i_fu_135_p2[6 : 2];
        mul_i29_i_i_reg_184[5] <= mul_i29_i_i_fu_96_p3[5];
        trunc_ln_i_reg_199 <= {{mul13_i_i_i_fu_166_p2[6:1]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call21 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_142_p1 = v8011[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_ap_start_reg;
assign mul13_i_i_i_fu_166_p2 = (p_shl_fu_146_p3 - p_shl5_fu_162_p1);
assign mul9_i57_i_i_fu_135_p2 = (p_shl6_fu_115_p3 - p_shl7_fu_131_p1);
assign mul_i29_i_i_fu_96_p3 = {{tmp_fu_88_p3}, {5'd0}};
assign p_shl5_fu_162_p1 = tmp_370_fu_154_p3;
assign p_shl6_fu_115_p3 = {{tmp_368_fu_105_p4}, {5'd0}};
assign p_shl7_fu_131_p1 = tmp_369_fu_123_p3;
assign p_shl_fu_146_p3 = {{empty_fu_142_p1}, {5'd0}};
assign tmp_368_fu_105_p4 = {{v8011[3:2]}};
assign tmp_369_fu_123_p3 = {{tmp_368_fu_105_p4}, {2'd0}};
assign tmp_370_fu_154_p3 = {{empty_fu_142_p1}, {2'd0}};
assign tmp_fu_88_p3 = v8011_cast1_fu_84_p1[32'd4];
assign v8011_cast1_fu_84_p1 = v8011;
assign v8017_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_address0;
assign v8017_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_ce0;
assign v8017_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_d0;
assign v8017_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_1_we0;
assign v8017_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_address0;
assign v8017_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_ce0;
assign v8017_d0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_d0;
assign v8017_we0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v8017_we0;
assign v9198_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_address0;
assign v9198_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_0_ce0;
assign v9198_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_address0;
assign v9198_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_Pipeline_V_fu_68_v9198_1_ce0;
always @ (posedge ap_clk) begin
    mul_i29_i_i_reg_184[4:0] <= 5'b00000;
    mul9_i57_i_i_reg_189[1:0] <= 2'b00;
    mul13_i_i_i_reg_194[1:0] <= 2'b00;
end
endmodule 
