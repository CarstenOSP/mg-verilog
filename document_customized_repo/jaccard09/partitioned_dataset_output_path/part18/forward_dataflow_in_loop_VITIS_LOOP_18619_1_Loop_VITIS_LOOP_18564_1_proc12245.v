
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14381_address0,v14381_ce0,v14381_we0,v14381_d0,v14381_1_address0,v14381_1_ce0,v14381_1_we0,v14381_1_d0,v14375,v16169_0_address0,v16169_0_ce0,v16169_0_q0,v16169_1_address0,v16169_1_ce0,v16169_1_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v14381_address0;
output   v14381_ce0;
output   v14381_we0;
output  [7:0] v14381_d0;
output  [12:0] v14381_1_address0;
output   v14381_1_ce0;
output   v14381_1_we0;
output  [7:0] v14381_1_d0;
input  [4:0] v14375;
output  [17:0] v16169_0_address0;
output   v16169_0_ce0;
input  [7:0] v16169_0_q0;
output  [17:0] v16169_1_address0;
output   v16169_1_ce0;
input  [7:0] v16169_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] and_ln_i_fu_98_p3;
reg   [4:0] and_ln_i_reg_186;
reg    ap_block_state1;
wire   [6:0] mul9_i66_i_i_fu_137_p2;
reg   [6:0] mul9_i66_i_i_reg_191;
wire   [6:0] mul13_i_i_i_fu_168_p2;
reg   [6:0] mul13_i_i_i_reg_196;
reg   [5:0] trunc_ln_i_reg_201;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg;
reg    ap_block_state1_ignore_call21;
wire    ap_CS_fsm_state2;
wire   [7:0] v14375_cast1_fu_86_p1;
wire   [0:0] tmp_fu_90_p3;
wire   [1:0] tmp_250_fu_107_p4;
wire   [3:0] tmp_251_fu_125_p3;
wire   [6:0] p_shl6_fu_117_p3;
wire   [6:0] p_shl7_fu_133_p1;
wire   [1:0] empty_fu_144_p1;
wire   [3:0] tmp_252_fu_156_p3;
wire   [6:0] p_shl_fu_148_p3;
wire   [6:0] p_shl5_fu_164_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_ready),.and_ln_i(and_ln_i_reg_186),.mul9_i66_i_i(mul9_i66_i_i_reg_191),.v14381_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_address0),.v14381_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_ce0),.v14381_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_we0),.v14381_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_d0),.v14381_1_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_address0),.v14381_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_ce0),.v14381_1_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_we0),.v14381_1_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_d0),.mul13_i_i_i(mul13_i_i_i_reg_196),.trunc_ln_i(trunc_ln_i_reg_201),.v16169_0_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_address0),.v16169_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_ce0),.v16169_0_q0(v16169_0_q0),.v16169_1_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_address0),.v16169_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_ce0),.v16169_1_q0(v16169_1_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call21) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln_i_reg_186[4] <= and_ln_i_fu_98_p3[4];
        mul13_i_i_i_reg_196[6 : 2] <= mul13_i_i_i_fu_168_p2[6 : 2];
        mul9_i66_i_i_reg_191[6 : 2] <= mul9_i66_i_i_fu_137_p2[6 : 2];
        trunc_ln_i_reg_201 <= {{mul13_i_i_i_fu_168_p2[6:1]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign and_ln_i_fu_98_p3 = {{tmp_fu_90_p3}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call21 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_144_p1 = v14375[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_ap_start_reg;
assign mul13_i_i_i_fu_168_p2 = (p_shl_fu_148_p3 - p_shl5_fu_164_p1);
assign mul9_i66_i_i_fu_137_p2 = (p_shl6_fu_117_p3 - p_shl7_fu_133_p1);
assign p_shl5_fu_164_p1 = tmp_252_fu_156_p3;
assign p_shl6_fu_117_p3 = {{tmp_250_fu_107_p4}, {5'd0}};
assign p_shl7_fu_133_p1 = tmp_251_fu_125_p3;
assign p_shl_fu_148_p3 = {{empty_fu_144_p1}, {5'd0}};
assign tmp_250_fu_107_p4 = {{v14375[3:2]}};
assign tmp_251_fu_125_p3 = {{tmp_250_fu_107_p4}, {2'd0}};
assign tmp_252_fu_156_p3 = {{empty_fu_144_p1}, {2'd0}};
assign tmp_fu_90_p3 = v14375_cast1_fu_86_p1[32'd4];
assign v14375_cast1_fu_86_p1 = v14375;
assign v14381_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_address0;
assign v14381_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_ce0;
assign v14381_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_d0;
assign v14381_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_1_we0;
assign v14381_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_address0;
assign v14381_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_ce0;
assign v14381_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_d0;
assign v14381_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v14381_we0;
assign v16169_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_address0;
assign v16169_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_0_ce0;
assign v16169_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_address0;
assign v16169_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18564_1_proc12245_Pipeline_V_fu_70_v16169_1_ce0;
always @ (posedge ap_clk) begin
    and_ln_i_reg_186[3:0] <= 4'b0000;
    mul9_i66_i_i_reg_191[1:0] <= 2'b00;
    mul13_i_i_i_reg_196[1:0] <= 2'b00;
end
endmodule 
