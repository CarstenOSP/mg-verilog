
module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v85_address0,v85_ce0,v85_we0,v85_d0,v85_1_address0,v85_1_ce0,v85_1_we0,v85_1_d0,v89_address0,v89_ce0,v89_q0,v90_address0,v90_ce0,v90_we0,v90_d0,v90_address1,v90_ce1,v90_q1,v90_1_address0,v90_1_ce0,v90_1_we0,v90_1_d0,v90_1_address1,v90_1_ce1,v90_1_q1,v88_1_address0,v88_1_ce0,v88_1_q0,v87_1_address0,v87_1_ce0,v87_1_q0,v88_address0,v88_ce0,v88_q0,v87_address0,v87_ce0,v87_q0,v86_1_address0,v86_1_ce0,v86_1_q0,v86_address0,v86_ce0,v86_q0,ap_return_0,ap_return_1);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [12:0] p_read;
output  [3:0] v85_address0;
output   v85_ce0;
output   v85_we0;
output  [7:0] v85_d0;
output  [3:0] v85_1_address0;
output   v85_1_ce0;
output   v85_1_we0;
output  [7:0] v85_1_d0;
output  [4:0] v89_address0;
output   v89_ce0;
input  [7:0] v89_q0;
output  [3:0] v90_address0;
output   v90_ce0;
output   v90_we0;
output  [7:0] v90_d0;
output  [3:0] v90_address1;
output   v90_ce1;
input  [7:0] v90_q1;
output  [3:0] v90_1_address0;
output   v90_1_ce0;
output   v90_1_we0;
output  [7:0] v90_1_d0;
output  [3:0] v90_1_address1;
output   v90_1_ce1;
input  [7:0] v90_1_q1;
output  [8:0] v88_1_address0;
output   v88_1_ce0;
input  [7:0] v88_1_q0;
output  [3:0] v87_1_address0;
output   v87_1_ce0;
input  [7:0] v87_1_q0;
output  [8:0] v88_address0;
output   v88_ce0;
input  [7:0] v88_q0;
output  [3:0] v87_address0;
output   v87_ce0;
input  [7:0] v87_q0;
output  [3:0] v86_1_address0;
output   v86_1_ce0;
input  [7:0] v86_1_q0;
output  [3:0] v86_address0;
output   v86_ce0;
input  [7:0] v86_q0;
output  [12:0] ap_return_0;
output  [12:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return_0;
reg[12:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [7:0] tmp_reg_135;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_i26_i_fu_111_p2;
reg   [12:0] mul_i26_i_reg_140;
wire    ap_CS_fsm_state3;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [12:0] mul_ln233_fu_88_p0;
wire   [14:0] mul_ln233_fu_88_p1;
wire   [26:0] mul_ln233_fu_88_p2;
wire   [12:0] p_shl_fu_104_p3;
reg   [12:0] ap_return_0_preg;
reg   [12:0] ap_return_1_preg;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [26:0] mul_ln233_fu_88_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 13'd0;
#0 ap_return_1_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_ready),.v89_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_address0),.v89_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_ce0),.v89_q0(v89_q0),.mul_i26_i(mul_i26_i_reg_140),.v88_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_address0),.v88_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_ce0),.v88_1_q0(v88_1_q0),.v88_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_address0),.v88_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_ce0),.v88_q0(v88_q0),.v87_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_address0),.v87_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_ce0),.v87_1_q0(v87_1_q0),.v90_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address0),.v90_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce0),.v90_1_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_we0),.v90_1_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_d0),.v90_1_address1(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address1),.v90_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce1),.v90_1_q1(v90_1_q1),.v87_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_address0),.v87_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_ce0),.v87_q0(v87_q0),.v90_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address0),.v90_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce0),.v90_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_we0),.v90_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_d0),.v90_address1(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address1),.v90_ce1(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce1),.v90_q1(v90_q1),.v86_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_address0),.v86_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_ce0),.v86_1_q0(v86_1_q0),.v86_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_address0),.v86_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_ce0),.v86_q0(v86_q0),.v85_1_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_address0),.v85_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_ce0),.v85_1_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_we0),.v85_1_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_d0),.v85_address0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_address0),.v85_ce0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_ce0),.v85_we0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_we0),.v85_d0(grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_d0));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U14541(.din0(mul_ln233_fu_88_p0),.din1(mul_ln233_fu_88_p1),.dout(mul_ln233_fu_88_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 13'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
            ap_return_0_preg <= p_read;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 13'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
            ap_return_1_preg <= p_read;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_i26_i_reg_140[12 : 5] <= mul_i26_i_fu_111_p2[12 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_reg_135 <= {{mul_ln233_fu_88_p2[26:19]}};
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
        ap_return_0 = p_read;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
        ap_return_1 = p_read;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_ap_start_reg;
assign mul_i26_i_fu_111_p2 = (13'd0 - p_shl_fu_104_p3);
assign mul_ln233_fu_88_p0 = mul_ln233_fu_88_p00;
assign mul_ln233_fu_88_p00 = p_read;
assign mul_ln233_fu_88_p1 = 27'd10700;
assign p_shl_fu_104_p3 = {{tmp_reg_135}, {5'd0}};
assign v85_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_address0;
assign v85_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_ce0;
assign v85_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_d0;
assign v85_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_1_we0;
assign v85_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_address0;
assign v85_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_ce0;
assign v85_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_d0;
assign v85_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v85_we0;
assign v86_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_address0;
assign v86_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_1_ce0;
assign v86_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_address0;
assign v86_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v86_ce0;
assign v87_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_address0;
assign v87_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_1_ce0;
assign v87_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_address0;
assign v87_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v87_ce0;
assign v88_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_address0;
assign v88_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_1_ce0;
assign v88_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_address0;
assign v88_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v88_ce0;
assign v89_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_address0;
assign v89_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v89_ce0;
assign v90_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address0;
assign v90_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_address1;
assign v90_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce0;
assign v90_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_ce1;
assign v90_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_d0;
assign v90_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_1_we0;
assign v90_address0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address0;
assign v90_address1 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_address1;
assign v90_ce0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce0;
assign v90_ce1 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_ce1;
assign v90_d0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_d0;
assign v90_we0 = grp_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_Pipeline_VITIS_LOOP_s_fu_58_v90_we0;
always @ (posedge ap_clk) begin
    mul_i26_i_reg_140[4:0] <= 5'b00000;
end
endmodule 
