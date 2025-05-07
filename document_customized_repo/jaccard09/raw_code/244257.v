module atax_atax_node0_Pipeline_label_110 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_reload,zext_ln33_1,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v6_1,lshr_ln,v7_1_out_i,v7_1_out_o,v7_1_out_o_ap_vld,grp_fu_285_p_din0,grp_fu_285_p_din1,grp_fu_285_p_opcode,grp_fu_285_p_dout0,grp_fu_285_p_ce,grp_fu_289_p_din0,grp_fu_289_p_din1,grp_fu_289_p_opcode,grp_fu_289_p_dout0,grp_fu_289_p_ce,grp_fu_293_p_din0,grp_fu_293_p_din1,grp_fu_293_p_dout0,grp_fu_293_p_ce,grp_fu_297_p_din0,grp_fu_297_p_din1,grp_fu_297_p_dout0,grp_fu_297_p_ce); 
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
input  [31:0] v7_reload;
input  [11:0] zext_ln33_1;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
output  [2:0] v116_7_address1;
output   v116_7_ce1;
input  [31:0] v116_7_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
output  [2:0] v116_6_address1;
output   v116_6_ce1;
input  [31:0] v116_6_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
input  [31:0] v116_4_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
input  [31:0] v6_1;
input  [4:0] lshr_ln;
input  [31:0] v7_1_out_i;
output  [31:0] v7_1_out_o;
output   v7_1_out_o_ap_vld;
output  [31:0] grp_fu_285_p_din0;
output  [31:0] grp_fu_285_p_din1;
output  [1:0] grp_fu_285_p_opcode;
input  [31:0] grp_fu_285_p_dout0;
output   grp_fu_285_p_ce;
output  [31:0] grp_fu_289_p_din0;
output  [31:0] grp_fu_289_p_din1;
output  [1:0] grp_fu_289_p_opcode;
input  [31:0] grp_fu_289_p_dout0;
output   grp_fu_289_p_ce;
output  [31:0] grp_fu_293_p_din0;
output  [31:0] grp_fu_293_p_din1;
input  [31:0] grp_fu_293_p_dout0;
output   grp_fu_293_p_ce;
output  [31:0] grp_fu_297_p_din0;
output  [31:0] grp_fu_297_p_din1;
input  [31:0] grp_fu_297_p_dout0;
output   grp_fu_297_p_ce;
reg ap_idle;
reg[31:0] v7_1_out_o;
reg v7_1_out_o_ap_vld;
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
reg   [0:0] tmp_reg_717;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_327;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_331;
reg   [31:0] reg_335;
reg   [31:0] reg_339;
reg   [6:0] v5_reg_708;
reg   [0:0] tmp_reg_717_pp0_iter1_reg;
reg   [0:0] tmp_reg_717_pp0_iter2_reg;
wire   [0:0] icmp_ln31_fu_407_p2;
reg   [0:0] icmp_ln31_reg_731;
wire   [2:0] lshr_ln29_1_fu_457_p4;
reg   [2:0] lshr_ln29_1_reg_746;
wire   [31:0] v8_fu_466_p3;
reg   [31:0] v8_reg_753;
wire   [31:0] v10_fu_474_p1;
wire   [31:0] v16_fu_479_p1;
wire   [31:0] v22_fu_533_p1;
wire   [31:0] v28_fu_538_p1;
reg   [2:0] v116_0_addr_reg_799;
reg   [2:0] v116_0_addr_reg_799_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_799_pp0_iter3_reg;
wire   [31:0] v34_fu_594_p1;
wire   [31:0] v40_fu_599_p1;
reg   [2:0] v116_1_addr_reg_814;
reg   [2:0] v116_1_addr_reg_814_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_814_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_819;
reg   [2:0] v116_2_addr_reg_819_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_819_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_824;
reg   [2:0] v116_3_addr_reg_824_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_824_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_829;
reg   [2:0] v116_4_addr_reg_829_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_829_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_834;
reg   [2:0] v116_5_addr_reg_834_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_834_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_839;
reg   [2:0] v116_6_addr_reg_839_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_839_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_845;
reg   [2:0] v116_7_addr_reg_845_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_845_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_851;
reg   [31:0] v11_reg_856;
reg   [31:0] v17_reg_861;
wire   [31:0] v46_fu_604_p1;
wire   [31:0] v52_fu_609_p1;
reg   [31:0] v116_1_load_reg_876;
reg   [31:0] v116_2_load_reg_881;
reg   [31:0] v116_3_load_reg_886;
reg   [31:0] v116_4_load_reg_891;
reg   [31:0] v116_5_load_reg_896;
reg   [31:0] v116_6_load_reg_901;
reg   [31:0] v116_7_load_reg_906;
wire   [31:0] v9_fu_614_p1;
reg   [31:0] v23_reg_916;
reg   [31:0] v29_reg_921;
wire   [31:0] v15_fu_618_p1;
reg   [31:0] v35_reg_931;
reg   [31:0] v41_reg_936;
wire   [31:0] v21_fu_622_p1;
wire   [31:0] v27_fu_626_p1;
reg   [31:0] v47_reg_951;
reg   [31:0] v53_reg_956;
wire   [31:0] v33_fu_630_p1;
wire   [31:0] v39_fu_634_p1;
wire   [31:0] v45_fu_638_p1;
wire   [31:0] v51_fu_642_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln33_2_fu_375_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_402_p1;
wire   [63:0] zext_ln47_fu_432_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_fu_448_p1;
wire   [63:0] zext_ln61_fu_495_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_522_p1;
wire   [63:0] zext_ln75_fu_553_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_fu_568_p1;
wire   [63:0] zext_ln29_fu_583_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_98;
wire   [6:0] add_ln28_fu_573_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_646_p1;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_651_p1;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_656_p1;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_661_p1;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_666_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_671_p1;
reg    v116_6_ce1_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_676_p1;
reg    v116_6_ce0_local;
reg    v116_7_ce1_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_681_p1;
reg    v116_7_ce0_local;
reg   [31:0] grp_fu_311_p0;
reg   [31:0] grp_fu_311_p1;
reg   [31:0] grp_fu_315_p0;
reg   [31:0] grp_fu_315_p1;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
wire   [11:0] zext_ln33_fu_365_p1;
wire   [11:0] add_ln33_fu_369_p2;
wire   [4:0] tmp_s_fu_380_p4;
wire   [11:0] tmp_232_fu_390_p5;
wire   [3:0] tmp_233_fu_412_p4;
wire   [11:0] tmp_234_fu_421_p5;
wire   [11:0] tmp_235_fu_437_p5;
wire   [11:0] tmp_236_fu_484_p5;
wire   [0:0] tmp_63_fu_500_p3;
wire   [11:0] tmp_237_fu_507_p7;
wire   [11:0] tmp_238_fu_543_p5;
wire   [11:0] tmp_239_fu_558_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
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
#0 v49_fu_98 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_98 <= 7'd0;
    end else if (((tmp_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_98 <= add_ln28_fu_573_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_731 <= icmp_ln31_fu_407_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln29_1_reg_746 <= {{v5_reg_708[5:3]}};
        v8_reg_753 <= v8_fu_466_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_327 <= v113_q1;
        reg_331 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_335 <= grp_fu_285_p_dout0;
        reg_339 <= grp_fu_289_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_717 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_717_pp0_iter1_reg <= tmp_reg_717;
        tmp_reg_717_pp0_iter2_reg <= tmp_reg_717_pp0_iter1_reg;
        v116_0_addr_reg_799 <= zext_ln29_fu_583_p1;
        v116_0_addr_reg_799_pp0_iter2_reg <= v116_0_addr_reg_799;
        v116_0_addr_reg_799_pp0_iter3_reg <= v116_0_addr_reg_799_pp0_iter2_reg;
        v116_1_addr_reg_814 <= zext_ln29_fu_583_p1;
        v116_1_addr_reg_814_pp0_iter2_reg <= v116_1_addr_reg_814;
        v116_1_addr_reg_814_pp0_iter3_reg <= v116_1_addr_reg_814_pp0_iter2_reg;
        v116_2_addr_reg_819 <= zext_ln29_fu_583_p1;
        v116_2_addr_reg_819_pp0_iter2_reg <= v116_2_addr_reg_819;
        v116_2_addr_reg_819_pp0_iter3_reg <= v116_2_addr_reg_819_pp0_iter2_reg;
        v116_3_addr_reg_824 <= zext_ln29_fu_583_p1;
        v116_3_addr_reg_824_pp0_iter2_reg <= v116_3_addr_reg_824;
        v116_3_addr_reg_824_pp0_iter3_reg <= v116_3_addr_reg_824_pp0_iter2_reg;
        v116_4_addr_reg_829 <= zext_ln29_fu_583_p1;
        v116_4_addr_reg_829_pp0_iter2_reg <= v116_4_addr_reg_829;
        v116_4_addr_reg_829_pp0_iter3_reg <= v116_4_addr_reg_829_pp0_iter2_reg;
        v116_5_addr_reg_834 <= zext_ln29_fu_583_p1;
        v116_5_addr_reg_834_pp0_iter2_reg <= v116_5_addr_reg_834;
        v116_5_addr_reg_834_pp0_iter3_reg <= v116_5_addr_reg_834_pp0_iter2_reg;
        v116_6_addr_reg_839 <= zext_ln29_fu_583_p1;
        v116_6_addr_reg_839_pp0_iter2_reg <= v116_6_addr_reg_839;
        v116_6_addr_reg_839_pp0_iter3_reg <= v116_6_addr_reg_839_pp0_iter2_reg;
        v116_7_addr_reg_845 <= zext_ln29_fu_583_p1;
        v116_7_addr_reg_845_pp0_iter2_reg <= v116_7_addr_reg_845;
        v116_7_addr_reg_845_pp0_iter3_reg <= v116_7_addr_reg_845_pp0_iter2_reg;
        v5_reg_708 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_851 <= v116_0_q0;
        v116_1_load_reg_876 <= v116_1_q0;
        v116_2_load_reg_881 <= v116_2_q0;
        v116_3_load_reg_886 <= v116_3_q0;
        v116_4_load_reg_891 <= v116_4_q0;
        v116_5_load_reg_896 <= v116_5_q0;
        v116_6_load_reg_901 <= v116_6_q1;
        v116_7_load_reg_906 <= v116_7_q1;
        v11_reg_856 <= grp_fu_293_p_dout0;
        v17_reg_861 <= grp_fu_297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v23_reg_916 <= grp_fu_293_p_dout0;
        v29_reg_921 <= grp_fu_297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_931 <= grp_fu_293_p_dout0;
        v41_reg_936 <= grp_fu_297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_951 <= grp_fu_293_p_dout0;
        v53_reg_956 <= grp_fu_297_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_717 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_reg_717_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_311_p0 = v45_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p0 = v33_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p0 = v21_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p0 = v9_fu_614_p1;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_311_p1 = v47_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p1 = v35_reg_931;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p1 = v23_reg_916;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p1 = v11_reg_856;
    end else begin
        grp_fu_311_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p0 = v51_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p0 = v39_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p0 = v27_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p0 = v15_fu_618_p1;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p1 = v53_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p1 = v41_reg_936;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p1 = v29_reg_921;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p1 = v17_reg_861;
    end else begin
        grp_fu_315_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p0 = v46_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p0 = v34_fu_594_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_319_p0 = v22_fu_533_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_319_p0 = v10_fu_474_p1;
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_319_p1 = v8_reg_753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_319_p1 = v8_fu_466_p3;
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p0 = v52_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p0 = v40_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_323_p0 = v28_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p0 = v16_fu_479_p1;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_323_p1 = v8_reg_753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p1 = v8_fu_466_p3;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_568_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_522_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_448_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_402_p1;
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
            v113_address1_local = zext_ln75_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_495_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_2_fu_375_p1;
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
        v116_0_address0_local = v116_0_addr_reg_799_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_0_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_reg_814_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_1_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address0_local = v116_2_addr_reg_819_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address0_local = v116_3_addr_reg_824_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_4_address0_local = v116_4_addr_reg_829_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_5_address0_local = v116_5_addr_reg_834_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = zext_ln29_fu_583_p1;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_ce1_local = 1'b1;
    end else begin
        v116_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_ce1_local = 1'b1;
    end else begin
        v116_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_1_out_o = v7_reload;
    end else if (((tmp_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_1_out_o = v8_fu_466_p3;
    end else begin
        v7_1_out_o = v7_1_out_i;
    end
end
always @ (*) begin
    if ((((tmp_reg_717 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_1_out_o_ap_vld = 1'b1;
    end else begin
        v7_1_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln28_fu_573_p2 = (v5_reg_708 + 7'd8);
assign add_ln33_fu_369_p2 = (zext_ln33_1 + zext_ln33_fu_365_p1);
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
assign bitcast_ln36_fu_646_p1 = reg_335;
assign bitcast_ln43_fu_651_p1 = reg_339;
assign bitcast_ln50_fu_656_p1 = reg_335;
assign bitcast_ln57_fu_661_p1 = reg_339;
assign bitcast_ln64_fu_666_p1 = reg_335;
assign bitcast_ln71_fu_671_p1 = reg_339;
assign bitcast_ln78_fu_676_p1 = reg_335;
assign bitcast_ln86_fu_681_p1 = reg_339;
assign grp_fu_285_p_ce = 1'b1;
assign grp_fu_285_p_din0 = grp_fu_311_p0;
assign grp_fu_285_p_din1 = grp_fu_311_p1;
assign grp_fu_285_p_opcode = 2'd0;
assign grp_fu_289_p_ce = 1'b1;
assign grp_fu_289_p_din0 = grp_fu_315_p0;
assign grp_fu_289_p_din1 = grp_fu_315_p1;
assign grp_fu_289_p_opcode = 2'd0;
assign grp_fu_293_p_ce = 1'b1;
assign grp_fu_293_p_din0 = grp_fu_319_p0;
assign grp_fu_293_p_din1 = grp_fu_319_p1;
assign grp_fu_297_p_ce = 1'b1;
assign grp_fu_297_p_din0 = grp_fu_323_p0;
assign grp_fu_297_p_din1 = grp_fu_323_p1;
assign icmp_ln31_fu_407_p2 = ((v5_reg_708 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_1_fu_457_p4 = {{v5_reg_708[5:3]}};
assign tmp_232_fu_390_p5 = {{{{lshr_ln}, {1'd1}}, {tmp_s_fu_380_p4}}, {1'd1}};
assign tmp_233_fu_412_p4 = {{v5_reg_708[5:2]}};
assign tmp_234_fu_421_p5 = {{{{lshr_ln}, {1'd1}}, {tmp_233_fu_412_p4}}, {2'd2}};
assign tmp_235_fu_437_p5 = {{{{lshr_ln}, {1'd1}}, {tmp_233_fu_412_p4}}, {2'd3}};
assign tmp_236_fu_484_p5 = {{{{lshr_ln}, {1'd1}}, {lshr_ln29_1_fu_457_p4}}, {3'd4}};
assign tmp_237_fu_507_p7 = {{{{{{lshr_ln}, {1'd1}}, {lshr_ln29_1_fu_457_p4}}, {1'd1}}, {tmp_63_fu_500_p3}}, {1'd1}};
assign tmp_238_fu_543_p5 = {{{{lshr_ln}, {1'd1}}, {lshr_ln29_1_reg_746}}, {3'd6}};
assign tmp_239_fu_558_p5 = {{{{lshr_ln}, {1'd1}}, {lshr_ln29_1_reg_746}}, {3'd7}};
assign tmp_63_fu_500_p3 = v5_reg_708[32'd1];
assign tmp_s_fu_380_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign v10_fu_474_p1 = reg_327;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_d0 = bitcast_ln36_fu_646_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_d0 = bitcast_ln43_fu_651_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_d0 = bitcast_ln50_fu_656_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_d0 = bitcast_ln57_fu_661_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = bitcast_ln64_fu_666_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = bitcast_ln71_fu_671_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_addr_reg_839_pp0_iter3_reg;
assign v116_6_address1 = zext_ln29_fu_583_p1;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_ce1 = v116_6_ce1_local;
assign v116_6_d0 = bitcast_ln78_fu_676_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_addr_reg_845_pp0_iter3_reg;
assign v116_7_address1 = zext_ln29_fu_583_p1;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_ce1 = v116_7_ce1_local;
assign v116_7_d0 = bitcast_ln86_fu_681_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v15_fu_618_p1 = v116_1_load_reg_876;
assign v16_fu_479_p1 = reg_331;
assign v21_fu_622_p1 = v116_2_load_reg_881;
assign v22_fu_533_p1 = reg_327;
assign v27_fu_626_p1 = v116_3_load_reg_886;
assign v28_fu_538_p1 = reg_331;
assign v33_fu_630_p1 = v116_4_load_reg_891;
assign v34_fu_594_p1 = reg_327;
assign v39_fu_634_p1 = v116_5_load_reg_896;
assign v40_fu_599_p1 = reg_331;
assign v45_fu_638_p1 = v116_6_load_reg_901;
assign v46_fu_604_p1 = reg_327;
assign v51_fu_642_p1 = v116_7_load_reg_906;
assign v52_fu_609_p1 = reg_331;
assign v8_fu_466_p3 = ((icmp_ln31_reg_731[0:0] == 1'b1) ? v6_1 : v7_1_out_i);
assign v9_fu_614_p1 = v116_0_load_reg_851;
assign zext_ln29_fu_583_p1 = lshr_ln29_1_reg_746;
assign zext_ln33_2_fu_375_p1 = add_ln33_fu_369_p2;
assign zext_ln33_fu_365_p1 = ap_sig_allocacmp_v5;
assign zext_ln40_fu_402_p1 = tmp_232_fu_390_p5;
assign zext_ln47_fu_432_p1 = tmp_234_fu_421_p5;
assign zext_ln54_fu_448_p1 = tmp_235_fu_437_p5;
assign zext_ln61_fu_495_p1 = tmp_236_fu_484_p5;
assign zext_ln68_fu_522_p1 = tmp_237_fu_507_p7;
assign zext_ln75_fu_553_p1 = tmp_238_fu_543_p5;
assign zext_ln83_fu_568_p1 = tmp_239_fu_558_p5;
endmodule 