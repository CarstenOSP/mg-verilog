module forward_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9168_address0,v9168_ce0,v9168_we0,v9168_d0,v9168_1_address0,v9168_1_ce0,v9168_1_we0,v9168_1_d0,v9168_2_address0,v9168_2_ce0,v9168_2_we0,v9168_2_d0,v9168_3_address0,v9168_3_ce0,v9168_3_we0,v9168_3_d0,v9160_0,v9173_0_address0,v9173_0_ce0,v9173_0_q0,v9173_1_address0,v9173_1_ce0,v9173_1_q0,v9173_2_address0,v9173_2_ce0,v9173_2_q0,v9173_3_address0,v9173_3_ce0,v9173_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] v9168_address0;
output   v9168_ce0;
output   v9168_we0;
output  [7:0] v9168_d0;
output  [2:0] v9168_1_address0;
output   v9168_1_ce0;
output   v9168_1_we0;
output  [7:0] v9168_1_d0;
output  [2:0] v9168_2_address0;
output   v9168_2_ce0;
output   v9168_2_we0;
output  [7:0] v9168_2_d0;
output  [2:0] v9168_3_address0;
output   v9168_3_ce0;
output   v9168_3_we0;
output  [7:0] v9168_3_d0;
input  [13:0] v9160_0;
output  [11:0] v9173_0_address0;
output   v9173_0_ce0;
input  [7:0] v9173_0_q0;
output  [11:0] v9173_1_address0;
output   v9173_1_ce0;
input  [7:0] v9173_1_q0;
output  [11:0] v9173_2_address0;
output   v9173_2_ce0;
input  [7:0] v9173_2_q0;
output  [11:0] v9173_3_address0;
output   v9173_3_ce0;
input  [7:0] v9173_3_q0;
output  [13:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_202;
reg   [1:0] udiv_ln_cast_reg_208;
reg   [7:0] trunc_ln35_reg_218;
wire   [2:0] grp_fu_161_p2;
reg   [2:0] urem_ln14339_reg_223;
wire    ap_CS_fsm_state9;
wire   [2:0] grp_fu_177_p2;
reg   [2:0] urem_ln14338_reg_228;
wire    ap_CS_fsm_state13;
wire   [5:0] rem4_fu_182_p3;
reg   [5:0] rem4_reg_233;
wire    ap_CS_fsm_state14;
wire   [2:0] trunc_ln14338_fu_190_p1;
reg   [2:0] trunc_ln14338_reg_238;
wire   [2:0] trunc_ln14212_fu_194_p1;
reg   [2:0] trunc_ln14212_reg_243;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_ce0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_ce0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_d0;
wire   [2:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg;
wire    ap_CS_fsm_state15;
wire   [13:0] mul_ln14337_fu_111_p0;
wire   [28:0] zext_ln14337_fu_107_p1;
wire   [15:0] mul_ln14337_fu_111_p1;
wire   [28:0] mul_ln14337_fu_111_p2;
wire   [34:0] mul_ln14337_cast_fu_117_p1;
wire   [13:0] mul_ln14340_fu_129_p0;
wire   [15:0] mul_ln14340_fu_129_p1;
wire   [28:0] mul_ln14340_fu_129_p2;
wire   [13:0] mul_ln14339_fu_145_p0;
wire   [15:0] mul_ln14339_fu_145_p1;
wire   [28:0] mul_ln14339_fu_145_p2;
wire   [4:0] grp_fu_161_p0;
wire   [3:0] grp_fu_161_p1;
wire   [3:0] grp_fu_177_p1;
wire    ap_CS_fsm_state2;
reg    grp_fu_161_ap_start;
wire    grp_fu_161_ap_done;
reg    grp_fu_161_ce;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_fu_177_ap_start;
wire    grp_fu_177_ap_done;
reg   [13:0] ap_return_preg;
reg   [14:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 15'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg = 1'b0;
#0 ap_return_preg = 14'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_ready),.rem4(rem4_reg_233),.empty(tmp_reg_202),.idxprom_i1(udiv_ln_cast_reg_208),.zext_ln14242_2(trunc_ln14338_reg_238),.zext_ln14242(trunc_ln14212_reg_243),.v9173_0_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_address0),.v9173_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_ce0),.v9173_0_q0(v9173_0_q0),.v9173_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_address0),.v9173_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_ce0),.v9173_1_q0(v9173_1_q0),.v9173_2_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_address0),.v9173_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_ce0),.v9173_2_q0(v9173_2_q0),.v9173_3_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_address0),.v9173_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_ce0),.v9173_3_q0(v9173_3_q0),.v9168_3_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_address0),.v9168_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_ce0),.v9168_3_we0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_we0),.v9168_3_d0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_d0),.v9168_2_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_address0),.v9168_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_ce0),.v9168_2_we0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_we0),.v9168_2_d0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_d0),.v9168_1_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_address0),.v9168_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_ce0),.v9168_1_we0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_we0),.v9168_1_d0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_d0),.v9168_address0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_address0),.v9168_ce0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_ce0),.v9168_we0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_we0),.v9168_d0(grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_d0));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U237(.din0(mul_ln14337_fu_111_p0),.din1(mul_ln14337_fu_111_p1),.dout(mul_ln14337_fu_111_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U238(.din0(mul_ln14340_fu_129_p0),.din1(mul_ln14340_fu_129_p1),.dout(mul_ln14340_fu_129_p2));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U239(.din0(mul_ln14339_fu_145_p0),.din1(mul_ln14339_fu_145_p1),.dout(mul_ln14339_fu_145_p2));
forward_urem_5ns_4ns_3_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_5ns_4ns_3_9_seq_1_U240(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_161_ap_start),.done(grp_fu_161_ap_done),.din0(grp_fu_161_p0),.din1(grp_fu_161_p1),.ce(grp_fu_161_ce),.dout(grp_fu_161_p2));
forward_urem_8ns_4ns_3_12_seq_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_8ns_4ns_3_12_seq_1_U241(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_177_ap_start),.done(grp_fu_177_ap_done),.din0(trunc_ln35_reg_218),.din1(grp_fu_177_p1),.ce(1'b1),.dout(grp_fu_177_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 14'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
            ap_return_preg <= v9160_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        rem4_reg_233[5] <= rem4_fu_182_p3[5];
        trunc_ln14212_reg_243 <= trunc_ln14212_fu_194_p1;
        trunc_ln14338_reg_238 <= trunc_ln14338_fu_190_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_202 <= mul_ln14337_cast_fu_117_p1[32'd20];
        trunc_ln35_reg_218 <= {{mul_ln14337_fu_111_p2[28:21]}};
        udiv_ln_cast_reg_208 <= {{mul_ln14340_fu_129_p2[28:27]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        urem_ln14338_reg_228 <= grp_fu_177_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        urem_ln14339_reg_223 <= grp_fu_161_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
        ap_return = v9160_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_161_ap_start = 1'b1;
    end else begin
        grp_fu_161_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        grp_fu_161_ce = 1'b0;
    end else begin
        grp_fu_161_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_177_ap_start = 1'b1;
    end else begin
        grp_fu_177_ap_start = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state15) & (grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
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
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_ap_start_reg;
assign grp_fu_161_p0 = {{mul_ln14339_fu_145_p2[28:24]}};
assign grp_fu_161_p1 = 5'd7;
assign grp_fu_177_p1 = 8'd7;
assign mul_ln14337_cast_fu_117_p1 = mul_ln14337_fu_111_p2;
assign mul_ln14337_fu_111_p0 = zext_ln14337_fu_107_p1;
assign mul_ln14337_fu_111_p1 = 29'd21400;
assign mul_ln14339_fu_145_p0 = zext_ln14337_fu_107_p1;
assign mul_ln14339_fu_145_p1 = 29'd24457;
assign mul_ln14340_fu_129_p0 = zext_ln14337_fu_107_p1;
assign mul_ln14340_fu_129_p1 = 29'd27951;
assign rem4_fu_182_p3 = {{tmp_reg_202}, {5'd0}};
assign trunc_ln14212_fu_194_p1 = urem_ln14338_reg_228[2:0];
assign trunc_ln14338_fu_190_p1 = urem_ln14339_reg_223[2:0];
assign v9168_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_address0;
assign v9168_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_ce0;
assign v9168_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_d0;
assign v9168_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_1_we0;
assign v9168_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_address0;
assign v9168_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_ce0;
assign v9168_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_d0;
assign v9168_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_2_we0;
assign v9168_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_address0;
assign v9168_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_ce0;
assign v9168_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_d0;
assign v9168_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_3_we0;
assign v9168_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_address0;
assign v9168_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_ce0;
assign v9168_d0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_d0;
assign v9168_we0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9168_we0;
assign v9173_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_address0;
assign v9173_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_0_ce0;
assign v9173_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_address0;
assign v9173_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_1_ce0;
assign v9173_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_address0;
assign v9173_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_2_ce0;
assign v9173_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_address0;
assign v9173_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_14333_1_Loop_VITIS_LOOP_14212_1_proc_Pipeline_VITIS_s_fu_82_v9173_3_ce0;
assign zext_ln14337_fu_107_p1 = v9160_0;
always @ (posedge ap_clk) begin
    rem4_reg_233[4:0] <= 5'b00000;
end
endmodule 