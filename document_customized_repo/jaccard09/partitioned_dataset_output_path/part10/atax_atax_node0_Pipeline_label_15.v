
module atax_atax_node0_Pipeline_label_15 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_3_reload,tmp_49,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v6_3,v7_4_out_i,v7_4_out_o,v7_4_out_o_ap_vld,grp_fu_595_p_din0,grp_fu_595_p_din1,grp_fu_595_p_opcode,grp_fu_595_p_dout0,grp_fu_595_p_ce,grp_fu_599_p_din0,grp_fu_599_p_din1,grp_fu_599_p_opcode,grp_fu_599_p_dout0,grp_fu_599_p_ce,grp_fu_603_p_din0,grp_fu_603_p_din1,grp_fu_603_p_opcode,grp_fu_603_p_dout0,grp_fu_603_p_ce,grp_fu_607_p_din0,grp_fu_607_p_din1,grp_fu_607_p_opcode,grp_fu_607_p_dout0,grp_fu_607_p_ce,grp_fu_611_p_din0,grp_fu_611_p_din1,grp_fu_611_p_dout0,grp_fu_611_p_ce,grp_fu_615_p_din0,grp_fu_615_p_din1,grp_fu_615_p_dout0,grp_fu_615_p_ce,grp_fu_619_p_din0,grp_fu_619_p_din1,grp_fu_619_p_dout0,grp_fu_619_p_ce,grp_fu_623_p_din0,grp_fu_623_p_din1,grp_fu_623_p_dout0,grp_fu_623_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v7_3_reload;
input  [3:0] tmp_49;
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
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
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
input  [31:0] v6_3;
input  [31:0] v7_4_out_i;
output  [31:0] v7_4_out_o;
output   v7_4_out_o_ap_vld;
output  [31:0] grp_fu_595_p_din0;
output  [31:0] grp_fu_595_p_din1;
output  [1:0] grp_fu_595_p_opcode;
input  [31:0] grp_fu_595_p_dout0;
output   grp_fu_595_p_ce;
output  [31:0] grp_fu_599_p_din0;
output  [31:0] grp_fu_599_p_din1;
output  [1:0] grp_fu_599_p_opcode;
input  [31:0] grp_fu_599_p_dout0;
output   grp_fu_599_p_ce;
output  [31:0] grp_fu_603_p_din0;
output  [31:0] grp_fu_603_p_din1;
output  [1:0] grp_fu_603_p_opcode;
input  [31:0] grp_fu_603_p_dout0;
output   grp_fu_603_p_ce;
output  [31:0] grp_fu_607_p_din0;
output  [31:0] grp_fu_607_p_din1;
output  [1:0] grp_fu_607_p_opcode;
input  [31:0] grp_fu_607_p_dout0;
output   grp_fu_607_p_ce;
output  [31:0] grp_fu_611_p_din0;
output  [31:0] grp_fu_611_p_din1;
input  [31:0] grp_fu_611_p_dout0;
output   grp_fu_611_p_ce;
output  [31:0] grp_fu_615_p_din0;
output  [31:0] grp_fu_615_p_din1;
input  [31:0] grp_fu_615_p_dout0;
output   grp_fu_615_p_ce;
output  [31:0] grp_fu_619_p_din0;
output  [31:0] grp_fu_619_p_din1;
input  [31:0] grp_fu_619_p_dout0;
output   grp_fu_619_p_ce;
output  [31:0] grp_fu_623_p_din0;
output  [31:0] grp_fu_623_p_din1;
input  [31:0] grp_fu_623_p_dout0;
output   grp_fu_623_p_ce;
reg ap_idle;
reg[31:0] v7_4_out_o;
reg v7_4_out_o_ap_vld;
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
reg   [0:0] tmp_reg_681;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_344;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_348;
reg   [31:0] reg_352;
reg   [31:0] reg_356;
reg   [31:0] reg_360;
reg   [31:0] reg_364;
reg   [31:0] reg_368;
reg   [31:0] reg_372;
wire   [0:0] tmp_fu_390_p3;
reg   [0:0] tmp_reg_681_pp0_iter1_reg;
reg   [0:0] tmp_reg_681_pp0_iter2_reg;
reg   [0:0] tmp_reg_681_pp0_iter3_reg;
reg   [0:0] tmp_reg_681_pp0_iter4_reg;
reg   [0:0] tmp_reg_681_pp0_iter5_reg;
reg   [2:0] lshr_ln29_7_reg_695;
reg   [2:0] lshr_ln29_7_reg_695_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_434_p2;
reg   [0:0] icmp_ln31_reg_702;
reg   [0:0] tmp_3_reg_717;
wire   [31:0] v8_fu_524_p3;
reg   [31:0] v8_reg_742;
wire   [31:0] v10_fu_534_p1;
wire   [31:0] v16_fu_539_p1;
wire   [31:0] v22_fu_544_p1;
wire   [31:0] v28_fu_549_p1;
wire   [31:0] v34_fu_560_p1;
wire   [31:0] v40_fu_565_p1;
wire   [31:0] v46_fu_570_p1;
wire   [31:0] v52_fu_575_p1;
reg   [2:0] v116_0_addr_reg_790;
reg   [2:0] v116_0_addr_reg_790_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_790_pp0_iter4_reg;
reg   [2:0] v116_0_addr_reg_790_pp0_iter5_reg;
reg   [2:0] v116_0_addr_reg_790_pp0_iter6_reg;
reg   [2:0] v116_1_addr_reg_795;
reg   [2:0] v116_1_addr_reg_795_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_795_pp0_iter4_reg;
reg   [2:0] v116_1_addr_reg_795_pp0_iter5_reg;
reg   [2:0] v116_1_addr_reg_795_pp0_iter6_reg;
reg   [2:0] v116_2_addr_reg_800;
reg   [2:0] v116_2_addr_reg_800_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_800_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_800_pp0_iter5_reg;
reg   [2:0] v116_2_addr_reg_800_pp0_iter6_reg;
reg   [2:0] v116_3_addr_reg_805;
reg   [2:0] v116_3_addr_reg_805_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_805_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_805_pp0_iter5_reg;
reg   [2:0] v116_3_addr_reg_805_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_810;
reg   [2:0] v116_4_addr_reg_810_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_810_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_810_pp0_iter5_reg;
reg   [2:0] v116_4_addr_reg_810_pp0_iter6_reg;
reg   [2:0] v116_5_addr_reg_816;
reg   [2:0] v116_5_addr_reg_816_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_816_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_816_pp0_iter5_reg;
reg   [2:0] v116_5_addr_reg_816_pp0_iter6_reg;
reg   [2:0] v116_6_addr_reg_822;
reg   [2:0] v116_6_addr_reg_822_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_822_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_822_pp0_iter5_reg;
reg   [2:0] v116_6_addr_reg_822_pp0_iter6_reg;
reg   [2:0] v116_7_addr_reg_828;
reg   [2:0] v116_7_addr_reg_828_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_828_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_828_pp0_iter5_reg;
reg   [2:0] v116_7_addr_reg_828_pp0_iter6_reg;
reg   [31:0] v116_0_load_reg_834;
reg   [31:0] v11_reg_839;
reg   [31:0] v17_reg_844;
reg   [31:0] v23_reg_849;
reg   [31:0] v29_reg_854;
reg   [31:0] v116_1_load_reg_859;
reg   [31:0] v116_2_load_reg_864;
reg   [31:0] v116_3_load_reg_869;
reg   [31:0] v116_4_load_reg_874;
reg   [31:0] v116_5_load_reg_879;
reg   [31:0] v116_6_load_reg_884;
reg   [31:0] v116_7_load_reg_889;
wire   [31:0] v9_fu_591_p1;
reg   [31:0] v35_reg_899;
reg   [31:0] v41_reg_904;
reg   [31:0] v47_reg_909;
reg   [31:0] v53_reg_914;
wire   [31:0] v15_fu_595_p1;
wire   [31:0] v21_fu_599_p1;
wire   [31:0] v27_fu_603_p1;
wire   [31:0] v33_fu_607_p1;
wire   [31:0] v39_fu_611_p1;
wire   [31:0] v45_fu_615_p1;
wire   [31:0] v51_fu_619_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln33_fu_418_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_462_p1;
wire   [63:0] zext_ln61_fu_498_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_fu_514_p1;
wire   [63:0] zext_ln29_fu_580_p1;
wire    ap_loop_init;
reg   [6:0] v49_fu_88;
wire   [6:0] add_ln28_fu_476_p2;
reg   [6:0] ap_sig_allocacmp_v5_1;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_623_p1;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_628_p1;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_633_p1;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_638_p1;
reg    v116_4_ce1_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_643_p1;
reg    v116_4_ce0_local;
reg    v116_5_ce1_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_648_p1;
reg    v116_5_ce0_local;
reg    v116_6_ce1_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_653_p1;
reg    v116_6_ce0_local;
reg    v116_7_ce1_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_658_p1;
reg    v116_7_ce0_local;
reg   [31:0] grp_fu_312_p0;
reg   [31:0] grp_fu_312_p1;
reg   [31:0] grp_fu_316_p0;
reg   [31:0] grp_fu_316_p1;
reg   [31:0] grp_fu_320_p0;
reg   [31:0] grp_fu_320_p1;
reg   [31:0] grp_fu_324_p0;
reg   [31:0] grp_fu_324_p1;
reg   [31:0] grp_fu_328_p0;
reg   [31:0] grp_fu_328_p1;
reg   [31:0] grp_fu_332_p0;
reg   [31:0] grp_fu_332_p1;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
wire   [4:0] lshr_ln29_6_fu_398_p4;
wire   [10:0] tmp_s_fu_408_p4;
wire   [3:0] tmp_1_fu_440_p4;
wire   [10:0] tmp_2_fu_450_p5;
wire   [10:0] tmp_4_fu_487_p6;
wire   [10:0] tmp_5_fu_504_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage0;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_390_p3 == 1'd0))) begin
            v49_fu_88 <= add_ln28_fu_476_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_702 <= icmp_ln31_fu_434_p2;
        lshr_ln29_7_reg_695 <= {{ap_sig_allocacmp_v5_1[5:3]}};
        lshr_ln29_7_reg_695_pp0_iter1_reg <= lshr_ln29_7_reg_695;
        tmp_3_reg_717 <= ap_sig_allocacmp_v5_1[32'd1];
        tmp_reg_681 <= ap_sig_allocacmp_v5_1[32'd6];
        tmp_reg_681_pp0_iter1_reg <= tmp_reg_681;
        tmp_reg_681_pp0_iter2_reg <= tmp_reg_681_pp0_iter1_reg;
        tmp_reg_681_pp0_iter3_reg <= tmp_reg_681_pp0_iter2_reg;
        tmp_reg_681_pp0_iter4_reg <= tmp_reg_681_pp0_iter3_reg;
        tmp_reg_681_pp0_iter5_reg <= tmp_reg_681_pp0_iter4_reg;
        v116_0_addr_reg_790 <= zext_ln29_fu_580_p1;
        v116_0_addr_reg_790_pp0_iter3_reg <= v116_0_addr_reg_790;
        v116_0_addr_reg_790_pp0_iter4_reg <= v116_0_addr_reg_790_pp0_iter3_reg;
        v116_0_addr_reg_790_pp0_iter5_reg <= v116_0_addr_reg_790_pp0_iter4_reg;
        v116_0_addr_reg_790_pp0_iter6_reg <= v116_0_addr_reg_790_pp0_iter5_reg;
        v116_1_addr_reg_795 <= zext_ln29_fu_580_p1;
        v116_1_addr_reg_795_pp0_iter3_reg <= v116_1_addr_reg_795;
        v116_1_addr_reg_795_pp0_iter4_reg <= v116_1_addr_reg_795_pp0_iter3_reg;
        v116_1_addr_reg_795_pp0_iter5_reg <= v116_1_addr_reg_795_pp0_iter4_reg;
        v116_1_addr_reg_795_pp0_iter6_reg <= v116_1_addr_reg_795_pp0_iter5_reg;
        v116_2_addr_reg_800 <= zext_ln29_fu_580_p1;
        v116_2_addr_reg_800_pp0_iter3_reg <= v116_2_addr_reg_800;
        v116_2_addr_reg_800_pp0_iter4_reg <= v116_2_addr_reg_800_pp0_iter3_reg;
        v116_2_addr_reg_800_pp0_iter5_reg <= v116_2_addr_reg_800_pp0_iter4_reg;
        v116_2_addr_reg_800_pp0_iter6_reg <= v116_2_addr_reg_800_pp0_iter5_reg;
        v116_3_addr_reg_805 <= zext_ln29_fu_580_p1;
        v116_3_addr_reg_805_pp0_iter3_reg <= v116_3_addr_reg_805;
        v116_3_addr_reg_805_pp0_iter4_reg <= v116_3_addr_reg_805_pp0_iter3_reg;
        v116_3_addr_reg_805_pp0_iter5_reg <= v116_3_addr_reg_805_pp0_iter4_reg;
        v116_3_addr_reg_805_pp0_iter6_reg <= v116_3_addr_reg_805_pp0_iter5_reg;
        v116_4_addr_reg_810 <= zext_ln29_fu_580_p1;
        v116_4_addr_reg_810_pp0_iter3_reg <= v116_4_addr_reg_810;
        v116_4_addr_reg_810_pp0_iter4_reg <= v116_4_addr_reg_810_pp0_iter3_reg;
        v116_4_addr_reg_810_pp0_iter5_reg <= v116_4_addr_reg_810_pp0_iter4_reg;
        v116_4_addr_reg_810_pp0_iter6_reg <= v116_4_addr_reg_810_pp0_iter5_reg;
        v116_5_addr_reg_816 <= zext_ln29_fu_580_p1;
        v116_5_addr_reg_816_pp0_iter3_reg <= v116_5_addr_reg_816;
        v116_5_addr_reg_816_pp0_iter4_reg <= v116_5_addr_reg_816_pp0_iter3_reg;
        v116_5_addr_reg_816_pp0_iter5_reg <= v116_5_addr_reg_816_pp0_iter4_reg;
        v116_5_addr_reg_816_pp0_iter6_reg <= v116_5_addr_reg_816_pp0_iter5_reg;
        v116_6_addr_reg_822 <= zext_ln29_fu_580_p1;
        v116_6_addr_reg_822_pp0_iter3_reg <= v116_6_addr_reg_822;
        v116_6_addr_reg_822_pp0_iter4_reg <= v116_6_addr_reg_822_pp0_iter3_reg;
        v116_6_addr_reg_822_pp0_iter5_reg <= v116_6_addr_reg_822_pp0_iter4_reg;
        v116_6_addr_reg_822_pp0_iter6_reg <= v116_6_addr_reg_822_pp0_iter5_reg;
        v116_7_addr_reg_828 <= zext_ln29_fu_580_p1;
        v116_7_addr_reg_828_pp0_iter3_reg <= v116_7_addr_reg_828;
        v116_7_addr_reg_828_pp0_iter4_reg <= v116_7_addr_reg_828_pp0_iter3_reg;
        v116_7_addr_reg_828_pp0_iter5_reg <= v116_7_addr_reg_828_pp0_iter4_reg;
        v116_7_addr_reg_828_pp0_iter6_reg <= v116_7_addr_reg_828_pp0_iter5_reg;
        v8_reg_742 <= v8_fu_524_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_344 <= v113_0_q1;
        reg_348 <= v113_1_q1;
        reg_352 <= v113_0_q0;
        reg_356 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_360 <= grp_fu_595_p_dout0;
        reg_364 <= grp_fu_599_p_dout0;
        reg_368 <= grp_fu_603_p_dout0;
        reg_372 <= grp_fu_607_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_834 <= v116_0_q0;
        v116_1_load_reg_859 <= v116_1_q0;
        v116_2_load_reg_864 <= v116_2_q0;
        v116_3_load_reg_869 <= v116_3_q0;
        v116_4_load_reg_874 <= v116_4_q1;
        v116_5_load_reg_879 <= v116_5_q1;
        v116_6_load_reg_884 <= v116_6_q1;
        v116_7_load_reg_889 <= v116_7_q1;
        v11_reg_839 <= grp_fu_611_p_dout0;
        v17_reg_844 <= grp_fu_615_p_dout0;
        v23_reg_849 <= grp_fu_619_p_dout0;
        v29_reg_854 <= grp_fu_623_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_899 <= grp_fu_611_p_dout0;
        v41_reg_904 <= grp_fu_615_p_dout0;
        v47_reg_909 <= grp_fu_619_p_dout0;
        v53_reg_914 <= grp_fu_623_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_681 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_reg_681_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
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
        ap_sig_allocacmp_v5_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5_1 = v49_fu_88;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_312_p0 = v33_fu_607_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_312_p0 = v9_fu_591_p1;
        end else begin
            grp_fu_312_p0 = 'bx;
        end
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_312_p1 = v35_reg_899;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_312_p1 = v11_reg_839;
        end else begin
            grp_fu_312_p1 = 'bx;
        end
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_316_p0 = v39_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_316_p0 = v15_fu_595_p1;
        end else begin
            grp_fu_316_p0 = 'bx;
        end
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_316_p1 = v41_reg_904;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_316_p1 = v17_reg_844;
        end else begin
            grp_fu_316_p1 = 'bx;
        end
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_320_p0 = v45_fu_615_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_320_p0 = v21_fu_599_p1;
        end else begin
            grp_fu_320_p0 = 'bx;
        end
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_320_p1 = v47_reg_909;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_320_p1 = v23_reg_849;
        end else begin
            grp_fu_320_p1 = 'bx;
        end
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_324_p0 = v51_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_324_p0 = v27_fu_603_p1;
        end else begin
            grp_fu_324_p0 = 'bx;
        end
    end else begin
        grp_fu_324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_324_p1 = v53_reg_914;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_324_p1 = v29_reg_854;
        end else begin
            grp_fu_324_p1 = 'bx;
        end
    end else begin
        grp_fu_324_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_328_p0 = v34_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_328_p0 = v10_fu_534_p1;
        end else begin
            grp_fu_328_p0 = 'bx;
        end
    end else begin
        grp_fu_328_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_328_p1 = v8_reg_742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_328_p1 = v8_fu_524_p3;
        end else begin
            grp_fu_328_p1 = 'bx;
        end
    end else begin
        grp_fu_328_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_332_p0 = v40_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_332_p0 = v16_fu_539_p1;
        end else begin
            grp_fu_332_p0 = 'bx;
        end
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_332_p1 = v8_reg_742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_332_p1 = v8_fu_524_p3;
        end else begin
            grp_fu_332_p1 = 'bx;
        end
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_336_p0 = v46_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_336_p0 = v22_fu_544_p1;
        end else begin
            grp_fu_336_p0 = 'bx;
        end
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_336_p1 = v8_reg_742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_336_p1 = v8_fu_524_p3;
        end else begin
            grp_fu_336_p1 = 'bx;
        end
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_340_p0 = v52_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_340_p0 = v28_fu_549_p1;
        end else begin
            grp_fu_340_p0 = 'bx;
        end
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_340_p1 = v8_reg_742;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_340_p1 = v8_fu_524_p3;
        end else begin
            grp_fu_340_p1 = 'bx;
        end
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln75_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address0_local = zext_ln47_fu_462_p1;
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
            v113_0_address1_local = zext_ln61_fu_498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address1_local = zext_ln33_fu_418_p1;
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
            v113_1_address0_local = zext_ln75_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address0_local = zext_ln47_fu_462_p1;
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
            v113_1_address1_local = zext_ln61_fu_498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address1_local = zext_ln33_fu_418_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_reg_790_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln29_fu_580_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_reg_795_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln29_fu_580_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_reg_800_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln29_fu_580_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_reg_805_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln29_fu_580_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_ce1_local = 1'b1;
    end else begin
        v116_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_ce1_local = 1'b1;
    end else begin
        v116_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v7_4_out_o = v7_3_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v7_4_out_o = v8_fu_524_p3;
        end else begin
            v7_4_out_o = v7_4_out_i;
        end
    end else begin
        v7_4_out_o = v7_4_out_i;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v7_4_out_o_ap_vld = 1'b1;
    end else begin
        v7_4_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln28_fu_476_p2 = (ap_sig_allocacmp_v5_1 + 7'd8);
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
assign bitcast_ln36_fu_623_p1 = reg_360;
assign bitcast_ln43_fu_628_p1 = reg_364;
assign bitcast_ln50_fu_633_p1 = reg_368;
assign bitcast_ln57_fu_638_p1 = reg_372;
assign bitcast_ln64_fu_643_p1 = reg_360;
assign bitcast_ln71_fu_648_p1 = reg_364;
assign bitcast_ln78_fu_653_p1 = reg_368;
assign bitcast_ln86_fu_658_p1 = reg_372;
assign grp_fu_595_p_ce = 1'b1;
assign grp_fu_595_p_din0 = grp_fu_312_p0;
assign grp_fu_595_p_din1 = grp_fu_312_p1;
assign grp_fu_595_p_opcode = 2'd0;
assign grp_fu_599_p_ce = 1'b1;
assign grp_fu_599_p_din0 = grp_fu_316_p0;
assign grp_fu_599_p_din1 = grp_fu_316_p1;
assign grp_fu_599_p_opcode = 2'd0;
assign grp_fu_603_p_ce = 1'b1;
assign grp_fu_603_p_din0 = grp_fu_320_p0;
assign grp_fu_603_p_din1 = grp_fu_320_p1;
assign grp_fu_603_p_opcode = 2'd0;
assign grp_fu_607_p_ce = 1'b1;
assign grp_fu_607_p_din0 = grp_fu_324_p0;
assign grp_fu_607_p_din1 = grp_fu_324_p1;
assign grp_fu_607_p_opcode = 2'd0;
assign grp_fu_611_p_ce = 1'b1;
assign grp_fu_611_p_din0 = grp_fu_328_p0;
assign grp_fu_611_p_din1 = grp_fu_328_p1;
assign grp_fu_615_p_ce = 1'b1;
assign grp_fu_615_p_din0 = grp_fu_332_p0;
assign grp_fu_615_p_din1 = grp_fu_332_p1;
assign grp_fu_619_p_ce = 1'b1;
assign grp_fu_619_p_din0 = grp_fu_336_p0;
assign grp_fu_619_p_din1 = grp_fu_336_p1;
assign grp_fu_623_p_ce = 1'b1;
assign grp_fu_623_p_din0 = grp_fu_340_p0;
assign grp_fu_623_p_din1 = grp_fu_340_p1;
assign icmp_ln31_fu_434_p2 = ((ap_sig_allocacmp_v5_1 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_6_fu_398_p4 = {{ap_sig_allocacmp_v5_1[5:1]}};
assign tmp_1_fu_440_p4 = {{ap_sig_allocacmp_v5_1[5:2]}};
assign tmp_2_fu_450_p5 = {{{{tmp_49}, {2'd3}}, {tmp_1_fu_440_p4}}, {1'd1}};
assign tmp_4_fu_487_p6 = {{{{{tmp_49}, {2'd3}}, {lshr_ln29_7_reg_695}}, {1'd1}}, {tmp_3_reg_717}};
assign tmp_5_fu_504_p5 = {{{{tmp_49}, {2'd3}}, {lshr_ln29_7_reg_695}}, {2'd3}};
assign tmp_fu_390_p3 = ap_sig_allocacmp_v5_1[32'd6];
assign tmp_s_fu_408_p4 = {{{tmp_49}, {2'd3}}, {lshr_ln29_6_fu_398_p4}};
assign v10_fu_534_p1 = reg_344;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_d0 = bitcast_ln36_fu_623_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_d0 = bitcast_ln43_fu_628_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_d0 = bitcast_ln50_fu_633_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_d0 = bitcast_ln57_fu_638_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_addr_reg_810_pp0_iter6_reg;
assign v116_4_address1 = zext_ln29_fu_580_p1;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_643_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_addr_reg_816_pp0_iter6_reg;
assign v116_5_address1 = zext_ln29_fu_580_p1;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_648_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_addr_reg_822_pp0_iter6_reg;
assign v116_6_address1 = zext_ln29_fu_580_p1;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_ce1 = v116_6_ce1_local;
assign v116_6_d0 = bitcast_ln78_fu_653_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_addr_reg_828_pp0_iter6_reg;
assign v116_7_address1 = zext_ln29_fu_580_p1;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_ce1 = v116_7_ce1_local;
assign v116_7_d0 = bitcast_ln86_fu_658_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v15_fu_595_p1 = v116_1_load_reg_859;
assign v16_fu_539_p1 = reg_348;
assign v21_fu_599_p1 = v116_2_load_reg_864;
assign v22_fu_544_p1 = reg_352;
assign v27_fu_603_p1 = v116_3_load_reg_869;
assign v28_fu_549_p1 = reg_356;
assign v33_fu_607_p1 = v116_4_load_reg_874;
assign v34_fu_560_p1 = reg_344;
assign v39_fu_611_p1 = v116_5_load_reg_879;
assign v40_fu_565_p1 = reg_348;
assign v45_fu_615_p1 = v116_6_load_reg_884;
assign v46_fu_570_p1 = reg_352;
assign v51_fu_619_p1 = v116_7_load_reg_889;
assign v52_fu_575_p1 = reg_356;
assign v8_fu_524_p3 = ((icmp_ln31_reg_702[0:0] == 1'b1) ? v6_3 : v7_4_out_i);
assign v9_fu_591_p1 = v116_0_load_reg_834;
assign zext_ln29_fu_580_p1 = lshr_ln29_7_reg_695_pp0_iter1_reg;
assign zext_ln33_fu_418_p1 = tmp_s_fu_408_p4;
assign zext_ln47_fu_462_p1 = tmp_2_fu_450_p5;
assign zext_ln61_fu_498_p1 = tmp_4_fu_487_p6;
assign zext_ln75_fu_514_p1 = tmp_5_fu_504_p5;
endmodule 
