module SgdLR_sw_SgdLR_sw_Pipeline_label_421 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,v3_4_address0,v3_4_ce0,v3_4_q0,v3_4_address1,v3_4_ce1,v3_4_q1,v3_5_address0,v3_5_ce0,v3_5_q0,v3_5_address1,v3_5_ce1,v3_5_q1,v3_6_address0,v3_6_ce0,v3_6_q0,v3_6_address1,v3_6_ce1,v3_6_q1,v3_7_address0,v3_7_ce0,v3_7_q0,v3_7_address1,v3_7_ce1,v3_7_q1,grp_fu_643_p_din0,grp_fu_643_p_din1,grp_fu_643_p_opcode,grp_fu_643_p_dout0,grp_fu_643_p_ce,grp_fu_1494_p_din0,grp_fu_1494_p_din1,grp_fu_1494_p_dout0,grp_fu_1494_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_4_address1;
output   v3_4_ce1;
input  [31:0] v3_4_q1;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_5_address1;
output   v3_5_ce1;
input  [31:0] v3_5_q1;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_6_address1;
output   v3_6_ce1;
input  [31:0] v3_6_q1;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [6:0] v3_7_address1;
output   v3_7_ce1;
input  [31:0] v3_7_q1;
output  [31:0] grp_fu_643_p_din0;
output  [31:0] grp_fu_643_p_din1;
output  [0:0] grp_fu_643_p_opcode;
input  [31:0] grp_fu_643_p_dout0;
output   grp_fu_643_p_ce;
output  [31:0] grp_fu_1494_p_din0;
output  [31:0] grp_fu_1494_p_din1;
input  [31:0] grp_fu_1494_p_dout0;
output   grp_fu_1494_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_894;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_486;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_490;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_3_reg_885;
wire   [0:0] tmp_fu_502_p3;
reg   [2:0] trunc_ln55_s_reg_978;
wire   [31:0] v26_fu_576_p19;
reg   [31:0] v26_reg_984;
wire   [31:0] v26_7_fu_616_p19;
reg   [31:0] v26_7_reg_989;
wire   [31:0] v26_8_fu_705_p19;
reg   [31:0] v26_8_reg_1074;
wire   [31:0] v26_9_fu_744_p19;
reg   [31:0] v26_9_reg_1079;
reg   [9:0] v2_addr_reg_1084;
reg   [9:0] v2_addr_reg_1084_pp0_iter2_reg;
reg   [9:0] v2_addr_reg_1084_pp0_iter3_reg;
reg   [9:0] v2_addr_9_reg_1089;
reg   [9:0] v2_addr_9_reg_1089_pp0_iter2_reg;
reg   [9:0] v2_addr_9_reg_1089_pp0_iter3_reg;
reg   [7:0] tmp_11_reg_1094;
reg   [31:0] v27_reg_1100;
reg   [31:0] v2_load_9_reg_1105;
reg   [9:0] v2_addr_10_reg_1110;
reg   [9:0] v2_addr_10_reg_1110_pp0_iter2_reg;
reg   [9:0] v2_addr_10_reg_1110_pp0_iter3_reg;
reg   [9:0] v2_addr_11_reg_1115;
reg   [9:0] v2_addr_11_reg_1115_pp0_iter2_reg;
reg   [9:0] v2_addr_11_reg_1115_pp0_iter3_reg;
reg   [9:0] v2_addr_11_reg_1115_pp0_iter4_reg;
wire   [31:0] v28_fu_842_p1;
reg   [31:0] v27_7_reg_1125;
reg   [31:0] v2_load_11_reg_1130;
wire   [31:0] v28_11_fu_847_p1;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v27_8_reg_1140;
wire   [31:0] v28_12_fu_851_p1;
reg   [31:0] v27_9_reg_1150;
wire   [31:0] v28_13_fu_856_p1;
reg   [31:0] v29_7_reg_1160;
reg   [31:0] v29_9_reg_1165;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_3_fu_514_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_11_fu_544_p1;
wire   [63:0] zext_ln56_13_fu_673_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_15_fu_693_p1;
wire   [63:0] zext_ln55_fu_783_p1;
wire   [63:0] zext_ln56_fu_804_p1;
wire   [63:0] zext_ln56_12_fu_825_p1;
wire   [63:0] zext_ln56_14_fu_837_p1;
reg   [10:0] v25_fu_104;
wire   [10:0] add_ln55_fu_556_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_3;
reg    v3_ce1_local;
reg   [6:0] v3_address1_local;
reg    v3_ce0_local;
reg   [6:0] v3_address0_local;
reg    v3_1_ce1_local;
reg   [6:0] v3_1_address1_local;
reg    v3_1_ce0_local;
reg   [6:0] v3_1_address0_local;
reg    v3_2_ce1_local;
reg   [6:0] v3_2_address1_local;
reg    v3_2_ce0_local;
reg   [6:0] v3_2_address0_local;
reg    v3_3_ce1_local;
reg   [6:0] v3_3_address1_local;
reg    v3_3_ce0_local;
reg   [6:0] v3_3_address0_local;
reg    v3_4_ce1_local;
reg   [6:0] v3_4_address1_local;
reg    v3_4_ce0_local;
reg   [6:0] v3_4_address0_local;
reg    v3_5_ce1_local;
reg   [6:0] v3_5_address1_local;
reg    v3_5_ce0_local;
reg   [6:0] v3_5_address0_local;
reg    v3_6_ce1_local;
reg   [6:0] v3_6_address1_local;
reg    v3_6_ce0_local;
reg   [6:0] v3_6_address0_local;
reg    v3_7_ce1_local;
reg   [6:0] v3_7_address1_local;
reg    v3_7_ce0_local;
reg   [6:0] v3_7_address0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
reg   [31:0] v2_d1_local;
wire   [31:0] bitcast_ln60_fu_860_p1;
wire    ap_block_pp0_stage2;
reg    v2_we0_local;
reg   [31:0] v2_d0_local;
wire   [31:0] bitcast_ln60_7_fu_865_p1;
wire   [31:0] bitcast_ln60_8_fu_869_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln60_9_fu_874_p1;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
reg   [31:0] grp_fu_481_p0;
wire   [6:0] trunc_ln55_fu_510_p1;
wire   [5:0] tmp_10_fu_526_p4;
wire   [6:0] or_ln56_s_fu_536_p3;
wire   [31:0] v26_fu_576_p17;
wire   [2:0] v26_fu_576_p18;
wire   [31:0] v26_7_fu_616_p17;
wire   [2:0] v26_7_fu_616_p18;
wire   [4:0] tmp_12_fu_656_p4;
wire   [6:0] or_ln56_2_fu_665_p3;
wire   [6:0] or_ln56_3_fu_685_p3;
wire   [31:0] v26_8_fu_705_p17;
wire   [31:0] v26_9_fu_744_p17;
wire   [8:0] tmp_s_fu_787_p4;
wire   [9:0] or_ln55_s_fu_796_p3;
wire   [9:0] or_ln55_2_fu_818_p3;
wire   [9:0] or_ln55_3_fu_830_p3;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v26_fu_576_p1;
wire   [2:0] v26_fu_576_p3;
wire   [2:0] v26_fu_576_p5;
wire   [2:0] v26_fu_576_p7;
wire  signed [2:0] v26_fu_576_p9;
wire  signed [2:0] v26_fu_576_p11;
wire  signed [2:0] v26_fu_576_p13;
wire  signed [2:0] v26_fu_576_p15;
wire   [2:0] v26_7_fu_616_p1;
wire   [2:0] v26_7_fu_616_p3;
wire   [2:0] v26_7_fu_616_p5;
wire   [2:0] v26_7_fu_616_p7;
wire  signed [2:0] v26_7_fu_616_p9;
wire  signed [2:0] v26_7_fu_616_p11;
wire  signed [2:0] v26_7_fu_616_p13;
wire  signed [2:0] v26_7_fu_616_p15;
wire   [2:0] v26_8_fu_705_p1;
wire   [2:0] v26_8_fu_705_p3;
wire   [2:0] v26_8_fu_705_p5;
wire   [2:0] v26_8_fu_705_p7;
wire  signed [2:0] v26_8_fu_705_p9;
wire  signed [2:0] v26_8_fu_705_p11;
wire  signed [2:0] v26_8_fu_705_p13;
wire  signed [2:0] v26_8_fu_705_p15;
wire   [2:0] v26_9_fu_744_p1;
wire   [2:0] v26_9_fu_744_p3;
wire   [2:0] v26_9_fu_744_p5;
wire   [2:0] v26_9_fu_744_p7;
wire  signed [2:0] v26_9_fu_744_p9;
wire  signed [2:0] v26_9_fu_744_p11;
wire  signed [2:0] v26_9_fu_744_p13;
wire  signed [2:0] v26_9_fu_744_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_104 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U268(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.din4(v3_4_q1),.din5(v3_5_q1),.din6(v3_6_q1),.din7(v3_7_q1),.def(v26_fu_576_p17),.sel(v26_fu_576_p18),.dout(v26_fu_576_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U269(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.din4(v3_4_q0),.din5(v3_5_q0),.din6(v3_6_q0),.din7(v3_7_q0),.def(v26_7_fu_616_p17),.sel(v26_7_fu_616_p18),.dout(v26_7_fu_616_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U270(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.din4(v3_4_q1),.din5(v3_5_q1),.din6(v3_6_q1),.din7(v3_7_q1),.def(v26_8_fu_705_p17),.sel(trunc_ln55_s_reg_978),.dout(v26_8_fu_705_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U271(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.din4(v3_4_q0),.din5(v3_5_q0),.din6(v3_6_q0),.din7(v3_7_q0),.def(v26_9_fu_744_p17),.sel(trunc_ln55_s_reg_978),.dout(v26_9_fu_744_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_502_p3 == 1'd0))) begin
            v25_fu_104 <= add_ln55_fu_556_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_104 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_486 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_490 <= grp_fu_643_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_11_reg_1094 <= {{v25_3_reg_885[9:2]}};
        tmp_reg_894 <= ap_sig_allocacmp_v25_3[32'd10];
        v25_3_reg_885 <= ap_sig_allocacmp_v25_3;
        v2_addr_9_reg_1089[9 : 1] <= zext_ln56_fu_804_p1[9 : 1];
        v2_addr_9_reg_1089_pp0_iter2_reg[9 : 1] <= v2_addr_9_reg_1089[9 : 1];
        v2_addr_9_reg_1089_pp0_iter3_reg[9 : 1] <= v2_addr_9_reg_1089_pp0_iter2_reg[9 : 1];
        v2_addr_reg_1084 <= zext_ln55_fu_783_p1;
        v2_addr_reg_1084_pp0_iter2_reg <= v2_addr_reg_1084;
        v2_addr_reg_1084_pp0_iter3_reg <= v2_addr_reg_1084_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln55_s_reg_978 <= {{v25_3_reg_885[9:7]}};
        v26_7_reg_989 <= v26_7_fu_616_p19;
        v26_reg_984 <= v26_fu_576_p19;
        v2_addr_10_reg_1110[9 : 2] <= zext_ln56_12_fu_825_p1[9 : 2];
        v2_addr_10_reg_1110_pp0_iter2_reg[9 : 2] <= v2_addr_10_reg_1110[9 : 2];
        v2_addr_10_reg_1110_pp0_iter3_reg[9 : 2] <= v2_addr_10_reg_1110_pp0_iter2_reg[9 : 2];
        v2_addr_11_reg_1115[9 : 2] <= zext_ln56_14_fu_837_p1[9 : 2];
        v2_addr_11_reg_1115_pp0_iter2_reg[9 : 2] <= v2_addr_11_reg_1115[9 : 2];
        v2_addr_11_reg_1115_pp0_iter3_reg[9 : 2] <= v2_addr_11_reg_1115_pp0_iter2_reg[9 : 2];
        v2_addr_11_reg_1115_pp0_iter4_reg[9 : 2] <= v2_addr_11_reg_1115_pp0_iter3_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_8_reg_1074 <= v26_8_fu_705_p19;
        v26_9_reg_1079 <= v26_9_fu_744_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_7_reg_1125 <= grp_fu_1494_p_dout0;
        v2_load_11_reg_1130 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_8_reg_1140 <= grp_fu_1494_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_9_reg_1150 <= grp_fu_1494_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_reg_1100 <= grp_fu_1494_p_dout0;
        v2_load_9_reg_1105 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_7_reg_1160 <= grp_fu_643_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_9_reg_1165 <= grp_fu_643_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_894 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_3 = v25_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v28_13_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v28_12_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v28_11_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v28_fu_842_p1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p1 = v27_9_reg_1150;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p1 = v27_8_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p1 = v27_7_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p1 = v27_reg_1100;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v26_9_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v26_8_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_481_p0 = v26_7_reg_989;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v26_reg_984;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address0_local = v2_addr_11_reg_1115_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address0_local = v2_addr_9_reg_1089_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = zext_ln56_14_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_fu_804_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address1_local = v2_addr_10_reg_1110_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address1_local = v2_addr_reg_1084_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = zext_ln56_12_fu_825_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_fu_783_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_d0_local = bitcast_ln60_9_fu_874_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_d0_local = bitcast_ln60_7_fu_865_p1;
    end else begin
        v2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_d1_local = bitcast_ln60_8_fu_869_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_d1_local = bitcast_ln60_fu_860_p1;
        end else begin
            v2_d1_local = 'bx;
        end
    end else begin
        v2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_2_address0_local = 'bx;
        end
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_2_address1_local = 'bx;
        end
    end else begin
        v3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_3_address0_local = 'bx;
        end
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_3_address1_local = 'bx;
        end
    end else begin
        v3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_4_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_4_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_4_address0_local = 'bx;
        end
    end else begin
        v3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_4_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_4_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_4_address1_local = 'bx;
        end
    end else begin
        v3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_4_ce1_local = 1'b1;
    end else begin
        v3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_5_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_5_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_5_address0_local = 'bx;
        end
    end else begin
        v3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_5_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_5_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_5_address1_local = 'bx;
        end
    end else begin
        v3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_5_ce1_local = 1'b1;
    end else begin
        v3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_6_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_6_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_6_address0_local = 'bx;
        end
    end else begin
        v3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_6_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_6_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_6_address1_local = 'bx;
        end
    end else begin
        v3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_6_ce1_local = 1'b1;
    end else begin
        v3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_7_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_7_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_7_address0_local = 'bx;
        end
    end else begin
        v3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_7_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_7_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_7_address1_local = 'bx;
        end
    end else begin
        v3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_7_ce1_local = 1'b1;
    end else begin
        v3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_15_fu_693_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_11_fu_544_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_13_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_3_fu_514_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_556_p2 = (ap_sig_allocacmp_v25_3 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_7_fu_865_p1 = v29_7_reg_1160;
assign bitcast_ln60_8_fu_869_p1 = reg_490;
assign bitcast_ln60_9_fu_874_p1 = v29_9_reg_1165;
assign bitcast_ln60_fu_860_p1 = reg_490;
assign grp_fu_1494_p_ce = 1'b1;
assign grp_fu_1494_p_din0 = grp_fu_481_p0;
assign grp_fu_1494_p_din1 = 32'd3345637376;
assign grp_fu_643_p_ce = 1'b1;
assign grp_fu_643_p_din0 = grp_fu_477_p0;
assign grp_fu_643_p_din1 = grp_fu_477_p1;
assign grp_fu_643_p_opcode = 2'd0;
assign or_ln55_2_fu_818_p3 = {{tmp_11_reg_1094}, {2'd2}};
assign or_ln55_3_fu_830_p3 = {{tmp_11_reg_1094}, {2'd3}};
assign or_ln55_s_fu_796_p3 = {{tmp_s_fu_787_p4}, {1'd1}};
assign or_ln56_2_fu_665_p3 = {{tmp_12_fu_656_p4}, {2'd2}};
assign or_ln56_3_fu_685_p3 = {{tmp_12_fu_656_p4}, {2'd3}};
assign or_ln56_s_fu_536_p3 = {{tmp_10_fu_526_p4}, {1'd1}};
assign tmp_10_fu_526_p4 = {{ap_sig_allocacmp_v25_3[6:1]}};
assign tmp_12_fu_656_p4 = {{v25_3_reg_885[6:2]}};
assign tmp_fu_502_p3 = ap_sig_allocacmp_v25_3[32'd10];
assign tmp_s_fu_787_p4 = {{v25_3_reg_885[9:1]}};
assign trunc_ln55_fu_510_p1 = ap_sig_allocacmp_v25_3[6:0];
assign v26_7_fu_616_p17 = 'bx;
assign v26_7_fu_616_p18 = {{v25_3_reg_885[9:7]}};
assign v26_8_fu_705_p17 = 'bx;
assign v26_9_fu_744_p17 = 'bx;
assign v26_fu_576_p17 = 'bx;
assign v26_fu_576_p18 = {{v25_3_reg_885[9:7]}};
assign v28_11_fu_847_p1 = v2_load_9_reg_1105;
assign v28_12_fu_851_p1 = reg_486;
assign v28_13_fu_856_p1 = v2_load_11_reg_1130;
assign v28_fu_842_p1 = reg_486;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v2_d0 = v2_d0_local;
assign v2_d1 = v2_d1_local;
assign v2_we0 = v2_we0_local;
assign v2_we1 = v2_we1_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_address1 = v3_2_address1_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_address1 = v3_3_address1_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_4_address0 = v3_4_address0_local;
assign v3_4_address1 = v3_4_address1_local;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_ce1 = v3_4_ce1_local;
assign v3_5_address0 = v3_5_address0_local;
assign v3_5_address1 = v3_5_address1_local;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_ce1 = v3_5_ce1_local;
assign v3_6_address0 = v3_6_address0_local;
assign v3_6_address1 = v3_6_address1_local;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_ce1 = v3_6_ce1_local;
assign v3_7_address0 = v3_7_address0_local;
assign v3_7_address1 = v3_7_address1_local;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_ce1 = v3_7_ce1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_3_fu_514_p1 = trunc_ln55_fu_510_p1;
assign zext_ln55_fu_783_p1 = v25_3_reg_885;
assign zext_ln56_11_fu_544_p1 = or_ln56_s_fu_536_p3;
assign zext_ln56_12_fu_825_p1 = or_ln55_2_fu_818_p3;
assign zext_ln56_13_fu_673_p1 = or_ln56_2_fu_665_p3;
assign zext_ln56_14_fu_837_p1 = or_ln55_3_fu_830_p3;
assign zext_ln56_15_fu_693_p1 = or_ln56_3_fu_685_p3;
assign zext_ln56_fu_804_p1 = or_ln55_s_fu_796_p3;
always @ (posedge ap_clk) begin
    v2_addr_9_reg_1089[0] <= 1'b1;
    v2_addr_9_reg_1089_pp0_iter2_reg[0] <= 1'b1;
    v2_addr_9_reg_1089_pp0_iter3_reg[0] <= 1'b1;
    v2_addr_10_reg_1110[1:0] <= 2'b10;
    v2_addr_10_reg_1110_pp0_iter2_reg[1:0] <= 2'b10;
    v2_addr_10_reg_1110_pp0_iter3_reg[1:0] <= 2'b10;
    v2_addr_11_reg_1115[1:0] <= 2'b11;
    v2_addr_11_reg_1115_pp0_iter2_reg[1:0] <= 2'b11;
    v2_addr_11_reg_1115_pp0_iter3_reg[1:0] <= 2'b11;
    v2_addr_11_reg_1115_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 