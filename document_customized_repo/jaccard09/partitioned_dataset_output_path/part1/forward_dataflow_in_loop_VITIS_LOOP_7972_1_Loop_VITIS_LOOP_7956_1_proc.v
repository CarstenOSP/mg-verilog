
module forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v6753_0,v15496_address0,v15496_ce0,v15496_q0,v6761_address0,v6761_ce0,v6761_we0,v6761_d0,ap_return);  
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
input  [12:0] v6753_0;
output  [16:0] v15496_address0;
output   v15496_ce0;
input  [7:0] v15496_q0;
output  [4:0] v6761_address0;
output   v6761_ce0;
output   v6761_we0;
output  [7:0] v6761_d0;
output  [12:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_s_reg_249;
wire    ap_CS_fsm_state3;
reg   [9:0] trunc_ln_reg_254;
reg   [1:0] tmp_36_reg_259;
wire   [1:0] grp_fu_158_p2;
reg   [1:0] urem_ln7977_reg_269;
wire    ap_CS_fsm_state10;
wire   [2:0] grp_fu_164_p2;
reg   [2:0] urem_ln7975_reg_274;
wire    ap_CS_fsm_state17;
wire   [2:0] grp_fu_91_p2;
reg   [2:0] urem_ln7974_reg_279;
wire   [8:0] rem4_fu_169_p3;
reg   [8:0] rem4_reg_284;
wire    ap_CS_fsm_state18;
wire   [4:0] sub_i_fu_201_p2;
reg   [4:0] sub_i_reg_289;
wire   [4:0] sub7_i_fu_236_p2;
reg   [4:0] sub7_i_reg_294;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_ready;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg;
wire    ap_CS_fsm_state19;
wire   [3:0] grp_fu_91_p1;
wire   [12:0] mul_ln7976_fu_100_p0;
wire   [26:0] zext_ln7976_fu_97_p1;
wire   [14:0] mul_ln7976_fu_100_p1;
wire   [26:0] mul_ln7976_fu_100_p2;
wire   [12:0] mul_ln7975_fu_116_p0;
wire   [14:0] mul_ln7975_fu_116_p1;
wire   [26:0] mul_ln7975_fu_116_p2;
wire   [12:0] mul_ln7978_fu_132_p0;
wire   [14:0] mul_ln7978_fu_132_p1;
wire   [26:0] mul_ln7978_fu_132_p2;
wire   [3:0] grp_fu_158_p0;
wire   [2:0] grp_fu_158_p1;
wire   [3:0] grp_fu_164_p1;
wire    ap_CS_fsm_state4;
wire   [2:0] empty_fu_177_p1;
wire   [3:0] mul1_i_fu_180_p3;
wire   [4:0] mul1_i_cast_fu_188_p1;
wire   [4:0] tmp_fu_195_p2;
wire   [4:0] zext_ln7978_fu_192_p1;
wire   [2:0] empty_161_fu_208_p1;
wire   [3:0] mul5_i_fu_211_p3;
wire   [1:0] empty_162_fu_223_p1;
wire   [1:0] tmp1_fu_226_p2;
wire  signed [4:0] tmp1_cast_fu_232_p1;
wire   [4:0] mul5_i_cast_fu_219_p1;
reg    grp_fu_91_ap_start;
wire    grp_fu_91_ap_done;
reg    grp_fu_91_ce;
reg    grp_fu_158_ap_start;
wire    grp_fu_158_ap_done;
reg    grp_fu_164_ap_start;
wire    grp_fu_164_ap_done;
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
#0 grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg = 1'b0;
#0 ap_return_preg = 13'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_ready),.rem4(rem4_reg_284),.idxprom3_i36(sub_i_reg_289),.idxprom8_i(sub7_i_reg_294),.v15496_address0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_address0),.v15496_ce0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_ce0),.v15496_q0(v15496_q0),.v6761_address0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_address0),.v6761_ce0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_ce0),.v6761_we0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_we0),.v6761_d0(grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_d0));
forward_urem_13ns_4ns_3_17_seq_1 #(.ID( 1 ),.NUM_STAGE( 17 ),.din0_WIDTH( 13 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_13ns_4ns_3_17_seq_1_U8392(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_91_ap_start),.done(grp_fu_91_ap_done),.din0(v6753_0),.din1(grp_fu_91_p1),.ce(grp_fu_91_ce),.dout(grp_fu_91_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U8393(.din0(mul_ln7976_fu_100_p0),.din1(mul_ln7976_fu_100_p1),.dout(mul_ln7976_fu_100_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U8394(.din0(mul_ln7975_fu_116_p0),.din1(mul_ln7975_fu_116_p1),.dout(mul_ln7975_fu_116_p2));
forward_mul_13ns_15ns_27_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 13 ),.din1_WIDTH( 15 ),.dout_WIDTH( 27 ))
mul_13ns_15ns_27_1_1_U8395(.din0(mul_ln7978_fu_132_p0),.din1(mul_ln7978_fu_132_p1),.dout(mul_ln7978_fu_132_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U8396(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_158_ap_start),.done(grp_fu_158_ap_done),.din0(grp_fu_158_p0),.din1(grp_fu_158_p1),.ce(1'b1),.dout(grp_fu_158_p2));
forward_urem_10ns_4ns_3_14_seq_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_10ns_4ns_3_14_seq_1_U8397(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_164_ap_start),.done(grp_fu_164_ap_done),.din0(trunc_ln_reg_254),.din1(grp_fu_164_p1),.ce(1'b1),.dout(grp_fu_164_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 13'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
            ap_return_preg <= v6753_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        rem4_reg_284[8 : 5] <= rem4_fu_169_p3[8 : 5];
        sub7_i_reg_294 <= sub7_i_fu_236_p2;
        sub_i_reg_289 <= sub_i_fu_201_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_36_reg_259 <= {{mul_ln7978_fu_132_p2[26:25]}};
        tmp_s_reg_249 <= {{mul_ln7976_fu_100_p2[22:19]}};
        trunc_ln_reg_254 <= {{mul_ln7975_fu_116_p2[25:16]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        urem_ln7974_reg_279 <= grp_fu_91_p2;
        urem_ln7975_reg_274 <= grp_fu_164_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        urem_ln7977_reg_269 <= grp_fu_158_p2;
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b0)) begin
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
    if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
        ap_return = v6753_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_158_ap_start = 1'b1;
    end else begin
        grp_fu_158_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_164_ap_start = 1'b1;
    end else begin
        grp_fu_164_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_91_ap_start = 1'b1;
    end else begin
        grp_fu_91_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_91_ce = 1'b0;
    end else begin
        grp_fu_91_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state19) & (grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_done == 1'b1))) begin
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
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_161_fu_208_p1 = urem_ln7974_reg_279[2:0];
assign empty_162_fu_223_p1 = urem_ln7977_reg_269[1:0];
assign empty_fu_177_p1 = urem_ln7975_reg_274[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_ap_start_reg;
assign grp_fu_158_p0 = {{mul_ln7976_fu_100_p2[26:23]}};
assign grp_fu_158_p1 = 4'd3;
assign grp_fu_164_p1 = 10'd7;
assign grp_fu_91_p1 = 13'd7;
assign mul1_i_cast_fu_188_p1 = mul1_i_fu_180_p3;
assign mul1_i_fu_180_p3 = {{empty_fu_177_p1}, {1'd0}};
assign mul5_i_cast_fu_219_p1 = mul5_i_fu_211_p3;
assign mul5_i_fu_211_p3 = {{empty_161_fu_208_p1}, {1'd0}};
assign mul_ln7975_fu_116_p0 = zext_ln7976_fu_97_p1;
assign mul_ln7975_fu_116_p1 = 27'd9363;
assign mul_ln7976_fu_100_p0 = zext_ln7976_fu_97_p1;
assign mul_ln7976_fu_100_p1 = 27'd10700;
assign mul_ln7978_fu_132_p0 = zext_ln7976_fu_97_p1;
assign mul_ln7978_fu_132_p1 = 27'd14267;
assign rem4_fu_169_p3 = {{tmp_s_reg_249}, {5'd0}};
assign sub7_i_fu_236_p2 = ($signed(tmp1_cast_fu_232_p1) + $signed(mul5_i_cast_fu_219_p1));
assign sub_i_fu_201_p2 = (tmp_fu_195_p2 + zext_ln7978_fu_192_p1);
assign tmp1_cast_fu_232_p1 = $signed(tmp1_fu_226_p2);
assign tmp1_fu_226_p2 = ($signed(empty_162_fu_223_p1) + $signed(2'd3));
assign tmp_fu_195_p2 = ($signed(mul1_i_cast_fu_188_p1) + $signed(5'd31));
assign v15496_address0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_address0;
assign v15496_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v15496_ce0;
assign v6761_address0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_address0;
assign v6761_ce0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_ce0;
assign v6761_d0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_d0;
assign v6761_we0 = grp_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_Pipeline_VITIS_LO_fu_80_v6761_we0;
assign zext_ln7976_fu_97_p1 = v6753_0;
assign zext_ln7978_fu_192_p1 = tmp_36_reg_259;
always @ (posedge ap_clk) begin
    rem4_reg_284[4:0] <= 5'b00000;
end
endmodule 
