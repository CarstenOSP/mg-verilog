module forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v148_i_address0,v148_i_ce0,v148_i_we0,v148_i_d0,v148_1_i_address0,v148_1_i_ce0,v148_1_i_we0,v148_1_i_d0,v152_i_address0,v152_i_ce0,v152_i_q0,v153_i_address0,v153_i_ce0,v153_i_we0,v153_i_d0,v153_i_address1,v153_i_ce1,v153_i_q1,v153_1_i_address0,v153_1_i_ce0,v153_1_i_we0,v153_1_i_d0,v153_1_i_address1,v153_1_i_ce1,v153_1_i_q1,v151_1_i_address0,v151_1_i_ce0,v151_1_i_q0,v150_1_i_address0,v150_1_i_ce0,v150_1_i_q0,v151_i_address0,v151_i_ce0,v151_i_q0,v150_i_address0,v150_i_ce0,v150_i_q0,v149_1_i_address0,v149_1_i_ce0,v149_1_i_q0,v149_i_address0,v149_i_ce0,v149_i_q0,ap_return_0,ap_return_1); 
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
input  [11:0] p_read;
output  [3:0] v148_i_address0;
output   v148_i_ce0;
output   v148_i_we0;
output  [7:0] v148_i_d0;
output  [3:0] v148_1_i_address0;
output   v148_1_i_ce0;
output   v148_1_i_we0;
output  [7:0] v148_1_i_d0;
output  [4:0] v152_i_address0;
output   v152_i_ce0;
input  [7:0] v152_i_q0;
output  [3:0] v153_i_address0;
output   v153_i_ce0;
output   v153_i_we0;
output  [7:0] v153_i_d0;
output  [3:0] v153_i_address1;
output   v153_i_ce1;
input  [7:0] v153_i_q1;
output  [3:0] v153_1_i_address0;
output   v153_1_i_ce0;
output   v153_1_i_we0;
output  [7:0] v153_1_i_d0;
output  [3:0] v153_1_i_address1;
output   v153_1_i_ce1;
input  [7:0] v153_1_i_q1;
output  [8:0] v151_1_i_address0;
output   v151_1_i_ce0;
input  [7:0] v151_1_i_q0;
output  [3:0] v150_1_i_address0;
output   v150_1_i_ce0;
input  [7:0] v150_1_i_q0;
output  [8:0] v151_i_address0;
output   v151_i_ce0;
input  [7:0] v151_i_q0;
output  [3:0] v150_i_address0;
output   v150_i_ce0;
input  [7:0] v150_i_q0;
output  [3:0] v149_1_i_address0;
output   v149_1_i_ce0;
input  [7:0] v149_1_i_q0;
output  [3:0] v149_i_address0;
output   v149_i_ce0;
input  [7:0] v149_i_q0;
output  [12:0] ap_return_0;
output  [12:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return_0;
reg[12:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [5:0] tmp_reg_131;
wire   [11:0] mul_i26_i_i_fu_104_p2;
reg   [11:0] mul_i26_i_i_reg_136;
wire    ap_CS_fsm_state2;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce1;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [10:0] tmp_140_fu_93_p3;
wire   [11:0] p_shl_fu_100_p1;
wire   [12:0] p_read_cast_fu_111_p1;
reg   [12:0] ap_return_0_preg;
reg   [12:0] ap_return_1_preg;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 13'd0;
#0 ap_return_1_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_ready),.v152_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_address0),.v152_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_ce0),.v152_i_q0(v152_i_q0),.mul_i26_i_i(mul_i26_i_i_reg_136),.v151_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_address0),.v151_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_ce0),.v151_1_i_q0(v151_1_i_q0),.v151_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_address0),.v151_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_ce0),.v151_i_q0(v151_i_q0),.v150_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_address0),.v150_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_ce0),.v150_1_i_q0(v150_1_i_q0),.v153_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address0),.v153_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce0),.v153_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_we0),.v153_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_d0),.v153_1_i_address1(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address1),.v153_1_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce1),.v153_1_i_q1(v153_1_i_q1),.v150_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_address0),.v150_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_ce0),.v150_i_q0(v150_i_q0),.v153_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address0),.v153_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce0),.v153_i_we0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_we0),.v153_i_d0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_d0),.v153_i_address1(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address1),.v153_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce1),.v153_i_q1(v153_i_q1),.v149_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_address0),.v149_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_ce0),.v149_1_i_q0(v149_1_i_q0),.v149_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_address0),.v149_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_ce0),.v149_i_q0(v149_i_q0),.v148_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_address0),.v148_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_ce0),.v148_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_we0),.v148_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_d0),.v148_i_address0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_address0),.v148_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_ce0),.v148_i_we0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_we0),.v148_i_d0(grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_d0));
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
        end else if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
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
        ap_return_0_preg[10] <= 1'b0;
        ap_return_0_preg[11] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
                        ap_return_0_preg[11 : 0] <= p_read_cast_fu_111_p1[11 : 0];
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
        ap_return_1_preg[10] <= 1'b0;
        ap_return_1_preg[11] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
                        ap_return_1_preg[11 : 0] <= p_read_cast_fu_111_p1[11 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_i26_i_i_reg_136[11 : 5] <= mul_i26_i_i_fu_104_p2[11 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        tmp_reg_131 <= {{p_read[11:6]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
        ap_return_0 = p_read_cast_fu_111_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
        ap_return_1 = p_read_cast_fu_111_p1;
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
            if (((1'b1 == ap_CS_fsm_state3) & (grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_done == 1'b1))) begin
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
assign grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_ap_start_reg;
assign mul_i26_i_i_fu_104_p2 = (12'd0 - p_shl_fu_100_p1);
assign p_read_cast_fu_111_p1 = p_read;
assign p_shl_fu_100_p1 = tmp_140_fu_93_p3;
assign tmp_140_fu_93_p3 = {{tmp_reg_131}, {5'd0}};
assign v148_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_address0;
assign v148_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_ce0;
assign v148_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_d0;
assign v148_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_1_i_we0;
assign v148_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_address0;
assign v148_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_ce0;
assign v148_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_d0;
assign v148_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v148_i_we0;
assign v149_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_address0;
assign v149_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_1_i_ce0;
assign v149_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_address0;
assign v149_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v149_i_ce0;
assign v150_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_address0;
assign v150_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_1_i_ce0;
assign v150_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_address0;
assign v150_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v150_i_ce0;
assign v151_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_address0;
assign v151_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_1_i_ce0;
assign v151_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_address0;
assign v151_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v151_i_ce0;
assign v152_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_address0;
assign v152_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v152_i_ce0;
assign v153_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address0;
assign v153_1_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_address1;
assign v153_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce0;
assign v153_1_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_ce1;
assign v153_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_d0;
assign v153_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_1_i_we0;
assign v153_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address0;
assign v153_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_address1;
assign v153_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce0;
assign v153_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_ce1;
assign v153_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_d0;
assign v153_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_Pipeline_VITIS_L_fu_56_v153_i_we0;
always @ (posedge ap_clk) begin
    mul_i26_i_i_reg_136[4:0] <= 5'b00000;
    ap_return_0_preg[12] <= 1'b0;
    ap_return_1_preg[12] <= 1'b0;
end
endmodule 