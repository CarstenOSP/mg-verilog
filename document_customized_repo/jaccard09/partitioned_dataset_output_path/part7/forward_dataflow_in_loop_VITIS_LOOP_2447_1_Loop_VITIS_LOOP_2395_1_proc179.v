
module forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v1696_address0,v1696_ce0,v1696_we0,v1696_d0,v1696_1_address0,v1696_1_ce0,v1696_1_we0,v1696_1_d0,v1688_0,v9189_0_address0,v9189_0_ce0,v9189_0_q0,v9189_1_address0,v9189_1_ce0,v9189_1_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v1696_address0;
output   v1696_ce0;
output   v1696_we0;
output  [7:0] v1696_d0;
output  [8:0] v1696_1_address0;
output   v1696_1_ce0;
output   v1696_1_we0;
output  [7:0] v1696_1_d0;
input  [12:0] v1688_0;
output  [15:0] v9189_0_address0;
output   v9189_0_ce0;
input  [7:0] v9189_0_q0;
output  [15:0] v9189_1_address0;
output   v9189_1_ce0;
input  [7:0] v9189_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] rem5_fu_101_p3;
reg   [8:0] rem5_reg_138;
reg    ap_block_state1;
wire   [7:0] shl_ln_fu_110_p3;
reg   [7:0] shl_ln_reg_143;
wire   [7:0] mul_i_fu_129_p3;
reg   [7:0] mul_i_reg_148;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg;
reg    ap_block_state1_ignore_call14;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_ln2451_fu_85_p0;
wire   [14:0] mul_ln2451_fu_85_p1;
wire   [26:0] mul_ln2451_fu_85_p2;
wire   [3:0] tmp_fu_91_p4;
wire   [2:0] tmp_s_fu_119_p4;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire   [26:0] mul_ln2451_fu_85_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_ready),.rem5(rem5_reg_138),.shl_ln(shl_ln_reg_143),.v1696_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_address0),.v1696_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_ce0),.v1696_we0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_we0),.v1696_d0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_d0),.v1696_1_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_address0),.v1696_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_ce0),.v1696_1_we0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_we0),.v1696_1_d0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_d0),.mul_i(mul_i_reg_148),.v9189_0_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_address0),.v9189_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_ce0),.v9189_0_q0(v9189_0_q0),.v9189_1_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_address0),.v9189_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_ce0),.v9189_1_q0(v9189_1_q0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U10780(.din0(mul_ln2451_fu_85_p0),.din1(mul_ln2451_fu_85_p1),.dout(mul_ln2451_fu_85_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call14) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_i_reg_148[7 : 5] <= mul_i_fu_129_p3[7 : 5];
        rem5_reg_138[8 : 5] <= rem5_fu_101_p3[8 : 5];
        shl_ln_reg_143[7 : 4] <= shl_ln_fu_110_p3[7 : 4];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call14 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_ap_start_reg;
assign mul_i_fu_129_p3 = {{tmp_s_fu_119_p4}, {5'd0}};
assign mul_ln2451_fu_85_p0 = mul_ln2451_fu_85_p00;
assign mul_ln2451_fu_85_p00 = v1688_0;
assign mul_ln2451_fu_85_p1 = 27'd10700;
assign rem5_fu_101_p3 = {{tmp_fu_91_p4}, {5'd0}};
assign shl_ln_fu_110_p3 = {{tmp_fu_91_p4}, {4'd0}};
assign tmp_fu_91_p4 = {{mul_ln2451_fu_85_p2[22:19]}};
assign tmp_s_fu_119_p4 = {{mul_ln2451_fu_85_p2[25:23]}};
assign v1696_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_address0;
assign v1696_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_ce0;
assign v1696_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_d0;
assign v1696_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_1_we0;
assign v1696_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_address0;
assign v1696_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_ce0;
assign v1696_d0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_d0;
assign v1696_we0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v1696_we0;
assign v9189_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_address0;
assign v9189_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_0_ce0;
assign v9189_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_address0;
assign v9189_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_Pipeline_VITIS_fu_66_v9189_1_ce0;
always @ (posedge ap_clk) begin
    rem5_reg_138[4:0] <= 5'b00000;
    shl_ln_reg_143[3:0] <= 4'b0000;
    mul_i_reg_148[4:0] <= 5'b00000;
end
endmodule 
