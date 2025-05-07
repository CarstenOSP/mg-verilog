module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_address0,v58_ce0,v58_we0,v58_d0,v58_q0,v58_address1,v58_ce1,v58_we1,v58_d1,v58_q1,grp_fu_237_p_din0,grp_fu_237_p_din1,grp_fu_237_p_opcode,grp_fu_237_p_dout0,grp_fu_237_p_ce,grp_fu_241_p_din0,grp_fu_241_p_din1,grp_fu_241_p_dout0,grp_fu_241_p_ce); 
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
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
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
output  [31:0] grp_fu_237_p_din0;
output  [31:0] grp_fu_237_p_din1;
output  [1:0] grp_fu_237_p_opcode;
input  [31:0] grp_fu_237_p_dout0;
output   grp_fu_237_p_ce;
output  [31:0] grp_fu_241_p_din0;
output  [31:0] grp_fu_241_p_din1;
input  [31:0] grp_fu_241_p_dout0;
output   grp_fu_241_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln97_reg_884;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_360;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_364;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_369;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_374;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln97_fu_397_p2;
wire   [6:0] select_ln97_fu_429_p3;
reg   [6:0] select_ln97_reg_888;
wire   [5:0] trunc_ln97_fu_437_p1;
reg   [5:0] trunc_ln97_reg_893;
wire   [6:0] select_ln97_1_fu_441_p3;
reg   [6:0] select_ln97_1_reg_898;
reg   [5:0] v58_addr_reg_910;
reg   [5:0] v58_addr_reg_910_pp0_iter1_reg;
wire   [4:0] tmp_1_fu_455_p4;
reg   [4:0] tmp_1_reg_915;
reg   [5:0] v58_addr_1_reg_925;
reg   [5:0] v58_addr_1_reg_925_pp0_iter1_reg;
reg   [3:0] tmp_3_reg_931;
wire   [0:0] trunc_ln114_fu_489_p1;
reg   [0:0] trunc_ln114_reg_939;
reg   [2:0] tmp_8_reg_947;
wire   [1:0] trunc_ln128_fu_503_p1;
reg   [1:0] trunc_ln128_reg_959;
reg   [0:0] tmp_6_reg_965;
wire   [11:0] select_ln97_1_cast_fu_529_p1;
reg   [11:0] select_ln97_1_cast_reg_971;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] cmp7_fu_532_p2;
reg   [0:0] cmp7_reg_981;
reg   [0:0] cmp7_reg_981_pp0_iter1_reg;
wire   [31:0] v63_fu_555_p3;
reg   [31:0] v63_reg_1000;
reg   [5:0] v58_addr_2_reg_1015;
reg   [5:0] v58_addr_2_reg_1015_pp0_iter1_reg;
reg   [5:0] v58_addr_2_reg_1015_pp0_iter2_reg;
reg   [5:0] v58_addr_3_reg_1025;
reg   [5:0] v58_addr_3_reg_1025_pp0_iter1_reg;
reg   [5:0] v58_addr_3_reg_1025_pp0_iter2_reg;
wire   [31:0] v70_fu_608_p3;
reg   [31:0] v70_reg_1030;
reg   [31:0] v115_load_reg_1035;
reg   [5:0] v58_addr_4_reg_1055;
reg   [5:0] v58_addr_4_reg_1055_pp0_iter1_reg;
reg   [5:0] v58_addr_4_reg_1055_pp0_iter2_reg;
reg   [5:0] v58_addr_5_reg_1065;
reg   [5:0] v58_addr_5_reg_1065_pp0_iter1_reg;
reg   [5:0] v58_addr_5_reg_1065_pp0_iter2_reg;
wire   [31:0] grp_fu_353_p3;
reg   [31:0] v76_reg_1070;
wire   [31:0] v82_fu_683_p3;
reg   [31:0] v82_reg_1075;
wire   [31:0] v65_fu_690_p1;
reg   [31:0] v65_reg_1080;
wire   [31:0] v64_fu_694_p1;
reg   [31:0] v114_load_3_reg_1090;
reg   [5:0] v58_addr_6_reg_1110;
reg   [5:0] v58_addr_6_reg_1110_pp0_iter1_reg;
reg   [5:0] v58_addr_6_reg_1110_pp0_iter2_reg;
reg   [31:0] v92_reg_1121;
reg   [5:0] v58_addr_7_reg_1126;
reg   [5:0] v58_addr_7_reg_1126_pp0_iter1_reg;
reg   [5:0] v58_addr_7_reg_1126_pp0_iter2_reg;
reg   [31:0] v88_reg_1131;
wire   [31:0] v71_fu_766_p1;
reg   [31:0] v114_load_5_reg_1141;
reg   [31:0] v98_reg_1156;
reg   [31:0] v104_reg_1161;
wire   [31:0] v77_fu_808_p1;
reg   [31:0] v114_load_7_reg_1171;
reg   [31:0] v66_reg_1176;
wire   [31:0] v83_fu_813_p1;
reg   [31:0] v72_reg_1186;
wire   [31:0] v89_fu_817_p1;
reg   [31:0] v78_reg_1196;
wire   [31:0] v95_fu_832_p1;
reg   [31:0] v84_reg_1206;
wire   [31:0] v101_fu_836_p1;
reg   [31:0] v90_reg_1216;
wire   [31:0] v107_fu_841_p1;
reg   [31:0] v96_reg_1226;
wire   [31:0] v94_fu_845_p3;
reg   [31:0] v94_reg_1231;
reg   [31:0] v102_reg_1236;
wire   [31:0] v100_fu_851_p3;
reg   [31:0] v100_reg_1241;
wire   [31:0] v106_fu_857_p3;
reg   [31:0] v106_reg_1246;
reg   [31:0] v108_reg_1251;
reg   [31:0] v91_reg_1256;
reg   [31:0] v97_reg_1261;
reg   [31:0] v103_reg_1266;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln98_fu_449_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_473_p1;
wire   [63:0] zext_ln97_fu_525_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_550_p1;
wire   [63:0] zext_ln110_fu_576_p1;
wire   [63:0] zext_ln114_fu_589_p1;
wire   [63:0] zext_ln121_fu_602_p1;
wire   [63:0] zext_ln117_fu_631_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_648_p1;
wire   [63:0] zext_ln128_fu_661_p1;
wire   [63:0] zext_ln135_fu_677_p1;
wire   [63:0] zext_ln131_fu_714_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_734_p1;
wire   [63:0] zext_ln142_fu_747_p1;
wire   [63:0] zext_ln149_fu_760_p1;
wire   [63:0] zext_ln145_fu_786_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln152_fu_803_p1;
reg   [6:0] v60_fu_104;
wire   [6:0] add_ln98_fu_822_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_108;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_112;
wire   [9:0] add_ln97_1_fu_403_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v58_ce1_local;
reg   [5:0] v58_address1_local;
reg    v58_ce0_local;
reg   [5:0] v58_address0_local;
reg    v58_we1_local;
reg   [31:0] v58_d1_local;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
reg    v58_we0_local;
reg   [31:0] v58_d0_local;
wire    ap_block_pp0_stage5;
reg    v115_ce0_local;
reg    v114_ce1_local;
reg   [11:0] v114_address1_local;
reg    v114_ce0_local;
reg   [11:0] v114_address0_local;
reg   [31:0] grp_fu_345_p0;
reg   [31:0] grp_fu_345_p1;
reg   [31:0] grp_fu_349_p0;
reg   [31:0] grp_fu_349_p1;
wire   [0:0] tmp_4_fu_421_p3;
wire   [6:0] add_ln97_fu_415_p2;
wire   [5:0] or_ln_fu_465_p3;
wire   [11:0] tmp_fu_537_p3;
wire   [11:0] add_ln102_fu_544_p2;
wire   [11:0] tmp_2_fu_563_p3;
wire   [11:0] add_ln110_fu_570_p2;
wire   [5:0] or_ln1_fu_581_p4;
wire   [5:0] or_ln2_fu_595_p3;
wire   [11:0] tmp_5_fu_616_p5;
wire   [11:0] add_ln117_fu_626_p2;
wire   [11:0] tmp_7_fu_636_p3;
wire   [11:0] add_ln124_fu_643_p2;
wire   [5:0] or_ln3_fu_653_p4;
wire   [5:0] or_ln4_fu_667_p5;
wire   [11:0] tmp_s_fu_699_p5;
wire   [11:0] add_ln131_fu_709_p2;
wire   [11:0] tmp_9_fu_719_p5;
wire   [11:0] add_ln138_fu_729_p2;
wire   [5:0] or_ln5_fu_739_p4;
wire   [5:0] or_ln6_fu_753_p3;
wire   [11:0] tmp_10_fu_771_p5;
wire   [11:0] add_ln145_fu_781_p2;
wire   [11:0] tmp_11_fu_791_p3;
wire   [11:0] add_ln152_fu_798_p2;
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
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_104 = 7'd0;
#0 v59_fu_108 = 7'd0;
#0 indvar_flatten_fu_112 = 10'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_397_p2 == 1'd0))) begin
            indvar_flatten_fu_112 <= add_ln97_1_fu_403_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_112 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_364 <= v114_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_364 <= v114_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_397_p2 == 1'd0))) begin
            v59_fu_108 <= select_ln97_1_fu_441_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_104 <= 7'd0;
    end else if (((icmp_ln97_reg_884 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v60_fu_104 <= add_ln98_fu_822_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_981 <= cmp7_fu_532_p2;
        cmp7_reg_981_pp0_iter1_reg <= cmp7_reg_981;
        select_ln97_1_cast_reg_971[6 : 0] <= select_ln97_1_cast_fu_529_p1[6 : 0];
        v58_addr_2_reg_1015[0] <= zext_ln114_fu_589_p1[0];
v58_addr_2_reg_1015[5 : 2] <= zext_ln114_fu_589_p1[5 : 2];
        v58_addr_2_reg_1015_pp0_iter1_reg[0] <= v58_addr_2_reg_1015[0];
v58_addr_2_reg_1015_pp0_iter1_reg[5 : 2] <= v58_addr_2_reg_1015[5 : 2];
        v58_addr_2_reg_1015_pp0_iter2_reg[0] <= v58_addr_2_reg_1015_pp0_iter1_reg[0];
v58_addr_2_reg_1015_pp0_iter2_reg[5 : 2] <= v58_addr_2_reg_1015_pp0_iter1_reg[5 : 2];
        v58_addr_3_reg_1025[5 : 2] <= zext_ln121_fu_602_p1[5 : 2];
        v58_addr_3_reg_1025_pp0_iter1_reg[5 : 2] <= v58_addr_3_reg_1025[5 : 2];
        v58_addr_3_reg_1025_pp0_iter2_reg[5 : 2] <= v58_addr_3_reg_1025_pp0_iter1_reg[5 : 2];
        v63_reg_1000 <= v63_fu_555_p3;
        v70_reg_1030 <= v70_fu_608_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_884 <= icmp_ln97_fu_397_p2;
        select_ln97_1_reg_898 <= select_ln97_1_fu_441_p3;
        select_ln97_reg_888 <= select_ln97_fu_429_p3;
        tmp_1_reg_915 <= {{select_ln97_fu_429_p3[5:1]}};
        tmp_3_reg_931 <= {{select_ln97_fu_429_p3[5:2]}};
        tmp_6_reg_965 <= select_ln97_fu_429_p3[32'd1];
        tmp_8_reg_947 <= {{select_ln97_fu_429_p3[5:3]}};
        trunc_ln114_reg_939 <= trunc_ln114_fu_489_p1;
        trunc_ln128_reg_959 <= trunc_ln128_fu_503_p1;
        trunc_ln97_reg_893 <= trunc_ln97_fu_437_p1;
        v58_addr_1_reg_925[5 : 1] <= zext_ln107_fu_473_p1[5 : 1];
        v58_addr_1_reg_925_pp0_iter1_reg[5 : 1] <= v58_addr_1_reg_925[5 : 1];
        v58_addr_reg_910 <= zext_ln98_fu_449_p1;
        v58_addr_reg_910_pp0_iter1_reg <= v58_addr_reg_910;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_360 <= v114_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_369 <= grp_fu_237_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_374 <= grp_fu_237_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1241 <= v100_fu_851_p3;
        v106_reg_1246 <= v106_fu_857_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1236 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1266 <= grp_fu_237_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v104_reg_1161 <= v57_q0;
        v114_load_5_reg_1141 <= v114_q0;
        v98_reg_1156 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v108_reg_1251 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_load_3_reg_1090 <= v114_q0;
        v88_reg_1131 <= grp_fu_353_p3;
        v92_reg_1121 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v114_load_7_reg_1171 <= v114_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v115_load_reg_1035 <= v115_q0;
        v58_addr_4_reg_1055[1 : 0] <= zext_ln128_fu_661_p1[1 : 0];
v58_addr_4_reg_1055[5 : 3] <= zext_ln128_fu_661_p1[5 : 3];
        v58_addr_4_reg_1055_pp0_iter1_reg[1 : 0] <= v58_addr_4_reg_1055[1 : 0];
v58_addr_4_reg_1055_pp0_iter1_reg[5 : 3] <= v58_addr_4_reg_1055[5 : 3];
        v58_addr_4_reg_1055_pp0_iter2_reg[1 : 0] <= v58_addr_4_reg_1055_pp0_iter1_reg[1 : 0];
v58_addr_4_reg_1055_pp0_iter2_reg[5 : 3] <= v58_addr_4_reg_1055_pp0_iter1_reg[5 : 3];
        v58_addr_5_reg_1065[1] <= zext_ln135_fu_677_p1[1];
v58_addr_5_reg_1065[5 : 3] <= zext_ln135_fu_677_p1[5 : 3];
        v58_addr_5_reg_1065_pp0_iter1_reg[1] <= v58_addr_5_reg_1065[1];
v58_addr_5_reg_1065_pp0_iter1_reg[5 : 3] <= v58_addr_5_reg_1065[5 : 3];
        v58_addr_5_reg_1065_pp0_iter2_reg[1] <= v58_addr_5_reg_1065_pp0_iter1_reg[1];
v58_addr_5_reg_1065_pp0_iter2_reg[5 : 3] <= v58_addr_5_reg_1065_pp0_iter1_reg[5 : 3];
        v82_reg_1075 <= v82_fu_683_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_addr_6_reg_1110[0] <= zext_ln142_fu_747_p1[0];
v58_addr_6_reg_1110[5 : 3] <= zext_ln142_fu_747_p1[5 : 3];
        v58_addr_6_reg_1110_pp0_iter1_reg[0] <= v58_addr_6_reg_1110[0];
v58_addr_6_reg_1110_pp0_iter1_reg[5 : 3] <= v58_addr_6_reg_1110[5 : 3];
        v58_addr_6_reg_1110_pp0_iter2_reg[0] <= v58_addr_6_reg_1110_pp0_iter1_reg[0];
v58_addr_6_reg_1110_pp0_iter2_reg[5 : 3] <= v58_addr_6_reg_1110_pp0_iter1_reg[5 : 3];
        v58_addr_7_reg_1126[5 : 3] <= zext_ln149_fu_760_p1[5 : 3];
        v58_addr_7_reg_1126_pp0_iter1_reg[5 : 3] <= v58_addr_7_reg_1126[5 : 3];
        v58_addr_7_reg_1126_pp0_iter2_reg[5 : 3] <= v58_addr_7_reg_1126_pp0_iter1_reg[5 : 3];
        v65_reg_1080 <= v65_fu_690_p1;
        v94_reg_1231 <= v94_fu_845_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v66_reg_1176 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v72_reg_1186 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v76_reg_1070 <= grp_fu_353_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v78_reg_1196 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v84_reg_1206 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v90_reg_1216 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v91_reg_1256 <= grp_fu_237_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v96_reg_1226 <= grp_fu_241_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v97_reg_1261 <= grp_fu_237_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_884 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_345_p0 = v106_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_345_p0 = v100_reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_345_p0 = v94_reg_1231;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_345_p0 = v88_reg_1131;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_345_p0 = v82_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p0 = v76_reg_1070;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p0 = v70_reg_1030;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_345_p0 = v63_reg_1000;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_345_p1 = v108_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_345_p1 = v102_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_345_p1 = v96_reg_1226;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_345_p1 = v90_reg_1216;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_345_p1 = v84_reg_1206;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_345_p1 = v78_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_345_p1 = v72_reg_1186;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_345_p1 = v66_reg_1176;
    end else begin
        grp_fu_345_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_349_p0 = v107_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_349_p0 = v101_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_349_p0 = v95_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_349_p0 = v89_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_349_p0 = v83_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_349_p0 = v77_fu_808_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_349_p0 = v71_fu_766_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_349_p0 = v64_fu_694_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_349_p1 = v65_reg_1080;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_349_p1 = v65_fu_690_p1;
    end else begin
        grp_fu_349_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v114_address0_local = zext_ln152_fu_803_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address0_local = zext_ln138_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address0_local = zext_ln124_fu_648_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address0_local = zext_ln110_fu_576_p1;
        end else begin
            v114_address0_local = 'bx;
        end
    end else begin
        v114_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v114_address1_local = zext_ln145_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v114_address1_local = zext_ln131_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v114_address1_local = zext_ln117_fu_631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v114_address1_local = zext_ln102_fu_550_p1;
        end else begin
            v114_address1_local = 'bx;
        end
    end else begin
        v114_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce0_local = 1'b1;
    end else begin
        v114_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v114_ce1_local = 1'b1;
    end else begin
        v114_ce1_local = 1'b0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_760_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_602_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_473_p1;
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
            v57_address1_local = zext_ln142_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_449_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v58_address0_local = v58_addr_7_reg_1126_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v58_address0_local = v58_addr_6_reg_1110_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_address0_local = v58_addr_5_reg_1065_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v58_address0_local = v58_addr_3_reg_1025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_address0_local = v58_addr_7_reg_1126;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_address0_local = v58_addr_5_reg_1065;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_address0_local = zext_ln121_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_address0_local = zext_ln107_fu_473_p1;
    end else begin
        v58_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_address1_local = v58_addr_4_reg_1055_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v58_address1_local = v58_addr_2_reg_1015_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v58_address1_local = v58_addr_1_reg_925_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v58_address1_local = v58_addr_reg_910_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_address1_local = v58_addr_6_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_address1_local = zext_ln128_fu_661_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_address1_local = zext_ln114_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_address1_local = zext_ln98_fu_449_p1;
    end else begin
        v58_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_ce0_local = 1'b1;
    end else begin
        v58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_ce1_local = 1'b1;
    end else begin
        v58_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v58_d0_local = v103_reg_1266;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_d0_local = v97_reg_1261;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v58_d0_local = reg_374;
    end else begin
        v58_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v58_d1_local = v91_reg_1256;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v58_d1_local = reg_369;
    end else begin
        v58_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v58_we0_local = 1'b1;
    end else begin
        v58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
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
assign add_ln102_fu_544_p2 = (tmp_fu_537_p3 + select_ln97_1_cast_fu_529_p1);
assign add_ln110_fu_570_p2 = (tmp_2_fu_563_p3 + select_ln97_1_cast_fu_529_p1);
assign add_ln117_fu_626_p2 = (tmp_5_fu_616_p5 + select_ln97_1_cast_reg_971);
assign add_ln124_fu_643_p2 = (tmp_7_fu_636_p3 + select_ln97_1_cast_reg_971);
assign add_ln131_fu_709_p2 = (tmp_s_fu_699_p5 + select_ln97_1_cast_reg_971);
assign add_ln138_fu_729_p2 = (tmp_9_fu_719_p5 + select_ln97_1_cast_reg_971);
assign add_ln145_fu_781_p2 = (tmp_10_fu_771_p5 + select_ln97_1_cast_reg_971);
assign add_ln152_fu_798_p2 = (tmp_11_fu_791_p3 + select_ln97_1_cast_reg_971);
assign add_ln97_1_fu_403_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_415_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_822_p2 = (select_ln97_reg_888 + 7'd8);
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
assign cmp7_fu_532_p2 = ((select_ln97_1_reg_898 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_237_p_ce = 1'b1;
assign grp_fu_237_p_din0 = grp_fu_345_p0;
assign grp_fu_237_p_din1 = grp_fu_345_p1;
assign grp_fu_237_p_opcode = 2'd0;
assign grp_fu_241_p_ce = 1'b1;
assign grp_fu_241_p_din0 = grp_fu_349_p0;
assign grp_fu_241_p_din1 = grp_fu_349_p1;
assign grp_fu_353_p3 = ((cmp7_reg_981[0:0] == 1'b1) ? v57_q1 : v58_q1);
assign icmp_ln97_fu_397_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign or_ln1_fu_581_p4 = {{{tmp_3_reg_931}, {1'd1}}, {trunc_ln114_reg_939}};
assign or_ln2_fu_595_p3 = {{tmp_3_reg_931}, {2'd3}};
assign or_ln3_fu_653_p4 = {{{tmp_8_reg_947}, {1'd1}}, {trunc_ln128_reg_959}};
assign or_ln4_fu_667_p5 = {{{{tmp_8_reg_947}, {1'd1}}, {tmp_6_reg_965}}, {1'd1}};
assign or_ln5_fu_739_p4 = {{{tmp_8_reg_947}, {2'd3}}, {trunc_ln114_reg_939}};
assign or_ln6_fu_753_p3 = {{tmp_8_reg_947}, {3'd7}};
assign or_ln_fu_465_p3 = {{tmp_1_fu_455_p4}, {1'd1}};
assign select_ln97_1_cast_fu_529_p1 = select_ln97_1_reg_898;
assign select_ln97_1_fu_441_p3 = ((tmp_4_fu_421_p3[0:0] == 1'b1) ? add_ln97_fu_415_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_429_p3 = ((tmp_4_fu_421_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_771_p5 = {{{{tmp_8_reg_947}, {2'd3}}, {trunc_ln114_reg_939}}, {6'd0}};
assign tmp_11_fu_791_p3 = {{tmp_8_reg_947}, {9'd448}};
assign tmp_1_fu_455_p4 = {{select_ln97_fu_429_p3[5:1]}};
assign tmp_2_fu_563_p3 = {{tmp_1_reg_915}, {7'd64}};
assign tmp_4_fu_421_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_5_fu_616_p5 = {{{{tmp_3_reg_931}, {1'd1}}, {trunc_ln114_reg_939}}, {6'd0}};
assign tmp_7_fu_636_p3 = {{tmp_3_reg_931}, {8'd192}};
assign tmp_9_fu_719_p5 = {{{{tmp_8_reg_947}, {1'd1}}, {tmp_6_reg_965}}, {7'd64}};
assign tmp_fu_537_p3 = {{trunc_ln97_reg_893}, {6'd0}};
assign tmp_s_fu_699_p5 = {{{{tmp_8_reg_947}, {1'd1}}, {trunc_ln128_reg_959}}, {6'd0}};
assign trunc_ln114_fu_489_p1 = select_ln97_fu_429_p3[0:0];
assign trunc_ln128_fu_503_p1 = select_ln97_fu_429_p3[1:0];
assign trunc_ln97_fu_437_p1 = select_ln97_fu_429_p3[5:0];
assign v100_fu_851_p3 = ((cmp7_reg_981_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1156 : v58_q1);
assign v101_fu_836_p1 = reg_360;
assign v106_fu_857_p3 = ((cmp7_reg_981_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1161 : v58_q0);
assign v107_fu_841_p1 = v114_load_7_reg_1171;
assign v114_address0 = v114_address0_local;
assign v114_address1 = v114_address1_local;
assign v114_ce0 = v114_ce0_local;
assign v114_ce1 = v114_ce1_local;
assign v115_address0 = zext_ln97_fu_525_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_address0 = v58_address0_local;
assign v58_address1 = v58_address1_local;
assign v58_ce0 = v58_ce0_local;
assign v58_ce1 = v58_ce1_local;
assign v58_d0 = v58_d0_local;
assign v58_d1 = v58_d1_local;
assign v58_we0 = v58_we0_local;
assign v58_we1 = v58_we1_local;
assign v63_fu_555_p3 = ((cmp7_fu_532_p2[0:0] == 1'b1) ? v57_q1 : v58_q1);
assign v64_fu_694_p1 = reg_360;
assign v65_fu_690_p1 = v115_load_reg_1035;
assign v70_fu_608_p3 = ((cmp7_fu_532_p2[0:0] == 1'b1) ? v57_q0 : v58_q0);
assign v71_fu_766_p1 = reg_364;
assign v77_fu_808_p1 = reg_360;
assign v82_fu_683_p3 = ((cmp7_reg_981[0:0] == 1'b1) ? v57_q0 : v58_q0);
assign v83_fu_813_p1 = v114_load_3_reg_1090;
assign v89_fu_817_p1 = reg_364;
assign v94_fu_845_p3 = ((cmp7_reg_981_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1121 : v58_q0);
assign v95_fu_832_p1 = v114_load_5_reg_1141;
assign zext_ln102_fu_550_p1 = add_ln102_fu_544_p2;
assign zext_ln107_fu_473_p1 = or_ln_fu_465_p3;
assign zext_ln110_fu_576_p1 = add_ln110_fu_570_p2;
assign zext_ln114_fu_589_p1 = or_ln1_fu_581_p4;
assign zext_ln117_fu_631_p1 = add_ln117_fu_626_p2;
assign zext_ln121_fu_602_p1 = or_ln2_fu_595_p3;
assign zext_ln124_fu_648_p1 = add_ln124_fu_643_p2;
assign zext_ln128_fu_661_p1 = or_ln3_fu_653_p4;
assign zext_ln131_fu_714_p1 = add_ln131_fu_709_p2;
assign zext_ln135_fu_677_p1 = or_ln4_fu_667_p5;
assign zext_ln138_fu_734_p1 = add_ln138_fu_729_p2;
assign zext_ln142_fu_747_p1 = or_ln5_fu_739_p4;
assign zext_ln145_fu_786_p1 = add_ln145_fu_781_p2;
assign zext_ln149_fu_760_p1 = or_ln6_fu_753_p3;
assign zext_ln152_fu_803_p1 = add_ln152_fu_798_p2;
assign zext_ln97_fu_525_p1 = select_ln97_1_reg_898;
assign zext_ln98_fu_449_p1 = select_ln97_fu_429_p3;
always @ (posedge ap_clk) begin
    v58_addr_1_reg_925[0] <= 1'b1;
    v58_addr_1_reg_925_pp0_iter1_reg[0] <= 1'b1;
    select_ln97_1_cast_reg_971[11:7] <= 5'b00000;
    v58_addr_2_reg_1015[1] <= 1'b1;
    v58_addr_2_reg_1015_pp0_iter1_reg[1] <= 1'b1;
    v58_addr_2_reg_1015_pp0_iter2_reg[1] <= 1'b1;
    v58_addr_3_reg_1025[1:0] <= 2'b11;
    v58_addr_3_reg_1025_pp0_iter1_reg[1:0] <= 2'b11;
    v58_addr_3_reg_1025_pp0_iter2_reg[1:0] <= 2'b11;
    v58_addr_4_reg_1055[2] <= 1'b1;
    v58_addr_4_reg_1055_pp0_iter1_reg[2] <= 1'b1;
    v58_addr_4_reg_1055_pp0_iter2_reg[2] <= 1'b1;
    v58_addr_5_reg_1065[0] <= 1'b1;
    v58_addr_5_reg_1065[2] <= 1'b1;
    v58_addr_5_reg_1065_pp0_iter1_reg[0] <= 1'b1;
    v58_addr_5_reg_1065_pp0_iter1_reg[2] <= 1'b1;
    v58_addr_5_reg_1065_pp0_iter2_reg[0] <= 1'b1;
    v58_addr_5_reg_1065_pp0_iter2_reg[2] <= 1'b1;
    v58_addr_6_reg_1110[2:1] <= 2'b11;
    v58_addr_6_reg_1110_pp0_iter1_reg[2:1] <= 2'b11;
    v58_addr_6_reg_1110_pp0_iter2_reg[2:1] <= 2'b11;
    v58_addr_7_reg_1126[2:0] <= 3'b111;
    v58_addr_7_reg_1126_pp0_iter1_reg[2:0] <= 3'b111;
    v58_addr_7_reg_1126_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 