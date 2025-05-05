module forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9200_1_1_address0,v9200_1_1_ce0,v9200_1_1_we0,v9200_1_1_d0,v9200_1_0_address0,v9200_1_0_ce0,v9200_1_0_we0,v9200_1_0_d0,v9200_0_1_address0,v9200_0_1_ce0,v9200_0_1_we0,v9200_0_1_d0,v9200_0_0_address0,v9200_0_0_ce0,v9200_0_0_we0,v9200_0_0_d0,p_read,v7929_3_i_address0,v7929_3_i_ce0,v7929_3_i_q0,p_read1,v7929_2_i_address0,v7929_2_i_ce0,v7929_2_i_q0,v7929_1_i_address0,v7929_1_i_ce0,v7929_1_i_q0,v7929_i_address0,v7929_i_ce0,v7929_i_q0); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [15:0] v9200_1_1_address0;
output   v9200_1_1_ce0;
output   v9200_1_1_we0;
output  [7:0] v9200_1_1_d0;
output  [15:0] v9200_1_0_address0;
output   v9200_1_0_ce0;
output   v9200_1_0_we0;
output  [7:0] v9200_1_0_d0;
output  [15:0] v9200_0_1_address0;
output   v9200_0_1_ce0;
output   v9200_0_1_we0;
output  [7:0] v9200_0_1_d0;
output  [15:0] v9200_0_0_address0;
output   v9200_0_0_ce0;
output   v9200_0_0_we0;
output  [7:0] v9200_0_0_d0;
input  [5:0] p_read;
output  [7:0] v7929_3_i_address0;
output   v7929_3_i_ce0;
input  [7:0] v7929_3_i_q0;
input  [6:0] p_read1;
output  [7:0] v7929_2_i_address0;
output   v7929_2_i_ce0;
input  [7:0] v7929_2_i_q0;
output  [7:0] v7929_1_i_address0;
output   v7929_1_i_ce0;
input  [7:0] v7929_1_i_q0;
output  [7:0] v7929_i_address0;
output   v7929_i_ce0;
input  [7:0] v7929_i_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] mul_i57_cast_cast_i_cast_cast_fu_111_p3;
reg   [2:0] mul_i57_cast_cast_i_cast_cast_reg_182;
reg    ap_block_state1;
wire   [1:0] p_udiv4_i_cast_cast_fu_120_p3;
reg   [1:0] p_udiv4_i_cast_cast_reg_187;
wire   [2:0] zext_ln12342_cast_cast_fu_133_p3;
reg   [2:0] zext_ln12342_cast_cast_reg_192;
wire   [1:0] p_udiv6_i_cast_cast_fu_142_p3;
reg   [1:0] p_udiv6_i_cast_cast_reg_197;
wire   [10:0] sub_ln12281_fu_175_p2;
reg   [10:0] sub_ln12281_reg_202;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_ready;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_ce0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg;
reg    ap_block_state1_ignore_call25;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_103_p3;
wire   [0:0] empty_fu_129_p1;
wire   [5:0] trunc_ln12281_fu_151_p1;
wire   [7:0] tmp_398_fu_163_p3;
wire   [10:0] p_shl_fu_155_p3;
wire   [10:0] zext_ln12281_fu_171_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_ready),.v9200_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_address0),.v9200_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_ce0),.v9200_0_0_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_we0),.v9200_0_0_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_d0),.v9200_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_address0),.v9200_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_ce0),.v9200_0_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_we0),.v9200_0_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_d0),.v9200_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_address0),.v9200_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_ce0),.v9200_1_0_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_we0),.v9200_1_0_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_d0),.v9200_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_address0),.v9200_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_ce0),.v9200_1_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_we0),.v9200_1_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_d0),.mul_i57_cast_cast_i_cast_cast(mul_i57_cast_cast_i_cast_cast_reg_182),.p_udiv4_i_cast_cast(p_udiv4_i_cast_cast_reg_187),.mul_ln12281(sub_ln12281_reg_202),.v7929_3_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_address0),.v7929_3_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_ce0),.v7929_3_i_q0(v7929_3_i_q0),.v7929_2_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_address0),.v7929_2_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_ce0),.v7929_2_i_q0(v7929_2_i_q0),.v7929_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_address0),.v7929_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_ce0),.v7929_1_i_q0(v7929_1_i_q0),.v7929_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_address0),.v7929_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_ce0),.v7929_i_q0(v7929_i_q0),.zext_ln12342_cast_cast(zext_ln12342_cast_cast_reg_192),.p_udiv6_i_cast_cast(p_udiv6_i_cast_cast_reg_197));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call25) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_i57_cast_cast_i_cast_cast_reg_182[2] <= mul_i57_cast_cast_i_cast_cast_fu_111_p3[2];
        p_udiv4_i_cast_cast_reg_187[1] <= p_udiv4_i_cast_cast_fu_120_p3[1];
        p_udiv6_i_cast_cast_reg_197[1] <= p_udiv6_i_cast_cast_fu_142_p3[1];
        sub_ln12281_reg_202[10 : 2] <= sub_ln12281_fu_175_p2[10 : 2];
        zext_ln12342_cast_cast_reg_192[2] <= zext_ln12342_cast_cast_fu_133_p3[2];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call25 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_129_p1 = p_read[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_ap_start_reg;
assign mul_i57_cast_cast_i_cast_cast_fu_111_p3 = ((tmp_fu_103_p3[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign p_shl_fu_155_p3 = {{trunc_ln12281_fu_151_p1}, {5'd0}};
assign p_udiv4_i_cast_cast_fu_120_p3 = ((tmp_fu_103_p3[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign p_udiv6_i_cast_cast_fu_142_p3 = ((empty_fu_129_p1[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign sub_ln12281_fu_175_p2 = (p_shl_fu_155_p3 - zext_ln12281_fu_171_p1);
assign tmp_398_fu_163_p3 = {{trunc_ln12281_fu_151_p1}, {2'd0}};
assign tmp_fu_103_p3 = p_read[32'd1];
assign trunc_ln12281_fu_151_p1 = p_read1[5:0];
assign v7929_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_address0;
assign v7929_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_1_i_ce0;
assign v7929_2_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_address0;
assign v7929_2_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_2_i_ce0;
assign v7929_3_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_address0;
assign v7929_3_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_3_i_ce0;
assign v7929_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_address0;
assign v7929_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v7929_i_ce0;
assign v9200_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_address0;
assign v9200_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_ce0;
assign v9200_0_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_d0;
assign v9200_0_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_0_we0;
assign v9200_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_address0;
assign v9200_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_ce0;
assign v9200_0_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_d0;
assign v9200_0_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_0_1_we0;
assign v9200_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_address0;
assign v9200_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_ce0;
assign v9200_1_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_d0;
assign v9200_1_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_0_we0;
assign v9200_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_address0;
assign v9200_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_ce0;
assign v9200_1_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_d0;
assign v9200_1_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12271_1_proc17651_Pipeline_V_fu_78_v9200_1_1_we0;
assign zext_ln12281_fu_171_p1 = tmp_398_fu_163_p3;
assign zext_ln12342_cast_cast_fu_133_p3 = ((empty_fu_129_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
always @ (posedge ap_clk) begin
    mul_i57_cast_cast_i_cast_cast_reg_182[1:0] <= 2'b00;
    p_udiv4_i_cast_cast_reg_187[0] <= 1'b0;
    zext_ln12342_cast_cast_reg_192[1:0] <= 2'b00;
    p_udiv6_i_cast_cast_reg_197[0] <= 1'b0;
    sub_ln12281_reg_202[1:0] <= 2'b00;
end
endmodule 