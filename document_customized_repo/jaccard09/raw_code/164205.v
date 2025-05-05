module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15431_1_1_address0,v15431_1_1_ce0,v15431_1_1_we0,v15431_1_1_d0,v15431_1_0_address0,v15431_1_0_ce0,v15431_1_0_we0,v15431_1_0_d0,v15431_0_1_address0,v15431_0_1_ce0,v15431_0_1_we0,v15431_0_1_d0,v15431_0_0_address0,v15431_0_0_ce0,v15431_0_0_we0,v15431_0_0_d0,p_read,v15155_3_address0,v15155_3_ce0,v15155_3_q0,v15155_2_address0,v15155_2_ce0,v15155_2_q0,v15155_1_address0,v15155_1_ce0,v15155_1_q0,v15155_address0,v15155_ce0,v15155_q0); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [16:0] v15431_1_1_address0;
output   v15431_1_1_ce0;
output   v15431_1_1_we0;
output  [7:0] v15431_1_1_d0;
output  [16:0] v15431_1_0_address0;
output   v15431_1_0_ce0;
output   v15431_1_0_we0;
output  [7:0] v15431_1_0_d0;
output  [16:0] v15431_0_1_address0;
output   v15431_0_1_ce0;
output   v15431_0_1_we0;
output  [7:0] v15431_0_1_d0;
output  [16:0] v15431_0_0_address0;
output   v15431_0_0_ce0;
output   v15431_0_0_we0;
output  [7:0] v15431_0_0_d0;
input  [4:0] p_read;
output  [11:0] v15155_3_address0;
output   v15155_3_ce0;
input  [7:0] v15155_3_q0;
output  [11:0] v15155_2_address0;
output   v15155_2_ce0;
input  [7:0] v15155_2_q0;
output  [11:0] v15155_1_address0;
output   v15155_1_ce0;
input  [7:0] v15155_1_q0;
output  [11:0] v15155_address0;
output   v15155_ce0;
input  [7:0] v15155_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] and_ln_fu_111_p3;
reg   [4:0] and_ln_reg_210;
reg    ap_block_state1;
wire   [6:0] mul10_i_fu_150_p2;
reg   [6:0] mul10_i_reg_215;
reg   [5:0] p_udiv4_cast_reg_220;
wire   [6:0] mul15_i78_fu_192_p2;
reg   [6:0] mul15_i78_reg_225;
reg   [5:0] trunc_ln_reg_230;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_ready;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg;
reg    ap_block_state1_ignore_call27;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_103_p3;
wire   [1:0] tmp_106_fu_120_p4;
wire   [3:0] tmp_107_fu_138_p3;
wire   [6:0] p_shl79_fu_130_p3;
wire   [6:0] p_shl80_fu_146_p1;
wire   [1:0] empty_fu_168_p1;
wire   [3:0] tmp_108_fu_180_p3;
wire   [6:0] p_shl_fu_172_p3;
wire   [6:0] p_shl78_fu_188_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_ready),.v15431_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_address0),.v15431_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_ce0),.v15431_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_we0),.v15431_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_d0),.v15431_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_address0),.v15431_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_ce0),.v15431_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_we0),.v15431_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_d0),.v15431_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_address0),.v15431_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_ce0),.v15431_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_we0),.v15431_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_d0),.v15431_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_address0),.v15431_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_ce0),.v15431_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_we0),.v15431_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_d0),.and_ln(and_ln_reg_210),.mul10_i(mul10_i_reg_215),.p_udiv4_cast(p_udiv4_cast_reg_220),.v15155_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_address0),.v15155_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_ce0),.v15155_3_q0(v15155_3_q0),.v15155_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_address0),.v15155_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_ce0),.v15155_2_q0(v15155_2_q0),.v15155_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_address0),.v15155_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_ce0),.v15155_1_q0(v15155_1_q0),.v15155_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_address0),.v15155_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_ce0),.v15155_q0(v15155_q0),.mul15_i78(mul15_i78_reg_225),.trunc_ln(trunc_ln_reg_230));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call27) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln_reg_210[4] <= and_ln_fu_111_p3[4];
        mul10_i_reg_215[6 : 2] <= mul10_i_fu_150_p2[6 : 2];
        mul15_i78_reg_225[6 : 2] <= mul15_i78_fu_192_p2[6 : 2];
        p_udiv4_cast_reg_220 <= {{mul10_i_fu_150_p2[6:1]}};
        trunc_ln_reg_230 <= {{mul15_i78_fu_192_p2[6:1]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign and_ln_fu_111_p3 = {{tmp_fu_103_p3}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call27 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_168_p1 = p_read[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_ap_start_reg;
assign mul10_i_fu_150_p2 = (p_shl79_fu_130_p3 - p_shl80_fu_146_p1);
assign mul15_i78_fu_192_p2 = (p_shl_fu_172_p3 - p_shl78_fu_188_p1);
assign p_shl78_fu_188_p1 = tmp_108_fu_180_p3;
assign p_shl79_fu_130_p3 = {{tmp_106_fu_120_p4}, {5'd0}};
assign p_shl80_fu_146_p1 = tmp_107_fu_138_p3;
assign p_shl_fu_172_p3 = {{empty_fu_168_p1}, {5'd0}};
assign tmp_106_fu_120_p4 = {{p_read[3:2]}};
assign tmp_107_fu_138_p3 = {{tmp_106_fu_120_p4}, {2'd0}};
assign tmp_108_fu_180_p3 = {{empty_fu_168_p1}, {2'd0}};
assign tmp_fu_103_p3 = p_read[32'd4];
assign v15155_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_address0;
assign v15155_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_1_ce0;
assign v15155_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_address0;
assign v15155_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_2_ce0;
assign v15155_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_address0;
assign v15155_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_3_ce0;
assign v15155_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_address0;
assign v15155_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15155_ce0;
assign v15431_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_address0;
assign v15431_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_ce0;
assign v15431_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_d0;
assign v15431_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_0_we0;
assign v15431_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_address0;
assign v15431_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_ce0;
assign v15431_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_d0;
assign v15431_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_0_1_we0;
assign v15431_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_address0;
assign v15431_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_ce0;
assign v15431_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_d0;
assign v15431_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_0_we0;
assign v15431_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_address0;
assign v15431_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_ce0;
assign v15431_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_d0;
assign v15431_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_Pipeline_VITI_fu_78_v15431_1_1_we0;
always @ (posedge ap_clk) begin
    and_ln_reg_210[3:0] <= 4'b0000;
    mul10_i_reg_215[1:0] <= 2'b00;
    mul15_i78_reg_225[1:0] <= 2'b00;
end
endmodule 