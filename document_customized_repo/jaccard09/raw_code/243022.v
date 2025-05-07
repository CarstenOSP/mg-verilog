module atax_atax_node0_Pipeline_label_17 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v7_4_reload,zext_ln33_5,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v6_5,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,tmp_105,empty,v7_5_out,v7_5_out_ap_vld,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_dout0,grp_fu_696_p_ce); 
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
input  [31:0] v7_4_reload;
input  [11:0] zext_ln33_5;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
input  [31:0] v6_5;
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
input  [2:0] tmp_105;
input  [0:0] empty;
output  [31:0] v7_5_out;
output   v7_5_out_ap_vld;
output  [31:0] grp_fu_692_p_din0;
output  [31:0] grp_fu_692_p_din1;
output  [1:0] grp_fu_692_p_opcode;
input  [31:0] grp_fu_692_p_dout0;
output   grp_fu_692_p_ce;
output  [31:0] grp_fu_696_p_din0;
output  [31:0] grp_fu_696_p_din1;
input  [31:0] grp_fu_696_p_dout0;
output   grp_fu_696_p_ce;
reg ap_idle;
reg v7_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_7_reg_804;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_297;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_301;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_306;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v5_reg_795;
reg   [0:0] tmp_7_reg_804_pp0_iter1_reg;
reg   [5:0] v116_addr_reg_813;
reg   [5:0] v116_addr_reg_813_pp0_iter1_reg;
reg   [5:0] v116_addr_15_reg_823;
reg   [5:0] v116_addr_15_reg_823_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_395_p2;
reg   [0:0] icmp_ln31_reg_829;
reg   [31:0] v116_load_reg_834;
reg   [31:0] v116_load_15_reg_839;
reg   [5:0] v116_addr_16_reg_849;
reg   [5:0] v116_addr_16_reg_849_pp0_iter1_reg;
reg   [5:0] v116_addr_17_reg_859;
reg   [5:0] v116_addr_17_reg_859_pp0_iter1_reg;
reg   [5:0] v116_addr_17_reg_859_pp0_iter2_reg;
wire   [31:0] v8_fu_476_p3;
reg   [31:0] v8_reg_865;
wire   [31:0] v10_fu_483_p1;
reg   [31:0] v116_load_16_reg_875;
reg   [31:0] v116_load_17_reg_880;
reg   [31:0] v113_load_17_reg_885;
wire   [2:0] tmp_34_fu_488_p4;
reg   [2:0] tmp_34_reg_890;
reg   [2:0] tmp_34_reg_890_pp0_iter1_reg;
reg   [5:0] v116_addr_18_reg_903;
reg   [5:0] v116_addr_18_reg_903_pp0_iter1_reg;
reg   [5:0] v116_addr_18_reg_903_pp0_iter2_reg;
reg   [5:0] v116_addr_19_reg_914;
reg   [5:0] v116_addr_19_reg_914_pp0_iter1_reg;
reg   [5:0] v116_addr_19_reg_914_pp0_iter2_reg;
wire   [31:0] v16_fu_581_p1;
reg   [31:0] v116_load_18_reg_924;
reg   [31:0] v116_load_19_reg_929;
reg   [31:0] v113_load_19_reg_934;
reg   [5:0] v116_addr_20_reg_944;
reg   [5:0] v116_addr_20_reg_944_pp0_iter1_reg;
reg   [5:0] v116_addr_20_reg_944_pp0_iter2_reg;
wire   [31:0] v22_fu_634_p1;
reg   [31:0] v116_load_20_reg_960;
reg   [31:0] v113_load_21_reg_965;
reg   [31:0] v11_reg_970;
wire   [31:0] v28_fu_639_p1;
wire   [31:0] v9_fu_643_p1;
reg   [31:0] v17_reg_985;
wire   [31:0] v34_fu_647_p1;
wire   [31:0] v15_fu_652_p1;
reg   [31:0] v23_reg_1000;
wire   [31:0] v40_fu_656_p1;
wire   [31:0] v21_fu_670_p1;
reg   [31:0] v29_reg_1015;
wire   [31:0] v46_fu_674_p1;
wire   [31:0] v27_fu_679_p1;
reg   [31:0] v35_reg_1030;
wire   [31:0] v52_fu_683_p1;
wire   [31:0] v33_fu_687_p1;
reg   [31:0] v41_reg_1045;
wire   [31:0] v39_fu_691_p1;
reg   [31:0] v47_reg_1055;
reg   [5:0] v116_addr_21_reg_1060;
reg   [5:0] v116_addr_21_reg_1060_pp0_iter2_reg;
wire   [31:0] v45_fu_707_p1;
reg   [31:0] v116_load_21_reg_1070;
reg   [31:0] v53_reg_1075;
wire   [31:0] v51_fu_716_p1;
reg   [31:0] v36_reg_1085;
reg   [31:0] v42_reg_1090;
reg   [31:0] v48_reg_1095;
reg   [31:0] v54_reg_1100;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln33_2_fu_346_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_331_p1;
wire   [63:0] zext_ln40_fu_390_p1;
wire   [63:0] zext_ln39_fu_369_p1;
wire   [63:0] zext_ln47_fu_436_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln46_fu_417_p1;
wire   [63:0] zext_ln54_fu_468_p1;
wire   [63:0] zext_ln53_fu_449_p1;
wire   [63:0] zext_ln61_fu_524_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln60_fu_505_p1;
wire   [63:0] zext_ln68_fu_571_p1;
wire   [63:0] zext_ln67_fu_548_p1;
wire   [63:0] zext_ln75_fu_611_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln74_fu_593_p1;
wire   [63:0] zext_ln83_fu_629_p1;
wire   [63:0] zext_ln82_fu_702_p1;
reg   [31:0] v3_fu_98;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7;
reg   [6:0] v49_fu_102;
wire   [6:0] add_ln28_fu_660_p2;
reg   [6:0] ap_sig_allocacmp_v5;
wire    ap_block_pp0_stage7_01001;
reg    v116_ce1_local;
reg   [5:0] v116_address1_local;
reg    v116_ce0_local;
reg   [5:0] v116_address0_local;
reg    v116_we1_local;
reg   [31:0] v116_d1_local;
wire   [31:0] bitcast_ln36_fu_711_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln43_fu_720_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln50_fu_725_p1;
wire   [31:0] bitcast_ln57_fu_730_p1;
wire    ap_block_pp0_stage4;
reg    v116_we0_local;
reg   [31:0] v116_d0_local;
wire   [31:0] bitcast_ln64_fu_735_p1;
wire   [31:0] bitcast_ln71_fu_739_p1;
wire   [31:0] bitcast_ln78_fu_743_p1;
wire   [31:0] bitcast_ln86_fu_747_p1;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg   [31:0] grp_fu_289_p0;
reg   [31:0] grp_fu_289_p1;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
wire   [11:0] zext_ln33_fu_336_p1;
wire   [11:0] add_ln33_fu_340_p2;
wire   [4:0] tmp_s_fu_351_p4;
wire   [5:0] or_ln39_5_fu_361_p3;
wire   [11:0] tmp_30_fu_374_p7;
wire   [3:0] tmp_31_fu_400_p4;
wire   [5:0] or_ln46_5_fu_409_p3;
wire   [11:0] tmp_32_fu_422_p7;
wire   [5:0] or_ln53_5_fu_441_p3;
wire   [11:0] tmp_33_fu_454_p7;
wire   [5:0] or_ln60_5_fu_497_p3;
wire   [11:0] tmp_35_fu_510_p7;
wire   [0:0] tmp_8_fu_529_p3;
wire   [5:0] or_ln67_5_fu_536_p5;
wire   [11:0] tmp_36_fu_553_p9;
wire   [5:0] or_ln74_5_fu_586_p3;
wire   [11:0] tmp_37_fu_598_p7;
wire   [11:0] tmp_38_fu_616_p7;
wire   [5:0] or_ln82_5_fu_695_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v3_fu_98 = 32'd0;
#0 v49_fu_102 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
            reg_301 <= v113_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_301 <= v113_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_fu_98 <= v7_4_reload;
    end else if (((tmp_7_reg_804 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_98 <= v8_fu_476_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_102 <= 7'd0;
    end else if (((tmp_7_reg_804 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_102 <= add_ln28_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln31_reg_829 <= icmp_ln31_fu_395_p2;
        v116_addr_16_reg_849[5 : 2] <= zext_ln46_fu_417_p1[5 : 2];
        v116_addr_16_reg_849_pp0_iter1_reg[5 : 2] <= v116_addr_16_reg_849[5 : 2];
        v116_addr_17_reg_859[5 : 2] <= zext_ln53_fu_449_p1[5 : 2];
        v116_addr_17_reg_859_pp0_iter1_reg[5 : 2] <= v116_addr_17_reg_859[5 : 2];
        v116_addr_17_reg_859_pp0_iter2_reg[5 : 2] <= v116_addr_17_reg_859_pp0_iter1_reg[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_297 <= v113_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_306 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_34_reg_890 <= {{v5_reg_795[5:3]}};
        tmp_34_reg_890_pp0_iter1_reg <= tmp_34_reg_890;
        v116_addr_18_reg_903[5 : 3] <= zext_ln60_fu_505_p1[5 : 3];
        v116_addr_18_reg_903_pp0_iter1_reg[5 : 3] <= v116_addr_18_reg_903[5 : 3];
        v116_addr_18_reg_903_pp0_iter2_reg[5 : 3] <= v116_addr_18_reg_903_pp0_iter1_reg[5 : 3];
        v116_addr_19_reg_914[1] <= zext_ln67_fu_548_p1[1];
v116_addr_19_reg_914[5 : 3] <= zext_ln67_fu_548_p1[5 : 3];
        v116_addr_19_reg_914_pp0_iter1_reg[1] <= v116_addr_19_reg_914[1];
v116_addr_19_reg_914_pp0_iter1_reg[5 : 3] <= v116_addr_19_reg_914[5 : 3];
        v116_addr_19_reg_914_pp0_iter2_reg[1] <= v116_addr_19_reg_914_pp0_iter1_reg[1];
v116_addr_19_reg_914_pp0_iter2_reg[5 : 3] <= v116_addr_19_reg_914_pp0_iter1_reg[5 : 3];
        v8_reg_865 <= v8_fu_476_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_7_reg_804 <= ap_sig_allocacmp_v5[32'd6];
        tmp_7_reg_804_pp0_iter1_reg <= tmp_7_reg_804;
        v116_addr_15_reg_823[5 : 1] <= zext_ln39_fu_369_p1[5 : 1];
        v116_addr_15_reg_823_pp0_iter1_reg[5 : 1] <= v116_addr_15_reg_823[5 : 1];
        v116_addr_reg_813 <= zext_ln28_fu_331_p1;
        v116_addr_reg_813_pp0_iter1_reg <= v116_addr_reg_813;
        v5_reg_795 <= ap_sig_allocacmp_v5;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_load_17_reg_885 <= v113_q0;
        v116_load_16_reg_875 <= v116_q1;
        v116_load_17_reg_880 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_load_19_reg_934 <= v113_q0;
        v116_load_18_reg_924 <= v116_q1;
        v116_load_19_reg_929 <= v116_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_load_21_reg_965 <= v113_q0;
        v116_load_20_reg_960 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_addr_20_reg_944[5 : 3] <= zext_ln74_fu_593_p1[5 : 3];
        v116_addr_20_reg_944_pp0_iter1_reg[5 : 3] <= v116_addr_20_reg_944[5 : 3];
        v116_addr_20_reg_944_pp0_iter2_reg[5 : 3] <= v116_addr_20_reg_944_pp0_iter1_reg[5 : 3];
        v116_addr_21_reg_1060[5 : 3] <= zext_ln82_fu_702_p1[5 : 3];
        v116_addr_21_reg_1060_pp0_iter2_reg[5 : 3] <= v116_addr_21_reg_1060[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_load_15_reg_839 <= v116_q0;
        v116_load_reg_834 <= v116_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_load_21_reg_1070 <= v116_q0;
        v53_reg_1075 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v11_reg_970 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v17_reg_985 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_1000 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_1015 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v35_reg_1030 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_1085 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_1045 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_reg_1090 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v47_reg_1055 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v48_reg_1095 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v54_reg_1100 <= grp_fu_692_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_7_reg_804 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v5 = 7'd0;
    end else begin
        ap_sig_allocacmp_v5 = v49_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p0 = v51_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p0 = v45_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p0 = v39_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p0 = v33_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p0 = v27_fu_679_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p0 = v21_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_289_p0 = v15_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_289_p0 = v9_fu_643_p1;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p1 = v53_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p1 = v47_reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p1 = v41_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p1 = v35_reg_1030;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p1 = v29_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p1 = v23_reg_1000;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_289_p1 = v17_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_289_p1 = v11_reg_970;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_293_p0 = v52_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p0 = v46_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_293_p0 = v40_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_293_p0 = v34_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_293_p0 = v28_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_293_p0 = v22_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p0 = v16_fu_581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p0 = v10_fu_483_p1;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_293_p1 = v8_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_293_p1 = v8_fu_476_p3;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v113_address0_local = zext_ln83_fu_629_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address0_local = zext_ln68_fu_571_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address0_local = zext_ln54_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address0_local = zext_ln40_fu_390_p1;
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
            v113_address1_local = zext_ln75_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_address1_local = zext_ln61_fu_524_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_address1_local = zext_ln47_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v113_address1_local = zext_ln33_2_fu_346_p1;
        end else begin
            v113_address1_local = 'bx;
        end
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address0_local = v116_addr_21_reg_1060_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address0_local = v116_addr_20_reg_944_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address0_local = v116_addr_19_reg_914_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address0_local = v116_addr_18_reg_903_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address0_local = zext_ln82_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address0_local = zext_ln67_fu_548_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address0_local = zext_ln53_fu_449_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address0_local = zext_ln39_fu_369_p1;
    end else begin
        v116_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_address1_local = v116_addr_17_reg_859_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_address1_local = v116_addr_16_reg_849_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_address1_local = v116_addr_15_reg_823_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_address1_local = v116_addr_reg_813_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_address1_local = zext_ln74_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_address1_local = zext_ln60_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_address1_local = zext_ln46_fu_417_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_address1_local = zext_ln28_fu_331_p1;
    end else begin
        v116_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce0_local = 1'b1;
    end else begin
        v116_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_ce1_local = 1'b1;
    end else begin
        v116_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v116_d0_local = bitcast_ln86_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v116_d0_local = bitcast_ln78_fu_743_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v116_d0_local = bitcast_ln71_fu_739_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v116_d0_local = bitcast_ln64_fu_735_p1;
        end else begin
            v116_d0_local = 'bx;
        end
    end else begin
        v116_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_d1_local = bitcast_ln57_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_d1_local = bitcast_ln50_fu_725_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_d1_local = bitcast_ln43_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_d1_local = bitcast_ln36_fu_711_p1;
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
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_we1_local = 1'b1;
    end else begin
        v116_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_7_reg_804_pp0_iter1_reg == 1'd1))) begin
        v7_5_out_ap_vld = 1'b1;
    end else begin
        v7_5_out_ap_vld = 1'b0;
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
assign add_ln28_fu_660_p2 = (v5_reg_795 + 7'd8);
assign add_ln33_fu_340_p2 = (zext_ln33_5 + zext_ln33_fu_336_p1);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_711_p1 = reg_306;
assign bitcast_ln43_fu_720_p1 = reg_306;
assign bitcast_ln50_fu_725_p1 = reg_306;
assign bitcast_ln57_fu_730_p1 = reg_306;
assign bitcast_ln64_fu_735_p1 = v36_reg_1085;
assign bitcast_ln71_fu_739_p1 = v42_reg_1090;
assign bitcast_ln78_fu_743_p1 = v48_reg_1095;
assign bitcast_ln86_fu_747_p1 = v54_reg_1100;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_289_p0;
assign grp_fu_692_p_din1 = grp_fu_289_p1;
assign grp_fu_692_p_opcode = 2'd0;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_293_p0;
assign grp_fu_696_p_din1 = grp_fu_293_p1;
assign icmp_ln31_fu_395_p2 = ((v5_reg_795 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln39_5_fu_361_p3 = {{tmp_s_fu_351_p4}, {1'd1}};
assign or_ln46_5_fu_409_p3 = {{tmp_31_fu_400_p4}, {2'd2}};
assign or_ln53_5_fu_441_p3 = {{tmp_31_fu_400_p4}, {2'd3}};
assign or_ln60_5_fu_497_p3 = {{tmp_34_fu_488_p4}, {3'd4}};
assign or_ln67_5_fu_536_p5 = {{{{tmp_34_fu_488_p4}, {1'd1}}, {tmp_8_fu_529_p3}}, {1'd1}};
assign or_ln74_5_fu_586_p3 = {{tmp_34_reg_890}, {3'd6}};
assign or_ln82_5_fu_695_p3 = {{tmp_34_reg_890_pp0_iter1_reg}, {3'd7}};
assign tmp_30_fu_374_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_s_fu_351_p4}}, {1'd1}};
assign tmp_31_fu_400_p4 = {{v5_reg_795[5:2]}};
assign tmp_32_fu_422_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_31_fu_400_p4}}, {2'd2}};
assign tmp_33_fu_454_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_31_fu_400_p4}}, {2'd3}};
assign tmp_34_fu_488_p4 = {{v5_reg_795[5:3]}};
assign tmp_35_fu_510_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_fu_488_p4}}, {3'd4}};
assign tmp_36_fu_553_p9 = {{{{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_fu_488_p4}}, {1'd1}}, {tmp_8_fu_529_p3}}, {1'd1}};
assign tmp_37_fu_598_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_reg_890}}, {3'd6}};
assign tmp_38_fu_616_p7 = {{{{{{tmp_105}, {1'd1}}, {empty}}, {1'd1}}, {tmp_34_reg_890}}, {3'd7}};
assign tmp_8_fu_529_p3 = v5_reg_795[32'd1];
assign tmp_s_fu_351_p4 = {{ap_sig_allocacmp_v5[5:1]}};
assign v10_fu_483_p1 = reg_297;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_address0 = v116_address0_local;
assign v116_address1 = v116_address1_local;
assign v116_ce0 = v116_ce0_local;
assign v116_ce1 = v116_ce1_local;
assign v116_d0 = v116_d0_local;
assign v116_d1 = v116_d1_local;
assign v116_we0 = v116_we0_local;
assign v116_we1 = v116_we1_local;
assign v15_fu_652_p1 = v116_load_15_reg_839;
assign v16_fu_581_p1 = reg_301;
assign v21_fu_670_p1 = v116_load_16_reg_875;
assign v22_fu_634_p1 = reg_297;
assign v27_fu_679_p1 = v116_load_17_reg_880;
assign v28_fu_639_p1 = v113_load_17_reg_885;
assign v33_fu_687_p1 = v116_load_18_reg_924;
assign v34_fu_647_p1 = reg_301;
assign v39_fu_691_p1 = v116_load_19_reg_929;
assign v40_fu_656_p1 = v113_load_19_reg_934;
assign v45_fu_707_p1 = v116_load_20_reg_960;
assign v46_fu_674_p1 = reg_297;
assign v51_fu_716_p1 = v116_load_21_reg_1070;
assign v52_fu_683_p1 = v113_load_21_reg_965;
assign v7_5_out = v3_fu_98;
assign v8_fu_476_p3 = ((icmp_ln31_reg_829[0:0] == 1'b1) ? v6_5 : v3_fu_98);
assign v9_fu_643_p1 = v116_load_reg_834;
assign zext_ln28_fu_331_p1 = ap_sig_allocacmp_v5;
assign zext_ln33_2_fu_346_p1 = add_ln33_fu_340_p2;
assign zext_ln33_fu_336_p1 = ap_sig_allocacmp_v5;
assign zext_ln39_fu_369_p1 = or_ln39_5_fu_361_p3;
assign zext_ln40_fu_390_p1 = tmp_30_fu_374_p7;
assign zext_ln46_fu_417_p1 = or_ln46_5_fu_409_p3;
assign zext_ln47_fu_436_p1 = tmp_32_fu_422_p7;
assign zext_ln53_fu_449_p1 = or_ln53_5_fu_441_p3;
assign zext_ln54_fu_468_p1 = tmp_33_fu_454_p7;
assign zext_ln60_fu_505_p1 = or_ln60_5_fu_497_p3;
assign zext_ln61_fu_524_p1 = tmp_35_fu_510_p7;
assign zext_ln67_fu_548_p1 = or_ln67_5_fu_536_p5;
assign zext_ln68_fu_571_p1 = tmp_36_fu_553_p9;
assign zext_ln74_fu_593_p1 = or_ln74_5_fu_586_p3;
assign zext_ln75_fu_611_p1 = tmp_37_fu_598_p7;
assign zext_ln82_fu_702_p1 = or_ln82_5_fu_695_p3;
assign zext_ln83_fu_629_p1 = tmp_38_fu_616_p7;
always @ (posedge ap_clk) begin
    v116_addr_15_reg_823[0] <= 1'b1;
    v116_addr_15_reg_823_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_16_reg_849[1:0] <= 2'b10;
    v116_addr_16_reg_849_pp0_iter1_reg[1:0] <= 2'b10;
    v116_addr_17_reg_859[1:0] <= 2'b11;
    v116_addr_17_reg_859_pp0_iter1_reg[1:0] <= 2'b11;
    v116_addr_17_reg_859_pp0_iter2_reg[1:0] <= 2'b11;
    v116_addr_18_reg_903[2:0] <= 3'b100;
    v116_addr_18_reg_903_pp0_iter1_reg[2:0] <= 3'b100;
    v116_addr_18_reg_903_pp0_iter2_reg[2:0] <= 3'b100;
    v116_addr_19_reg_914[0] <= 1'b1;
    v116_addr_19_reg_914[2] <= 1'b1;
    v116_addr_19_reg_914_pp0_iter1_reg[0] <= 1'b1;
    v116_addr_19_reg_914_pp0_iter1_reg[2] <= 1'b1;
    v116_addr_19_reg_914_pp0_iter2_reg[0] <= 1'b1;
    v116_addr_19_reg_914_pp0_iter2_reg[2] <= 1'b1;
    v116_addr_20_reg_944[2:0] <= 3'b110;
    v116_addr_20_reg_944_pp0_iter1_reg[2:0] <= 3'b110;
    v116_addr_20_reg_944_pp0_iter2_reg[2:0] <= 3'b110;
    v116_addr_21_reg_1060[2:0] <= 3'b111;
    v116_addr_21_reg_1060_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 