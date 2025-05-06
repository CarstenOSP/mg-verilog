
module SgdLR_sw_SgdLR_sw_Pipeline_label_493 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,grp_fu_2149_p_din0,grp_fu_2149_p_din1,grp_fu_2149_p_opcode,grp_fu_2149_p_dout0,grp_fu_2149_p_ce,grp_fu_6202_p_din0,grp_fu_6202_p_din1,grp_fu_6202_p_dout0,grp_fu_6202_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [7:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
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
output  [31:0] grp_fu_2149_p_din0;
output  [31:0] grp_fu_2149_p_din1;
output  [0:0] grp_fu_2149_p_opcode;
input  [31:0] grp_fu_2149_p_dout0;
output   grp_fu_2149_p_ce;
output  [31:0] grp_fu_6202_p_din0;
output  [31:0] grp_fu_6202_p_din1;
input  [31:0] grp_fu_6202_p_dout0;
output   grp_fu_6202_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_986;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_526;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] v25_3_reg_976;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_538_p3;
reg   [9:0] v2_addr_reg_1010;
reg   [9:0] v2_addr_reg_1010_pp0_iter1_reg;
reg   [9:0] v2_addr_15_reg_1035;
reg   [9:0] v2_addr_15_reg_1035_pp0_iter1_reg;
reg   [1:0] trunc_ln55_s_reg_1041;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_fu_632_p11;
reg   [31:0] v26_reg_1047;
reg   [31:0] v2_load_reg_1052;
wire   [31:0] v26_15_fu_656_p11;
reg   [31:0] v26_15_reg_1057;
reg   [31:0] v2_load_15_reg_1062;
reg   [9:0] v2_addr_16_reg_1087;
reg   [9:0] v2_addr_16_reg_1087_pp0_iter1_reg;
reg   [9:0] v2_addr_17_reg_1112;
reg   [9:0] v2_addr_17_reg_1112_pp0_iter1_reg;
reg   [9:0] v2_addr_17_reg_1112_pp0_iter2_reg;
wire   [31:0] grp_fu_480_p11;
reg   [31:0] v26_16_reg_1118;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v2_load_16_reg_1123;
wire   [31:0] grp_fu_503_p11;
reg   [31:0] v26_17_reg_1128;
reg   [31:0] v2_load_17_reg_1133;
wire   [6:0] tmp_14_fu_756_p4;
reg   [6:0] tmp_14_reg_1138;
reg   [6:0] tmp_14_reg_1138_pp0_iter1_reg;
wire   [4:0] tmp_15_fu_778_p4;
reg   [4:0] tmp_15_reg_1144;
reg   [9:0] v2_addr_18_reg_1170;
reg   [9:0] v2_addr_18_reg_1170_pp0_iter1_reg;
reg   [9:0] v2_addr_18_reg_1170_pp0_iter2_reg;
reg   [9:0] v2_addr_19_reg_1196;
reg   [9:0] v2_addr_19_reg_1196_pp0_iter1_reg;
reg   [9:0] v2_addr_19_reg_1196_pp0_iter2_reg;
reg   [31:0] v26_18_reg_1201;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v2_load_18_reg_1206;
reg   [31:0] v26_19_reg_1211;
reg   [31:0] v2_load_19_reg_1216;
reg   [9:0] v2_addr_20_reg_1241;
reg   [9:0] v2_addr_20_reg_1241_pp0_iter1_reg;
reg   [9:0] v2_addr_20_reg_1241_pp0_iter2_reg;
reg   [31:0] v26_20_reg_1267;
reg   [31:0] v2_load_20_reg_1272;
reg   [31:0] v26_21_reg_1277;
reg   [31:0] v27_reg_1282;
wire   [31:0] v28_fu_889_p1;
reg   [31:0] v27_15_reg_1292;
wire   [31:0] v28_15_fu_893_p1;
reg   [31:0] v27_16_reg_1302;
wire   [31:0] v28_16_fu_897_p1;
reg   [31:0] v27_17_reg_1312;
wire   [31:0] v28_17_fu_901_p1;
reg   [31:0] v27_18_reg_1322;
wire   [31:0] v28_18_fu_905_p1;
reg   [31:0] v27_19_reg_1332;
wire   [31:0] v28_19_fu_909_p1;
reg   [31:0] v27_20_reg_1342;
reg   [9:0] v2_addr_21_reg_1347;
reg   [9:0] v2_addr_21_reg_1347_pp0_iter2_reg;
wire   [31:0] v28_20_fu_925_p1;
reg   [31:0] v27_21_reg_1357;
reg   [31:0] v2_load_21_reg_1362;
wire   [31:0] v28_21_fu_934_p1;
reg   [31:0] v29_18_reg_1372;
reg   [31:0] v29_19_reg_1377;
reg   [31:0] v29_20_reg_1382;
reg   [31:0] v29_21_reg_1387;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_3_fu_555_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_546_p1;
wire   [63:0] zext_ln56_27_fu_604_p1;
wire   [63:0] zext_ln56_fu_581_p1;
wire   [63:0] zext_ln56_29_fu_719_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_28_fu_697_p1;
wire   [63:0] zext_ln56_31_fu_748_p1;
wire   [63:0] zext_ln56_30_fu_735_p1;
wire   [63:0] zext_ln56_33_fu_795_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_32_fu_773_p1;
wire   [63:0] zext_ln56_35_fu_839_p1;
wire   [63:0] zext_ln56_34_fu_822_p1;
wire   [63:0] zext_ln56_37_fu_866_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_36_fu_854_p1;
wire   [63:0] zext_ln56_39_fu_881_p1;
wire   [63:0] zext_ln56_38_fu_920_p1;
reg   [10:0] v25_fu_102;
wire   [10:0] add_ln55_fu_612_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_3;
reg    v3_ce1_local;
reg   [7:0] v3_address1_local;
reg    v3_ce0_local;
reg   [7:0] v3_address0_local;
reg    v3_1_ce1_local;
reg   [7:0] v3_1_address1_local;
reg    v3_1_ce0_local;
reg   [7:0] v3_1_address0_local;
reg    v3_2_ce1_local;
reg   [7:0] v3_2_address1_local;
reg    v3_2_ce0_local;
reg   [7:0] v3_2_address0_local;
reg    v3_3_ce1_local;
reg   [7:0] v3_3_address1_local;
reg    v3_3_ce0_local;
reg   [7:0] v3_3_address0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
reg   [31:0] v2_d1_local;
wire   [31:0] bitcast_ln60_fu_929_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln60_15_fu_938_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln60_16_fu_943_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln60_17_fu_948_p1;
wire    ap_block_pp0_stage4;
reg    v2_we0_local;
reg   [31:0] v2_d0_local;
wire   [31:0] bitcast_ln60_18_fu_953_p1;
wire   [31:0] bitcast_ln60_19_fu_957_p1;
wire   [31:0] bitcast_ln60_20_fu_961_p1;
wire   [31:0] bitcast_ln60_21_fu_965_p1;
reg   [31:0] grp_fu_471_p0;
reg   [31:0] grp_fu_471_p1;
reg   [31:0] grp_fu_475_p0;
wire   [31:0] grp_fu_480_p9;
wire   [31:0] grp_fu_503_p9;
wire   [7:0] trunc_ln55_fu_551_p1;
wire   [8:0] tmp_s_fu_563_p4;
wire   [9:0] or_ln55_s_fu_573_p3;
wire   [6:0] tmp_11_fu_586_p4;
wire   [7:0] or_ln56_s_fu_596_p3;
wire   [31:0] v26_fu_632_p9;
wire   [1:0] v26_fu_632_p10;
wire   [31:0] v26_15_fu_656_p9;
wire   [1:0] v26_15_fu_656_p10;
wire   [7:0] tmp_12_fu_680_p4;
wire   [9:0] or_ln55_13_fu_689_p3;
wire   [5:0] tmp_13_fu_702_p4;
wire   [7:0] or_ln56_13_fu_711_p3;
wire   [9:0] or_ln55_14_fu_727_p3;
wire   [7:0] or_ln56_14_fu_740_p3;
wire   [9:0] or_ln55_15_fu_765_p3;
wire   [7:0] or_ln56_15_fu_787_p3;
wire   [0:0] tmp_16_fu_803_p3;
wire   [9:0] or_ln55_16_fu_810_p5;
wire   [7:0] or_ln56_16_fu_827_p5;
wire   [9:0] or_ln55_17_fu_847_p3;
wire   [7:0] or_ln56_17_fu_859_p3;
wire   [7:0] or_ln56_18_fu_874_p3;
wire   [9:0] or_ln55_18_fu_913_p3;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] grp_fu_480_p1;
wire   [1:0] grp_fu_480_p3;
wire  signed [1:0] grp_fu_480_p5;
wire  signed [1:0] grp_fu_480_p7;
wire   [1:0] grp_fu_503_p1;
wire   [1:0] grp_fu_503_p3;
wire  signed [1:0] grp_fu_503_p5;
wire  signed [1:0] grp_fu_503_p7;
wire   [1:0] v26_fu_632_p1;
wire   [1:0] v26_fu_632_p3;
wire  signed [1:0] v26_fu_632_p5;
wire  signed [1:0] v26_fu_632_p7;
wire   [1:0] v26_15_fu_656_p1;
wire   [1:0] v26_15_fu_656_p3;
wire  signed [1:0] v26_15_fu_656_p5;
wire  signed [1:0] v26_15_fu_656_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_102 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U793(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.def(grp_fu_480_p9),.sel(trunc_ln55_s_reg_1041),.dout(grp_fu_480_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U794(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.def(grp_fu_503_p9),.sel(trunc_ln55_s_reg_1041),.dout(grp_fu_503_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U795(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.def(v26_fu_632_p9),.sel(v26_fu_632_p10),.dout(v26_fu_632_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U796(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.def(v26_15_fu_656_p9),.sel(v26_15_fu_656_p10),.dout(v26_15_fu_656_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_538_p3 == 1'd0))) begin
            v25_fu_102 <= add_ln55_fu_612_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_102 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_526 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_14_reg_1138 <= {{v25_3_reg_976[9:3]}};
        tmp_14_reg_1138_pp0_iter1_reg <= tmp_14_reg_1138;
        tmp_15_reg_1144 <= {{v25_3_reg_976[7:3]}};
        v2_addr_18_reg_1170[9 : 3] <= zext_ln56_32_fu_773_p1[9 : 3];
        v2_addr_18_reg_1170_pp0_iter1_reg[9 : 3] <= v2_addr_18_reg_1170[9 : 3];
        v2_addr_18_reg_1170_pp0_iter2_reg[9 : 3] <= v2_addr_18_reg_1170_pp0_iter1_reg[9 : 3];
        v2_addr_19_reg_1196[1] <= zext_ln56_34_fu_822_p1[1];
v2_addr_19_reg_1196[9 : 3] <= zext_ln56_34_fu_822_p1[9 : 3];
        v2_addr_19_reg_1196_pp0_iter1_reg[1] <= v2_addr_19_reg_1196[1];
v2_addr_19_reg_1196_pp0_iter1_reg[9 : 3] <= v2_addr_19_reg_1196[9 : 3];
        v2_addr_19_reg_1196_pp0_iter2_reg[1] <= v2_addr_19_reg_1196_pp0_iter1_reg[1];
v2_addr_19_reg_1196_pp0_iter2_reg[9 : 3] <= v2_addr_19_reg_1196_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_986 <= ap_sig_allocacmp_v25_3[32'd10];
        v25_3_reg_976 <= ap_sig_allocacmp_v25_3;
        v2_addr_15_reg_1035[9 : 1] <= zext_ln56_fu_581_p1[9 : 1];
        v2_addr_15_reg_1035_pp0_iter1_reg[9 : 1] <= v2_addr_15_reg_1035[9 : 1];
        v2_addr_reg_1010 <= zext_ln55_fu_546_p1;
        v2_addr_reg_1010_pp0_iter1_reg <= v2_addr_reg_1010;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln55_s_reg_1041 <= {{v25_3_reg_976[9:8]}};
        v26_15_reg_1057 <= v26_15_fu_656_p11;
        v26_reg_1047 <= v26_fu_632_p11;
        v2_addr_16_reg_1087[9 : 2] <= zext_ln56_28_fu_697_p1[9 : 2];
        v2_addr_16_reg_1087_pp0_iter1_reg[9 : 2] <= v2_addr_16_reg_1087[9 : 2];
        v2_addr_17_reg_1112[9 : 2] <= zext_ln56_30_fu_735_p1[9 : 2];
        v2_addr_17_reg_1112_pp0_iter1_reg[9 : 2] <= v2_addr_17_reg_1112[9 : 2];
        v2_addr_17_reg_1112_pp0_iter2_reg[9 : 2] <= v2_addr_17_reg_1112_pp0_iter1_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_16_reg_1118 <= grp_fu_480_p11;
        v26_17_reg_1128 <= grp_fu_503_p11;
        v2_load_16_reg_1123 <= v2_q1;
        v2_load_17_reg_1133 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v26_18_reg_1201 <= grp_fu_480_p11;
        v26_19_reg_1211 <= grp_fu_503_p11;
        v2_load_18_reg_1206 <= v2_q1;
        v2_load_19_reg_1216 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v26_20_reg_1267 <= grp_fu_480_p11;
        v26_21_reg_1277 <= grp_fu_503_p11;
        v2_load_20_reg_1272 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_15_reg_1292 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_16_reg_1302 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_17_reg_1312 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_18_reg_1322 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_19_reg_1332 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_20_reg_1342 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_21_reg_1357 <= grp_fu_6202_p_dout0;
        v2_load_21_reg_1362 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_1282 <= grp_fu_6202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_18_reg_1372 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_19_reg_1377 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_20_reg_1382 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_21_reg_1387 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_addr_20_reg_1241[9 : 3] <= zext_ln56_36_fu_854_p1[9 : 3];
        v2_addr_20_reg_1241_pp0_iter1_reg[9 : 3] <= v2_addr_20_reg_1241[9 : 3];
        v2_addr_20_reg_1241_pp0_iter2_reg[9 : 3] <= v2_addr_20_reg_1241_pp0_iter1_reg[9 : 3];
        v2_addr_21_reg_1347[9 : 3] <= zext_ln56_38_fu_920_p1[9 : 3];
        v2_addr_21_reg_1347_pp0_iter2_reg[9 : 3] <= v2_addr_21_reg_1347[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_15_reg_1062 <= v2_q0;
        v2_load_reg_1052 <= v2_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_986 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_3 = v25_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_471_p0 = v28_21_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_471_p0 = v28_20_fu_925_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_471_p0 = v28_19_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_471_p0 = v28_18_fu_905_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_471_p0 = v28_17_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_471_p0 = v28_16_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_471_p0 = v28_15_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_471_p0 = v28_fu_889_p1;
    end else begin
        grp_fu_471_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_471_p1 = v27_21_reg_1357;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_471_p1 = v27_20_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_471_p1 = v27_19_reg_1332;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_471_p1 = v27_18_reg_1322;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_471_p1 = v27_17_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_471_p1 = v27_16_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_471_p1 = v27_15_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_471_p1 = v27_reg_1282;
    end else begin
        grp_fu_471_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_475_p0 = v26_21_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_475_p0 = v26_20_reg_1267;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_475_p0 = v26_19_reg_1211;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_475_p0 = v26_18_reg_1201;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_475_p0 = v26_17_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_475_p0 = v26_16_reg_1118;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_475_p0 = v26_15_reg_1057;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_475_p0 = v26_reg_1047;
    end else begin
        grp_fu_475_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address0_local = v2_addr_21_reg_1347_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address0_local = v2_addr_20_reg_1241_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address0_local = v2_addr_19_reg_1196_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address0_local = v2_addr_18_reg_1170_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address0_local = zext_ln56_38_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address0_local = zext_ln56_34_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = zext_ln56_30_fu_735_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_fu_581_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address1_local = v2_addr_17_reg_1112_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address1_local = v2_addr_16_reg_1087_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address1_local = v2_addr_15_reg_1035_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address1_local = v2_addr_reg_1010_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address1_local = zext_ln56_36_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address1_local = zext_ln56_32_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = zext_ln56_28_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_fu_546_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_d0_local = bitcast_ln60_21_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_d0_local = bitcast_ln60_20_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_d0_local = bitcast_ln60_19_fu_957_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_d0_local = bitcast_ln60_18_fu_953_p1;
        end else begin
            v2_d0_local = 'bx;
        end
    end else begin
        v2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_d1_local = bitcast_ln60_17_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_d1_local = bitcast_ln60_16_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_d1_local = bitcast_ln60_15_fu_938_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_d1_local = bitcast_ln60_fu_929_p1;
    end else begin
        v2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address0_local = zext_ln56_39_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address0_local = zext_ln56_35_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln56_31_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln56_27_fu_604_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address1_local = zext_ln56_37_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address1_local = zext_ln56_33_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln56_29_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln55_3_fu_555_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_2_address0_local = zext_ln56_39_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_2_address0_local = zext_ln56_35_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address0_local = zext_ln56_31_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address0_local = zext_ln56_27_fu_604_p1;
        end else begin
            v3_2_address0_local = 'bx;
        end
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_2_address1_local = zext_ln56_37_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_2_address1_local = zext_ln56_33_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address1_local = zext_ln56_29_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address1_local = zext_ln55_3_fu_555_p1;
        end else begin
            v3_2_address1_local = 'bx;
        end
    end else begin
        v3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_3_address0_local = zext_ln56_39_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_3_address0_local = zext_ln56_35_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address0_local = zext_ln56_31_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address0_local = zext_ln56_27_fu_604_p1;
        end else begin
            v3_3_address0_local = 'bx;
        end
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_3_address1_local = zext_ln56_37_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_3_address1_local = zext_ln56_33_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address1_local = zext_ln56_29_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address1_local = zext_ln55_3_fu_555_p1;
        end else begin
            v3_3_address1_local = 'bx;
        end
    end else begin
        v3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln56_39_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln56_35_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_31_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_27_fu_604_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln56_37_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln56_33_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_29_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_3_fu_555_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_612_p2 = (ap_sig_allocacmp_v25_3 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_15_fu_938_p1 = reg_526;
assign bitcast_ln60_16_fu_943_p1 = reg_526;
assign bitcast_ln60_17_fu_948_p1 = reg_526;
assign bitcast_ln60_18_fu_953_p1 = v29_18_reg_1372;
assign bitcast_ln60_19_fu_957_p1 = v29_19_reg_1377;
assign bitcast_ln60_20_fu_961_p1 = v29_20_reg_1382;
assign bitcast_ln60_21_fu_965_p1 = v29_21_reg_1387;
assign bitcast_ln60_fu_929_p1 = reg_526;
assign grp_fu_2149_p_ce = 1'b1;
assign grp_fu_2149_p_din0 = grp_fu_471_p0;
assign grp_fu_2149_p_din1 = grp_fu_471_p1;
assign grp_fu_2149_p_opcode = 2'd0;
assign grp_fu_480_p9 = 'bx;
assign grp_fu_503_p9 = 'bx;
assign grp_fu_6202_p_ce = 1'b1;
assign grp_fu_6202_p_din0 = grp_fu_475_p0;
assign grp_fu_6202_p_din1 = 32'd3345637376;
assign or_ln55_13_fu_689_p3 = {{tmp_12_fu_680_p4}, {2'd2}};
assign or_ln55_14_fu_727_p3 = {{tmp_12_fu_680_p4}, {2'd3}};
assign or_ln55_15_fu_765_p3 = {{tmp_14_fu_756_p4}, {3'd4}};
assign or_ln55_16_fu_810_p5 = {{{{tmp_14_fu_756_p4}, {1'd1}}, {tmp_16_fu_803_p3}}, {1'd1}};
assign or_ln55_17_fu_847_p3 = {{tmp_14_reg_1138}, {3'd6}};
assign or_ln55_18_fu_913_p3 = {{tmp_14_reg_1138_pp0_iter1_reg}, {3'd7}};
assign or_ln55_s_fu_573_p3 = {{tmp_s_fu_563_p4}, {1'd1}};
assign or_ln56_13_fu_711_p3 = {{tmp_13_fu_702_p4}, {2'd2}};
assign or_ln56_14_fu_740_p3 = {{tmp_13_fu_702_p4}, {2'd3}};
assign or_ln56_15_fu_787_p3 = {{tmp_15_fu_778_p4}, {3'd4}};
assign or_ln56_16_fu_827_p5 = {{{{tmp_15_fu_778_p4}, {1'd1}}, {tmp_16_fu_803_p3}}, {1'd1}};
assign or_ln56_17_fu_859_p3 = {{tmp_15_reg_1144}, {3'd6}};
assign or_ln56_18_fu_874_p3 = {{tmp_15_reg_1144}, {3'd7}};
assign or_ln56_s_fu_596_p3 = {{tmp_11_fu_586_p4}, {1'd1}};
assign tmp_11_fu_586_p4 = {{ap_sig_allocacmp_v25_3[7:1]}};
assign tmp_12_fu_680_p4 = {{v25_3_reg_976[9:2]}};
assign tmp_13_fu_702_p4 = {{v25_3_reg_976[7:2]}};
assign tmp_14_fu_756_p4 = {{v25_3_reg_976[9:3]}};
assign tmp_15_fu_778_p4 = {{v25_3_reg_976[7:3]}};
assign tmp_16_fu_803_p3 = v25_3_reg_976[32'd1];
assign tmp_fu_538_p3 = ap_sig_allocacmp_v25_3[32'd10];
assign tmp_s_fu_563_p4 = {{ap_sig_allocacmp_v25_3[9:1]}};
assign trunc_ln55_fu_551_p1 = ap_sig_allocacmp_v25_3[7:0];
assign v26_15_fu_656_p10 = {{v25_3_reg_976[9:8]}};
assign v26_15_fu_656_p9 = 'bx;
assign v26_fu_632_p10 = {{v25_3_reg_976[9:8]}};
assign v26_fu_632_p9 = 'bx;
assign v28_15_fu_893_p1 = v2_load_15_reg_1062;
assign v28_16_fu_897_p1 = v2_load_16_reg_1123;
assign v28_17_fu_901_p1 = v2_load_17_reg_1133;
assign v28_18_fu_905_p1 = v2_load_18_reg_1206;
assign v28_19_fu_909_p1 = v2_load_19_reg_1216;
assign v28_20_fu_925_p1 = v2_load_20_reg_1272;
assign v28_21_fu_934_p1 = v2_load_21_reg_1362;
assign v28_fu_889_p1 = v2_load_reg_1052;
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
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_3_fu_555_p1 = trunc_ln55_fu_551_p1;
assign zext_ln55_fu_546_p1 = ap_sig_allocacmp_v25_3;
assign zext_ln56_27_fu_604_p1 = or_ln56_s_fu_596_p3;
assign zext_ln56_28_fu_697_p1 = or_ln55_13_fu_689_p3;
assign zext_ln56_29_fu_719_p1 = or_ln56_13_fu_711_p3;
assign zext_ln56_30_fu_735_p1 = or_ln55_14_fu_727_p3;
assign zext_ln56_31_fu_748_p1 = or_ln56_14_fu_740_p3;
assign zext_ln56_32_fu_773_p1 = or_ln55_15_fu_765_p3;
assign zext_ln56_33_fu_795_p1 = or_ln56_15_fu_787_p3;
assign zext_ln56_34_fu_822_p1 = or_ln55_16_fu_810_p5;
assign zext_ln56_35_fu_839_p1 = or_ln56_16_fu_827_p5;
assign zext_ln56_36_fu_854_p1 = or_ln55_17_fu_847_p3;
assign zext_ln56_37_fu_866_p1 = or_ln56_17_fu_859_p3;
assign zext_ln56_38_fu_920_p1 = or_ln55_18_fu_913_p3;
assign zext_ln56_39_fu_881_p1 = or_ln56_18_fu_874_p3;
assign zext_ln56_fu_581_p1 = or_ln55_s_fu_573_p3;
always @ (posedge ap_clk) begin
    v2_addr_15_reg_1035[0] <= 1'b1;
    v2_addr_15_reg_1035_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_16_reg_1087[1:0] <= 2'b10;
    v2_addr_16_reg_1087_pp0_iter1_reg[1:0] <= 2'b10;
    v2_addr_17_reg_1112[1:0] <= 2'b11;
    v2_addr_17_reg_1112_pp0_iter1_reg[1:0] <= 2'b11;
    v2_addr_17_reg_1112_pp0_iter2_reg[1:0] <= 2'b11;
    v2_addr_18_reg_1170[2:0] <= 3'b100;
    v2_addr_18_reg_1170_pp0_iter1_reg[2:0] <= 3'b100;
    v2_addr_18_reg_1170_pp0_iter2_reg[2:0] <= 3'b100;
    v2_addr_19_reg_1196[0] <= 1'b1;
    v2_addr_19_reg_1196[2] <= 1'b1;
    v2_addr_19_reg_1196_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_19_reg_1196_pp0_iter1_reg[2] <= 1'b1;
    v2_addr_19_reg_1196_pp0_iter2_reg[0] <= 1'b1;
    v2_addr_19_reg_1196_pp0_iter2_reg[2] <= 1'b1;
    v2_addr_20_reg_1241[2:0] <= 3'b110;
    v2_addr_20_reg_1241_pp0_iter1_reg[2:0] <= 3'b110;
    v2_addr_20_reg_1241_pp0_iter2_reg[2:0] <= 3'b110;
    v2_addr_21_reg_1347[2:0] <= 3'b111;
    v2_addr_21_reg_1347_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 
