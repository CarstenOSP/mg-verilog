module atax_atax_node0_Pipeline_label_15 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_3_reload,zext_ln33_3,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_3,tmp_72,v7_4_out_i,v7_4_out_o,v7_4_out_o_ap_vld,grp_fu_582_p_din0,grp_fu_582_p_din1,grp_fu_582_p_opcode,grp_fu_582_p_dout0,grp_fu_582_p_ce,grp_fu_586_p_din0,grp_fu_586_p_din1,grp_fu_586_p_opcode,grp_fu_586_p_dout0,grp_fu_586_p_ce,grp_fu_590_p_din0,grp_fu_590_p_din1,grp_fu_590_p_dout0,grp_fu_590_p_ce,grp_fu_594_p_din0,grp_fu_594_p_din1,grp_fu_594_p_dout0,grp_fu_594_p_ce); 
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
input  [31:0] v7_3_reload;
input  [11:0] zext_ln33_3;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [3:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [3:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [3:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [3:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [3:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [3:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [3:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [3:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
input  [31:0] v6_3;
input  [3:0] tmp_72;
input  [31:0] v7_4_out_i;
output  [31:0] v7_4_out_o;
output   v7_4_out_o_ap_vld;
output  [31:0] grp_fu_582_p_din0;
output  [31:0] grp_fu_582_p_din1;
output  [1:0] grp_fu_582_p_opcode;
input  [31:0] grp_fu_582_p_dout0;
output   grp_fu_582_p_ce;
output  [31:0] grp_fu_586_p_din0;
output  [31:0] grp_fu_586_p_din1;
output  [1:0] grp_fu_586_p_opcode;
input  [31:0] grp_fu_586_p_dout0;
output   grp_fu_586_p_ce;
output  [31:0] grp_fu_590_p_din0;
output  [31:0] grp_fu_590_p_din1;
input  [31:0] grp_fu_590_p_dout0;
output   grp_fu_590_p_ce;
output  [31:0] grp_fu_594_p_din0;
output  [31:0] grp_fu_594_p_din1;
input  [31:0] grp_fu_594_p_dout0;
output   grp_fu_594_p_ce;
reg ap_idle;
reg[31:0] v7_4_out_o;
reg v7_4_out_o_ap_vld;
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
reg   [0:0] tmp_reg_708;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_309;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_313;
reg   [31:0] reg_317;
reg   [31:0] reg_321;
reg   [6:0] v5_1_reg_699;
reg   [0:0] tmp_reg_708_pp0_iter1_reg;
reg   [0:0] tmp_reg_708_pp0_iter2_reg;
reg   [0:0] tmp_reg_708_pp0_iter3_reg;
wire   [3:0] lshr_ln29_3_fu_389_p4;
reg   [3:0] lshr_ln29_3_reg_722;
wire   [0:0] icmp_ln31_fu_398_p2;
reg   [0:0] icmp_ln31_reg_727;
wire   [31:0] v8_fu_439_p3;
reg   [31:0] v8_reg_742;
wire   [31:0] v10_fu_447_p1;
wire   [31:0] v16_fu_452_p1;
wire   [2:0] tmp_4_fu_457_p4;
reg   [2:0] tmp_4_reg_758;
wire   [31:0] v22_fu_515_p1;
wire   [31:0] v28_fu_520_p1;
reg   [3:0] v116_0_addr_reg_795;
reg   [3:0] v116_0_addr_reg_795_pp0_iter2_reg;
reg   [3:0] v116_0_addr_reg_795_pp0_iter3_reg;
wire   [31:0] v34_fu_587_p1;
wire   [31:0] v40_fu_592_p1;
reg   [3:0] v116_1_addr_reg_811;
reg   [3:0] v116_1_addr_reg_811_pp0_iter2_reg;
reg   [3:0] v116_1_addr_reg_811_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_817;
reg   [3:0] v116_2_addr_reg_817_pp0_iter2_reg;
reg   [3:0] v116_2_addr_reg_817_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_822;
reg   [3:0] v116_3_addr_reg_822_pp0_iter2_reg;
reg   [3:0] v116_3_addr_reg_822_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_827;
reg   [3:0] v116_0_addr_1_reg_827_pp0_iter2_reg;
reg   [3:0] v116_0_addr_1_reg_827_pp0_iter3_reg;
reg   [3:0] v116_1_addr_1_reg_833;
reg   [3:0] v116_1_addr_1_reg_833_pp0_iter2_reg;
reg   [3:0] v116_1_addr_1_reg_833_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_839;
reg   [3:0] v116_2_addr_1_reg_839_pp0_iter2_reg;
reg   [3:0] v116_2_addr_1_reg_839_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_839_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_844;
reg   [3:0] v116_3_addr_1_reg_844_pp0_iter2_reg;
reg   [3:0] v116_3_addr_1_reg_844_pp0_iter3_reg;
reg   [3:0] v116_3_addr_1_reg_844_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_849;
reg   [31:0] v11_reg_854;
reg   [31:0] v17_reg_859;
wire   [31:0] v46_fu_597_p1;
wire   [31:0] v52_fu_602_p1;
reg   [31:0] v116_1_load_reg_874;
reg   [31:0] v116_2_load_reg_879;
reg   [31:0] v116_3_load_reg_884;
reg   [31:0] v116_0_load_1_reg_889;
reg   [31:0] v116_1_load_1_reg_894;
reg   [31:0] v116_2_load_1_reg_899;
reg   [31:0] v116_3_load_1_reg_904;
wire   [31:0] v9_fu_607_p1;
reg   [31:0] v23_reg_914;
reg   [31:0] v29_reg_919;
wire   [31:0] v15_fu_611_p1;
reg   [31:0] v35_reg_929;
reg   [31:0] v41_reg_934;
wire   [31:0] v21_fu_615_p1;
wire   [31:0] v27_fu_619_p1;
reg   [31:0] v47_reg_949;
reg   [31:0] v53_reg_954;
wire   [31:0] v33_fu_623_p1;
wire   [31:0] v39_fu_627_p1;
wire   [31:0] v45_fu_631_p1;
wire   [31:0] v51_fu_635_p1;
reg   [31:0] v48_reg_979;
reg   [31:0] v54_reg_984;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln33_1_fu_357_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_384_p1;
wire   [63:0] zext_ln47_fu_414_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_fu_430_p1;
wire   [63:0] zext_ln61_fu_477_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_504_p1;
wire   [63:0] zext_ln75_fu_535_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_fu_550_p1;
wire   [63:0] zext_ln29_fu_565_p1;
wire   [63:0] zext_ln60_fu_579_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_555_p2;
reg   [6:0] ap_sig_allocacmp_v5_1;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_639_p1;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln64_fu_659_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_644_p1;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln71_fu_664_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_649_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_669_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_654_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_673_p1;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
reg   [31:0] grp_fu_297_p0;
reg   [31:0] grp_fu_297_p1;
reg   [31:0] grp_fu_301_p0;
reg   [31:0] grp_fu_301_p1;
reg   [31:0] grp_fu_305_p0;
reg   [31:0] grp_fu_305_p1;
wire   [11:0] zext_ln33_fu_347_p1;
wire   [11:0] add_ln33_fu_351_p2;
wire   [4:0] tmp_s_fu_362_p4;
wire   [11:0] tmp_1_fu_372_p5;
wire   [11:0] tmp_2_fu_403_p5;
wire   [11:0] tmp_3_fu_419_p5;
wire   [11:0] tmp_5_fu_466_p5;
wire   [0:0] tmp_6_fu_482_p3;
wire   [11:0] tmp_7_fu_489_p7;
wire   [11:0] tmp_8_fu_525_p5;
wire   [11:0] tmp_9_fu_540_p5;
wire   [3:0] or_ln60_7_fu_572_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_92 <= 7'd0;
    end else if (((tmp_reg_708 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_92 <= add_ln28_fu_555_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_727 <= icmp_ln31_fu_398_p2;
        lshr_ln29_3_reg_722 <= {{v5_1_reg_699[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_309 <= v113_q1;
        reg_313 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_317 <= grp_fu_582_p_dout0;
        reg_321 <= grp_fu_586_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_4_reg_758 <= {{v5_1_reg_699[5:3]}};
        v8_reg_742 <= v8_fu_439_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_708 <= ap_sig_allocacmp_v5_1[32'd6];
        tmp_reg_708_pp0_iter1_reg <= tmp_reg_708;
        tmp_reg_708_pp0_iter2_reg <= tmp_reg_708_pp0_iter1_reg;
        tmp_reg_708_pp0_iter3_reg <= tmp_reg_708_pp0_iter2_reg;
        v116_0_addr_1_reg_827[3 : 1] <= zext_ln60_fu_579_p1[3 : 1];
        v116_0_addr_1_reg_827_pp0_iter2_reg[3 : 1] <= v116_0_addr_1_reg_827[3 : 1];
        v116_0_addr_1_reg_827_pp0_iter3_reg[3 : 1] <= v116_0_addr_1_reg_827_pp0_iter2_reg[3 : 1];
        v116_0_addr_reg_795 <= zext_ln29_fu_565_p1;
        v116_0_addr_reg_795_pp0_iter2_reg <= v116_0_addr_reg_795;
        v116_0_addr_reg_795_pp0_iter3_reg <= v116_0_addr_reg_795_pp0_iter2_reg;
        v116_1_addr_1_reg_833[3 : 1] <= zext_ln60_fu_579_p1[3 : 1];
        v116_1_addr_1_reg_833_pp0_iter2_reg[3 : 1] <= v116_1_addr_1_reg_833[3 : 1];
        v116_1_addr_1_reg_833_pp0_iter3_reg[3 : 1] <= v116_1_addr_1_reg_833_pp0_iter2_reg[3 : 1];
        v116_1_addr_reg_811 <= zext_ln29_fu_565_p1;
        v116_1_addr_reg_811_pp0_iter2_reg <= v116_1_addr_reg_811;
        v116_1_addr_reg_811_pp0_iter3_reg <= v116_1_addr_reg_811_pp0_iter2_reg;
        v116_2_addr_1_reg_839[3 : 1] <= zext_ln60_fu_579_p1[3 : 1];
        v116_2_addr_1_reg_839_pp0_iter2_reg[3 : 1] <= v116_2_addr_1_reg_839[3 : 1];
        v116_2_addr_1_reg_839_pp0_iter3_reg[3 : 1] <= v116_2_addr_1_reg_839_pp0_iter2_reg[3 : 1];
        v116_2_addr_1_reg_839_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_839_pp0_iter3_reg[3 : 1];
        v116_2_addr_reg_817 <= zext_ln29_fu_565_p1;
        v116_2_addr_reg_817_pp0_iter2_reg <= v116_2_addr_reg_817;
        v116_2_addr_reg_817_pp0_iter3_reg <= v116_2_addr_reg_817_pp0_iter2_reg;
        v116_3_addr_1_reg_844[3 : 1] <= zext_ln60_fu_579_p1[3 : 1];
        v116_3_addr_1_reg_844_pp0_iter2_reg[3 : 1] <= v116_3_addr_1_reg_844[3 : 1];
        v116_3_addr_1_reg_844_pp0_iter3_reg[3 : 1] <= v116_3_addr_1_reg_844_pp0_iter2_reg[3 : 1];
        v116_3_addr_1_reg_844_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_844_pp0_iter3_reg[3 : 1];
        v116_3_addr_reg_822 <= zext_ln29_fu_565_p1;
        v116_3_addr_reg_822_pp0_iter2_reg <= v116_3_addr_reg_822;
        v116_3_addr_reg_822_pp0_iter3_reg <= v116_3_addr_reg_822_pp0_iter2_reg;
        v5_1_reg_699 <= ap_sig_allocacmp_v5_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_889 <= v116_0_q0;
        v116_0_load_reg_849 <= v116_0_q1;
        v116_1_load_1_reg_894 <= v116_1_q0;
        v116_1_load_reg_874 <= v116_1_q1;
        v116_2_load_1_reg_899 <= v116_2_q0;
        v116_2_load_reg_879 <= v116_2_q1;
        v116_3_load_1_reg_904 <= v116_3_q0;
        v116_3_load_reg_884 <= v116_3_q1;
        v11_reg_854 <= grp_fu_590_p_dout0;
        v17_reg_859 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v23_reg_914 <= grp_fu_590_p_dout0;
        v29_reg_919 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_929 <= grp_fu_590_p_dout0;
        v41_reg_934 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_949 <= grp_fu_590_p_dout0;
        v53_reg_954 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_979 <= grp_fu_582_p_dout0;
        v54_reg_984 <= grp_fu_586_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_708 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_708_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
        ap_sig_allocacmp_v5_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5_1 = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p0 = v45_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p0 = v33_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p0 = v21_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p0 = v9_fu_607_p1;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p1 = v47_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p1 = v35_reg_929;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p1 = v23_reg_914;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p1 = v11_reg_854;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_297_p0 = v51_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_297_p0 = v39_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_297_p0 = v27_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p0 = v15_fu_611_p1;
    end else begin
        grp_fu_297_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_297_p1 = v53_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_297_p1 = v41_reg_934;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_297_p1 = v29_reg_919;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_297_p1 = v17_reg_859;
    end else begin
        grp_fu_297_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_301_p0 = v46_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_301_p0 = v34_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_301_p0 = v22_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_301_p0 = v10_fu_447_p1;
    end else begin
        grp_fu_301_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_301_p1 = v8_reg_742;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_301_p1 = v8_fu_439_p3;
    end else begin
        grp_fu_301_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_305_p0 = v52_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_305_p0 = v40_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_305_p0 = v28_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_305_p0 = v16_fu_452_p1;
    end else begin
        grp_fu_305_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_305_p1 = v8_reg_742;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_305_p1 = v8_fu_439_p3;
    end else begin
        grp_fu_305_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_550_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_430_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_384_p1;
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
            v113_address1_local = zext_ln61_fu_477_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_414_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_1_fu_357_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_reg_795_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_579_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_1_reg_827_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_565_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_reg_811_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_579_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_1_reg_833_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_565_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_839_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_579_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address1_local = v116_2_addr_reg_817_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_565_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_844_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_579_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address1_local = v116_3_addr_reg_822_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_565_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_4_out_o = v7_3_reload;
    end else if (((tmp_reg_708 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_4_out_o = v8_fu_439_p3;
    end else begin
        v7_4_out_o = v7_4_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_708 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_4_out_o_ap_vld = 1'b1;
    end else begin
        v7_4_out_o_ap_vld = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln28_fu_555_p2 = (v5_1_reg_699 + 7'd8);
assign add_ln33_fu_351_p2 = (zext_ln33_3 + zext_ln33_fu_347_p1);
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
assign bitcast_ln36_fu_639_p1 = reg_317;
assign bitcast_ln43_fu_644_p1 = reg_321;
assign bitcast_ln50_fu_649_p1 = reg_317;
assign bitcast_ln57_fu_654_p1 = reg_321;
assign bitcast_ln64_fu_659_p1 = reg_317;
assign bitcast_ln71_fu_664_p1 = reg_321;
assign bitcast_ln78_fu_669_p1 = v48_reg_979;
assign bitcast_ln86_fu_673_p1 = v54_reg_984;
assign grp_fu_582_p_ce = 1'b1;
assign grp_fu_582_p_din0 = grp_fu_293_p0;
assign grp_fu_582_p_din1 = grp_fu_293_p1;
assign grp_fu_582_p_opcode = 2'd0;
assign grp_fu_586_p_ce = 1'b1;
assign grp_fu_586_p_din0 = grp_fu_297_p0;
assign grp_fu_586_p_din1 = grp_fu_297_p1;
assign grp_fu_586_p_opcode = 2'd0;
assign grp_fu_590_p_ce = 1'b1;
assign grp_fu_590_p_din0 = grp_fu_301_p0;
assign grp_fu_590_p_din1 = grp_fu_301_p1;
assign grp_fu_594_p_ce = 1'b1;
assign grp_fu_594_p_din0 = grp_fu_305_p0;
assign grp_fu_594_p_din1 = grp_fu_305_p1;
assign icmp_ln31_fu_398_p2 = ((v5_1_reg_699 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_3_fu_389_p4 = {{v5_1_reg_699[5:2]}};
assign or_ln60_7_fu_572_p3 = {{tmp_4_reg_758}, {1'd1}};
assign tmp_1_fu_372_p5 = {{{{tmp_72}, {2'd3}}, {tmp_s_fu_362_p4}}, {1'd1}};
assign tmp_2_fu_403_p5 = {{{{tmp_72}, {2'd3}}, {lshr_ln29_3_fu_389_p4}}, {2'd2}};
assign tmp_3_fu_419_p5 = {{{{tmp_72}, {2'd3}}, {lshr_ln29_3_fu_389_p4}}, {2'd3}};
assign tmp_4_fu_457_p4 = {{v5_1_reg_699[5:3]}};
assign tmp_5_fu_466_p5 = {{{{tmp_72}, {2'd3}}, {tmp_4_fu_457_p4}}, {3'd4}};
assign tmp_6_fu_482_p3 = v5_1_reg_699[32'd1];
assign tmp_7_fu_489_p7 = {{{{{{tmp_72}, {2'd3}}, {tmp_4_fu_457_p4}}, {1'd1}}, {tmp_6_fu_482_p3}}, {1'd1}};
assign tmp_8_fu_525_p5 = {{{{tmp_72}, {2'd3}}, {tmp_4_reg_758}}, {3'd6}};
assign tmp_9_fu_540_p5 = {{{{tmp_72}, {2'd3}}, {tmp_4_reg_758}}, {3'd7}};
assign tmp_s_fu_362_p4 = {{ap_sig_allocacmp_v5_1[5:1]}};
assign v10_fu_447_p1 = reg_309;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_fu_639_p1;
assign v116_0_d1 = bitcast_ln64_fu_659_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_fu_644_p1;
assign v116_1_d1 = bitcast_ln71_fu_664_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_669_p1;
assign v116_2_d1 = bitcast_ln50_fu_649_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_673_p1;
assign v116_3_d1 = bitcast_ln57_fu_654_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v15_fu_611_p1 = v116_1_load_reg_874;
assign v16_fu_452_p1 = reg_313;
assign v21_fu_615_p1 = v116_2_load_reg_879;
assign v22_fu_515_p1 = reg_309;
assign v27_fu_619_p1 = v116_3_load_reg_884;
assign v28_fu_520_p1 = reg_313;
assign v33_fu_623_p1 = v116_0_load_1_reg_889;
assign v34_fu_587_p1 = reg_309;
assign v39_fu_627_p1 = v116_1_load_1_reg_894;
assign v40_fu_592_p1 = reg_313;
assign v45_fu_631_p1 = v116_2_load_1_reg_899;
assign v46_fu_597_p1 = reg_309;
assign v51_fu_635_p1 = v116_3_load_1_reg_904;
assign v52_fu_602_p1 = reg_313;
assign v8_fu_439_p3 = ((icmp_ln31_reg_727[0:0] == 1'b1) ? v6_3 : v7_4_out_i);
assign v9_fu_607_p1 = v116_0_load_reg_849;
assign zext_ln29_fu_565_p1 = lshr_ln29_3_reg_722;
assign zext_ln33_1_fu_357_p1 = add_ln33_fu_351_p2;
assign zext_ln33_fu_347_p1 = ap_sig_allocacmp_v5_1;
assign zext_ln40_fu_384_p1 = tmp_1_fu_372_p5;
assign zext_ln47_fu_414_p1 = tmp_2_fu_403_p5;
assign zext_ln54_fu_430_p1 = tmp_3_fu_419_p5;
assign zext_ln60_fu_579_p1 = or_ln60_7_fu_572_p3;
assign zext_ln61_fu_477_p1 = tmp_5_fu_466_p5;
assign zext_ln68_fu_504_p1 = tmp_7_fu_489_p7;
assign zext_ln75_fu_535_p1 = tmp_8_fu_525_p5;
assign zext_ln83_fu_550_p1 = tmp_9_fu_540_p5;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_827[0] <= 1'b1;
    v116_0_addr_1_reg_827_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_827_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_833[0] <= 1'b1;
    v116_1_addr_1_reg_833_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_833_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_839[0] <= 1'b1;
    v116_2_addr_1_reg_839_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_839_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_839_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_844[0] <= 1'b1;
    v116_3_addr_1_reg_844_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_844_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_844_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 