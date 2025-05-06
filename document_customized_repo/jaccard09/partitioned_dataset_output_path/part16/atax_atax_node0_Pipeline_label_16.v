
module atax_atax_node0_Pipeline_label_16 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_reload,lshr_ln,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_1,v7_1_out,v7_1_out_ap_vld,grp_fu_398_p_din0,grp_fu_398_p_din1,grp_fu_398_p_opcode,grp_fu_398_p_dout0,grp_fu_398_p_ce,grp_fu_402_p_din0,grp_fu_402_p_din1,grp_fu_402_p_opcode,grp_fu_402_p_dout0,grp_fu_402_p_ce,grp_fu_406_p_din0,grp_fu_406_p_din1,grp_fu_406_p_opcode,grp_fu_406_p_dout0,grp_fu_406_p_ce,grp_fu_410_p_din0,grp_fu_410_p_din1,grp_fu_410_p_opcode,grp_fu_410_p_dout0,grp_fu_410_p_ce,grp_fu_414_p_din0,grp_fu_414_p_din1,grp_fu_414_p_dout0,grp_fu_414_p_ce,grp_fu_418_p_din0,grp_fu_418_p_din1,grp_fu_418_p_dout0,grp_fu_418_p_ce,grp_fu_422_p_din0,grp_fu_422_p_din1,grp_fu_422_p_dout0,grp_fu_422_p_ce,grp_fu_426_p_din0,grp_fu_426_p_din1,grp_fu_426_p_dout0,grp_fu_426_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v7_reload;
input  [4:0] lshr_ln;
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
input  [31:0] v6_1;
output  [31:0] v7_1_out;
output   v7_1_out_ap_vld;
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
reg v7_1_out_ap_vld;
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
reg   [0:0] tmp_reg_664;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_331;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_335;
reg   [31:0] reg_339;
reg   [31:0] reg_343;
wire   [0:0] tmp_fu_360_p3;
reg   [0:0] tmp_reg_664_pp0_iter1_reg;
reg   [0:0] tmp_reg_664_pp0_iter2_reg;
reg   [0:0] tmp_reg_664_pp0_iter3_reg;
reg   [0:0] tmp_reg_664_pp0_iter4_reg;
reg   [0:0] tmp_reg_664_pp0_iter5_reg;
reg   [0:0] tmp_reg_664_pp0_iter6_reg;
wire   [3:0] lshr_ln29_3_fu_394_p4;
reg   [3:0] lshr_ln29_3_reg_678;
reg   [3:0] lshr_ln29_3_reg_678_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_404_p2;
reg   [0:0] icmp_ln31_reg_683;
reg   [2:0] tmp_71_reg_698;
reg   [2:0] tmp_71_reg_698_pp0_iter1_reg;
reg   [0:0] tmp_24_reg_705;
wire   [31:0] v8_fu_493_p3;
reg   [31:0] v8_reg_730;
wire   [31:0] v10_fu_503_p1;
wire   [31:0] v16_fu_508_p1;
wire   [31:0] v22_fu_513_p1;
wire   [31:0] v28_fu_518_p1;
wire   [31:0] v34_fu_528_p1;
wire   [31:0] v40_fu_533_p1;
wire   [31:0] v46_fu_538_p1;
wire   [31:0] v52_fu_543_p1;
reg   [3:0] v116_0_addr_2_reg_778;
reg   [3:0] v116_0_addr_2_reg_778_pp0_iter3_reg;
reg   [3:0] v116_0_addr_2_reg_778_pp0_iter4_reg;
reg   [3:0] v116_0_addr_2_reg_778_pp0_iter5_reg;
reg   [3:0] v116_0_addr_2_reg_778_pp0_iter6_reg;
reg   [3:0] v116_1_addr_2_reg_783;
reg   [3:0] v116_1_addr_2_reg_783_pp0_iter3_reg;
reg   [3:0] v116_1_addr_2_reg_783_pp0_iter4_reg;
reg   [3:0] v116_1_addr_2_reg_783_pp0_iter5_reg;
reg   [3:0] v116_1_addr_2_reg_783_pp0_iter6_reg;
reg   [3:0] v116_2_addr_2_reg_788;
reg   [3:0] v116_2_addr_2_reg_788_pp0_iter3_reg;
reg   [3:0] v116_2_addr_2_reg_788_pp0_iter4_reg;
reg   [3:0] v116_2_addr_2_reg_788_pp0_iter5_reg;
reg   [3:0] v116_2_addr_2_reg_788_pp0_iter6_reg;
reg   [3:0] v116_3_addr_2_reg_793;
reg   [3:0] v116_3_addr_2_reg_793_pp0_iter3_reg;
reg   [3:0] v116_3_addr_2_reg_793_pp0_iter4_reg;
reg   [3:0] v116_3_addr_2_reg_793_pp0_iter5_reg;
reg   [3:0] v116_3_addr_2_reg_793_pp0_iter6_reg;
reg   [3:0] v116_0_addr_reg_798;
reg   [3:0] v116_0_addr_reg_798_pp0_iter3_reg;
reg   [3:0] v116_0_addr_reg_798_pp0_iter4_reg;
reg   [3:0] v116_0_addr_reg_798_pp0_iter5_reg;
reg   [3:0] v116_0_addr_reg_798_pp0_iter6_reg;
reg   [3:0] v116_0_addr_reg_798_pp0_iter7_reg;
reg   [3:0] v116_1_addr_reg_803;
reg   [3:0] v116_1_addr_reg_803_pp0_iter3_reg;
reg   [3:0] v116_1_addr_reg_803_pp0_iter4_reg;
reg   [3:0] v116_1_addr_reg_803_pp0_iter5_reg;
reg   [3:0] v116_1_addr_reg_803_pp0_iter6_reg;
reg   [3:0] v116_1_addr_reg_803_pp0_iter7_reg;
reg   [3:0] v116_2_addr_reg_808;
reg   [3:0] v116_2_addr_reg_808_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_808_pp0_iter4_reg;
reg   [3:0] v116_2_addr_reg_808_pp0_iter5_reg;
reg   [3:0] v116_2_addr_reg_808_pp0_iter6_reg;
reg   [3:0] v116_2_addr_reg_808_pp0_iter7_reg;
reg   [3:0] v116_3_addr_reg_813;
reg   [3:0] v116_3_addr_reg_813_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_813_pp0_iter4_reg;
reg   [3:0] v116_3_addr_reg_813_pp0_iter5_reg;
reg   [3:0] v116_3_addr_reg_813_pp0_iter6_reg;
reg   [3:0] v116_3_addr_reg_813_pp0_iter7_reg;
reg   [31:0] v116_0_load_2_reg_818;
reg   [31:0] v11_reg_823;
reg   [31:0] v17_reg_828;
reg   [31:0] v23_reg_833;
reg   [31:0] v29_reg_838;
reg   [31:0] v116_1_load_2_reg_843;
reg   [31:0] v116_2_load_2_reg_848;
reg   [31:0] v116_3_load_2_reg_853;
reg   [31:0] v116_0_load_reg_858;
reg   [31:0] v116_1_load_reg_863;
reg   [31:0] v116_2_load_reg_868;
reg   [31:0] v116_3_load_reg_873;
wire   [31:0] v9_fu_570_p1;
reg   [31:0] v35_reg_883;
reg   [31:0] v41_reg_888;
reg   [31:0] v47_reg_893;
reg   [31:0] v53_reg_898;
wire   [31:0] v15_fu_574_p1;
wire   [31:0] v21_fu_578_p1;
wire   [31:0] v27_fu_582_p1;
wire   [31:0] v33_fu_586_p1;
wire   [31:0] v39_fu_590_p1;
wire   [31:0] v45_fu_594_p1;
wire   [31:0] v51_fu_598_p1;
reg   [31:0] v12_reg_938;
reg   [31:0] v18_reg_943;
reg   [31:0] v24_reg_948;
reg   [31:0] v30_1_reg_953;
reg   [31:0] v36_reg_958;
reg   [31:0] v42_reg_963;
reg   [31:0] v48_reg_968;
reg   [31:0] v54_reg_973;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_388_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_422_p1;
wire   [63:0] zext_ln61_fu_468_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_fu_484_p1;
wire   [63:0] zext_ln29_fu_548_p1;
wire   [63:0] zext_ln60_fu_562_p1;
reg   [31:0] v3_fu_84;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [6:0] v49_fu_88;
wire   [6:0] add_ln28_fu_446_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage1_01001;
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
wire   [31:0] bitcast_ln36_fu_602_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_618_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_606_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_622_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_610_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_626_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_614_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_630_p1;
reg   [31:0] grp_fu_299_p0;
reg   [31:0] grp_fu_299_p1;
reg   [31:0] grp_fu_303_p0;
reg   [31:0] grp_fu_303_p1;
reg   [31:0] grp_fu_307_p0;
reg   [31:0] grp_fu_307_p1;
reg   [31:0] grp_fu_311_p0;
reg   [31:0] grp_fu_311_p1;
reg   [31:0] grp_fu_315_p0;
reg   [31:0] grp_fu_315_p1;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
wire   [4:0] tmp_s_fu_368_p4;
wire   [10:0] tmp_69_fu_378_p4;
wire   [10:0] tmp_70_fu_410_p5;
wire   [10:0] tmp_72_fu_457_p6;
wire   [10:0] tmp_73_fu_474_p5;
wire   [3:0] or_ln60_3_fu_555_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v3_fu_84 = 32'd0;
#0 v49_fu_88 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((ap_loop_init == 1'b1)) begin
            v3_fu_84 <= v7_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v3_fu_84 <= v8_fu_493_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_360_p3 == 1'd0))) begin
            v49_fu_88 <= add_ln28_fu_446_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_88 <= 7'd0;
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
        icmp_ln31_reg_683 <= icmp_ln31_fu_404_p2;
        lshr_ln29_3_reg_678 <= {{ap_sig_allocacmp_v5[5:2]}};
        lshr_ln29_3_reg_678_pp0_iter1_reg <= lshr_ln29_3_reg_678;
        tmp_24_reg_705 <= ap_sig_allocacmp_v5[32'd1];
        tmp_71_reg_698 <= {{ap_sig_allocacmp_v5[5:3]}};
        tmp_71_reg_698_pp0_iter1_reg <= tmp_71_reg_698;
        tmp_reg_664 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_664_pp0_iter1_reg <= tmp_reg_664;
        tmp_reg_664_pp0_iter2_reg <= tmp_reg_664_pp0_iter1_reg;
        tmp_reg_664_pp0_iter3_reg <= tmp_reg_664_pp0_iter2_reg;
        tmp_reg_664_pp0_iter4_reg <= tmp_reg_664_pp0_iter3_reg;
        tmp_reg_664_pp0_iter5_reg <= tmp_reg_664_pp0_iter4_reg;
        tmp_reg_664_pp0_iter6_reg <= tmp_reg_664_pp0_iter5_reg;
        v116_0_addr_2_reg_778 <= zext_ln29_fu_548_p1;
        v116_0_addr_2_reg_778_pp0_iter3_reg <= v116_0_addr_2_reg_778;
        v116_0_addr_2_reg_778_pp0_iter4_reg <= v116_0_addr_2_reg_778_pp0_iter3_reg;
        v116_0_addr_2_reg_778_pp0_iter5_reg <= v116_0_addr_2_reg_778_pp0_iter4_reg;
        v116_0_addr_2_reg_778_pp0_iter6_reg <= v116_0_addr_2_reg_778_pp0_iter5_reg;
        v116_0_addr_reg_798[3 : 1] <= zext_ln60_fu_562_p1[3 : 1];
        v116_0_addr_reg_798_pp0_iter3_reg[3 : 1] <= v116_0_addr_reg_798[3 : 1];
        v116_0_addr_reg_798_pp0_iter4_reg[3 : 1] <= v116_0_addr_reg_798_pp0_iter3_reg[3 : 1];
        v116_0_addr_reg_798_pp0_iter5_reg[3 : 1] <= v116_0_addr_reg_798_pp0_iter4_reg[3 : 1];
        v116_0_addr_reg_798_pp0_iter6_reg[3 : 1] <= v116_0_addr_reg_798_pp0_iter5_reg[3 : 1];
        v116_0_addr_reg_798_pp0_iter7_reg[3 : 1] <= v116_0_addr_reg_798_pp0_iter6_reg[3 : 1];
        v116_1_addr_2_reg_783 <= zext_ln29_fu_548_p1;
        v116_1_addr_2_reg_783_pp0_iter3_reg <= v116_1_addr_2_reg_783;
        v116_1_addr_2_reg_783_pp0_iter4_reg <= v116_1_addr_2_reg_783_pp0_iter3_reg;
        v116_1_addr_2_reg_783_pp0_iter5_reg <= v116_1_addr_2_reg_783_pp0_iter4_reg;
        v116_1_addr_2_reg_783_pp0_iter6_reg <= v116_1_addr_2_reg_783_pp0_iter5_reg;
        v116_1_addr_reg_803[3 : 1] <= zext_ln60_fu_562_p1[3 : 1];
        v116_1_addr_reg_803_pp0_iter3_reg[3 : 1] <= v116_1_addr_reg_803[3 : 1];
        v116_1_addr_reg_803_pp0_iter4_reg[3 : 1] <= v116_1_addr_reg_803_pp0_iter3_reg[3 : 1];
        v116_1_addr_reg_803_pp0_iter5_reg[3 : 1] <= v116_1_addr_reg_803_pp0_iter4_reg[3 : 1];
        v116_1_addr_reg_803_pp0_iter6_reg[3 : 1] <= v116_1_addr_reg_803_pp0_iter5_reg[3 : 1];
        v116_1_addr_reg_803_pp0_iter7_reg[3 : 1] <= v116_1_addr_reg_803_pp0_iter6_reg[3 : 1];
        v116_2_addr_2_reg_788 <= zext_ln29_fu_548_p1;
        v116_2_addr_2_reg_788_pp0_iter3_reg <= v116_2_addr_2_reg_788;
        v116_2_addr_2_reg_788_pp0_iter4_reg <= v116_2_addr_2_reg_788_pp0_iter3_reg;
        v116_2_addr_2_reg_788_pp0_iter5_reg <= v116_2_addr_2_reg_788_pp0_iter4_reg;
        v116_2_addr_2_reg_788_pp0_iter6_reg <= v116_2_addr_2_reg_788_pp0_iter5_reg;
        v116_2_addr_reg_808[3 : 1] <= zext_ln60_fu_562_p1[3 : 1];
        v116_2_addr_reg_808_pp0_iter3_reg[3 : 1] <= v116_2_addr_reg_808[3 : 1];
        v116_2_addr_reg_808_pp0_iter4_reg[3 : 1] <= v116_2_addr_reg_808_pp0_iter3_reg[3 : 1];
        v116_2_addr_reg_808_pp0_iter5_reg[3 : 1] <= v116_2_addr_reg_808_pp0_iter4_reg[3 : 1];
        v116_2_addr_reg_808_pp0_iter6_reg[3 : 1] <= v116_2_addr_reg_808_pp0_iter5_reg[3 : 1];
        v116_2_addr_reg_808_pp0_iter7_reg[3 : 1] <= v116_2_addr_reg_808_pp0_iter6_reg[3 : 1];
        v116_3_addr_2_reg_793 <= zext_ln29_fu_548_p1;
        v116_3_addr_2_reg_793_pp0_iter3_reg <= v116_3_addr_2_reg_793;
        v116_3_addr_2_reg_793_pp0_iter4_reg <= v116_3_addr_2_reg_793_pp0_iter3_reg;
        v116_3_addr_2_reg_793_pp0_iter5_reg <= v116_3_addr_2_reg_793_pp0_iter4_reg;
        v116_3_addr_2_reg_793_pp0_iter6_reg <= v116_3_addr_2_reg_793_pp0_iter5_reg;
        v116_3_addr_reg_813[3 : 1] <= zext_ln60_fu_562_p1[3 : 1];
        v116_3_addr_reg_813_pp0_iter3_reg[3 : 1] <= v116_3_addr_reg_813[3 : 1];
        v116_3_addr_reg_813_pp0_iter4_reg[3 : 1] <= v116_3_addr_reg_813_pp0_iter3_reg[3 : 1];
        v116_3_addr_reg_813_pp0_iter5_reg[3 : 1] <= v116_3_addr_reg_813_pp0_iter4_reg[3 : 1];
        v116_3_addr_reg_813_pp0_iter6_reg[3 : 1] <= v116_3_addr_reg_813_pp0_iter5_reg[3 : 1];
        v116_3_addr_reg_813_pp0_iter7_reg[3 : 1] <= v116_3_addr_reg_813_pp0_iter6_reg[3 : 1];
        v8_reg_730 <= v8_fu_493_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_331 <= v113_0_q1;
        reg_335 <= v113_1_q1;
        reg_339 <= v113_0_q0;
        reg_343 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_2_reg_818 <= v116_0_q1;
        v116_0_load_reg_858 <= v116_0_q0;
        v116_1_load_2_reg_843 <= v116_1_q1;
        v116_1_load_reg_863 <= v116_1_q0;
        v116_2_load_2_reg_848 <= v116_2_q1;
        v116_2_load_reg_868 <= v116_2_q0;
        v116_3_load_2_reg_853 <= v116_3_q1;
        v116_3_load_reg_873 <= v116_3_q0;
        v11_reg_823 <= grp_fu_414_p_dout0;
        v17_reg_828 <= grp_fu_418_p_dout0;
        v23_reg_833 <= grp_fu_422_p_dout0;
        v29_reg_838 <= grp_fu_426_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_reg_938 <= grp_fu_398_p_dout0;
        v18_reg_943 <= grp_fu_402_p_dout0;
        v24_reg_948 <= grp_fu_406_p_dout0;
        v30_1_reg_953 <= grp_fu_410_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_883 <= grp_fu_414_p_dout0;
        v41_reg_888 <= grp_fu_418_p_dout0;
        v47_reg_893 <= grp_fu_422_p_dout0;
        v53_reg_898 <= grp_fu_426_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_958 <= grp_fu_398_p_dout0;
        v42_reg_963 <= grp_fu_402_p_dout0;
        v48_reg_968 <= grp_fu_406_p_dout0;
        v54_reg_973 <= grp_fu_410_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_664 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_88;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_299_p0 = v33_fu_586_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_299_p0 = v9_fu_570_p1;
        end else begin
            grp_fu_299_p0 = 'bx;
        end
    end else begin
        grp_fu_299_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_299_p1 = v35_reg_883;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_299_p1 = v11_reg_823;
        end else begin
            grp_fu_299_p1 = 'bx;
        end
    end else begin
        grp_fu_299_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_303_p0 = v39_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_303_p0 = v15_fu_574_p1;
        end else begin
            grp_fu_303_p0 = 'bx;
        end
    end else begin
        grp_fu_303_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_303_p1 = v41_reg_888;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_303_p1 = v17_reg_828;
        end else begin
            grp_fu_303_p1 = 'bx;
        end
    end else begin
        grp_fu_303_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_307_p0 = v45_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_307_p0 = v21_fu_578_p1;
        end else begin
            grp_fu_307_p0 = 'bx;
        end
    end else begin
        grp_fu_307_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_307_p1 = v47_reg_893;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_307_p1 = v23_reg_833;
        end else begin
            grp_fu_307_p1 = 'bx;
        end
    end else begin
        grp_fu_307_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_311_p0 = v51_fu_598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_311_p0 = v27_fu_582_p1;
        end else begin
            grp_fu_311_p0 = 'bx;
        end
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_311_p1 = v53_reg_898;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_311_p1 = v29_reg_838;
        end else begin
            grp_fu_311_p1 = 'bx;
        end
    end else begin
        grp_fu_311_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_315_p0 = v34_fu_528_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_315_p0 = v10_fu_503_p1;
        end else begin
            grp_fu_315_p0 = 'bx;
        end
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_315_p1 = v8_reg_730;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_315_p1 = v8_fu_493_p3;
        end else begin
            grp_fu_315_p1 = 'bx;
        end
    end else begin
        grp_fu_315_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_319_p0 = v40_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_319_p0 = v16_fu_508_p1;
        end else begin
            grp_fu_319_p0 = 'bx;
        end
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_319_p1 = v8_reg_730;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_319_p1 = v8_fu_493_p3;
        end else begin
            grp_fu_319_p1 = 'bx;
        end
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_323_p0 = v46_fu_538_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_323_p0 = v22_fu_513_p1;
        end else begin
            grp_fu_323_p0 = 'bx;
        end
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_323_p1 = v8_reg_730;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_323_p1 = v8_fu_493_p3;
        end else begin
            grp_fu_323_p1 = 'bx;
        end
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_327_p0 = v52_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_327_p0 = v28_fu_518_p1;
        end else begin
            grp_fu_327_p0 = 'bx;
        end
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_327_p1 = v8_reg_730;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_327_p1 = v8_fu_493_p3;
        end else begin
            grp_fu_327_p1 = 'bx;
        end
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln75_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address0_local = zext_ln47_fu_422_p1;
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
            v113_0_address1_local = zext_ln61_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address1_local = zext_ln33_fu_388_p1;
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
            v113_1_address0_local = zext_ln75_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address0_local = zext_ln47_fu_422_p1;
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
            v113_1_address1_local = zext_ln61_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address1_local = zext_ln33_fu_388_p1;
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
        v116_0_address0_local = v116_0_addr_reg_798_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_562_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = v116_0_addr_2_reg_778_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_548_p1;
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
        v116_1_address0_local = v116_1_addr_reg_803_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_562_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = v116_1_addr_2_reg_783_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_548_p1;
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
        v116_2_address0_local = v116_2_addr_reg_808_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_562_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address1_local = v116_2_addr_2_reg_788_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_548_p1;
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
        v116_3_address0_local = v116_3_addr_reg_813_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_562_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address1_local = v116_3_addr_2_reg_793_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_548_p1;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_664_pp0_iter6_reg == 1'd1))) begin
        v7_1_out_ap_vld = 1'b1;
    end else begin
        v7_1_out_ap_vld = 1'b0;
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
assign add_ln28_fu_446_p2 = (ap_sig_allocacmp_v5 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_602_p1 = v12_reg_938;
assign bitcast_ln43_fu_606_p1 = v18_reg_943;
assign bitcast_ln50_fu_610_p1 = v24_reg_948;
assign bitcast_ln57_fu_614_p1 = v30_1_reg_953;
assign bitcast_ln64_fu_618_p1 = v36_reg_958;
assign bitcast_ln71_fu_622_p1 = v42_reg_963;
assign bitcast_ln78_fu_626_p1 = v48_reg_968;
assign bitcast_ln86_fu_630_p1 = v54_reg_973;
assign grp_fu_398_p_ce = 1'b1;
assign grp_fu_398_p_din0 = grp_fu_299_p0;
assign grp_fu_398_p_din1 = grp_fu_299_p1;
assign grp_fu_398_p_opcode = 2'd0;
assign grp_fu_402_p_ce = 1'b1;
assign grp_fu_402_p_din0 = grp_fu_303_p0;
assign grp_fu_402_p_din1 = grp_fu_303_p1;
assign grp_fu_402_p_opcode = 2'd0;
assign grp_fu_406_p_ce = 1'b1;
assign grp_fu_406_p_din0 = grp_fu_307_p0;
assign grp_fu_406_p_din1 = grp_fu_307_p1;
assign grp_fu_406_p_opcode = 2'd0;
assign grp_fu_410_p_ce = 1'b1;
assign grp_fu_410_p_din0 = grp_fu_311_p0;
assign grp_fu_410_p_din1 = grp_fu_311_p1;
assign grp_fu_410_p_opcode = 2'd0;
assign grp_fu_414_p_ce = 1'b1;
assign grp_fu_414_p_din0 = grp_fu_315_p0;
assign grp_fu_414_p_din1 = grp_fu_315_p1;
assign grp_fu_418_p_ce = 1'b1;
assign grp_fu_418_p_din0 = grp_fu_319_p0;
assign grp_fu_418_p_din1 = grp_fu_319_p1;
assign grp_fu_422_p_ce = 1'b1;
assign grp_fu_422_p_din0 = grp_fu_323_p0;
assign grp_fu_422_p_din1 = grp_fu_323_p1;
assign grp_fu_426_p_ce = 1'b1;
assign grp_fu_426_p_din0 = grp_fu_327_p0;
assign grp_fu_426_p_din1 = grp_fu_327_p1;
assign icmp_ln31_fu_404_p2 = ((ap_sig_allocacmp_v5 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_3_fu_394_p4 = {{ap_sig_allocacmp_v5[5:2]}};
assign or_ln60_3_fu_555_p3 = {{tmp_71_reg_698_pp0_iter1_reg}, {1'd1}};
assign tmp_69_fu_378_p4 = {{{lshr_ln}, {1'd1}}, {tmp_s_fu_368_p4}};
assign tmp_70_fu_410_p5 = {{{{lshr_ln}, {1'd1}}, {lshr_ln29_3_fu_394_p4}}, {1'd1}};
assign tmp_72_fu_457_p6 = {{{{{lshr_ln}, {1'd1}}, {tmp_71_reg_698}}, {1'd1}}, {tmp_24_reg_705}};
assign tmp_73_fu_474_p5 = {{{{lshr_ln}, {1'd1}}, {tmp_71_reg_698}}, {2'd3}};
assign tmp_fu_360_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_368_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign v10_fu_503_p1 = reg_331;
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
assign v116_0_d0 = bitcast_ln64_fu_618_p1;
assign v116_0_d1 = bitcast_ln36_fu_602_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_622_p1;
assign v116_1_d1 = bitcast_ln43_fu_606_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_626_p1;
assign v116_2_d1 = bitcast_ln50_fu_610_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_630_p1;
assign v116_3_d1 = bitcast_ln57_fu_614_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v15_fu_574_p1 = v116_1_load_2_reg_843;
assign v16_fu_508_p1 = reg_335;
assign v21_fu_578_p1 = v116_2_load_2_reg_848;
assign v22_fu_513_p1 = reg_339;
assign v27_fu_582_p1 = v116_3_load_2_reg_853;
assign v28_fu_518_p1 = reg_343;
assign v33_fu_586_p1 = v116_0_load_reg_858;
assign v34_fu_528_p1 = reg_331;
assign v39_fu_590_p1 = v116_1_load_reg_863;
assign v40_fu_533_p1 = reg_335;
assign v45_fu_594_p1 = v116_2_load_reg_868;
assign v46_fu_538_p1 = reg_339;
assign v51_fu_598_p1 = v116_3_load_reg_873;
assign v52_fu_543_p1 = reg_343;
assign v7_1_out = v3_fu_84;
assign v8_fu_493_p3 = ((icmp_ln31_reg_683[0:0] == 1'b1) ? v6_1 : v3_fu_84);
assign v9_fu_570_p1 = v116_0_load_2_reg_818;
assign zext_ln29_fu_548_p1 = lshr_ln29_3_reg_678_pp0_iter1_reg;
assign zext_ln33_fu_388_p1 = tmp_69_fu_378_p4;
assign zext_ln47_fu_422_p1 = tmp_70_fu_410_p5;
assign zext_ln60_fu_562_p1 = or_ln60_3_fu_555_p3;
assign zext_ln61_fu_468_p1 = tmp_72_fu_457_p6;
assign zext_ln75_fu_484_p1 = tmp_73_fu_474_p5;
always @ (posedge ap_clk) begin
    v116_0_addr_reg_798[0] <= 1'b1;
    v116_0_addr_reg_798_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_reg_798_pp0_iter4_reg[0] <= 1'b1;
    v116_0_addr_reg_798_pp0_iter5_reg[0] <= 1'b1;
    v116_0_addr_reg_798_pp0_iter6_reg[0] <= 1'b1;
    v116_0_addr_reg_798_pp0_iter7_reg[0] <= 1'b1;
    v116_1_addr_reg_803[0] <= 1'b1;
    v116_1_addr_reg_803_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_reg_803_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_reg_803_pp0_iter5_reg[0] <= 1'b1;
    v116_1_addr_reg_803_pp0_iter6_reg[0] <= 1'b1;
    v116_1_addr_reg_803_pp0_iter7_reg[0] <= 1'b1;
    v116_2_addr_reg_808[0] <= 1'b1;
    v116_2_addr_reg_808_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_reg_808_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_reg_808_pp0_iter5_reg[0] <= 1'b1;
    v116_2_addr_reg_808_pp0_iter6_reg[0] <= 1'b1;
    v116_2_addr_reg_808_pp0_iter7_reg[0] <= 1'b1;
    v116_3_addr_reg_813[0] <= 1'b1;
    v116_3_addr_reg_813_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_reg_813_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_reg_813_pp0_iter5_reg[0] <= 1'b1;
    v116_3_addr_reg_813_pp0_iter6_reg[0] <= 1'b1;
    v116_3_addr_reg_813_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 
