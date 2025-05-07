module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v115_address0,v115_ce0,v115_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,grp_fu_116_p_din0,grp_fu_116_p_din1,grp_fu_116_p_opcode,grp_fu_116_p_dout0,grp_fu_116_p_ce,grp_fu_120_p_din0,grp_fu_120_p_din1,grp_fu_120_p_opcode,grp_fu_120_p_dout0,grp_fu_120_p_ce,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce); 
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
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [10:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [10:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [3:0] v57_0_address0;
output   v57_0_ce0;
input  [31:0] v57_0_q0;
output  [3:0] v57_0_address1;
output   v57_0_ce1;
input  [31:0] v57_0_q1;
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
output  [31:0] grp_fu_116_p_din0;
output  [31:0] grp_fu_116_p_din1;
output  [1:0] grp_fu_116_p_opcode;
input  [31:0] grp_fu_116_p_dout0;
output   grp_fu_116_p_ce;
output  [31:0] grp_fu_120_p_din0;
output  [31:0] grp_fu_120_p_din1;
output  [1:0] grp_fu_120_p_opcode;
input  [31:0] grp_fu_120_p_dout0;
output   grp_fu_120_p_ce;
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
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
reg   [0:0] icmp_ln97_reg_971;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_485_p3;
reg   [31:0] reg_513;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_492_p3;
reg   [31:0] reg_517;
wire   [31:0] grp_fu_499_p3;
reg   [31:0] reg_521;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_506_p3;
reg   [31:0] reg_525;
reg   [31:0] reg_529;
reg   [31:0] reg_536;
wire   [0:0] icmp_ln97_fu_561_p2;
reg   [0:0] icmp_ln97_reg_971_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_971_pp0_iter2_reg;
wire   [6:0] select_ln97_fu_593_p3;
reg   [6:0] select_ln97_reg_975;
wire   [0:0] trunc_ln97_1_fu_618_p1;
reg   [0:0] trunc_ln97_1_reg_980;
wire   [4:0] lshr_ln_fu_622_p4;
reg   [4:0] lshr_ln_reg_988;
wire   [0:0] cmp7_fu_632_p2;
reg   [0:0] cmp7_reg_998;
reg   [0:0] cmp7_reg_998_pp0_iter1_reg;
reg   [3:0] lshr_ln1_reg_1025;
wire   [0:0] trunc_ln114_fu_688_p1;
reg   [0:0] trunc_ln114_reg_1042;
reg   [2:0] tmp_8_reg_1048;
wire   [1:0] trunc_ln131_fu_702_p1;
reg   [1:0] trunc_ln131_reg_1057;
reg   [0:0] tmp_4_reg_1062;
wire   [31:0] v65_fu_724_p1;
reg   [31:0] v65_reg_1067;
wire   [31:0] v64_fu_757_p1;
wire   [31:0] v71_fu_762_p1;
reg   [3:0] v58_0_addr_reg_1128;
reg   [3:0] v58_0_addr_reg_1128_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_1128_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_1138;
reg   [3:0] v58_1_addr_reg_1138_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_1138_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_1148;
reg   [3:0] v58_2_addr_reg_1148_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_1148_pp0_iter3_reg;
wire   [31:0] v77_fu_810_p1;
reg   [3:0] v58_3_addr_reg_1163;
reg   [3:0] v58_3_addr_reg_1163_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_1163_pp0_iter3_reg;
wire   [31:0] v83_fu_815_p1;
wire   [63:0] zext_ln128_fu_827_p1;
reg   [63:0] zext_ln128_reg_1173;
reg   [3:0] v58_0_addr_1_reg_1186;
reg   [3:0] v58_0_addr_1_reg_1186_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_1186_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_1186_pp0_iter4_reg;
reg   [3:0] v58_1_addr_1_reg_1196;
reg   [3:0] v58_1_addr_1_reg_1196_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_1196_pp0_iter3_reg;
reg   [3:0] v58_1_addr_1_reg_1196_pp0_iter4_reg;
wire   [31:0] v63_fu_874_p3;
reg   [31:0] v63_reg_1221;
wire   [31:0] v89_fu_881_p1;
wire   [31:0] v95_fu_886_p1;
wire   [31:0] v70_fu_891_p3;
reg   [31:0] v70_reg_1236;
wire   [31:0] v76_fu_898_p3;
reg   [31:0] v76_reg_1241;
wire   [31:0] v82_fu_905_p3;
reg   [31:0] v82_reg_1246;
wire   [31:0] v88_fu_912_p3;
reg   [31:0] v88_reg_1251;
wire   [31:0] v94_fu_919_p3;
reg   [31:0] v94_reg_1256;
reg   [31:0] v66_reg_1261;
reg   [31:0] v72_reg_1266;
wire   [31:0] v101_fu_926_p1;
wire   [31:0] v107_fu_931_p1;
reg   [31:0] v78_reg_1281;
reg   [31:0] v84_reg_1286;
reg   [31:0] v90_reg_1291;
reg   [31:0] v96_reg_1296;
reg   [3:0] v58_2_addr_1_reg_1306;
reg   [3:0] v58_2_addr_1_reg_1306_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_1306_pp0_iter4_reg;
reg   [3:0] v58_3_addr_1_reg_1316;
reg   [3:0] v58_3_addr_1_reg_1316_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_1316_pp0_iter4_reg;
reg   [31:0] v102_reg_1321;
reg   [31:0] v108_reg_1326;
wire   [31:0] v100_fu_936_p3;
reg   [31:0] v100_reg_1331;
wire   [31:0] v106_fu_943_p3;
reg   [31:0] v106_reg_1336;
reg   [31:0] v103_reg_1341;
reg   [31:0] v109_reg_1346;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_613_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_646_p1;
wire   [63:0] zext_ln110_fu_682_p1;
wire   [63:0] zext_ln117_fu_737_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_751_p1;
wire   [63:0] zext_ln131_fu_776_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_793_p1;
wire   [63:0] zext_ln98_fu_799_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln145_fu_844_p1;
wire   [63:0] zext_ln152_fu_858_p1;
reg   [6:0] v60_fu_98;
wire   [6:0] add_ln98_fu_864_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_102;
wire   [6:0] select_ln97_1_fu_605_p3;
reg   [9:0] indvar_flatten_fu_106;
wire   [9:0] add_ln97_1_fu_567_p2;
reg    v115_ce0_local;
reg    v114_0_ce1_local;
reg   [10:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [10:0] v114_0_address0_local;
reg    v114_1_ce1_local;
reg   [10:0] v114_1_address1_local;
reg    v114_1_ce0_local;
reg   [10:0] v114_1_address0_local;
reg    v57_0_ce1_local;
reg    v57_0_ce0_local;
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
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
reg   [31:0] grp_fu_469_p0;
reg   [31:0] grp_fu_469_p1;
reg   [31:0] grp_fu_473_p0;
reg   [31:0] grp_fu_473_p1;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_481_p0;
wire   [0:0] tmp_3_fu_585_p3;
wire   [6:0] add_ln97_fu_579_p2;
wire   [5:0] trunc_ln97_fu_601_p1;
wire   [10:0] tmp_fu_638_p3;
wire   [4:0] tmp_1_fu_662_p4;
wire   [10:0] tmp_2_fu_672_p4;
wire   [10:0] tmp_5_fu_728_p5;
wire   [10:0] tmp_7_fu_743_p4;
wire   [10:0] tmp_s_fu_767_p5;
wire   [10:0] tmp_6_fu_782_p6;
wire   [3:0] or_ln128_1_fu_820_p3;
wire   [10:0] tmp_9_fu_835_p5;
wire   [10:0] tmp_10_fu_850_p4;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_98 = 7'd0;
#0 v59_fu_102 = 7'd0;
#0 indvar_flatten_fu_106 = 10'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_106 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_561_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_106 <= add_ln97_1_fu_567_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_102 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_561_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_102 <= select_ln97_1_fu_605_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_98 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_98 <= add_ln98_fu_864_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_998 <= cmp7_fu_632_p2;
        cmp7_reg_998_pp0_iter1_reg <= cmp7_reg_998;
        icmp_ln97_reg_971 <= icmp_ln97_fu_561_p2;
        icmp_ln97_reg_971_pp0_iter1_reg <= icmp_ln97_reg_971;
        icmp_ln97_reg_971_pp0_iter2_reg <= icmp_ln97_reg_971_pp0_iter1_reg;
        lshr_ln1_reg_1025 <= {{select_ln97_fu_593_p3[5:2]}};
        lshr_ln_reg_988 <= {{select_ln97_1_fu_605_p3[5:1]}};
        select_ln97_reg_975 <= select_ln97_fu_593_p3;
        tmp_4_reg_1062 <= select_ln97_fu_593_p3[32'd1];
        tmp_8_reg_1048 <= {{select_ln97_fu_593_p3[5:3]}};
        trunc_ln114_reg_1042 <= trunc_ln114_fu_688_p1;
        trunc_ln131_reg_1057 <= trunc_ln131_fu_702_p1;
        trunc_ln97_1_reg_980 <= trunc_ln97_1_fu_618_p1;
        v100_reg_1331 <= v100_fu_936_p3;
        v106_reg_1336 <= v106_fu_943_p3;
        v63_reg_1221 <= v63_fu_874_p3;
        v70_reg_1236 <= v70_fu_891_p3;
        v76_reg_1241 <= v76_fu_898_p3;
        v82_reg_1246 <= v82_fu_905_p3;
        v88_reg_1251 <= v88_fu_912_p3;
        v94_reg_1256 <= v94_fu_919_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_513 <= grp_fu_485_p3;
        reg_517 <= grp_fu_492_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_521 <= grp_fu_499_p3;
        reg_525 <= grp_fu_506_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_529 <= grp_fu_116_p_dout0;
        reg_536 <= grp_fu_120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1321 <= grp_fu_124_p_dout0;
        v108_reg_1326 <= grp_fu_128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1341 <= grp_fu_116_p_dout0;
        v109_reg_1346 <= grp_fu_120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_addr_1_reg_1186[3 : 1] <= zext_ln128_fu_827_p1[3 : 1];
        v58_0_addr_1_reg_1186_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_1186[3 : 1];
        v58_0_addr_1_reg_1186_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_1186_pp0_iter2_reg[3 : 1];
        v58_0_addr_1_reg_1186_pp0_iter4_reg[3 : 1] <= v58_0_addr_1_reg_1186_pp0_iter3_reg[3 : 1];
        v58_0_addr_reg_1128 <= zext_ln98_fu_799_p1;
        v58_0_addr_reg_1128_pp0_iter2_reg <= v58_0_addr_reg_1128;
        v58_0_addr_reg_1128_pp0_iter3_reg <= v58_0_addr_reg_1128_pp0_iter2_reg;
        v58_1_addr_1_reg_1196[3 : 1] <= zext_ln128_fu_827_p1[3 : 1];
        v58_1_addr_1_reg_1196_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_1196[3 : 1];
        v58_1_addr_1_reg_1196_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_1196_pp0_iter2_reg[3 : 1];
        v58_1_addr_1_reg_1196_pp0_iter4_reg[3 : 1] <= v58_1_addr_1_reg_1196_pp0_iter3_reg[3 : 1];
        v58_1_addr_reg_1138 <= zext_ln98_fu_799_p1;
        v58_1_addr_reg_1138_pp0_iter2_reg <= v58_1_addr_reg_1138;
        v58_1_addr_reg_1138_pp0_iter3_reg <= v58_1_addr_reg_1138_pp0_iter2_reg;
        v58_2_addr_1_reg_1306[3 : 1] <= zext_ln128_reg_1173[3 : 1];
        v58_2_addr_1_reg_1306_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_1306[3 : 1];
        v58_2_addr_1_reg_1306_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_1306_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_1148 <= zext_ln98_fu_799_p1;
        v58_2_addr_reg_1148_pp0_iter2_reg <= v58_2_addr_reg_1148;
        v58_2_addr_reg_1148_pp0_iter3_reg <= v58_2_addr_reg_1148_pp0_iter2_reg;
        v58_3_addr_1_reg_1316[3 : 1] <= zext_ln128_reg_1173[3 : 1];
        v58_3_addr_1_reg_1316_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_1316[3 : 1];
        v58_3_addr_1_reg_1316_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_1316_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_1163 <= zext_ln98_fu_799_p1;
        v58_3_addr_reg_1163_pp0_iter2_reg <= v58_3_addr_reg_1163;
        v58_3_addr_reg_1163_pp0_iter3_reg <= v58_3_addr_reg_1163_pp0_iter2_reg;
        zext_ln128_reg_1173[3 : 1] <= zext_ln128_fu_827_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_reg_1067 <= v65_fu_724_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1261 <= grp_fu_124_p_dout0;
        v72_reg_1266 <= grp_fu_128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1281 <= grp_fu_124_p_dout0;
        v84_reg_1286 <= grp_fu_128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1291 <= grp_fu_124_p_dout0;
        v96_reg_1296 <= grp_fu_128_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_971 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_971_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p0 = v100_reg_1331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p0 = v88_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p0 = v76_reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p0 = v63_reg_1221;
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p1 = v102_reg_1321;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p1 = v90_reg_1291;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p1 = v78_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p1 = v66_reg_1261;
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = v106_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = v94_reg_1256;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = v82_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p0 = v70_reg_1236;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p1 = v108_reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = v96_reg_1296;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = v84_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p1 = v72_reg_1266;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v101_fu_926_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v89_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v77_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v64_fu_757_p1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v107_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v95_fu_886_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v83_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_481_p0 = v71_fu_762_p1;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address0_local = zext_ln152_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address0_local = zext_ln138_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address0_local = zext_ln124_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address0_local = zext_ln110_fu_682_p1;
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address1_local = zext_ln145_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address1_local = zext_ln131_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address1_local = zext_ln117_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address1_local = zext_ln102_fu_646_p1;
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address0_local = zext_ln152_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address0_local = zext_ln138_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address0_local = zext_ln124_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address0_local = zext_ln110_fu_682_p1;
    end else begin
        v114_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address1_local = zext_ln145_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address1_local = zext_ln131_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address1_local = zext_ln117_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address1_local = zext_ln102_fu_646_p1;
    end else begin
        v114_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_1_ce0_local = 1'b1;
    end else begin
        v114_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_1_ce1_local = 1'b1;
    end else begin
        v114_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_ce0_local = 1'b1;
    end else begin
        v115_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce1_local = 1'b1;
    end else begin
        v57_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce0_local = 1'b1;
    end else begin
        v57_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_2_ce1_local = 1'b1;
    end else begin
        v57_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce0_local = 1'b1;
    end else begin
        v57_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_3_ce1_local = 1'b1;
    end else begin
        v57_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_1_reg_1186_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_fu_827_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1128_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_fu_799_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_1_reg_1196_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_fu_827_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1138_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_fu_799_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_1306_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln128_reg_1173;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address1_local = v58_2_addr_reg_1148_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_fu_799_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1316_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln128_reg_1173;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address1_local = v58_3_addr_reg_1163_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_fu_799_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
assign add_ln97_1_fu_567_p2 = (indvar_flatten_fu_106 + 10'd1);
assign add_ln97_fu_579_p2 = (v59_fu_102 + 7'd1);
assign add_ln98_fu_864_p2 = (select_ln97_reg_975 + 7'd8);
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
assign cmp7_fu_632_p2 = ((select_ln97_1_fu_605_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_116_p_ce = 1'b1;
assign grp_fu_116_p_din0 = grp_fu_469_p0;
assign grp_fu_116_p_din1 = grp_fu_469_p1;
assign grp_fu_116_p_opcode = 2'd0;
assign grp_fu_120_p_ce = 1'b1;
assign grp_fu_120_p_din0 = grp_fu_473_p0;
assign grp_fu_120_p_din1 = grp_fu_473_p1;
assign grp_fu_120_p_opcode = 2'd0;
assign grp_fu_124_p_ce = 1'b1;
assign grp_fu_124_p_din0 = grp_fu_477_p0;
assign grp_fu_124_p_din1 = v65_reg_1067;
assign grp_fu_128_p_ce = 1'b1;
assign grp_fu_128_p_din0 = grp_fu_481_p0;
assign grp_fu_128_p_din1 = v65_reg_1067;
assign grp_fu_485_p3 = ((trunc_ln97_1_reg_980[0:0] == 1'b1) ? v114_1_q1 : v114_0_q1);
assign grp_fu_492_p3 = ((trunc_ln97_1_reg_980[0:0] == 1'b1) ? v114_1_q0 : v114_0_q0);
assign grp_fu_499_p3 = ((trunc_ln97_1_reg_980[0:0] == 1'b1) ? v114_1_q1 : v114_0_q1);
assign grp_fu_506_p3 = ((trunc_ln97_1_reg_980[0:0] == 1'b1) ? v114_1_q0 : v114_0_q0);
assign icmp_ln97_fu_561_p2 = ((indvar_flatten_fu_106 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_622_p4 = {{select_ln97_1_fu_605_p3[5:1]}};
assign or_ln128_1_fu_820_p3 = {{tmp_8_reg_1048}, {1'd1}};
assign select_ln97_1_fu_605_p3 = ((tmp_3_fu_585_p3[0:0] == 1'b1) ? add_ln97_fu_579_p2 : v59_fu_102);
assign select_ln97_fu_593_p3 = ((tmp_3_fu_585_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_98);
assign tmp_10_fu_850_p4 = {{{tmp_8_reg_1048}, {3'd7}}, {lshr_ln_reg_988}};
assign tmp_1_fu_662_p4 = {{select_ln97_fu_593_p3[5:1]}};
assign tmp_2_fu_672_p4 = {{{tmp_1_fu_662_p4}, {1'd1}}, {lshr_ln_fu_622_p4}};
assign tmp_3_fu_585_p3 = v60_fu_98[32'd6];
assign tmp_5_fu_728_p5 = {{{{lshr_ln1_reg_1025}, {1'd1}}, {trunc_ln114_reg_1042}}, {lshr_ln_reg_988}};
assign tmp_6_fu_782_p6 = {{{{{tmp_8_reg_1048}, {1'd1}}, {tmp_4_reg_1062}}, {1'd1}}, {lshr_ln_reg_988}};
assign tmp_7_fu_743_p4 = {{{lshr_ln1_reg_1025}, {2'd3}}, {lshr_ln_reg_988}};
assign tmp_9_fu_835_p5 = {{{{tmp_8_reg_1048}, {2'd3}}, {trunc_ln114_reg_1042}}, {lshr_ln_reg_988}};
assign tmp_fu_638_p3 = {{trunc_ln97_fu_601_p1}, {lshr_ln_fu_622_p4}};
assign tmp_s_fu_767_p5 = {{{{tmp_8_reg_1048}, {1'd1}}, {trunc_ln131_reg_1057}}, {lshr_ln_reg_988}};
assign trunc_ln114_fu_688_p1 = select_ln97_fu_593_p3[0:0];
assign trunc_ln131_fu_702_p1 = select_ln97_fu_593_p3[1:0];
assign trunc_ln97_1_fu_618_p1 = select_ln97_1_fu_605_p3[0:0];
assign trunc_ln97_fu_601_p1 = select_ln97_fu_593_p3[5:0];
assign v100_fu_936_p3 = ((cmp7_reg_998_pp0_iter1_reg[0:0] == 1'b1) ? v57_2_q0 : v58_2_q0);
assign v101_fu_926_p1 = reg_521;
assign v106_fu_943_p3 = ((cmp7_reg_998_pp0_iter1_reg[0:0] == 1'b1) ? v57_3_q0 : v58_3_q0);
assign v107_fu_931_p1 = reg_525;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v114_1_address0 = v114_1_address0_local;
assign v114_1_address1 = v114_1_address1_local;
assign v114_1_ce0 = v114_1_ce0_local;
assign v114_1_ce1 = v114_1_ce1_local;
assign v115_address0 = zext_ln97_fu_613_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_0_address0 = zext_ln128_fu_827_p1;
assign v57_0_address1 = zext_ln98_fu_799_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_fu_827_p1;
assign v57_1_address1 = zext_ln98_fu_799_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_reg_1173;
assign v57_2_address1 = zext_ln98_fu_799_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_reg_1173;
assign v57_3_address1 = zext_ln98_fu_799_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_529;
assign v58_0_d1 = reg_529;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_536;
assign v58_1_d1 = reg_536;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1341;
assign v58_2_d1 = reg_529;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1346;
assign v58_3_d1 = reg_536;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v63_fu_874_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_0_q1 : v58_0_q1);
assign v64_fu_757_p1 = reg_513;
assign v65_fu_724_p1 = v115_q0;
assign v70_fu_891_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_1_q1 : v58_1_q1);
assign v71_fu_762_p1 = reg_517;
assign v76_fu_898_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_2_q1 : v58_2_q1);
assign v77_fu_810_p1 = reg_513;
assign v82_fu_905_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_3_q1 : v58_3_q1);
assign v83_fu_815_p1 = reg_517;
assign v88_fu_912_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_0_q0 : v58_0_q0);
assign v89_fu_881_p1 = reg_521;
assign v94_fu_919_p3 = ((cmp7_reg_998[0:0] == 1'b1) ? v57_1_q0 : v58_1_q0);
assign v95_fu_886_p1 = reg_525;
assign zext_ln102_fu_646_p1 = tmp_fu_638_p3;
assign zext_ln110_fu_682_p1 = tmp_2_fu_672_p4;
assign zext_ln117_fu_737_p1 = tmp_5_fu_728_p5;
assign zext_ln124_fu_751_p1 = tmp_7_fu_743_p4;
assign zext_ln128_fu_827_p1 = or_ln128_1_fu_820_p3;
assign zext_ln131_fu_776_p1 = tmp_s_fu_767_p5;
assign zext_ln138_fu_793_p1 = tmp_6_fu_782_p6;
assign zext_ln145_fu_844_p1 = tmp_9_fu_835_p5;
assign zext_ln152_fu_858_p1 = tmp_10_fu_850_p4;
assign zext_ln97_fu_613_p1 = select_ln97_1_fu_605_p3;
assign zext_ln98_fu_799_p1 = lshr_ln1_reg_1025;
always @ (posedge ap_clk) begin
    zext_ln128_reg_1173[0] <= 1'b1;
    zext_ln128_reg_1173[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    v58_0_addr_1_reg_1186[0] <= 1'b1;
    v58_0_addr_1_reg_1186_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1186_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1186_pp0_iter4_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1196[0] <= 1'b1;
    v58_1_addr_1_reg_1196_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1196_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1196_pp0_iter4_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1306[0] <= 1'b1;
    v58_2_addr_1_reg_1306_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1306_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1316[0] <= 1'b1;
    v58_3_addr_1_reg_1316_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1316_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 