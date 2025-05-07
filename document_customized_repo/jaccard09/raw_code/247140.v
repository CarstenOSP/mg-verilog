module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,grp_fu_100_p_din0,grp_fu_100_p_din1,grp_fu_100_p_opcode,grp_fu_100_p_dout0,grp_fu_100_p_ce,grp_fu_104_p_din0,grp_fu_104_p_din1,grp_fu_104_p_opcode,grp_fu_104_p_dout0,grp_fu_104_p_ce,grp_fu_108_p_din0,grp_fu_108_p_din1,grp_fu_108_p_dout0,grp_fu_108_p_ce,grp_fu_112_p_din0,grp_fu_112_p_din1,grp_fu_112_p_dout0,grp_fu_112_p_ce); 
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
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
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
output  [31:0] grp_fu_100_p_din0;
output  [31:0] grp_fu_100_p_din1;
output  [1:0] grp_fu_100_p_opcode;
input  [31:0] grp_fu_100_p_dout0;
output   grp_fu_100_p_ce;
output  [31:0] grp_fu_104_p_din0;
output  [31:0] grp_fu_104_p_din1;
output  [1:0] grp_fu_104_p_opcode;
input  [31:0] grp_fu_104_p_dout0;
output   grp_fu_104_p_ce;
output  [31:0] grp_fu_108_p_din0;
output  [31:0] grp_fu_108_p_din1;
input  [31:0] grp_fu_108_p_dout0;
output   grp_fu_108_p_ce;
output  [31:0] grp_fu_112_p_din0;
output  [31:0] grp_fu_112_p_din1;
input  [31:0] grp_fu_112_p_dout0;
output   grp_fu_112_p_ce;
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
reg   [0:0] icmp_ln27_reg_763;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_306;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_310;
reg   [31:0] reg_314;
reg   [31:0] reg_318;
wire   [0:0] icmp_ln27_fu_340_p2;
reg   [0:0] icmp_ln27_reg_763_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_763_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_763_pp0_iter3_reg;
reg   [6:0] v4_load_reg_767;
wire   [6:0] add_ln27_fu_355_p2;
reg   [6:0] add_ln27_reg_772;
wire   [6:0] select_ln26_fu_377_p3;
reg   [6:0] select_ln26_reg_777;
wire   [5:0] trunc_ln27_fu_391_p1;
reg   [5:0] trunc_ln27_reg_783;
reg   [3:0] lshr_ln1_reg_803;
wire   [0:0] trunc_ln46_fu_458_p1;
reg   [0:0] trunc_ln46_reg_815;
reg   [2:0] tmp_7_reg_821;
wire   [1:0] trunc_ln60_fu_472_p1;
reg   [1:0] trunc_ln60_reg_830;
reg   [0:0] tmp_9_reg_835;
wire   [31:0] v3_2_fu_497_p3;
reg   [31:0] v3_2_reg_840;
wire   [31:0] v10_fu_537_p1;
wire   [31:0] v16_fu_542_p1;
reg   [3:0] v116_0_addr_reg_876;
reg   [3:0] v116_0_addr_reg_876_pp0_iter2_reg;
reg   [3:0] v116_0_addr_reg_876_pp0_iter3_reg;
wire   [31:0] v22_fu_584_p1;
wire   [31:0] v28_fu_589_p1;
reg   [3:0] v116_1_addr_reg_901;
reg   [3:0] v116_1_addr_reg_901_pp0_iter2_reg;
reg   [3:0] v116_1_addr_reg_901_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_906;
reg   [3:0] v116_2_addr_reg_906_pp0_iter2_reg;
reg   [3:0] v116_2_addr_reg_906_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_911;
reg   [3:0] v116_3_addr_reg_911_pp0_iter2_reg;
reg   [3:0] v116_3_addr_reg_911_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_916;
reg   [3:0] v116_0_addr_1_reg_916_pp0_iter2_reg;
reg   [3:0] v116_0_addr_1_reg_916_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_916_pp0_iter4_reg;
reg   [3:0] v116_1_addr_1_reg_921;
reg   [3:0] v116_1_addr_1_reg_921_pp0_iter2_reg;
reg   [3:0] v116_1_addr_1_reg_921_pp0_iter3_reg;
reg   [3:0] v116_1_addr_1_reg_921_pp0_iter4_reg;
reg   [3:0] v116_2_addr_1_reg_926;
reg   [3:0] v116_2_addr_1_reg_926_pp0_iter2_reg;
reg   [3:0] v116_2_addr_1_reg_926_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_926_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_931;
reg   [3:0] v116_3_addr_1_reg_931_pp0_iter2_reg;
reg   [3:0] v116_3_addr_1_reg_931_pp0_iter3_reg;
reg   [3:0] v116_3_addr_1_reg_931_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_936;
wire   [31:0] v34_fu_646_p1;
wire   [31:0] v40_fu_651_p1;
reg   [31:0] v116_1_load_reg_951;
reg   [31:0] v116_2_load_reg_956;
reg   [31:0] v116_3_load_reg_961;
reg   [31:0] v116_0_load_1_reg_966;
reg   [31:0] v116_1_load_1_reg_971;
reg   [31:0] v11_reg_976;
reg   [31:0] v17_reg_981;
wire   [31:0] v46_fu_656_p1;
wire   [31:0] v52_fu_661_p1;
wire   [31:0] v9_fu_666_p1;
reg   [31:0] v23_reg_1001;
reg   [31:0] v29_reg_1006;
wire   [31:0] v15_fu_670_p1;
reg   [31:0] v35_reg_1016;
reg   [31:0] v41_reg_1021;
wire   [31:0] v21_fu_674_p1;
wire   [31:0] v27_fu_678_p1;
reg   [31:0] v47_reg_1036;
reg   [31:0] v53_reg_1041;
wire   [31:0] v33_fu_682_p1;
wire   [31:0] v39_fu_686_p1;
reg   [31:0] v116_2_load_1_reg_1056;
reg   [31:0] v116_3_load_1_reg_1061;
wire   [31:0] v45_fu_690_p1;
wire   [31:0] v51_fu_694_p1;
reg   [31:0] v48_reg_1076;
reg   [31:0] v54_reg_1081;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln27_fu_395_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_1_fu_418_p1;
wire   [63:0] zext_ln40_fu_453_p1;
wire   [63:0] zext_ln47_fu_514_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_527_p1;
wire   [63:0] zext_ln61_fu_556_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_572_p1;
wire   [63:0] zext_ln29_fu_577_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_618_p1;
wire   [63:0] zext_ln83_fu_631_p1;
wire   [63:0] zext_ln60_fu_601_p1;
reg   [31:0] v3_fu_90;
reg   [6:0] v49_fu_94;
wire   [6:0] add_ln28_fu_636_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_98;
wire   [6:0] select_ln27_fu_385_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_102;
wire   [9:0] add_ln27_1_fu_346_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_698_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_718_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_703_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_723_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_708_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_728_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_713_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_732_p1;
reg   [31:0] grp_fu_290_p0;
reg   [31:0] grp_fu_290_p1;
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_302_p0;
wire   [0:0] tmp_4_fu_369_p3;
wire   [11:0] tmp_fu_400_p3;
wire   [11:0] zext_ln33_fu_408_p1;
wire   [11:0] add_ln33_fu_412_p2;
wire   [4:0] tmp_s_fu_433_p4;
wire   [11:0] tmp_3_fu_443_p4;
wire   [0:0] icmp_ln31_fu_492_p2;
wire   [11:0] tmp_5_fu_505_p5;
wire   [11:0] tmp_6_fu_519_p4;
wire   [11:0] tmp_8_fu_547_p5;
wire   [11:0] tmp_10_fu_561_p6;
wire   [3:0] or_ln60_1_fu_594_p3;
wire   [11:0] tmp_11_fu_609_p5;
wire   [11:0] tmp_12_fu_623_p4;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_90 = 32'd0;
#0 v49_fu_94 = 7'd0;
#0 v4_fu_98 = 7'd0;
#0 indvar_flatten_fu_102 = 10'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_340_p2 == 1'd0))) begin
            indvar_flatten_fu_102 <= add_ln27_1_fu_346_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_94 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_94 <= add_ln28_fu_636_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_98 <= 7'd0;
    end else if (((icmp_ln27_reg_763 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_98 <= select_ln27_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_reg_772 <= add_ln27_fu_355_p2;
        icmp_ln27_reg_763 <= icmp_ln27_fu_340_p2;
        icmp_ln27_reg_763_pp0_iter1_reg <= icmp_ln27_reg_763;
        icmp_ln27_reg_763_pp0_iter2_reg <= icmp_ln27_reg_763_pp0_iter1_reg;
        icmp_ln27_reg_763_pp0_iter3_reg <= icmp_ln27_reg_763_pp0_iter2_reg;
        v116_0_addr_1_reg_916[3 : 1] <= zext_ln60_fu_601_p1[3 : 1];
        v116_0_addr_1_reg_916_pp0_iter2_reg[3 : 1] <= v116_0_addr_1_reg_916[3 : 1];
        v116_0_addr_1_reg_916_pp0_iter3_reg[3 : 1] <= v116_0_addr_1_reg_916_pp0_iter2_reg[3 : 1];
        v116_0_addr_1_reg_916_pp0_iter4_reg[3 : 1] <= v116_0_addr_1_reg_916_pp0_iter3_reg[3 : 1];
        v116_0_addr_reg_876 <= zext_ln29_fu_577_p1;
        v116_0_addr_reg_876_pp0_iter2_reg <= v116_0_addr_reg_876;
        v116_0_addr_reg_876_pp0_iter3_reg <= v116_0_addr_reg_876_pp0_iter2_reg;
        v116_1_addr_1_reg_921[3 : 1] <= zext_ln60_fu_601_p1[3 : 1];
        v116_1_addr_1_reg_921_pp0_iter2_reg[3 : 1] <= v116_1_addr_1_reg_921[3 : 1];
        v116_1_addr_1_reg_921_pp0_iter3_reg[3 : 1] <= v116_1_addr_1_reg_921_pp0_iter2_reg[3 : 1];
        v116_1_addr_1_reg_921_pp0_iter4_reg[3 : 1] <= v116_1_addr_1_reg_921_pp0_iter3_reg[3 : 1];
        v116_1_addr_reg_901 <= zext_ln29_fu_577_p1;
        v116_1_addr_reg_901_pp0_iter2_reg <= v116_1_addr_reg_901;
        v116_1_addr_reg_901_pp0_iter3_reg <= v116_1_addr_reg_901_pp0_iter2_reg;
        v116_2_addr_1_reg_926[3 : 1] <= zext_ln60_fu_601_p1[3 : 1];
        v116_2_addr_1_reg_926_pp0_iter2_reg[3 : 1] <= v116_2_addr_1_reg_926[3 : 1];
        v116_2_addr_1_reg_926_pp0_iter3_reg[3 : 1] <= v116_2_addr_1_reg_926_pp0_iter2_reg[3 : 1];
        v116_2_addr_1_reg_926_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_926_pp0_iter3_reg[3 : 1];
        v116_2_addr_reg_906 <= zext_ln29_fu_577_p1;
        v116_2_addr_reg_906_pp0_iter2_reg <= v116_2_addr_reg_906;
        v116_2_addr_reg_906_pp0_iter3_reg <= v116_2_addr_reg_906_pp0_iter2_reg;
        v116_3_addr_1_reg_931[3 : 1] <= zext_ln60_fu_601_p1[3 : 1];
        v116_3_addr_1_reg_931_pp0_iter2_reg[3 : 1] <= v116_3_addr_1_reg_931[3 : 1];
        v116_3_addr_1_reg_931_pp0_iter3_reg[3 : 1] <= v116_3_addr_1_reg_931_pp0_iter2_reg[3 : 1];
        v116_3_addr_1_reg_931_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_931_pp0_iter3_reg[3 : 1];
        v116_3_addr_reg_911 <= zext_ln29_fu_577_p1;
        v116_3_addr_reg_911_pp0_iter2_reg <= v116_3_addr_reg_911;
        v116_3_addr_reg_911_pp0_iter3_reg <= v116_3_addr_reg_911_pp0_iter2_reg;
        v4_load_reg_767 <= ap_sig_allocacmp_v4_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln1_reg_803 <= {{select_ln26_fu_377_p3[5:2]}};
        select_ln26_reg_777 <= select_ln26_fu_377_p3;
        tmp_7_reg_821 <= {{select_ln26_fu_377_p3[5:3]}};
        tmp_9_reg_835 <= select_ln26_fu_377_p3[32'd1];
        trunc_ln27_reg_783 <= trunc_ln27_fu_391_p1;
        trunc_ln46_reg_815 <= trunc_ln46_fu_458_p1;
        trunc_ln60_reg_830 <= trunc_ln60_fu_472_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_306 <= v113_q1;
        reg_310 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_314 <= grp_fu_100_p_dout0;
        reg_318 <= grp_fu_104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_966 <= v116_0_q0;
        v116_0_load_reg_936 <= v116_0_q1;
        v116_1_load_1_reg_971 <= v116_1_q0;
        v116_1_load_reg_951 <= v116_1_q1;
        v116_2_load_reg_956 <= v116_2_q1;
        v116_3_load_reg_961 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_load_1_reg_1056 <= v116_2_q0;
        v116_3_load_1_reg_1061 <= v116_3_q0;
        v47_reg_1036 <= grp_fu_108_p_dout0;
        v53_reg_1041 <= grp_fu_112_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_reg_976 <= grp_fu_108_p_dout0;
        v17_reg_981 <= grp_fu_112_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1001 <= grp_fu_108_p_dout0;
        v29_reg_1006 <= grp_fu_112_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1016 <= grp_fu_108_p_dout0;
        v41_reg_1021 <= grp_fu_112_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_reg_840 <= v3_2_fu_497_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_763 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_90 <= v3_2_fu_497_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1076 <= grp_fu_100_p_dout0;
        v54_reg_1081 <= grp_fu_104_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_763 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln27_reg_763_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_290_p0 = v45_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p0 = v33_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p0 = v21_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_290_p0 = v9_fu_666_p1;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_290_p1 = v47_reg_1036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p1 = v35_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p1 = v23_reg_1001;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_290_p1 = v11_reg_976;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p0 = v51_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p0 = v39_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p0 = v27_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p0 = v15_fu_670_p1;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p1 = v53_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p1 = v41_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p1 = v29_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p1 = v17_reg_981;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = v46_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = v34_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = v22_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p0 = v10_fu_537_p1;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = v52_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = v40_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = v28_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p0 = v16_fu_542_p1;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_453_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_556_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_418_p1;
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_1_reg_916_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_601_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_876_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_577_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_1_reg_921_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_601_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_901_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_577_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_926_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = v116_2_addr_1_reg_926;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address1_local = v116_2_addr_reg_906_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_577_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_931_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = v116_3_addr_1_reg_931;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address1_local = v116_3_addr_reg_911_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_577_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
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
assign add_ln27_1_fu_346_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_355_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_636_p2 = (select_ln26_reg_777 + 7'd8);
assign add_ln33_fu_412_p2 = (tmp_fu_400_p3 + zext_ln33_fu_408_p1);
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
assign bitcast_ln36_fu_698_p1 = reg_314;
assign bitcast_ln43_fu_703_p1 = reg_318;
assign bitcast_ln50_fu_708_p1 = reg_314;
assign bitcast_ln57_fu_713_p1 = reg_318;
assign bitcast_ln64_fu_718_p1 = reg_314;
assign bitcast_ln71_fu_723_p1 = reg_318;
assign bitcast_ln78_fu_728_p1 = v48_reg_1076;
assign bitcast_ln86_fu_732_p1 = v54_reg_1081;
assign grp_fu_100_p_ce = 1'b1;
assign grp_fu_100_p_din0 = grp_fu_290_p0;
assign grp_fu_100_p_din1 = grp_fu_290_p1;
assign grp_fu_100_p_opcode = 2'd0;
assign grp_fu_104_p_ce = 1'b1;
assign grp_fu_104_p_din0 = grp_fu_294_p0;
assign grp_fu_104_p_din1 = grp_fu_294_p1;
assign grp_fu_104_p_opcode = 2'd0;
assign grp_fu_108_p_ce = 1'b1;
assign grp_fu_108_p_din0 = grp_fu_298_p0;
assign grp_fu_108_p_din1 = v3_2_reg_840;
assign grp_fu_112_p_ce = 1'b1;
assign grp_fu_112_p_din0 = grp_fu_302_p0;
assign grp_fu_112_p_din1 = v3_2_reg_840;
assign icmp_ln27_fu_340_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_492_p2 = ((select_ln26_reg_777 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln60_1_fu_594_p3 = {{tmp_7_reg_821}, {1'd1}};
assign select_ln26_fu_377_p3 = ((tmp_4_fu_369_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_94);
assign select_ln27_fu_385_p3 = ((tmp_4_fu_369_p3[0:0] == 1'b1) ? add_ln27_reg_772 : v4_load_reg_767);
assign tmp_10_fu_561_p6 = {{{{{trunc_ln27_reg_783}, {tmp_7_reg_821}}, {1'd1}}, {tmp_9_reg_835}}, {1'd1}};
assign tmp_11_fu_609_p5 = {{{{trunc_ln27_reg_783}, {tmp_7_reg_821}}, {2'd3}}, {trunc_ln46_reg_815}};
assign tmp_12_fu_623_p4 = {{{trunc_ln27_reg_783}, {tmp_7_reg_821}}, {3'd7}};
assign tmp_3_fu_443_p4 = {{{trunc_ln27_fu_391_p1}, {tmp_s_fu_433_p4}}, {1'd1}};
assign tmp_4_fu_369_p3 = v49_fu_94[32'd6];
assign tmp_5_fu_505_p5 = {{{{trunc_ln27_reg_783}, {lshr_ln1_reg_803}}, {1'd1}}, {trunc_ln46_reg_815}};
assign tmp_6_fu_519_p4 = {{{trunc_ln27_reg_783}, {lshr_ln1_reg_803}}, {2'd3}};
assign tmp_8_fu_547_p5 = {{{{trunc_ln27_reg_783}, {tmp_7_reg_821}}, {1'd1}}, {trunc_ln60_reg_830}};
assign tmp_fu_400_p3 = {{trunc_ln27_fu_391_p1}, {6'd0}};
assign tmp_s_fu_433_p4 = {{select_ln26_fu_377_p3[5:1]}};
assign trunc_ln27_fu_391_p1 = select_ln27_fu_385_p3[5:0];
assign trunc_ln46_fu_458_p1 = select_ln26_fu_377_p3[0:0];
assign trunc_ln60_fu_472_p1 = select_ln26_fu_377_p3[1:0];
assign v10_fu_537_p1 = reg_306;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln64_fu_718_p1;
assign v116_0_d1 = bitcast_ln36_fu_698_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_723_p1;
assign v116_1_d1 = bitcast_ln43_fu_703_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_728_p1;
assign v116_2_d1 = bitcast_ln50_fu_708_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_732_p1;
assign v116_3_d1 = bitcast_ln57_fu_713_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v124_address0 = zext_ln27_fu_395_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_670_p1 = v116_1_load_reg_951;
assign v16_fu_542_p1 = reg_310;
assign v21_fu_674_p1 = v116_2_load_reg_956;
assign v22_fu_584_p1 = reg_306;
assign v27_fu_678_p1 = v116_3_load_reg_961;
assign v28_fu_589_p1 = reg_310;
assign v33_fu_682_p1 = v116_0_load_1_reg_966;
assign v34_fu_646_p1 = reg_306;
assign v39_fu_686_p1 = v116_1_load_1_reg_971;
assign v3_2_fu_497_p3 = ((icmp_ln31_fu_492_p2[0:0] == 1'b1) ? v124_q0 : v3_fu_90);
assign v40_fu_651_p1 = reg_310;
assign v45_fu_690_p1 = v116_2_load_1_reg_1056;
assign v46_fu_656_p1 = reg_306;
assign v51_fu_694_p1 = v116_3_load_1_reg_1061;
assign v52_fu_661_p1 = reg_310;
assign v9_fu_666_p1 = v116_0_load_reg_936;
assign zext_ln27_fu_395_p1 = select_ln27_fu_385_p3;
assign zext_ln29_fu_577_p1 = lshr_ln1_reg_803;
assign zext_ln33_1_fu_418_p1 = add_ln33_fu_412_p2;
assign zext_ln33_fu_408_p1 = select_ln26_fu_377_p3;
assign zext_ln40_fu_453_p1 = tmp_3_fu_443_p4;
assign zext_ln47_fu_514_p1 = tmp_5_fu_505_p5;
assign zext_ln54_fu_527_p1 = tmp_6_fu_519_p4;
assign zext_ln60_fu_601_p1 = or_ln60_1_fu_594_p3;
assign zext_ln61_fu_556_p1 = tmp_8_fu_547_p5;
assign zext_ln68_fu_572_p1 = tmp_10_fu_561_p6;
assign zext_ln75_fu_618_p1 = tmp_11_fu_609_p5;
assign zext_ln83_fu_631_p1 = tmp_12_fu_623_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_916[0] <= 1'b1;
    v116_0_addr_1_reg_916_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_916_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_1_reg_916_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_921[0] <= 1'b1;
    v116_1_addr_1_reg_921_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_921_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_921_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_926[0] <= 1'b1;
    v116_2_addr_1_reg_926_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_926_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_926_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_931[0] <= 1'b1;
    v116_3_addr_1_reg_931_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_931_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_931_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 