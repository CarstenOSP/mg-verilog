module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v59,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,cmp7,v65,zext_ln97,grp_fu_359_p_din0,grp_fu_359_p_din1,grp_fu_359_p_opcode,grp_fu_359_p_dout0,grp_fu_359_p_ce,grp_fu_363_p_din0,grp_fu_363_p_din1,grp_fu_363_p_opcode,grp_fu_363_p_dout0,grp_fu_363_p_ce,grp_fu_367_p_din0,grp_fu_367_p_din1,grp_fu_367_p_dout0,grp_fu_367_p_ce,grp_fu_371_p_din0,grp_fu_371_p_din1,grp_fu_371_p_dout0,grp_fu_371_p_ce); 
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
input  [5:0] v59;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [4:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [4:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [4:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [4:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
input  [0:0] cmp7;
input  [31:0] v65;
input  [5:0] zext_ln97;
output  [31:0] grp_fu_359_p_din0;
output  [31:0] grp_fu_359_p_din1;
output  [1:0] grp_fu_359_p_opcode;
input  [31:0] grp_fu_359_p_dout0;
output   grp_fu_359_p_ce;
output  [31:0] grp_fu_363_p_din0;
output  [31:0] grp_fu_363_p_din1;
output  [1:0] grp_fu_363_p_opcode;
input  [31:0] grp_fu_363_p_dout0;
output   grp_fu_363_p_ce;
output  [31:0] grp_fu_367_p_din0;
output  [31:0] grp_fu_367_p_din1;
input  [31:0] grp_fu_367_p_dout0;
output   grp_fu_367_p_ce;
output  [31:0] grp_fu_371_p_din0;
output  [31:0] grp_fu_371_p_din1;
input  [31:0] grp_fu_371_p_dout0;
output   grp_fu_371_p_ce;
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
reg   [0:0] tmp_reg_850;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_380;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_384;
reg   [31:0] reg_388;
reg   [31:0] reg_393;
wire   [6:0] v59_cast_fu_398_p1;
reg   [6:0] v59_cast_reg_836;
reg   [6:0] v60_3_reg_843;
wire   [0:0] tmp_fu_410_p3;
wire   [4:0] tmp_2_cast_fu_423_p4;
reg   [4:0] tmp_2_cast_reg_854;
reg   [31:0] v61_reg_879;
reg   [31:0] v68_reg_884;
wire   [3:0] tmp_6_fu_485_p4;
reg   [3:0] tmp_6_reg_889;
reg   [2:0] tmp_13_reg_914;
reg   [0:0] tmp_10_reg_928;
wire   [31:0] v64_fu_564_p1;
wire   [31:0] v71_fu_569_p1;
reg   [31:0] v74_reg_946;
reg   [31:0] v80_reg_951;
wire   [31:0] v77_fu_631_p1;
wire   [31:0] v83_fu_636_p1;
reg   [31:0] v86_reg_986;
reg   [31:0] v92_reg_991;
reg   [4:0] v58_0_addr_reg_1016;
reg   [4:0] v58_0_addr_reg_1016_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_1016_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_1021;
reg   [4:0] v58_1_addr_reg_1021_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_1021_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_1026;
reg   [4:0] v58_0_addr_1_reg_1026_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_1026_pp0_iter3_reg;
reg   [4:0] v58_1_addr_1_reg_1031;
reg   [4:0] v58_1_addr_1_reg_1031_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_1031_pp0_iter3_reg;
wire   [31:0] v89_fu_709_p1;
wire   [31:0] v95_fu_714_p1;
reg   [31:0] v98_reg_1046;
reg   [31:0] v104_reg_1051;
wire   [31:0] v63_fu_719_p3;
reg   [31:0] v63_reg_1056;
reg   [31:0] v66_reg_1061;
reg   [31:0] v72_reg_1066;
reg   [4:0] v58_0_addr_2_reg_1071;
reg   [4:0] v58_0_addr_2_reg_1071_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_1071_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_1076;
reg   [4:0] v58_1_addr_2_reg_1076_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_1076_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1081;
reg   [4:0] v58_0_addr_3_reg_1081_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_1081_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_1081_pp0_iter4_reg;
wire   [31:0] v101_fu_752_p1;
reg   [4:0] v58_1_addr_3_reg_1091;
reg   [4:0] v58_1_addr_3_reg_1091_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1091_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1091_pp0_iter4_reg;
wire   [31:0] v107_fu_757_p1;
wire   [31:0] v70_fu_762_p3;
reg   [31:0] v70_reg_1101;
wire   [31:0] v76_fu_768_p3;
reg   [31:0] v76_reg_1106;
wire   [31:0] v82_fu_774_p3;
reg   [31:0] v82_reg_1111;
reg   [31:0] v78_reg_1116;
reg   [31:0] v84_reg_1121;
wire   [31:0] v88_fu_780_p3;
reg   [31:0] v88_reg_1126;
wire   [31:0] v94_fu_786_p3;
reg   [31:0] v94_reg_1131;
wire   [31:0] v100_fu_792_p3;
reg   [31:0] v100_reg_1136;
wire   [31:0] v106_fu_798_p3;
reg   [31:0] v106_reg_1141;
reg   [31:0] v90_reg_1146;
reg   [31:0] v96_reg_1151;
reg   [31:0] v102_reg_1156;
reg   [31:0] v108_reg_1161;
reg   [31:0] v79_reg_1166;
reg   [31:0] v85_reg_1171;
reg   [31:0] v103_reg_1176;
reg   [31:0] v109_reg_1181;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_441_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_418_p1;
wire   [63:0] zext_ln110_fu_469_p1;
wire   [63:0] zext_ln107_fu_454_p1;
wire   [63:0] zext_ln117_fu_516_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln114_fu_502_p1;
wire   [63:0] zext_ln124_fu_543_p1;
wire   [63:0] zext_ln121_fu_529_p1;
wire   [63:0] zext_ln131_fu_595_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln128_fu_581_p1;
wire   [63:0] zext_ln138_fu_626_p1;
wire   [63:0] zext_ln135_fu_610_p1;
wire   [63:0] zext_ln145_fu_661_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_fu_648_p1;
wire   [63:0] zext_ln152_fu_686_p1;
wire   [63:0] zext_ln149_fu_673_p1;
wire   [63:0] zext_ln98_1_fu_691_p1;
wire   [63:0] zext_ln114_1_fu_703_p1;
wire   [63:0] zext_ln128_1_fu_733_p1;
wire   [63:0] zext_ln142_1_fu_746_p1;
reg   [6:0] v60_fu_108;
wire   [6:0] add_ln98_fu_474_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_3;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_364_p1;
reg   [31:0] grp_fu_368_p0;
reg   [31:0] grp_fu_368_p1;
reg   [31:0] grp_fu_372_p0;
reg   [31:0] grp_fu_376_p0;
wire   [11:0] tmp_3_fu_433_p3;
wire   [5:0] or_ln_fu_446_p3;
wire   [11:0] add_ln_fu_459_p4;
wire   [5:0] or_ln1_fu_494_p3;
wire   [11:0] tmp_9_fu_507_p4;
wire   [5:0] or_ln2_fu_521_p3;
wire   [11:0] add_ln1_fu_534_p4;
wire   [5:0] or_ln3_fu_574_p3;
wire   [11:0] tmp_18_fu_586_p5;
wire   [5:0] or_ln4_fu_600_p5;
wire   [11:0] add_ln2_fu_615_p6;
wire   [5:0] or_ln5_fu_641_p3;
wire   [11:0] tmp_27_fu_653_p4;
wire   [5:0] or_ln6_fu_666_p3;
wire   [11:0] add_ln3_fu_678_p4;
wire   [4:0] or_ln114_1_fu_696_p3;
wire   [4:0] or_ln128_1_fu_725_p4;
wire   [4:0] or_ln142_1_fu_739_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 v60_fu_108 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_410_p3 == 1'd0))) begin
            v60_fu_108 <= add_ln98_fu_474_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_108 <= 7'd0;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_380 <= v114_q1;
        reg_384 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_388 <= grp_fu_359_p_dout0;
        reg_393 <= grp_fu_363_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_928 <= v60_3_reg_843[32'd1];
        tmp_13_reg_914 <= {{v60_3_reg_843[5:3]}};
        tmp_6_reg_889 <= {{v60_3_reg_843[5:2]}};
        v58_0_addr_2_reg_1071[0] <= zext_ln128_1_fu_733_p1[0];
v58_0_addr_2_reg_1071[4 : 2] <= zext_ln128_1_fu_733_p1[4 : 2];
        v58_0_addr_2_reg_1071_pp0_iter2_reg[0] <= v58_0_addr_2_reg_1071[0];
v58_0_addr_2_reg_1071_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_1071[4 : 2];
        v58_0_addr_2_reg_1071_pp0_iter3_reg[0] <= v58_0_addr_2_reg_1071_pp0_iter2_reg[0];
v58_0_addr_2_reg_1071_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_1071_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1081[4 : 2] <= zext_ln142_1_fu_746_p1[4 : 2];
        v58_0_addr_3_reg_1081_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_1081[4 : 2];
        v58_0_addr_3_reg_1081_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_1081_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_1081_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_1081_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_1076[0] <= zext_ln128_1_fu_733_p1[0];
v58_1_addr_2_reg_1076[4 : 2] <= zext_ln128_1_fu_733_p1[4 : 2];
        v58_1_addr_2_reg_1076_pp0_iter2_reg[0] <= v58_1_addr_2_reg_1076[0];
v58_1_addr_2_reg_1076_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_1076[4 : 2];
        v58_1_addr_2_reg_1076_pp0_iter3_reg[0] <= v58_1_addr_2_reg_1076_pp0_iter2_reg[0];
v58_1_addr_2_reg_1076_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_1076_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1091[4 : 2] <= zext_ln142_1_fu_746_p1[4 : 2];
        v58_1_addr_3_reg_1091_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1091[4 : 2];
        v58_1_addr_3_reg_1091_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1091_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1091_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1091_pp0_iter3_reg[4 : 2];
        v63_reg_1056 <= v63_fu_719_p3;
        v70_reg_1101 <= v70_fu_762_p3;
        v76_reg_1106 <= v76_fu_768_p3;
        v82_reg_1111 <= v82_fu_774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_cast_reg_854 <= {{ap_sig_allocacmp_v60_3[5:1]}};
        tmp_reg_850 <= ap_sig_allocacmp_v60_3[32'd6];
        v58_0_addr_1_reg_1026[4 : 1] <= zext_ln114_1_fu_703_p1[4 : 1];
        v58_0_addr_1_reg_1026_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_1026[4 : 1];
        v58_0_addr_1_reg_1026_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_1026_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_1016 <= zext_ln98_1_fu_691_p1;
        v58_0_addr_reg_1016_pp0_iter2_reg <= v58_0_addr_reg_1016;
        v58_0_addr_reg_1016_pp0_iter3_reg <= v58_0_addr_reg_1016_pp0_iter2_reg;
        v58_1_addr_1_reg_1031[4 : 1] <= zext_ln114_1_fu_703_p1[4 : 1];
        v58_1_addr_1_reg_1031_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_1031[4 : 1];
        v58_1_addr_1_reg_1031_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_1031_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_1021 <= zext_ln98_1_fu_691_p1;
        v58_1_addr_reg_1021_pp0_iter2_reg <= v58_1_addr_reg_1021;
        v58_1_addr_reg_1021_pp0_iter3_reg <= v58_1_addr_reg_1021_pp0_iter2_reg;
        v59_cast_reg_836[5 : 0] <= v59_cast_fu_398_p1[5 : 0];
        v60_3_reg_843 <= ap_sig_allocacmp_v60_3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1136 <= v100_fu_792_p3;
        v106_reg_1141 <= v106_fu_798_p3;
        v88_reg_1126 <= v88_fu_780_p3;
        v94_reg_1131 <= v94_fu_786_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1156 <= grp_fu_367_p_dout0;
        v108_reg_1161 <= grp_fu_371_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1176 <= grp_fu_359_p_dout0;
        v109_reg_1181 <= grp_fu_363_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1051 <= v57_q0;
        v98_reg_1046 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_879 <= v57_q1;
        v68_reg_884 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_reg_1061 <= grp_fu_367_p_dout0;
        v72_reg_1066 <= grp_fu_371_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_946 <= v57_q1;
        v80_reg_951 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1116 <= grp_fu_367_p_dout0;
        v84_reg_1121 <= grp_fu_371_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_1166 <= grp_fu_359_p_dout0;
        v85_reg_1171 <= grp_fu_363_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_986 <= v57_q1;
        v92_reg_991 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1146 <= grp_fu_367_p_dout0;
        v96_reg_1151 <= grp_fu_371_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_850 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_3 = v60_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = v100_reg_1136;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = v88_reg_1126;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p0 = v76_reg_1106;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p0 = v63_reg_1056;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p1 = v102_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p1 = v90_reg_1146;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p1 = v78_reg_1116;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p1 = v66_reg_1061;
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v106_reg_1141;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v94_reg_1131;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = v82_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = v70_reg_1101;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p1 = v108_reg_1161;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p1 = v96_reg_1151;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p1 = v84_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p1 = v72_reg_1066;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v101_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v89_fu_709_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = v77_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = v64_fu_564_p1;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p0 = v107_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = v95_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p0 = v83_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p0 = v71_fu_569_p1;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln152_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln138_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln124_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address0_local = zext_ln110_fu_469_p1;
        end else begin
            v114_address0_local = 'bx;
        end
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address1_local = zext_ln145_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln131_fu_595_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln117_fu_516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_address1_local = zext_ln102_fu_441_p1;
        end else begin
            v114_address1_local = 'bx;
        end
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_610_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_454_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_648_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_581_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_502_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_418_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_1081_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_1_reg_1026_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_1_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_1_fu_703_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_2_reg_1071_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1016_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_1_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_691_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_d0_local = v103_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_1166;
    end else begin
        v58_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address0_local = v58_1_addr_3_reg_1091_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_1_reg_1031_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_1_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_1_fu_703_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_2_reg_1076_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1021_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_1_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_691_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_d0_local = v109_reg_1181;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_1171;
    end else begin
        v58_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
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
assign add_ln1_fu_534_p4 = {{{tmp_6_fu_485_p4}, {2'd3}}, {zext_ln97}};
assign add_ln2_fu_615_p6 = {{{{{tmp_13_reg_914}, {1'd1}}, {tmp_10_reg_928}}, {1'd1}}, {zext_ln97}};
assign add_ln3_fu_678_p4 = {{{tmp_13_reg_914}, {3'd7}}, {zext_ln97}};
assign add_ln98_fu_474_p2 = (ap_sig_allocacmp_v60_3 + 7'd8);
assign add_ln_fu_459_p4 = {{{tmp_2_cast_fu_423_p4}, {1'd1}}, {zext_ln97}};
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
assign grp_fu_359_p_ce = 1'b1;
assign grp_fu_359_p_din0 = grp_fu_364_p0;
assign grp_fu_359_p_din1 = grp_fu_364_p1;
assign grp_fu_359_p_opcode = 2'd0;
assign grp_fu_363_p_ce = 1'b1;
assign grp_fu_363_p_din0 = grp_fu_368_p0;
assign grp_fu_363_p_din1 = grp_fu_368_p1;
assign grp_fu_363_p_opcode = 2'd0;
assign grp_fu_367_p_ce = 1'b1;
assign grp_fu_367_p_din0 = grp_fu_372_p0;
assign grp_fu_367_p_din1 = v65;
assign grp_fu_371_p_ce = 1'b1;
assign grp_fu_371_p_din0 = grp_fu_376_p0;
assign grp_fu_371_p_din1 = v65;
assign or_ln114_1_fu_696_p3 = {{tmp_6_reg_889}, {1'd1}};
assign or_ln128_1_fu_725_p4 = {{{tmp_13_reg_914}, {1'd1}}, {tmp_10_reg_928}};
assign or_ln142_1_fu_739_p3 = {{tmp_13_reg_914}, {2'd3}};
assign or_ln1_fu_494_p3 = {{tmp_6_fu_485_p4}, {2'd2}};
assign or_ln2_fu_521_p3 = {{tmp_6_fu_485_p4}, {2'd3}};
assign or_ln3_fu_574_p3 = {{tmp_13_reg_914}, {3'd4}};
assign or_ln4_fu_600_p5 = {{{{tmp_13_reg_914}, {1'd1}}, {tmp_10_reg_928}}, {1'd1}};
assign or_ln5_fu_641_p3 = {{tmp_13_reg_914}, {3'd6}};
assign or_ln6_fu_666_p3 = {{tmp_13_reg_914}, {3'd7}};
assign or_ln_fu_446_p3 = {{tmp_2_cast_fu_423_p4}, {1'd1}};
assign tmp_18_fu_586_p5 = {{{{tmp_13_reg_914}, {1'd1}}, {tmp_10_reg_928}}, {v59_cast_reg_836}};
assign tmp_27_fu_653_p4 = {{{tmp_13_reg_914}, {2'd3}}, {v59_cast_reg_836}};
assign tmp_2_cast_fu_423_p4 = {{ap_sig_allocacmp_v60_3[5:1]}};
assign tmp_3_fu_433_p3 = {{tmp_2_cast_fu_423_p4}, {v59_cast_fu_398_p1}};
assign tmp_6_fu_485_p4 = {{v60_3_reg_843[5:2]}};
assign tmp_9_fu_507_p4 = {{{tmp_6_fu_485_p4}, {1'd1}}, {v59_cast_reg_836}};
assign tmp_fu_410_p3 = ap_sig_allocacmp_v60_3[32'd6];
assign v100_fu_792_p3 = ((cmp7[0:0] == 1'b1) ? v98_reg_1046 : v58_0_q0);
assign v101_fu_752_p1 = reg_380;
assign v106_fu_798_p3 = ((cmp7[0:0] == 1'b1) ? v104_reg_1051 : v58_1_q0);
assign v107_fu_757_p1 = reg_384;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_388;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_393;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v59_cast_fu_398_p1 = v59;
assign v63_fu_719_p3 = ((cmp7[0:0] == 1'b1) ? v61_reg_879 : v58_0_q1);
assign v64_fu_564_p1 = reg_380;
assign v70_fu_762_p3 = ((cmp7[0:0] == 1'b1) ? v68_reg_884 : v58_1_q1);
assign v71_fu_569_p1 = reg_384;
assign v76_fu_768_p3 = ((cmp7[0:0] == 1'b1) ? v74_reg_946 : v58_0_q0);
assign v77_fu_631_p1 = reg_380;
assign v82_fu_774_p3 = ((cmp7[0:0] == 1'b1) ? v80_reg_951 : v58_1_q0);
assign v83_fu_636_p1 = reg_384;
assign v88_fu_780_p3 = ((cmp7[0:0] == 1'b1) ? v86_reg_986 : v58_0_q1);
assign v89_fu_709_p1 = reg_380;
assign v94_fu_786_p3 = ((cmp7[0:0] == 1'b1) ? v92_reg_991 : v58_1_q1);
assign v95_fu_714_p1 = reg_384;
assign zext_ln102_fu_441_p1 = tmp_3_fu_433_p3;
assign zext_ln107_fu_454_p1 = or_ln_fu_446_p3;
assign zext_ln110_fu_469_p1 = add_ln_fu_459_p4;
assign zext_ln114_1_fu_703_p1 = or_ln114_1_fu_696_p3;
assign zext_ln114_fu_502_p1 = or_ln1_fu_494_p3;
assign zext_ln117_fu_516_p1 = tmp_9_fu_507_p4;
assign zext_ln121_fu_529_p1 = or_ln2_fu_521_p3;
assign zext_ln124_fu_543_p1 = add_ln1_fu_534_p4;
assign zext_ln128_1_fu_733_p1 = or_ln128_1_fu_725_p4;
assign zext_ln128_fu_581_p1 = or_ln3_fu_574_p3;
assign zext_ln131_fu_595_p1 = tmp_18_fu_586_p5;
assign zext_ln135_fu_610_p1 = or_ln4_fu_600_p5;
assign zext_ln138_fu_626_p1 = add_ln2_fu_615_p6;
assign zext_ln142_1_fu_746_p1 = or_ln142_1_fu_739_p3;
assign zext_ln142_fu_648_p1 = or_ln5_fu_641_p3;
assign zext_ln145_fu_661_p1 = tmp_27_fu_653_p4;
assign zext_ln149_fu_673_p1 = or_ln6_fu_666_p3;
assign zext_ln152_fu_686_p1 = add_ln3_fu_678_p4;
assign zext_ln98_1_fu_691_p1 = tmp_2_cast_reg_854;
assign zext_ln98_fu_418_p1 = ap_sig_allocacmp_v60_3;
always @ (posedge ap_clk) begin
    v59_cast_reg_836[6] <= 1'b0;
    v58_0_addr_1_reg_1026[0] <= 1'b1;
    v58_0_addr_1_reg_1026_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1026_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1031[0] <= 1'b1;
    v58_1_addr_1_reg_1031_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1031_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_2_reg_1071[1] <= 1'b1;
    v58_0_addr_2_reg_1071_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_1071_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1076[1] <= 1'b1;
    v58_1_addr_2_reg_1076_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_1076_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_3_reg_1081[1:0] <= 2'b11;
    v58_0_addr_3_reg_1081_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1081_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_1081_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1091[1:0] <= 2'b11;
    v58_1_addr_3_reg_1091_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1091_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1091_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 