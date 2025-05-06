
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14382_address0,v14382_ce0,v14382_we0,v14382_d0,v14382_1_address0,v14382_1_ce0,v14382_1_we0,v14382_1_d0,v14375,v16167_0_address0,v16167_0_ce0,v16167_0_q0,v16167_1_address0,v16167_1_ce0,v16167_1_q0,v16167_2_address0,v16167_2_ce0,v16167_2_q0,v16167_3_address0,v16167_3_ce0,v16167_3_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v14382_address0;
output   v14382_ce0;
output   v14382_we0;
output  [7:0] v14382_d0;
output  [12:0] v14382_1_address0;
output   v14382_1_ce0;
output   v14382_1_we0;
output  [7:0] v14382_1_d0;
input  [6:0] v14375;
output  [18:0] v16167_0_address0;
output   v16167_0_ce0;
input  [7:0] v16167_0_q0;
output  [18:0] v16167_1_address0;
output   v16167_1_ce0;
input  [7:0] v16167_1_q0;
output  [18:0] v16167_2_address0;
output   v16167_2_ce0;
input  [7:0] v16167_2_q0;
output  [18:0] v16167_3_address0;
output   v16167_3_ce0;
input  [7:0] v16167_3_q0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_107_p1;
reg   [4:0] empty_reg_260;
reg    ap_block_state1;
wire   [4:0] and_ln_i_fu_119_p3;
reg   [4:0] and_ln_i_reg_264;
wire   [7:0] tmp_6_i_fu_182_p3;
reg   [7:0] tmp_6_i_reg_269;
reg   [5:0] thr_add_udiv_i_cast_i_reg_274;
wire   [0:0] tmp_245_fu_232_p3;
reg   [0:0] tmp_245_reg_279;
wire   [7:0] thr_add1_i_i_fu_251_p3;
reg   [7:0] thr_add1_i_i_reg_284;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_d0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_ce0;
wire   [18:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg;
reg    ap_block_state1_ignore_call32;
wire    ap_CS_fsm_state2;
wire   [7:0] v14375_cast2_fu_103_p1;
wire   [0:0] tmp_fu_111_p3;
wire   [1:0] tmp_241_fu_128_p4;
wire   [4:0] tmp_242_fu_146_p3;
wire   [7:0] p_shl8_fu_138_p3;
wire   [7:0] p_shl9_fu_154_p1;
wire   [7:0] mul11_i_i_i_fu_158_p2;
wire   [6:0] tmp_223_i_fu_172_p4;
wire   [0:0] tmp_243_fu_164_p3;
wire   [1:0] empty_308_fu_191_p1;
wire   [4:0] tmp_244_fu_203_p3;
wire   [7:0] p_shl_fu_195_p3;
wire   [7:0] p_shl7_fu_211_p1;
wire   [7:0] mul17_i_i_i_fu_215_p2;
wire   [6:0] tmp_7_i_fu_241_p4;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_ready),.and_ln_i(and_ln_i_reg_264),.tmp_6_i(tmp_6_i_reg_269),.v14382_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_address0),.v14382_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_ce0),.v14382_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_we0),.v14382_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_d0),.v14382_1_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_address0),.v14382_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_ce0),.v14382_1_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_we0),.v14382_1_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_d0),.thr_add_udiv_i_cast_i(thr_add_udiv_i_cast_i_reg_274),.v16167_0_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_address0),.v16167_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_ce0),.v16167_0_q0(v16167_0_q0),.v16167_1_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_address0),.v16167_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_ce0),.v16167_1_q0(v16167_1_q0),.empty(tmp_245_reg_279),.thr_add1_cast8_i_i(thr_add1_i_i_reg_284),.v16167_2_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_address0),.v16167_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_ce0),.v16167_2_q0(v16167_2_q0),.v16167_3_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_address0),.v16167_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_ce0),.v16167_3_q0(v16167_3_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call32) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln_i_reg_264[4] <= and_ln_i_fu_119_p3[4];
        empty_reg_260 <= empty_fu_107_p1;
        thr_add1_i_i_reg_284[0] <= thr_add1_i_i_fu_251_p3[0];
thr_add1_i_i_reg_284[7 : 3] <= thr_add1_i_i_fu_251_p3[7 : 3];
        thr_add_udiv_i_cast_i_reg_274 <= {{mul17_i_i_i_fu_215_p2[7:2]}};
        tmp_245_reg_279 <= v14375_cast2_fu_103_p1[32'd5];
        tmp_6_i_reg_269[0] <= tmp_6_i_fu_182_p3[0];
tmp_6_i_reg_269[7 : 3] <= tmp_6_i_fu_182_p3[7 : 3];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign and_ln_i_fu_119_p3 = {{tmp_fu_111_p3}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call32 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign ap_return = empty_reg_260;
assign empty_308_fu_191_p1 = v14375[1:0];
assign empty_fu_107_p1 = v14375[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_ap_start_reg;
assign mul11_i_i_i_fu_158_p2 = (p_shl8_fu_138_p3 - p_shl9_fu_154_p1);
assign mul17_i_i_i_fu_215_p2 = (p_shl_fu_195_p3 - p_shl7_fu_211_p1);
assign p_shl7_fu_211_p1 = tmp_244_fu_203_p3;
assign p_shl8_fu_138_p3 = {{tmp_241_fu_128_p4}, {6'd0}};
assign p_shl9_fu_154_p1 = tmp_242_fu_146_p3;
assign p_shl_fu_195_p3 = {{empty_308_fu_191_p1}, {6'd0}};
assign thr_add1_i_i_fu_251_p3 = {{tmp_7_i_fu_241_p4}, {tmp_245_fu_232_p3}};
assign tmp_223_i_fu_172_p4 = {{mul11_i_i_i_fu_158_p2[7:1]}};
assign tmp_241_fu_128_p4 = {{v14375[3:2]}};
assign tmp_242_fu_146_p3 = {{tmp_241_fu_128_p4}, {3'd0}};
assign tmp_243_fu_164_p3 = v14375_cast2_fu_103_p1[32'd6];
assign tmp_244_fu_203_p3 = {{empty_308_fu_191_p1}, {3'd0}};
assign tmp_245_fu_232_p3 = v14375_cast2_fu_103_p1[32'd5];
assign tmp_6_i_fu_182_p3 = {{tmp_223_i_fu_172_p4}, {tmp_243_fu_164_p3}};
assign tmp_7_i_fu_241_p4 = {{mul17_i_i_i_fu_215_p2[7:1]}};
assign tmp_fu_111_p3 = v14375_cast2_fu_103_p1[32'd4];
assign v14375_cast2_fu_103_p1 = v14375;
assign v14382_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_address0;
assign v14382_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_ce0;
assign v14382_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_d0;
assign v14382_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_1_we0;
assign v14382_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_address0;
assign v14382_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_ce0;
assign v14382_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_d0;
assign v14382_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v14382_we0;
assign v16167_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_address0;
assign v16167_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_0_ce0;
assign v16167_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_address0;
assign v16167_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_1_ce0;
assign v16167_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_address0;
assign v16167_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_2_ce0;
assign v16167_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_address0;
assign v16167_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18592_1_proc12146_Pipeline_V_fu_82_v16167_3_ce0;
always @ (posedge ap_clk) begin
    and_ln_i_reg_264[3:0] <= 4'b0000;
    tmp_6_i_reg_269[2:1] <= 2'b00;
    thr_add1_i_i_reg_284[2:1] <= 2'b00;
end
endmodule 
