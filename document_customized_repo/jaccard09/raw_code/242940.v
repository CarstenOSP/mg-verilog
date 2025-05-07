module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v58_address0,v58_ce0,v58_we0,v58_d0,v58_q0,v58_address1,v58_ce1,v58_we1,v58_d1,v58_q1,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,cmp7,v65,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_opcode,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] lshr_ln;
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [5:0] v58_address0;
output   v58_ce0;
output   v58_we0;
output  [31:0] v58_d0;
input  [31:0] v58_q0;
output  [5:0] v58_address1;
output   v58_ce1;
output   v58_we1;
output  [31:0] v58_d1;
input  [31:0] v58_q1;
output  [3:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [3:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
input  [0:0] cmp7;
input  [31:0] v65;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [3:0] v57_1_address1;
output   v57_1_ce1;
input  [31:0] v57_1_q1;
output  [3:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [3:0] v57_2_address1;
output   v57_2_ce1;
input  [31:0] v57_2_q1;
output  [3:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [3:0] v57_3_address1;
output   v57_3_ce1;
input  [31:0] v57_3_q1;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
output  [1:0] grp_fu_224_p_opcode;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_9_reg_805;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_376;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_380;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_385;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_9_fu_398_p3;
wire   [3:0] lshr_ln1_fu_428_p4;
reg   [3:0] lshr_ln1_reg_814;
reg   [5:0] v58_addr_reg_827;
reg   [5:0] v58_addr_reg_827_pp0_iter1_reg;
reg   [5:0] v58_addr_1_reg_842;
reg   [5:0] v58_addr_1_reg_842_pp0_iter1_reg;
reg   [2:0] tmp_8_reg_858;
reg   [2:0] tmp_8_reg_858_pp0_iter1_reg;
reg   [0:0] tmp_11_reg_871;
wire   [31:0] v63_fu_513_p3;
reg   [31:0] v63_reg_877;
reg   [5:0] v58_addr_2_reg_887;
reg   [5:0] v58_addr_2_reg_887_pp0_iter1_reg;
reg   [5:0] v58_addr_3_reg_897;
reg   [5:0] v58_addr_3_reg_897_pp0_iter1_reg;
reg   [5:0] v58_addr_3_reg_897_pp0_iter2_reg;
reg   [31:0] v74_reg_903;
reg   [31:0] v80_reg_908;
wire   [31:0] v70_fu_570_p3;
reg   [31:0] v70_reg_913;
wire   [31:0] v64_fu_577_p1;
reg   [31:0] v114_0_load_3_reg_923;
reg   [5:0] v58_addr_4_reg_933;
reg   [5:0] v58_addr_4_reg_933_pp0_iter1_reg;
reg   [5:0] v58_addr_4_reg_933_pp0_iter2_reg;
reg   [5:0] v58_addr_5_reg_944;
reg   [5:0] v58_addr_5_reg_944_pp0_iter1_reg;
reg   [5:0] v58_addr_5_reg_944_pp0_iter2_reg;
wire   [31:0] v76_fu_638_p3;
reg   [31:0] v76_reg_949;
wire   [31:0] v82_fu_644_p3;
reg   [31:0] v82_reg_954;
wire   [31:0] v71_fu_650_p1;
reg   [31:0] v114_0_load_5_reg_964;
reg   [5:0] v58_addr_6_reg_974;
reg   [5:0] v58_addr_6_reg_974_pp0_iter1_reg;
reg   [5:0] v58_addr_6_reg_974_pp0_iter2_reg;
reg   [31:0] v87_reg_985;
reg   [31:0] v93_reg_990;
wire   [31:0] v77_fu_693_p1;
reg   [31:0] v114_0_load_7_reg_1000;
reg   [31:0] v99_reg_1005;
reg   [31:0] v66_reg_1010;
wire   [31:0] v83_fu_698_p1;
reg   [31:0] v72_reg_1020;
wire   [31:0] v89_fu_702_p1;
reg   [31:0] v78_reg_1030;
wire   [31:0] v95_fu_707_p1;
reg   [31:0] v84_reg_1040;
wire   [31:0] v101_fu_726_p1;
reg   [31:0] v90_reg_1070;
reg   [31:0] v104_reg_1075;
wire   [31:0] v107_fu_731_p1;
wire   [31:0] v88_fu_735_p3;
reg   [31:0] v88_reg_1085;
wire   [31:0] v94_fu_741_p3;
reg   [31:0] v94_reg_1090;
wire   [31:0] v100_fu_747_p3;
reg   [31:0] v100_reg_1095;
reg   [31:0] v96_reg_1100;
reg   [31:0] v102_reg_1105;
reg   [5:0] v58_addr_7_reg_1110;
reg   [5:0] v58_addr_7_reg_1110_pp0_iter2_reg;
reg   [31:0] v108_reg_1115;
wire   [31:0] v106_fu_765_p3;
reg   [31:0] v106_reg_1120;
reg   [31:0] v91_reg_1125;
reg   [31:0] v97_reg_1130;
reg   [31:0] v103_reg_1135;
reg   [31:0] v109_reg_1140;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_423_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_1_fu_438_p1;
wire   [63:0] zext_ln98_fu_410_p1;
wire   [63:0] zext_ln110_fu_479_p1;
wire   [63:0] zext_ln107_fu_464_p1;
wire   [63:0] zext_ln117_fu_540_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln114_fu_527_p1;
wire   [63:0] zext_ln124_fu_565_p1;
wire   [63:0] zext_ln121_fu_552_p1;
wire   [63:0] zext_ln131_fu_602_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln128_fu_589_p1;
wire   [63:0] zext_ln138_fu_633_p1;
wire   [63:0] zext_ln135_fu_617_p1;
wire   [63:0] zext_ln145_fu_675_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_fu_662_p1;
wire   [63:0] zext_ln152_fu_688_p1;
wire   [63:0] zext_ln128_1_fu_718_p1;
wire   [63:0] zext_ln149_fu_760_p1;
reg   [6:0] v60_fu_100;
wire   [6:0] add_ln98_fu_502_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_2;
reg    v57_0_ce1_local;
reg    v57_0_ce0_local;
reg    v58_ce1_local;
reg   [5:0] v58_address1_local;
reg    v58_ce0_local;
reg   [5:0] v58_address0_local;
reg    v58_we1_local;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage4;
reg    v58_we0_local;
reg   [31:0] v58_d0_local;
reg    v114_0_ce1_local;
reg   [10:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [10:0] v114_0_address0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg   [31:0] grp_fu_368_p0;
reg   [31:0] grp_fu_368_p1;
reg   [31:0] grp_fu_372_p0;
wire   [5:0] trunc_ln98_fu_406_p1;
wire   [10:0] tmp_fu_415_p3;
wire   [4:0] tmp_1_fu_446_p4;
wire   [5:0] or_ln_fu_456_p3;
wire   [10:0] tmp_2_fu_469_p4;
wire   [5:0] or_ln1_fu_520_p3;
wire   [10:0] tmp_5_fu_532_p4;
wire   [5:0] or_ln2_fu_545_p3;
wire   [10:0] tmp_7_fu_557_p4;
wire   [5:0] or_ln3_fu_582_p3;
wire   [10:0] tmp_10_fu_594_p4;
wire   [5:0] or_ln4_fu_607_p5;
wire   [10:0] tmp_s_fu_622_p6;
wire   [5:0] or_ln5_fu_655_p3;
wire   [10:0] tmp_12_fu_667_p4;
wire   [10:0] tmp_13_fu_680_p4;
wire   [3:0] or_ln128_1_fu_711_p3;
wire   [5:0] or_ln6_fu_753_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_380 <= v114_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_380 <= v114_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_9_fu_398_p3 == 1'd0))) begin
            v60_fu_100 <= add_ln98_fu_502_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_100 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln1_reg_814 <= {{ap_sig_allocacmp_v60_2[5:2]}};
        tmp_11_reg_871 <= ap_sig_allocacmp_v60_2[32'd1];
        tmp_8_reg_858 <= {{ap_sig_allocacmp_v60_2[5:3]}};
        tmp_8_reg_858_pp0_iter1_reg <= tmp_8_reg_858;
        tmp_9_reg_805 <= ap_sig_allocacmp_v60_2[32'd6];
        v58_addr_1_reg_842[5 : 1] <= zext_ln107_fu_464_p1[5 : 1];
        v58_addr_1_reg_842_pp0_iter1_reg[5 : 1] <= v58_addr_1_reg_842[5 : 1];
        v58_addr_reg_827 <= zext_ln98_fu_410_p1;
        v58_addr_reg_827_pp0_iter1_reg <= v58_addr_reg_827;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_376 <= v114_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_385 <= grp_fu_224_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v100_reg_1095 <= v100_fu_747_p3;
        v58_addr_2_reg_887[5 : 2] <= zext_ln114_fu_527_p1[5 : 2];
        v58_addr_2_reg_887_pp0_iter1_reg[5 : 2] <= v58_addr_2_reg_887[5 : 2];
        v58_addr_3_reg_897[5 : 2] <= zext_ln121_fu_552_p1[5 : 2];
        v58_addr_3_reg_897_pp0_iter1_reg[5 : 2] <= v58_addr_3_reg_897[5 : 2];
        v58_addr_3_reg_897_pp0_iter2_reg[5 : 2] <= v58_addr_3_reg_897_pp0_iter1_reg[5 : 2];
        v63_reg_877 <= v63_fu_513_p3;
        v70_reg_913 <= v70_fu_570_p3;
        v88_reg_1085 <= v88_fu_735_p3;
        v94_reg_1090 <= v94_fu_741_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v102_reg_1105 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v103_reg_1135 <= grp_fu_224_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v104_reg_1075 <= v57_3_q0;
        v90_reg_1070 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v106_reg_1120 <= v106_fu_765_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v108_reg_1115 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v109_reg_1140 <= grp_fu_224_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_load_3_reg_923 <= v114_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_load_5_reg_964 <= v114_0_q0;
        v87_reg_985 <= v58_q1;
        v93_reg_990 <= v58_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v114_0_load_7_reg_1000 <= v114_0_q0;
        v99_reg_1005 <= v58_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_addr_4_reg_933[5 : 3] <= zext_ln128_fu_589_p1[5 : 3];
        v58_addr_4_reg_933_pp0_iter1_reg[5 : 3] <= v58_addr_4_reg_933[5 : 3];
        v58_addr_4_reg_933_pp0_iter2_reg[5 : 3] <= v58_addr_4_reg_933_pp0_iter1_reg[5 : 3];
        v58_addr_5_reg_944[1] <= zext_ln135_fu_617_p1[1];
v58_addr_5_reg_944[5 : 3] <= zext_ln135_fu_617_p1[5 : 3];
        v58_addr_5_reg_944_pp0_iter1_reg[1] <= v58_addr_5_reg_944[1];
v58_addr_5_reg_944_pp0_iter1_reg[5 : 3] <= v58_addr_5_reg_944[5 : 3];
        v58_addr_5_reg_944_pp0_iter2_reg[1] <= v58_addr_5_reg_944_pp0_iter1_reg[1];
v58_addr_5_reg_944_pp0_iter2_reg[5 : 3] <= v58_addr_5_reg_944_pp0_iter1_reg[5 : 3];
        v76_reg_949 <= v76_fu_638_p3;
        v82_reg_954 <= v82_fu_644_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_addr_6_reg_974[5 : 3] <= zext_ln142_fu_662_p1[5 : 3];
        v58_addr_6_reg_974_pp0_iter1_reg[5 : 3] <= v58_addr_6_reg_974[5 : 3];
        v58_addr_6_reg_974_pp0_iter2_reg[5 : 3] <= v58_addr_6_reg_974_pp0_iter1_reg[5 : 3];
        v58_addr_7_reg_1110[5 : 3] <= zext_ln149_fu_760_p1[5 : 3];
        v58_addr_7_reg_1110_pp0_iter2_reg[5 : 3] <= v58_addr_7_reg_1110[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v66_reg_1010 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v72_reg_1020 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v74_reg_903 <= v57_2_q1;
        v80_reg_908 <= v57_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v78_reg_1030 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v84_reg_1040 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v91_reg_1125 <= grp_fu_224_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v96_reg_1100 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v97_reg_1130 <= grp_fu_224_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_9_reg_805 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_2 = v60_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_368_p0 = v106_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_368_p0 = v100_reg_1095;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = v94_reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = v88_reg_1085;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v82_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v76_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_368_p0 = v70_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_368_p0 = v63_reg_877;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_368_p1 = v108_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_368_p1 = v102_reg_1105;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p1 = v96_reg_1100;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p1 = v90_reg_1070;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p1 = v84_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p1 = v78_reg_1030;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_368_p1 = v72_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_368_p1 = v66_reg_1010;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v107_fu_731_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v101_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_372_p0 = v95_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_372_p0 = v89_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_372_p0 = v83_fu_698_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_372_p0 = v77_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = v71_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = v64_fu_577_p1;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_688_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_633_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_479_p1;
        end else begin
            v114_0_address0_local = 'bx;
        end
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address1_local = zext_ln145_fu_675_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_540_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_423_p1;
        end else begin
            v114_0_address1_local = 'bx;
        end
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce0_local = 1'b1;
    end else begin
        v57_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_0_ce1_local = 1'b1;
    end else begin
        v57_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce1_local = 1'b1;
    end else begin
        v57_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce1_local = 1'b1;
    end else begin
        v57_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v58_address0_local = v58_addr_7_reg_1110_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v58_address0_local = v58_addr_6_reg_974_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_address0_local = v58_addr_5_reg_944_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v58_address0_local = v58_addr_4_reg_933_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_address0_local = zext_ln149_fu_760_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_address0_local = zext_ln135_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_address0_local = zext_ln121_fu_552_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_address0_local = zext_ln107_fu_464_p1;
    end else begin
        v58_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v58_address1_local = v58_addr_3_reg_897_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v58_address1_local = v58_addr_2_reg_887_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v58_address1_local = v58_addr_1_reg_842_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_address1_local = v58_addr_reg_827_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_address1_local = zext_ln142_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_address1_local = zext_ln128_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_address1_local = zext_ln114_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_address1_local = zext_ln98_fu_410_p1;
    end else begin
        v58_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_ce0_local = 1'b1;
    end else begin
        v58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_ce1_local = 1'b1;
    end else begin
        v58_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v58_d0_local = v109_reg_1140;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v58_d0_local = v103_reg_1135;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v58_d0_local = v97_reg_1130;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v58_d0_local = v91_reg_1125;
        end else begin
            v58_d0_local = 'bx;
        end
    end else begin
        v58_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v58_we0_local = 1'b1;
    end else begin
        v58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v58_we1_local = 1'b1;
    end else begin
        v58_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln98_fu_502_p2 = (ap_sig_allocacmp_v60_2 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_224_p_ce = 1'b1;
assign grp_fu_224_p_din0 = grp_fu_368_p0;
assign grp_fu_224_p_din1 = grp_fu_368_p1;
assign grp_fu_224_p_opcode = 2'd0;
assign grp_fu_228_p_ce = 1'b1;
assign grp_fu_228_p_din0 = grp_fu_372_p0;
assign grp_fu_228_p_din1 = v65;
assign lshr_ln1_fu_428_p4 = {{ap_sig_allocacmp_v60_2[5:2]}};
assign or_ln128_1_fu_711_p3 = {{tmp_8_reg_858}, {1'd1}};
assign or_ln1_fu_520_p3 = {{lshr_ln1_reg_814}, {2'd2}};
assign or_ln2_fu_545_p3 = {{lshr_ln1_reg_814}, {2'd3}};
assign or_ln3_fu_582_p3 = {{tmp_8_reg_858}, {3'd4}};
assign or_ln4_fu_607_p5 = {{{{tmp_8_reg_858}, {1'd1}}, {tmp_11_reg_871}}, {1'd1}};
assign or_ln5_fu_655_p3 = {{tmp_8_reg_858}, {3'd6}};
assign or_ln6_fu_753_p3 = {{tmp_8_reg_858_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_456_p3 = {{tmp_1_fu_446_p4}, {1'd1}};
assign tmp_10_fu_594_p4 = {{{tmp_8_reg_858}, {3'd4}}, {lshr_ln}};
assign tmp_12_fu_667_p4 = {{{tmp_8_reg_858}, {3'd6}}, {lshr_ln}};
assign tmp_13_fu_680_p4 = {{{tmp_8_reg_858}, {3'd7}}, {lshr_ln}};
assign tmp_1_fu_446_p4 = {{ap_sig_allocacmp_v60_2[5:1]}};
assign tmp_2_fu_469_p4 = {{{tmp_1_fu_446_p4}, {1'd1}}, {lshr_ln}};
assign tmp_5_fu_532_p4 = {{{lshr_ln1_reg_814}, {2'd2}}, {lshr_ln}};
assign tmp_7_fu_557_p4 = {{{lshr_ln1_reg_814}, {2'd3}}, {lshr_ln}};
assign tmp_9_fu_398_p3 = ap_sig_allocacmp_v60_2[32'd6];
assign tmp_fu_415_p3 = {{trunc_ln98_fu_406_p1}, {lshr_ln}};
assign tmp_s_fu_622_p6 = {{{{{tmp_8_reg_858}, {1'd1}}, {tmp_11_reg_871}}, {1'd1}}, {lshr_ln}};
assign trunc_ln98_fu_406_p1 = ap_sig_allocacmp_v60_2[5:0];
assign v100_fu_747_p3 = ((cmp7[0:0] == 1'b1) ? v57_2_q0 : v99_reg_1005);
assign v101_fu_726_p1 = reg_376;
assign v106_fu_765_p3 = ((cmp7[0:0] == 1'b1) ? v104_reg_1075 : v58_q0);
assign v107_fu_731_p1 = v114_0_load_7_reg_1000;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v57_0_address0 = zext_ln128_1_fu_718_p1;
assign v57_0_address1 = zext_ln98_1_fu_438_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_1_fu_718_p1;
assign v57_1_address1 = zext_ln98_1_fu_438_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_1_fu_718_p1;
assign v57_2_address1 = zext_ln98_1_fu_438_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_1_fu_718_p1;
assign v57_3_address1 = zext_ln98_1_fu_438_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_address0 = v58_address0_local;
assign v58_address1 = v58_address1_local;
assign v58_ce0 = v58_ce0_local;
assign v58_ce1 = v58_ce1_local;
assign v58_d0 = v58_d0_local;
assign v58_d1 = reg_385;
assign v58_we0 = v58_we0_local;
assign v58_we1 = v58_we1_local;
assign v63_fu_513_p3 = ((cmp7[0:0] == 1'b1) ? v57_0_q1 : v58_q1);
assign v64_fu_577_p1 = reg_376;
assign v70_fu_570_p3 = ((cmp7[0:0] == 1'b1) ? v57_1_q1 : v58_q0);
assign v71_fu_650_p1 = reg_380;
assign v76_fu_638_p3 = ((cmp7[0:0] == 1'b1) ? v74_reg_903 : v58_q1);
assign v77_fu_693_p1 = reg_376;
assign v82_fu_644_p3 = ((cmp7[0:0] == 1'b1) ? v80_reg_908 : v58_q0);
assign v83_fu_698_p1 = v114_0_load_3_reg_923;
assign v88_fu_735_p3 = ((cmp7[0:0] == 1'b1) ? v57_0_q0 : v87_reg_985);
assign v89_fu_702_p1 = reg_380;
assign v94_fu_741_p3 = ((cmp7[0:0] == 1'b1) ? v57_1_q0 : v93_reg_990);
assign v95_fu_707_p1 = v114_0_load_5_reg_964;
assign zext_ln102_fu_423_p1 = tmp_fu_415_p3;
assign zext_ln107_fu_464_p1 = or_ln_fu_456_p3;
assign zext_ln110_fu_479_p1 = tmp_2_fu_469_p4;
assign zext_ln114_fu_527_p1 = or_ln1_fu_520_p3;
assign zext_ln117_fu_540_p1 = tmp_5_fu_532_p4;
assign zext_ln121_fu_552_p1 = or_ln2_fu_545_p3;
assign zext_ln124_fu_565_p1 = tmp_7_fu_557_p4;
assign zext_ln128_1_fu_718_p1 = or_ln128_1_fu_711_p3;
assign zext_ln128_fu_589_p1 = or_ln3_fu_582_p3;
assign zext_ln131_fu_602_p1 = tmp_10_fu_594_p4;
assign zext_ln135_fu_617_p1 = or_ln4_fu_607_p5;
assign zext_ln138_fu_633_p1 = tmp_s_fu_622_p6;
assign zext_ln142_fu_662_p1 = or_ln5_fu_655_p3;
assign zext_ln145_fu_675_p1 = tmp_12_fu_667_p4;
assign zext_ln149_fu_760_p1 = or_ln6_fu_753_p3;
assign zext_ln152_fu_688_p1 = tmp_13_fu_680_p4;
assign zext_ln98_1_fu_438_p1 = lshr_ln1_fu_428_p4;
assign zext_ln98_fu_410_p1 = ap_sig_allocacmp_v60_2;
always @ (posedge ap_clk) begin
    v58_addr_1_reg_842[0] <= 1'b1;
    v58_addr_1_reg_842_pp0_iter1_reg[0] <= 1'b1;
    v58_addr_2_reg_887[1:0] <= 2'b10;
    v58_addr_2_reg_887_pp0_iter1_reg[1:0] <= 2'b10;
    v58_addr_3_reg_897[1:0] <= 2'b11;
    v58_addr_3_reg_897_pp0_iter1_reg[1:0] <= 2'b11;
    v58_addr_3_reg_897_pp0_iter2_reg[1:0] <= 2'b11;
    v58_addr_4_reg_933[2:0] <= 3'b100;
    v58_addr_4_reg_933_pp0_iter1_reg[2:0] <= 3'b100;
    v58_addr_4_reg_933_pp0_iter2_reg[2:0] <= 3'b100;
    v58_addr_5_reg_944[0] <= 1'b1;
    v58_addr_5_reg_944[2] <= 1'b1;
    v58_addr_5_reg_944_pp0_iter1_reg[0] <= 1'b1;
    v58_addr_5_reg_944_pp0_iter1_reg[2] <= 1'b1;
    v58_addr_5_reg_944_pp0_iter2_reg[0] <= 1'b1;
    v58_addr_5_reg_944_pp0_iter2_reg[2] <= 1'b1;
    v58_addr_6_reg_974[2:0] <= 3'b110;
    v58_addr_6_reg_974_pp0_iter1_reg[2:0] <= 3'b110;
    v58_addr_6_reg_974_pp0_iter2_reg[2:0] <= 3'b110;
    v58_addr_7_reg_1110[2:0] <= 3'b111;
    v58_addr_7_reg_1110_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 