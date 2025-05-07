module atax_atax_node0_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_2_reload,tmp_259,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_3,v7_3_out_i,v7_3_out_o,v7_3_out_o_ap_vld,grp_fu_398_p_din0,grp_fu_398_p_din1,grp_fu_398_p_opcode,grp_fu_398_p_dout0,grp_fu_398_p_ce,grp_fu_402_p_din0,grp_fu_402_p_din1,grp_fu_402_p_opcode,grp_fu_402_p_dout0,grp_fu_402_p_ce,grp_fu_406_p_din0,grp_fu_406_p_din1,grp_fu_406_p_opcode,grp_fu_406_p_dout0,grp_fu_406_p_ce,grp_fu_410_p_din0,grp_fu_410_p_din1,grp_fu_410_p_opcode,grp_fu_410_p_dout0,grp_fu_410_p_ce,grp_fu_414_p_din0,grp_fu_414_p_din1,grp_fu_414_p_dout0,grp_fu_414_p_ce,grp_fu_418_p_din0,grp_fu_418_p_din1,grp_fu_418_p_dout0,grp_fu_418_p_ce,grp_fu_422_p_din0,grp_fu_422_p_din1,grp_fu_422_p_dout0,grp_fu_422_p_ce,grp_fu_426_p_din0,grp_fu_426_p_din1,grp_fu_426_p_dout0,grp_fu_426_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v7_2_reload;
input  [3:0] tmp_259;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
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
input  [31:0] v7_3_out_i;
output  [31:0] v7_3_out_o;
output   v7_3_out_o_ap_vld;
output  [31:0] grp_fu_398_p_din0;
output  [31:0] grp_fu_398_p_din1;
output  [1:0] grp_fu_398_p_opcode;
input  [31:0] grp_fu_398_p_dout0;
output   grp_fu_398_p_ce;
output  [31:0] grp_fu_402_p_din0;
output  [31:0] grp_fu_402_p_din1;
output  [1:0] grp_fu_402_p_opcode;
input  [31:0] grp_fu_402_p_dout0;
output   grp_fu_402_p_ce;
output  [31:0] grp_fu_406_p_din0;
output  [31:0] grp_fu_406_p_din1;
output  [1:0] grp_fu_406_p_opcode;
input  [31:0] grp_fu_406_p_dout0;
output   grp_fu_406_p_ce;
output  [31:0] grp_fu_410_p_din0;
output  [31:0] grp_fu_410_p_din1;
output  [1:0] grp_fu_410_p_opcode;
input  [31:0] grp_fu_410_p_dout0;
output   grp_fu_410_p_ce;
output  [31:0] grp_fu_414_p_din0;
output  [31:0] grp_fu_414_p_din1;
input  [31:0] grp_fu_414_p_dout0;
output   grp_fu_414_p_ce;
output  [31:0] grp_fu_418_p_din0;
output  [31:0] grp_fu_418_p_din1;
input  [31:0] grp_fu_418_p_dout0;
output   grp_fu_418_p_ce;
output  [31:0] grp_fu_422_p_din0;
output  [31:0] grp_fu_422_p_din1;
input  [31:0] grp_fu_422_p_dout0;
output   grp_fu_422_p_ce;
output  [31:0] grp_fu_426_p_din0;
output  [31:0] grp_fu_426_p_din1;
input  [31:0] grp_fu_426_p_dout0;
output   grp_fu_426_p_ce;
reg ap_idle;
reg[31:0] v7_3_out_o;
reg v7_3_out_o_ap_vld;
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
reg   [0:0] tmp_reg_642;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_318;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_322;
reg   [31:0] reg_326;
reg   [31:0] reg_330;
wire   [0:0] tmp_fu_348_p3;
wire   [3:0] lshr_ln29_7_fu_382_p4;
reg   [3:0] lshr_ln29_7_reg_656;
reg   [3:0] lshr_ln29_7_reg_656_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_392_p2;
reg   [0:0] icmp_ln31_reg_661;
reg   [2:0] tmp_62_reg_676;
reg   [2:0] tmp_62_reg_676_pp0_iter1_reg;
reg   [0:0] tmp_22_reg_683;
wire   [31:0] v8_fu_482_p3;
reg   [31:0] v8_reg_708;
wire   [31:0] v10_fu_492_p1;
wire   [31:0] v16_fu_497_p1;
wire   [31:0] v22_fu_502_p1;
wire   [31:0] v28_fu_507_p1;
wire   [31:0] v34_fu_518_p1;
wire   [31:0] v40_fu_523_p1;
wire   [31:0] v46_fu_528_p1;
wire   [31:0] v52_fu_533_p1;
reg   [3:0] v116_0_addr_reg_756;
reg   [3:0] v116_0_addr_reg_756_pp0_iter3_reg;
reg   [3:0] v116_0_addr_reg_756_pp0_iter4_reg;
reg   [3:0] v116_0_addr_reg_756_pp0_iter5_reg;
reg   [3:0] v116_0_addr_reg_756_pp0_iter6_reg;
reg   [3:0] v116_1_addr_reg_761;
reg   [3:0] v116_1_addr_reg_761_pp0_iter3_reg;
reg   [3:0] v116_1_addr_reg_761_pp0_iter4_reg;
reg   [3:0] v116_1_addr_reg_761_pp0_iter5_reg;
reg   [3:0] v116_1_addr_reg_761_pp0_iter6_reg;
reg   [3:0] v116_2_addr_reg_766;
reg   [3:0] v116_2_addr_reg_766_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_766_pp0_iter4_reg;
reg   [3:0] v116_2_addr_reg_766_pp0_iter5_reg;
reg   [3:0] v116_2_addr_reg_766_pp0_iter6_reg;
reg   [3:0] v116_3_addr_reg_771;
reg   [3:0] v116_3_addr_reg_771_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_771_pp0_iter4_reg;
reg   [3:0] v116_3_addr_reg_771_pp0_iter5_reg;
reg   [3:0] v116_3_addr_reg_771_pp0_iter6_reg;
reg   [3:0] v116_0_addr_1_reg_776;
reg   [3:0] v116_0_addr_1_reg_776_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_776_pp0_iter4_reg;
reg   [3:0] v116_0_addr_1_reg_776_pp0_iter5_reg;
reg   [3:0] v116_0_addr_1_reg_776_pp0_iter6_reg;
reg   [3:0] v116_0_addr_1_reg_776_pp0_iter7_reg;
reg   [3:0] v116_1_addr_1_reg_781;
reg   [3:0] v116_1_addr_1_reg_781_pp0_iter3_reg;
reg   [3:0] v116_1_addr_1_reg_781_pp0_iter4_reg;
reg   [3:0] v116_1_addr_1_reg_781_pp0_iter5_reg;
reg   [3:0] v116_1_addr_1_reg_781_pp0_iter6_reg;
reg   [3:0] v116_1_addr_1_reg_781_pp0_iter7_reg;
reg   [3:0] v116_2_addr_1_reg_786;
reg   [3:0] v116_2_addr_1_reg_786_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_786_pp0_iter4_reg;
reg   [3:0] v116_2_addr_1_reg_786_pp0_iter5_reg;
reg   [3:0] v116_2_addr_1_reg_786_pp0_iter6_reg;
reg   [3:0] v116_2_addr_1_reg_786_pp0_iter7_reg;
reg   [3:0] v116_3_addr_1_reg_791;
reg   [3:0] v116_3_addr_1_reg_791_pp0_iter3_reg;
reg   [3:0] v116_3_addr_1_reg_791_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_791_pp0_iter5_reg;
reg   [3:0] v116_3_addr_1_reg_791_pp0_iter6_reg;
reg   [3:0] v116_3_addr_1_reg_791_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_796;
reg   [31:0] v11_reg_801;
reg   [31:0] v17_reg_806;
reg   [31:0] v23_reg_811;
reg   [31:0] v29_reg_816;
reg   [31:0] v116_1_load_reg_821;
reg   [31:0] v116_2_load_reg_826;
reg   [31:0] v116_3_load_reg_831;
reg   [31:0] v116_0_load_1_reg_836;
reg   [31:0] v116_1_load_1_reg_841;
reg   [31:0] v116_2_load_1_reg_846;
reg   [31:0] v116_3_load_1_reg_851;
wire   [31:0] v9_fu_560_p1;
reg   [31:0] v35_reg_861;
reg   [31:0] v41_reg_866;
reg   [31:0] v47_reg_871;
reg   [31:0] v53_reg_876;
wire   [31:0] v15_fu_564_p1;
wire   [31:0] v21_fu_568_p1;
wire   [31:0] v27_1_fu_572_p1;
wire   [31:0] v33_fu_576_p1;
wire   [31:0] v39_fu_580_p1;
wire   [31:0] v45_fu_584_p1;
wire   [31:0] v51_fu_588_p1;
reg   [31:0] v12_reg_916;
reg   [31:0] v18_reg_921;
reg   [31:0] v24_reg_926;
reg   [31:0] v30_1_reg_931;
reg   [31:0] v36_reg_936;
reg   [31:0] v42_reg_941;
reg   [31:0] v48_reg_946;
reg   [31:0] v54_reg_951;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_410_p1;
wire   [63:0] zext_ln61_fu_456_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_fu_472_p1;
wire   [63:0] zext_ln29_fu_538_p1;
wire   [63:0] zext_ln60_fu_552_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_82;
wire   [6:0] add_ln28_fu_434_p2;
reg   [6:0] ap_sig_allocacmp_v5;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_592_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_608_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_596_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_612_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_600_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_616_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_604_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_620_p1;
reg   [31:0] grp_fu_286_p0;
reg   [31:0] grp_fu_286_p1;
reg   [31:0] grp_fu_290_p0;
reg   [31:0] grp_fu_290_p1;
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_298_p1;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
reg   [31:0] grp_fu_310_p0;
reg   [31:0] grp_fu_310_p1;
reg   [31:0] grp_fu_314_p0;
reg   [31:0] grp_fu_314_p1;
wire   [4:0] lshr_ln29_6_fu_356_p4;
wire   [10:0] tmp_s_fu_366_p4;
wire   [10:0] tmp_61_fu_398_p5;
wire   [10:0] tmp_63_fu_445_p6;
wire   [10:0] tmp_64_fu_462_p5;
wire   [3:0] or_ln60_7_fu_545_p3;
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
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
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
#0 v49_fu_82 = 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_348_p3 == 1'd0))) begin
            v49_fu_82 <= add_ln28_fu_434_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_82 <= 7'd0;
        end
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
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_661 <= icmp_ln31_fu_392_p2;
        lshr_ln29_7_reg_656 <= {{ap_sig_allocacmp_v5[5:2]}};
        lshr_ln29_7_reg_656_pp0_iter1_reg <= lshr_ln29_7_reg_656;
        tmp_22_reg_683 <= ap_sig_allocacmp_v5[32'd1];
        tmp_62_reg_676 <= {{ap_sig_allocacmp_v5[5:3]}};
        tmp_62_reg_676_pp0_iter1_reg <= tmp_62_reg_676;
        tmp_reg_642 <= ap_sig_allocacmp_v5[32'd6];
        v116_0_addr_1_reg_776[3 : 1] <= zext_ln60_fu_552_p1[3 : 1];
        v116_0_addr_1_reg_776_pp0_iter3_reg[3 : 1] <= v116_0_addr_1_reg_776[3 : 1];
        v116_0_addr_1_reg_776_pp0_iter4_reg[3 : 1] <= v116_0_addr_1_reg_776_pp0_iter3_reg[3 : 1];
        v116_0_addr_1_reg_776_pp0_iter5_reg[3 : 1] <= v116_0_addr_1_reg_776_pp0_iter4_reg[3 : 1];
        v116_0_addr_1_reg_776_pp0_iter6_reg[3 : 1] <= v116_0_addr_1_reg_776_pp0_iter5_reg[3 : 1];
        v116_0_addr_1_reg_776_pp0_iter7_reg[3 : 1] <= v116_0_addr_1_reg_776_pp0_iter6_reg[3 : 1];
        v116_0_addr_reg_756 <= zext_ln29_fu_538_p1;
        v116_0_addr_reg_756_pp0_iter3_reg <= v116_0_addr_reg_756;
        v116_0_addr_reg_756_pp0_iter4_reg <= v116_0_addr_reg_756_pp0_iter3_reg;
        v116_0_addr_reg_756_pp0_iter5_reg <= v116_0_addr_reg_756_pp0_iter4_reg;
        v116_0_addr_reg_756_pp0_iter6_reg <= v116_0_addr_reg_756_pp0_iter5_reg;
        v116_1_addr_1_reg_781[3 : 1] <= zext_ln60_fu_552_p1[3 : 1];
        v116_1_addr_1_reg_781_pp0_iter3_reg[3 : 1] <= v116_1_addr_1_reg_781[3 : 1];
        v116_1_addr_1_reg_781_pp0_iter4_reg[3 : 1] <= v116_1_addr_1_reg_781_pp0_iter3_reg[3 : 1];
        v116_1_addr_1_reg_781_pp0_iter5_reg[3 : 1] <= v116_1_addr_1_reg_781_pp0_iter4_reg[3 : 1];
        v116_1_addr_1_reg_781_pp0_iter6_reg[3 : 1] <= v116_1_addr_1_reg_781_pp0_iter5_reg[3 : 1];
        v116_1_addr_1_reg_781_pp0_iter7_reg[3 : 1] <= v116_1_addr_1_reg_781_pp0_iter6_reg[3 : 1];
        v116_1_addr_reg_761 <= zext_ln29_fu_538_p1;
        v116_1_addr_reg_761_pp0_iter3_reg <= v116_1_addr_reg_761;
        v116_1_addr_reg_761_pp0_iter4_reg <= v116_1_addr_reg_761_pp0_iter3_reg;
        v116_1_addr_reg_761_pp0_iter5_reg <= v116_1_addr_reg_761_pp0_iter4_reg;
        v116_1_addr_reg_761_pp0_iter6_reg <= v116_1_addr_reg_761_pp0_iter5_reg;
        v116_2_addr_1_reg_786[3 : 1] <= zext_ln60_fu_552_p1[3 : 1];
        v116_2_addr_1_reg_786_pp0_iter3_reg[3 : 1] <= v116_2_addr_1_reg_786[3 : 1];
        v116_2_addr_1_reg_786_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_786_pp0_iter3_reg[3 : 1];
        v116_2_addr_1_reg_786_pp0_iter5_reg[3 : 1] <= v116_2_addr_1_reg_786_pp0_iter4_reg[3 : 1];
        v116_2_addr_1_reg_786_pp0_iter6_reg[3 : 1] <= v116_2_addr_1_reg_786_pp0_iter5_reg[3 : 1];
        v116_2_addr_1_reg_786_pp0_iter7_reg[3 : 1] <= v116_2_addr_1_reg_786_pp0_iter6_reg[3 : 1];
        v116_2_addr_reg_766 <= zext_ln29_fu_538_p1;
        v116_2_addr_reg_766_pp0_iter3_reg <= v116_2_addr_reg_766;
        v116_2_addr_reg_766_pp0_iter4_reg <= v116_2_addr_reg_766_pp0_iter3_reg;
        v116_2_addr_reg_766_pp0_iter5_reg <= v116_2_addr_reg_766_pp0_iter4_reg;
        v116_2_addr_reg_766_pp0_iter6_reg <= v116_2_addr_reg_766_pp0_iter5_reg;
        v116_3_addr_1_reg_791[3 : 1] <= zext_ln60_fu_552_p1[3 : 1];
        v116_3_addr_1_reg_791_pp0_iter3_reg[3 : 1] <= v116_3_addr_1_reg_791[3 : 1];
        v116_3_addr_1_reg_791_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_791_pp0_iter3_reg[3 : 1];
        v116_3_addr_1_reg_791_pp0_iter5_reg[3 : 1] <= v116_3_addr_1_reg_791_pp0_iter4_reg[3 : 1];
        v116_3_addr_1_reg_791_pp0_iter6_reg[3 : 1] <= v116_3_addr_1_reg_791_pp0_iter5_reg[3 : 1];
        v116_3_addr_1_reg_791_pp0_iter7_reg[3 : 1] <= v116_3_addr_1_reg_791_pp0_iter6_reg[3 : 1];
        v116_3_addr_reg_771 <= zext_ln29_fu_538_p1;
        v116_3_addr_reg_771_pp0_iter3_reg <= v116_3_addr_reg_771;
        v116_3_addr_reg_771_pp0_iter4_reg <= v116_3_addr_reg_771_pp0_iter3_reg;
        v116_3_addr_reg_771_pp0_iter5_reg <= v116_3_addr_reg_771_pp0_iter4_reg;
        v116_3_addr_reg_771_pp0_iter6_reg <= v116_3_addr_reg_771_pp0_iter5_reg;
        v8_reg_708 <= v8_fu_482_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_318 <= v113_0_q1;
        reg_322 <= v113_1_q1;
        reg_326 <= v113_0_q0;
        reg_330 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_836 <= v116_0_q0;
        v116_0_load_reg_796 <= v116_0_q1;
        v116_1_load_1_reg_841 <= v116_1_q0;
        v116_1_load_reg_821 <= v116_1_q1;
        v116_2_load_1_reg_846 <= v116_2_q0;
        v116_2_load_reg_826 <= v116_2_q1;
        v116_3_load_1_reg_851 <= v116_3_q0;
        v116_3_load_reg_831 <= v116_3_q1;
        v11_reg_801 <= grp_fu_414_p_dout0;
        v17_reg_806 <= grp_fu_418_p_dout0;
        v23_reg_811 <= grp_fu_422_p_dout0;
        v29_reg_816 <= grp_fu_426_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_reg_916 <= grp_fu_398_p_dout0;
        v18_reg_921 <= grp_fu_402_p_dout0;
        v24_reg_926 <= grp_fu_406_p_dout0;
        v30_1_reg_931 <= grp_fu_410_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_861 <= grp_fu_414_p_dout0;
        v41_reg_866 <= grp_fu_418_p_dout0;
        v47_reg_871 <= grp_fu_422_p_dout0;
        v53_reg_876 <= grp_fu_426_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_936 <= grp_fu_398_p_dout0;
        v42_reg_941 <= grp_fu_402_p_dout0;
        v48_reg_946 <= grp_fu_406_p_dout0;
        v54_reg_951 <= grp_fu_410_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_642 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_82;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_286_p0 = v33_fu_576_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_286_p0 = v9_fu_560_p1;
        end else begin
            grp_fu_286_p0 = 'bx;
        end
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_286_p1 = v35_reg_861;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_286_p1 = v11_reg_801;
        end else begin
            grp_fu_286_p1 = 'bx;
        end
    end else begin
        grp_fu_286_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_290_p0 = v39_fu_580_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_290_p0 = v15_fu_564_p1;
        end else begin
            grp_fu_290_p0 = 'bx;
        end
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_290_p1 = v41_reg_866;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_290_p1 = v17_reg_806;
        end else begin
            grp_fu_290_p1 = 'bx;
        end
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_294_p0 = v45_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_294_p0 = v21_fu_568_p1;
        end else begin
            grp_fu_294_p0 = 'bx;
        end
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_294_p1 = v47_reg_871;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_294_p1 = v23_reg_811;
        end else begin
            grp_fu_294_p1 = 'bx;
        end
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_298_p0 = v51_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_298_p0 = v27_1_fu_572_p1;
        end else begin
            grp_fu_298_p0 = 'bx;
        end
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_298_p1 = v53_reg_876;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_298_p1 = v29_reg_816;
        end else begin
            grp_fu_298_p1 = 'bx;
        end
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_302_p0 = v34_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_302_p0 = v10_fu_492_p1;
        end else begin
            grp_fu_302_p0 = 'bx;
        end
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_302_p1 = v8_reg_708;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_302_p1 = v8_fu_482_p3;
        end else begin
            grp_fu_302_p1 = 'bx;
        end
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_306_p0 = v40_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_306_p0 = v16_fu_497_p1;
        end else begin
            grp_fu_306_p0 = 'bx;
        end
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_306_p1 = v8_reg_708;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_306_p1 = v8_fu_482_p3;
        end else begin
            grp_fu_306_p1 = 'bx;
        end
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_310_p0 = v46_fu_528_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_310_p0 = v22_fu_502_p1;
        end else begin
            grp_fu_310_p0 = 'bx;
        end
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_310_p1 = v8_reg_708;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_310_p1 = v8_fu_482_p3;
        end else begin
            grp_fu_310_p1 = 'bx;
        end
    end else begin
        grp_fu_310_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_314_p0 = v52_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_314_p0 = v28_fu_507_p1;
        end else begin
            grp_fu_314_p0 = 'bx;
        end
    end else begin
        grp_fu_314_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_314_p1 = v8_reg_708;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_314_p1 = v8_fu_482_p3;
        end else begin
            grp_fu_314_p1 = 'bx;
        end
    end else begin
        grp_fu_314_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln75_fu_472_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address0_local = zext_ln47_fu_410_p1;
        end else begin
            v113_0_address0_local = 'bx;
        end
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address1_local = zext_ln61_fu_456_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address1_local = zext_ln33_fu_376_p1;
        end else begin
            v113_0_address1_local = 'bx;
        end
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address0_local = zext_ln75_fu_472_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address0_local = zext_ln47_fu_410_p1;
        end else begin
            v113_1_address0_local = 'bx;
        end
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address1_local = zext_ln61_fu_456_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address1_local = zext_ln33_fu_376_p1;
        end else begin
            v113_1_address1_local = 'bx;
        end
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_1_reg_776_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_552_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = v116_0_addr_reg_756_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_538_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_1_reg_781_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_552_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = v116_1_addr_reg_761_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_538_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_786_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_552_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address1_local = v116_2_addr_reg_766_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_538_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_791_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_552_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address1_local = v116_3_addr_reg_771_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_538_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v7_3_out_o = v7_2_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v7_3_out_o = v8_fu_482_p3;
        end else begin
            v7_3_out_o = v7_3_out_i;
        end
    end else begin
        v7_3_out_o = v7_3_out_i;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_3_out_o_ap_vld = 1'b1;
    end else begin
        v7_3_out_o_ap_vld = 1'b0;
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
assign add_ln28_fu_434_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign bitcast_ln36_fu_592_p1 = v12_reg_916;
assign bitcast_ln43_fu_596_p1 = v18_reg_921;
assign bitcast_ln50_fu_600_p1 = v24_reg_926;
assign bitcast_ln57_fu_604_p1 = v30_1_reg_931;
assign bitcast_ln64_fu_608_p1 = v36_reg_936;
assign bitcast_ln71_fu_612_p1 = v42_reg_941;
assign bitcast_ln78_fu_616_p1 = v48_reg_946;
assign bitcast_ln86_fu_620_p1 = v54_reg_951;
assign grp_fu_398_p_ce = 1'b1;
assign grp_fu_398_p_din0 = grp_fu_286_p0;
assign grp_fu_398_p_din1 = grp_fu_286_p1;
assign grp_fu_398_p_opcode = 2'd0;
assign grp_fu_402_p_ce = 1'b1;
assign grp_fu_402_p_din0 = grp_fu_290_p0;
assign grp_fu_402_p_din1 = grp_fu_290_p1;
assign grp_fu_402_p_opcode = 2'd0;
assign grp_fu_406_p_ce = 1'b1;
assign grp_fu_406_p_din0 = grp_fu_294_p0;
assign grp_fu_406_p_din1 = grp_fu_294_p1;
assign grp_fu_406_p_opcode = 2'd0;
assign grp_fu_410_p_ce = 1'b1;
assign grp_fu_410_p_din0 = grp_fu_298_p0;
assign grp_fu_410_p_din1 = grp_fu_298_p1;
assign grp_fu_410_p_opcode = 2'd0;
assign grp_fu_414_p_ce = 1'b1;
assign grp_fu_414_p_din0 = grp_fu_302_p0;
assign grp_fu_414_p_din1 = grp_fu_302_p1;
assign grp_fu_418_p_ce = 1'b1;
assign grp_fu_418_p_din0 = grp_fu_306_p0;
assign grp_fu_418_p_din1 = grp_fu_306_p1;
assign grp_fu_422_p_ce = 1'b1;
assign grp_fu_422_p_din0 = grp_fu_310_p0;
assign grp_fu_422_p_din1 = grp_fu_310_p1;
assign grp_fu_426_p_ce = 1'b1;
assign grp_fu_426_p_din0 = grp_fu_314_p0;
assign grp_fu_426_p_din1 = grp_fu_314_p1;
assign icmp_ln31_fu_392_p2 = ((ap_sig_allocacmp_v5 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_6_fu_356_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign lshr_ln29_7_fu_382_p4 = {{ap_sig_allocacmp_v5[5:2]}};
assign or_ln60_7_fu_545_p3 = {{tmp_62_reg_676_pp0_iter1_reg}, {1'd1}};
assign tmp_61_fu_398_p5 = {{{{tmp_259}, {2'd3}}, {lshr_ln29_7_fu_382_p4}}, {1'd1}};
assign tmp_63_fu_445_p6 = {{{{{tmp_259}, {2'd3}}, {tmp_62_reg_676}}, {1'd1}}, {tmp_22_reg_683}};
assign tmp_64_fu_462_p5 = {{{{tmp_259}, {2'd3}}, {tmp_62_reg_676}}, {2'd3}};
assign tmp_fu_348_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_366_p4 = {{{tmp_259}, {2'd3}}, {lshr_ln29_6_fu_356_p4}};
assign v10_fu_492_p1 = reg_318;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln64_fu_608_p1;
assign v116_0_d1 = bitcast_ln36_fu_592_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_612_p1;
assign v116_1_d1 = bitcast_ln43_fu_596_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_616_p1;
assign v116_2_d1 = bitcast_ln50_fu_600_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_620_p1;
assign v116_3_d1 = bitcast_ln57_fu_604_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v15_fu_564_p1 = v116_1_load_reg_821;
assign v16_fu_497_p1 = reg_322;
assign v21_fu_568_p1 = v116_2_load_reg_826;
assign v22_fu_502_p1 = reg_326;
assign v27_1_fu_572_p1 = v116_3_load_reg_831;
assign v28_fu_507_p1 = reg_330;
assign v33_fu_576_p1 = v116_0_load_1_reg_836;
assign v34_fu_518_p1 = reg_318;
assign v39_fu_580_p1 = v116_1_load_1_reg_841;
assign v40_fu_523_p1 = reg_322;
assign v45_fu_584_p1 = v116_2_load_1_reg_846;
assign v46_fu_528_p1 = reg_326;
assign v51_fu_588_p1 = v116_3_load_1_reg_851;
assign v52_fu_533_p1 = reg_330;
assign v8_fu_482_p3 = ((icmp_ln31_reg_661[0:0] == 1'b1) ? v6_3 : v7_3_out_i);
assign v9_fu_560_p1 = v116_0_load_reg_796;
assign zext_ln29_fu_538_p1 = lshr_ln29_7_reg_656_pp0_iter1_reg;
assign zext_ln33_fu_376_p1 = tmp_s_fu_366_p4;
assign zext_ln47_fu_410_p1 = tmp_61_fu_398_p5;
assign zext_ln60_fu_552_p1 = or_ln60_7_fu_545_p3;
assign zext_ln61_fu_456_p1 = tmp_63_fu_445_p6;
assign zext_ln75_fu_472_p1 = tmp_64_fu_462_p5;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_776[0] <= 1'b1;
    v116_0_addr_1_reg_776_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_1_reg_776_pp0_iter4_reg[0] <= 1'b1;
    v116_0_addr_1_reg_776_pp0_iter5_reg[0] <= 1'b1;
    v116_0_addr_1_reg_776_pp0_iter6_reg[0] <= 1'b1;
    v116_0_addr_1_reg_776_pp0_iter7_reg[0] <= 1'b1;
    v116_1_addr_1_reg_781[0] <= 1'b1;
    v116_1_addr_1_reg_781_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_781_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_781_pp0_iter5_reg[0] <= 1'b1;
    v116_1_addr_1_reg_781_pp0_iter6_reg[0] <= 1'b1;
    v116_1_addr_1_reg_781_pp0_iter7_reg[0] <= 1'b1;
    v116_2_addr_1_reg_786[0] <= 1'b1;
    v116_2_addr_1_reg_786_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_786_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_786_pp0_iter5_reg[0] <= 1'b1;
    v116_2_addr_1_reg_786_pp0_iter6_reg[0] <= 1'b1;
    v116_2_addr_1_reg_786_pp0_iter7_reg[0] <= 1'b1;
    v116_3_addr_1_reg_791[0] <= 1'b1;
    v116_3_addr_1_reg_791_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_791_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_791_pp0_iter5_reg[0] <= 1'b1;
    v116_3_addr_1_reg_791_pp0_iter6_reg[0] <= 1'b1;
    v116_3_addr_1_reg_791_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 