
module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_q0,v3_7_address0,v3_7_ce0,v3_7_q0,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_2_address1,v2_2_ce1,v2_2_we1,v2_2_d1,v2_2_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_3_address1,v2_3_ce1,v2_3_we1,v2_3_d1,v2_3_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_address0,v3_ce0,v3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,grp_fu_308_p_din0,grp_fu_308_p_din1,grp_fu_308_p_opcode,grp_fu_308_p_dout0,grp_fu_308_p_ce,grp_fu_719_p_din0,grp_fu_719_p_din1,grp_fu_719_p_dout0,grp_fu_719_p_ce);  
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
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
input  [31:0] v2_2_q0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
output   v2_2_we1;
output  [31:0] v2_2_d1;
input  [31:0] v2_2_q1;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
input  [31:0] v2_3_q0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
output   v2_3_we1;
output  [31:0] v2_3_d1;
input  [31:0] v2_3_q1;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [31:0] grp_fu_308_p_din0;
output  [31:0] grp_fu_308_p_din1;
output  [0:0] grp_fu_308_p_opcode;
input  [31:0] grp_fu_308_p_dout0;
output   grp_fu_308_p_ce;
output  [31:0] grp_fu_719_p_din0;
output  [31:0] grp_fu_719_p_din1;
input  [31:0] grp_fu_719_p_dout0;
output   grp_fu_719_p_ce;
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
reg   [0:0] tmp_reg_737;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_2_reg_727;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] v26_fu_422_p3;
reg   [31:0] v26_reg_781;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_4_fu_430_p3;
reg   [31:0] v26_4_reg_786;
wire   [31:0] v26_6_fu_438_p3;
reg   [31:0] v26_6_reg_791;
wire   [31:0] v26_7_fu_446_p3;
reg   [31:0] v26_7_reg_796;
reg   [1:0] trunc_ln55_5_reg_801;
reg   [1:0] trunc_ln55_5_reg_801_pp0_iter2_reg;
reg   [1:0] trunc_ln55_5_reg_801_pp0_iter3_reg;
reg   [1:0] trunc_ln55_5_reg_801_pp0_iter4_reg;
reg   [7:0] v2_0_addr_2_reg_809;
reg   [7:0] v2_0_addr_2_reg_809_pp0_iter2_reg;
reg   [7:0] v2_0_addr_2_reg_809_pp0_iter3_reg;
reg   [7:0] v2_1_addr_2_reg_814;
reg   [7:0] v2_1_addr_2_reg_814_pp0_iter2_reg;
reg   [7:0] v2_1_addr_2_reg_814_pp0_iter3_reg;
reg   [7:0] v2_2_addr_2_reg_819;
reg   [7:0] v2_2_addr_2_reg_819_pp0_iter2_reg;
reg   [7:0] v2_2_addr_2_reg_819_pp0_iter3_reg;
reg   [7:0] v2_3_addr_2_reg_824;
reg   [7:0] v2_3_addr_2_reg_824_pp0_iter2_reg;
reg   [7:0] v2_3_addr_2_reg_824_pp0_iter3_reg;
reg   [7:0] v2_0_addr_3_reg_829;
reg   [7:0] v2_0_addr_3_reg_829_pp0_iter2_reg;
reg   [7:0] v2_0_addr_3_reg_829_pp0_iter3_reg;
reg   [7:0] v2_1_addr_3_reg_834;
reg   [7:0] v2_1_addr_3_reg_834_pp0_iter2_reg;
reg   [7:0] v2_1_addr_3_reg_834_pp0_iter3_reg;
reg   [7:0] v2_2_addr_3_reg_839;
reg   [7:0] v2_2_addr_3_reg_839_pp0_iter2_reg;
reg   [7:0] v2_2_addr_3_reg_839_pp0_iter3_reg;
reg   [7:0] v2_3_addr_3_reg_844;
reg   [7:0] v2_3_addr_3_reg_844_pp0_iter2_reg;
reg   [7:0] v2_3_addr_3_reg_844_pp0_iter3_reg;
reg   [5:0] tmp_4_reg_849;
reg   [31:0] v27_reg_855;
wire   [31:0] v28_fu_534_p11;
reg   [31:0] v28_reg_860;
wire   [31:0] v28_1_fu_573_p11;
reg   [31:0] v28_1_reg_865;
reg   [7:0] v2_0_addr_reg_870;
reg   [7:0] v2_0_addr_reg_870_pp0_iter2_reg;
reg   [7:0] v2_0_addr_reg_870_pp0_iter3_reg;
reg   [7:0] v2_1_addr_reg_875;
reg   [7:0] v2_1_addr_reg_875_pp0_iter2_reg;
reg   [7:0] v2_1_addr_reg_875_pp0_iter3_reg;
reg   [7:0] v2_2_addr_reg_880;
reg   [7:0] v2_2_addr_reg_880_pp0_iter2_reg;
reg   [7:0] v2_2_addr_reg_880_pp0_iter3_reg;
reg   [7:0] v2_3_addr_reg_885;
reg   [7:0] v2_3_addr_reg_885_pp0_iter2_reg;
reg   [7:0] v2_3_addr_reg_885_pp0_iter3_reg;
reg   [7:0] v2_0_addr_4_reg_890;
reg   [7:0] v2_0_addr_4_reg_890_pp0_iter2_reg;
reg   [7:0] v2_0_addr_4_reg_890_pp0_iter3_reg;
reg   [7:0] v2_0_addr_4_reg_890_pp0_iter4_reg;
reg   [7:0] v2_1_addr_4_reg_895;
reg   [7:0] v2_1_addr_4_reg_895_pp0_iter2_reg;
reg   [7:0] v2_1_addr_4_reg_895_pp0_iter3_reg;
reg   [7:0] v2_1_addr_4_reg_895_pp0_iter4_reg;
reg   [7:0] v2_2_addr_4_reg_900;
reg   [7:0] v2_2_addr_4_reg_900_pp0_iter2_reg;
reg   [7:0] v2_2_addr_4_reg_900_pp0_iter3_reg;
reg   [7:0] v2_2_addr_4_reg_900_pp0_iter4_reg;
reg   [7:0] v2_3_addr_4_reg_905;
reg   [7:0] v2_3_addr_4_reg_905_pp0_iter2_reg;
reg   [7:0] v2_3_addr_4_reg_905_pp0_iter3_reg;
reg   [7:0] v2_3_addr_4_reg_905_pp0_iter4_reg;
reg   [31:0] v27_1_reg_910;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] v28_3_fu_642_p11;
reg   [31:0] v28_3_reg_915;
wire   [31:0] v28_4_fu_681_p11;
reg   [31:0] v28_4_reg_920;
reg   [31:0] v27_3_reg_925;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v27_4_reg_930;
wire   [31:0] bitcast_ln60_fu_704_p1;
reg   [31:0] bitcast_ln60_reg_935;
wire   [31:0] bitcast_ln60_3_fu_708_p1;
reg   [31:0] bitcast_ln60_3_reg_943;
wire   [31:0] bitcast_ln60_1_fu_712_p1;
reg   [31:0] bitcast_ln60_1_reg_951;
wire   [31:0] bitcast_ln60_4_fu_716_p1;
reg   [31:0] bitcast_ln60_4_reg_959;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_1_fu_401_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_467_p1;
wire   [63:0] zext_ln56_fu_501_p1;
wire   [63:0] zext_ln56_1_fu_603_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_3_fu_618_p1;
reg   [10:0] v25_fu_94;
wire   [10:0] add_ln55_fu_454_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_2;
reg    v3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_1_ce0_local;
reg    v3_5_ce0_local;
reg    v3_2_ce0_local;
reg    v3_6_ce0_local;
reg    v3_3_ce0_local;
reg    v3_7_ce0_local;
reg    v2_0_ce1_local;
reg   [7:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [7:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire    ap_block_pp0_stage2;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
wire    ap_block_pp0_stage3;
reg    v2_1_ce1_local;
reg   [7:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [7:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg    v2_2_ce1_local;
reg   [7:0] v2_2_address1_local;
reg    v2_2_ce0_local;
reg   [7:0] v2_2_address0_local;
reg    v2_2_we1_local;
reg   [31:0] v2_2_d1_local;
reg    v2_2_we0_local;
reg   [31:0] v2_2_d0_local;
reg    v2_3_ce1_local;
reg   [7:0] v2_3_address1_local;
reg    v2_3_ce0_local;
reg   [7:0] v2_3_address0_local;
reg    v2_3_we1_local;
reg   [31:0] v2_3_d1_local;
reg    v2_3_we0_local;
reg   [31:0] v2_3_d0_local;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg   [31:0] grp_fu_370_p0;
wire   [6:0] lshr_ln55_1_fu_391_p4;
wire   [2:0] trunc_ln55_fu_413_p1;
wire   [0:0] icmp_ln57_fu_416_p2;
wire   [7:0] trunc_ln55_2_fu_464_p1;
wire   [6:0] tmp_3_fu_484_p4;
wire   [7:0] or_ln_fu_493_p3;
wire   [31:0] v28_fu_534_p2;
wire   [31:0] v28_fu_534_p4;
wire   [31:0] v28_fu_534_p6;
wire   [31:0] v28_fu_534_p8;
wire   [31:0] v28_fu_534_p9;
wire   [31:0] v28_1_fu_573_p2;
wire   [31:0] v28_1_fu_573_p4;
wire   [31:0] v28_1_fu_573_p6;
wire   [31:0] v28_1_fu_573_p8;
wire   [31:0] v28_1_fu_573_p9;
wire   [7:0] or_ln56_1_fu_596_p3;
wire   [7:0] or_ln56_3_fu_611_p3;
wire   [31:0] v28_3_fu_642_p2;
wire   [31:0] v28_3_fu_642_p4;
wire   [31:0] v28_3_fu_642_p6;
wire   [31:0] v28_3_fu_642_p8;
wire   [31:0] v28_3_fu_642_p9;
wire   [31:0] v28_4_fu_681_p2;
wire   [31:0] v28_4_fu_681_p4;
wire   [31:0] v28_4_fu_681_p6;
wire   [31:0] v28_4_fu_681_p8;
wire   [31:0] v28_4_fu_681_p9;
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
wire   [1:0] v28_fu_534_p1;
wire   [1:0] v28_fu_534_p3;
wire  signed [1:0] v28_fu_534_p5;
wire  signed [1:0] v28_fu_534_p7;
wire   [1:0] v28_1_fu_573_p1;
wire   [1:0] v28_1_fu_573_p3;
wire  signed [1:0] v28_1_fu_573_p5;
wire  signed [1:0] v28_1_fu_573_p7;
wire   [1:0] v28_3_fu_642_p1;
wire   [1:0] v28_3_fu_642_p3;
wire  signed [1:0] v28_3_fu_642_p5;
wire  signed [1:0] v28_3_fu_642_p7;
wire   [1:0] v28_4_fu_681_p1;
wire   [1:0] v28_4_fu_681_p3;
wire  signed [1:0] v28_4_fu_681_p5;
wire  signed [1:0] v28_4_fu_681_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_94 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U26(.din0(v28_fu_534_p2),.din1(v28_fu_534_p4),.din2(v28_fu_534_p6),.din3(v28_fu_534_p8),.def(v28_fu_534_p9),.sel(trunc_ln55_5_reg_801),.dout(v28_fu_534_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U27(.din0(v28_1_fu_573_p2),.din1(v28_1_fu_573_p4),.din2(v28_1_fu_573_p6),.din3(v28_1_fu_573_p8),.def(v28_1_fu_573_p9),.sel(trunc_ln55_5_reg_801),.dout(v28_1_fu_573_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(v28_3_fu_642_p2),.din1(v28_3_fu_642_p4),.din2(v28_3_fu_642_p6),.din3(v28_3_fu_642_p8),.def(v28_3_fu_642_p9),.sel(trunc_ln55_5_reg_801),.dout(v28_3_fu_642_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(v28_4_fu_681_p2),.din1(v28_4_fu_681_p4),.din2(v28_4_fu_681_p6),.din3(v28_4_fu_681_p8),.def(v28_4_fu_681_p9),.sel(trunc_ln55_5_reg_801),.dout(v28_4_fu_681_p11));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_94 <= 11'd0;
    end else if (((tmp_reg_737 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v25_fu_94 <= add_ln55_fu_454_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        bitcast_ln60_4_reg_959 <= bitcast_ln60_4_fu_716_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln60_1_reg_951 <= bitcast_ln60_1_fu_712_p1;
        v26_4_reg_786 <= v26_4_fu_430_p3;
        v26_6_reg_791 <= v26_6_fu_438_p3;
        v26_7_reg_796 <= v26_7_fu_446_p3;
        v26_reg_781 <= v26_fu_422_p3;
        v28_1_reg_865 <= v28_1_fu_573_p11;
        v28_reg_860 <= v28_fu_534_p11;
        v2_0_addr_4_reg_890[7 : 2] <= zext_ln56_3_fu_618_p1[7 : 2];
        v2_0_addr_4_reg_890_pp0_iter2_reg[7 : 2] <= v2_0_addr_4_reg_890[7 : 2];
        v2_0_addr_4_reg_890_pp0_iter3_reg[7 : 2] <= v2_0_addr_4_reg_890_pp0_iter2_reg[7 : 2];
        v2_0_addr_4_reg_890_pp0_iter4_reg[7 : 2] <= v2_0_addr_4_reg_890_pp0_iter3_reg[7 : 2];
        v2_0_addr_reg_870[7 : 2] <= zext_ln56_1_fu_603_p1[7 : 2];
        v2_0_addr_reg_870_pp0_iter2_reg[7 : 2] <= v2_0_addr_reg_870[7 : 2];
        v2_0_addr_reg_870_pp0_iter3_reg[7 : 2] <= v2_0_addr_reg_870_pp0_iter2_reg[7 : 2];
        v2_1_addr_4_reg_895[7 : 2] <= zext_ln56_3_fu_618_p1[7 : 2];
        v2_1_addr_4_reg_895_pp0_iter2_reg[7 : 2] <= v2_1_addr_4_reg_895[7 : 2];
        v2_1_addr_4_reg_895_pp0_iter3_reg[7 : 2] <= v2_1_addr_4_reg_895_pp0_iter2_reg[7 : 2];
        v2_1_addr_4_reg_895_pp0_iter4_reg[7 : 2] <= v2_1_addr_4_reg_895_pp0_iter3_reg[7 : 2];
        v2_1_addr_reg_875[7 : 2] <= zext_ln56_1_fu_603_p1[7 : 2];
        v2_1_addr_reg_875_pp0_iter2_reg[7 : 2] <= v2_1_addr_reg_875[7 : 2];
        v2_1_addr_reg_875_pp0_iter3_reg[7 : 2] <= v2_1_addr_reg_875_pp0_iter2_reg[7 : 2];
        v2_2_addr_4_reg_900[7 : 2] <= zext_ln56_3_fu_618_p1[7 : 2];
        v2_2_addr_4_reg_900_pp0_iter2_reg[7 : 2] <= v2_2_addr_4_reg_900[7 : 2];
        v2_2_addr_4_reg_900_pp0_iter3_reg[7 : 2] <= v2_2_addr_4_reg_900_pp0_iter2_reg[7 : 2];
        v2_2_addr_4_reg_900_pp0_iter4_reg[7 : 2] <= v2_2_addr_4_reg_900_pp0_iter3_reg[7 : 2];
        v2_2_addr_reg_880[7 : 2] <= zext_ln56_1_fu_603_p1[7 : 2];
        v2_2_addr_reg_880_pp0_iter2_reg[7 : 2] <= v2_2_addr_reg_880[7 : 2];
        v2_2_addr_reg_880_pp0_iter3_reg[7 : 2] <= v2_2_addr_reg_880_pp0_iter2_reg[7 : 2];
        v2_3_addr_4_reg_905[7 : 2] <= zext_ln56_3_fu_618_p1[7 : 2];
        v2_3_addr_4_reg_905_pp0_iter2_reg[7 : 2] <= v2_3_addr_4_reg_905[7 : 2];
        v2_3_addr_4_reg_905_pp0_iter3_reg[7 : 2] <= v2_3_addr_4_reg_905_pp0_iter2_reg[7 : 2];
        v2_3_addr_4_reg_905_pp0_iter4_reg[7 : 2] <= v2_3_addr_4_reg_905_pp0_iter3_reg[7 : 2];
        v2_3_addr_reg_885[7 : 2] <= zext_ln56_1_fu_603_p1[7 : 2];
        v2_3_addr_reg_885_pp0_iter2_reg[7 : 2] <= v2_3_addr_reg_885[7 : 2];
        v2_3_addr_reg_885_pp0_iter3_reg[7 : 2] <= v2_3_addr_reg_885_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln60_3_reg_943 <= bitcast_ln60_3_fu_708_p1;
        v28_3_reg_915 <= v28_3_fu_642_p11;
        v28_4_reg_920 <= v28_4_fu_681_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln60_reg_935 <= bitcast_ln60_fu_704_p1;
        tmp_4_reg_849 <= {{v25_2_reg_727[7:2]}};
        tmp_reg_737 <= ap_sig_allocacmp_v25_2[32'd10];
        trunc_ln55_5_reg_801 <= {{v25_2_reg_727[9:8]}};
        trunc_ln55_5_reg_801_pp0_iter2_reg <= trunc_ln55_5_reg_801;
        trunc_ln55_5_reg_801_pp0_iter3_reg <= trunc_ln55_5_reg_801_pp0_iter2_reg;
        trunc_ln55_5_reg_801_pp0_iter4_reg <= trunc_ln55_5_reg_801_pp0_iter3_reg;
        v25_2_reg_727 <= ap_sig_allocacmp_v25_2;
        v2_0_addr_2_reg_809 <= zext_ln55_fu_467_p1;
        v2_0_addr_2_reg_809_pp0_iter2_reg <= v2_0_addr_2_reg_809;
        v2_0_addr_2_reg_809_pp0_iter3_reg <= v2_0_addr_2_reg_809_pp0_iter2_reg;
        v2_0_addr_3_reg_829[7 : 1] <= zext_ln56_fu_501_p1[7 : 1];
        v2_0_addr_3_reg_829_pp0_iter2_reg[7 : 1] <= v2_0_addr_3_reg_829[7 : 1];
        v2_0_addr_3_reg_829_pp0_iter3_reg[7 : 1] <= v2_0_addr_3_reg_829_pp0_iter2_reg[7 : 1];
        v2_1_addr_2_reg_814 <= zext_ln55_fu_467_p1;
        v2_1_addr_2_reg_814_pp0_iter2_reg <= v2_1_addr_2_reg_814;
        v2_1_addr_2_reg_814_pp0_iter3_reg <= v2_1_addr_2_reg_814_pp0_iter2_reg;
        v2_1_addr_3_reg_834[7 : 1] <= zext_ln56_fu_501_p1[7 : 1];
        v2_1_addr_3_reg_834_pp0_iter2_reg[7 : 1] <= v2_1_addr_3_reg_834[7 : 1];
        v2_1_addr_3_reg_834_pp0_iter3_reg[7 : 1] <= v2_1_addr_3_reg_834_pp0_iter2_reg[7 : 1];
        v2_2_addr_2_reg_819 <= zext_ln55_fu_467_p1;
        v2_2_addr_2_reg_819_pp0_iter2_reg <= v2_2_addr_2_reg_819;
        v2_2_addr_2_reg_819_pp0_iter3_reg <= v2_2_addr_2_reg_819_pp0_iter2_reg;
        v2_2_addr_3_reg_839[7 : 1] <= zext_ln56_fu_501_p1[7 : 1];
        v2_2_addr_3_reg_839_pp0_iter2_reg[7 : 1] <= v2_2_addr_3_reg_839[7 : 1];
        v2_2_addr_3_reg_839_pp0_iter3_reg[7 : 1] <= v2_2_addr_3_reg_839_pp0_iter2_reg[7 : 1];
        v2_3_addr_2_reg_824 <= zext_ln55_fu_467_p1;
        v2_3_addr_2_reg_824_pp0_iter2_reg <= v2_3_addr_2_reg_824;
        v2_3_addr_2_reg_824_pp0_iter3_reg <= v2_3_addr_2_reg_824_pp0_iter2_reg;
        v2_3_addr_3_reg_844[7 : 1] <= zext_ln56_fu_501_p1[7 : 1];
        v2_3_addr_3_reg_844_pp0_iter2_reg[7 : 1] <= v2_3_addr_3_reg_844[7 : 1];
        v2_3_addr_3_reg_844_pp0_iter3_reg[7 : 1] <= v2_3_addr_3_reg_844_pp0_iter2_reg[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_1_reg_910 <= grp_fu_719_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_3_reg_925 <= grp_fu_719_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_4_reg_930 <= grp_fu_719_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_reg_855 <= grp_fu_719_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_737 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v25_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_2 = v25_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p0 = v28_4_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p0 = v28_3_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p0 = v28_1_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p0 = v28_reg_860;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p1 = v27_4_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p1 = v27_3_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p1 = v27_1_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p1 = v27_reg_855;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p0 = v26_7_reg_796;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = v26_6_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p0 = v26_4_reg_786;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p0 = v26_reg_781;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = v2_0_addr_4_reg_890_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_3_reg_829_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_3_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_fu_501_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = v2_0_addr_reg_870_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = v2_0_addr_2_reg_809_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_1_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_467_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_d0_local = bitcast_ln60_4_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_d0_local = bitcast_ln60_1_reg_951;
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_0_d1_local = bitcast_ln60_3_reg_943;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_0_d1_local = bitcast_ln60_reg_935;
        end else begin
            v2_0_d1_local = 'bx;
        end
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter4_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = v2_1_addr_4_reg_895_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_3_reg_834_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_3_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_fu_501_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = v2_1_addr_reg_875_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = v2_1_addr_2_reg_814_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_1_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_467_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_d0_local = bitcast_ln60_4_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_d0_local = bitcast_ln60_1_reg_951;
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_1_d1_local = bitcast_ln60_3_reg_943;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_1_d1_local = bitcast_ln60_reg_935;
        end else begin
            v2_1_d1_local = 'bx;
        end
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter4_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address0_local = v2_2_addr_4_reg_900_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address0_local = v2_2_addr_3_reg_839_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address0_local = zext_ln56_3_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address0_local = zext_ln56_fu_501_p1;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address1_local = v2_2_addr_reg_880_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address1_local = v2_2_addr_2_reg_819_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address1_local = zext_ln56_1_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address1_local = zext_ln55_fu_467_p1;
    end else begin
        v2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_d0_local = bitcast_ln60_4_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_d0_local = bitcast_ln60_1_reg_951;
    end else begin
        v2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_2_d1_local = bitcast_ln60_3_reg_943;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_2_d1_local = bitcast_ln60_reg_935;
        end else begin
            v2_2_d1_local = 'bx;
        end
    end else begin
        v2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter4_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_2_we1_local = 1'b1;
    end else begin
        v2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address0_local = v2_3_addr_4_reg_905_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address0_local = v2_3_addr_3_reg_844_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address0_local = zext_ln56_3_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address0_local = zext_ln56_fu_501_p1;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address1_local = v2_3_addr_reg_885_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address1_local = v2_3_addr_2_reg_824_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address1_local = zext_ln56_1_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address1_local = zext_ln55_fu_467_p1;
    end else begin
        v2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_d0_local = bitcast_ln60_4_reg_959;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_d0_local = bitcast_ln60_1_reg_951;
    end else begin
        v2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_3_d1_local = bitcast_ln60_3_reg_943;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_3_d1_local = bitcast_ln60_reg_935;
        end else begin
            v2_3_d1_local = 'bx;
        end
    end else begin
        v2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter4_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_5_reg_801_pp0_iter3_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_3_we1_local = 1'b1;
    end else begin
        v2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
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
assign add_ln55_fu_454_p2 = (v25_2_reg_727 + 11'd4);
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
assign bitcast_ln60_1_fu_712_p1 = grp_fu_308_p_dout0;
assign bitcast_ln60_3_fu_708_p1 = grp_fu_308_p_dout0;
assign bitcast_ln60_4_fu_716_p1 = grp_fu_308_p_dout0;
assign bitcast_ln60_fu_704_p1 = grp_fu_308_p_dout0;
assign grp_fu_308_p_ce = 1'b1;
assign grp_fu_308_p_din0 = grp_fu_366_p0;
assign grp_fu_308_p_din1 = grp_fu_366_p1;
assign grp_fu_308_p_opcode = 2'd0;
assign grp_fu_719_p_ce = 1'b1;
assign grp_fu_719_p_din0 = grp_fu_370_p0;
assign grp_fu_719_p_din1 = 32'd3345637376;
assign icmp_ln57_fu_416_p2 = ((trunc_ln55_fu_413_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln55_1_fu_391_p4 = {{ap_sig_allocacmp_v25_2[9:3]}};
assign or_ln56_1_fu_596_p3 = {{tmp_4_reg_849}, {2'd2}};
assign or_ln56_3_fu_611_p3 = {{tmp_4_reg_849}, {2'd3}};
assign or_ln_fu_493_p3 = {{tmp_3_fu_484_p4}, {1'd1}};
assign tmp_3_fu_484_p4 = {{v25_2_reg_727[7:1]}};
assign trunc_ln55_2_fu_464_p1 = v25_2_reg_727[7:0];
assign trunc_ln55_fu_413_p1 = v25_2_reg_727[2:0];
assign v26_4_fu_430_p3 = ((icmp_ln57_fu_416_p2[0:0] == 1'b1) ? v3_5_q0 : v3_1_q0);
assign v26_6_fu_438_p3 = ((icmp_ln57_fu_416_p2[0:0] == 1'b1) ? v3_6_q0 : v3_2_q0);
assign v26_7_fu_446_p3 = ((icmp_ln57_fu_416_p2[0:0] == 1'b1) ? v3_7_q0 : v3_3_q0);
assign v26_fu_422_p3 = ((icmp_ln57_fu_416_p2[0:0] == 1'b1) ? v3_4_q0 : v3_q0);
assign v28_1_fu_573_p2 = v2_0_q0;
assign v28_1_fu_573_p4 = v2_1_q0;
assign v28_1_fu_573_p6 = v2_2_q0;
assign v28_1_fu_573_p8 = v2_3_q0;
assign v28_1_fu_573_p9 = 'bx;
assign v28_3_fu_642_p2 = v2_0_q1;
assign v28_3_fu_642_p4 = v2_1_q1;
assign v28_3_fu_642_p6 = v2_2_q1;
assign v28_3_fu_642_p8 = v2_3_q1;
assign v28_3_fu_642_p9 = 'bx;
assign v28_4_fu_681_p2 = v2_0_q0;
assign v28_4_fu_681_p4 = v2_1_q0;
assign v28_4_fu_681_p6 = v2_2_q0;
assign v28_4_fu_681_p8 = v2_3_q0;
assign v28_4_fu_681_p9 = 'bx;
assign v28_fu_534_p2 = v2_0_q1;
assign v28_fu_534_p4 = v2_1_q1;
assign v28_fu_534_p6 = v2_2_q1;
assign v28_fu_534_p8 = v2_3_q1;
assign v28_fu_534_p9 = 'bx;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_address1 = v2_2_address1_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = v2_2_d0_local;
assign v2_2_d1 = v2_2_d1_local;
assign v2_2_we0 = v2_2_we0_local;
assign v2_2_we1 = v2_2_we1_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_address1 = v2_3_address1_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = v2_3_d0_local;
assign v2_3_d1 = v2_3_d1_local;
assign v2_3_we0 = v2_3_we0_local;
assign v2_3_we1 = v2_3_we1_local;
assign v3_1_address0 = zext_ln55_1_fu_401_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_1_fu_401_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_1_fu_401_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_1_fu_401_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_1_fu_401_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_1_fu_401_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_1_fu_401_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_1_fu_401_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_1_fu_401_p1 = lshr_ln55_1_fu_391_p4;
assign zext_ln55_fu_467_p1 = trunc_ln55_2_fu_464_p1;
assign zext_ln56_1_fu_603_p1 = or_ln56_1_fu_596_p3;
assign zext_ln56_3_fu_618_p1 = or_ln56_3_fu_611_p3;
assign zext_ln56_fu_501_p1 = or_ln_fu_493_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_3_reg_829[0] <= 1'b1;
    v2_0_addr_3_reg_829_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_3_reg_829_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_3_reg_834[0] <= 1'b1;
    v2_1_addr_3_reg_834_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_3_reg_834_pp0_iter3_reg[0] <= 1'b1;
    v2_2_addr_3_reg_839[0] <= 1'b1;
    v2_2_addr_3_reg_839_pp0_iter2_reg[0] <= 1'b1;
    v2_2_addr_3_reg_839_pp0_iter3_reg[0] <= 1'b1;
    v2_3_addr_3_reg_844[0] <= 1'b1;
    v2_3_addr_3_reg_844_pp0_iter2_reg[0] <= 1'b1;
    v2_3_addr_3_reg_844_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_reg_870[1:0] <= 2'b10;
    v2_0_addr_reg_870_pp0_iter2_reg[1:0] <= 2'b10;
    v2_0_addr_reg_870_pp0_iter3_reg[1:0] <= 2'b10;
    v2_1_addr_reg_875[1:0] <= 2'b10;
    v2_1_addr_reg_875_pp0_iter2_reg[1:0] <= 2'b10;
    v2_1_addr_reg_875_pp0_iter3_reg[1:0] <= 2'b10;
    v2_2_addr_reg_880[1:0] <= 2'b10;
    v2_2_addr_reg_880_pp0_iter2_reg[1:0] <= 2'b10;
    v2_2_addr_reg_880_pp0_iter3_reg[1:0] <= 2'b10;
    v2_3_addr_reg_885[1:0] <= 2'b10;
    v2_3_addr_reg_885_pp0_iter2_reg[1:0] <= 2'b10;
    v2_3_addr_reg_885_pp0_iter3_reg[1:0] <= 2'b10;
    v2_0_addr_4_reg_890[1:0] <= 2'b11;
    v2_0_addr_4_reg_890_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_4_reg_890_pp0_iter3_reg[1:0] <= 2'b11;
    v2_0_addr_4_reg_890_pp0_iter4_reg[1:0] <= 2'b11;
    v2_1_addr_4_reg_895[1:0] <= 2'b11;
    v2_1_addr_4_reg_895_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_4_reg_895_pp0_iter3_reg[1:0] <= 2'b11;
    v2_1_addr_4_reg_895_pp0_iter4_reg[1:0] <= 2'b11;
    v2_2_addr_4_reg_900[1:0] <= 2'b11;
    v2_2_addr_4_reg_900_pp0_iter2_reg[1:0] <= 2'b11;
    v2_2_addr_4_reg_900_pp0_iter3_reg[1:0] <= 2'b11;
    v2_2_addr_4_reg_900_pp0_iter4_reg[1:0] <= 2'b11;
    v2_3_addr_4_reg_905[1:0] <= 2'b11;
    v2_3_addr_4_reg_905_pp0_iter2_reg[1:0] <= 2'b11;
    v2_3_addr_4_reg_905_pp0_iter3_reg[1:0] <= 2'b11;
    v2_3_addr_4_reg_905_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
