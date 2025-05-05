module atax_atax_node1_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v57_0_address0,v57_0_ce0,v57_0_q0,cmp7,v65,v57_1_address0,v57_1_ce0,v57_1_q0,v57_2_address0,v57_2_ce0,v57_2_q0,v57_3_address0,v57_3_ce0,v57_3_q0,v57_4_address0,v57_4_ce0,v57_4_q0,v57_5_address0,v57_5_ce0,v57_5_q0,v57_6_address0,v57_6_ce0,v57_6_q0,v57_7_address0,v57_7_ce0,v57_7_q0,grp_fu_630_p_din0,grp_fu_630_p_din1,grp_fu_630_p_opcode,grp_fu_630_p_dout0,grp_fu_630_p_ce,grp_fu_634_p_din0,grp_fu_634_p_din1,grp_fu_634_p_opcode,grp_fu_634_p_dout0,grp_fu_634_p_ce,grp_fu_638_p_din0,grp_fu_638_p_din1,grp_fu_638_p_dout0,grp_fu_638_p_ce,grp_fu_642_p_din0,grp_fu_642_p_din1,grp_fu_642_p_dout0,grp_fu_642_p_ce); 
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
input  [4:0] lshr_ln;
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
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
output  [2:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
input  [0:0] cmp7;
input  [31:0] v65;
output  [2:0] v57_1_address0;
output   v57_1_ce0;
input  [31:0] v57_1_q0;
output  [2:0] v57_2_address0;
output   v57_2_ce0;
input  [31:0] v57_2_q0;
output  [2:0] v57_3_address0;
output   v57_3_ce0;
input  [31:0] v57_3_q0;
output  [2:0] v57_4_address0;
output   v57_4_ce0;
input  [31:0] v57_4_q0;
output  [2:0] v57_5_address0;
output   v57_5_ce0;
input  [31:0] v57_5_q0;
output  [2:0] v57_6_address0;
output   v57_6_ce0;
input  [31:0] v57_6_q0;
output  [2:0] v57_7_address0;
output   v57_7_ce0;
input  [31:0] v57_7_q0;
output  [31:0] grp_fu_630_p_din0;
output  [31:0] grp_fu_630_p_din1;
output  [1:0] grp_fu_630_p_opcode;
input  [31:0] grp_fu_630_p_dout0;
output   grp_fu_630_p_ce;
output  [31:0] grp_fu_634_p_din0;
output  [31:0] grp_fu_634_p_din1;
output  [1:0] grp_fu_634_p_opcode;
input  [31:0] grp_fu_634_p_dout0;
output   grp_fu_634_p_ce;
output  [31:0] grp_fu_638_p_din0;
output  [31:0] grp_fu_638_p_din1;
input  [31:0] grp_fu_638_p_dout0;
output   grp_fu_638_p_ce;
output  [31:0] grp_fu_642_p_din0;
output  [31:0] grp_fu_642_p_din1;
input  [31:0] grp_fu_642_p_dout0;
output   grp_fu_642_p_ce;
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
reg   [0:0] tmp_17_reg_788;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_403;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_407;
reg   [31:0] reg_411;
reg   [31:0] reg_416;
reg   [6:0] v60_5_reg_781;
wire   [0:0] tmp_17_fu_429_p3;
wire   [4:0] lshr_ln1_fu_454_p4;
reg   [4:0] lshr_ln1_reg_797;
reg   [2:0] lshr_ln98_1_reg_807;
wire   [3:0] tmp_3_fu_499_p4;
reg   [3:0] tmp_3_reg_818;
reg   [0:0] tmp_18_reg_833;
wire   [31:0] v64_fu_543_p1;
wire   [31:0] v71_fu_548_p1;
wire   [31:0] v77_fu_582_p1;
wire   [31:0] v83_fu_587_p1;
reg   [4:0] v58_0_addr_reg_884;
reg   [4:0] v58_0_addr_reg_884_pp0_iter2_reg;
reg   [4:0] v58_0_addr_reg_884_pp0_iter3_reg;
reg   [4:0] v58_1_addr_reg_894;
reg   [4:0] v58_1_addr_reg_894_pp0_iter2_reg;
reg   [4:0] v58_1_addr_reg_894_pp0_iter3_reg;
reg   [4:0] v58_0_addr_1_reg_904;
reg   [4:0] v58_0_addr_1_reg_904_pp0_iter2_reg;
reg   [4:0] v58_0_addr_1_reg_904_pp0_iter3_reg;
reg   [4:0] v58_1_addr_1_reg_914;
reg   [4:0] v58_1_addr_1_reg_914_pp0_iter2_reg;
reg   [4:0] v58_1_addr_1_reg_914_pp0_iter3_reg;
wire   [31:0] v89_fu_647_p1;
wire   [31:0] v95_fu_652_p1;
wire   [31:0] v63_fu_657_p3;
reg   [31:0] v63_reg_949;
reg   [31:0] v66_reg_954;
reg   [31:0] v72_reg_959;
reg   [4:0] v58_0_addr_2_reg_964;
reg   [4:0] v58_0_addr_2_reg_964_pp0_iter2_reg;
reg   [4:0] v58_0_addr_2_reg_964_pp0_iter3_reg;
reg   [4:0] v58_1_addr_2_reg_969;
reg   [4:0] v58_1_addr_2_reg_969_pp0_iter2_reg;
reg   [4:0] v58_1_addr_2_reg_969_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_974;
reg   [4:0] v58_0_addr_3_reg_974_pp0_iter2_reg;
reg   [4:0] v58_0_addr_3_reg_974_pp0_iter3_reg;
reg   [4:0] v58_0_addr_3_reg_974_pp0_iter4_reg;
wire   [31:0] v101_fu_691_p1;
reg   [31:0] v86_reg_984;
reg   [31:0] v92_reg_989;
reg   [31:0] v98_reg_994;
reg   [31:0] v104_reg_999;
reg   [4:0] v58_1_addr_3_reg_1004;
reg   [4:0] v58_1_addr_3_reg_1004_pp0_iter2_reg;
reg   [4:0] v58_1_addr_3_reg_1004_pp0_iter3_reg;
reg   [4:0] v58_1_addr_3_reg_1004_pp0_iter4_reg;
wire   [31:0] v107_fu_696_p1;
wire   [31:0] v70_fu_701_p3;
reg   [31:0] v70_reg_1014;
wire   [31:0] v76_fu_708_p3;
reg   [31:0] v76_reg_1019;
wire   [31:0] v82_fu_715_p3;
reg   [31:0] v82_reg_1024;
reg   [31:0] v78_reg_1029;
reg   [31:0] v84_reg_1034;
wire   [31:0] v88_fu_722_p3;
reg   [31:0] v88_reg_1039;
wire   [31:0] v94_fu_728_p3;
reg   [31:0] v94_reg_1044;
wire   [31:0] v100_fu_734_p3;
reg   [31:0] v100_reg_1049;
wire   [31:0] v106_fu_740_p3;
reg   [31:0] v106_reg_1054;
reg   [31:0] v90_reg_1059;
reg   [31:0] v96_reg_1064;
reg   [31:0] v102_reg_1069;
reg   [31:0] v108_reg_1074;
reg   [31:0] v79_reg_1079;
reg   [31:0] v85_reg_1084;
reg   [31:0] v103_reg_1089;
reg   [31:0] v109_reg_1094;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln102_fu_449_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln110_fu_474_p1;
wire   [63:0] zext_ln117_fu_517_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln124_fu_531_p1;
wire   [63:0] zext_ln131_fu_561_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln138_fu_577_p1;
wire   [63:0] zext_ln145_fu_600_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln152_fu_613_p1;
wire   [63:0] zext_ln98_1_fu_623_p1;
wire   [63:0] zext_ln98_fu_618_p1;
wire   [63:0] zext_ln114_fu_641_p1;
wire   [63:0] zext_ln128_fu_672_p1;
wire   [63:0] zext_ln142_fu_685_p1;
reg   [6:0] v60_fu_106;
wire   [6:0] add_ln98_fu_479_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_5;
reg    v114_0_ce1_local;
reg   [10:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [10:0] v114_0_address0_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [4:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [4:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg   [31:0] v58_0_d0_local;
reg    v57_1_ce0_local;
reg    v57_2_ce0_local;
reg    v57_3_ce0_local;
reg    v57_4_ce0_local;
reg    v57_5_ce0_local;
reg    v57_6_ce0_local;
reg    v57_7_ce0_local;
reg    v58_1_ce1_local;
reg   [4:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [4:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg   [31:0] v58_1_d0_local;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
reg   [31:0] grp_fu_391_p0;
reg   [31:0] grp_fu_391_p1;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_399_p0;
wire   [5:0] trunc_ln98_fu_437_p1;
wire   [10:0] tmp_fu_441_p3;
wire   [10:0] tmp_2_fu_464_p4;
wire   [10:0] tmp_5_fu_508_p4;
wire   [10:0] tmp_8_fu_522_p4;
wire   [10:0] tmp_11_fu_553_p4;
wire   [10:0] tmp_16_fu_566_p6;
wire   [10:0] tmp_19_fu_592_p4;
wire   [10:0] tmp_22_fu_605_p4;
wire   [4:0] or_ln114_1_fu_634_p3;
wire   [4:0] or_ln128_1_fu_664_p4;
wire   [4:0] or_ln142_1_fu_678_p3;
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
#0 v60_fu_106 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_17_fu_429_p3 == 1'd0))) begin
            v60_fu_106 <= add_ln98_fu_479_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v60_fu_106 <= 7'd0;
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
        lshr_ln1_reg_797 <= {{ap_sig_allocacmp_v60_5[5:1]}};
        tmp_17_reg_788 <= ap_sig_allocacmp_v60_5[32'd6];
        v58_0_addr_1_reg_904[4 : 1] <= zext_ln114_fu_641_p1[4 : 1];
        v58_0_addr_1_reg_904_pp0_iter2_reg[4 : 1] <= v58_0_addr_1_reg_904[4 : 1];
        v58_0_addr_1_reg_904_pp0_iter3_reg[4 : 1] <= v58_0_addr_1_reg_904_pp0_iter2_reg[4 : 1];
        v58_0_addr_reg_884 <= zext_ln98_fu_618_p1;
        v58_0_addr_reg_884_pp0_iter2_reg <= v58_0_addr_reg_884;
        v58_0_addr_reg_884_pp0_iter3_reg <= v58_0_addr_reg_884_pp0_iter2_reg;
        v58_1_addr_1_reg_914[4 : 1] <= zext_ln114_fu_641_p1[4 : 1];
        v58_1_addr_1_reg_914_pp0_iter2_reg[4 : 1] <= v58_1_addr_1_reg_914[4 : 1];
        v58_1_addr_1_reg_914_pp0_iter3_reg[4 : 1] <= v58_1_addr_1_reg_914_pp0_iter2_reg[4 : 1];
        v58_1_addr_reg_894 <= zext_ln98_fu_618_p1;
        v58_1_addr_reg_894_pp0_iter2_reg <= v58_1_addr_reg_894;
        v58_1_addr_reg_894_pp0_iter3_reg <= v58_1_addr_reg_894_pp0_iter2_reg;
        v60_5_reg_781 <= ap_sig_allocacmp_v60_5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln98_1_reg_807 <= {{v60_5_reg_781[5:3]}};
        tmp_18_reg_833 <= v60_5_reg_781[32'd1];
        tmp_3_reg_818 <= {{v60_5_reg_781[5:2]}};
        v104_reg_999 <= v57_7_q0;
        v58_0_addr_2_reg_964[0] <= zext_ln128_fu_672_p1[0];
v58_0_addr_2_reg_964[4 : 2] <= zext_ln128_fu_672_p1[4 : 2];
        v58_0_addr_2_reg_964_pp0_iter2_reg[0] <= v58_0_addr_2_reg_964[0];
v58_0_addr_2_reg_964_pp0_iter2_reg[4 : 2] <= v58_0_addr_2_reg_964[4 : 2];
        v58_0_addr_2_reg_964_pp0_iter3_reg[0] <= v58_0_addr_2_reg_964_pp0_iter2_reg[0];
v58_0_addr_2_reg_964_pp0_iter3_reg[4 : 2] <= v58_0_addr_2_reg_964_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_974[4 : 2] <= zext_ln142_fu_685_p1[4 : 2];
        v58_0_addr_3_reg_974_pp0_iter2_reg[4 : 2] <= v58_0_addr_3_reg_974[4 : 2];
        v58_0_addr_3_reg_974_pp0_iter3_reg[4 : 2] <= v58_0_addr_3_reg_974_pp0_iter2_reg[4 : 2];
        v58_0_addr_3_reg_974_pp0_iter4_reg[4 : 2] <= v58_0_addr_3_reg_974_pp0_iter3_reg[4 : 2];
        v58_1_addr_2_reg_969[0] <= zext_ln128_fu_672_p1[0];
v58_1_addr_2_reg_969[4 : 2] <= zext_ln128_fu_672_p1[4 : 2];
        v58_1_addr_2_reg_969_pp0_iter2_reg[0] <= v58_1_addr_2_reg_969[0];
v58_1_addr_2_reg_969_pp0_iter2_reg[4 : 2] <= v58_1_addr_2_reg_969[4 : 2];
        v58_1_addr_2_reg_969_pp0_iter3_reg[0] <= v58_1_addr_2_reg_969_pp0_iter2_reg[0];
v58_1_addr_2_reg_969_pp0_iter3_reg[4 : 2] <= v58_1_addr_2_reg_969_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1004[4 : 2] <= zext_ln142_fu_685_p1[4 : 2];
        v58_1_addr_3_reg_1004_pp0_iter2_reg[4 : 2] <= v58_1_addr_3_reg_1004[4 : 2];
        v58_1_addr_3_reg_1004_pp0_iter3_reg[4 : 2] <= v58_1_addr_3_reg_1004_pp0_iter2_reg[4 : 2];
        v58_1_addr_3_reg_1004_pp0_iter4_reg[4 : 2] <= v58_1_addr_3_reg_1004_pp0_iter3_reg[4 : 2];
        v63_reg_949 <= v63_fu_657_p3;
        v70_reg_1014 <= v70_fu_701_p3;
        v76_reg_1019 <= v76_fu_708_p3;
        v82_reg_1024 <= v82_fu_715_p3;
        v86_reg_984 <= v57_4_q0;
        v92_reg_989 <= v57_5_q0;
        v98_reg_994 <= v57_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_403 <= v114_0_q1;
        reg_407 <= v114_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_411 <= grp_fu_630_p_dout0;
        reg_416 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1049 <= v100_fu_734_p3;
        v106_reg_1054 <= v106_fu_740_p3;
        v88_reg_1039 <= v88_fu_722_p3;
        v94_reg_1044 <= v94_fu_728_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1069 <= grp_fu_638_p_dout0;
        v108_reg_1074 <= grp_fu_642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1089 <= grp_fu_630_p_dout0;
        v109_reg_1094 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_reg_954 <= grp_fu_638_p_dout0;
        v72_reg_959 <= grp_fu_642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v78_reg_1029 <= grp_fu_638_p_dout0;
        v84_reg_1034 <= grp_fu_642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v79_reg_1079 <= grp_fu_630_p_dout0;
        v85_reg_1084 <= grp_fu_634_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v90_reg_1059 <= grp_fu_638_p_dout0;
        v96_reg_1064 <= grp_fu_642_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_17_reg_788 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v60_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_5 = v60_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p0 = v100_reg_1049;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p0 = v88_reg_1039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p0 = v76_reg_1019;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p0 = v63_reg_949;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p1 = v102_reg_1069;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p1 = v90_reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p1 = v78_reg_1029;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p1 = v66_reg_954;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p0 = v106_reg_1054;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p0 = v94_reg_1044;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p0 = v82_reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p0 = v70_reg_1014;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p1 = v108_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p1 = v96_reg_1064;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p1 = v84_reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p1 = v72_reg_959;
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = v101_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p0 = v89_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = v77_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = v64_fu_543_p1;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v107_fu_696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v95_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v83_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v71_fu_548_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_0_address0_local = zext_ln152_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address0_local = zext_ln138_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address0_local = zext_ln124_fu_531_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address0_local = zext_ln110_fu_474_p1;
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
            v114_0_address1_local = zext_ln145_fu_600_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_0_address1_local = zext_ln131_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_0_address1_local = zext_ln117_fu_517_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v114_0_address1_local = zext_ln102_fu_449_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_4_ce0_local = 1'b1;
    end else begin
        v57_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_5_ce0_local = 1'b1;
    end else begin
        v57_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_6_ce0_local = 1'b1;
    end else begin
        v57_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_7_ce0_local = 1'b1;
    end else begin
        v57_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address0_local = v58_0_addr_3_reg_974_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_1_reg_904_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = zext_ln142_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln114_fu_641_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_0_address1_local = v58_0_addr_2_reg_964_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_884_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address1_local = zext_ln128_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_618_p1;
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
        v58_0_d0_local = v103_reg_1089;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_d0_local = v79_reg_1079;
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
        v58_1_address0_local = v58_1_addr_3_reg_1004_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_1_reg_914_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = zext_ln142_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln114_fu_641_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_1_address1_local = v58_1_addr_2_reg_969_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_894_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address1_local = zext_ln128_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_618_p1;
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
        v58_1_d0_local = v109_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_d0_local = v85_reg_1084;
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
assign add_ln98_fu_479_p2 = (ap_sig_allocacmp_v60_5 + 7'd8);
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
assign grp_fu_630_p_ce = 1'b1;
assign grp_fu_630_p_din0 = grp_fu_387_p0;
assign grp_fu_630_p_din1 = grp_fu_387_p1;
assign grp_fu_630_p_opcode = 2'd0;
assign grp_fu_634_p_ce = 1'b1;
assign grp_fu_634_p_din0 = grp_fu_391_p0;
assign grp_fu_634_p_din1 = grp_fu_391_p1;
assign grp_fu_634_p_opcode = 2'd0;
assign grp_fu_638_p_ce = 1'b1;
assign grp_fu_638_p_din0 = grp_fu_395_p0;
assign grp_fu_638_p_din1 = v65;
assign grp_fu_642_p_ce = 1'b1;
assign grp_fu_642_p_din0 = grp_fu_399_p0;
assign grp_fu_642_p_din1 = v65;
assign lshr_ln1_fu_454_p4 = {{ap_sig_allocacmp_v60_5[5:1]}};
assign or_ln114_1_fu_634_p3 = {{tmp_3_reg_818}, {1'd1}};
assign or_ln128_1_fu_664_p4 = {{{lshr_ln98_1_reg_807}, {1'd1}}, {tmp_18_reg_833}};
assign or_ln142_1_fu_678_p3 = {{lshr_ln98_1_reg_807}, {2'd3}};
assign tmp_11_fu_553_p4 = {{{lshr_ln98_1_reg_807}, {3'd4}}, {lshr_ln}};
assign tmp_16_fu_566_p6 = {{{{{lshr_ln98_1_reg_807}, {1'd1}}, {tmp_18_reg_833}}, {1'd1}}, {lshr_ln}};
assign tmp_17_fu_429_p3 = ap_sig_allocacmp_v60_5[32'd6];
assign tmp_19_fu_592_p4 = {{{lshr_ln98_1_reg_807}, {3'd6}}, {lshr_ln}};
assign tmp_22_fu_605_p4 = {{{lshr_ln98_1_reg_807}, {3'd7}}, {lshr_ln}};
assign tmp_2_fu_464_p4 = {{{lshr_ln1_fu_454_p4}, {1'd1}}, {lshr_ln}};
assign tmp_3_fu_499_p4 = {{v60_5_reg_781[5:2]}};
assign tmp_5_fu_508_p4 = {{{tmp_3_fu_499_p4}, {2'd2}}, {lshr_ln}};
assign tmp_8_fu_522_p4 = {{{tmp_3_fu_499_p4}, {2'd3}}, {lshr_ln}};
assign tmp_fu_441_p3 = {{trunc_ln98_fu_437_p1}, {lshr_ln}};
assign trunc_ln98_fu_437_p1 = ap_sig_allocacmp_v60_5[5:0];
assign v100_fu_734_p3 = ((cmp7[0:0] == 1'b1) ? v98_reg_994 : v58_0_q0);
assign v101_fu_691_p1 = reg_403;
assign v106_fu_740_p3 = ((cmp7[0:0] == 1'b1) ? v104_reg_999 : v58_1_q0);
assign v107_fu_696_p1 = reg_407;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v57_0_address0 = zext_ln98_1_fu_623_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_1_address0 = zext_ln98_1_fu_623_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_2_address0 = zext_ln98_1_fu_623_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_3_address0 = zext_ln98_1_fu_623_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_4_address0 = zext_ln98_1_fu_623_p1;
assign v57_4_ce0 = v57_4_ce0_local;
assign v57_5_address0 = zext_ln98_1_fu_623_p1;
assign v57_5_ce0 = v57_5_ce0_local;
assign v57_6_address0 = zext_ln98_1_fu_623_p1;
assign v57_6_ce0 = v57_6_ce0_local;
assign v57_7_address0 = zext_ln98_1_fu_623_p1;
assign v57_7_ce0 = v57_7_ce0_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = v58_0_d0_local;
assign v58_0_d1 = reg_411;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = v58_1_d0_local;
assign v58_1_d1 = reg_416;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v63_fu_657_p3 = ((cmp7[0:0] == 1'b1) ? v57_0_q0 : v58_0_q1);
assign v64_fu_543_p1 = reg_403;
assign v70_fu_701_p3 = ((cmp7[0:0] == 1'b1) ? v57_1_q0 : v58_1_q1);
assign v71_fu_548_p1 = reg_407;
assign v76_fu_708_p3 = ((cmp7[0:0] == 1'b1) ? v57_2_q0 : v58_0_q0);
assign v77_fu_582_p1 = reg_403;
assign v82_fu_715_p3 = ((cmp7[0:0] == 1'b1) ? v57_3_q0 : v58_1_q0);
assign v83_fu_587_p1 = reg_407;
assign v88_fu_722_p3 = ((cmp7[0:0] == 1'b1) ? v86_reg_984 : v58_0_q1);
assign v89_fu_647_p1 = reg_403;
assign v94_fu_728_p3 = ((cmp7[0:0] == 1'b1) ? v92_reg_989 : v58_1_q1);
assign v95_fu_652_p1 = reg_407;
assign zext_ln102_fu_449_p1 = tmp_fu_441_p3;
assign zext_ln110_fu_474_p1 = tmp_2_fu_464_p4;
assign zext_ln114_fu_641_p1 = or_ln114_1_fu_634_p3;
assign zext_ln117_fu_517_p1 = tmp_5_fu_508_p4;
assign zext_ln124_fu_531_p1 = tmp_8_fu_522_p4;
assign zext_ln128_fu_672_p1 = or_ln128_1_fu_664_p4;
assign zext_ln131_fu_561_p1 = tmp_11_fu_553_p4;
assign zext_ln138_fu_577_p1 = tmp_16_fu_566_p6;
assign zext_ln142_fu_685_p1 = or_ln142_1_fu_678_p3;
assign zext_ln145_fu_600_p1 = tmp_19_fu_592_p4;
assign zext_ln152_fu_613_p1 = tmp_22_fu_605_p4;
assign zext_ln98_1_fu_623_p1 = lshr_ln98_1_reg_807;
assign zext_ln98_fu_618_p1 = lshr_ln1_reg_797;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_904[0] <= 1'b1;
    v58_0_addr_1_reg_904_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_904_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_914[0] <= 1'b1;
    v58_1_addr_1_reg_914_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_914_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_2_reg_964[1] <= 1'b1;
    v58_0_addr_2_reg_964_pp0_iter2_reg[1] <= 1'b1;
    v58_0_addr_2_reg_964_pp0_iter3_reg[1] <= 1'b1;
    v58_1_addr_2_reg_969[1] <= 1'b1;
    v58_1_addr_2_reg_969_pp0_iter2_reg[1] <= 1'b1;
    v58_1_addr_2_reg_969_pp0_iter3_reg[1] <= 1'b1;
    v58_0_addr_3_reg_974[1:0] <= 2'b11;
    v58_0_addr_3_reg_974_pp0_iter2_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_974_pp0_iter3_reg[1:0] <= 2'b11;
    v58_0_addr_3_reg_974_pp0_iter4_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1004[1:0] <= 2'b11;
    v58_1_addr_3_reg_1004_pp0_iter2_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1004_pp0_iter3_reg[1:0] <= 2'b11;
    v58_1_addr_3_reg_1004_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 