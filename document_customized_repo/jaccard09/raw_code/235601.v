module atax_atax_node0_Pipeline_label_112 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_6_reload,zext_ln33_7,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_7,tmp_305,v7_7_out_i,v7_7_out_o,v7_7_out_o_ap_vld,grp_fu_711_p_din0,grp_fu_711_p_din1,grp_fu_711_p_opcode,grp_fu_711_p_dout0,grp_fu_711_p_ce,grp_fu_715_p_din0,grp_fu_715_p_din1,grp_fu_715_p_opcode,grp_fu_715_p_dout0,grp_fu_715_p_ce,grp_fu_719_p_din0,grp_fu_719_p_din1,grp_fu_719_p_dout0,grp_fu_719_p_ce,grp_fu_723_p_din0,grp_fu_723_p_din1,grp_fu_723_p_dout0,grp_fu_723_p_ce); 
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
input  [31:0] v7_6_reload;
input  [11:0] zext_ln33_7;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [4:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [4:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [4:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [4:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
input  [31:0] v6_7;
input  [2:0] tmp_305;
input  [31:0] v7_7_out_i;
output  [31:0] v7_7_out_o;
output   v7_7_out_o_ap_vld;
output  [31:0] grp_fu_711_p_din0;
output  [31:0] grp_fu_711_p_din1;
output  [1:0] grp_fu_711_p_opcode;
input  [31:0] grp_fu_711_p_dout0;
output   grp_fu_711_p_ce;
output  [31:0] grp_fu_715_p_din0;
output  [31:0] grp_fu_715_p_din1;
output  [1:0] grp_fu_715_p_opcode;
input  [31:0] grp_fu_715_p_dout0;
output   grp_fu_715_p_ce;
output  [31:0] grp_fu_719_p_din0;
output  [31:0] grp_fu_719_p_din1;
input  [31:0] grp_fu_719_p_dout0;
output   grp_fu_719_p_ce;
output  [31:0] grp_fu_723_p_din0;
output  [31:0] grp_fu_723_p_din1;
input  [31:0] grp_fu_723_p_dout0;
output   grp_fu_723_p_ce;
reg ap_idle;
reg[31:0] v7_7_out_o;
reg v7_7_out_o_ap_vld;
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
reg   [0:0] tmp_reg_723;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_291;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_295;
reg   [31:0] reg_299;
reg   [31:0] reg_303;
reg   [31:0] reg_307;
reg   [31:0] reg_311;
reg   [6:0] v5_reg_714;
wire   [4:0] lshr_ln29_7_fu_352_p4;
reg   [4:0] lshr_ln29_7_reg_732;
wire   [0:0] icmp_ln31_fu_379_p2;
reg   [0:0] icmp_ln31_reg_742;
wire   [3:0] tmp_94_fu_384_p4;
reg   [3:0] tmp_94_reg_747;
wire   [31:0] v8_fu_429_p3;
reg   [31:0] v8_reg_762;
wire   [31:0] v10_fu_437_p1;
wire   [31:0] v16_fu_442_p1;
wire   [2:0] tmp_97_fu_447_p4;
reg   [2:0] tmp_97_reg_778;
wire   [0:0] tmp_25_fu_472_p3;
reg   [0:0] tmp_25_reg_791;
wire   [31:0] v22_fu_505_p1;
wire   [31:0] v28_fu_510_p1;
reg   [4:0] v116_0_addr_reg_821;
reg   [4:0] v116_0_addr_reg_821_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_821_pp0_iter3_reg;
wire   [31:0] v34_fu_573_p1;
wire   [31:0] v40_fu_578_p1;
reg   [4:0] v116_1_addr_reg_836;
reg   [4:0] v116_1_addr_reg_836_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_836_pp0_iter3_reg;
reg   [4:0] v116_0_addr_10_reg_841;
reg   [4:0] v116_0_addr_10_reg_841_pp0_iter2_reg;
reg   [4:0] v116_0_addr_10_reg_841_pp0_iter3_reg;
reg   [4:0] v116_1_addr_10_reg_846;
reg   [4:0] v116_1_addr_10_reg_846_pp0_iter2_reg;
reg   [4:0] v116_1_addr_10_reg_846_pp0_iter3_reg;
reg   [31:0] v11_reg_851;
reg   [31:0] v17_reg_856;
wire   [31:0] v46_fu_610_p1;
wire   [31:0] v52_fu_615_p1;
reg   [31:0] v116_0_load_10_reg_871;
reg   [31:0] v116_1_load_10_reg_876;
reg   [4:0] v116_0_addr_11_reg_881;
reg   [4:0] v116_0_addr_11_reg_881_pp0_iter2_reg;
reg   [4:0] v116_0_addr_11_reg_881_pp0_iter3_reg;
reg   [4:0] v116_1_addr_11_reg_886;
reg   [4:0] v116_1_addr_11_reg_886_pp0_iter2_reg;
reg   [4:0] v116_1_addr_11_reg_886_pp0_iter3_reg;
reg   [4:0] v116_0_addr_12_reg_891;
reg   [4:0] v116_0_addr_12_reg_891_pp0_iter2_reg;
reg   [4:0] v116_0_addr_12_reg_891_pp0_iter3_reg;
reg   [4:0] v116_0_addr_12_reg_891_pp0_iter4_reg;
reg   [4:0] v116_1_addr_12_reg_896;
reg   [4:0] v116_1_addr_12_reg_896_pp0_iter2_reg;
reg   [4:0] v116_1_addr_12_reg_896_pp0_iter3_reg;
reg   [4:0] v116_1_addr_12_reg_896_pp0_iter4_reg;
wire   [31:0] v9_fu_620_p1;
reg   [31:0] v23_reg_906;
reg   [31:0] v29_reg_911;
wire   [31:0] v15_fu_625_p1;
reg   [31:0] v116_0_load_12_reg_921;
reg   [31:0] v116_1_load_12_reg_926;
reg   [31:0] v35_reg_931;
reg   [31:0] v41_reg_936;
wire   [31:0] v21_fu_630_p1;
wire   [31:0] v27_fu_634_p1;
reg   [31:0] v47_reg_951;
reg   [31:0] v53_reg_956;
wire   [31:0] v33_fu_638_p1;
wire   [31:0] v39_fu_643_p1;
wire   [31:0] v45_fu_648_p1;
wire   [31:0] v51_fu_652_p1;
reg   [31:0] v24_reg_981;
reg   [31:0] v30_reg_986;
reg   [31:0] v48_reg_991;
reg   [31:0] v54_reg_996;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_3_fu_347_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_374_p1;
wire   [63:0] zext_ln47_fu_404_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_fu_420_p1;
wire   [63:0] zext_ln61_fu_467_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_494_p1;
wire   [63:0] zext_ln75_fu_525_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_fu_540_p1;
wire   [63:0] zext_ln29_fu_555_p1;
wire   [63:0] zext_ln46_fu_567_p1;
wire   [63:0] zext_ln60_fu_591_p1;
wire   [63:0] zext_ln74_fu_604_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_545_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_656_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_661_p1;
wire   [31:0] bitcast_ln64_fu_674_p1;
wire   [31:0] bitcast_ln78_fu_684_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_665_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_670_p1;
wire   [31:0] bitcast_ln71_fu_679_p1;
wire   [31:0] bitcast_ln86_fu_688_p1;
reg   [31:0] grp_fu_275_p0;
reg   [31:0] grp_fu_275_p1;
reg   [31:0] grp_fu_279_p0;
reg   [31:0] grp_fu_279_p1;
reg   [31:0] grp_fu_283_p0;
reg   [31:0] grp_fu_283_p1;
reg   [31:0] grp_fu_287_p0;
reg   [31:0] grp_fu_287_p1;
wire   [11:0] zext_ln33_fu_337_p1;
wire   [11:0] add_ln33_fu_341_p2;
wire   [11:0] tmp_s_fu_362_p5;
wire   [11:0] tmp_95_fu_393_p5;
wire   [11:0] tmp_96_fu_409_p5;
wire   [11:0] tmp_98_fu_456_p5;
wire   [11:0] tmp_99_fu_479_p7;
wire   [11:0] tmp_100_fu_515_p5;
wire   [11:0] tmp_101_fu_530_p5;
wire   [4:0] or_ln46_s_fu_560_p3;
wire   [4:0] or_ln60_s_fu_583_p4;
wire   [4:0] or_ln74_s_fu_597_p3;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v49_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        v49_fu_92 <= 7'd0;
    end else if (((tmp_reg_723 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_92 <= add_ln28_fu_545_p2;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_742 <= icmp_ln31_fu_379_p2;
        tmp_94_reg_747 <= {{v5_reg_714[5:2]}};
        v116_0_addr_11_reg_881[0] <= zext_ln60_fu_591_p1[0];
v116_0_addr_11_reg_881[4 : 2] <= zext_ln60_fu_591_p1[4 : 2];
        v116_0_addr_11_reg_881_pp0_iter2_reg[0] <= v116_0_addr_11_reg_881[0];
v116_0_addr_11_reg_881_pp0_iter2_reg[4 : 2] <= v116_0_addr_11_reg_881[4 : 2];
        v116_0_addr_11_reg_881_pp0_iter3_reg[0] <= v116_0_addr_11_reg_881_pp0_iter2_reg[0];
v116_0_addr_11_reg_881_pp0_iter3_reg[4 : 2] <= v116_0_addr_11_reg_881_pp0_iter2_reg[4 : 2];
        v116_0_addr_12_reg_891[4 : 2] <= zext_ln74_fu_604_p1[4 : 2];
        v116_0_addr_12_reg_891_pp0_iter2_reg[4 : 2] <= v116_0_addr_12_reg_891[4 : 2];
        v116_0_addr_12_reg_891_pp0_iter3_reg[4 : 2] <= v116_0_addr_12_reg_891_pp0_iter2_reg[4 : 2];
        v116_0_addr_12_reg_891_pp0_iter4_reg[4 : 2] <= v116_0_addr_12_reg_891_pp0_iter3_reg[4 : 2];
        v116_1_addr_11_reg_886[0] <= zext_ln60_fu_591_p1[0];
v116_1_addr_11_reg_886[4 : 2] <= zext_ln60_fu_591_p1[4 : 2];
        v116_1_addr_11_reg_886_pp0_iter2_reg[0] <= v116_1_addr_11_reg_886[0];
v116_1_addr_11_reg_886_pp0_iter2_reg[4 : 2] <= v116_1_addr_11_reg_886[4 : 2];
        v116_1_addr_11_reg_886_pp0_iter3_reg[0] <= v116_1_addr_11_reg_886_pp0_iter2_reg[0];
v116_1_addr_11_reg_886_pp0_iter3_reg[4 : 2] <= v116_1_addr_11_reg_886_pp0_iter2_reg[4 : 2];
        v116_1_addr_12_reg_896[4 : 2] <= zext_ln74_fu_604_p1[4 : 2];
        v116_1_addr_12_reg_896_pp0_iter2_reg[4 : 2] <= v116_1_addr_12_reg_896[4 : 2];
        v116_1_addr_12_reg_896_pp0_iter3_reg[4 : 2] <= v116_1_addr_12_reg_896_pp0_iter2_reg[4 : 2];
        v116_1_addr_12_reg_896_pp0_iter4_reg[4 : 2] <= v116_1_addr_12_reg_896_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln29_7_reg_732 <= {{ap_sig_allocacmp_v5[5:1]}};
        tmp_reg_723 <= ap_sig_allocacmp_v5[32'd6];
        v116_0_addr_10_reg_841[4 : 1] <= zext_ln46_fu_567_p1[4 : 1];
        v116_0_addr_10_reg_841_pp0_iter2_reg[4 : 1] <= v116_0_addr_10_reg_841[4 : 1];
        v116_0_addr_10_reg_841_pp0_iter3_reg[4 : 1] <= v116_0_addr_10_reg_841_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_821 <= zext_ln29_fu_555_p1;
        v116_0_addr_reg_821_pp0_iter2_reg <= v116_0_addr_reg_821;
        v116_0_addr_reg_821_pp0_iter3_reg <= v116_0_addr_reg_821_pp0_iter2_reg;
        v116_1_addr_10_reg_846[4 : 1] <= zext_ln46_fu_567_p1[4 : 1];
        v116_1_addr_10_reg_846_pp0_iter2_reg[4 : 1] <= v116_1_addr_10_reg_846[4 : 1];
        v116_1_addr_10_reg_846_pp0_iter3_reg[4 : 1] <= v116_1_addr_10_reg_846_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_836 <= zext_ln29_fu_555_p1;
        v116_1_addr_reg_836_pp0_iter2_reg <= v116_1_addr_reg_836;
        v116_1_addr_reg_836_pp0_iter3_reg <= v116_1_addr_reg_836_pp0_iter2_reg;
        v5_reg_714 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_291 <= v113_q1;
        reg_295 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_299 <= v116_0_q1;
        reg_303 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_307 <= grp_fu_711_p_dout0;
        reg_311 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_25_reg_791 <= v5_reg_714[32'd1];
        tmp_97_reg_778 <= {{v5_reg_714[5:3]}};
        v8_reg_762 <= v8_fu_429_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_10_reg_871 <= v116_0_q0;
        v116_1_load_10_reg_876 <= v116_1_q0;
        v11_reg_851 <= grp_fu_719_p_dout0;
        v17_reg_856 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_12_reg_921 <= v116_0_q0;
        v116_1_load_12_reg_926 <= v116_1_q0;
        v23_reg_906 <= grp_fu_719_p_dout0;
        v29_reg_911 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_981 <= grp_fu_711_p_dout0;
        v30_reg_986 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_931 <= grp_fu_719_p_dout0;
        v41_reg_936 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_951 <= grp_fu_719_p_dout0;
        v53_reg_956 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_991 <= grp_fu_711_p_dout0;
        v54_reg_996 <= grp_fu_715_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_723 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p0 = v45_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = v33_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = v21_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = v9_fu_620_p1;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_275_p1 = v47_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p1 = v35_reg_931;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p1 = v23_reg_906;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p1 = v11_reg_851;
    end else begin
        grp_fu_275_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p0 = v51_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p0 = v39_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = v27_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p0 = v15_fu_625_p1;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_279_p1 = v53_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_279_p1 = v41_reg_936;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p1 = v29_reg_911;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_279_p1 = v17_reg_856;
    end else begin
        grp_fu_279_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_283_p0 = v46_fu_610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_283_p0 = v34_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_283_p0 = v22_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_283_p0 = v10_fu_437_p1;
    end else begin
        grp_fu_283_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_283_p1 = v8_reg_762;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_283_p1 = v8_fu_429_p3;
    end else begin
        grp_fu_283_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_287_p0 = v52_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_287_p0 = v40_fu_578_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_287_p0 = v28_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p0 = v16_fu_442_p1;
    end else begin
        grp_fu_287_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_287_p1 = v8_reg_762;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_287_p1 = v8_fu_429_p3;
    end else begin
        grp_fu_287_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_540_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_494_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_420_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_374_p1;
        end else begin
            v113_address0_local = 'bx;
        end
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address1_local = zext_ln75_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_467_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_404_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_3_fu_347_p1;
        end else begin
            v113_address1_local = 'bx;
        end
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_12_reg_891_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_10_reg_841_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_567_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_11_reg_881_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_821_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_555_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_d0_local = bitcast_ln78_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_661_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_674_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_656_p1;
        end else begin
            v116_0_d1_local = 'bx;
        end
    end else begin
        v116_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address0_local = v116_1_addr_12_reg_896_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_10_reg_846_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_567_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_11_reg_886_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_836_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_555_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_d0_local = bitcast_ln86_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_670_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_679_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_665_p1;
        end else begin
            v116_1_d1_local = 'bx;
        end
    end else begin
        v116_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_7_out_o = v7_6_reload;
    end else if (((tmp_reg_723 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_7_out_o = v8_fu_429_p3;
    end else begin
        v7_7_out_o = v7_7_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_723 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_7_out_o_ap_vld = 1'b1;
    end else begin
        v7_7_out_o_ap_vld = 1'b0;
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
assign add_ln28_fu_545_p2 = (v5_reg_714 + 7'd8);
assign add_ln33_fu_341_p2 = (zext_ln33_7 + zext_ln33_fu_337_p1);
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
assign bitcast_ln36_fu_656_p1 = reg_307;
assign bitcast_ln43_fu_665_p1 = reg_311;
assign bitcast_ln50_fu_661_p1 = v24_reg_981;
assign bitcast_ln57_fu_670_p1 = v30_reg_986;
assign bitcast_ln64_fu_674_p1 = reg_307;
assign bitcast_ln71_fu_679_p1 = reg_311;
assign bitcast_ln78_fu_684_p1 = v48_reg_991;
assign bitcast_ln86_fu_688_p1 = v54_reg_996;
assign grp_fu_711_p_ce = 1'b1;
assign grp_fu_711_p_din0 = grp_fu_275_p0;
assign grp_fu_711_p_din1 = grp_fu_275_p1;
assign grp_fu_711_p_opcode = 2'd0;
assign grp_fu_715_p_ce = 1'b1;
assign grp_fu_715_p_din0 = grp_fu_279_p0;
assign grp_fu_715_p_din1 = grp_fu_279_p1;
assign grp_fu_715_p_opcode = 2'd0;
assign grp_fu_719_p_ce = 1'b1;
assign grp_fu_719_p_din0 = grp_fu_283_p0;
assign grp_fu_719_p_din1 = grp_fu_283_p1;
assign grp_fu_723_p_ce = 1'b1;
assign grp_fu_723_p_din0 = grp_fu_287_p0;
assign grp_fu_723_p_din1 = grp_fu_287_p1;
assign icmp_ln31_fu_379_p2 = ((v5_reg_714 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_7_fu_352_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign or_ln46_s_fu_560_p3 = {{tmp_94_reg_747}, {1'd1}};
assign or_ln60_s_fu_583_p4 = {{{tmp_97_reg_778}, {1'd1}}, {tmp_25_reg_791}};
assign or_ln74_s_fu_597_p3 = {{tmp_97_reg_778}, {2'd3}};
assign tmp_100_fu_515_p5 = {{{{tmp_305}, {3'd7}}, {tmp_97_reg_778}}, {3'd6}};
assign tmp_101_fu_530_p5 = {{{{tmp_305}, {3'd7}}, {tmp_97_reg_778}}, {3'd7}};
assign tmp_25_fu_472_p3 = v5_reg_714[32'd1];
assign tmp_94_fu_384_p4 = {{v5_reg_714[5:2]}};
assign tmp_95_fu_393_p5 = {{{{tmp_305}, {3'd7}}, {tmp_94_fu_384_p4}}, {2'd2}};
assign tmp_96_fu_409_p5 = {{{{tmp_305}, {3'd7}}, {tmp_94_fu_384_p4}}, {2'd3}};
assign tmp_97_fu_447_p4 = {{v5_reg_714[5:3]}};
assign tmp_98_fu_456_p5 = {{{{tmp_305}, {3'd7}}, {tmp_97_fu_447_p4}}, {3'd4}};
assign tmp_99_fu_479_p7 = {{{{{{tmp_305}, {3'd7}}, {tmp_97_fu_447_p4}}, {1'd1}}, {tmp_25_fu_472_p3}}, {1'd1}};
assign tmp_s_fu_362_p5 = {{{{tmp_305}, {3'd7}}, {lshr_ln29_7_fu_352_p4}}, {1'd1}};
assign v10_fu_437_p1 = reg_291;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = v116_0_d0_local;
assign v116_0_d1 = v116_0_d1_local;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = v116_1_d0_local;
assign v116_1_d1 = v116_1_d1_local;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v15_fu_625_p1 = reg_303;
assign v16_fu_442_p1 = reg_295;
assign v21_fu_630_p1 = v116_0_load_10_reg_871;
assign v22_fu_505_p1 = reg_291;
assign v27_fu_634_p1 = v116_1_load_10_reg_876;
assign v28_fu_510_p1 = reg_295;
assign v33_fu_638_p1 = reg_299;
assign v34_fu_573_p1 = reg_291;
assign v39_fu_643_p1 = reg_303;
assign v40_fu_578_p1 = reg_295;
assign v45_fu_648_p1 = v116_0_load_12_reg_921;
assign v46_fu_610_p1 = reg_291;
assign v51_fu_652_p1 = v116_1_load_12_reg_926;
assign v52_fu_615_p1 = reg_295;
assign v8_fu_429_p3 = ((icmp_ln31_reg_742[0:0] == 1'b1) ? v6_7 : v7_7_out_i);
assign v9_fu_620_p1 = reg_299;
assign zext_ln29_fu_555_p1 = lshr_ln29_7_reg_732;
assign zext_ln33_3_fu_347_p1 = add_ln33_fu_341_p2;
assign zext_ln33_fu_337_p1 = ap_sig_allocacmp_v5;
assign zext_ln40_fu_374_p1 = tmp_s_fu_362_p5;
assign zext_ln46_fu_567_p1 = or_ln46_s_fu_560_p3;
assign zext_ln47_fu_404_p1 = tmp_95_fu_393_p5;
assign zext_ln54_fu_420_p1 = tmp_96_fu_409_p5;
assign zext_ln60_fu_591_p1 = or_ln60_s_fu_583_p4;
assign zext_ln61_fu_467_p1 = tmp_98_fu_456_p5;
assign zext_ln68_fu_494_p1 = tmp_99_fu_479_p7;
assign zext_ln74_fu_604_p1 = or_ln74_s_fu_597_p3;
assign zext_ln75_fu_525_p1 = tmp_100_fu_515_p5;
assign zext_ln83_fu_540_p1 = tmp_101_fu_530_p5;
always @ (posedge ap_clk) begin
    v116_0_addr_10_reg_841[0] <= 1'b1;
    v116_0_addr_10_reg_841_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_10_reg_841_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_10_reg_846[0] <= 1'b1;
    v116_1_addr_10_reg_846_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_10_reg_846_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_11_reg_881[1] <= 1'b1;
    v116_0_addr_11_reg_881_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_11_reg_881_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_11_reg_886[1] <= 1'b1;
    v116_1_addr_11_reg_886_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_11_reg_886_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_12_reg_891[1:0] <= 2'b11;
    v116_0_addr_12_reg_891_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_12_reg_891_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_12_reg_891_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_12_reg_896[1:0] <= 2'b11;
    v116_1_addr_12_reg_896_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_12_reg_896_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_12_reg_896_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 