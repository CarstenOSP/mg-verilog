
module atax_atax_node0_Pipeline_label_110 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_4_reload,zext_ln33_5,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_5,tmp_305,empty,v7_5_out,v7_5_out_ap_vld,grp_fu_711_p_din0,grp_fu_711_p_din1,grp_fu_711_p_opcode,grp_fu_711_p_dout0,grp_fu_711_p_ce,grp_fu_715_p_din0,grp_fu_715_p_din1,grp_fu_715_p_opcode,grp_fu_715_p_dout0,grp_fu_715_p_ce,grp_fu_719_p_din0,grp_fu_719_p_din1,grp_fu_719_p_dout0,grp_fu_719_p_ce,grp_fu_723_p_din0,grp_fu_723_p_din1,grp_fu_723_p_dout0,grp_fu_723_p_ce);  
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
input  [31:0] v7_4_reload;
input  [11:0] zext_ln33_5;
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
input  [31:0] v6_5;
input  [2:0] tmp_305;
input  [0:0] empty;
output  [31:0] v7_5_out;
output   v7_5_out_ap_vld;
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
reg v7_5_out_ap_vld;
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
reg   [0:0] tmp_27_reg_787;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_314;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_318;
reg   [31:0] reg_322;
reg   [31:0] reg_326;
reg   [31:0] reg_330;
reg   [31:0] reg_334;
reg   [6:0] v5_reg_778;
reg   [0:0] tmp_27_reg_787_pp0_iter1_reg;
reg   [0:0] tmp_27_reg_787_pp0_iter2_reg;
reg   [0:0] tmp_27_reg_787_pp0_iter3_reg;
wire   [4:0] lshr_ln29_5_fu_374_p4;
reg   [4:0] lshr_ln29_5_reg_796;
wire   [0:0] icmp_ln31_fu_405_p2;
reg   [0:0] icmp_ln31_reg_806;
wire   [3:0] tmp_111_fu_410_p4;
reg   [3:0] tmp_111_reg_811;
wire   [31:0] v8_fu_460_p3;
reg   [31:0] v8_reg_826;
wire   [31:0] v10_fu_468_p1;
wire   [31:0] v16_fu_473_p1;
wire   [2:0] tmp_114_fu_478_p4;
reg   [2:0] tmp_114_reg_842;
wire   [0:0] tmp_28_fu_506_p3;
reg   [0:0] tmp_28_reg_855;
wire   [31:0] v22_fu_541_p1;
wire   [31:0] v28_fu_546_p1;
reg   [4:0] v116_0_addr_reg_885;
reg   [4:0] v116_0_addr_reg_885_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_885_pp0_iter3_reg;
wire   [31:0] v34_fu_615_p1;
wire   [31:0] v40_fu_620_p1;
reg   [4:0] v116_1_addr_reg_900;
reg   [4:0] v116_1_addr_reg_900_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_900_pp0_iter3_reg;
reg   [4:0] v116_0_addr_16_reg_905;
reg   [4:0] v116_0_addr_16_reg_905_pp0_iter2_reg;
reg   [4:0] v116_0_addr_16_reg_905_pp0_iter3_reg;
reg   [4:0] v116_1_addr_16_reg_910;
reg   [4:0] v116_1_addr_16_reg_910_pp0_iter2_reg;
reg   [4:0] v116_1_addr_16_reg_910_pp0_iter3_reg;
reg   [31:0] v11_reg_915;
reg   [31:0] v17_reg_920;
wire   [31:0] v46_fu_652_p1;
wire   [31:0] v52_fu_657_p1;
reg   [31:0] v116_0_load_16_reg_935;
reg   [31:0] v116_1_load_16_reg_940;
reg   [4:0] v116_0_addr_17_reg_945;
reg   [4:0] v116_0_addr_17_reg_945_pp0_iter2_reg;
reg   [4:0] v116_0_addr_17_reg_945_pp0_iter3_reg;
reg   [4:0] v116_1_addr_17_reg_950;
reg   [4:0] v116_1_addr_17_reg_950_pp0_iter2_reg;
reg   [4:0] v116_1_addr_17_reg_950_pp0_iter3_reg;
reg   [4:0] v116_0_addr_18_reg_955;
reg   [4:0] v116_0_addr_18_reg_955_pp0_iter2_reg;
reg   [4:0] v116_0_addr_18_reg_955_pp0_iter3_reg;
reg   [4:0] v116_0_addr_18_reg_955_pp0_iter4_reg;
reg   [4:0] v116_1_addr_18_reg_960;
reg   [4:0] v116_1_addr_18_reg_960_pp0_iter2_reg;
reg   [4:0] v116_1_addr_18_reg_960_pp0_iter3_reg;
reg   [4:0] v116_1_addr_18_reg_960_pp0_iter4_reg;
wire   [31:0] v9_fu_662_p1;
reg   [31:0] v23_reg_970;
reg   [31:0] v29_reg_975;
wire   [31:0] v15_fu_667_p1;
reg   [31:0] v116_0_load_18_reg_985;
reg   [31:0] v116_1_load_18_reg_990;
reg   [31:0] v35_reg_995;
reg   [31:0] v41_reg_1000;
wire   [31:0] v21_fu_672_p1;
wire   [31:0] v27_fu_676_p1;
reg   [31:0] v47_reg_1015;
reg   [31:0] v53_reg_1020;
wire   [31:0] v33_fu_680_p1;
wire   [31:0] v39_fu_685_p1;
wire   [31:0] v45_1_fu_690_p1;
wire   [31:0] v51_fu_694_p1;
reg   [31:0] v24_reg_1045;
reg   [31:0] v30_reg_1050;
reg   [31:0] v48_reg_1055;
reg   [31:0] v54_reg_1060;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_4_fu_369_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_400_p1;
wire   [63:0] zext_ln47_fu_433_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_fu_452_p1;
wire   [63:0] zext_ln61_fu_501_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln68_fu_531_p1;
wire   [63:0] zext_ln75_fu_564_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_fu_582_p1;
wire   [63:0] zext_ln29_fu_597_p1;
wire   [63:0] zext_ln46_fu_609_p1;
wire   [63:0] zext_ln60_fu_633_p1;
wire   [63:0] zext_ln74_fu_646_p1;
reg   [31:0] v3_fu_98;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v49_fu_102;
wire   [6:0] add_ln28_fu_587_p2;
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
wire   [31:0] bitcast_ln36_fu_698_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_703_p1;
wire   [31:0] bitcast_ln64_fu_716_p1;
wire   [31:0] bitcast_ln78_fu_726_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_707_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_712_p1;
wire   [31:0] bitcast_ln71_fu_721_p1;
wire   [31:0] bitcast_ln86_fu_730_p1;
reg   [31:0] grp_fu_298_p0;
reg   [31:0] grp_fu_298_p1;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
reg   [31:0] grp_fu_310_p0;
reg   [31:0] grp_fu_310_p1;
wire   [11:0] zext_ln33_fu_359_p1;
wire   [11:0] add_ln33_fu_363_p2;
wire   [11:0] tmp_s_fu_384_p7;
wire   [11:0] tmp_112_fu_419_p7;
wire   [11:0] tmp_113_fu_438_p7;
wire   [11:0] tmp_115_fu_487_p7;
wire   [11:0] tmp_116_fu_513_p9;
wire   [11:0] tmp_117_fu_551_p7;
wire   [11:0] tmp_118_fu_569_p7;
wire   [4:0] or_ln46_4_fu_602_p3;
wire   [4:0] or_ln60_4_fu_625_p4;
wire   [4:0] or_ln74_4_fu_639_p3;
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
#0 v3_fu_98 = 32'd0;
#0 v49_fu_102 = 7'd0;
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
        v3_fu_98 <= v7_4_reload;
    end else if (((tmp_27_reg_787 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_98 <= v8_fu_460_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_102 <= 7'd0;
    end else if (((tmp_27_reg_787 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_102 <= add_ln28_fu_587_p2;
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
        icmp_ln31_reg_806 <= icmp_ln31_fu_405_p2;
        tmp_111_reg_811 <= {{v5_reg_778[5:2]}};
        v116_0_addr_17_reg_945[0] <= zext_ln60_fu_633_p1[0];
v116_0_addr_17_reg_945[4 : 2] <= zext_ln60_fu_633_p1[4 : 2];
        v116_0_addr_17_reg_945_pp0_iter2_reg[0] <= v116_0_addr_17_reg_945[0];
v116_0_addr_17_reg_945_pp0_iter2_reg[4 : 2] <= v116_0_addr_17_reg_945[4 : 2];
        v116_0_addr_17_reg_945_pp0_iter3_reg[0] <= v116_0_addr_17_reg_945_pp0_iter2_reg[0];
v116_0_addr_17_reg_945_pp0_iter3_reg[4 : 2] <= v116_0_addr_17_reg_945_pp0_iter2_reg[4 : 2];
        v116_0_addr_18_reg_955[4 : 2] <= zext_ln74_fu_646_p1[4 : 2];
        v116_0_addr_18_reg_955_pp0_iter2_reg[4 : 2] <= v116_0_addr_18_reg_955[4 : 2];
        v116_0_addr_18_reg_955_pp0_iter3_reg[4 : 2] <= v116_0_addr_18_reg_955_pp0_iter2_reg[4 : 2];
        v116_0_addr_18_reg_955_pp0_iter4_reg[4 : 2] <= v116_0_addr_18_reg_955_pp0_iter3_reg[4 : 2];
        v116_1_addr_17_reg_950[0] <= zext_ln60_fu_633_p1[0];
v116_1_addr_17_reg_950[4 : 2] <= zext_ln60_fu_633_p1[4 : 2];
        v116_1_addr_17_reg_950_pp0_iter2_reg[0] <= v116_1_addr_17_reg_950[0];
v116_1_addr_17_reg_950_pp0_iter2_reg[4 : 2] <= v116_1_addr_17_reg_950[4 : 2];
        v116_1_addr_17_reg_950_pp0_iter3_reg[0] <= v116_1_addr_17_reg_950_pp0_iter2_reg[0];
v116_1_addr_17_reg_950_pp0_iter3_reg[4 : 2] <= v116_1_addr_17_reg_950_pp0_iter2_reg[4 : 2];
        v116_1_addr_18_reg_960[4 : 2] <= zext_ln74_fu_646_p1[4 : 2];
        v116_1_addr_18_reg_960_pp0_iter2_reg[4 : 2] <= v116_1_addr_18_reg_960[4 : 2];
        v116_1_addr_18_reg_960_pp0_iter3_reg[4 : 2] <= v116_1_addr_18_reg_960_pp0_iter2_reg[4 : 2];
        v116_1_addr_18_reg_960_pp0_iter4_reg[4 : 2] <= v116_1_addr_18_reg_960_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln29_5_reg_796 <= {{ap_sig_allocacmp_v5[5:1]}};
        tmp_27_reg_787 <= ap_sig_allocacmp_v5[32'd6];
        tmp_27_reg_787_pp0_iter1_reg <= tmp_27_reg_787;
        tmp_27_reg_787_pp0_iter2_reg <= tmp_27_reg_787_pp0_iter1_reg;
        tmp_27_reg_787_pp0_iter3_reg <= tmp_27_reg_787_pp0_iter2_reg;
        v116_0_addr_16_reg_905[4 : 1] <= zext_ln46_fu_609_p1[4 : 1];
        v116_0_addr_16_reg_905_pp0_iter2_reg[4 : 1] <= v116_0_addr_16_reg_905[4 : 1];
        v116_0_addr_16_reg_905_pp0_iter3_reg[4 : 1] <= v116_0_addr_16_reg_905_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_885 <= zext_ln29_fu_597_p1;
        v116_0_addr_reg_885_pp0_iter2_reg <= v116_0_addr_reg_885;
        v116_0_addr_reg_885_pp0_iter3_reg <= v116_0_addr_reg_885_pp0_iter2_reg;
        v116_1_addr_16_reg_910[4 : 1] <= zext_ln46_fu_609_p1[4 : 1];
        v116_1_addr_16_reg_910_pp0_iter2_reg[4 : 1] <= v116_1_addr_16_reg_910[4 : 1];
        v116_1_addr_16_reg_910_pp0_iter3_reg[4 : 1] <= v116_1_addr_16_reg_910_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_900 <= zext_ln29_fu_597_p1;
        v116_1_addr_reg_900_pp0_iter2_reg <= v116_1_addr_reg_900;
        v116_1_addr_reg_900_pp0_iter3_reg <= v116_1_addr_reg_900_pp0_iter2_reg;
        v5_reg_778 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_314 <= v113_q1;
        reg_318 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_322 <= v116_0_q1;
        reg_326 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_330 <= grp_fu_711_p_dout0;
        reg_334 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_114_reg_842 <= {{v5_reg_778[5:3]}};
        tmp_28_reg_855 <= v5_reg_778[32'd1];
        v8_reg_826 <= v8_fu_460_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_16_reg_935 <= v116_0_q0;
        v116_1_load_16_reg_940 <= v116_1_q0;
        v11_reg_915 <= grp_fu_719_p_dout0;
        v17_reg_920 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_18_reg_985 <= v116_0_q0;
        v116_1_load_18_reg_990 <= v116_1_q0;
        v23_reg_970 <= grp_fu_719_p_dout0;
        v29_reg_975 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_1045 <= grp_fu_711_p_dout0;
        v30_reg_1050 <= grp_fu_715_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_995 <= grp_fu_719_p_dout0;
        v41_reg_1000 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_1015 <= grp_fu_719_p_dout0;
        v53_reg_1020 <= grp_fu_723_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1055 <= grp_fu_711_p_dout0;
        v54_reg_1060 <= grp_fu_715_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_27_reg_787 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = v45_1_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = v33_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p0 = v21_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = v9_fu_662_p1;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p1 = v47_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p1 = v35_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_298_p1 = v23_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p1 = v11_reg_915;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = v51_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = v39_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p0 = v27_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = v15_fu_667_p1;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p1 = v53_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p1 = v41_reg_1000;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_302_p1 = v29_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p1 = v17_reg_920;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_306_p0 = v46_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_306_p0 = v34_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_306_p0 = v22_fu_541_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p0 = v10_fu_468_p1;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_306_p1 = v8_reg_826;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_306_p1 = v8_fu_460_p3;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_310_p0 = v52_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_310_p0 = v40_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_310_p0 = v28_fu_546_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_310_p0 = v16_fu_473_p1;
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_310_p1 = v8_reg_826;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_310_p1 = v8_fu_460_p3;
    end else begin
        grp_fu_310_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_582_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_531_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_452_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_400_p1;
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
            v113_address1_local = zext_ln75_fu_564_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_4_fu_369_p1;
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
        v116_0_address0_local = v116_0_addr_18_reg_955_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_16_reg_905_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_609_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_17_reg_945_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_885_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_597_p1;
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
        v116_0_d0_local = bitcast_ln78_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_703_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_698_p1;
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
        v116_1_address0_local = v116_1_addr_18_reg_960_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_16_reg_910_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_609_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_17_reg_950_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_900_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_597_p1;
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
        v116_1_d0_local = bitcast_ln86_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_712_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_721_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_707_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_27_reg_787_pp0_iter3_reg == 1'd1))) begin
        v7_5_out_ap_vld = 1'b1;
    end else begin
        v7_5_out_ap_vld = 1'b0;
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
assign add_ln28_fu_587_p2 = (v5_reg_778 + 7'd8);
assign add_ln33_fu_363_p2 = (zext_ln33_5 + zext_ln33_fu_359_p1);
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
assign bitcast_ln36_fu_698_p1 = reg_330;
assign bitcast_ln43_fu_707_p1 = reg_334;
assign bitcast_ln50_fu_703_p1 = v24_reg_1045;
assign bitcast_ln57_fu_712_p1 = v30_reg_1050;
assign bitcast_ln64_fu_716_p1 = reg_330;
assign bitcast_ln71_fu_721_p1 = reg_334;
assign bitcast_ln78_fu_726_p1 = v48_reg_1055;
assign bitcast_ln86_fu_730_p1 = v54_reg_1060;
assign grp_fu_711_p_ce = 1'b1;
assign grp_fu_711_p_din0 = grp_fu_298_p0;
assign grp_fu_711_p_din1 = grp_fu_298_p1;
assign grp_fu_711_p_opcode = 2'd0;
assign grp_fu_715_p_ce = 1'b1;
assign grp_fu_715_p_din0 = grp_fu_302_p0;
assign grp_fu_715_p_din1 = grp_fu_302_p1;
assign grp_fu_715_p_opcode = 2'd0;
assign grp_fu_719_p_ce = 1'b1;
assign grp_fu_719_p_din0 = grp_fu_306_p0;
assign grp_fu_719_p_din1 = grp_fu_306_p1;
assign grp_fu_723_p_ce = 1'b1;
assign grp_fu_723_p_din0 = grp_fu_310_p0;
assign grp_fu_723_p_din1 = grp_fu_310_p1;
assign icmp_ln31_fu_405_p2 = ((v5_reg_778 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_5_fu_374_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign or_ln46_4_fu_602_p3 = {{tmp_111_reg_811}, {1'd1}};
assign or_ln60_4_fu_625_p4 = {{{tmp_114_reg_842}, {1'd1}}, {tmp_28_reg_855}};
assign or_ln74_4_fu_639_p3 = {{tmp_114_reg_842}, {2'd3}};
assign tmp_111_fu_410_p4 = {{v5_reg_778[5:2]}};
assign tmp_112_fu_419_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_111_fu_410_p4}}, {2'd2}};
assign tmp_113_fu_438_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_111_fu_410_p4}}, {2'd3}};
assign tmp_114_fu_478_p4 = {{v5_reg_778[5:3]}};
assign tmp_115_fu_487_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_114_fu_478_p4}}, {3'd4}};
assign tmp_116_fu_513_p9 = {{{{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_114_fu_478_p4}}, {1'd1}}, {tmp_28_fu_506_p3}}, {1'd1}};
assign tmp_117_fu_551_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_114_reg_842}}, {3'd6}};
assign tmp_118_fu_569_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {tmp_114_reg_842}}, {3'd7}};
assign tmp_28_fu_506_p3 = v5_reg_778[32'd1];
assign tmp_s_fu_384_p7 = {{{{{{tmp_305}, {1'd1}}, {empty}}, {1'd1}}, {lshr_ln29_5_fu_374_p4}}, {1'd1}};
assign v10_fu_468_p1 = reg_314;
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
assign v15_fu_667_p1 = reg_326;
assign v16_fu_473_p1 = reg_318;
assign v21_fu_672_p1 = v116_0_load_16_reg_935;
assign v22_fu_541_p1 = reg_314;
assign v27_fu_676_p1 = v116_1_load_16_reg_940;
assign v28_fu_546_p1 = reg_318;
assign v33_fu_680_p1 = reg_322;
assign v34_fu_615_p1 = reg_314;
assign v39_fu_685_p1 = reg_326;
assign v40_fu_620_p1 = reg_318;
assign v45_1_fu_690_p1 = v116_0_load_18_reg_985;
assign v46_fu_652_p1 = reg_314;
assign v51_fu_694_p1 = v116_1_load_18_reg_990;
assign v52_fu_657_p1 = reg_318;
assign v7_5_out = v3_fu_98;
assign v8_fu_460_p3 = ((icmp_ln31_reg_806[0:0] == 1'b1) ? v6_5 : v3_fu_98);
assign v9_fu_662_p1 = reg_322;
assign zext_ln29_fu_597_p1 = lshr_ln29_5_reg_796;
assign zext_ln33_4_fu_369_p1 = add_ln33_fu_363_p2;
assign zext_ln33_fu_359_p1 = ap_sig_allocacmp_v5;
assign zext_ln40_fu_400_p1 = tmp_s_fu_384_p7;
assign zext_ln46_fu_609_p1 = or_ln46_4_fu_602_p3;
assign zext_ln47_fu_433_p1 = tmp_112_fu_419_p7;
assign zext_ln54_fu_452_p1 = tmp_113_fu_438_p7;
assign zext_ln60_fu_633_p1 = or_ln60_4_fu_625_p4;
assign zext_ln61_fu_501_p1 = tmp_115_fu_487_p7;
assign zext_ln68_fu_531_p1 = tmp_116_fu_513_p9;
assign zext_ln74_fu_646_p1 = or_ln74_4_fu_639_p3;
assign zext_ln75_fu_564_p1 = tmp_117_fu_551_p7;
assign zext_ln83_fu_582_p1 = tmp_118_fu_569_p7;
always @ (posedge ap_clk) begin
    v116_0_addr_16_reg_905[0] <= 1'b1;
    v116_0_addr_16_reg_905_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_16_reg_905_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_16_reg_910[0] <= 1'b1;
    v116_1_addr_16_reg_910_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_16_reg_910_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_17_reg_945[1] <= 1'b1;
    v116_0_addr_17_reg_945_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_17_reg_945_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_17_reg_950[1] <= 1'b1;
    v116_1_addr_17_reg_950_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_17_reg_950_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_18_reg_955[1:0] <= 2'b11;
    v116_0_addr_18_reg_955_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_18_reg_955_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_18_reg_955_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_18_reg_960[1:0] <= 2'b11;
    v116_1_addr_18_reg_960_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_18_reg_960_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_18_reg_960_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
