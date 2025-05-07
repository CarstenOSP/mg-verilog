module forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v172,v175_address0,v175_ce0,v175_we0,v175_d0,v175_1_address0,v175_1_ce0,v175_1_we0,v175_1_d0,v167_0_address0,v167_0_ce0,v167_0_q0,v167_1_address0,v167_1_ce0,v167_1_q0,v167_2_address0,v167_2_ce0,v167_2_q0,v167_3_address0,v167_3_ce0,v167_3_q0,v179_address0,v179_ce0,v179_we0,v179_d0,v179_address1,v179_ce1,v179_q1,v179_1_address0,v179_1_ce0,v179_1_we0,v179_1_d0,v179_1_address1,v179_1_ce1,v179_1_q1,v178_1_address0,v178_1_ce0,v178_1_q0,v177_1_address0,v177_1_ce0,v177_1_q0,v178_address0,v178_ce0,v178_q0,v177_address0,v177_ce0,v177_q0,v176_1_address0,v176_1_ce0,v176_1_q0,v176_address0,v176_ce0,v176_q0,ap_return_0,ap_return_1); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [9:0] v172;
output  [3:0] v175_address0;
output   v175_ce0;
output   v175_we0;
output  [6:0] v175_d0;
output  [3:0] v175_1_address0;
output   v175_1_ce0;
output   v175_1_we0;
output  [6:0] v175_1_d0;
output  [5:0] v167_0_address0;
output   v167_0_ce0;
input  [7:0] v167_0_q0;
output  [5:0] v167_1_address0;
output   v167_1_ce0;
input  [7:0] v167_1_q0;
output  [5:0] v167_2_address0;
output   v167_2_ce0;
input  [7:0] v167_2_q0;
output  [5:0] v167_3_address0;
output   v167_3_ce0;
input  [7:0] v167_3_q0;
output  [3:0] v179_address0;
output   v179_ce0;
output   v179_we0;
output  [7:0] v179_d0;
output  [3:0] v179_address1;
output   v179_ce1;
input  [7:0] v179_q1;
output  [3:0] v179_1_address0;
output   v179_1_ce0;
output   v179_1_we0;
output  [7:0] v179_1_d0;
output  [3:0] v179_1_address1;
output   v179_1_ce1;
input  [7:0] v179_1_q1;
output  [8:0] v178_1_address0;
output   v178_1_ce0;
input  [7:0] v178_1_q0;
output  [3:0] v177_1_address0;
output   v177_1_ce0;
input  [7:0] v177_1_q0;
output  [8:0] v178_address0;
output   v178_ce0;
input  [7:0] v178_q0;
output  [3:0] v177_address0;
output   v177_ce0;
input  [7:0] v177_q0;
output  [3:0] v176_1_address0;
output   v176_1_ce0;
input  [7:0] v176_1_q0;
output  [3:0] v176_address0;
output   v176_ce0;
input  [7:0] v176_q0;
output  [10:0] ap_return_0;
output  [10:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] ap_return_0;
reg[10:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [7:0] mul_i_i_i_fu_106_p3;
reg   [7:0] mul_i_i_i_reg_146;
wire   [8:0] mul26_i_i_i_i_fu_119_p2;
reg   [8:0] mul26_i_i_i_i_reg_151;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_ready;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_ce0;
wire   [5:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_we0;
wire   [6:0] grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg;
reg    ap_block_state1_ignore_call20;
wire    ap_CS_fsm_state2;
wire   [2:0] tmp_i_fu_96_p4;
wire   [8:0] p_shl_fu_115_p1;
wire   [10:0] v172_cast_i_fu_126_p1;
reg   [10:0] ap_return_0_preg;
reg   [10:0] ap_return_1_preg;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 11'd0;
#0 ap_return_1_preg = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_ready),.mul_i_i_i(mul_i_i_i_reg_146),.v167_0_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_address0),.v167_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_ce0),.v167_0_q0(v167_0_q0),.v167_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_address0),.v167_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_ce0),.v167_1_q0(v167_1_q0),.v167_2_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_address0),.v167_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_ce0),.v167_2_q0(v167_2_q0),.v167_3_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_address0),.v167_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_ce0),.v167_3_q0(v167_3_q0),.mul26_i_i_i_i(mul26_i_i_i_i_reg_151),.v178_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_address0),.v178_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_ce0),.v178_1_q0(v178_1_q0),.v178_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_address0),.v178_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_ce0),.v178_q0(v178_q0),.v177_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_address0),.v177_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_ce0),.v177_1_q0(v177_1_q0),.v179_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address0),.v179_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce0),.v179_1_we0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_we0),.v179_1_d0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_d0),.v179_1_address1(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address1),.v179_1_ce1(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce1),.v179_1_q1(v179_1_q1),.v177_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_address0),.v177_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_ce0),.v177_q0(v177_q0),.v179_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address0),.v179_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce0),.v179_we0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_we0),.v179_d0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_d0),.v179_address1(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address1),.v179_ce1(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce1),.v179_q1(v179_q1),.v176_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_address0),.v176_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_ce0),.v176_1_q0(v176_1_q0),.v176_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_address0),.v176_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_ce0),.v176_q0(v176_q0),.v175_1_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_address0),.v175_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_ce0),.v175_1_we0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_we0),.v175_1_d0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_d0),.v175_address0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_address0),.v175_ce0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_ce0),.v175_we0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_we0),.v175_d0(grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_d0));
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
        ap_return_0_preg[5] <= 1'b0;
        ap_return_0_preg[6] <= 1'b0;
        ap_return_0_preg[7] <= 1'b0;
        ap_return_0_preg[8] <= 1'b0;
        ap_return_0_preg[9] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
                        ap_return_0_preg[9 : 0] <= v172_cast_i_fu_126_p1[9 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
        ap_return_1_preg[6] <= 1'b0;
        ap_return_1_preg[7] <= 1'b0;
        ap_return_1_preg[8] <= 1'b0;
        ap_return_1_preg[9] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
                        ap_return_1_preg[9 : 0] <= v172_cast_i_fu_126_p1[9 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_ignore_call20))) begin
            grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        mul26_i_i_i_i_reg_151[8 : 5] <= mul26_i_i_i_i_fu_119_p2[8 : 5];
        mul_i_i_i_reg_146[7 : 5] <= mul_i_i_i_fu_106_p3[7 : 5];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
        ap_return_0 = v172_cast_i_fu_126_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
        ap_return_1 = v172_cast_i_fu_126_p1;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_done == 1'b1))) begin
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
    ap_block_state1_ignore_call20 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_ap_start_reg;
assign mul26_i_i_i_i_fu_119_p2 = (9'd0 - p_shl_fu_115_p1);
assign mul_i_i_i_fu_106_p3 = {{tmp_i_fu_96_p4}, {5'd0}};
assign p_shl_fu_115_p1 = mul_i_i_i_fu_106_p3;
assign tmp_i_fu_96_p4 = {{v172[9:7]}};
assign v167_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_address0;
assign v167_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_0_ce0;
assign v167_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_address0;
assign v167_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_1_ce0;
assign v167_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_address0;
assign v167_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_2_ce0;
assign v167_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_address0;
assign v167_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v167_3_ce0;
assign v172_cast_i_fu_126_p1 = v172;
assign v175_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_address0;
assign v175_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_ce0;
assign v175_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_d0;
assign v175_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_1_we0;
assign v175_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_address0;
assign v175_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_ce0;
assign v175_d0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_d0;
assign v175_we0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v175_we0;
assign v176_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_address0;
assign v176_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_1_ce0;
assign v176_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_address0;
assign v176_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v176_ce0;
assign v177_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_address0;
assign v177_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_1_ce0;
assign v177_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_address0;
assign v177_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v177_ce0;
assign v178_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_address0;
assign v178_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_1_ce0;
assign v178_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_address0;
assign v178_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v178_ce0;
assign v179_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address0;
assign v179_1_address1 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_address1;
assign v179_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce0;
assign v179_1_ce1 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_ce1;
assign v179_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_d0;
assign v179_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_1_we0;
assign v179_address0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address0;
assign v179_address1 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_address1;
assign v179_ce0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce0;
assign v179_ce1 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_ce1;
assign v179_d0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_d0;
assign v179_we0 = grp_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_Pipeline_VITIS_L_fu_62_v179_we0;
always @ (posedge ap_clk) begin
    mul_i_i_i_reg_146[4:0] <= 5'b00000;
    mul26_i_i_i_i_reg_151[4:0] <= 5'b00000;
    ap_return_0_preg[10] <= 1'b0;
    ap_return_1_preg[10] <= 1'b0;
end
endmodule 