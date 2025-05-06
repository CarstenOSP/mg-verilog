
module forward_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13602_address0,v13602_ce0,v13602_we0,v13602_d0,v13602_1_address0,v13602_1_ce0,v13602_1_we0,v13602_1_d0,v13602_2_address0,v13602_2_ce0,v13602_2_we0,v13602_2_d0,v13602_3_address0,v13602_3_ce0,v13602_3_we0,v13602_3_d0,v13595_0,v16147_0_0_address0,v16147_0_0_ce0,v16147_0_0_q0,v16147_0_1_address0,v16147_0_1_ce0,v16147_0_1_q0,v16147_1_0_address0,v16147_1_0_ce0,v16147_1_0_q0,v16147_1_1_address0,v16147_1_1_ce0,v16147_1_1_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v13602_address0;
output   v13602_ce0;
output   v13602_we0;
output  [7:0] v13602_d0;
output  [7:0] v13602_1_address0;
output   v13602_1_ce0;
output   v13602_1_we0;
output  [7:0] v13602_1_d0;
output  [7:0] v13602_2_address0;
output   v13602_2_ce0;
output   v13602_2_we0;
output  [7:0] v13602_2_d0;
output  [7:0] v13602_3_address0;
output   v13602_3_ce0;
output   v13602_3_we0;
output  [7:0] v13602_3_d0;
input  [9:0] v13595_0;
output  [13:0] v16147_0_0_address0;
output   v16147_0_0_ce0;
input  [7:0] v16147_0_0_q0;
output  [13:0] v16147_0_1_address0;
output   v16147_0_1_ce0;
input  [7:0] v16147_0_1_q0;
output  [13:0] v16147_1_0_address0;
output   v16147_1_0_ce0;
input  [7:0] v16147_1_0_q0;
output  [13:0] v16147_1_1_address0;
output   v16147_1_1_ce0;
input  [7:0] v16147_1_1_q0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_211;
wire   [4:0] trunc_ln_fu_114_p4;
reg   [0:0] tmp_385_reg_222;
reg   [2:0] trunc_ln17470_2_reg_228;
wire   [5:0] mul_i_fu_168_p3;
reg   [5:0] mul_i_reg_235;
wire    ap_CS_fsm_state9;
wire   [5:0] mul_i4_fu_176_p3;
reg   [5:0] mul_i4_reg_240;
wire   [2:0] select_ln17471_fu_194_p3;
reg   [2:0] select_ln17471_reg_245;
wire   [1:0] empty_fu_202_p1;
reg   [1:0] empty_reg_250;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_ready;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_d0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] mul_ln17472_fu_128_p0;
wire   [10:0] zext_ln17472_fu_124_p1;
wire   [6:0] mul_ln17472_fu_128_p1;
wire   [10:0] mul_ln17472_fu_128_p2;
wire   [14:0] mul_ln17472_cast_fu_134_p1;
wire   [4:0] mul_ln17471_fu_146_p0;
wire   [6:0] mul_ln17471_fu_146_p1;
wire   [10:0] mul_ln17471_fu_146_p2;
wire   [4:0] grp_fu_162_p0;
wire   [2:0] grp_fu_162_p1;
wire   [0:0] icmp_ln17471_fu_184_p2;
wire   [2:0] add_ln17471_fu_189_p2;
wire   [1:0] grp_fu_162_p2;
reg    grp_fu_162_ap_start;
wire    grp_fu_162_ap_done;
reg    grp_fu_162_ce;
reg   [9:0] ap_return_preg;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_ready),.mul_i(mul_i_reg_235),.v13602_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_address0),.v13602_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_ce0),.v13602_we0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_we0),.v13602_d0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_d0),.v13602_1_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_address0),.v13602_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_ce0),.v13602_1_we0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_we0),.v13602_1_d0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_d0),.v13602_2_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_address0),.v13602_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_ce0),.v13602_2_we0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_we0),.v13602_2_d0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_d0),.v13602_3_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_address0),.v13602_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_ce0),.v13602_3_we0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_we0),.v13602_3_d0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_d0),.mul_i13(mul_i4_reg_240),.empty_106(tmp_reg_211),.empty(tmp_385_reg_222),.zext_ln17178_1(select_ln17471_reg_245),.zext_ln17178(empty_reg_250),.v16147_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_address0),.v16147_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_ce0),.v16147_0_0_q0(v16147_0_0_q0),.v16147_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_address0),.v16147_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_ce0),.v16147_1_0_q0(v16147_1_0_q0),.v16147_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_address0),.v16147_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_ce0),.v16147_0_1_q0(v16147_0_1_q0),.v16147_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_address0),.v16147_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_ce0),.v16147_1_1_q0(v16147_1_1_q0));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U3979(.din0(mul_ln17472_fu_128_p0),.din1(mul_ln17472_fu_128_p1),.dout(mul_ln17472_fu_128_p2));
forward_mul_5ns_7ns_11_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 7 ),.dout_WIDTH( 11 ))
mul_5ns_7ns_11_1_1_U3980(.din0(mul_ln17471_fu_146_p0),.din1(mul_ln17471_fu_146_p1),.dout(mul_ln17471_fu_146_p2));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U3981(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_162_ap_start),.done(grp_fu_162_ap_done),.din0(grp_fu_162_p0),.din1(grp_fu_162_p1),.ce(grp_fu_162_ce),.dout(grp_fu_162_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
            ap_return_preg <= v13595_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_reg_250 <= empty_fu_202_p1;
        mul_i4_reg_240[5] <= mul_i4_fu_176_p3[5];
        mul_i_reg_235[5] <= mul_i_fu_168_p3[5];
        select_ln17471_reg_245 <= select_ln17471_fu_194_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_385_reg_222 <= mul_ln17472_cast_fu_134_p1[32'd9];
        tmp_reg_211 <= v13595_0[32'd4];
        trunc_ln17470_2_reg_228 <= {{mul_ln17471_fu_146_p2[9:7]}};
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
        ap_return = v13595_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_162_ap_start = 1'b1;
    end else begin
        grp_fu_162_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_162_ce = 1'b0;
    end else begin
        grp_fu_162_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17471_fu_189_p2 = ($signed(trunc_ln17470_2_reg_228) + $signed(3'd5));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_fu_202_p1 = grp_fu_162_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_ap_start_reg;
assign grp_fu_162_p0 = {{v13595_0[9:5]}};
assign grp_fu_162_p1 = 5'd3;
assign icmp_ln17471_fu_184_p2 = ((trunc_ln17470_2_reg_228 < 3'd3) ? 1'b1 : 1'b0);
assign mul_i4_fu_176_p3 = {{tmp_385_reg_222}, {5'd0}};
assign mul_i_fu_168_p3 = {{tmp_reg_211}, {5'd0}};
assign mul_ln17471_fu_146_p0 = zext_ln17472_fu_124_p1;
assign mul_ln17471_fu_146_p1 = 11'd43;
assign mul_ln17472_cast_fu_134_p1 = mul_ln17472_fu_128_p2;
assign mul_ln17472_fu_128_p0 = zext_ln17472_fu_124_p1;
assign mul_ln17472_fu_128_p1 = 11'd57;
assign select_ln17471_fu_194_p3 = ((icmp_ln17471_fu_184_p2[0:0] == 1'b1) ? trunc_ln17470_2_reg_228 : add_ln17471_fu_189_p2);
assign trunc_ln_fu_114_p4 = {{v13595_0[9:5]}};
assign v13602_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_address0;
assign v13602_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_ce0;
assign v13602_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_d0;
assign v13602_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_1_we0;
assign v13602_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_address0;
assign v13602_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_ce0;
assign v13602_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_d0;
assign v13602_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_2_we0;
assign v13602_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_address0;
assign v13602_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_ce0;
assign v13602_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_d0;
assign v13602_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_3_we0;
assign v13602_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_address0;
assign v13602_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_ce0;
assign v13602_d0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_d0;
assign v13602_we0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v13602_we0;
assign v16147_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_address0;
assign v16147_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_0_ce0;
assign v16147_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_address0;
assign v16147_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_0_1_ce0;
assign v16147_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_address0;
assign v16147_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_0_ce0;
assign v16147_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_address0;
assign v16147_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_17465_1_Loop_VITIS_LOOP_17144_1_proc58_Pipeline_VITI_fu_80_v16147_1_1_ce0;
assign zext_ln17472_fu_124_p1 = trunc_ln_fu_114_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_235[4:0] <= 5'b00000;
    mul_i4_reg_240[4:0] <= 5'b00000;
end
endmodule 
