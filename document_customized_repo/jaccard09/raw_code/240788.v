module atax_atax_node0_Pipeline_label_15 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_1_reload,lshr_ln,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_2,v7_2_out,v7_2_out_ap_vld,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_dout0,grp_fu_440_p_ce); 
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
input  [31:0] v7_1_reload;
input  [3:0] lshr_ln;
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
input  [31:0] v6_2;
output  [31:0] v7_2_out;
output   v7_2_out_ap_vld;
output  [31:0] grp_fu_428_p_din0;
output  [31:0] grp_fu_428_p_din1;
output  [1:0] grp_fu_428_p_opcode;
input  [31:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [31:0] grp_fu_432_p_din0;
output  [31:0] grp_fu_432_p_din1;
output  [1:0] grp_fu_432_p_opcode;
input  [31:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [31:0] grp_fu_436_p_din0;
output  [31:0] grp_fu_436_p_din1;
input  [31:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;
output  [31:0] grp_fu_440_p_din0;
output  [31:0] grp_fu_440_p_din1;
input  [31:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
reg ap_idle;
reg v7_2_out_ap_vld;
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
reg   [0:0] tmp_reg_636;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_327;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_331;
reg   [31:0] reg_335;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_339;
reg   [6:0] v5_reg_628;
wire   [0:0] tmp_fu_356_p3;
reg   [0:0] tmp_reg_636_pp0_iter1_reg;
reg   [0:0] tmp_reg_636_pp0_iter2_reg;
reg   [0:0] tmp_reg_636_pp0_iter3_reg;
wire   [2:0] lshr_ln29_4_fu_364_p4;
reg   [2:0] lshr_ln29_4_reg_640;
reg   [2:0] lshr_ln29_4_reg_640_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_407_p2;
reg   [0:0] icmp_ln31_reg_686;
reg   [31:0] v113_0_load_reg_691;
reg   [31:0] v113_1_load_reg_696;
reg   [31:0] v113_2_load_reg_701;
reg   [31:0] v113_3_load_reg_706;
reg   [31:0] v113_4_load_reg_711;
reg   [31:0] v113_5_load_reg_716;
reg   [31:0] v113_6_load_reg_721;
reg   [31:0] v113_7_load_reg_726;
wire   [31:0] v8_fu_415_p3;
reg   [31:0] v8_reg_731;
wire   [31:0] v10_fu_423_p1;
wire   [31:0] v16_fu_427_p1;
wire   [31:0] v22_fu_436_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_fu_440_p1;
reg   [4:0] v116_0_addr_reg_757;
reg   [4:0] v116_0_addr_reg_757_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_757_pp0_iter3_reg;
reg   [0:0] tmp_10_reg_762;
wire   [31:0] v34_fu_489_p1;
wire   [31:0] v40_fu_493_p1;
reg   [4:0] v116_1_addr_reg_777;
reg   [4:0] v116_1_addr_reg_777_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_777_pp0_iter3_reg;
reg   [4:0] v116_0_addr_4_reg_782;
reg   [4:0] v116_0_addr_4_reg_782_pp0_iter2_reg;
reg   [4:0] v116_0_addr_4_reg_782_pp0_iter3_reg;
reg   [4:0] v116_1_addr_4_reg_787;
reg   [4:0] v116_1_addr_4_reg_787_pp0_iter2_reg;
reg   [4:0] v116_1_addr_4_reg_787_pp0_iter3_reg;
reg   [31:0] v11_reg_792;
reg   [31:0] v17_reg_797;
wire   [31:0] v46_fu_524_p1;
wire   [31:0] v52_fu_528_p1;
reg   [31:0] v116_0_load_4_reg_812;
reg   [31:0] v116_1_load_4_reg_817;
reg   [4:0] v116_0_addr_5_reg_822;
reg   [4:0] v116_0_addr_5_reg_822_pp0_iter2_reg;
reg   [4:0] v116_0_addr_5_reg_822_pp0_iter3_reg;
reg   [4:0] v116_1_addr_5_reg_827;
reg   [4:0] v116_1_addr_5_reg_827_pp0_iter2_reg;
reg   [4:0] v116_1_addr_5_reg_827_pp0_iter3_reg;
reg   [4:0] v116_0_addr_6_reg_832;
reg   [4:0] v116_0_addr_6_reg_832_pp0_iter2_reg;
reg   [4:0] v116_0_addr_6_reg_832_pp0_iter3_reg;
reg   [4:0] v116_0_addr_6_reg_832_pp0_iter4_reg;
reg   [4:0] v116_1_addr_6_reg_837;
reg   [4:0] v116_1_addr_6_reg_837_pp0_iter2_reg;
reg   [4:0] v116_1_addr_6_reg_837_pp0_iter3_reg;
reg   [4:0] v116_1_addr_6_reg_837_pp0_iter4_reg;
wire   [31:0] v9_fu_532_p1;
reg   [31:0] v23_reg_847;
reg   [31:0] v29_reg_852;
wire   [31:0] v15_fu_537_p1;
reg   [31:0] v116_0_load_6_reg_862;
reg   [31:0] v116_1_load_6_reg_867;
reg   [31:0] v35_reg_872;
reg   [31:0] v41_reg_877;
wire   [31:0] v21_1_fu_542_p1;
wire   [31:0] v27_1_fu_546_p1;
reg   [31:0] v47_reg_892;
reg   [31:0] v53_reg_897;
wire   [31:0] v33_fu_550_p1;
wire   [31:0] v39_fu_555_p1;
wire   [31:0] v45_fu_560_p1;
wire   [31:0] v51_fu_564_p1;
reg   [31:0] v24_1_reg_922;
reg   [31:0] v30_reg_927;
reg   [31:0] v48_reg_932;
reg   [31:0] v54_reg_937;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_384_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln29_fu_453_p1;
wire   [63:0] zext_ln46_fu_476_p1;
wire   [63:0] zext_ln60_fu_505_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln74_fu_518_p1;
reg   [31:0] v3_fu_92;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage3;
reg   [6:0] v49_fu_96;
wire   [6:0] add_ln28_fu_396_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage3_01001;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_568_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_573_p1;
wire   [31:0] bitcast_ln64_fu_586_p1;
wire   [31:0] bitcast_ln78_fu_596_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_577_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_582_p1;
wire   [31:0] bitcast_ln71_fu_591_p1;
wire   [31:0] bitcast_ln86_fu_600_p1;
reg   [31:0] grp_fu_311_p0;
reg   [31:0] grp_fu_311_p1;
reg   [31:0] grp_fu_315_p0;
reg   [31:0] grp_fu_315_p1;
reg   [31:0] grp_fu_319_p0;
reg   [31:0] grp_fu_319_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
wire   [8:0] tmp_s_fu_374_p4;
wire   [4:0] lshr_ln29_5_fu_444_p4;
wire   [3:0] tmp_14_fu_459_p4;
wire   [4:0] or_ln46_2_fu_468_p3;
wire   [4:0] or_ln60_2_fu_497_p4;
wire   [4:0] or_ln74_2_fu_511_p3;
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
        v3_fu_92 <= v7_1_reload;
    end else if (((tmp_reg_636 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_92 <= v8_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_356_p3 == 1'd0))) begin
            v49_fu_96 <= add_ln28_fu_396_p2;
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
        icmp_ln31_reg_686 <= icmp_ln31_fu_407_p2;
        v113_0_load_reg_691 <= v113_0_q0;
        v113_1_load_reg_696 <= v113_1_q0;
        v113_2_load_reg_701 <= v113_2_q0;
        v113_3_load_reg_706 <= v113_3_q0;
        v113_4_load_reg_711 <= v113_4_q0;
        v113_5_load_reg_716 <= v113_5_q0;
        v113_6_load_reg_721 <= v113_6_q0;
        v113_7_load_reg_726 <= v113_7_q0;
        v116_0_addr_5_reg_822[0] <= zext_ln60_fu_505_p1[0];
v116_0_addr_5_reg_822[4 : 2] <= zext_ln60_fu_505_p1[4 : 2];
        v116_0_addr_5_reg_822_pp0_iter2_reg[0] <= v116_0_addr_5_reg_822[0];
v116_0_addr_5_reg_822_pp0_iter2_reg[4 : 2] <= v116_0_addr_5_reg_822[4 : 2];
        v116_0_addr_5_reg_822_pp0_iter3_reg[0] <= v116_0_addr_5_reg_822_pp0_iter2_reg[0];
v116_0_addr_5_reg_822_pp0_iter3_reg[4 : 2] <= v116_0_addr_5_reg_822_pp0_iter2_reg[4 : 2];
        v116_0_addr_6_reg_832[4 : 2] <= zext_ln74_fu_518_p1[4 : 2];
        v116_0_addr_6_reg_832_pp0_iter2_reg[4 : 2] <= v116_0_addr_6_reg_832[4 : 2];
        v116_0_addr_6_reg_832_pp0_iter3_reg[4 : 2] <= v116_0_addr_6_reg_832_pp0_iter2_reg[4 : 2];
        v116_0_addr_6_reg_832_pp0_iter4_reg[4 : 2] <= v116_0_addr_6_reg_832_pp0_iter3_reg[4 : 2];
        v116_1_addr_5_reg_827[0] <= zext_ln60_fu_505_p1[0];
v116_1_addr_5_reg_827[4 : 2] <= zext_ln60_fu_505_p1[4 : 2];
        v116_1_addr_5_reg_827_pp0_iter2_reg[0] <= v116_1_addr_5_reg_827[0];
v116_1_addr_5_reg_827_pp0_iter2_reg[4 : 2] <= v116_1_addr_5_reg_827[4 : 2];
        v116_1_addr_5_reg_827_pp0_iter3_reg[0] <= v116_1_addr_5_reg_827_pp0_iter2_reg[0];
v116_1_addr_5_reg_827_pp0_iter3_reg[4 : 2] <= v116_1_addr_5_reg_827_pp0_iter2_reg[4 : 2];
        v116_1_addr_6_reg_837[4 : 2] <= zext_ln74_fu_518_p1[4 : 2];
        v116_1_addr_6_reg_837_pp0_iter2_reg[4 : 2] <= v116_1_addr_6_reg_837[4 : 2];
        v116_1_addr_6_reg_837_pp0_iter3_reg[4 : 2] <= v116_1_addr_6_reg_837_pp0_iter2_reg[4 : 2];
        v116_1_addr_6_reg_837_pp0_iter4_reg[4 : 2] <= v116_1_addr_6_reg_837_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln29_4_reg_640 <= {{ap_sig_allocacmp_v5[5:3]}};
        lshr_ln29_4_reg_640_pp0_iter1_reg <= lshr_ln29_4_reg_640;
        tmp_10_reg_762 <= v5_reg_628[32'd1];
        tmp_reg_636 <= ap_sig_allocacmp_v5[32'd6];
        tmp_reg_636_pp0_iter1_reg <= tmp_reg_636;
        tmp_reg_636_pp0_iter2_reg <= tmp_reg_636_pp0_iter1_reg;
        tmp_reg_636_pp0_iter3_reg <= tmp_reg_636_pp0_iter2_reg;
        v116_0_addr_4_reg_782[4 : 1] <= zext_ln46_fu_476_p1[4 : 1];
        v116_0_addr_4_reg_782_pp0_iter2_reg[4 : 1] <= v116_0_addr_4_reg_782[4 : 1];
        v116_0_addr_4_reg_782_pp0_iter3_reg[4 : 1] <= v116_0_addr_4_reg_782_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_757 <= zext_ln29_fu_453_p1;
        v116_0_addr_reg_757_pp0_iter2_reg <= v116_0_addr_reg_757;
        v116_0_addr_reg_757_pp0_iter3_reg <= v116_0_addr_reg_757_pp0_iter2_reg;
        v116_1_addr_4_reg_787[4 : 1] <= zext_ln46_fu_476_p1[4 : 1];
        v116_1_addr_4_reg_787_pp0_iter2_reg[4 : 1] <= v116_1_addr_4_reg_787[4 : 1];
        v116_1_addr_4_reg_787_pp0_iter3_reg[4 : 1] <= v116_1_addr_4_reg_787_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_777 <= zext_ln29_fu_453_p1;
        v116_1_addr_reg_777_pp0_iter2_reg <= v116_1_addr_reg_777;
        v116_1_addr_reg_777_pp0_iter3_reg <= v116_1_addr_reg_777_pp0_iter2_reg;
        v5_reg_628 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_327 <= v116_0_q1;
        reg_331 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_335 <= grp_fu_428_p_dout0;
        reg_339 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_4_reg_812 <= v116_0_q0;
        v116_1_load_4_reg_817 <= v116_1_q0;
        v11_reg_792 <= grp_fu_436_p_dout0;
        v17_reg_797 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_6_reg_862 <= v116_0_q0;
        v116_1_load_6_reg_867 <= v116_1_q0;
        v23_reg_847 <= grp_fu_436_p_dout0;
        v29_reg_852 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_1_reg_922 <= grp_fu_428_p_dout0;
        v30_reg_927 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_872 <= grp_fu_436_p_dout0;
        v41_reg_877 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_892 <= grp_fu_436_p_dout0;
        v53_reg_897 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_932 <= grp_fu_428_p_dout0;
        v54_reg_937 <= grp_fu_432_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_731 <= v8_fu_415_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_636 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        grp_fu_311_p0 = v45_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p0 = v33_fu_550_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p0 = v21_1_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p0 = v9_fu_532_p1;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_311_p1 = v47_reg_892;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p1 = v35_reg_872;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p1 = v23_reg_847;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p1 = v11_reg_792;
    end else begin
        grp_fu_311_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p0 = v51_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p0 = v39_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p0 = v27_1_fu_546_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p0 = v15_fu_537_p1;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p1 = v53_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p1 = v41_reg_877;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p1 = v29_reg_852;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p1 = v17_reg_797;
    end else begin
        grp_fu_315_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_319_p0 = v46_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_319_p0 = v34_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_319_p0 = v22_fu_436_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_319_p0 = v10_fu_423_p1;
    end else begin
        grp_fu_319_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_319_p1 = v8_reg_731;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_319_p1 = v8_fu_415_p3;
    end else begin
        grp_fu_319_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p0 = v52_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p0 = v40_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_323_p0 = v28_fu_440_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p0 = v16_fu_427_p1;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_323_p1 = v8_reg_731;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p1 = v8_fu_415_p3;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_6_reg_832_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_4_reg_782_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_476_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_5_reg_822_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_757_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_453_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_d0_local = bitcast_ln78_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_573_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_586_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_568_p1;
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
        v116_1_address0_local = v116_1_addr_6_reg_837_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_4_reg_787_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_476_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_5_reg_827_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_777_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_453_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_d0_local = bitcast_ln86_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_582_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_591_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_577_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_636_pp0_iter3_reg == 1'd1))) begin
        v7_2_out_ap_vld = 1'b1;
    end else begin
        v7_2_out_ap_vld = 1'b0;
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
assign add_ln28_fu_396_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign bitcast_ln36_fu_568_p1 = reg_335;
assign bitcast_ln43_fu_577_p1 = reg_339;
assign bitcast_ln50_fu_573_p1 = v24_1_reg_922;
assign bitcast_ln57_fu_582_p1 = v30_reg_927;
assign bitcast_ln64_fu_586_p1 = reg_335;
assign bitcast_ln71_fu_591_p1 = reg_339;
assign bitcast_ln78_fu_596_p1 = v48_reg_932;
assign bitcast_ln86_fu_600_p1 = v54_reg_937;
assign grp_fu_428_p_ce = 1'b1;
assign grp_fu_428_p_din0 = grp_fu_311_p0;
assign grp_fu_428_p_din1 = grp_fu_311_p1;
assign grp_fu_428_p_opcode = 2'd0;
assign grp_fu_432_p_ce = 1'b1;
assign grp_fu_432_p_din0 = grp_fu_315_p0;
assign grp_fu_432_p_din1 = grp_fu_315_p1;
assign grp_fu_432_p_opcode = 2'd0;
assign grp_fu_436_p_ce = 1'b1;
assign grp_fu_436_p_din0 = grp_fu_319_p0;
assign grp_fu_436_p_din1 = grp_fu_319_p1;
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_323_p0;
assign grp_fu_440_p_din1 = grp_fu_323_p1;
assign icmp_ln31_fu_407_p2 = ((v5_reg_628 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_4_fu_364_p4 = {{ap_sig_allocacmp_v5[5:3]}};
assign lshr_ln29_5_fu_444_p4 = {{v5_reg_628[5:1]}};
assign or_ln46_2_fu_468_p3 = {{tmp_14_fu_459_p4}, {1'd1}};
assign or_ln60_2_fu_497_p4 = {{{lshr_ln29_4_reg_640_pp0_iter1_reg}, {1'd1}}, {tmp_10_reg_762}};
assign or_ln74_2_fu_511_p3 = {{lshr_ln29_4_reg_640_pp0_iter1_reg}, {2'd3}};
assign tmp_14_fu_459_p4 = {{v5_reg_628[5:2]}};
assign tmp_fu_356_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_s_fu_374_p4 = {{{lshr_ln}, {2'd2}}, {lshr_ln29_4_fu_364_p4}};
assign v10_fu_423_p1 = v113_0_load_reg_691;
assign v113_0_address0 = zext_ln33_fu_384_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_384_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_384_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_384_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_384_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_384_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_384_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_384_p1;
assign v113_7_ce0 = v113_7_ce0_local;
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
assign v15_fu_537_p1 = reg_331;
assign v16_fu_427_p1 = v113_1_load_reg_696;
assign v21_1_fu_542_p1 = v116_0_load_4_reg_812;
assign v22_fu_436_p1 = v113_2_load_reg_701;
assign v27_1_fu_546_p1 = v116_1_load_4_reg_817;
assign v28_fu_440_p1 = v113_3_load_reg_706;
assign v33_fu_550_p1 = reg_327;
assign v34_fu_489_p1 = v113_4_load_reg_711;
assign v39_fu_555_p1 = reg_331;
assign v40_fu_493_p1 = v113_5_load_reg_716;
assign v45_fu_560_p1 = v116_0_load_6_reg_862;
assign v46_fu_524_p1 = v113_6_load_reg_721;
assign v51_fu_564_p1 = v116_1_load_6_reg_867;
assign v52_fu_528_p1 = v113_7_load_reg_726;
assign v7_2_out = v3_fu_92;
assign v8_fu_415_p3 = ((icmp_ln31_reg_686[0:0] == 1'b1) ? v6_2 : v3_fu_92);
assign v9_fu_532_p1 = reg_327;
assign zext_ln29_fu_453_p1 = lshr_ln29_5_fu_444_p4;
assign zext_ln33_fu_384_p1 = tmp_s_fu_374_p4;
assign zext_ln46_fu_476_p1 = or_ln46_2_fu_468_p3;
assign zext_ln60_fu_505_p1 = or_ln60_2_fu_497_p4;
assign zext_ln74_fu_518_p1 = or_ln74_2_fu_511_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_4_reg_782[0] <= 1'b1;
    v116_0_addr_4_reg_782_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_4_reg_782_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_4_reg_787[0] <= 1'b1;
    v116_1_addr_4_reg_787_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_4_reg_787_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_5_reg_822[1] <= 1'b1;
    v116_0_addr_5_reg_822_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_5_reg_822_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_5_reg_827[1] <= 1'b1;
    v116_1_addr_5_reg_827_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_5_reg_827_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_6_reg_832[1:0] <= 2'b11;
    v116_0_addr_6_reg_832_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_6_reg_832_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_6_reg_832_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_6_reg_837[1:0] <= 2'b11;
    v116_1_addr_6_reg_837_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_6_reg_837_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_6_reg_837_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 