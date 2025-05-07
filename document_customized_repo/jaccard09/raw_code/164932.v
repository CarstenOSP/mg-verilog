module forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8018_address0,v8018_ce0,v8018_we0,v8018_d0,v8018_1_address0,v8018_1_ce0,v8018_1_we0,v8018_1_d0,v8011,v9196_0_address0,v9196_0_ce0,v9196_0_q0,v9196_1_address0,v9196_1_ce0,v9196_1_q0,v9196_2_address0,v9196_2_ce0,v9196_2_q0,v9196_3_address0,v9196_3_ce0,v9196_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v8018_address0;
output   v8018_ce0;
output   v8018_we0;
output  [7:0] v8018_d0;
output  [13:0] v8018_1_address0;
output   v8018_1_ce0;
output   v8018_1_we0;
output  [7:0] v8018_1_d0;
input  [6:0] v8011;
output  [19:0] v9196_0_address0;
output   v9196_0_ce0;
input  [7:0] v9196_0_q0;
output  [19:0] v9196_1_address0;
output   v9196_1_ce0;
input  [7:0] v9196_1_q0;
output  [19:0] v9196_2_address0;
output   v9196_2_ce0;
input  [7:0] v9196_2_q0;
output  [19:0] v9196_3_address0;
output   v9196_3_ce0;
input  [7:0] v9196_3_q0;
output  [6:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [5:0] mul_i29_i_i_fu_115_p3;
reg   [5:0] mul_i29_i_i_reg_260;
wire   [7:0] tmp_4_i_fu_178_p3;
reg   [7:0] tmp_4_i_reg_265;
reg   [5:0] trunc_ln12647_1_i_reg_270;
wire   [0:0] tmp_363_fu_228_p3;
reg   [0:0] tmp_363_reg_275;
wire   [7:0] thr_add1_i_i_fu_247_p3;
reg   [7:0] thr_add1_i_i_reg_280;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_d0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_ce0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_ce0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_ce0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg;
reg    ap_block_state1_ignore_call31;
wire    ap_CS_fsm_state2;
wire   [7:0] v8011_cast1_fu_103_p1;
wire   [0:0] tmp_fu_107_p3;
wire   [1:0] tmp_359_fu_124_p4;
wire   [4:0] tmp_360_fu_142_p3;
wire   [7:0] p_shl6_fu_134_p3;
wire   [7:0] p_shl7_fu_150_p1;
wire   [7:0] mul11_i_i_i_fu_154_p2;
wire   [6:0] tmp_276_i_fu_168_p4;
wire   [0:0] tmp_361_fu_160_p3;
wire   [1:0] empty_fu_187_p1;
wire   [4:0] tmp_362_fu_199_p3;
wire   [7:0] p_shl_fu_191_p3;
wire   [7:0] p_shl5_fu_207_p1;
wire   [7:0] mul17_i_i_i_fu_211_p2;
wire   [6:0] tmp_5_i_fu_237_p4;
reg   [6:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg = 1'b0;
#0 ap_return_preg = 7'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_ready),.mul_i29_i_i(mul_i29_i_i_reg_260),.tmp_4_i(tmp_4_i_reg_265),.v8018_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_address0),.v8018_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_ce0),.v8018_we0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_we0),.v8018_d0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_d0),.v8018_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_address0),.v8018_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_ce0),.v8018_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_we0),.v8018_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_d0),.trunc_ln12647_1_i(trunc_ln12647_1_i_reg_270),.v9196_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_address0),.v9196_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_ce0),.v9196_0_q0(v9196_0_q0),.v9196_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_address0),.v9196_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_ce0),.v9196_1_q0(v9196_1_q0),.empty(tmp_363_reg_275),.thr_add1_cast8_i_i(thr_add1_i_i_reg_280),.v9196_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_address0),.v9196_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_ce0),.v9196_2_q0(v9196_2_q0),.v9196_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_address0),.v9196_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_ce0),.v9196_3_q0(v9196_3_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 7'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= v8011;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call31) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_i29_i_i_reg_260[5] <= mul_i29_i_i_fu_115_p3[5];
        thr_add1_i_i_reg_280[0] <= thr_add1_i_i_fu_247_p3[0];
thr_add1_i_i_reg_280[7 : 3] <= thr_add1_i_i_fu_247_p3[7 : 3];
        tmp_363_reg_275 <= v8011_cast1_fu_103_p1[32'd5];
        tmp_4_i_reg_265[0] <= tmp_4_i_fu_178_p3[0];
tmp_4_i_reg_265[7 : 3] <= tmp_4_i_fu_178_p3[7 : 3];
        trunc_ln12647_1_i_reg_270 <= {{mul17_i_i_i_fu_211_p2[7:2]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return = v8011;
    end else begin
        ap_return = ap_return_preg;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call31 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_187_p1 = v8011[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_ap_start_reg;
assign mul11_i_i_i_fu_154_p2 = (p_shl6_fu_134_p3 - p_shl7_fu_150_p1);
assign mul17_i_i_i_fu_211_p2 = (p_shl_fu_191_p3 - p_shl5_fu_207_p1);
assign mul_i29_i_i_fu_115_p3 = {{tmp_fu_107_p3}, {5'd0}};
assign p_shl5_fu_207_p1 = tmp_362_fu_199_p3;
assign p_shl6_fu_134_p3 = {{tmp_359_fu_124_p4}, {6'd0}};
assign p_shl7_fu_150_p1 = tmp_360_fu_142_p3;
assign p_shl_fu_191_p3 = {{empty_fu_187_p1}, {6'd0}};
assign thr_add1_i_i_fu_247_p3 = {{tmp_5_i_fu_237_p4}, {tmp_363_fu_228_p3}};
assign tmp_276_i_fu_168_p4 = {{mul11_i_i_i_fu_154_p2[7:1]}};
assign tmp_359_fu_124_p4 = {{v8011[3:2]}};
assign tmp_360_fu_142_p3 = {{tmp_359_fu_124_p4}, {3'd0}};
assign tmp_361_fu_160_p3 = v8011_cast1_fu_103_p1[32'd6];
assign tmp_362_fu_199_p3 = {{empty_fu_187_p1}, {3'd0}};
assign tmp_363_fu_228_p3 = v8011_cast1_fu_103_p1[32'd5];
assign tmp_4_i_fu_178_p3 = {{tmp_276_i_fu_168_p4}, {tmp_361_fu_160_p3}};
assign tmp_5_i_fu_237_p4 = {{mul17_i_i_i_fu_211_p2[7:1]}};
assign tmp_fu_107_p3 = v8011_cast1_fu_103_p1[32'd4];
assign v8011_cast1_fu_103_p1 = v8011;
assign v8018_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_address0;
assign v8018_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_ce0;
assign v8018_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_d0;
assign v8018_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_1_we0;
assign v8018_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_address0;
assign v8018_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_ce0;
assign v8018_d0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_d0;
assign v8018_we0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v8018_we0;
assign v9196_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_address0;
assign v9196_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_0_ce0;
assign v9196_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_address0;
assign v9196_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_1_ce0;
assign v9196_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_address0;
assign v9196_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_2_ce0;
assign v9196_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_address0;
assign v9196_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_Pipeline_V_fu_82_v9196_3_ce0;
always @ (posedge ap_clk) begin
    mul_i29_i_i_reg_260[4:0] <= 5'b00000;
    tmp_4_i_reg_265[2:1] <= 2'b00;
    thr_add1_i_i_reg_280[2:1] <= 2'b00;
end
endmodule 