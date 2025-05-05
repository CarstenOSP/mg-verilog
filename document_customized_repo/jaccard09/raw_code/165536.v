module forward_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v10096_address0,v10096_ce0,v10096_we0,v10096_d0,v10096_1_address0,v10096_1_ce0,v10096_1_we0,v10096_1_d0,v10096_2_address0,v10096_2_ce0,v10096_2_we0,v10096_2_d0,v10096_3_address0,v10096_3_ce0,v10096_3_we0,v10096_3_d0,v10089_0,v16150_0_0_address0,v16150_0_0_ce0,v16150_0_0_q0,v16150_0_1_address0,v16150_0_1_ce0,v16150_0_1_q0,v16150_1_0_address0,v16150_1_0_ce0,v16150_1_0_q0,v16150_1_1_address0,v16150_1_1_ce0,v16150_1_1_q0,ap_return); 
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
output  [7:0] v10096_address0;
output   v10096_ce0;
output   v10096_we0;
output  [7:0] v10096_d0;
output  [7:0] v10096_1_address0;
output   v10096_1_ce0;
output   v10096_1_we0;
output  [7:0] v10096_1_d0;
output  [7:0] v10096_2_address0;
output   v10096_2_ce0;
output   v10096_2_we0;
output  [7:0] v10096_2_d0;
output  [7:0] v10096_3_address0;
output   v10096_3_ce0;
output   v10096_3_we0;
output  [7:0] v10096_3_d0;
input  [9:0] v10089_0;
output  [15:0] v16150_0_0_address0;
output   v16150_0_0_ce0;
input  [7:0] v16150_0_0_q0;
output  [15:0] v16150_0_1_address0;
output   v16150_0_1_ce0;
input  [7:0] v16150_0_1_q0;
output  [15:0] v16150_1_0_address0;
output   v16150_1_0_ce0;
input  [7:0] v16150_1_0_q0;
output  [15:0] v16150_1_1_address0;
output   v16150_1_1_ce0;
input  [7:0] v16150_1_1_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [1:0] tmp_reg_227;
wire   [5:0] trunc_ln_fu_124_p4;
reg   [1:0] tmp_s_reg_238;
wire   [1:0] grp_fu_170_p2;
reg   [1:0] urem_ln12842_reg_249;
wire    ap_CS_fsm_state8;
wire   [6:0] mul_i_fu_182_p3;
reg   [6:0] mul_i_reg_254;
wire    ap_CS_fsm_state10;
wire   [5:0] p_udiv35_cast_fu_190_p3;
reg   [5:0] p_udiv35_cast_reg_259;
wire   [6:0] mul_i10_fu_198_p3;
reg   [6:0] mul_i10_reg_264;
wire   [5:0] shl_ln_fu_206_p3;
reg   [5:0] shl_ln_reg_269;
wire   [1:0] trunc_ln12841_fu_214_p1;
reg   [1:0] trunc_ln12841_reg_274;
wire   [1:0] empty_fu_218_p1;
reg   [1:0] empty_reg_279;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln12843_fu_138_p0;
wire   [12:0] zext_ln12843_fu_134_p1;
wire   [7:0] mul_ln12843_fu_138_p1;
wire   [12:0] mul_ln12843_fu_138_p2;
wire   [5:0] mul_ln12842_fu_154_p0;
wire   [7:0] mul_ln12842_fu_154_p1;
wire   [12:0] mul_ln12842_fu_154_p2;
wire   [3:0] grp_fu_170_p0;
wire   [2:0] grp_fu_170_p1;
wire   [5:0] grp_fu_176_p0;
wire   [2:0] grp_fu_176_p1;
wire   [1:0] grp_fu_176_p2;
reg    grp_fu_170_ap_start;
wire    grp_fu_170_ap_done;
reg    grp_fu_170_ce;
wire    ap_CS_fsm_state9;
reg    grp_fu_176_ap_start;
wire    grp_fu_176_ap_done;
reg    grp_fu_176_ce;
reg   [9:0] ap_return_preg;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_ready),.mul_i(mul_i_reg_254),.p_udiv35_cast(p_udiv35_cast_reg_259),.v10096_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_address0),.v10096_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_ce0),.v10096_we0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_we0),.v10096_d0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_d0),.v10096_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_address0),.v10096_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_ce0),.v10096_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_we0),.v10096_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_d0),.v10096_2_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_address0),.v10096_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_ce0),.v10096_2_we0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_we0),.v10096_2_d0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_d0),.v10096_3_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_address0),.v10096_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_ce0),.v10096_3_we0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_we0),.v10096_3_d0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_d0),.mul_i19(mul_i10_reg_264),.shl_ln(shl_ln_reg_269),.zext_ln12549_1(trunc_ln12841_reg_274),.zext_ln12549(empty_reg_279),.v16150_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_address0),.v16150_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_ce0),.v16150_0_0_q0(v16150_0_0_q0),.v16150_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_address0),.v16150_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_ce0),.v16150_1_0_q0(v16150_1_0_q0),.v16150_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_address0),.v16150_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_ce0),.v16150_0_1_q0(v16150_0_1_q0),.v16150_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_address0),.v16150_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_ce0),.v16150_1_1_q0(v16150_1_1_q0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U8208(.din0(mul_ln12843_fu_138_p0),.din1(mul_ln12843_fu_138_p1),.dout(mul_ln12843_fu_138_p2));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U8209(.din0(mul_ln12842_fu_154_p0),.din1(mul_ln12842_fu_154_p1),.dout(mul_ln12842_fu_154_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U8210(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_170_ap_start),.done(grp_fu_170_ap_done),.din0(grp_fu_170_p0),.din1(grp_fu_170_p1),.ce(grp_fu_170_ce),.dout(grp_fu_170_p2));
forward_urem_6ns_3ns_2_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_6ns_3ns_2_10_seq_1_U8211(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_176_ap_start),.done(grp_fu_176_ap_done),.din0(grp_fu_176_p0),.din1(grp_fu_176_p1),.ce(grp_fu_176_ce),.dout(grp_fu_176_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
            ap_return_preg <= v10089_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_reg_279 <= empty_fu_218_p1;
        mul_i10_reg_264[6 : 5] <= mul_i10_fu_198_p3[6 : 5];
        mul_i_reg_254[6 : 5] <= mul_i_fu_182_p3[6 : 5];
        p_udiv35_cast_reg_259[5 : 4] <= p_udiv35_cast_fu_190_p3[5 : 4];
        shl_ln_reg_269[5 : 4] <= shl_ln_fu_206_p3[5 : 4];
        trunc_ln12841_reg_274 <= trunc_ln12841_fu_214_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_227 <= {{v10089_0[3:2]}};
        tmp_s_reg_238 <= {{mul_ln12843_fu_138_p2[11:10]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        urem_ln12842_reg_249 <= grp_fu_170_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
        ap_return = v10089_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_170_ap_start = 1'b1;
    end else begin
        grp_fu_170_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_170_ce = 1'b0;
    end else begin
        grp_fu_170_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_176_ap_start = 1'b1;
    end else begin
        grp_fu_176_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_176_ce = 1'b0;
    end else begin
        grp_fu_176_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_done == 1'b1))) begin
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
assign empty_fu_218_p1 = grp_fu_176_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_ap_start_reg;
assign grp_fu_170_p0 = {{mul_ln12842_fu_154_p2[11:8]}};
assign grp_fu_170_p1 = 4'd3;
assign grp_fu_176_p0 = {{v10089_0[9:4]}};
assign grp_fu_176_p1 = 6'd3;
assign mul_i10_fu_198_p3 = {{tmp_s_reg_238}, {5'd0}};
assign mul_i_fu_182_p3 = {{tmp_reg_227}, {5'd0}};
assign mul_ln12842_fu_154_p0 = zext_ln12843_fu_134_p1;
assign mul_ln12842_fu_154_p1 = 13'd86;
assign mul_ln12843_fu_138_p0 = zext_ln12843_fu_134_p1;
assign mul_ln12843_fu_138_p1 = 13'd114;
assign p_udiv35_cast_fu_190_p3 = {{tmp_reg_227}, {4'd0}};
assign shl_ln_fu_206_p3 = {{tmp_s_reg_238}, {4'd0}};
assign trunc_ln12841_fu_214_p1 = urem_ln12842_reg_249[1:0];
assign trunc_ln_fu_124_p4 = {{v10089_0[9:4]}};
assign v10096_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_address0;
assign v10096_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_ce0;
assign v10096_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_d0;
assign v10096_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_1_we0;
assign v10096_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_address0;
assign v10096_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_ce0;
assign v10096_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_d0;
assign v10096_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_2_we0;
assign v10096_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_address0;
assign v10096_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_ce0;
assign v10096_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_d0;
assign v10096_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_3_we0;
assign v10096_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_address0;
assign v10096_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_ce0;
assign v10096_d0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_d0;
assign v10096_we0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v10096_we0;
assign v16150_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_address0;
assign v16150_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_0_ce0;
assign v16150_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_address0;
assign v16150_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_0_1_ce0;
assign v16150_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_address0;
assign v16150_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_0_ce0;
assign v16150_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_address0;
assign v16150_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12836_1_Loop_VITIS_LOOP_12515_1_proc85_Pipeline_VITI_fu_88_v16150_1_1_ce0;
assign zext_ln12843_fu_134_p1 = trunc_ln_fu_124_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_254[4:0] <= 5'b00000;
    p_udiv35_cast_reg_259[3:0] <= 4'b0000;
    mul_i10_reg_264[4:0] <= 5'b00000;
    shl_ln_reg_269[3:0] <= 4'b0000;
end
endmodule 