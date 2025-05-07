module atax_atax_node0_Pipeline_label_111 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_5_reload,tmp_305,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_6,v7_6_out,v7_6_out_ap_vld,grp_fu_711_p_din0,grp_fu_711_p_din1,grp_fu_711_p_opcode,grp_fu_711_p_dout0,grp_fu_711_p_ce,grp_fu_715_p_din0,grp_fu_715_p_din1,grp_fu_715_p_opcode,grp_fu_715_p_dout0,grp_fu_715_p_ce,grp_fu_719_p_din0,grp_fu_719_p_din1,grp_fu_719_p_dout0,grp_fu_719_p_ce,grp_fu_723_p_din0,grp_fu_723_p_din1,grp_fu_723_p_dout0,grp_fu_723_p_ce); 
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
input  [31:0] v7_5_reload;
input  [2:0] tmp_305;
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
input  [31:0] v6_6;
output  [31:0] v7_6_out;
output   v7_6_out_ap_vld;
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
reg v7_6_out_ap_vld;
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
reg   [0:0] tmp_reg_734;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_296;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_300;
reg   [31:0] reg_304;
reg   [31:0] reg_308;
reg   [31:0] reg_312;
reg   [31:0] reg_316;
reg   [6:0] v5_reg_726;
wire   [0:0] tmp_fu_333_p3;
reg   [0:0] tmp_reg_734_pp0_iter1_reg;
reg   [0:0] tmp_reg_734_pp0_iter2_reg;
reg   [0:0] tmp_reg_734_pp0_iter3_reg;
wire   [4:0] lshr_ln29_6_fu_356_p4;
reg   [4:0] lshr_ln29_6_reg_743;
wire   [0:0] icmp_ln31_fu_394_p2;
reg   [0:0] icmp_ln31_reg_753;
wire   [3:0] tmp_103_fu_399_p4;
reg   [3:0] tmp_103_reg_758;
reg   [2:0] tmp_106_reg_773;
reg   [0:0] tmp_26_reg_783;
wire   [31:0] v8_fu_459_p3;
reg   [31:0] v8_reg_789;
wire   [31:0] v10_fu_467_p1;
wire   [31:0] v16_fu_472_p1;
wire   [31:0] v22_fu_515_p1;
wire   [31:0] v28_fu_520_p1;
reg   [4:0] v116_0_addr_reg_835;
reg   [4:0] v116_0_addr_reg_835_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_835_pp0_iter3_reg;
wire   [31:0] v34_fu_573_p1;
wire   [31:0] v40_fu_578_p1;
reg   [4:0] v116_1_addr_reg_850;
reg   [4:0] v116_1_addr_reg_850_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_850_pp0_iter3_reg;
reg   [4:0] v116_0_addr_13_reg_855;
reg   [4:0] v116_0_addr_13_reg_855_pp0_iter2_reg;
reg   [4:0] v116_0_addr_13_reg_855_pp0_iter3_reg;
reg   [4:0] v116_1_addr_13_reg_860;
reg   [4:0] v116_1_addr_13_reg_860_pp0_iter2_reg;
reg   [4:0] v116_1_addr_13_reg_860_pp0_iter3_reg;
reg   [31:0] v11_reg_865;
reg   [31:0] v17_reg_870;
wire   [31:0] v46_fu_610_p1;
wire   [31:0] v52_fu_615_p1;
reg   [31:0] v116_0_load_13_reg_885;
reg   [31:0] v116_1_load_13_reg_890;
reg   [4:0] v116_0_addr_14_reg_895;
reg   [4:0] v116_0_addr_14_reg_895_pp0_iter2_reg;
reg   [4:0] v116_0_addr_14_reg_895_pp0_iter3_reg;
reg   [4:0] v116_1_addr_14_reg_900;
reg   [4:0] v116_1_addr_14_reg_900_pp0_iter2_reg;
reg   [4:0] v116_1_addr_14_reg_900_pp0_iter3_reg;
reg   [4:0] v116_0_addr_15_reg_905;
reg   [4:0] v116_0_addr_15_reg_905_pp0_iter2_reg;
reg   [4:0] v116_0_addr_15_reg_905_pp0_iter3_reg;
reg   [4:0] v116_0_addr_15_reg_905_pp0_iter4_reg;
reg   [4:0] v116_1_addr_15_reg_910;
reg   [4:0] v116_1_addr_15_reg_910_pp0_iter2_reg;
reg   [4:0] v116_1_addr_15_reg_910_pp0_iter3_reg;
reg   [4:0] v116_1_addr_15_reg_910_pp0_iter4_reg;
wire   [31:0] v9_fu_620_p1;
reg   [31:0] v23_reg_920;
reg   [31:0] v29_reg_925;
wire   [31:0] v15_fu_625_p1;
reg   [31:0] v116_0_load_15_reg_935;
reg   [31:0] v116_1_load_15_reg_940;
reg   [31:0] v35_reg_945;
reg   [31:0] v41_reg_950;
wire   [31:0] v21_fu_630_p1;
wire   [31:0] v27_fu_634_p1;
reg   [31:0] v47_reg_965;
reg   [31:0] v53_reg_970;
wire   [31:0] v33_fu_638_p1;
wire   [31:0] v39_fu_643_p1;
wire   [31:0] v45_fu_648_p1;
wire   [31:0] v51_fu_652_p1;
reg   [31:0] v24_reg_995;
reg   [31:0] v30_reg_1000;
reg   [31:0] v48_reg_1005;
reg   [31:0] v54_reg_1010;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_351_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_378_p1;
wire   [63:0] zext_ln47_fu_419_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_fu_435_p1;
wire   [63:0] zext_ln61_fu_487_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_505_p1;
wire   [63:0] zext_ln75_fu_535_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_fu_550_p1;
wire   [63:0] zext_ln29_fu_555_p1;
wire   [63:0] zext_ln46_fu_567_p1;
wire   [63:0] zext_ln60_fu_591_p1;
wire   [63:0] zext_ln74_fu_604_p1;
reg   [31:0] v3_fu_92;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v49_fu_96;
wire   [6:0] add_ln28_fu_383_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage3_01001;
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
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_284_p1;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
wire   [11:0] tmp_s_fu_341_p4;
wire   [11:0] tmp_102_fu_366_p5;
wire   [11:0] tmp_104_fu_408_p5;
wire   [11:0] tmp_105_fu_424_p5;
wire   [11:0] tmp_107_fu_477_p5;
wire   [11:0] tmp_108_fu_492_p7;
wire   [11:0] tmp_109_fu_525_p5;
wire   [11:0] tmp_110_fu_540_p5;
wire   [4:0] or_ln46_8_fu_560_p3;
wire   [4:0] or_ln60_8_fu_583_p4;
wire   [4:0] or_ln74_8_fu_597_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v3_fu_92 = 32'd0;
#0 v49_fu_96 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        v3_fu_92 <= v7_5_reload;
    end else if (((tmp_reg_734 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_92 <= v8_fu_459_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_333_p3 == 1'd0))) begin
            v49_fu_96 <= add_ln28_fu_383_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_96 <= 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_753 <= icmp_ln31_fu_394_p2;
        tmp_103_reg_758 <= {{v5_reg_726[5:2]}};
        tmp_106_reg_773 <= {{v5_reg_726[5:3]}};
        tmp_26_reg_783 <= v5_reg_726[32'd1];
        v116_0_addr_14_reg_895[0] <= zext_ln60_fu_591_p1[0];
v116_0_addr_14_reg_895[4 : 2] <= zext_ln60_fu_591_p1[4 : 2];
        v116_0_addr_14_reg_895_pp0_iter2_reg[0] <= v116_0_addr_14_reg_895[0];
v116_0_addr_14_reg_895_pp0_iter2_reg[4 : 2] <= v116_0_addr_14_reg_895[4 : 2];
        v116_0_addr_14_reg_895_pp0_iter3_reg[0] <= v116_0_addr_14_reg_895_pp0_iter2_reg[0];
v116_0_addr_14_reg_895_pp0_iter3_reg[4 : 2] <= v116_0_addr_14_reg_895_pp0_iter2_reg[4 : 2];
        v116_0_addr_15_reg_905[4 : 2] <= zext_ln74_fu_604_p1[4 : 2];
        v116_0_addr_15_reg_905_pp0_iter2_reg[4 : 2] <= v116_0_addr_15_reg_905[4 : 2];
        v116_0_addr_15_reg_905_pp0_iter3_reg[4 : 2] <= v116_0_addr_15_reg_905_pp0_iter2_reg[4 : 2];
        v116_0_addr_15_reg_905_pp0_iter4_reg[4 : 2] <= v116_0_addr_15_reg_905_pp0_iter3_reg[4 : 2];
        v116_1_addr_14_reg_900[0] <= zext_ln60_fu_591_p1[0];
v116_1_addr_14_reg_900[4 : 2] <= zext_ln60_fu_591_p1[4 : 2];
        v116_1_addr_14_reg_900_pp0_iter2_reg[0] <= v116_1_addr_14_reg_900[0];
v116_1_addr_14_reg_900_pp0_iter2_reg[4 : 2] <= v116_1_addr_14_reg_900[4 : 2];
        v116_1_addr_14_reg_900_pp0_iter3_reg[0] <= v116_1_addr_14_reg_900_pp0_iter2_reg[0];
v116_1_addr_14_reg_900_pp0_iter3_reg[4 : 2] <= v116_1_addr_14_reg_900_pp0_iter2_reg[4 : 2];
        v116_1_addr_15_reg_910[4 : 2] <= zext_ln74_fu_604_p1[4 : 2];
        v116_1_addr_15_reg_910_pp0_iter2_reg[4 : 2] <= v116_1_addr_15_reg_910[4 : 2];
        v116_1_addr_15_reg_910_pp0_iter3_reg[4 : 2] <= v116_1_addr_15_reg_910_pp0_iter2_reg[4 : 2];
        v116_1_addr_15_reg_910_pp0_iter4_reg[4 : 2] <= v116_1_addr_15_reg_910_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln29_6_reg_743 <= {{ap_sig_allocacmp_v5[5:1]}};
        tmp_reg_734 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_734_pp0_iter1_reg <= tmp_reg_734;
        tmp_reg_734_pp0_iter2_reg <= tmp_reg_734_pp0_iter1_reg;
        tmp_reg_734_pp0_iter3_reg <= tmp_reg_734_pp0_iter2_reg;
        v116_0_addr_13_reg_855[4 : 1] <= zext_ln46_fu_567_p1[4 : 1];
        v116_0_addr_13_reg_855_pp0_iter2_reg[4 : 1] <= v116_0_addr_13_reg_855[4 : 1];
        v116_0_addr_13_reg_855_pp0_iter3_reg[4 : 1] <= v116_0_addr_13_reg_855_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_835 <= zext_ln29_fu_555_p1;
        v116_0_addr_reg_835_pp0_iter2_reg <= v116_0_addr_reg_835;
        v116_0_addr_reg_835_pp0_iter3_reg <= v116_0_addr_reg_835_pp0_iter2_reg;
        v116_1_addr_13_reg_860[4 : 1] <= zext_ln46_fu_567_p1[4 : 1];
        v116_1_addr_13_reg_860_pp0_iter2_reg[4 : 1] <= v116_1_addr_13_reg_860[4 : 1];
        v116_1_addr_13_reg_860_pp0_iter3_reg[4 : 1] <= v116_1_addr_13_reg_860_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_850 <= zext_ln29_fu_555_p1;
        v116_1_addr_reg_850_pp0_iter2_reg <= v116_1_addr_reg_850;
        v116_1_addr_reg_850_pp0_iter3_reg <= v116_1_addr_reg_850_pp0_iter2_reg;
        v5_reg_726 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_296 <= v113_q1;
        reg_300 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_304 <= v116_0_q1;
        reg_308 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_312 <= grp_fu_711_p_dout0;
        reg_316 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_13_reg_885 <= v116_0_q0;
        v116_1_load_13_reg_890 <= v116_1_q0;
        v11_reg_865 <= grp_fu_719_p_dout0;
        v17_reg_870 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_15_reg_935 <= v116_0_q0;
        v116_1_load_15_reg_940 <= v116_1_q0;
        v23_reg_920 <= grp_fu_719_p_dout0;
        v29_reg_925 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_995 <= grp_fu_711_p_dout0;
        v30_reg_1000 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_945 <= grp_fu_719_p_dout0;
        v41_reg_950 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_965 <= grp_fu_719_p_dout0;
        v53_reg_970 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1005 <= grp_fu_711_p_dout0;
        v54_reg_1010 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_789 <= v8_fu_459_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_734 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p0 = v45_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p0 = v33_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p0 = v21_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p0 = v9_fu_620_p1;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p1 = v47_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p1 = v35_reg_945;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p1 = v23_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p1 = v11_reg_865;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_284_p0 = v51_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_284_p0 = v39_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_284_p0 = v27_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_284_p0 = v15_fu_625_p1;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_284_p1 = v53_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_284_p1 = v41_reg_950;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_284_p1 = v29_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_284_p1 = v17_reg_870;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p0 = v46_fu_610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p0 = v34_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p0 = v22_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p0 = v10_fu_467_p1;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_288_p1 = v8_reg_789;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p1 = v8_fu_459_p3;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p0 = v52_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_292_p0 = v40_fu_578_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_292_p0 = v28_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_292_p0 = v16_fu_472_p1;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_292_p1 = v8_reg_789;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_292_p1 = v8_fu_459_p3;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_550_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_435_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_378_p1;
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
            v113_address1_local = zext_ln75_fu_535_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_487_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_419_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_fu_351_p1;
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
        v116_0_address0_local = v116_0_addr_15_reg_905_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_13_reg_855_pp0_iter3_reg;
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
        v116_0_address1_local = v116_0_addr_14_reg_895_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_835_pp0_iter3_reg;
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
        v116_1_address0_local = v116_1_addr_15_reg_910_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_13_reg_860_pp0_iter3_reg;
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
        v116_1_address1_local = v116_1_addr_14_reg_900_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_850_pp0_iter3_reg;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_734_pp0_iter3_reg == 1'd1))) begin
        v7_6_out_ap_vld = 1'b1;
    end else begin
        v7_6_out_ap_vld = 1'b0;
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
assign add_ln28_fu_383_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_656_p1 = reg_312;
assign bitcast_ln43_fu_665_p1 = reg_316;
assign bitcast_ln50_fu_661_p1 = v24_reg_995;
assign bitcast_ln57_fu_670_p1 = v30_reg_1000;
assign bitcast_ln64_fu_674_p1 = reg_312;
assign bitcast_ln71_fu_679_p1 = reg_316;
assign bitcast_ln78_fu_684_p1 = v48_reg_1005;
assign bitcast_ln86_fu_688_p1 = v54_reg_1010;
assign grp_fu_711_p_ce = 1'b1;
assign grp_fu_711_p_din0 = grp_fu_280_p0;
assign grp_fu_711_p_din1 = grp_fu_280_p1;
assign grp_fu_711_p_opcode = 2'd0;
assign grp_fu_715_p_ce = 1'b1;
assign grp_fu_715_p_din0 = grp_fu_284_p0;
assign grp_fu_715_p_din1 = grp_fu_284_p1;
assign grp_fu_715_p_opcode = 2'd0;
assign grp_fu_719_p_ce = 1'b1;
assign grp_fu_719_p_din0 = grp_fu_288_p0;
assign grp_fu_719_p_din1 = grp_fu_288_p1;
assign grp_fu_723_p_ce = 1'b1;
assign grp_fu_723_p_din0 = grp_fu_292_p0;
assign grp_fu_723_p_din1 = grp_fu_292_p1;
assign icmp_ln31_fu_394_p2 = ((v5_reg_726 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_6_fu_356_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign or_ln46_8_fu_560_p3 = {{tmp_103_reg_758}, {1'd1}};
assign or_ln60_8_fu_583_p4 = {{{tmp_106_reg_773}, {1'd1}}, {tmp_26_reg_783}};
assign or_ln74_8_fu_597_p3 = {{tmp_106_reg_773}, {2'd3}};
assign tmp_102_fu_366_p5 = {{{{tmp_305}, {3'd6}}, {lshr_ln29_6_fu_356_p4}}, {1'd1}};
assign tmp_103_fu_399_p4 = {{v5_reg_726[5:2]}};
assign tmp_104_fu_408_p5 = {{{{tmp_305}, {3'd6}}, {tmp_103_fu_399_p4}}, {2'd2}};
assign tmp_105_fu_424_p5 = {{{{tmp_305}, {3'd6}}, {tmp_103_fu_399_p4}}, {2'd3}};
assign tmp_107_fu_477_p5 = {{{{tmp_305}, {3'd6}}, {tmp_106_reg_773}}, {3'd4}};
assign tmp_108_fu_492_p7 = {{{{{{tmp_305}, {3'd6}}, {tmp_106_reg_773}}, {1'd1}}, {tmp_26_reg_783}}, {1'd1}};
assign tmp_109_fu_525_p5 = {{{{tmp_305}, {3'd6}}, {tmp_106_reg_773}}, {3'd6}};
assign tmp_110_fu_540_p5 = {{{{tmp_305}, {3'd6}}, {tmp_106_reg_773}}, {3'd7}};
assign tmp_fu_333_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_341_p4 = {{{tmp_305}, {2'd3}}, {ap_sig_allocacmp_v5}};
assign v10_fu_467_p1 = reg_296;
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
assign v15_fu_625_p1 = reg_308;
assign v16_fu_472_p1 = reg_300;
assign v21_fu_630_p1 = v116_0_load_13_reg_885;
assign v22_fu_515_p1 = reg_296;
assign v27_fu_634_p1 = v116_1_load_13_reg_890;
assign v28_fu_520_p1 = reg_300;
assign v33_fu_638_p1 = reg_304;
assign v34_fu_573_p1 = reg_296;
assign v39_fu_643_p1 = reg_308;
assign v40_fu_578_p1 = reg_300;
assign v45_fu_648_p1 = v116_0_load_15_reg_935;
assign v46_fu_610_p1 = reg_296;
assign v51_fu_652_p1 = v116_1_load_15_reg_940;
assign v52_fu_615_p1 = reg_300;
assign v7_6_out = v3_fu_92;
assign v8_fu_459_p3 = ((icmp_ln31_reg_753[0:0] == 1'b1) ? v6_6 : v3_fu_92);
assign v9_fu_620_p1 = reg_304;
assign zext_ln29_fu_555_p1 = lshr_ln29_6_reg_743;
assign zext_ln33_fu_351_p1 = tmp_s_fu_341_p4;
assign zext_ln40_fu_378_p1 = tmp_102_fu_366_p5;
assign zext_ln46_fu_567_p1 = or_ln46_8_fu_560_p3;
assign zext_ln47_fu_419_p1 = tmp_104_fu_408_p5;
assign zext_ln54_fu_435_p1 = tmp_105_fu_424_p5;
assign zext_ln60_fu_591_p1 = or_ln60_8_fu_583_p4;
assign zext_ln61_fu_487_p1 = tmp_107_fu_477_p5;
assign zext_ln68_fu_505_p1 = tmp_108_fu_492_p7;
assign zext_ln74_fu_604_p1 = or_ln74_8_fu_597_p3;
assign zext_ln75_fu_535_p1 = tmp_109_fu_525_p5;
assign zext_ln83_fu_550_p1 = tmp_110_fu_540_p5;
always @ (posedge ap_clk) begin
    v116_0_addr_13_reg_855[0] <= 1'b1;
    v116_0_addr_13_reg_855_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_13_reg_855_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_13_reg_860[0] <= 1'b1;
    v116_1_addr_13_reg_860_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_13_reg_860_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_14_reg_895[1] <= 1'b1;
    v116_0_addr_14_reg_895_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_14_reg_895_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_14_reg_900[1] <= 1'b1;
    v116_1_addr_14_reg_900_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_14_reg_900_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_15_reg_905[1:0] <= 2'b11;
    v116_0_addr_15_reg_905_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_15_reg_905_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_15_reg_905_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_15_reg_910[1:0] <= 2'b11;
    v116_1_addr_15_reg_910_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_15_reg_910_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_15_reg_910_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 