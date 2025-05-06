
module atax_atax_node0_Pipeline_label_17 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_5_reload,lshr_ln,empty,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v6_5,v7_6_out,v7_6_out_ap_vld,grp_fu_674_p_din0,grp_fu_674_p_din1,grp_fu_674_p_opcode,grp_fu_674_p_dout0,grp_fu_674_p_ce,grp_fu_678_p_din0,grp_fu_678_p_din1,grp_fu_678_p_opcode,grp_fu_678_p_dout0,grp_fu_678_p_ce,grp_fu_682_p_din0,grp_fu_682_p_din1,grp_fu_682_p_dout0,grp_fu_682_p_ce,grp_fu_686_p_din0,grp_fu_686_p_din1,grp_fu_686_p_dout0,grp_fu_686_p_ce);  
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
input  [2:0] lshr_ln;
input  [0:0] empty;
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
output  [31:0] v7_6_out;
output   v7_6_out_ap_vld;
output  [31:0] grp_fu_674_p_din0;
output  [31:0] grp_fu_674_p_din1;
output  [1:0] grp_fu_674_p_opcode;
input  [31:0] grp_fu_674_p_dout0;
output   grp_fu_674_p_ce;
output  [31:0] grp_fu_678_p_din0;
output  [31:0] grp_fu_678_p_din1;
output  [1:0] grp_fu_678_p_opcode;
input  [31:0] grp_fu_678_p_dout0;
output   grp_fu_678_p_ce;
output  [31:0] grp_fu_682_p_din0;
output  [31:0] grp_fu_682_p_din1;
input  [31:0] grp_fu_682_p_dout0;
output   grp_fu_682_p_ce;
output  [31:0] grp_fu_686_p_din0;
output  [31:0] grp_fu_686_p_din1;
input  [31:0] grp_fu_686_p_dout0;
output   grp_fu_686_p_ce;
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
reg   [0:0] tmp_18_reg_693;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_307;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_311;
reg   [31:0] reg_315;
reg   [31:0] reg_319;
reg   [31:0] reg_323;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_327;
wire   [0:0] tmp_18_fu_344_p3;
reg   [0:0] tmp_18_reg_693_pp0_iter1_reg;
reg   [0:0] tmp_18_reg_693_pp0_iter2_reg;
reg   [0:0] tmp_18_reg_693_pp0_iter3_reg;
wire   [4:0] lshr_ln29_5_fu_352_p4;
reg   [4:0] lshr_ln29_5_reg_697;
wire   [0:0] icmp_ln31_fu_382_p2;
reg   [0:0] icmp_ln31_reg_712;
wire   [3:0] tmp_32_fu_388_p4;
reg   [3:0] tmp_32_reg_717;
reg   [2:0] tmp_34_reg_732;
reg   [2:0] tmp_34_reg_732_pp0_iter1_reg;
reg   [0:0] tmp_19_reg_740;
reg   [0:0] tmp_19_reg_740_pp0_iter1_reg;
reg   [31:0] v113_0_load_7_reg_746;
reg   [31:0] v113_1_load_7_reg_751;
wire   [31:0] v8_fu_491_p3;
reg   [31:0] v8_reg_776;
wire   [31:0] v10_fu_499_p1;
wire   [31:0] v16_fu_504_p1;
reg   [31:0] v113_0_load_9_reg_792;
reg   [31:0] v113_1_load_9_reg_797;
wire   [31:0] v22_fu_514_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_fu_518_p1;
reg   [4:0] v116_0_addr_reg_812;
reg   [4:0] v116_0_addr_reg_812_pp0_iter2_reg;
reg   [4:0] v116_0_addr_reg_812_pp0_iter3_reg;
wire   [31:0] v34_fu_540_p1;
wire   [31:0] v40_fu_545_p1;
reg   [4:0] v116_1_addr_reg_827;
reg   [4:0] v116_1_addr_reg_827_pp0_iter2_reg;
reg   [4:0] v116_1_addr_reg_827_pp0_iter3_reg;
reg   [4:0] v116_0_addr_7_reg_832;
reg   [4:0] v116_0_addr_7_reg_832_pp0_iter2_reg;
reg   [4:0] v116_0_addr_7_reg_832_pp0_iter3_reg;
reg   [4:0] v116_1_addr_7_reg_837;
reg   [4:0] v116_1_addr_7_reg_837_pp0_iter2_reg;
reg   [4:0] v116_1_addr_7_reg_837_pp0_iter3_reg;
reg   [31:0] v11_reg_842;
reg   [31:0] v17_reg_847;
wire   [31:0] v46_fu_577_p1;
wire   [31:0] v52_fu_581_p1;
reg   [31:0] v116_0_load_7_reg_862;
reg   [31:0] v116_1_load_7_reg_867;
reg   [4:0] v116_0_addr_8_reg_872;
reg   [4:0] v116_0_addr_8_reg_872_pp0_iter2_reg;
reg   [4:0] v116_0_addr_8_reg_872_pp0_iter3_reg;
reg   [4:0] v116_1_addr_8_reg_877;
reg   [4:0] v116_1_addr_8_reg_877_pp0_iter2_reg;
reg   [4:0] v116_1_addr_8_reg_877_pp0_iter3_reg;
reg   [4:0] v116_0_addr_9_reg_882;
reg   [4:0] v116_0_addr_9_reg_882_pp0_iter2_reg;
reg   [4:0] v116_0_addr_9_reg_882_pp0_iter3_reg;
reg   [4:0] v116_0_addr_9_reg_882_pp0_iter4_reg;
reg   [4:0] v116_1_addr_9_reg_887;
reg   [4:0] v116_1_addr_9_reg_887_pp0_iter2_reg;
reg   [4:0] v116_1_addr_9_reg_887_pp0_iter3_reg;
reg   [4:0] v116_1_addr_9_reg_887_pp0_iter4_reg;
wire   [31:0] v9_fu_585_p1;
reg   [31:0] v23_reg_897;
reg   [31:0] v29_reg_902;
wire   [31:0] v15_fu_590_p1;
reg   [31:0] v116_0_load_9_reg_912;
reg   [31:0] v116_1_load_9_reg_917;
reg   [31:0] v35_reg_922;
reg   [31:0] v41_reg_927;
wire   [31:0] v21_fu_595_p1;
wire   [31:0] v27_1_fu_599_p1;
reg   [31:0] v47_reg_942;
reg   [31:0] v53_reg_947;
wire   [31:0] v33_fu_603_p1;
wire   [31:0] v39_fu_608_p1;
wire   [31:0] v45_fu_613_p1;
wire   [31:0] v51_fu_617_p1;
reg   [31:0] v24_reg_972;
reg   [31:0] v30_1_reg_977;
reg   [31:0] v48_reg_982;
reg   [31:0] v54_reg_987;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln47_fu_414_p1;
wire   [63:0] zext_ln61_fu_463_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_fu_482_p1;
wire   [63:0] zext_ln29_fu_522_p1;
wire   [63:0] zext_ln46_fu_534_p1;
wire   [63:0] zext_ln60_fu_558_p1;
wire   [63:0] zext_ln74_fu_571_p1;
reg   [31:0] v3_fu_88;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage3;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_438_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage3_01001;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce1_local;
reg   [4:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [4:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_621_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln50_fu_626_p1;
wire   [31:0] bitcast_ln64_fu_639_p1;
wire   [31:0] bitcast_ln78_fu_649_p1;
reg    v116_1_ce1_local;
reg   [4:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [4:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_630_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln57_fu_635_p1;
wire   [31:0] bitcast_ln71_fu_644_p1;
wire   [31:0] bitcast_ln86_fu_653_p1;
reg   [31:0] grp_fu_291_p0;
reg   [31:0] grp_fu_291_p1;
reg   [31:0] grp_fu_295_p0;
reg   [31:0] grp_fu_295_p1;
reg   [31:0] grp_fu_299_p0;
reg   [31:0] grp_fu_299_p1;
reg   [31:0] grp_fu_303_p0;
reg   [31:0] grp_fu_303_p1;
wire   [10:0] tmp_s_fu_362_p6;
wire   [10:0] tmp_33_fu_398_p7;
wire   [10:0] tmp_35_fu_449_p8;
wire   [10:0] tmp_36_fu_469_p7;
wire   [4:0] or_ln46_5_fu_527_p3;
wire   [4:0] or_ln60_5_fu_550_p4;
wire   [4:0] or_ln74_5_fu_564_p3;
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
#0 v3_fu_88 = 32'd0;
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
        v3_fu_88 <= v7_5_reload;
    end else if (((tmp_18_reg_693 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_88 <= v8_fu_491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_18_fu_344_p3 == 1'd0))) begin
            v49_fu_92 <= add_ln28_fu_438_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_92 <= 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_712 <= icmp_ln31_fu_382_p2;
        lshr_ln29_5_reg_697 <= {{ap_sig_allocacmp_v5[5:1]}};
        tmp_18_reg_693 <= ap_sig_allocacmp_v5[32'd6];
        tmp_18_reg_693_pp0_iter1_reg <= tmp_18_reg_693;
        tmp_18_reg_693_pp0_iter2_reg <= tmp_18_reg_693_pp0_iter1_reg;
        tmp_18_reg_693_pp0_iter3_reg <= tmp_18_reg_693_pp0_iter2_reg;
        tmp_19_reg_740 <= ap_sig_allocacmp_v5[32'd1];
        tmp_19_reg_740_pp0_iter1_reg <= tmp_19_reg_740;
        tmp_32_reg_717 <= {{ap_sig_allocacmp_v5[5:2]}};
        tmp_34_reg_732 <= {{ap_sig_allocacmp_v5[5:3]}};
        tmp_34_reg_732_pp0_iter1_reg <= tmp_34_reg_732;
        v116_0_addr_7_reg_832[4 : 1] <= zext_ln46_fu_534_p1[4 : 1];
        v116_0_addr_7_reg_832_pp0_iter2_reg[4 : 1] <= v116_0_addr_7_reg_832[4 : 1];
        v116_0_addr_7_reg_832_pp0_iter3_reg[4 : 1] <= v116_0_addr_7_reg_832_pp0_iter2_reg[4 : 1];
        v116_0_addr_reg_812 <= zext_ln29_fu_522_p1;
        v116_0_addr_reg_812_pp0_iter2_reg <= v116_0_addr_reg_812;
        v116_0_addr_reg_812_pp0_iter3_reg <= v116_0_addr_reg_812_pp0_iter2_reg;
        v116_1_addr_7_reg_837[4 : 1] <= zext_ln46_fu_534_p1[4 : 1];
        v116_1_addr_7_reg_837_pp0_iter2_reg[4 : 1] <= v116_1_addr_7_reg_837[4 : 1];
        v116_1_addr_7_reg_837_pp0_iter3_reg[4 : 1] <= v116_1_addr_7_reg_837_pp0_iter2_reg[4 : 1];
        v116_1_addr_reg_827 <= zext_ln29_fu_522_p1;
        v116_1_addr_reg_827_pp0_iter2_reg <= v116_1_addr_reg_827;
        v116_1_addr_reg_827_pp0_iter3_reg <= v116_1_addr_reg_827_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_307 <= v113_0_q1;
        reg_311 <= v113_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_315 <= v116_0_q1;
        reg_319 <= v116_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_323 <= grp_fu_674_p_dout0;
        reg_327 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_load_7_reg_746 <= v113_0_q0;
        v113_1_load_7_reg_751 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_9_reg_792 <= v113_0_q0;
        v113_1_load_9_reg_797 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_addr_8_reg_872[0] <= zext_ln60_fu_558_p1[0];
v116_0_addr_8_reg_872[4 : 2] <= zext_ln60_fu_558_p1[4 : 2];
        v116_0_addr_8_reg_872_pp0_iter2_reg[0] <= v116_0_addr_8_reg_872[0];
v116_0_addr_8_reg_872_pp0_iter2_reg[4 : 2] <= v116_0_addr_8_reg_872[4 : 2];
        v116_0_addr_8_reg_872_pp0_iter3_reg[0] <= v116_0_addr_8_reg_872_pp0_iter2_reg[0];
v116_0_addr_8_reg_872_pp0_iter3_reg[4 : 2] <= v116_0_addr_8_reg_872_pp0_iter2_reg[4 : 2];
        v116_0_addr_9_reg_882[4 : 2] <= zext_ln74_fu_571_p1[4 : 2];
        v116_0_addr_9_reg_882_pp0_iter2_reg[4 : 2] <= v116_0_addr_9_reg_882[4 : 2];
        v116_0_addr_9_reg_882_pp0_iter3_reg[4 : 2] <= v116_0_addr_9_reg_882_pp0_iter2_reg[4 : 2];
        v116_0_addr_9_reg_882_pp0_iter4_reg[4 : 2] <= v116_0_addr_9_reg_882_pp0_iter3_reg[4 : 2];
        v116_1_addr_8_reg_877[0] <= zext_ln60_fu_558_p1[0];
v116_1_addr_8_reg_877[4 : 2] <= zext_ln60_fu_558_p1[4 : 2];
        v116_1_addr_8_reg_877_pp0_iter2_reg[0] <= v116_1_addr_8_reg_877[0];
v116_1_addr_8_reg_877_pp0_iter2_reg[4 : 2] <= v116_1_addr_8_reg_877[4 : 2];
        v116_1_addr_8_reg_877_pp0_iter3_reg[0] <= v116_1_addr_8_reg_877_pp0_iter2_reg[0];
v116_1_addr_8_reg_877_pp0_iter3_reg[4 : 2] <= v116_1_addr_8_reg_877_pp0_iter2_reg[4 : 2];
        v116_1_addr_9_reg_887[4 : 2] <= zext_ln74_fu_571_p1[4 : 2];
        v116_1_addr_9_reg_887_pp0_iter2_reg[4 : 2] <= v116_1_addr_9_reg_887[4 : 2];
        v116_1_addr_9_reg_887_pp0_iter3_reg[4 : 2] <= v116_1_addr_9_reg_887_pp0_iter2_reg[4 : 2];
        v116_1_addr_9_reg_887_pp0_iter4_reg[4 : 2] <= v116_1_addr_9_reg_887_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_7_reg_862 <= v116_0_q0;
        v116_1_load_7_reg_867 <= v116_1_q0;
        v11_reg_842 <= grp_fu_682_p_dout0;
        v17_reg_847 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_9_reg_912 <= v116_0_q0;
        v116_1_load_9_reg_917 <= v116_1_q0;
        v23_reg_897 <= grp_fu_682_p_dout0;
        v29_reg_902 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v24_reg_972 <= grp_fu_674_p_dout0;
        v30_1_reg_977 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v35_reg_922 <= grp_fu_682_p_dout0;
        v41_reg_927 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_reg_942 <= grp_fu_682_p_dout0;
        v53_reg_947 <= grp_fu_686_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_982 <= grp_fu_674_p_dout0;
        v54_reg_987 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_776 <= v8_fu_491_p3;
    end
end
always @ (*) begin
    if (((tmp_18_reg_693 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v5 = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_291_p0 = v45_fu_613_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_291_p0 = v33_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_291_p0 = v21_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_291_p0 = v9_fu_585_p1;
    end else begin
        grp_fu_291_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_291_p1 = v47_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_291_p1 = v35_reg_922;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_291_p1 = v23_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_291_p1 = v11_reg_842;
    end else begin
        grp_fu_291_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_295_p0 = v51_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p0 = v39_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p0 = v27_1_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p0 = v15_fu_590_p1;
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_295_p1 = v53_reg_947;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p1 = v41_reg_927;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p1 = v29_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p1 = v17_reg_847;
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_299_p0 = v46_fu_577_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_299_p0 = v34_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_299_p0 = v22_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_299_p0 = v10_fu_499_p1;
    end else begin
        grp_fu_299_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_299_p1 = v8_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_299_p1 = v8_fu_491_p3;
    end else begin
        grp_fu_299_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_303_p0 = v52_fu_581_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_303_p0 = v40_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_303_p0 = v28_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_303_p0 = v16_fu_504_p1;
    end else begin
        grp_fu_303_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_303_p1 = v8_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_303_p1 = v8_fu_491_p3;
    end else begin
        grp_fu_303_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln75_fu_482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_0_address0_local = zext_ln47_fu_414_p1;
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
            v113_0_address1_local = zext_ln61_fu_463_p1;
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
            v113_1_address0_local = zext_ln75_fu_482_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_1_address0_local = zext_ln47_fu_414_p1;
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
            v113_1_address1_local = zext_ln61_fu_463_p1;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_9_reg_882_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_7_reg_832_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln74_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln46_fu_534_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_8_reg_872_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_812_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln60_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_522_p1;
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
        v116_0_d0_local = bitcast_ln78_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_d0_local = bitcast_ln50_fu_626_p1;
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln64_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_621_p1;
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
        v116_1_address0_local = v116_1_addr_9_reg_887_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_7_reg_837_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln74_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln46_fu_534_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_8_reg_877_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_827_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln60_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_522_p1;
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
        v116_1_d0_local = bitcast_ln86_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_d0_local = bitcast_ln57_fu_635_p1;
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln71_fu_644_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_630_p1;
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_18_reg_693_pp0_iter3_reg == 1'd1))) begin
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
assign add_ln28_fu_438_p2 = (ap_sig_allocacmp_v5 + 7'd8);
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
assign bitcast_ln36_fu_621_p1 = reg_323;
assign bitcast_ln43_fu_630_p1 = reg_327;
assign bitcast_ln50_fu_626_p1 = v24_reg_972;
assign bitcast_ln57_fu_635_p1 = v30_1_reg_977;
assign bitcast_ln64_fu_639_p1 = reg_323;
assign bitcast_ln71_fu_644_p1 = reg_327;
assign bitcast_ln78_fu_649_p1 = v48_reg_982;
assign bitcast_ln86_fu_653_p1 = v54_reg_987;
assign grp_fu_674_p_ce = 1'b1;
assign grp_fu_674_p_din0 = grp_fu_291_p0;
assign grp_fu_674_p_din1 = grp_fu_291_p1;
assign grp_fu_674_p_opcode = 2'd0;
assign grp_fu_678_p_ce = 1'b1;
assign grp_fu_678_p_din0 = grp_fu_295_p0;
assign grp_fu_678_p_din1 = grp_fu_295_p1;
assign grp_fu_678_p_opcode = 2'd0;
assign grp_fu_682_p_ce = 1'b1;
assign grp_fu_682_p_din0 = grp_fu_299_p0;
assign grp_fu_682_p_din1 = grp_fu_299_p1;
assign grp_fu_686_p_ce = 1'b1;
assign grp_fu_686_p_din0 = grp_fu_303_p0;
assign grp_fu_686_p_din1 = grp_fu_303_p1;
assign icmp_ln31_fu_382_p2 = ((ap_sig_allocacmp_v5 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_5_fu_352_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign or_ln46_5_fu_527_p3 = {{tmp_32_reg_717}, {1'd1}};
assign or_ln60_5_fu_550_p4 = {{{tmp_34_reg_732_pp0_iter1_reg}, {1'd1}}, {tmp_19_reg_740_pp0_iter1_reg}};
assign or_ln74_5_fu_564_p3 = {{tmp_34_reg_732_pp0_iter1_reg}, {2'd3}};
assign tmp_18_fu_344_p3 = ap_sig_allocacmp_v5[32'd6];
assign tmp_32_fu_388_p4 = {{ap_sig_allocacmp_v5[5:2]}};
assign tmp_33_fu_398_p7 = {{{{{{lshr_ln}, {1'd1}}, {empty}}, {1'd1}}, {tmp_32_fu_388_p4}}, {1'd1}};
assign tmp_35_fu_449_p8 = {{{{{{{lshr_ln}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_reg_732}}, {1'd1}}, {tmp_19_reg_740}};
assign tmp_36_fu_469_p7 = {{{{{{lshr_ln}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_reg_732}}, {2'd3}};
assign tmp_s_fu_362_p6 = {{{{{lshr_ln}, {1'd1}}, {empty}}, {1'd1}}, {lshr_ln29_5_fu_352_p4}};
assign v10_fu_499_p1 = reg_307;
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
assign v15_fu_590_p1 = reg_319;
assign v16_fu_504_p1 = reg_311;
assign v21_fu_595_p1 = v116_0_load_7_reg_862;
assign v22_fu_514_p1 = v113_0_load_7_reg_746;
assign v27_1_fu_599_p1 = v116_1_load_7_reg_867;
assign v28_fu_518_p1 = v113_1_load_7_reg_751;
assign v33_fu_603_p1 = reg_315;
assign v34_fu_540_p1 = reg_307;
assign v39_fu_608_p1 = reg_319;
assign v40_fu_545_p1 = reg_311;
assign v45_fu_613_p1 = v116_0_load_9_reg_912;
assign v46_fu_577_p1 = v113_0_load_9_reg_792;
assign v51_fu_617_p1 = v116_1_load_9_reg_917;
assign v52_fu_581_p1 = v113_1_load_9_reg_797;
assign v7_6_out = v3_fu_88;
assign v8_fu_491_p3 = ((icmp_ln31_reg_712[0:0] == 1'b1) ? v6_5 : v3_fu_88);
assign v9_fu_585_p1 = reg_315;
assign zext_ln29_fu_522_p1 = lshr_ln29_5_reg_697;
assign zext_ln33_fu_376_p1 = tmp_s_fu_362_p6;
assign zext_ln46_fu_534_p1 = or_ln46_5_fu_527_p3;
assign zext_ln47_fu_414_p1 = tmp_33_fu_398_p7;
assign zext_ln60_fu_558_p1 = or_ln60_5_fu_550_p4;
assign zext_ln61_fu_463_p1 = tmp_35_fu_449_p8;
assign zext_ln74_fu_571_p1 = or_ln74_5_fu_564_p3;
assign zext_ln75_fu_482_p1 = tmp_36_fu_469_p7;
always @ (posedge ap_clk) begin
    v116_0_addr_7_reg_832[0] <= 1'b1;
    v116_0_addr_7_reg_832_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_7_reg_832_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_7_reg_837[0] <= 1'b1;
    v116_1_addr_7_reg_837_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_7_reg_837_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_8_reg_872[1] <= 1'b1;
    v116_0_addr_8_reg_872_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_8_reg_872_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_8_reg_877[1] <= 1'b1;
    v116_1_addr_8_reg_877_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_8_reg_877_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_9_reg_882[1:0] <= 2'b11;
    v116_0_addr_9_reg_882_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_9_reg_882_pp0_iter3_reg[1:0] <= 2'b11;
    v116_0_addr_9_reg_882_pp0_iter4_reg[1:0] <= 2'b11;
    v116_1_addr_9_reg_887[1:0] <= 2'b11;
    v116_1_addr_9_reg_887_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_9_reg_887_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_9_reg_887_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
