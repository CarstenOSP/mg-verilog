
module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4363_address0,v4363_ce0,v4363_we0,v4363_d0,v4363_1_address0,v4363_1_ce0,v4363_1_we0,v4363_1_d0,v4363_2_address0,v4363_2_ce0,v4363_2_we0,v4363_2_d0,v4363_3_address0,v4363_3_ce0,v4363_3_we0,v4363_3_d0,v4354_0,v9237_0_address0,v9237_0_ce0,v9237_0_q0,v9237_1_address0,v9237_1_ce0,v9237_1_q0,v9237_2_address0,v9237_2_ce0,v9237_2_q0,v9237_3_address0,v9237_3_ce0,v9237_3_q0);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v4363_address0;
output   v4363_ce0;
output   v4363_we0;
output  [7:0] v4363_d0;
output  [8:0] v4363_1_address0;
output   v4363_1_ce0;
output   v4363_1_we0;
output  [7:0] v4363_1_d0;
output  [8:0] v4363_2_address0;
output   v4363_2_ce0;
output   v4363_2_we0;
output  [7:0] v4363_2_d0;
output  [8:0] v4363_3_address0;
output   v4363_3_ce0;
output   v4363_3_we0;
output  [7:0] v4363_3_d0;
input  [10:0] v4354_0;
output  [14:0] v9237_0_address0;
output   v9237_0_ce0;
input  [7:0] v9237_0_q0;
output  [14:0] v9237_1_address0;
output   v9237_1_ce0;
input  [7:0] v9237_1_q0;
output  [14:0] v9237_2_address0;
output   v9237_2_ce0;
input  [7:0] v9237_2_q0;
output  [14:0] v9237_3_address0;
output   v9237_3_ce0;
input  [7:0] v9237_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] trunc_ln_fu_110_p4;
reg    ap_block_state1;
reg   [1:0] tmp_s_reg_218;
reg   [0:0] tmp_reg_224;
wire   [0:0] empty_256_fu_170_p1;
reg   [0:0] empty_256_reg_234;
wire   [1:0] grp_fu_164_p2;
reg   [1:0] urem_ln6433_reg_239;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i_fu_180_p3;
reg   [6:0] mul_i_reg_244;
wire    ap_CS_fsm_state10;
wire   [4:0] select_ln6433_fu_188_p3;
reg   [4:0] select_ln6433_reg_249;
wire   [1:0] empty_fu_196_p1;
reg   [1:0] empty_reg_254;
wire   [4:0] select_ln6432_fu_200_p3;
reg   [4:0] select_ln6432_reg_259;
wire   [1:0] empty_257_fu_208_p1;
reg   [1:0] empty_257_reg_264;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_d0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_d0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_ce0;
wire   [14:0] grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln6434_fu_124_p0;
wire   [12:0] zext_ln6434_fu_120_p1;
wire   [7:0] mul_ln6434_fu_124_p1;
wire   [12:0] mul_ln6434_fu_124_p2;
wire   [5:0] mul_ln6433_fu_148_p0;
wire   [7:0] mul_ln6433_fu_148_p1;
wire   [12:0] mul_ln6433_fu_148_p2;
wire   [3:0] grp_fu_164_p0;
wire   [2:0] grp_fu_164_p1;
wire   [5:0] grp_fu_174_p0;
wire   [2:0] grp_fu_174_p1;
wire   [1:0] grp_fu_174_p2;
reg    grp_fu_164_ap_start;
wire    grp_fu_164_ap_done;
reg    grp_fu_164_ce;
wire    ap_CS_fsm_state9;
reg    grp_fu_174_ap_start;
wire    grp_fu_174_ap_done;
reg    grp_fu_174_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_ready),.mul_i(mul_i_reg_244),.tmp_90(tmp_s_reg_218),.urem_ln6433_cast(empty_reg_254),.select_ln6433(select_ln6433_reg_249),.v4363_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_address0),.v4363_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_ce0),.v4363_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_we0),.v4363_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_d0),.v4363_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_address0),.v4363_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_ce0),.v4363_1_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_we0),.v4363_1_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_d0),.v4363_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_address0),.v4363_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_ce0),.v4363_2_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_we0),.v4363_2_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_d0),.v4363_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_address0),.v4363_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_ce0),.v4363_3_we0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_we0),.v4363_3_d0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_d0),.empty(empty_257_reg_264),.select_ln6432(select_ln6432_reg_259),.v9237_0_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_address0),.v9237_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_ce0),.v9237_0_q0(v9237_0_q0),.v9237_1_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_address0),.v9237_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_ce0),.v9237_1_q0(v9237_1_q0),.v9237_2_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_address0),.v9237_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_ce0),.v9237_2_q0(v9237_2_q0),.v9237_3_address0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_address0),.v9237_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_ce0),.v9237_3_q0(v9237_3_q0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U7373(.din0(mul_ln6434_fu_124_p0),.din1(mul_ln6434_fu_124_p1),.dout(mul_ln6434_fu_124_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U7374(.din0(mul_ln6433_fu_148_p0),.din1(mul_ln6433_fu_148_p1),.dout(mul_ln6433_fu_148_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U7375(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_164_ap_start),.done(grp_fu_164_ap_done),.din0(grp_fu_164_p0),.din1(grp_fu_164_p1),.ce(grp_fu_164_ce),.dout(grp_fu_164_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U7376(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_174_ap_start),.done(grp_fu_174_ap_done),.din0(grp_fu_174_p0),.din1(grp_fu_174_p1),.ce(grp_fu_174_ce),.dout(grp_fu_174_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_256_reg_234 <= empty_256_fu_170_p1;
        tmp_reg_224 <= v4354_0[32'd1];
        tmp_s_reg_218 <= {{mul_ln6434_fu_124_p2[11:10]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_257_reg_264 <= empty_257_fu_208_p1;
        empty_reg_254 <= empty_fu_196_p1;
        mul_i_reg_244[6 : 5] <= mul_i_fu_180_p3[6 : 5];
        select_ln6432_reg_259[1] <= select_ln6432_fu_200_p3[1];
select_ln6432_reg_259[4] <= select_ln6432_fu_200_p3[4];
        select_ln6433_reg_249[1] <= select_ln6433_fu_188_p3[1];
select_ln6433_reg_249[4] <= select_ln6433_fu_188_p3[4];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        urem_ln6433_reg_239 <= grp_fu_164_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_164_ap_start = 1'b1;
    end else begin
        grp_fu_164_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_164_ce = 1'b0;
    end else begin
        grp_fu_164_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_174_ap_start = 1'b1;
    end else begin
        grp_fu_174_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_174_ce = 1'b0;
    end else begin
        grp_fu_174_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_256_fu_170_p1 = v4354_0[0:0];
assign empty_257_fu_208_p1 = grp_fu_174_p2[1:0];
assign empty_fu_196_p1 = urem_ln6433_reg_239[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_ap_start_reg;
assign grp_fu_164_p0 = {{mul_ln6433_fu_148_p2[11:8]}};
assign grp_fu_164_p1 = 4'd3;
assign grp_fu_174_p0 = {{v4354_0[10:5]}};
assign grp_fu_174_p1 = 6'd3;
assign mul_i_fu_180_p3 = {{tmp_s_reg_218}, {5'd0}};
assign mul_ln6433_fu_148_p0 = zext_ln6434_fu_120_p1;
assign mul_ln6433_fu_148_p1 = 13'd86;
assign mul_ln6434_fu_124_p0 = zext_ln6434_fu_120_p1;
assign mul_ln6434_fu_124_p1 = 13'd114;
assign select_ln6432_fu_200_p3 = ((empty_256_reg_234[0:0] == 1'b1) ? 5'd13 : 5'd31);
assign select_ln6433_fu_188_p3 = ((tmp_reg_224[0:0] == 1'b1) ? 5'd13 : 5'd31);
assign trunc_ln_fu_110_p4 = {{v4354_0[10:5]}};
assign v4363_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_address0;
assign v4363_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_ce0;
assign v4363_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_d0;
assign v4363_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_1_we0;
assign v4363_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_address0;
assign v4363_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_ce0;
assign v4363_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_d0;
assign v4363_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_2_we0;
assign v4363_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_address0;
assign v4363_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_ce0;
assign v4363_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_d0;
assign v4363_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_3_we0;
assign v4363_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_address0;
assign v4363_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_ce0;
assign v4363_d0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_d0;
assign v4363_we0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v4363_we0;
assign v9237_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_address0;
assign v9237_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_0_ce0;
assign v9237_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_address0;
assign v9237_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_1_ce0;
assign v9237_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_address0;
assign v9237_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_2_ce0;
assign v9237_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_address0;
assign v9237_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6392_1_proc128_Pipeline_VITIS_fu_84_v9237_3_ce0;
assign zext_ln6434_fu_120_p1 = trunc_ln_fu_110_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_244[4:0] <= 5'b00000;
    select_ln6433_reg_249[0] <= 1'b1;
    select_ln6433_reg_249[3:2] <= 2'b11;
    select_ln6432_reg_259[0] <= 1'b1;
    select_ln6432_reg_259[3:2] <= 2'b11;
end
endmodule 
