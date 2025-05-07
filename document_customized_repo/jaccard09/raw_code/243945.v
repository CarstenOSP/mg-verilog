module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v57_0_address0,v57_0_ce0,v57_0_q0,v57_0_address1,v57_0_ce1,v57_0_q1,v57_1_address0,v57_1_ce0,v57_1_q0,v57_1_address1,v57_1_ce1,v57_1_q1,v57_2_address0,v57_2_ce0,v57_2_q0,v57_2_address1,v57_2_ce1,v57_2_q1,v57_3_address0,v57_3_ce0,v57_3_q0,v57_3_address1,v57_3_ce1,v57_3_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_333_p_din0,grp_fu_333_p_din1,grp_fu_333_p_opcode,grp_fu_333_p_dout0,grp_fu_333_p_ce,grp_fu_337_p_din0,grp_fu_337_p_din1,grp_fu_337_p_opcode,grp_fu_337_p_dout0,grp_fu_337_p_ce,grp_fu_341_p_din0,grp_fu_341_p_din1,grp_fu_341_p_dout0,grp_fu_341_p_ce,grp_fu_345_p_din0,grp_fu_345_p_din1,grp_fu_345_p_dout0,grp_fu_345_p_ce); 
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
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
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
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
output  [2:0] v58_4_address1;
output   v58_4_ce1;
input  [31:0] v58_4_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
output  [2:0] v58_5_address1;
output   v58_5_ce1;
input  [31:0] v58_5_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
input  [31:0] v58_6_q0;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
input  [31:0] v58_7_q0;
output  [31:0] grp_fu_333_p_din0;
output  [31:0] grp_fu_333_p_din1;
output  [1:0] grp_fu_333_p_opcode;
input  [31:0] grp_fu_333_p_dout0;
output   grp_fu_333_p_ce;
output  [31:0] grp_fu_337_p_din0;
output  [31:0] grp_fu_337_p_din1;
output  [1:0] grp_fu_337_p_opcode;
input  [31:0] grp_fu_337_p_dout0;
output   grp_fu_337_p_ce;
output  [31:0] grp_fu_341_p_din0;
output  [31:0] grp_fu_341_p_din1;
input  [31:0] grp_fu_341_p_dout0;
output   grp_fu_341_p_ce;
output  [31:0] grp_fu_345_p_din0;
output  [31:0] grp_fu_345_p_din1;
input  [31:0] grp_fu_345_p_dout0;
output   grp_fu_345_p_ce;
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
reg   [0:0] icmp_ln97_reg_1020;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_518_p3;
reg   [31:0] reg_546;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_525_p3;
reg   [31:0] reg_550;
wire   [31:0] grp_fu_532_p3;
reg   [31:0] reg_554;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_539_p3;
reg   [31:0] reg_558;
reg   [31:0] reg_562;
reg   [31:0] reg_570;
wire   [0:0] icmp_ln97_fu_596_p2;
reg   [0:0] icmp_ln97_reg_1020_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1020_pp0_iter2_reg;
wire   [6:0] select_ln97_fu_628_p3;
reg   [6:0] select_ln97_reg_1024;
wire   [0:0] trunc_ln97_1_fu_648_p1;
reg   [0:0] trunc_ln97_1_reg_1029;
wire   [4:0] lshr_ln_fu_652_p4;
reg   [4:0] lshr_ln_reg_1038;
wire   [0:0] cmp7_fu_668_p2;
reg   [0:0] cmp7_reg_1048;
reg   [0:0] cmp7_reg_1048_pp0_iter1_reg;
reg   [2:0] lshr_ln1_reg_1080;
reg   [3:0] lshr_ln98_1_reg_1090;
wire   [0:0] trunc_ln114_fu_734_p1;
reg   [0:0] trunc_ln114_reg_1107;
wire   [1:0] trunc_ln131_fu_738_p1;
reg   [1:0] trunc_ln131_reg_1113;
reg   [0:0] tmp_4_reg_1118;
wire   [31:0] v65_v_fu_760_p3;
reg   [31:0] v65_v_reg_1123;
wire   [31:0] v65_fu_796_p1;
reg   [31:0] v65_reg_1148;
wire   [31:0] v64_fu_801_p1;
wire   [31:0] v71_fu_806_p1;
reg   [2:0] v58_0_addr_reg_1189;
reg   [2:0] v58_0_addr_reg_1189_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1189_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1199;
reg   [2:0] v58_1_addr_reg_1199_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1199_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1209;
reg   [2:0] v58_2_addr_reg_1209_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1209_pp0_iter3_reg;
wire   [31:0] v77_fu_861_p1;
reg   [2:0] v58_3_addr_reg_1224;
reg   [2:0] v58_3_addr_reg_1224_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1224_pp0_iter3_reg;
wire   [31:0] v83_fu_866_p1;
wire   [63:0] zext_ln128_fu_878_p1;
reg   [63:0] zext_ln128_reg_1234;
reg   [2:0] v58_4_addr_reg_1245;
reg   [2:0] v58_4_addr_reg_1245_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1245_pp0_iter3_reg;
reg   [2:0] v58_5_addr_reg_1256;
reg   [2:0] v58_5_addr_reg_1256_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1256_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1272;
reg   [2:0] v58_6_addr_reg_1272_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1272_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1272_pp0_iter4_reg;
reg   [2:0] v58_7_addr_reg_1287;
reg   [2:0] v58_7_addr_reg_1287_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1287_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1287_pp0_iter4_reg;
wire   [31:0] v63_fu_923_p3;
reg   [31:0] v63_reg_1292;
wire   [31:0] v89_fu_930_p1;
wire   [31:0] v95_fu_935_p1;
wire   [31:0] v70_fu_940_p3;
reg   [31:0] v70_reg_1307;
wire   [31:0] v76_fu_947_p3;
reg   [31:0] v76_reg_1312;
wire   [31:0] v82_fu_954_p3;
reg   [31:0] v82_reg_1317;
wire   [31:0] v88_fu_961_p3;
reg   [31:0] v88_reg_1322;
wire   [31:0] v94_fu_968_p3;
reg   [31:0] v94_reg_1327;
reg   [31:0] v66_reg_1332;
reg   [31:0] v72_reg_1337;
wire   [31:0] v101_fu_975_p1;
wire   [31:0] v107_fu_980_p1;
reg   [31:0] v78_reg_1352;
reg   [31:0] v84_reg_1357;
reg   [31:0] v90_reg_1362;
reg   [31:0] v96_reg_1367;
reg   [31:0] v102_reg_1382;
reg   [31:0] v108_reg_1387;
wire   [31:0] v100_fu_985_p3;
reg   [31:0] v100_reg_1392;
wire   [31:0] v106_fu_992_p3;
reg   [31:0] v106_reg_1397;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_662_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_682_p1;
wire   [63:0] zext_ln110_fu_728_p1;
wire   [63:0] zext_ln117_fu_776_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_790_p1;
wire   [63:0] zext_ln131_fu_820_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_837_p1;
wire   [63:0] zext_ln98_1_fu_854_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_843_p1;
wire   [63:0] zext_ln145_fu_893_p1;
wire   [63:0] zext_ln152_fu_907_p1;
reg   [6:0] v60_fu_108;
wire   [6:0] add_ln98_fu_913_p2;
wire    ap_loop_init;
reg   [6:0] v59_fu_112;
wire   [6:0] select_ln97_1_fu_640_p3;
reg   [9:0] indvar_flatten_fu_116;
wire   [9:0] add_ln97_1_fu_602_p2;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
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
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v57_1_ce1_local;
reg    v57_1_ce0_local;
reg    v57_2_ce1_local;
reg    v57_2_ce0_local;
reg    v57_3_ce1_local;
reg    v57_3_ce0_local;
reg    v58_1_ce0_local;
reg   [2:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_2_ce0_local;
reg   [2:0] v58_2_address0_local;
reg    v58_2_we0_local;
reg    v58_3_ce0_local;
reg   [2:0] v58_3_address0_local;
reg    v58_3_we0_local;
reg    v58_4_ce1_local;
reg    v58_4_we0_local;
reg    v58_4_ce0_local;
reg    v58_5_ce1_local;
reg    v58_5_we0_local;
reg    v58_5_ce0_local;
reg    v58_6_ce0_local;
reg   [2:0] v58_6_address0_local;
reg    v58_6_we0_local;
reg    v58_7_ce0_local;
reg   [2:0] v58_7_address0_local;
reg    v58_7_we0_local;
reg   [31:0] grp_fu_502_p0;
reg   [31:0] grp_fu_502_p1;
reg   [31:0] grp_fu_506_p0;
reg   [31:0] grp_fu_506_p1;
reg   [31:0] grp_fu_510_p0;
reg   [31:0] grp_fu_510_p1;
reg   [31:0] grp_fu_514_p0;
reg   [31:0] grp_fu_514_p1;
wire   [0:0] tmp_3_fu_620_p3;
wire   [6:0] add_ln97_fu_614_p2;
wire   [5:0] trunc_ln97_fu_636_p1;
wire   [10:0] tmp_fu_674_p3;
wire   [4:0] tmp_1_fu_708_p4;
wire   [10:0] tmp_2_fu_718_p4;
wire   [10:0] tmp_5_fu_767_p5;
wire   [10:0] tmp_7_fu_782_p4;
wire   [10:0] tmp_s_fu_811_p5;
wire   [10:0] tmp_6_fu_826_p6;
wire   [3:0] or_ln128_1_fu_871_p3;
wire   [10:0] tmp_8_fu_884_p5;
wire   [10:0] tmp_9_fu_899_p4;
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
#0 v60_fu_108 = 7'd0;
#0 v59_fu_112 = 7'd0;
#0 indvar_flatten_fu_116 = 10'd0;
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
        indvar_flatten_fu_116 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln97_fu_596_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_116 <= add_ln97_1_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_112 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln97_fu_596_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_112 <= select_ln97_1_fu_640_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_108 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_108 <= add_ln98_fu_913_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1048 <= cmp7_fu_668_p2;
        cmp7_reg_1048_pp0_iter1_reg <= cmp7_reg_1048;
        icmp_ln97_reg_1020 <= icmp_ln97_fu_596_p2;
        icmp_ln97_reg_1020_pp0_iter1_reg <= icmp_ln97_reg_1020;
        icmp_ln97_reg_1020_pp0_iter2_reg <= icmp_ln97_reg_1020_pp0_iter1_reg;
        lshr_ln1_reg_1080 <= {{select_ln97_fu_628_p3[5:3]}};
        lshr_ln98_1_reg_1090 <= {{select_ln97_fu_628_p3[5:2]}};
        lshr_ln_reg_1038 <= {{select_ln97_1_fu_640_p3[5:1]}};
        select_ln97_reg_1024 <= select_ln97_fu_628_p3;
        tmp_4_reg_1118 <= select_ln97_fu_628_p3[32'd1];
        trunc_ln114_reg_1107 <= trunc_ln114_fu_734_p1;
        trunc_ln131_reg_1113 <= trunc_ln131_fu_738_p1;
        trunc_ln97_1_reg_1029 <= trunc_ln97_1_fu_648_p1;
        v100_reg_1392 <= v100_fu_985_p3;
        v106_reg_1397 <= v106_fu_992_p3;
        v63_reg_1292 <= v63_fu_923_p3;
        v70_reg_1307 <= v70_fu_940_p3;
        v76_reg_1312 <= v76_fu_947_p3;
        v82_reg_1317 <= v82_fu_954_p3;
        v88_reg_1322 <= v88_fu_961_p3;
        v94_reg_1327 <= v94_fu_968_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_546 <= grp_fu_518_p3;
        reg_550 <= grp_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_554 <= grp_fu_532_p3;
        reg_558 <= grp_fu_539_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_562 <= grp_fu_333_p_dout0;
        reg_570 <= grp_fu_337_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1382 <= grp_fu_341_p_dout0;
        v108_reg_1387 <= grp_fu_345_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_addr_reg_1189 <= zext_ln98_fu_843_p1;
        v58_0_addr_reg_1189_pp0_iter2_reg <= v58_0_addr_reg_1189;
        v58_0_addr_reg_1189_pp0_iter3_reg <= v58_0_addr_reg_1189_pp0_iter2_reg;
        v58_1_addr_reg_1199 <= zext_ln98_fu_843_p1;
        v58_1_addr_reg_1199_pp0_iter2_reg <= v58_1_addr_reg_1199;
        v58_1_addr_reg_1199_pp0_iter3_reg <= v58_1_addr_reg_1199_pp0_iter2_reg;
        v58_2_addr_reg_1209 <= zext_ln98_fu_843_p1;
        v58_2_addr_reg_1209_pp0_iter2_reg <= v58_2_addr_reg_1209;
        v58_2_addr_reg_1209_pp0_iter3_reg <= v58_2_addr_reg_1209_pp0_iter2_reg;
        v58_3_addr_reg_1224 <= zext_ln98_fu_843_p1;
        v58_3_addr_reg_1224_pp0_iter2_reg <= v58_3_addr_reg_1224;
        v58_3_addr_reg_1224_pp0_iter3_reg <= v58_3_addr_reg_1224_pp0_iter2_reg;
        v58_4_addr_reg_1245 <= zext_ln98_fu_843_p1;
        v58_4_addr_reg_1245_pp0_iter2_reg <= v58_4_addr_reg_1245;
        v58_4_addr_reg_1245_pp0_iter3_reg <= v58_4_addr_reg_1245_pp0_iter2_reg;
        v58_5_addr_reg_1256 <= zext_ln98_fu_843_p1;
        v58_5_addr_reg_1256_pp0_iter2_reg <= v58_5_addr_reg_1256;
        v58_5_addr_reg_1256_pp0_iter3_reg <= v58_5_addr_reg_1256_pp0_iter2_reg;
        v58_6_addr_reg_1272 <= zext_ln98_fu_843_p1;
        v58_6_addr_reg_1272_pp0_iter2_reg <= v58_6_addr_reg_1272;
        v58_6_addr_reg_1272_pp0_iter3_reg <= v58_6_addr_reg_1272_pp0_iter2_reg;
        v58_6_addr_reg_1272_pp0_iter4_reg <= v58_6_addr_reg_1272_pp0_iter3_reg;
        v58_7_addr_reg_1287 <= zext_ln98_fu_843_p1;
        v58_7_addr_reg_1287_pp0_iter2_reg <= v58_7_addr_reg_1287;
        v58_7_addr_reg_1287_pp0_iter3_reg <= v58_7_addr_reg_1287_pp0_iter2_reg;
        v58_7_addr_reg_1287_pp0_iter4_reg <= v58_7_addr_reg_1287_pp0_iter3_reg;
        zext_ln128_reg_1234[3 : 1] <= zext_ln128_fu_878_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_reg_1148 <= v65_fu_796_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_v_reg_1123 <= v65_v_fu_760_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1332 <= grp_fu_341_p_dout0;
        v72_reg_1337 <= grp_fu_345_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1352 <= grp_fu_341_p_dout0;
        v84_reg_1357 <= grp_fu_345_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1362 <= grp_fu_341_p_dout0;
        v96_reg_1367 <= grp_fu_345_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1020 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1020_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        grp_fu_502_p0 = v100_reg_1392;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p0 = v88_reg_1322;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p0 = v76_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p0 = v63_reg_1292;
    end else begin
        grp_fu_502_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_502_p1 = v102_reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p1 = v90_reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p1 = v78_reg_1352;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p1 = v66_reg_1332;
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_506_p0 = v106_reg_1397;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p0 = v94_reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p0 = v82_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_506_p0 = v70_reg_1307;
    end else begin
        grp_fu_506_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_506_p1 = v108_reg_1387;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p1 = v96_reg_1367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p1 = v84_reg_1357;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_506_p1 = v72_reg_1337;
    end else begin
        grp_fu_506_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_510_p0 = v101_fu_975_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_510_p0 = v89_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_510_p0 = v77_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_510_p0 = v64_fu_801_p1;
    end else begin
        grp_fu_510_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_510_p1 = v65_reg_1148;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_510_p1 = v65_fu_796_p1;
    end else begin
        grp_fu_510_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_514_p0 = v107_fu_980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_514_p0 = v95_fu_935_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_514_p0 = v83_fu_866_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_514_p0 = v71_fu_806_p1;
    end else begin
        grp_fu_514_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_514_p1 = v65_reg_1148;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_514_p1 = v65_fu_796_p1;
    end else begin
        grp_fu_514_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address0_local = zext_ln152_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address0_local = zext_ln138_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address0_local = zext_ln124_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address0_local = zext_ln110_fu_728_p1;
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address1_local = zext_ln145_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address1_local = zext_ln131_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address1_local = zext_ln117_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address1_local = zext_ln102_fu_682_p1;
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
        v114_1_address0_local = zext_ln152_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address0_local = zext_ln138_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address0_local = zext_ln124_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address0_local = zext_ln110_fu_728_p1;
    end else begin
        v114_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address1_local = zext_ln145_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address1_local = zext_ln131_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address1_local = zext_ln117_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address1_local = zext_ln102_fu_682_p1;
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
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1189_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_fu_843_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_reg_1199_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_fu_843_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address0_local = v58_2_addr_reg_1209_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_fu_843_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address0_local = v58_3_addr_reg_1224_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_fu_843_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce1_local = 1'b1;
    end else begin
        v58_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce1_local = 1'b1;
    end else begin
        v58_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_address0_local = v58_6_addr_reg_1272_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1272;
    end else begin
        v58_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_address0_local = v58_7_addr_reg_1287_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1287;
    end else begin
        v58_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
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
assign add_ln97_1_fu_602_p2 = (indvar_flatten_fu_116 + 10'd1);
assign add_ln97_fu_614_p2 = (v59_fu_112 + 7'd1);
assign add_ln98_fu_913_p2 = (select_ln97_reg_1024 + 7'd8);
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
assign cmp7_fu_668_p2 = ((select_ln97_1_fu_640_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_333_p_ce = 1'b1;
assign grp_fu_333_p_din0 = grp_fu_502_p0;
assign grp_fu_333_p_din1 = grp_fu_502_p1;
assign grp_fu_333_p_opcode = 2'd0;
assign grp_fu_337_p_ce = 1'b1;
assign grp_fu_337_p_din0 = grp_fu_506_p0;
assign grp_fu_337_p_din1 = grp_fu_506_p1;
assign grp_fu_337_p_opcode = 2'd0;
assign grp_fu_341_p_ce = 1'b1;
assign grp_fu_341_p_din0 = grp_fu_510_p0;
assign grp_fu_341_p_din1 = grp_fu_510_p1;
assign grp_fu_345_p_ce = 1'b1;
assign grp_fu_345_p_din0 = grp_fu_514_p0;
assign grp_fu_345_p_din1 = grp_fu_514_p1;
assign grp_fu_518_p3 = ((trunc_ln97_1_reg_1029[0:0] == 1'b1) ? v114_1_q1 : v114_0_q1);
assign grp_fu_525_p3 = ((trunc_ln97_1_reg_1029[0:0] == 1'b1) ? v114_1_q0 : v114_0_q0);
assign grp_fu_532_p3 = ((trunc_ln97_1_reg_1029[0:0] == 1'b1) ? v114_1_q1 : v114_0_q1);
assign grp_fu_539_p3 = ((trunc_ln97_1_reg_1029[0:0] == 1'b1) ? v114_1_q0 : v114_0_q0);
assign icmp_ln97_fu_596_p2 = ((indvar_flatten_fu_116 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_652_p4 = {{select_ln97_1_fu_640_p3[5:1]}};
assign or_ln128_1_fu_871_p3 = {{lshr_ln1_reg_1080}, {1'd1}};
assign select_ln97_1_fu_640_p3 = ((tmp_3_fu_620_p3[0:0] == 1'b1) ? add_ln97_fu_614_p2 : v59_fu_112);
assign select_ln97_fu_628_p3 = ((tmp_3_fu_620_p3[0:0] == 1'b1) ? 7'd0 : v60_fu_108);
assign tmp_1_fu_708_p4 = {{select_ln97_fu_628_p3[5:1]}};
assign tmp_2_fu_718_p4 = {{{tmp_1_fu_708_p4}, {1'd1}}, {lshr_ln_fu_652_p4}};
assign tmp_3_fu_620_p3 = v60_fu_108[32'd6];
assign tmp_5_fu_767_p5 = {{{{lshr_ln98_1_reg_1090}, {1'd1}}, {trunc_ln114_reg_1107}}, {lshr_ln_reg_1038}};
assign tmp_6_fu_826_p6 = {{{{{lshr_ln1_reg_1080}, {1'd1}}, {tmp_4_reg_1118}}, {1'd1}}, {lshr_ln_reg_1038}};
assign tmp_7_fu_782_p4 = {{{lshr_ln98_1_reg_1090}, {2'd3}}, {lshr_ln_reg_1038}};
assign tmp_8_fu_884_p5 = {{{{lshr_ln1_reg_1080}, {2'd3}}, {trunc_ln114_reg_1107}}, {lshr_ln_reg_1038}};
assign tmp_9_fu_899_p4 = {{{lshr_ln1_reg_1080}, {3'd7}}, {lshr_ln_reg_1038}};
assign tmp_fu_674_p3 = {{trunc_ln97_fu_636_p1}, {lshr_ln_fu_652_p4}};
assign tmp_s_fu_811_p5 = {{{{lshr_ln1_reg_1080}, {1'd1}}, {trunc_ln131_reg_1113}}, {lshr_ln_reg_1038}};
assign trunc_ln114_fu_734_p1 = select_ln97_fu_628_p3[0:0];
assign trunc_ln131_fu_738_p1 = select_ln97_fu_628_p3[1:0];
assign trunc_ln97_1_fu_648_p1 = select_ln97_1_fu_640_p3[0:0];
assign trunc_ln97_fu_636_p1 = select_ln97_fu_628_p3[5:0];
assign v100_fu_985_p3 = ((cmp7_reg_1048_pp0_iter1_reg[0:0] == 1'b1) ? v57_2_q0 : v58_6_q0);
assign v101_fu_975_p1 = reg_554;
assign v106_fu_992_p3 = ((cmp7_reg_1048_pp0_iter1_reg[0:0] == 1'b1) ? v57_3_q0 : v58_7_q0);
assign v107_fu_980_p1 = reg_558;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v114_1_address0 = v114_1_address0_local;
assign v114_1_address1 = v114_1_address1_local;
assign v114_1_ce0 = v114_1_ce0_local;
assign v114_1_ce1 = v114_1_ce1_local;
assign v115_0_address0 = zext_ln97_fu_662_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_fu_662_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v57_0_address0 = zext_ln128_fu_878_p1;
assign v57_0_address1 = zext_ln98_1_fu_854_p1;
assign v57_0_ce0 = v57_0_ce0_local;
assign v57_0_ce1 = v57_0_ce1_local;
assign v57_1_address0 = zext_ln128_fu_878_p1;
assign v57_1_address1 = zext_ln98_1_fu_854_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_ce1 = v57_1_ce1_local;
assign v57_2_address0 = zext_ln128_reg_1234;
assign v57_2_address1 = zext_ln98_1_fu_854_p1;
assign v57_2_ce0 = v57_2_ce0_local;
assign v57_2_ce1 = v57_2_ce1_local;
assign v57_3_address0 = zext_ln128_reg_1234;
assign v57_3_address1 = zext_ln98_1_fu_854_p1;
assign v57_3_ce0 = v57_3_ce0_local;
assign v57_3_ce1 = v57_3_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_562;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_570;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_562;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_570;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1245_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_fu_843_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_562;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1256_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_fu_843_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_570;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_562;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_570;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_923_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_0_q1 : v58_0_q0);
assign v64_fu_801_p1 = reg_546;
assign v65_fu_796_p1 = v65_v_reg_1123;
assign v65_v_fu_760_p3 = ((trunc_ln97_1_reg_1029[0:0] == 1'b1) ? v115_1_q0 : v115_0_q0);
assign v70_fu_940_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_1_q1 : v58_1_q0);
assign v71_fu_806_p1 = reg_550;
assign v76_fu_947_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_2_q1 : v58_2_q0);
assign v77_fu_861_p1 = reg_546;
assign v82_fu_954_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_3_q1 : v58_3_q0);
assign v83_fu_866_p1 = reg_550;
assign v88_fu_961_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_0_q0 : v58_4_q1);
assign v89_fu_930_p1 = reg_554;
assign v94_fu_968_p3 = ((cmp7_reg_1048[0:0] == 1'b1) ? v57_1_q0 : v58_5_q1);
assign v95_fu_935_p1 = reg_558;
assign zext_ln102_fu_682_p1 = tmp_fu_674_p3;
assign zext_ln110_fu_728_p1 = tmp_2_fu_718_p4;
assign zext_ln117_fu_776_p1 = tmp_5_fu_767_p5;
assign zext_ln124_fu_790_p1 = tmp_7_fu_782_p4;
assign zext_ln128_fu_878_p1 = or_ln128_1_fu_871_p3;
assign zext_ln131_fu_820_p1 = tmp_s_fu_811_p5;
assign zext_ln138_fu_837_p1 = tmp_6_fu_826_p6;
assign zext_ln145_fu_893_p1 = tmp_8_fu_884_p5;
assign zext_ln152_fu_907_p1 = tmp_9_fu_899_p4;
assign zext_ln97_fu_662_p1 = lshr_ln_fu_652_p4;
assign zext_ln98_1_fu_854_p1 = lshr_ln98_1_reg_1090;
assign zext_ln98_fu_843_p1 = lshr_ln1_reg_1080;
always @ (posedge ap_clk) begin
    zext_ln128_reg_1234[0] <= 1'b1;
    zext_ln128_reg_1234[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 