
module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15154_address0,v15154_ce0,v15154_we0,v15154_d0,v15154_1_address0,v15154_1_ce0,v15154_1_we0,v15154_1_d0,v15154_2_address0,v15154_2_ce0,v15154_2_we0,v15154_2_d0,v15154_3_address0,v15154_3_ce0,v15154_3_we0,v15154_3_d0,v15147_0,v15430_0_0_address0,v15430_0_0_ce0,v15430_0_0_q0,v15430_0_1_address0,v15430_0_1_ce0,v15430_0_1_q0,v15430_1_0_address0,v15430_1_0_ce0,v15430_1_0_q0,v15430_1_1_address0,v15430_1_1_ce0,v15430_1_1_q0,ap_return);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v15154_address0;
output   v15154_ce0;
output   v15154_we0;
output  [7:0] v15154_d0;
output  [11:0] v15154_1_address0;
output   v15154_1_ce0;
output   v15154_1_we0;
output  [7:0] v15154_1_d0;
output  [11:0] v15154_2_address0;
output   v15154_2_ce0;
output   v15154_2_we0;
output  [7:0] v15154_2_d0;
output  [11:0] v15154_3_address0;
output   v15154_3_ce0;
output   v15154_3_we0;
output  [7:0] v15154_3_d0;
input  [8:0] v15147_0;
output  [16:0] v15430_0_0_address0;
output   v15430_0_0_ce0;
input  [7:0] v15430_0_0_q0;
output  [16:0] v15430_0_1_address0;
output   v15430_0_1_ce0;
input  [7:0] v15430_0_1_q0;
output  [16:0] v15430_1_0_address0;
output   v15430_1_0_ce0;
input  [7:0] v15430_1_0_q0;
output  [16:0] v15430_1_1_address0;
output   v15430_1_1_ce0;
input  [7:0] v15430_1_1_q0;
output  [8:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_242;
wire   [3:0] trunc_ln_fu_120_p4;
reg   [1:0] udiv_ln_cast_reg_252;
reg   [1:0] tmp_88_reg_257;
wire   [1:0] empty_203_fu_166_p1;
reg   [1:0] empty_203_reg_263;
wire   [4:0] and_ln_fu_170_p3;
reg   [4:0] and_ln_reg_269;
wire    ap_CS_fsm_state8;
wire   [6:0] mul10_i_fu_196_p2;
reg   [6:0] mul10_i_reg_274;
wire   [1:0] empty_fu_203_p1;
reg   [1:0] empty_reg_279;
wire   [6:0] mul15_i78_fu_226_p2;
reg   [6:0] mul15_i78_reg_284;
wire   [3:0] trunc_ln19863_fu_233_p1;
reg   [3:0] trunc_ln19863_reg_289;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_ln19902_fu_134_p0;
wire   [5:0] mul_ln19902_fu_134_p1;
wire   [8:0] mul_ln19902_fu_134_p2;
wire   [3:0] grp_fu_160_p0;
wire   [2:0] grp_fu_160_p1;
wire   [3:0] tmp_89_fu_185_p3;
wire   [6:0] p_shl132_fu_178_p3;
wire   [6:0] p_shl133_fu_192_p1;
wire   [1:0] grp_fu_160_p2;
wire   [3:0] tmp_90_fu_215_p3;
wire   [6:0] p_shl_fu_208_p3;
wire   [6:0] p_shl131_fu_222_p1;
reg    grp_fu_160_ap_start;
wire    grp_fu_160_ap_done;
reg    grp_fu_160_ce;
reg   [8:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [8:0] mul_ln19902_fu_134_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg = 1'b0;
#0 ap_return_preg = 9'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_ready),.and_ln(and_ln_reg_269),.udiv_ln19902_cast(udiv_ln_cast_reg_252),.mul10_i(mul10_i_reg_274),.v15154_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_address0),.v15154_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_ce0),.v15154_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_we0),.v15154_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_d0),.v15154_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_address0),.v15154_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_ce0),.v15154_1_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_we0),.v15154_1_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_d0),.v15154_2_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_address0),.v15154_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_ce0),.v15154_2_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_we0),.v15154_2_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_d0),.v15154_3_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_address0),.v15154_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_ce0),.v15154_3_we0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_we0),.v15154_3_d0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_d0),.empty(trunc_ln19863_reg_289),.urem_ln19901(empty_reg_279),.mul15_i78(mul15_i78_reg_284),.v15430_0_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_address0),.v15430_0_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_ce0),.v15430_0_0_q0(v15430_0_0_q0),.v15430_0_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_address0),.v15430_0_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_ce0),.v15430_0_1_q0(v15430_0_1_q0),.v15430_1_0_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_address0),.v15430_1_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_ce0),.v15430_1_0_q0(v15430_1_0_q0),.v15430_1_1_address0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_address0),.v15430_1_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_ce0),.v15430_1_1_q0(v15430_1_1_q0));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U589(.din0(mul_ln19902_fu_134_p0),.din1(mul_ln19902_fu_134_p1),.dout(mul_ln19902_fu_134_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U590(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_160_ap_start),.done(grp_fu_160_ap_done),.din0(grp_fu_160_p0),.din1(grp_fu_160_p1),.ce(grp_fu_160_ce),.dout(grp_fu_160_p2));
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 9'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
            ap_return_preg <= v15147_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        and_ln_reg_269[4] <= and_ln_fu_170_p3[4];
        empty_reg_279 <= empty_fu_203_p1;
        mul10_i_reg_274[6 : 2] <= mul10_i_fu_196_p2[6 : 2];
        mul15_i78_reg_284[6 : 2] <= mul15_i78_fu_226_p2[6 : 2];
        trunc_ln19863_reg_289[3 : 2] <= trunc_ln19863_fu_233_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_203_reg_263 <= empty_203_fu_166_p1;
        tmp_88_reg_257 <= {{v15147_0[3:2]}};
        tmp_reg_242 <= v15147_0[32'd4];
        udiv_ln_cast_reg_252 <= {{mul_ln19902_fu_134_p2[7:6]}};
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
        ap_return = v15147_0;
    end else begin
        ap_return = ap_return_preg;
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign and_ln_fu_170_p3 = {{tmp_reg_242}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_203_fu_166_p1 = v15147_0[1:0];
assign empty_fu_203_p1 = grp_fu_160_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_ap_start_reg;
assign grp_fu_160_p0 = {{v15147_0[8:5]}};
assign grp_fu_160_p1 = 4'd3;
assign mul10_i_fu_196_p2 = (p_shl132_fu_178_p3 - p_shl133_fu_192_p1);
assign mul15_i78_fu_226_p2 = (p_shl_fu_208_p3 - p_shl131_fu_222_p1);
assign mul_ln19902_fu_134_p0 = mul_ln19902_fu_134_p00;
assign mul_ln19902_fu_134_p00 = trunc_ln_fu_120_p4;
assign mul_ln19902_fu_134_p1 = 9'd22;
assign p_shl131_fu_222_p1 = tmp_90_fu_215_p3;
assign p_shl132_fu_178_p3 = {{tmp_88_reg_257}, {5'd0}};
assign p_shl133_fu_192_p1 = tmp_89_fu_185_p3;
assign p_shl_fu_208_p3 = {{empty_203_reg_263}, {5'd0}};
assign tmp_89_fu_185_p3 = {{tmp_88_reg_257}, {2'd0}};
assign tmp_90_fu_215_p3 = {{empty_203_reg_263}, {2'd0}};
assign trunc_ln19863_fu_233_p1 = mul15_i78_fu_226_p2[3:0];
assign trunc_ln_fu_120_p4 = {{v15147_0[8:5]}};
assign v15154_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_address0;
assign v15154_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_ce0;
assign v15154_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_d0;
assign v15154_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_1_we0;
assign v15154_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_address0;
assign v15154_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_ce0;
assign v15154_2_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_d0;
assign v15154_2_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_2_we0;
assign v15154_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_address0;
assign v15154_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_ce0;
assign v15154_3_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_d0;
assign v15154_3_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_3_we0;
assign v15154_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_address0;
assign v15154_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_ce0;
assign v15154_d0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_d0;
assign v15154_we0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15154_we0;
assign v15430_0_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_address0;
assign v15430_0_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_0_ce0;
assign v15430_0_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_address0;
assign v15430_0_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_0_1_ce0;
assign v15430_1_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_address0;
assign v15430_1_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_0_ce0;
assign v15430_1_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_address0;
assign v15430_1_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI_fu_86_v15430_1_1_ce0;
always @ (posedge ap_clk) begin
    and_ln_reg_269[3:0] <= 4'b0000;
    mul10_i_reg_274[1:0] <= 2'b00;
    mul15_i78_reg_284[1:0] <= 2'b00;
    trunc_ln19863_reg_289[1:0] <= 2'b00;
end
endmodule 
