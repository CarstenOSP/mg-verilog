
module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,cmp7,v65,grp_fu_642_p_din0,grp_fu_642_p_din1,grp_fu_642_p_opcode,grp_fu_642_p_dout0,grp_fu_642_p_ce,grp_fu_646_p_din0,grp_fu_646_p_din1,grp_fu_646_p_opcode,grp_fu_646_p_dout0,grp_fu_646_p_ce,grp_fu_650_p_din0,grp_fu_650_p_din1,grp_fu_650_p_dout0,grp_fu_650_p_ce,grp_fu_654_p_din0,grp_fu_654_p_din1,grp_fu_654_p_dout0,grp_fu_654_p_ce);  
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
input  [2:0] lshr_ln;
output  [8:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [8:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [3:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [3:0] v58_3_address1;
output   v58_3_ce1;
output   v58_3_we1;
output  [31:0] v58_3_d1;
input  [31:0] v58_3_q1;
output  [3:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [3:0] v58_2_address1;
output   v58_2_ce1;
output   v58_2_we1;
output  [31:0] v58_2_d1;
input  [31:0] v58_2_q1;
output  [3:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [3:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [3:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [3:0] v58_0_address1;
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
output  [31:0] grp_fu_642_p_din0;
output  [31:0] grp_fu_642_p_din1;
output  [1:0] grp_fu_642_p_opcode;
input  [31:0] grp_fu_642_p_dout0;
output   grp_fu_642_p_ce;
output  [31:0] grp_fu_646_p_din0;
output  [31:0] grp_fu_646_p_din1;
output  [1:0] grp_fu_646_p_opcode;
input  [31:0] grp_fu_646_p_dout0;
output   grp_fu_646_p_ce;
output  [31:0] grp_fu_650_p_din0;
output  [31:0] grp_fu_650_p_din1;
input  [31:0] grp_fu_650_p_dout0;
output   grp_fu_650_p_ce;
output  [31:0] grp_fu_654_p_din0;
output  [31:0] grp_fu_654_p_din1;
input  [31:0] grp_fu_654_p_dout0;
output   grp_fu_654_p_ce;
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
reg   [0:0] tmp_15_reg_832;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_384;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_388;
reg   [31:0] reg_392;
reg   [31:0] reg_399;
reg   [6:0] v60_5_reg_824;
wire   [0:0] tmp_15_fu_414_p3;
reg   [0:0] tmp_15_reg_832_pp0_iter1_reg;
reg   [0:0] tmp_15_reg_832_pp0_iter2_reg;
reg   [0:0] tmp_15_reg_832_pp0_iter3_reg;
wire   [4:0] tmp_1_fu_439_p4;
reg   [4:0] tmp_1_reg_841;
wire   [3:0] lshr_ln1_fu_475_p4;
reg   [3:0] lshr_ln1_reg_851;
wire   [31:0] v64_fu_512_p1;
wire   [31:0] v71_fu_517_p1;
wire   [2:0] tmp_8_fu_522_p4;
reg   [2:0] tmp_8_reg_878;
reg   [2:0] tmp_8_reg_878_pp0_iter1_reg;
wire   [0:0] tmp_16_fu_545_p3;
reg   [0:0] tmp_16_reg_894;
wire   [31:0] v77_fu_570_p1;
wire   [31:0] v83_fu_575_p1;
reg   [3:0] v58_0_addr_reg_929;
reg   [3:0] v58_0_addr_reg_929_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_929_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_940;
reg   [3:0] v58_1_addr_reg_940_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_940_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_946;
reg   [3:0] v58_2_addr_reg_946_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_946_pp0_iter3_reg;
reg   [3:0] v58_3_addr_reg_951;
reg   [3:0] v58_3_addr_reg_951_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_951_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_956;
reg   [3:0] v58_0_addr_1_reg_956_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_956_pp0_iter3_reg;
wire   [31:0] v89_fu_644_p1;
reg   [3:0] v58_1_addr_1_reg_967;
reg   [3:0] v58_1_addr_1_reg_967_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_967_pp0_iter3_reg;
wire   [31:0] v95_fu_649_p1;
reg   [3:0] v58_2_addr_1_reg_978;
reg   [3:0] v58_2_addr_1_reg_978_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_978_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_978_pp0_iter4_reg;
reg   [3:0] v58_3_addr_1_reg_983;
reg   [3:0] v58_3_addr_1_reg_983_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_983_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_983_pp0_iter4_reg;
wire   [31:0] v63_fu_654_p3;
reg   [31:0] v63_reg_988;
reg   [31:0] v66_reg_993;
reg   [31:0] v72_reg_998;
wire   [31:0] v101_fu_685_p1;
wire   [31:0] v107_fu_690_p1;
wire   [31:0] v70_fu_695_p3;
reg   [31:0] v70_reg_1023;
reg   [31:0] v75_reg_1028;
reg   [31:0] v81_reg_1033;
reg   [31:0] v87_reg_1038;
reg   [31:0] v93_reg_1043;
reg   [31:0] v99_reg_1048;
reg   [31:0] v105_reg_1053;
reg   [31:0] v78_reg_1058;
reg   [31:0] v84_reg_1063;
wire   [31:0] v76_fu_729_p3;
reg   [31:0] v76_reg_1078;
wire   [31:0] v82_fu_735_p3;
reg   [31:0] v82_reg_1083;
reg   [31:0] v90_reg_1088;
reg   [31:0] v96_reg_1093;
wire   [31:0] v88_fu_765_p3;
reg   [31:0] v88_reg_1108;
wire   [31:0] v94_fu_771_p3;
reg   [31:0] v94_reg_1113;
reg   [31:0] v102_reg_1118;
reg   [31:0] v108_reg_1123;
wire   [31:0] v100_fu_777_p3;
reg   [31:0] v100_reg_1128;
wire   [31:0] v106_fu_783_p3;
reg   [31:0] v106_reg_1133;
reg   [31:0] v103_reg_1138;
reg   [31:0] v109_reg_1143;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln102_fu_434_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_459_p1;
wire   [63:0] zext_ln117_fu_493_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_507_p1;
wire   [63:0] zext_ln131_fu_540_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_565_p1;
wire   [63:0] zext_ln145_fu_588_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_601_p1;
wire   [63:0] zext_ln98_fu_606_p1;
wire   [63:0] zext_ln98_1_fu_610_p1;
wire   [63:0] zext_ln107_fu_624_p1;
wire   [63:0] zext_ln128_1_fu_636_p1;
wire   [63:0] zext_ln114_fu_668_p1;
wire   [63:0] zext_ln121_fu_680_p1;
wire   [63:0] zext_ln128_fu_709_p1;
wire   [63:0] zext_ln135_fu_724_p1;
wire   [63:0] zext_ln142_fu_748_p1;
wire   [63:0] zext_ln149_fu_760_p1;
reg   [6:0] v60_fu_100;
wire   [6:0] add_ln98_fu_464_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_5;
reg    v114_0_ce1_local;
reg   [8:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [8:0] v114_0_address0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_0_we1_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_1_we1_local;
reg    v58_2_ce1_local;
reg   [3:0] v58_2_address1_local;
reg    v58_2_ce0_local;
reg   [3:0] v58_2_address0_local;
reg    v58_2_we1_local;
reg    v58_2_we0_local;
reg    v58_3_ce1_local;
reg   [3:0] v58_3_address1_local;
reg    v58_3_ce0_local;
reg   [3:0] v58_3_address0_local;
reg    v58_3_we1_local;
reg    v58_3_we0_local;
reg   [31:0] grp_fu_368_p0;
reg   [31:0] grp_fu_368_p1;
reg   [31:0] grp_fu_372_p0;
reg   [31:0] grp_fu_372_p1;
reg   [31:0] grp_fu_376_p0;
reg   [31:0] grp_fu_380_p0;
wire   [5:0] trunc_ln98_fu_422_p1;
wire   [8:0] tmp_fu_426_p3;
wire   [8:0] tmp_2_fu_449_p4;
wire   [8:0] tmp_5_fu_484_p4;
wire   [8:0] tmp_7_fu_498_p4;
wire   [8:0] tmp_10_fu_531_p4;
wire   [8:0] tmp_14_fu_552_p6;
wire   [8:0] tmp_17_fu_580_p4;
wire   [8:0] tmp_19_fu_593_p4;
wire   [5:0] or_ln_fu_617_p3;
wire   [3:0] or_ln128_1_fu_629_p3;
wire   [5:0] or_ln1_fu_661_p3;
wire   [5:0] or_ln2_fu_673_p3;
wire   [5:0] or_ln3_fu_702_p3;
wire   [5:0] or_ln4_fu_714_p5;
wire   [5:0] or_ln5_fu_741_p3;
wire   [5:0] or_ln6_fu_753_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
#0 v60_fu_100 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_15_fu_414_p3 == 1'd0))) begin
            v60_fu_100 <= add_ln98_fu_464_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_100 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln1_reg_851 <= {{v60_5_reg_824[5:2]}};
        v63_reg_988 <= v63_fu_654_p3;
        v70_reg_1023 <= v70_fu_695_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_384 <= v114_0_q1;
        reg_388 <= v114_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_392 <= grp_fu_642_p_dout0;
        reg_399 <= grp_fu_646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_15_reg_832 <= ap_sig_allocacmp_v60_5[32'd6];
        tmp_15_reg_832_pp0_iter1_reg <= tmp_15_reg_832;
        tmp_15_reg_832_pp0_iter2_reg <= tmp_15_reg_832_pp0_iter1_reg;
        tmp_15_reg_832_pp0_iter3_reg <= tmp_15_reg_832_pp0_iter2_reg;
        tmp_1_reg_841 <= {{ap_sig_allocacmp_v60_5[5:1]}};
        v100_reg_1128 <= v100_fu_777_p3;
        v106_reg_1133 <= v106_fu_783_p3;
        v58_0_addr_1_reg_956[3 : 1] <= zext_ln128_1_fu_636_p1[3 : 1];
        v58_0_addr_1_reg_956_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_956[3 : 1];
        v58_0_addr_1_reg_956_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_956_pp0_iter2_reg[3 : 1];
        v58_0_addr_reg_929 <= zext_ln98_1_fu_610_p1;
        v58_0_addr_reg_929_pp0_iter2_reg <= v58_0_addr_reg_929;
        v58_0_addr_reg_929_pp0_iter3_reg <= v58_0_addr_reg_929_pp0_iter2_reg;
        v58_1_addr_1_reg_967[3 : 1] <= zext_ln128_1_fu_636_p1[3 : 1];
        v58_1_addr_1_reg_967_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_967[3 : 1];
        v58_1_addr_1_reg_967_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_967_pp0_iter2_reg[3 : 1];
        v58_1_addr_reg_940 <= zext_ln98_1_fu_610_p1;
        v58_1_addr_reg_940_pp0_iter2_reg <= v58_1_addr_reg_940;
        v58_1_addr_reg_940_pp0_iter3_reg <= v58_1_addr_reg_940_pp0_iter2_reg;
        v58_2_addr_1_reg_978[3 : 1] <= zext_ln128_1_fu_636_p1[3 : 1];
        v58_2_addr_1_reg_978_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_978[3 : 1];
        v58_2_addr_1_reg_978_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_978_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_978_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_978_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_946 <= zext_ln98_1_fu_610_p1;
        v58_2_addr_reg_946_pp0_iter2_reg <= v58_2_addr_reg_946;
        v58_2_addr_reg_946_pp0_iter3_reg <= v58_2_addr_reg_946_pp0_iter2_reg;
        v58_3_addr_1_reg_983[3 : 1] <= zext_ln128_1_fu_636_p1[3 : 1];
        v58_3_addr_1_reg_983_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_983[3 : 1];
        v58_3_addr_1_reg_983_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_983_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_983_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_983_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_951 <= zext_ln98_1_fu_610_p1;
        v58_3_addr_reg_951_pp0_iter2_reg <= v58_3_addr_reg_951;
        v58_3_addr_reg_951_pp0_iter3_reg <= v58_3_addr_reg_951_pp0_iter2_reg;
        v60_5_reg_824 <= ap_sig_allocacmp_v60_5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_16_reg_894 <= v60_5_reg_824[32'd1];
        tmp_8_reg_878 <= {{v60_5_reg_824[5:3]}};
        tmp_8_reg_878_pp0_iter1_reg <= tmp_8_reg_878;
        v76_reg_1078 <= v76_fu_729_p3;
        v82_reg_1083 <= v82_fu_735_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1118 <= grp_fu_650_p_dout0;
        v108_reg_1123 <= grp_fu_654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1138 <= grp_fu_642_p_dout0;
        v109_reg_1143 <= grp_fu_646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v105_reg_1053 <= v58_3_q0;
        v66_reg_993 <= grp_fu_650_p_dout0;
        v72_reg_998 <= grp_fu_654_p_dout0;
        v75_reg_1028 <= v58_2_q1;
        v81_reg_1033 <= v58_3_q1;
        v87_reg_1038 <= v58_0_q0;
        v93_reg_1043 <= v58_1_q0;
        v99_reg_1048 <= v58_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1058 <= grp_fu_650_p_dout0;
        v84_reg_1063 <= grp_fu_654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v88_reg_1108 <= v88_fu_765_p3;
        v94_reg_1113 <= v94_fu_771_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1088 <= grp_fu_650_p_dout0;
        v96_reg_1093 <= grp_fu_654_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_15_reg_832 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_15_reg_832_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_v60_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_5 = v60_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = v100_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = v88_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = v76_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = v63_reg_988;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p1 = v102_reg_1118;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p1 = v90_reg_1088;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p1 = v78_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p1 = v66_reg_993;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v106_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v94_reg_1113;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = v82_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = v70_reg_1023;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p1 = v108_reg_1123;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p1 = v96_reg_1093;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p1 = v84_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p1 = v72_reg_998;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p0 = v101_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = v89_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p0 = v77_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p0 = v64_fu_512_p1;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p0 = v107_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p0 = v95_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p0 = v83_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p0 = v71_fu_517_p1;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_601_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_507_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_459_p1;
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
            v114_0_address1_local = zext_ln145_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_540_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_434_p1;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_760_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_724_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_680_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_624_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_606_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_reg_929_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_1_fu_636_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_1_reg_956_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_610_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_reg_940_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_1_fu_636_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_1_reg_967_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_610_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_978_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln128_1_fu_636_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_address1_local = v58_2_addr_reg_946_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_1_fu_610_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_2_ce1_local = 1'b1;
    end else begin
        v58_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_983_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln128_1_fu_636_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_address1_local = v58_3_addr_reg_951_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_1_fu_610_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_3_ce1_local = 1'b1;
    end else begin
        v58_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_3_we1_local = 1'b1;
    end else begin
        v58_3_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln98_fu_464_p2 = (ap_sig_allocacmp_v60_5 + 7'd8);
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
assign grp_fu_642_p_ce = 1'b1;
assign grp_fu_642_p_din0 = grp_fu_368_p0;
assign grp_fu_642_p_din1 = grp_fu_368_p1;
assign grp_fu_642_p_opcode = 2'd0;
assign grp_fu_646_p_ce = 1'b1;
assign grp_fu_646_p_din0 = grp_fu_372_p0;
assign grp_fu_646_p_din1 = grp_fu_372_p1;
assign grp_fu_646_p_opcode = 2'd0;
assign grp_fu_650_p_ce = 1'b1;
assign grp_fu_650_p_din0 = grp_fu_376_p0;
assign grp_fu_650_p_din1 = v65;
assign grp_fu_654_p_ce = 1'b1;
assign grp_fu_654_p_din0 = grp_fu_380_p0;
assign grp_fu_654_p_din1 = v65;
assign lshr_ln1_fu_475_p4 = {{v60_5_reg_824[5:2]}};
assign or_ln128_1_fu_629_p3 = {{tmp_8_reg_878}, {1'd1}};
assign or_ln1_fu_661_p3 = {{lshr_ln1_reg_851}, {2'd2}};
assign or_ln2_fu_673_p3 = {{lshr_ln1_reg_851}, {2'd3}};
assign or_ln3_fu_702_p3 = {{tmp_8_reg_878}, {3'd4}};
assign or_ln4_fu_714_p5 = {{{{tmp_8_reg_878}, {1'd1}}, {tmp_16_reg_894}}, {1'd1}};
assign or_ln5_fu_741_p3 = {{tmp_8_reg_878_pp0_iter1_reg}, {3'd6}};
assign or_ln6_fu_753_p3 = {{tmp_8_reg_878_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_617_p3 = {{tmp_1_reg_841}, {1'd1}};
assign tmp_10_fu_531_p4 = {{{tmp_8_fu_522_p4}, {3'd4}}, {lshr_ln}};
assign tmp_14_fu_552_p6 = {{{{{tmp_8_fu_522_p4}, {1'd1}}, {tmp_16_fu_545_p3}}, {1'd1}}, {lshr_ln}};
assign tmp_15_fu_414_p3 = ap_sig_allocacmp_v60_5[32'd6];
assign tmp_16_fu_545_p3 = v60_5_reg_824[32'd1];
assign tmp_17_fu_580_p4 = {{{tmp_8_reg_878}, {3'd6}}, {lshr_ln}};
assign tmp_19_fu_593_p4 = {{{tmp_8_reg_878}, {3'd7}}, {lshr_ln}};
assign tmp_1_fu_439_p4 = {{ap_sig_allocacmp_v60_5[5:1]}};
assign tmp_2_fu_449_p4 = {{{tmp_1_fu_439_p4}, {1'd1}}, {lshr_ln}};
assign tmp_5_fu_484_p4 = {{{lshr_ln1_fu_475_p4}, {2'd2}}, {lshr_ln}};
assign tmp_7_fu_498_p4 = {{{lshr_ln1_fu_475_p4}, {2'd3}}, {lshr_ln}};
assign tmp_8_fu_522_p4 = {{v60_5_reg_824[5:3]}};
assign tmp_fu_426_p3 = {{trunc_ln98_fu_422_p1}, {lshr_ln}};
assign trunc_ln98_fu_422_p1 = ap_sig_allocacmp_v60_5[5:0];
assign v100_fu_777_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v99_reg_1048);
assign v101_fu_685_p1 = reg_384;
assign v106_fu_783_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v105_reg_1053);
assign v107_fu_690_p1 = reg_388;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_392;
assign v58_0_d1 = reg_392;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_399;
assign v58_1_d1 = reg_399;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1138;
assign v58_2_d1 = reg_392;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1143;
assign v58_3_d1 = reg_399;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v63_fu_654_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v58_0_q1);
assign v64_fu_512_p1 = reg_384;
assign v70_fu_695_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v58_1_q1);
assign v71_fu_517_p1 = reg_388;
assign v76_fu_729_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v75_reg_1028);
assign v77_fu_570_p1 = reg_384;
assign v82_fu_735_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v81_reg_1033);
assign v83_fu_575_p1 = reg_388;
assign v88_fu_765_p3 = ((cmp7[0:0] == 1'b1) ? v57_q1 : v87_reg_1038);
assign v89_fu_644_p1 = reg_384;
assign v94_fu_771_p3 = ((cmp7[0:0] == 1'b1) ? v57_q0 : v93_reg_1043);
assign v95_fu_649_p1 = reg_388;
assign zext_ln102_fu_434_p1 = tmp_fu_426_p3;
assign zext_ln107_fu_624_p1 = or_ln_fu_617_p3;
assign zext_ln110_fu_459_p1 = tmp_2_fu_449_p4;
assign zext_ln114_fu_668_p1 = or_ln1_fu_661_p3;
assign zext_ln117_fu_493_p1 = tmp_5_fu_484_p4;
assign zext_ln121_fu_680_p1 = or_ln2_fu_673_p3;
assign zext_ln124_fu_507_p1 = tmp_7_fu_498_p4;
assign zext_ln128_1_fu_636_p1 = or_ln128_1_fu_629_p3;
assign zext_ln128_fu_709_p1 = or_ln3_fu_702_p3;
assign zext_ln131_fu_540_p1 = tmp_10_fu_531_p4;
assign zext_ln135_fu_724_p1 = or_ln4_fu_714_p5;
assign zext_ln138_fu_565_p1 = tmp_14_fu_552_p6;
assign zext_ln142_fu_748_p1 = or_ln5_fu_741_p3;
assign zext_ln145_fu_588_p1 = tmp_17_fu_580_p4;
assign zext_ln149_fu_760_p1 = or_ln6_fu_753_p3;
assign zext_ln152_fu_601_p1 = tmp_19_fu_593_p4;
assign zext_ln98_1_fu_610_p1 = lshr_ln1_reg_851;
assign zext_ln98_fu_606_p1 = v60_5_reg_824;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_956[0] <= 1'b1;
    v58_0_addr_1_reg_956_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_956_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_967[0] <= 1'b1;
    v58_1_addr_1_reg_967_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_967_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_978[0] <= 1'b1;
    v58_2_addr_1_reg_978_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_978_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_978_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_983[0] <= 1'b1;
    v58_3_addr_1_reg_983_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_983_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_983_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 
