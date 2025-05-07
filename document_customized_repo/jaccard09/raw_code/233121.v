module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_opcode,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
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
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
output  [1:0] grp_fu_128_p_opcode;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
output  [1:0] grp_fu_132_p_opcode;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln27_fu_365_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln26_fu_397_p3;
reg   [6:0] select_ln26_reg_652;
wire   [2:0] lshr_ln1_fu_422_p4;
reg   [2:0] lshr_ln1_reg_663;
reg   [2:0] lshr_ln1_reg_663_pp0_iter1_reg;
reg   [2:0] lshr_ln1_reg_663_pp0_iter2_reg;
reg   [3:0] lshr_ln29_1_reg_708;
reg   [3:0] lshr_ln29_1_reg_708_pp0_iter1_reg;
wire   [31:0] v3_2_fu_480_p3;
reg   [31:0] v3_2_reg_713;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] v113_0_load_reg_721;
reg   [31:0] v113_1_load_reg_726;
reg   [31:0] v113_2_load_reg_731;
reg   [31:0] v113_3_load_reg_736;
reg   [31:0] v113_4_load_reg_741;
reg   [31:0] v113_5_load_reg_746;
reg   [31:0] v113_6_load_reg_751;
reg   [31:0] v113_7_load_reg_756;
wire   [31:0] v10_fu_503_p1;
wire   [31:0] v16_fu_507_p1;
wire   [31:0] v22_fu_511_p1;
wire   [31:0] v28_fu_515_p1;
reg   [3:0] v116_0_addr_reg_781;
reg   [3:0] v116_0_addr_reg_781_pp0_iter3_reg;
reg   [3:0] v116_0_addr_reg_781_pp0_iter4_reg;
reg   [3:0] v116_0_addr_reg_781_pp0_iter5_reg;
reg   [3:0] v116_0_addr_reg_781_pp0_iter6_reg;
reg   [3:0] v116_0_addr_reg_781_pp0_iter7_reg;
wire   [31:0] v34_fu_526_p1;
wire   [31:0] v40_fu_530_p1;
wire   [31:0] v46_fu_534_p1;
wire   [31:0] v52_fu_538_p1;
reg   [3:0] v116_1_addr_reg_806;
reg   [3:0] v116_1_addr_reg_806_pp0_iter3_reg;
reg   [3:0] v116_1_addr_reg_806_pp0_iter4_reg;
reg   [3:0] v116_1_addr_reg_806_pp0_iter5_reg;
reg   [3:0] v116_1_addr_reg_806_pp0_iter6_reg;
reg   [3:0] v116_1_addr_reg_806_pp0_iter7_reg;
reg   [3:0] v116_2_addr_reg_811;
reg   [3:0] v116_2_addr_reg_811_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_811_pp0_iter4_reg;
reg   [3:0] v116_2_addr_reg_811_pp0_iter5_reg;
reg   [3:0] v116_2_addr_reg_811_pp0_iter6_reg;
reg   [3:0] v116_2_addr_reg_811_pp0_iter7_reg;
reg   [3:0] v116_3_addr_reg_816;
reg   [3:0] v116_3_addr_reg_816_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_816_pp0_iter4_reg;
reg   [3:0] v116_3_addr_reg_816_pp0_iter5_reg;
reg   [3:0] v116_3_addr_reg_816_pp0_iter6_reg;
reg   [3:0] v116_3_addr_reg_816_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_821;
reg   [31:0] v116_1_load_reg_826;
reg   [31:0] v116_2_load_reg_831;
reg   [31:0] v116_3_load_reg_836;
reg   [31:0] v11_reg_841;
reg   [31:0] v17_reg_846;
reg   [31:0] v23_reg_851;
reg   [31:0] v29_reg_856;
reg   [3:0] v116_0_addr_1_reg_861;
reg   [3:0] v116_0_addr_1_reg_861_pp0_iter4_reg;
reg   [3:0] v116_0_addr_1_reg_861_pp0_iter5_reg;
reg   [3:0] v116_0_addr_1_reg_861_pp0_iter6_reg;
reg   [3:0] v116_0_addr_1_reg_861_pp0_iter7_reg;
reg   [3:0] v116_1_addr_1_reg_866;
reg   [3:0] v116_1_addr_1_reg_866_pp0_iter4_reg;
reg   [3:0] v116_1_addr_1_reg_866_pp0_iter5_reg;
reg   [3:0] v116_1_addr_1_reg_866_pp0_iter6_reg;
reg   [3:0] v116_1_addr_1_reg_866_pp0_iter7_reg;
reg   [3:0] v116_2_addr_1_reg_871;
reg   [3:0] v116_2_addr_1_reg_871_pp0_iter4_reg;
reg   [3:0] v116_2_addr_1_reg_871_pp0_iter5_reg;
reg   [3:0] v116_2_addr_1_reg_871_pp0_iter6_reg;
reg   [3:0] v116_2_addr_1_reg_871_pp0_iter7_reg;
reg   [3:0] v116_3_addr_1_reg_876;
reg   [3:0] v116_3_addr_1_reg_876_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_876_pp0_iter5_reg;
reg   [3:0] v116_3_addr_1_reg_876_pp0_iter6_reg;
reg   [3:0] v116_3_addr_1_reg_876_pp0_iter7_reg;
wire   [31:0] v9_fu_557_p1;
reg   [31:0] v35_reg_886;
reg   [31:0] v41_reg_891;
reg   [31:0] v47_reg_896;
reg   [31:0] v53_reg_901;
wire   [31:0] v15_fu_561_p1;
wire   [31:0] v21_fu_565_p1;
wire   [31:0] v27_fu_569_p1;
reg   [31:0] v116_0_load_1_reg_921;
reg   [31:0] v116_1_load_1_reg_926;
reg   [31:0] v116_2_load_1_reg_931;
reg   [31:0] v116_3_load_1_reg_936;
wire   [31:0] v33_fu_573_p1;
wire   [31:0] v39_fu_577_p1;
wire   [31:0] v45_fu_581_p1;
wire   [31:0] v51_fu_585_p1;
reg   [31:0] v12_reg_961;
reg   [31:0] v18_reg_966;
reg   [31:0] v24_reg_971;
reg   [31:0] v30_reg_976;
reg   [31:0] v36_reg_981;
reg   [31:0] v42_reg_986;
reg   [31:0] v48_reg_991;
reg   [31:0] v54_reg_996;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln27_fu_417_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_440_p1;
wire   [63:0] zext_ln29_fu_519_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln60_fu_549_p1;
reg   [31:0] v3_fu_82;
reg   [6:0] v49_fu_86;
wire   [6:0] add_ln28_fu_488_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_90;
wire   [6:0] select_ln27_fu_405_p3;
reg   [9:0] indvar_flatten_fu_94;
wire   [9:0] add_ln27_1_fu_371_p2;
reg    v124_ce0_local;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_589_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_593_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_597_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_601_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_605_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_609_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_613_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_617_p1;
reg   [31:0] grp_fu_315_p0;
reg   [31:0] grp_fu_315_p1;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
reg   [31:0] grp_fu_331_p0;
reg   [31:0] grp_fu_335_p0;
reg   [31:0] grp_fu_339_p0;
reg   [31:0] grp_fu_343_p0;
wire   [0:0] tmp_1_fu_389_p3;
wire   [6:0] add_ln27_fu_383_p2;
wire   [5:0] trunc_ln27_fu_413_p1;
wire   [8:0] tmp_fu_432_p3;
wire   [0:0] icmp_ln31_fu_475_p2;
wire   [3:0] or_ln_fu_542_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_82 = 32'd0;
#0 v49_fu_86 = 7'd0;
#0 v4_fu_90 = 7'd0;
#0 indvar_flatten_fu_94 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_94 <= 10'd0;
    end else if (((icmp_ln27_fu_365_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_94 <= add_ln27_1_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_86 <= add_ln28_fu_488_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_90 <= 7'd0;
    end else if (((icmp_ln27_fu_365_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_90 <= select_ln27_fu_405_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        lshr_ln1_reg_663 <= {{select_ln26_fu_397_p3[5:3]}};
        lshr_ln1_reg_663_pp0_iter1_reg <= lshr_ln1_reg_663;
        lshr_ln1_reg_663_pp0_iter2_reg <= lshr_ln1_reg_663_pp0_iter1_reg;
        lshr_ln29_1_reg_708 <= {{select_ln26_fu_397_p3[5:2]}};
        lshr_ln29_1_reg_708_pp0_iter1_reg <= lshr_ln29_1_reg_708;
        select_ln26_reg_652 <= select_ln26_fu_397_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_load_reg_721 <= v113_0_q0;
        v113_1_load_reg_726 <= v113_1_q0;
        v113_2_load_reg_731 <= v113_2_q0;
        v113_3_load_reg_736 <= v113_3_q0;
        v113_4_load_reg_741 <= v113_4_q0;
        v113_5_load_reg_746 <= v113_5_q0;
        v113_6_load_reg_751 <= v113_6_q0;
        v113_7_load_reg_756 <= v113_7_q0;
        v116_0_addr_1_reg_861[3 : 1] <= zext_ln60_fu_549_p1[3 : 1];
        v116_0_addr_1_reg_861_pp0_iter4_reg[3 : 1] <= v116_0_addr_1_reg_861[3 : 1];
        v116_0_addr_1_reg_861_pp0_iter5_reg[3 : 1] <= v116_0_addr_1_reg_861_pp0_iter4_reg[3 : 1];
        v116_0_addr_1_reg_861_pp0_iter6_reg[3 : 1] <= v116_0_addr_1_reg_861_pp0_iter5_reg[3 : 1];
        v116_0_addr_1_reg_861_pp0_iter7_reg[3 : 1] <= v116_0_addr_1_reg_861_pp0_iter6_reg[3 : 1];
        v116_0_addr_reg_781 <= zext_ln29_fu_519_p1;
        v116_0_addr_reg_781_pp0_iter3_reg <= v116_0_addr_reg_781;
        v116_0_addr_reg_781_pp0_iter4_reg <= v116_0_addr_reg_781_pp0_iter3_reg;
        v116_0_addr_reg_781_pp0_iter5_reg <= v116_0_addr_reg_781_pp0_iter4_reg;
        v116_0_addr_reg_781_pp0_iter6_reg <= v116_0_addr_reg_781_pp0_iter5_reg;
        v116_0_addr_reg_781_pp0_iter7_reg <= v116_0_addr_reg_781_pp0_iter6_reg;
        v116_1_addr_1_reg_866[3 : 1] <= zext_ln60_fu_549_p1[3 : 1];
        v116_1_addr_1_reg_866_pp0_iter4_reg[3 : 1] <= v116_1_addr_1_reg_866[3 : 1];
        v116_1_addr_1_reg_866_pp0_iter5_reg[3 : 1] <= v116_1_addr_1_reg_866_pp0_iter4_reg[3 : 1];
        v116_1_addr_1_reg_866_pp0_iter6_reg[3 : 1] <= v116_1_addr_1_reg_866_pp0_iter5_reg[3 : 1];
        v116_1_addr_1_reg_866_pp0_iter7_reg[3 : 1] <= v116_1_addr_1_reg_866_pp0_iter6_reg[3 : 1];
        v116_1_addr_reg_806 <= zext_ln29_fu_519_p1;
        v116_1_addr_reg_806_pp0_iter3_reg <= v116_1_addr_reg_806;
        v116_1_addr_reg_806_pp0_iter4_reg <= v116_1_addr_reg_806_pp0_iter3_reg;
        v116_1_addr_reg_806_pp0_iter5_reg <= v116_1_addr_reg_806_pp0_iter4_reg;
        v116_1_addr_reg_806_pp0_iter6_reg <= v116_1_addr_reg_806_pp0_iter5_reg;
        v116_1_addr_reg_806_pp0_iter7_reg <= v116_1_addr_reg_806_pp0_iter6_reg;
        v116_2_addr_1_reg_871[3 : 1] <= zext_ln60_fu_549_p1[3 : 1];
        v116_2_addr_1_reg_871_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_871[3 : 1];
        v116_2_addr_1_reg_871_pp0_iter5_reg[3 : 1] <= v116_2_addr_1_reg_871_pp0_iter4_reg[3 : 1];
        v116_2_addr_1_reg_871_pp0_iter6_reg[3 : 1] <= v116_2_addr_1_reg_871_pp0_iter5_reg[3 : 1];
        v116_2_addr_1_reg_871_pp0_iter7_reg[3 : 1] <= v116_2_addr_1_reg_871_pp0_iter6_reg[3 : 1];
        v116_2_addr_reg_811 <= zext_ln29_fu_519_p1;
        v116_2_addr_reg_811_pp0_iter3_reg <= v116_2_addr_reg_811;
        v116_2_addr_reg_811_pp0_iter4_reg <= v116_2_addr_reg_811_pp0_iter3_reg;
        v116_2_addr_reg_811_pp0_iter5_reg <= v116_2_addr_reg_811_pp0_iter4_reg;
        v116_2_addr_reg_811_pp0_iter6_reg <= v116_2_addr_reg_811_pp0_iter5_reg;
        v116_2_addr_reg_811_pp0_iter7_reg <= v116_2_addr_reg_811_pp0_iter6_reg;
        v116_3_addr_1_reg_876[3 : 1] <= zext_ln60_fu_549_p1[3 : 1];
        v116_3_addr_1_reg_876_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_876[3 : 1];
        v116_3_addr_1_reg_876_pp0_iter5_reg[3 : 1] <= v116_3_addr_1_reg_876_pp0_iter4_reg[3 : 1];
        v116_3_addr_1_reg_876_pp0_iter6_reg[3 : 1] <= v116_3_addr_1_reg_876_pp0_iter5_reg[3 : 1];
        v116_3_addr_1_reg_876_pp0_iter7_reg[3 : 1] <= v116_3_addr_1_reg_876_pp0_iter6_reg[3 : 1];
        v116_3_addr_reg_816 <= zext_ln29_fu_519_p1;
        v116_3_addr_reg_816_pp0_iter3_reg <= v116_3_addr_reg_816;
        v116_3_addr_reg_816_pp0_iter4_reg <= v116_3_addr_reg_816_pp0_iter3_reg;
        v116_3_addr_reg_816_pp0_iter5_reg <= v116_3_addr_reg_816_pp0_iter4_reg;
        v116_3_addr_reg_816_pp0_iter6_reg <= v116_3_addr_reg_816_pp0_iter5_reg;
        v116_3_addr_reg_816_pp0_iter7_reg <= v116_3_addr_reg_816_pp0_iter6_reg;
        v3_2_reg_713 <= v3_2_fu_480_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_921 <= v116_0_q0;
        v116_1_load_1_reg_926 <= v116_1_q0;
        v116_2_load_1_reg_931 <= v116_2_q0;
        v116_3_load_1_reg_936 <= v116_3_q0;
        v35_reg_886 <= grp_fu_140_p_dout0;
        v41_reg_891 <= grp_fu_144_p_dout0;
        v47_reg_896 <= grp_fu_148_p_dout0;
        v53_reg_901 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_821 <= v116_0_q1;
        v116_1_load_reg_826 <= v116_1_q1;
        v116_2_load_reg_831 <= v116_2_q1;
        v116_3_load_reg_836 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_841 <= grp_fu_140_p_dout0;
        v17_reg_846 <= grp_fu_144_p_dout0;
        v23_reg_851 <= grp_fu_148_p_dout0;
        v29_reg_856 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_reg_961 <= grp_fu_124_p_dout0;
        v18_reg_966 <= grp_fu_128_p_dout0;
        v24_reg_971 <= grp_fu_132_p_dout0;
        v30_reg_976 <= grp_fu_136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_981 <= grp_fu_124_p_dout0;
        v42_reg_986 <= grp_fu_128_p_dout0;
        v48_reg_991 <= grp_fu_132_p_dout0;
        v54_reg_996 <= grp_fu_136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_fu_82 <= v3_2_fu_480_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_fu_365_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p0 = v33_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p0 = v9_fu_557_p1;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p1 = v35_reg_886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p1 = v11_reg_841;
    end else begin
        grp_fu_315_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p0 = v39_fu_577_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p0 = v15_fu_561_p1;
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p1 = v41_reg_891;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p1 = v17_reg_846;
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p0 = v45_fu_581_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p0 = v21_fu_565_p1;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p1 = v47_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p1 = v23_reg_851;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p0 = v51_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p0 = v27_fu_569_p1;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p1 = v53_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p1 = v29_reg_856;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p0 = v34_fu_526_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p0 = v10_fu_503_p1;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_335_p0 = v40_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_335_p0 = v16_fu_507_p1;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_339_p0 = v46_fu_534_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_339_p0 = v22_fu_511_p1;
    end else begin
        grp_fu_339_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_343_p0 = v52_fu_538_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_343_p0 = v28_fu_515_p1;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_1_reg_861_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_549_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = v116_0_addr_reg_781_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_519_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_1_reg_866_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_549_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = v116_1_addr_reg_806_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_519_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_871_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_549_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address1_local = v116_2_addr_reg_811_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_519_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_876_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_549_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address1_local = v116_3_addr_reg_816_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_519_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_371_p2 = (indvar_flatten_fu_94 + 10'd1);
assign add_ln27_fu_383_p2 = (v4_fu_90 + 7'd1);
assign add_ln28_fu_488_p2 = (select_ln26_reg_652 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_589_p1 = v12_reg_961;
assign bitcast_ln43_fu_597_p1 = v18_reg_966;
assign bitcast_ln50_fu_605_p1 = v24_reg_971;
assign bitcast_ln57_fu_613_p1 = v30_reg_976;
assign bitcast_ln64_fu_593_p1 = v36_reg_981;
assign bitcast_ln71_fu_601_p1 = v42_reg_986;
assign bitcast_ln78_fu_609_p1 = v48_reg_991;
assign bitcast_ln86_fu_617_p1 = v54_reg_996;
assign grp_fu_124_p_ce = 1'b1;
assign grp_fu_124_p_din0 = grp_fu_315_p0;
assign grp_fu_124_p_din1 = grp_fu_315_p1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = 1'b1;
assign grp_fu_128_p_din0 = grp_fu_319_p0;
assign grp_fu_128_p_din1 = grp_fu_319_p1;
assign grp_fu_128_p_opcode = 2'd0;
assign grp_fu_132_p_ce = 1'b1;
assign grp_fu_132_p_din0 = grp_fu_323_p0;
assign grp_fu_132_p_din1 = grp_fu_323_p1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = 1'b1;
assign grp_fu_136_p_din0 = grp_fu_327_p0;
assign grp_fu_136_p_din1 = grp_fu_327_p1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = 1'b1;
assign grp_fu_140_p_din0 = grp_fu_331_p0;
assign grp_fu_140_p_din1 = v3_2_reg_713;
assign grp_fu_144_p_ce = 1'b1;
assign grp_fu_144_p_din0 = grp_fu_335_p0;
assign grp_fu_144_p_din1 = v3_2_reg_713;
assign grp_fu_148_p_ce = 1'b1;
assign grp_fu_148_p_din0 = grp_fu_339_p0;
assign grp_fu_148_p_din1 = v3_2_reg_713;
assign grp_fu_152_p_ce = 1'b1;
assign grp_fu_152_p_din0 = grp_fu_343_p0;
assign grp_fu_152_p_din1 = v3_2_reg_713;
assign icmp_ln27_fu_365_p2 = ((indvar_flatten_fu_94 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_475_p2 = ((select_ln26_reg_652 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_422_p4 = {{select_ln26_fu_397_p3[5:3]}};
assign or_ln_fu_542_p3 = {{lshr_ln1_reg_663_pp0_iter2_reg}, {1'd1}};
assign select_ln26_fu_397_p3 = ((tmp_1_fu_389_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_86);
assign select_ln27_fu_405_p3 = ((tmp_1_fu_389_p3[0:0] == 1'b1) ? add_ln27_fu_383_p2 : v4_fu_90);
assign tmp_1_fu_389_p3 = v49_fu_86[32'd6];
assign tmp_fu_432_p3 = {{trunc_ln27_fu_413_p1}, {lshr_ln1_fu_422_p4}};
assign trunc_ln27_fu_413_p1 = select_ln27_fu_405_p3[5:0];
assign v10_fu_503_p1 = v113_0_load_reg_721;
assign v113_0_address0 = zext_ln33_fu_440_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_440_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_440_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_440_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_440_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_440_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_440_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_440_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln64_fu_593_p1;
assign v116_0_d1 = bitcast_ln36_fu_589_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_601_p1;
assign v116_1_d1 = bitcast_ln43_fu_597_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_609_p1;
assign v116_2_d1 = bitcast_ln50_fu_605_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_617_p1;
assign v116_3_d1 = bitcast_ln57_fu_613_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v124_address0 = zext_ln27_fu_417_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_561_p1 = v116_1_load_reg_826;
assign v16_fu_507_p1 = v113_1_load_reg_726;
assign v21_fu_565_p1 = v116_2_load_reg_831;
assign v22_fu_511_p1 = v113_2_load_reg_731;
assign v27_fu_569_p1 = v116_3_load_reg_836;
assign v28_fu_515_p1 = v113_3_load_reg_736;
assign v33_fu_573_p1 = v116_0_load_1_reg_921;
assign v34_fu_526_p1 = v113_4_load_reg_741;
assign v39_fu_577_p1 = v116_1_load_1_reg_926;
assign v3_2_fu_480_p3 = ((icmp_ln31_fu_475_p2[0:0] == 1'b1) ? v124_q0 : v3_fu_82);
assign v40_fu_530_p1 = v113_5_load_reg_746;
assign v45_fu_581_p1 = v116_2_load_1_reg_931;
assign v46_fu_534_p1 = v113_6_load_reg_751;
assign v51_fu_585_p1 = v116_3_load_1_reg_936;
assign v52_fu_538_p1 = v113_7_load_reg_756;
assign v9_fu_557_p1 = v116_0_load_reg_821;
assign zext_ln27_fu_417_p1 = select_ln27_fu_405_p3;
assign zext_ln29_fu_519_p1 = lshr_ln29_1_reg_708_pp0_iter1_reg;
assign zext_ln33_fu_440_p1 = tmp_fu_432_p3;
assign zext_ln60_fu_549_p1 = or_ln_fu_542_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_861[0] <= 1'b1;
    v116_0_addr_1_reg_861_pp0_iter4_reg[0] <= 1'b1;
    v116_0_addr_1_reg_861_pp0_iter5_reg[0] <= 1'b1;
    v116_0_addr_1_reg_861_pp0_iter6_reg[0] <= 1'b1;
    v116_0_addr_1_reg_861_pp0_iter7_reg[0] <= 1'b1;
    v116_1_addr_1_reg_866[0] <= 1'b1;
    v116_1_addr_1_reg_866_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_866_pp0_iter5_reg[0] <= 1'b1;
    v116_1_addr_1_reg_866_pp0_iter6_reg[0] <= 1'b1;
    v116_1_addr_1_reg_866_pp0_iter7_reg[0] <= 1'b1;
    v116_2_addr_1_reg_871[0] <= 1'b1;
    v116_2_addr_1_reg_871_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_871_pp0_iter5_reg[0] <= 1'b1;
    v116_2_addr_1_reg_871_pp0_iter6_reg[0] <= 1'b1;
    v116_2_addr_1_reg_871_pp0_iter7_reg[0] <= 1'b1;
    v116_3_addr_1_reg_876[0] <= 1'b1;
    v116_3_addr_1_reg_876_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_876_pp0_iter5_reg[0] <= 1'b1;
    v116_3_addr_1_reg_876_pp0_iter6_reg[0] <= 1'b1;
    v116_3_addr_1_reg_876_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 