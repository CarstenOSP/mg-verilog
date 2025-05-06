
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v509_address0,v509_ce0,v509_we0,v509_d0,v509_1_address0,v509_1_ce0,v509_1_we0,v509_1_d0,v509_2_address0,v509_2_ce0,v509_2_we0,v509_2_d0,v509_3_address0,v509_3_ce0,v509_3_we0,v509_3_d0,v503_0,v9035_0_address0,v9035_0_ce0,v9035_0_q0,v9035_1_address0,v9035_1_ce0,v9035_1_q0,v9035_2_address0,v9035_2_ce0,v9035_2_q0,v9035_3_address0,v9035_3_ce0,v9035_3_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] v509_address0;
output   v509_ce0;
output   v509_we0;
output  [7:0] v509_d0;
output  [2:0] v509_1_address0;
output   v509_1_ce0;
output   v509_1_we0;
output  [7:0] v509_1_d0;
output  [2:0] v509_2_address0;
output   v509_2_ce0;
output   v509_2_we0;
output  [7:0] v509_2_d0;
output  [2:0] v509_3_address0;
output   v509_3_ce0;
output   v509_3_we0;
output  [7:0] v509_3_d0;
input  [14:0] v503_0;
output  [10:0] v9035_0_address0;
output   v9035_0_ce0;
input  [7:0] v9035_0_q0;
output  [10:0] v9035_1_address0;
output   v9035_1_ce0;
input  [7:0] v9035_1_q0;
output  [10:0] v9035_2_address0;
output   v9035_2_ce0;
input  [7:0] v9035_2_q0;
output  [10:0] v9035_3_address0;
output   v9035_3_ce0;
input  [7:0] v9035_3_q0;
output  [14:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [7:0] trunc_ln_fu_108_p4;
reg   [2:0] tmp_reg_200;
wire   [2:0] grp_fu_154_p2;
reg   [2:0] urem_ln952_reg_211;
wire    ap_CS_fsm_state10;
wire   [7:0] mul_i_fu_166_p3;
reg   [7:0] mul_i_reg_216;
wire    ap_CS_fsm_state12;
wire   [5:0] shl_ln_fu_174_p3;
reg   [5:0] shl_ln_reg_221;
wire   [2:0] trunc_ln951_fu_182_p1;
reg   [2:0] trunc_ln951_reg_226;
wire   [2:0] trunc_ln866_fu_186_p1;
reg   [2:0] trunc_ln866_reg_231;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_ready;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_ce0;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [7:0] mul_ln953_fu_122_p0;
wire   [16:0] zext_ln953_fu_118_p1;
wire   [9:0] mul_ln953_fu_122_p1;
wire   [16:0] mul_ln953_fu_122_p2;
wire   [7:0] mul_ln952_fu_138_p0;
wire   [9:0] mul_ln952_fu_138_p1;
wire   [16:0] mul_ln952_fu_138_p2;
wire   [5:0] grp_fu_154_p0;
wire   [3:0] grp_fu_154_p1;
wire   [7:0] grp_fu_160_p0;
wire   [3:0] grp_fu_160_p1;
wire   [2:0] grp_fu_160_p2;
reg    grp_fu_154_ap_start;
wire    grp_fu_154_ap_done;
reg    grp_fu_154_ce;
wire    ap_CS_fsm_state11;
reg    grp_fu_160_ap_start;
wire    grp_fu_160_ap_done;
reg    grp_fu_160_ce;
reg   [14:0] ap_return_preg;
reg   [12:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg = 1'b0;
#0 ap_return_preg = 15'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_ready),.mul_i(mul_i_reg_216),.shl_ln(shl_ln_reg_221),.idxprom1_i491(trunc_ln951_reg_226),.idxprom3_i2(trunc_ln866_reg_231),.v9035_0_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_address0),.v9035_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_ce0),.v9035_0_q0(v9035_0_q0),.v9035_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_address0),.v9035_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_ce0),.v9035_1_q0(v9035_1_q0),.v9035_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_address0),.v9035_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_ce0),.v9035_2_q0(v9035_2_q0),.v9035_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_address0),.v9035_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_ce0),.v9035_3_q0(v9035_3_q0),.v509_3_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_address0),.v509_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_ce0),.v509_3_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_we0),.v509_3_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_d0),.v509_2_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_address0),.v509_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_ce0),.v509_2_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_we0),.v509_2_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_d0),.v509_1_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_address0),.v509_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_ce0),.v509_1_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_we0),.v509_1_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_d0),.v509_address0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_address0),.v509_ce0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_ce0),.v509_we0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_we0),.v509_d0(grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_d0));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9632(.din0(mul_ln953_fu_122_p0),.din1(mul_ln953_fu_122_p1),.dout(mul_ln953_fu_122_p2));
forward_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U9633(.din0(mul_ln952_fu_138_p0),.din1(mul_ln952_fu_138_p1),.dout(mul_ln952_fu_138_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U9634(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_154_ap_start),.done(grp_fu_154_ap_done),.din0(grp_fu_154_p0),.din1(grp_fu_154_p1),.ce(grp_fu_154_ce),.dout(grp_fu_154_p2));
forward_urem_8ns_4ns_3_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_8ns_4ns_3_12_seq_1_U9635(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_160_ap_start),.done(grp_fu_160_ap_done),.din0(grp_fu_160_p0),.din1(grp_fu_160_p1),.ce(grp_fu_160_ce),.dout(grp_fu_160_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 15'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
            ap_return_preg <= v503_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_i_reg_216[7 : 5] <= mul_i_fu_166_p3[7 : 5];
        shl_ln_reg_221[5 : 3] <= shl_ln_fu_174_p3[5 : 3];
        trunc_ln866_reg_231 <= trunc_ln866_fu_186_p1;
        trunc_ln951_reg_226 <= trunc_ln951_fu_182_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_200 <= {{mul_ln953_fu_122_p2[15:13]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln952_reg_211 <= grp_fu_154_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
        ap_return = v503_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_154_ap_start = 1'b1;
    end else begin
        grp_fu_154_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_154_ce = 1'b0;
    end else begin
        grp_fu_154_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_160_ap_start = 1'b1;
    end else begin
        grp_fu_160_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_160_ce = 1'b0;
    end else begin
        grp_fu_160_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
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
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_ap_start_reg;
assign grp_fu_154_p0 = {{mul_ln952_fu_138_p2[16:11]}};
assign grp_fu_154_p1 = 6'd5;
assign grp_fu_160_p0 = {{v503_0[14:7]}};
assign grp_fu_160_p1 = 8'd5;
assign mul_i_fu_166_p3 = {{tmp_reg_200}, {5'd0}};
assign mul_ln952_fu_138_p0 = zext_ln953_fu_118_p1;
assign mul_ln952_fu_138_p1 = 17'd410;
assign mul_ln953_fu_122_p0 = zext_ln953_fu_118_p1;
assign mul_ln953_fu_122_p1 = 17'd328;
assign shl_ln_fu_174_p3 = {{tmp_reg_200}, {3'd0}};
assign trunc_ln866_fu_186_p1 = grp_fu_160_p2[2:0];
assign trunc_ln951_fu_182_p1 = urem_ln952_reg_211[2:0];
assign trunc_ln_fu_108_p4 = {{v503_0[14:7]}};
assign v509_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_address0;
assign v509_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_ce0;
assign v509_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_d0;
assign v509_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_1_we0;
assign v509_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_address0;
assign v509_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_ce0;
assign v509_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_d0;
assign v509_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_2_we0;
assign v509_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_address0;
assign v509_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_ce0;
assign v509_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_d0;
assign v509_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_3_we0;
assign v509_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_address0;
assign v509_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_ce0;
assign v509_d0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_d0;
assign v509_we0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v509_we0;
assign v9035_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_address0;
assign v9035_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_0_ce0;
assign v9035_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_address0;
assign v9035_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_1_ce0;
assign v9035_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_address0;
assign v9035_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_2_ce0;
assign v9035_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_address0;
assign v9035_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_866_1_proc_Pipeline_VITIS_LOOP_fu_84_v9035_3_ce0;
assign zext_ln953_fu_118_p1 = trunc_ln_fu_108_p4;
always @ (posedge ap_clk) begin
    mul_i_reg_216[4:0] <= 5'b00000;
    shl_ln_reg_221[2:0] <= 3'b000;
end
endmodule 
