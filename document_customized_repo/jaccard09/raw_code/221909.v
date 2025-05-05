module SgdLR_sw_SgdLR_sw_Pipeline_label_27 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,zext_ln33_5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v0_4_address0,v0_4_ce0,v0_4_q0,v0_5_address0,v0_5_ce0,v0_5_q0,v0_6_address0,v0_6_ce0,v0_6_q0,v0_7_address0,v0_7_ce0,v0_7_q0,tmp_25,v6_12_out,v6_12_out_ap_vld,grp_fu_423_p_din0,grp_fu_423_p_din1,grp_fu_423_p_opcode,grp_fu_423_p_dout0,grp_fu_423_p_ce,grp_fu_909_p_din0,grp_fu_909_p_din1,grp_fu_909_p_dout0,grp_fu_909_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v2_address0;
output   v2_ce0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
input  [31:0] v2_q1;
input  [22:0] zext_ln33_5;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
input  [11:0] tmp_25;
output  [31:0] v6_12_out;
output   v6_12_out_ap_vld;
output  [31:0] grp_fu_423_p_din0;
output  [31:0] grp_fu_423_p_din1;
output  [0:0] grp_fu_423_p_opcode;
input  [31:0] grp_fu_423_p_dout0;
output   grp_fu_423_p_ce;
output  [31:0] grp_fu_909_p_din0;
output  [31:0] grp_fu_909_p_din1;
input  [31:0] grp_fu_909_p_dout0;
output   grp_fu_909_p_ce;
reg ap_idle;
reg v6_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [0:0] tmp_reg_692;
reg    ap_condition_exit_pp0_iter0_stage14;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_352;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [23:0] zext_ln33_5_cast_fu_357_p1;
reg   [23:0] zext_ln33_5_cast_reg_680;
reg   [10:0] v8_1_reg_685;
reg   [0:0] tmp_reg_692_pp0_iter1_reg;
reg   [0:0] tmp_reg_692_pp0_iter2_reg;
wire   [8:0] tmp_s_fu_382_p4;
reg   [8:0] tmp_s_reg_696;
wire   [22:0] tmp_9_fu_392_p5;
reg   [22:0] tmp_9_reg_701;
reg   [22:0] tmp_9_reg_701_pp0_iter1_reg;
wire   [23:0] add_ln35_fu_413_p2;
reg   [23:0] add_ln35_reg_707;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v2_load_reg_723;
reg   [2:0] trunc_ln35_6_reg_728;
reg   [31:0] v2_load_10_reg_733;
reg   [2:0] trunc_ln35_7_reg_738;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] v10_1_fu_522_p19;
reg   [31:0] v10_1_reg_783;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] v9_1_fu_573_p1;
wire   [31:0] v10_fu_609_p19;
reg   [31:0] v10_reg_833;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] v9_fu_648_p1;
reg   [31:0] v11_1_reg_843;
reg   [31:0] v11_reg_848;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln33_fu_434_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_fu_445_p1;
wire   [63:0] zext_ln35_2_fu_478_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln35_fu_561_p1;
wire    ap_block_pp0_stage13;
reg   [31:0] v12_fu_114;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
wire    ap_block_pp0_stage4;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage3;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [10:0] v8_fu_118;
wire   [10:0] add_ln33_fu_424_p2;
reg   [10:0] ap_sig_allocacmp_v8_1;
wire    ap_block_pp0_stage3_01001;
reg    v2_ce1_local;
reg    v2_ce0_local;
reg    v0_0_ce0_local;
reg   [19:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [19:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [19:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [19:0] v0_3_address0_local;
reg    v0_4_ce0_local;
reg   [19:0] v0_4_address0_local;
reg    v0_5_ce0_local;
reg   [19:0] v0_5_address0_local;
reg    v0_6_ce0_local;
reg   [19:0] v0_6_address0_local;
reg    v0_7_ce0_local;
reg   [19:0] v0_7_address0_local;
reg   [31:0] grp_fu_334_p0;
reg   [31:0] grp_fu_334_p1;
reg   [31:0] grp_fu_338_p0;
reg   [31:0] grp_fu_338_p1;
wire   [22:0] mul_ln35_1_fu_342_p0;
wire   [24:0] mul_ln35_1_fu_342_p1;
wire    ap_block_pp0_stage2;
wire   [23:0] mul_ln35_fu_347_p0;
wire   [25:0] mul_ln35_fu_347_p1;
wire    ap_block_pp0_stage1;
wire   [22:0] grp_fu_404_p0;
wire   [20:0] grp_fu_404_p1;
wire   [23:0] zext_ln33_1_fu_410_p1;
wire   [23:0] grp_fu_418_p0;
wire   [20:0] grp_fu_418_p1;
wire    ap_block_pp0_stage14;
wire   [9:0] or_ln33_3_fu_438_p3;
wire   [48:0] mul_ln35_fu_347_p2;
wire   [46:0] mul_ln35_1_fu_342_p2;
wire   [22:0] grp_fu_404_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] v10_1_fu_522_p2;
wire   [31:0] v10_1_fu_522_p4;
wire   [31:0] v10_1_fu_522_p6;
wire   [31:0] v10_1_fu_522_p8;
wire   [31:0] v10_1_fu_522_p10;
wire   [31:0] v10_1_fu_522_p12;
wire   [31:0] v10_1_fu_522_p14;
wire   [31:0] v10_1_fu_522_p16;
wire   [31:0] v10_1_fu_522_p17;
wire   [23:0] grp_fu_418_p2;
wire   [31:0] v10_fu_609_p2;
wire   [31:0] v10_fu_609_p4;
wire   [31:0] v10_fu_609_p6;
wire   [31:0] v10_fu_609_p8;
wire   [31:0] v10_fu_609_p10;
wire   [31:0] v10_fu_609_p12;
wire   [31:0] v10_fu_609_p14;
wire   [31:0] v10_fu_609_p16;
wire   [31:0] v10_fu_609_p17;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage11_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [46:0] mul_ln35_1_fu_342_p00;
wire   [48:0] mul_ln35_fu_347_p00;
wire   [2:0] v10_1_fu_522_p1;
wire   [2:0] v10_1_fu_522_p3;
wire   [2:0] v10_1_fu_522_p5;
wire   [2:0] v10_1_fu_522_p7;
wire  signed [2:0] v10_1_fu_522_p9;
wire  signed [2:0] v10_1_fu_522_p11;
wire  signed [2:0] v10_1_fu_522_p13;
wire  signed [2:0] v10_1_fu_522_p15;
wire   [2:0] v10_fu_609_p1;
wire   [2:0] v10_fu_609_p3;
wire   [2:0] v10_fu_609_p5;
wire   [2:0] v10_fu_609_p7;
wire  signed [2:0] v10_fu_609_p9;
wire  signed [2:0] v10_fu_609_p11;
wire  signed [2:0] v10_fu_609_p13;
wire  signed [2:0] v10_fu_609_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_114 = 32'd0;
#0 v8_fu_118 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U134(.din0(mul_ln35_1_fu_342_p0),.din1(mul_ln35_1_fu_342_p1),.dout(mul_ln35_1_fu_342_p2));
SgdLR_sw_mul_24ns_26ns_49_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 24 ),.din1_WIDTH( 26 ),.dout_WIDTH( 49 ))
mul_24ns_26ns_49_1_1_U135(.din0(mul_ln35_fu_347_p0),.din1(mul_ln35_fu_347_p1),.dout(mul_ln35_fu_347_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_404_p0),.din1(grp_fu_404_p1),.ce(1'b1),.dout(grp_fu_404_p2));
SgdLR_sw_urem_24ns_21ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 21 ),.dout_WIDTH( 24 ))
urem_24ns_21ns_24_28_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_418_p0),.din1(grp_fu_418_p1),.ce(1'b1),.dout(grp_fu_418_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U138(.din0(v10_1_fu_522_p2),.din1(v10_1_fu_522_p4),.din2(v10_1_fu_522_p6),.din3(v10_1_fu_522_p8),.din4(v10_1_fu_522_p10),.din5(v10_1_fu_522_p12),.din6(v10_1_fu_522_p14),.din7(v10_1_fu_522_p16),.def(v10_1_fu_522_p17),.sel(trunc_ln35_7_reg_738),.dout(v10_1_fu_522_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U139(.din0(v10_fu_609_p2),.din1(v10_fu_609_p4),.din2(v10_fu_609_p6),.din3(v10_fu_609_p8),.din4(v10_fu_609_p10),.din5(v10_fu_609_p12),.din6(v10_fu_609_p14),.din7(v10_fu_609_p16),.def(v10_fu_609_p17),.sel(trunc_ln35_6_reg_728),.dout(v10_fu_609_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage14),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_fu_114 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v12_fu_114 <= reg_352;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_fu_118 <= 11'd0;
    end else if (((tmp_reg_692 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v8_fu_118 <= add_ln33_fu_424_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln35_reg_707 <= add_ln35_fu_413_p2;
        trunc_ln35_6_reg_728 <= {{mul_ln35_fu_347_p2[46:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_352 <= grp_fu_423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_9_reg_701[9 : 1] <= tmp_9_fu_392_p5[9 : 1];
tmp_9_reg_701[22 : 11] <= tmp_9_fu_392_p5[22 : 11];
        tmp_9_reg_701_pp0_iter1_reg[9 : 1] <= tmp_9_reg_701[9 : 1];
tmp_9_reg_701_pp0_iter1_reg[22 : 11] <= tmp_9_reg_701[22 : 11];
        tmp_reg_692 <= ap_sig_allocacmp_v8_1[32'd10];
        tmp_reg_692_pp0_iter1_reg <= tmp_reg_692;
        tmp_reg_692_pp0_iter2_reg <= tmp_reg_692_pp0_iter1_reg;
        tmp_s_reg_696 <= {{ap_sig_allocacmp_v8_1[9:1]}};
        v8_1_reg_685 <= ap_sig_allocacmp_v8_1;
        zext_ln33_5_cast_reg_680[22 : 0] <= zext_ln33_5_cast_fu_357_p1[22 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln35_7_reg_738 <= {{mul_ln35_1_fu_342_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v10_1_reg_783 <= v10_1_fu_522_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v10_reg_833 <= v10_fu_609_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v11_1_reg_843 <= grp_fu_909_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v11_reg_848 <= grp_fu_909_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_10_reg_733 <= v2_q0;
        v2_load_reg_723 <= v2_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_692 == 1'd1) & (1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_692_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v8_1 = v8_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_334_p0 = reg_352;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_334_p0 = v12_fu_114;
        end else begin
            grp_fu_334_p0 = 'bx;
        end
    end else begin
        grp_fu_334_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_334_p1 = v11_1_reg_843;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_334_p1 = v11_reg_848;
        end else begin
            grp_fu_334_p1 = 'bx;
        end
    end else begin
        grp_fu_334_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = v9_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_338_p0 = v9_1_fu_573_p1;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p1 = v10_reg_833;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_338_p1 = v10_1_reg_783;
    end else begin
        grp_fu_338_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_0_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_1_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_2_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_2_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_3_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_3_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_4_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_4_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_5_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_5_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_6_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_6_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_7_address0_local = zext_ln35_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_7_address0_local = zext_ln35_2_fu_478_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_692_pp0_iter2_reg == 1'd1))) begin
        v6_12_out_ap_vld = 1'b1;
    end else begin
        v6_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_424_p2 = (v8_1_reg_685 + 11'd2);
assign add_ln35_fu_413_p2 = (zext_ln33_1_fu_410_p1 + zext_ln33_5_cast_reg_680);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage14;
assign ap_ready = ap_ready_sig;
assign grp_fu_404_p0 = {{{{tmp_25}, {1'd1}}, {tmp_s_fu_382_p4}}, {1'd1}};
assign grp_fu_404_p1 = 23'd576000;
assign grp_fu_418_p0 = (zext_ln33_1_fu_410_p1 + zext_ln33_5_cast_reg_680);
assign grp_fu_418_p1 = 24'd576000;
assign grp_fu_423_p_ce = 1'b1;
assign grp_fu_423_p_din0 = grp_fu_334_p0;
assign grp_fu_423_p_din1 = grp_fu_334_p1;
assign grp_fu_423_p_opcode = 2'd0;
assign grp_fu_909_p_ce = 1'b1;
assign grp_fu_909_p_din0 = grp_fu_338_p0;
assign grp_fu_909_p_din1 = grp_fu_338_p1;
assign mul_ln35_1_fu_342_p0 = mul_ln35_1_fu_342_p00;
assign mul_ln35_1_fu_342_p00 = tmp_9_reg_701_pp0_iter1_reg;
assign mul_ln35_1_fu_342_p1 = 47'd15270995;
assign mul_ln35_fu_347_p0 = mul_ln35_fu_347_p00;
assign mul_ln35_fu_347_p00 = add_ln35_reg_707;
assign mul_ln35_fu_347_p1 = 49'd30541990;
assign or_ln33_3_fu_438_p3 = {{tmp_s_reg_696}, {1'd1}};
assign tmp_9_fu_392_p5 = {{{{tmp_25}, {1'd1}}, {tmp_s_fu_382_p4}}, {1'd1}};
assign tmp_s_fu_382_p4 = {{ap_sig_allocacmp_v8_1[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v10_1_fu_522_p10 = v0_4_q0;
assign v10_1_fu_522_p12 = v0_5_q0;
assign v10_1_fu_522_p14 = v0_6_q0;
assign v10_1_fu_522_p16 = v0_7_q0;
assign v10_1_fu_522_p17 = 'bx;
assign v10_1_fu_522_p2 = v0_0_q0;
assign v10_1_fu_522_p4 = v0_1_q0;
assign v10_1_fu_522_p6 = v0_2_q0;
assign v10_1_fu_522_p8 = v0_3_q0;
assign v10_fu_609_p10 = v0_4_q0;
assign v10_fu_609_p12 = v0_5_q0;
assign v10_fu_609_p14 = v0_6_q0;
assign v10_fu_609_p16 = v0_7_q0;
assign v10_fu_609_p17 = 'bx;
assign v10_fu_609_p2 = v0_0_q0;
assign v10_fu_609_p4 = v0_1_q0;
assign v10_fu_609_p6 = v0_2_q0;
assign v10_fu_609_p8 = v0_3_q0;
assign v2_address0 = zext_ln31_fu_445_p1;
assign v2_address1 = zext_ln33_fu_434_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v6_12_out = v12_fu_114;
assign v9_1_fu_573_p1 = v2_load_10_reg_733;
assign v9_fu_648_p1 = v2_load_reg_723;
assign zext_ln31_fu_445_p1 = or_ln33_3_fu_438_p3;
assign zext_ln33_1_fu_410_p1 = v8_1_reg_685;
assign zext_ln33_5_cast_fu_357_p1 = zext_ln33_5;
assign zext_ln33_fu_434_p1 = v8_1_reg_685;
assign zext_ln35_2_fu_478_p1 = grp_fu_404_p2;
assign zext_ln35_fu_561_p1 = grp_fu_418_p2;
always @ (posedge ap_clk) begin
    zext_ln33_5_cast_reg_680[23] <= 1'b0;
    tmp_9_reg_701[0] <= 1'b1;
    tmp_9_reg_701[10] <= 1'b1;
    tmp_9_reg_701_pp0_iter1_reg[0] <= 1'b1;
    tmp_9_reg_701_pp0_iter1_reg[10] <= 1'b1;
end
endmodule 