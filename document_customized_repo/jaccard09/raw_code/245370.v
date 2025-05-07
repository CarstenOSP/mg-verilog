module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,grp_fu_121_p_din0,grp_fu_121_p_din1,grp_fu_121_p_opcode,grp_fu_121_p_dout0,grp_fu_121_p_ce,grp_fu_125_p_din0,grp_fu_125_p_din1,grp_fu_125_p_dout0,grp_fu_125_p_ce); 
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
output  [5:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [9:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [9:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [9:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [9:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [9:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [9:0] v113_2_address1;
output   v113_2_ce1;
input  [31:0] v113_2_q1;
output  [9:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [9:0] v113_3_address1;
output   v113_3_ce1;
input  [31:0] v113_3_q1;
output  [5:0] v116_address0;
output   v116_ce0;
output   v116_we0;
output  [31:0] v116_d0;
input  [31:0] v116_q0;
output  [5:0] v116_address1;
output   v116_ce1;
output   v116_we1;
output  [31:0] v116_d1;
input  [31:0] v116_q1;
output  [31:0] grp_fu_121_p_din0;
output  [31:0] grp_fu_121_p_din1;
output  [1:0] grp_fu_121_p_opcode;
input  [31:0] grp_fu_121_p_dout0;
output   grp_fu_121_p_ce;
output  [31:0] grp_fu_125_p_din0;
output  [31:0] grp_fu_125_p_din1;
input  [31:0] grp_fu_125_p_dout0;
output   grp_fu_125_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_730;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_298;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_303;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] reg_307;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_329_p2;
wire   [0:0] tmp_12_fu_344_p3;
reg   [0:0] tmp_12_reg_734;
wire   [6:0] select_ln26_fu_352_p3;
reg   [6:0] select_ln26_reg_739;
reg   [3:0] lshr_ln1_reg_745;
reg   [5:0] v116_addr_reg_752;
reg   [5:0] v116_addr_reg_752_pp0_iter1_reg;
wire   [0:0] trunc_ln46_fu_398_p1;
reg   [0:0] trunc_ln46_reg_757;
reg   [0:0] trunc_ln46_reg_757_pp0_iter1_reg;
reg   [2:0] tmp_33_reg_763;
reg   [2:0] tmp_33_reg_763_pp0_iter1_reg;
wire   [1:0] trunc_ln60_fu_412_p1;
reg   [1:0] trunc_ln60_reg_772;
reg   [0:0] tmp_13_reg_777;
reg   [0:0] tmp_13_reg_777_pp0_iter1_reg;
reg   [5:0] v116_addr_1_reg_782;
reg   [5:0] v116_addr_1_reg_782_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v116_load_reg_813;
reg   [31:0] v116_load_1_reg_838;
reg   [5:0] v116_addr_2_reg_843;
reg   [5:0] v116_addr_2_reg_843_pp0_iter1_reg;
reg   [5:0] v116_addr_2_reg_843_pp0_iter2_reg;
reg   [5:0] v116_addr_3_reg_848;
reg   [5:0] v116_addr_3_reg_848_pp0_iter1_reg;
reg   [5:0] v116_addr_3_reg_848_pp0_iter2_reg;
wire   [31:0] v3_fu_524_p3;
reg   [31:0] v3_reg_853;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v113_0_load_reg_858;
reg   [31:0] v113_1_load_reg_863;
reg   [31:0] v113_2_load_reg_868;
reg   [31:0] v113_3_load_reg_873;
reg   [31:0] v113_0_load_1_reg_878;
reg   [31:0] v113_1_load_1_reg_883;
reg   [31:0] v113_2_load_1_reg_888;
reg   [31:0] v113_3_load_1_reg_893;
reg   [31:0] v116_load_2_reg_898;
reg   [31:0] v116_load_3_reg_903;
reg   [5:0] v116_addr_4_reg_908;
reg   [5:0] v116_addr_4_reg_908_pp0_iter1_reg;
reg   [5:0] v116_addr_4_reg_908_pp0_iter2_reg;
wire   [31:0] v10_fu_550_p1;
reg   [31:0] v116_load_4_reg_918;
wire   [31:0] v16_fu_554_p1;
wire   [31:0] v22_fu_558_p1;
reg   [31:0] v11_reg_933;
wire   [31:0] v28_fu_562_p1;
wire   [31:0] v9_fu_566_p1;
reg   [31:0] v17_reg_948;
wire   [31:0] v34_fu_570_p1;
reg   [31:0] v23_reg_958;
wire   [31:0] v40_fu_584_p1;
wire   [31:0] v15_fu_588_p1;
reg   [31:0] v29_reg_973;
wire   [31:0] v46_fu_592_p1;
wire   [31:0] v21_fu_596_p1;
reg   [31:0] v35_reg_988;
wire   [31:0] v52_fu_615_p1;
wire   [31:0] v27_1_fu_619_p1;
reg   [5:0] v116_addr_5_reg_1003;
reg   [5:0] v116_addr_5_reg_1003_pp0_iter2_reg;
reg   [31:0] v41_reg_1008;
wire   [31:0] v33_fu_648_p1;
reg   [5:0] v116_addr_6_reg_1018;
reg   [5:0] v116_addr_6_reg_1018_pp0_iter2_reg;
reg   [5:0] v116_addr_7_reg_1024;
reg   [5:0] v116_addr_7_reg_1024_pp0_iter2_reg;
reg   [31:0] v47_reg_1029;
wire   [31:0] v39_fu_652_p1;
reg   [31:0] v116_load_7_reg_1039;
reg   [31:0] v53_reg_1044;
wire   [31:0] v45_fu_657_p1;
wire   [31:0] v51_fu_662_p1;
reg   [31:0] v36_reg_1059;
reg   [31:0] v42_reg_1064;
reg   [31:0] v48_reg_1069;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln28_fu_360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln39_fu_393_p1;
wire   [63:0] zext_ln27_fu_449_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_461_p1;
wire   [63:0] zext_ln61_fu_503_p1;
wire   [63:0] zext_ln46_fu_477_p1;
wire   [63:0] zext_ln53_fu_489_p1;
wire   [63:0] zext_ln60_fu_540_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln67_fu_610_p1;
wire   [63:0] zext_ln74_fu_631_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln82_fu_643_p1;
reg   [31:0] v3_1_fu_88;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_574_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_96;
wire   [6:0] select_ln27_fu_438_p3;
reg   [9:0] indvar_flatten_fu_100;
wire   [9:0] add_ln27_1_fu_335_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_666_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln43_fu_671_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln50_fu_676_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln57_fu_681_p1;
wire   [31:0] bitcast_ln64_fu_686_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln71_fu_690_p1;
wire   [31:0] bitcast_ln78_fu_694_p1;
wire   [31:0] bitcast_ln86_fu_698_p1;
reg    v124_ce0_local;
reg    v113_0_ce1_local;
reg    v113_0_ce0_local;
reg    v113_1_ce1_local;
reg    v113_1_ce0_local;
reg    v113_2_ce1_local;
reg    v113_2_ce0_local;
reg    v113_3_ce1_local;
reg    v113_3_ce0_local;
reg   [31:0] grp_fu_290_p0;
reg   [31:0] grp_fu_290_p1;
reg   [31:0] grp_fu_294_p0;
wire   [4:0] tmp_s_fu_375_p4;
wire   [5:0] or_ln_fu_385_p3;
wire   [6:0] add_ln27_fu_432_p2;
wire   [5:0] trunc_ln27_fu_445_p1;
wire   [9:0] tmp_fu_454_p3;
wire   [5:0] or_ln4_fu_469_p4;
wire   [5:0] or_ln5_fu_482_p3;
wire   [9:0] tmp_34_fu_494_p4;
wire   [0:0] icmp_ln31_fu_519_p2;
wire   [5:0] or_ln6_fu_532_p4;
wire   [5:0] or_ln7_fu_600_p5;
wire   [5:0] or_ln8_fu_623_p4;
wire   [5:0] or_ln9_fu_636_p3;
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
#0 v3_1_fu_88 = 32'd0;
#0 v49_fu_92 = 7'd0;
#0 v4_fu_96 = 7'd0;
#0 indvar_flatten_fu_100 = 10'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_329_p2 == 1'd0))) begin
            indvar_flatten_fu_100 <= add_ln27_1_fu_335_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_100 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_298 <= v116_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_298 <= v116_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_92 <= 7'd0;
    end else if (((icmp_ln27_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_92 <= add_ln28_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_96 <= 7'd0;
    end else if (((icmp_ln27_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_96 <= select_ln27_fu_438_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_730 <= icmp_ln27_fu_329_p2;
        lshr_ln1_reg_745 <= {{select_ln26_fu_352_p3[5:2]}};
        select_ln26_reg_739 <= select_ln26_fu_352_p3;
        tmp_12_reg_734 <= ap_sig_allocacmp_v49_load[32'd6];
        tmp_13_reg_777 <= select_ln26_fu_352_p3[32'd1];
        tmp_13_reg_777_pp0_iter1_reg <= tmp_13_reg_777;
        tmp_33_reg_763 <= {{select_ln26_fu_352_p3[5:3]}};
        tmp_33_reg_763_pp0_iter1_reg <= tmp_33_reg_763;
        trunc_ln46_reg_757 <= trunc_ln46_fu_398_p1;
        trunc_ln46_reg_757_pp0_iter1_reg <= trunc_ln46_reg_757;
        trunc_ln60_reg_772 <= trunc_ln60_fu_412_p1;
        v116_addr_1_reg_782[5 : 1] <= zext_ln39_fu_393_p1[5 : 1];
        v116_addr_1_reg_782_pp0_iter1_reg[5 : 1] <= v116_addr_1_reg_782[5 : 1];
        v116_addr_reg_752 <= zext_ln28_fu_360_p1;
        v116_addr_reg_752_pp0_iter1_reg <= v116_addr_reg_752;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_303 <= grp_fu_121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_307 <= grp_fu_121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_1_reg_878 <= v113_0_q0;
        v113_0_load_reg_858 <= v113_0_q1;
        v113_1_load_1_reg_883 <= v113_1_q0;
        v113_1_load_reg_863 <= v113_1_q1;
        v113_2_load_1_reg_888 <= v113_2_q0;
        v113_2_load_reg_868 <= v113_2_q1;
        v113_3_load_1_reg_893 <= v113_3_q0;
        v113_3_load_reg_873 <= v113_3_q1;
        v116_load_2_reg_898 <= v116_q1;
        v116_load_3_reg_903 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_addr_2_reg_843[0] <= zext_ln46_fu_477_p1[0];
v116_addr_2_reg_843[5 : 2] <= zext_ln46_fu_477_p1[5 : 2];
        v116_addr_2_reg_843_pp0_iter1_reg[0] <= v116_addr_2_reg_843[0];
v116_addr_2_reg_843_pp0_iter1_reg[5 : 2] <= v116_addr_2_reg_843[5 : 2];
        v116_addr_2_reg_843_pp0_iter2_reg[0] <= v116_addr_2_reg_843_pp0_iter1_reg[0];
v116_addr_2_reg_843_pp0_iter2_reg[5 : 2] <= v116_addr_2_reg_843_pp0_iter1_reg[5 : 2];
        v116_addr_3_reg_848[5 : 2] <= zext_ln53_fu_489_p1[5 : 2];
        v116_addr_3_reg_848_pp0_iter1_reg[5 : 2] <= v116_addr_3_reg_848[5 : 2];
        v116_addr_3_reg_848_pp0_iter2_reg[5 : 2] <= v116_addr_3_reg_848_pp0_iter1_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_addr_4_reg_908[1 : 0] <= zext_ln60_fu_540_p1[1 : 0];
v116_addr_4_reg_908[5 : 3] <= zext_ln60_fu_540_p1[5 : 3];
        v116_addr_4_reg_908_pp0_iter1_reg[1 : 0] <= v116_addr_4_reg_908[1 : 0];
v116_addr_4_reg_908_pp0_iter1_reg[5 : 3] <= v116_addr_4_reg_908[5 : 3];
        v116_addr_4_reg_908_pp0_iter2_reg[1 : 0] <= v116_addr_4_reg_908_pp0_iter1_reg[1 : 0];
v116_addr_4_reg_908_pp0_iter2_reg[5 : 3] <= v116_addr_4_reg_908_pp0_iter1_reg[5 : 3];
        v116_addr_5_reg_1003[1] <= zext_ln67_fu_610_p1[1];
v116_addr_5_reg_1003[5 : 3] <= zext_ln67_fu_610_p1[5 : 3];
        v116_addr_5_reg_1003_pp0_iter2_reg[1] <= v116_addr_5_reg_1003[1];
v116_addr_5_reg_1003_pp0_iter2_reg[5 : 3] <= v116_addr_5_reg_1003[5 : 3];
        v3_reg_853 <= v3_fu_524_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_6_reg_1018[0] <= zext_ln74_fu_631_p1[0];
v116_addr_6_reg_1018[5 : 3] <= zext_ln74_fu_631_p1[5 : 3];
        v116_addr_6_reg_1018_pp0_iter2_reg[0] <= v116_addr_6_reg_1018[0];
v116_addr_6_reg_1018_pp0_iter2_reg[5 : 3] <= v116_addr_6_reg_1018[5 : 3];
        v116_addr_7_reg_1024[5 : 3] <= zext_ln82_fu_643_p1[5 : 3];
        v116_addr_7_reg_1024_pp0_iter2_reg[5 : 3] <= v116_addr_7_reg_1024[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_1_reg_838 <= v116_q0;
        v116_load_reg_813 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_load_4_reg_918 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_7_reg_1039 <= v116_q0;
        v47_reg_1029 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_933 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v17_reg_948 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_reg_958 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_reg_973 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v35_reg_988 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v36_reg_1059 <= grp_fu_121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_730 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_88 <= v3_fu_524_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v41_reg_1008 <= grp_fu_125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v42_reg_1064 <= grp_fu_121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v48_reg_1069 <= grp_fu_121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v53_reg_1044 <= grp_fu_125_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_730 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_290_p0 = v51_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_290_p0 = v45_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_290_p0 = v39_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_290_p0 = v33_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_290_p0 = v27_1_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p0 = v21_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p0 = v15_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_290_p0 = v9_fu_566_p1;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_290_p1 = v53_reg_1044;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_290_p1 = v47_reg_1029;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_290_p1 = v41_reg_1008;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_290_p1 = v35_reg_988;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_290_p1 = v29_reg_973;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_290_p1 = v23_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_290_p1 = v17_reg_948;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_290_p1 = v11_reg_933;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_294_p0 = v52_fu_615_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_294_p0 = v46_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_294_p0 = v40_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_294_p0 = v34_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_294_p0 = v28_fu_562_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_294_p0 = v22_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_294_p0 = v16_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_294_p0 = v10_fu_550_p1;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce1_local = 1'b1;
    end else begin
        v113_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce1_local = 1'b1;
    end else begin
        v113_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_7_reg_1024_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_6_reg_1018_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_5_reg_1003_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_3_reg_848_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_610_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_393_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_4_reg_908_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_2_reg_843_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_1_reg_782_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_reg_752_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_540_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_477_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_360_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_690_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln57_fu_681_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln64_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln50_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln43_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln36_fu_666_p1;
    end else begin
        v116_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we0_local = 1'b1;
    end else begin
        v116_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we1_local = 1'b1;
    end else begin
        v116_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
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
assign add_ln27_1_fu_335_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_432_p2 = (v4_fu_96 + 7'd1);
assign add_ln28_fu_574_p2 = (select_ln26_reg_739 + 7'd8);
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
assign bitcast_ln36_fu_666_p1 = reg_303;
assign bitcast_ln43_fu_671_p1 = reg_303;
assign bitcast_ln50_fu_676_p1 = reg_303;
assign bitcast_ln57_fu_681_p1 = reg_307;
assign bitcast_ln64_fu_686_p1 = v36_reg_1059;
assign bitcast_ln71_fu_690_p1 = v42_reg_1064;
assign bitcast_ln78_fu_694_p1 = v48_reg_1069;
assign bitcast_ln86_fu_698_p1 = reg_307;
assign grp_fu_121_p_ce = 1'b1;
assign grp_fu_121_p_din0 = grp_fu_290_p0;
assign grp_fu_121_p_din1 = grp_fu_290_p1;
assign grp_fu_121_p_opcode = 2'd0;
assign grp_fu_125_p_ce = 1'b1;
assign grp_fu_125_p_din0 = grp_fu_294_p0;
assign grp_fu_125_p_din1 = v3_reg_853;
assign icmp_ln27_fu_329_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_519_p2 = ((select_ln26_reg_739 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln4_fu_469_p4 = {{{lshr_ln1_reg_745}, {1'd1}}, {trunc_ln46_reg_757}};
assign or_ln5_fu_482_p3 = {{lshr_ln1_reg_745}, {2'd3}};
assign or_ln6_fu_532_p4 = {{{tmp_33_reg_763}, {1'd1}}, {trunc_ln60_reg_772}};
assign or_ln7_fu_600_p5 = {{{{tmp_33_reg_763_pp0_iter1_reg}, {1'd1}}, {tmp_13_reg_777_pp0_iter1_reg}}, {1'd1}};
assign or_ln8_fu_623_p4 = {{{tmp_33_reg_763_pp0_iter1_reg}, {2'd3}}, {trunc_ln46_reg_757_pp0_iter1_reg}};
assign or_ln9_fu_636_p3 = {{tmp_33_reg_763_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_385_p3 = {{tmp_s_fu_375_p4}, {1'd1}};
assign select_ln26_fu_352_p3 = ((tmp_12_fu_344_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_438_p3 = ((tmp_12_reg_734[0:0] == 1'b1) ? add_ln27_fu_432_p2 : v4_fu_96);
assign tmp_12_fu_344_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_34_fu_494_p4 = {{{trunc_ln27_fu_445_p1}, {tmp_33_reg_763}}, {1'd1}};
assign tmp_fu_454_p3 = {{trunc_ln27_fu_445_p1}, {lshr_ln1_reg_745}};
assign tmp_s_fu_375_p4 = {{select_ln26_fu_352_p3[5:1]}};
assign trunc_ln27_fu_445_p1 = select_ln27_fu_438_p3[5:0];
assign trunc_ln46_fu_398_p1 = select_ln26_fu_352_p3[0:0];
assign trunc_ln60_fu_412_p1 = select_ln26_fu_352_p3[1:0];
assign v10_fu_550_p1 = v113_0_load_reg_858;
assign v113_0_address0 = zext_ln61_fu_503_p1;
assign v113_0_address1 = zext_ln33_fu_461_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = zext_ln61_fu_503_p1;
assign v113_1_address1 = zext_ln33_fu_461_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = zext_ln61_fu_503_p1;
assign v113_2_address1 = zext_ln33_fu_461_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = zext_ln61_fu_503_p1;
assign v113_3_address1 = zext_ln33_fu_461_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v124_address0 = zext_ln27_fu_449_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_588_p1 = v116_load_1_reg_838;
assign v16_fu_554_p1 = v113_1_load_reg_863;
assign v21_fu_596_p1 = v116_load_2_reg_898;
assign v22_fu_558_p1 = v113_2_load_reg_868;
assign v27_1_fu_619_p1 = v116_load_3_reg_903;
assign v28_fu_562_p1 = v113_3_load_reg_873;
assign v33_fu_648_p1 = v116_load_4_reg_918;
assign v34_fu_570_p1 = v113_0_load_1_reg_878;
assign v39_fu_652_p1 = reg_298;
assign v3_fu_524_p3 = ((icmp_ln31_fu_519_p2[0:0] == 1'b1) ? v124_q0 : v3_1_fu_88);
assign v40_fu_584_p1 = v113_1_load_1_reg_883;
assign v45_fu_657_p1 = reg_298;
assign v46_fu_592_p1 = v113_2_load_1_reg_888;
assign v51_fu_662_p1 = v116_load_7_reg_1039;
assign v52_fu_615_p1 = v113_3_load_1_reg_893;
assign v9_fu_566_p1 = v116_load_reg_813;
assign zext_ln27_fu_449_p1 = select_ln27_fu_438_p3;
assign zext_ln28_fu_360_p1 = select_ln26_fu_352_p3;
assign zext_ln33_fu_461_p1 = tmp_fu_454_p3;
assign zext_ln39_fu_393_p1 = or_ln_fu_385_p3;
assign zext_ln46_fu_477_p1 = or_ln4_fu_469_p4;
assign zext_ln53_fu_489_p1 = or_ln5_fu_482_p3;
assign zext_ln60_fu_540_p1 = or_ln6_fu_532_p4;
assign zext_ln61_fu_503_p1 = tmp_34_fu_494_p4;
assign zext_ln67_fu_610_p1 = or_ln7_fu_600_p5;
assign zext_ln74_fu_631_p1 = or_ln8_fu_623_p4;
assign zext_ln82_fu_643_p1 = or_ln9_fu_636_p3;
always @ (posedge ap_clk) begin
    v116_addr_1_reg_782[0] <= 1'b1;
    v116_addr_1_reg_782_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_2_reg_843[1] <= 1'b1;
    v116_addr_2_reg_843_pp0_iter1_reg[1] <= 1'b1;
    v116_addr_2_reg_843_pp0_iter2_reg[1] <= 1'b1;
    v116_addr_3_reg_848[1:0] <= 2'b11;
    v116_addr_3_reg_848_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_3_reg_848_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_4_reg_908[2] <= 1'b1;
    v116_addr_4_reg_908_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_4_reg_908_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_5_reg_1003[0] <= 1'b1;
    v116_addr_5_reg_1003[2] <= 1'b1;
    v116_addr_5_reg_1003_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_5_reg_1003_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_6_reg_1018[2:1] <= 2'b11;
    v116_addr_6_reg_1018_pp0_iter2_reg[2:1] <= 2'b11;
    v116_addr_7_reg_1024[2:0] <= 3'b111;
    v116_addr_7_reg_1024_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 