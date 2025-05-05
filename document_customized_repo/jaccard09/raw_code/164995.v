module forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v1688_0,v9257_address0,v9257_ce0,v9257_q0,v1697_address0,v1697_ce0,v1697_we0,v1697_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [12:0] v1688_0;
output  [15:0] v9257_address0;
output   v9257_ce0;
input  [7:0] v9257_q0;
output  [4:0] v1697_address0;
output   v1697_ce0;
output   v1697_we0;
output  [7:0] v1697_d0;
output  [12:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [2:0] tmp_reg_160;
wire    ap_CS_fsm_state4;
reg   [9:0] trunc_ln_reg_165;
wire   [2:0] grp_fu_75_p2;
reg   [2:0] urem_ln2449_reg_170;
wire    ap_CS_fsm_state17;
wire   [7:0] mul_i_fu_121_p3;
reg   [7:0] mul_i_reg_175;
wire    ap_CS_fsm_state18;
wire   [3:0] mul1_i_fu_133_p3;
reg   [3:0] mul1_i_reg_180;
wire   [3:0] mul4_i_fu_145_p3;
reg   [3:0] mul4_i_reg_185;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_ready;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg;
wire    ap_CS_fsm_state19;
wire   [3:0] grp_fu_75_p1;
wire   [12:0] mul_ln2452_fu_84_p0;
wire   [26:0] zext_ln2452_fu_81_p1;
wire   [14:0] mul_ln2452_fu_84_p1;
wire   [26:0] mul_ln2452_fu_84_p2;
wire   [12:0] mul_ln2450_fu_100_p0;
wire   [14:0] mul_ln2450_fu_100_p1;
wire   [26:0] mul_ln2450_fu_100_p2;
wire   [3:0] grp_fu_116_p1;
wire    ap_CS_fsm_state5;
wire   [2:0] grp_fu_116_p2;
wire   [2:0] empty_fu_129_p1;
wire   [2:0] empty_351_fu_142_p1;
reg    grp_fu_75_ap_start;
wire    grp_fu_75_ap_done;
reg    grp_fu_75_ce;
reg    grp_fu_116_ap_start;
wire    grp_fu_116_ap_done;
reg   [12:0] ap_return_preg;
reg   [18:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_ST_fsm_state19_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 19'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg = 1'b0;
#0 ap_return_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_ready),.mul_i(mul_i_reg_175),.idxprom2_i1(mul1_i_reg_180),.idxprom5_i872(mul4_i_reg_185),.v9257_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_address0),.v9257_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_ce0),.v9257_q0(v9257_q0),.v1697_address0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_address0),.v1697_ce0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_ce0),.v1697_we0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_we0),.v1697_d0(grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_d0));
forward_urem_13ns_4ns_3_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_13ns_4ns_3_17_seq_1_U10764(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_75_ap_start),.done(grp_fu_75_ap_done),.din0(v1688_0),.din1(grp_fu_75_p1),.ce(grp_fu_75_ce),.dout(grp_fu_75_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U10765(.din0(mul_ln2452_fu_84_p0),.din1(mul_ln2452_fu_84_p1),.dout(mul_ln2452_fu_84_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U10766(.din0(mul_ln2450_fu_100_p0),.din1(mul_ln2450_fu_100_p1),.dout(mul_ln2450_fu_100_p2));
forward_urem_10ns_4ns_3_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_10ns_4ns_3_14_seq_1_U10767(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_116_ap_start),.done(grp_fu_116_ap_done),.din0(trunc_ln_reg_165),.din1(grp_fu_116_p1),.ce(1'b1),.dout(grp_fu_116_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 13'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_return_preg <= v1688_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        mul1_i_reg_180[3 : 1] <= mul1_i_fu_133_p3[3 : 1];
        mul4_i_reg_185[3 : 1] <= mul4_i_fu_145_p3[3 : 1];
        mul_i_reg_175[7 : 5] <= mul_i_fu_121_p3[7 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_160 <= {{mul_ln2452_fu_84_p2[25:23]}};
        trunc_ln_reg_165 <= {{mul_ln2450_fu_100_p2[25:16]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        urem_ln2449_reg_170 <= grp_fu_75_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_return = v1688_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_116_ap_start = 1'b1;
    end else begin
        grp_fu_116_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_75_ap_start = 1'b1;
    end else begin
        grp_fu_75_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_75_ce = 1'b0;
    end else begin
        grp_fu_75_ce = 1'b1;
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
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_351_fu_142_p1 = urem_ln2449_reg_170[2:0];
assign empty_fu_129_p1 = grp_fu_116_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_ap_start_reg;
assign grp_fu_116_p1 = 10'd7;
assign grp_fu_75_p1 = 13'd7;
assign mul1_i_fu_133_p3 = {{empty_fu_129_p1}, {1'd0}};
assign mul4_i_fu_145_p3 = {{empty_351_fu_142_p1}, {1'd0}};
assign mul_i_fu_121_p3 = {{tmp_reg_160}, {5'd0}};
assign mul_ln2450_fu_100_p0 = zext_ln2452_fu_81_p1;
assign mul_ln2450_fu_100_p1 = 27'd9363;
assign mul_ln2452_fu_84_p0 = zext_ln2452_fu_81_p1;
assign mul_ln2452_fu_84_p1 = 27'd10700;
assign v1697_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_address0;
assign v1697_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_ce0;
assign v1697_d0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_d0;
assign v1697_we0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v1697_we0;
assign v9257_address0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_address0;
assign v9257_ce0 = grp_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_Pipeline_VITIS_LO_fu_64_v9257_ce0;
assign zext_ln2452_fu_81_p1 = v1688_0;
always @ (posedge ap_clk) begin
    mul_i_reg_175[4:0] <= 5'b00000;
    mul1_i_reg_180[0] <= 1'b0;
    mul4_i_reg_185[0] <= 1'b0;
end
endmodule 