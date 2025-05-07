module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v82_0,v13743_address0,v13743_ce0,v13743_q0,v89_address0,v89_ce0,v89_we0,v89_d0,ap_return); 
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
input  [12:0] v82_0;
output  [11:0] v13743_address0;
output   v13743_ce0;
input  [7:0] v13743_q0;
output  [4:0] v89_address0;
output   v89_ce0;
output   v89_we0;
output  [7:0] v89_d0;
output  [12:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [6:0] tmp_reg_91;
wire   [11:0] mul_i_fu_79_p3;
reg   [11:0] mul_i_reg_96;
wire    ap_CS_fsm_state2;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [12:0] mul_ln233_fu_63_p0;
wire   [14:0] mul_ln233_fu_63_p1;
wire   [26:0] mul_ln233_fu_63_p2;
reg   [12:0] ap_return_preg;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [26:0] mul_ln233_fu_63_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg = 1'b0;
#0 ap_return_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_ready),.mul_i(mul_i_reg_96),.v13743_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_address0),.v13743_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_ce0),.v13743_q0(v13743_q0),.v89_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_address0),.v89_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_ce0),.v89_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_we0),.v89_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_d0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U14485(.din0(mul_ln233_fu_63_p0),.din1(mul_ln233_fu_63_p1),.dout(mul_ln233_fu_63_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 13'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_preg <= v82_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_i_reg_96[11 : 5] <= mul_i_fu_79_p3[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_91 <= {{mul_ln233_fu_63_p2[25:19]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return = v82_0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_ap_start_reg;
assign mul_i_fu_79_p3 = {{tmp_reg_91}, {5'd0}};
assign mul_ln233_fu_63_p0 = mul_ln233_fu_63_p00;
assign mul_ln233_fu_63_p00 = v82_0;
assign mul_ln233_fu_63_p1 = 27'd10700;
assign v13743_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_address0;
assign v13743_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v13743_ce0;
assign v89_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_address0;
assign v89_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_ce0;
assign v89_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_d0;
assign v89_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_Pipeline_VITIS_LOOP_fu_50_v89_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_96[4:0] <= 5'b00000;
end
endmodule 