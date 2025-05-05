module bicg_bicg_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v140_address0,v140_ce0,v140_q0,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1); 
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
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
output  [4:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
input  [31:0] v65_0_q0;
output  [4:0] v65_0_address1;
output   v65_0_ce1;
output   v65_0_we1;
output  [31:0] v65_0_d1;
input  [31:0] v65_0_q1;
output  [4:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
input  [31:0] v65_1_q0;
output  [4:0] v65_1_address1;
output   v65_1_ce1;
output   v65_1_we1;
output  [31:0] v65_1_d1;
input  [31:0] v65_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln111_reg_1230;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_464;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_468;
wire   [31:0] grp_fu_434_p2;
reg   [31:0] reg_472;
wire   [31:0] grp_fu_438_p2;
reg   [31:0] reg_477;
reg   [31:0] reg_482;
reg   [31:0] reg_487;
wire   [0:0] icmp_ln111_fu_510_p2;
wire   [6:0] select_ln110_fu_542_p3;
reg   [6:0] select_ln110_reg_1234;
wire   [6:0] select_ln111_fu_550_p3;
reg   [6:0] select_ln111_reg_1241;
wire   [5:0] trunc_ln111_fu_558_p1;
reg   [5:0] trunc_ln111_reg_1247;
wire   [4:0] lshr_ln_fu_562_p4;
reg   [4:0] lshr_ln_reg_1267;
reg   [4:0] v65_0_addr_reg_1272;
reg   [4:0] v65_0_addr_reg_1272_pp0_iter1_reg;
reg   [4:0] v65_1_addr_reg_1277;
reg   [4:0] v65_1_addr_reg_1277_pp0_iter1_reg;
wire   [3:0] tmp_3_fu_578_p4;
reg   [3:0] tmp_3_reg_1282;
wire   [0:0] trunc_ln134_fu_588_p1;
reg   [0:0] trunc_ln134_reg_1288;
reg   [4:0] v65_0_addr_1_reg_1296;
reg   [4:0] v65_0_addr_1_reg_1296_pp0_iter1_reg;
reg   [4:0] v65_1_addr_1_reg_1302;
reg   [4:0] v65_1_addr_1_reg_1302_pp0_iter1_reg;
reg   [2:0] tmp_9_reg_1308;
wire   [1:0] trunc_ln152_fu_616_p1;
reg   [1:0] trunc_ln152_reg_1318;
reg   [0:0] tmp_4_reg_1324;
reg   [0:0] tmp_4_reg_1324_pp0_iter1_reg;
reg   [1:0] tmp_11_reg_1332;
reg   [1:0] tmp_11_reg_1332_pp0_iter1_reg;
wire   [2:0] trunc_ln112_fu_638_p1;
reg   [2:0] trunc_ln112_reg_1348;
reg   [1:0] tmp_13_reg_1353;
reg   [0:0] tmp_15_reg_1359;
reg   [0:0] tmp_15_reg_1359_pp0_iter1_reg;
wire   [0:0] cmp10_fu_681_p2;
reg   [0:0] cmp10_reg_1371;
reg   [0:0] cmp10_reg_1371_pp0_iter1_reg;
reg   [31:0] v73_reg_1391;
reg   [4:0] v65_0_addr_2_reg_1401;
reg   [4:0] v65_0_addr_2_reg_1401_pp0_iter1_reg;
reg   [4:0] v65_0_addr_2_reg_1401_pp0_iter2_reg;
reg   [4:0] v65_1_addr_2_reg_1406;
reg   [4:0] v65_1_addr_2_reg_1406_pp0_iter1_reg;
reg   [4:0] v65_1_addr_2_reg_1406_pp0_iter2_reg;
reg   [4:0] v65_0_addr_3_reg_1411;
reg   [4:0] v65_0_addr_3_reg_1411_pp0_iter1_reg;
reg   [4:0] v65_0_addr_3_reg_1411_pp0_iter2_reg;
reg   [4:0] v65_1_addr_3_reg_1416;
reg   [4:0] v65_1_addr_3_reg_1416_pp0_iter1_reg;
reg   [4:0] v65_1_addr_3_reg_1416_pp0_iter2_reg;
wire   [31:0] v82_fu_740_p3;
reg   [31:0] v82_reg_1421;
wire   [31:0] v90_fu_748_p3;
reg   [31:0] v90_reg_1426;
wire   [31:0] v98_fu_756_p3;
reg   [31:0] v98_reg_1431;
wire   [31:0] v66_fu_776_p3;
reg   [31:0] v66_reg_1436;
reg   [4:0] v65_0_addr_4_reg_1452;
reg   [4:0] v65_0_addr_4_reg_1452_pp0_iter1_reg;
reg   [4:0] v65_0_addr_4_reg_1452_pp0_iter2_reg;
reg   [4:0] v65_1_addr_4_reg_1457;
reg   [4:0] v65_1_addr_4_reg_1457_pp0_iter1_reg;
reg   [4:0] v65_1_addr_4_reg_1457_pp0_iter2_reg;
wire   [31:0] grp_fu_450_p3;
reg   [31:0] v106_reg_1462;
wire   [31:0] grp_fu_457_p3;
reg   [31:0] v114_reg_1467;
wire   [31:0] v122_fu_825_p3;
reg   [31:0] v122_reg_1472;
wire   [31:0] v130_fu_832_p3;
reg   [31:0] v130_reg_1477;
wire   [31:0] v75_fu_844_p1;
wire   [31:0] v83_fu_849_p1;
reg   [31:0] v74_2_reg_1502;
reg   [31:0] v82_2_reg_1507;
wire   [31:0] v91_fu_884_p1;
wire   [31:0] v99_fu_889_p1;
wire   [31:0] v107_fu_921_p1;
wire   [31:0] v115_fu_926_p1;
wire   [31:0] grp_fu_442_p2;
reg   [31:0] v76_reg_1552;
wire   [31:0] grp_fu_446_p2;
reg   [31:0] v84_reg_1557;
wire   [31:0] v123_fu_961_p1;
wire   [31:0] v131_fu_966_p1;
wire   [31:0] v74_fu_1004_p3;
reg   [31:0] v92_reg_1587;
reg   [31:0] v100_reg_1592;
wire   [31:0] v75_1_fu_1011_p1;
wire   [31:0] v83_1_fu_1016_p1;
reg   [31:0] v108_reg_1617;
reg   [31:0] v116_reg_1622;
wire   [31:0] v91_1_fu_1061_p1;
wire   [31:0] v99_1_fu_1066_p1;
reg   [31:0] v124_reg_1647;
reg   [31:0] v132_reg_1652;
wire   [31:0] v107_1_fu_1098_p1;
wire   [31:0] v115_1_fu_1103_p1;
reg   [31:0] v76_1_reg_1667;
reg   [31:0] v84_1_reg_1672;
reg   [4:0] v65_0_addr_5_reg_1677;
reg   [4:0] v65_0_addr_5_reg_1677_pp0_iter2_reg;
reg   [4:0] v65_1_addr_5_reg_1682;
reg   [4:0] v65_1_addr_5_reg_1682_pp0_iter2_reg;
wire   [31:0] v123_1_fu_1124_p1;
wire   [31:0] v131_1_fu_1129_p1;
reg   [31:0] v92_1_reg_1697;
reg   [31:0] v100_1_reg_1702;
reg   [4:0] v65_0_addr_6_reg_1707;
reg   [4:0] v65_0_addr_6_reg_1707_pp0_iter2_reg;
reg   [4:0] v65_1_addr_6_reg_1713;
reg   [4:0] v65_1_addr_6_reg_1713_pp0_iter2_reg;
reg   [4:0] v65_0_addr_7_reg_1719;
reg   [4:0] v65_0_addr_7_reg_1719_pp0_iter2_reg;
reg   [4:0] v65_1_addr_7_reg_1724;
reg   [4:0] v65_1_addr_7_reg_1724_pp0_iter2_reg;
reg   [31:0] v89_2_reg_1729;
reg   [31:0] v97_2_reg_1734;
reg   [31:0] v108_1_reg_1739;
reg   [31:0] v116_1_reg_1744;
wire   [31:0] v90_2_fu_1161_p3;
wire   [31:0] v98_2_fu_1168_p3;
wire   [31:0] v106_2_fu_1175_p3;
reg   [31:0] v106_2_reg_1759;
wire   [31:0] v114_2_fu_1182_p3;
reg   [31:0] v114_2_reg_1764;
wire   [31:0] v122_2_fu_1189_p3;
reg   [31:0] v122_2_reg_1769;
wire   [31:0] v130_2_fu_1196_p3;
reg   [31:0] v130_2_reg_1774;
reg   [31:0] v124_1_reg_1779;
reg   [31:0] v132_1_reg_1784;
reg   [31:0] v77_1_reg_1789;
reg   [31:0] v85_1_reg_1794;
reg   [31:0] v93_1_reg_1799;
reg   [31:0] v101_1_reg_1804;
reg   [31:0] v109_1_reg_1809;
reg   [31:0] v117_1_reg_1814;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln113_fu_572_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln135_fu_600_p1;
wire   [63:0] zext_ln111_fu_670_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln119_2_fu_695_p1;
wire   [63:0] zext_ln128_fu_708_p1;
wire   [63:0] zext_ln153_fu_721_p1;
wire   [63:0] zext_ln171_fu_734_p1;
wire   [63:0] zext_ln137_fu_793_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln146_fu_806_p1;
wire   [63:0] zext_ln110_fu_819_p1;
wire   [63:0] zext_ln155_fu_863_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln164_fu_879_p1;
wire   [63:0] zext_ln173_fu_903_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln183_fu_916_p1;
wire   [63:0] zext_ln119_1_fu_940_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln128_1_fu_956_p1;
wire   [63:0] zext_ln137_1_fu_983_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln146_1_fu_999_p1;
wire   [63:0] zext_ln155_1_fu_1030_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln164_1_fu_1046_p1;
wire   [63:0] zext_ln173_1_fu_1080_p1;
wire   [63:0] zext_ln183_1_fu_1093_p1;
wire   [63:0] zext_ln135_1_fu_1118_p1;
wire   [63:0] zext_ln153_1_fu_1142_p1;
wire   [63:0] zext_ln171_1_fu_1155_p1;
reg   [31:0] v66_1_fu_122;
reg   [6:0] v126_fu_126;
wire   [6:0] add_ln112_fu_1051_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v126_load;
reg   [6:0] v67_fu_130;
reg   [6:0] ap_sig_allocacmp_v67_load;
reg   [8:0] indvar_flatten_fu_134;
wire   [8:0] add_ln111_1_fu_516_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v65_0_ce1_local;
reg   [4:0] v65_0_address1_local;
reg    v65_0_ce0_local;
reg   [4:0] v65_0_address0_local;
reg    v65_0_we1_local;
reg   [31:0] v65_0_d1_local;
reg    v65_0_we0_local;
reg   [31:0] v65_0_d0_local;
reg    v65_1_ce1_local;
reg   [4:0] v65_1_address1_local;
reg    v65_1_ce0_local;
reg   [4:0] v65_1_address0_local;
reg    v65_1_we1_local;
reg   [31:0] v65_1_d1_local;
reg    v65_1_we0_local;
reg   [31:0] v65_1_d0_local;
reg    v140_ce0_local;
reg    v138_ce1_local;
reg   [11:0] v138_address1_local;
reg    v138_ce0_local;
reg   [11:0] v138_address0_local;
reg   [31:0] grp_fu_434_p0;
reg   [31:0] grp_fu_434_p1;
reg   [31:0] grp_fu_438_p0;
reg   [31:0] grp_fu_438_p1;
reg   [31:0] grp_fu_442_p0;
reg   [31:0] grp_fu_446_p0;
wire   [0:0] tmp_1_fu_534_p3;
wire   [6:0] add_ln111_fu_528_p2;
wire   [4:0] or_ln134_1_fu_592_p3;
wire   [11:0] tmp_fu_674_p3;
wire   [11:0] zext_ln119_fu_686_p1;
wire   [11:0] add_ln119_fu_689_p2;
wire   [11:0] tmp_2_fu_700_p4;
wire   [4:0] or_ln152_1_fu_713_p4;
wire   [4:0] or_ln170_1_fu_727_p3;
wire   [0:0] icmp_ln115_fu_771_p2;
wire   [31:0] v69_fu_767_p1;
wire   [11:0] tmp_5_fu_784_p5;
wire   [11:0] tmp_8_fu_798_p4;
wire   [4:0] or_ln_fu_811_p4;
wire   [11:0] tmp_s_fu_854_p5;
wire   [11:0] tmp_6_fu_868_p6;
wire   [11:0] tmp_7_fu_894_p5;
wire   [11:0] tmp_10_fu_908_p4;
wire   [11:0] tmp_12_fu_931_p5;
wire   [11:0] tmp_14_fu_945_p6;
wire   [11:0] tmp_16_fu_971_p7;
wire   [11:0] tmp_17_fu_988_p6;
wire   [11:0] tmp_18_fu_1021_p5;
wire   [11:0] tmp_19_fu_1035_p6;
wire   [11:0] tmp_20_fu_1071_p5;
wire   [11:0] tmp_21_fu_1085_p4;
wire   [4:0] or_ln134_3_fu_1108_p5;
wire   [4:0] or_ln152_3_fu_1134_p4;
wire   [4:0] or_ln170_3_fu_1148_p3;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_1_fu_122 = 32'd0;
#0 v126_fu_126 = 7'd0;
#0 v67_fu_130 = 7'd0;
#0 indvar_flatten_fu_134 = 9'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_434_p0),.din1(grp_fu_434_p1),.ce(1'b1),.dout(grp_fu_434_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_438_p0),.din1(grp_fu_438_p1),.ce(1'b1),.dout(grp_fu_438_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_442_p0),.din1(v66_reg_1436),.ce(1'b1),.dout(grp_fu_442_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_446_p0),.din1(v66_reg_1436),.ce(1'b1),.dout(grp_fu_446_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln111_fu_510_p2 == 1'd0))) begin
            indvar_flatten_fu_134 <= add_ln111_1_fu_516_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_134 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v126_fu_126 <= 7'd0;
    end else if (((icmp_ln111_reg_1230 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v126_fu_126 <= add_ln112_fu_1051_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln111_fu_510_p2 == 1'd0))) begin
            v67_fu_130 <= select_ln111_fu_550_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v67_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp10_reg_1371 <= cmp10_fu_681_p2;
        cmp10_reg_1371_pp0_iter1_reg <= cmp10_reg_1371;
        v65_0_addr_2_reg_1401[0] <= zext_ln153_fu_721_p1[0];
v65_0_addr_2_reg_1401[4 : 2] <= zext_ln153_fu_721_p1[4 : 2];
        v65_0_addr_2_reg_1401_pp0_iter1_reg[0] <= v65_0_addr_2_reg_1401[0];
v65_0_addr_2_reg_1401_pp0_iter1_reg[4 : 2] <= v65_0_addr_2_reg_1401[4 : 2];
        v65_0_addr_2_reg_1401_pp0_iter2_reg[0] <= v65_0_addr_2_reg_1401_pp0_iter1_reg[0];
v65_0_addr_2_reg_1401_pp0_iter2_reg[4 : 2] <= v65_0_addr_2_reg_1401_pp0_iter1_reg[4 : 2];
        v65_0_addr_3_reg_1411[4 : 2] <= zext_ln171_fu_734_p1[4 : 2];
        v65_0_addr_3_reg_1411_pp0_iter1_reg[4 : 2] <= v65_0_addr_3_reg_1411[4 : 2];
        v65_0_addr_3_reg_1411_pp0_iter2_reg[4 : 2] <= v65_0_addr_3_reg_1411_pp0_iter1_reg[4 : 2];
        v65_1_addr_2_reg_1406[0] <= zext_ln153_fu_721_p1[0];
v65_1_addr_2_reg_1406[4 : 2] <= zext_ln153_fu_721_p1[4 : 2];
        v65_1_addr_2_reg_1406_pp0_iter1_reg[0] <= v65_1_addr_2_reg_1406[0];
v65_1_addr_2_reg_1406_pp0_iter1_reg[4 : 2] <= v65_1_addr_2_reg_1406[4 : 2];
        v65_1_addr_2_reg_1406_pp0_iter2_reg[0] <= v65_1_addr_2_reg_1406_pp0_iter1_reg[0];
v65_1_addr_2_reg_1406_pp0_iter2_reg[4 : 2] <= v65_1_addr_2_reg_1406_pp0_iter1_reg[4 : 2];
        v65_1_addr_3_reg_1416[4 : 2] <= zext_ln171_fu_734_p1[4 : 2];
        v65_1_addr_3_reg_1416_pp0_iter1_reg[4 : 2] <= v65_1_addr_3_reg_1416[4 : 2];
        v65_1_addr_3_reg_1416_pp0_iter2_reg[4 : 2] <= v65_1_addr_3_reg_1416_pp0_iter1_reg[4 : 2];
        v82_reg_1421 <= v82_fu_740_p3;
        v90_reg_1426 <= v90_fu_748_p3;
        v98_reg_1431 <= v98_fu_756_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln111_reg_1230 <= icmp_ln111_fu_510_p2;
        lshr_ln_reg_1267 <= {{select_ln110_fu_542_p3[5:1]}};
        select_ln110_reg_1234 <= select_ln110_fu_542_p3;
        select_ln111_reg_1241 <= select_ln111_fu_550_p3;
        tmp_11_reg_1332 <= {{select_ln110_fu_542_p3[5:4]}};
        tmp_11_reg_1332_pp0_iter1_reg <= tmp_11_reg_1332;
        tmp_13_reg_1353 <= {{select_ln110_fu_542_p3[2:1]}};
        tmp_15_reg_1359 <= select_ln110_fu_542_p3[32'd2];
        tmp_15_reg_1359_pp0_iter1_reg <= tmp_15_reg_1359;
        tmp_3_reg_1282 <= {{select_ln110_fu_542_p3[5:2]}};
        tmp_4_reg_1324 <= select_ln110_fu_542_p3[32'd1];
        tmp_4_reg_1324_pp0_iter1_reg <= tmp_4_reg_1324;
        tmp_9_reg_1308 <= {{select_ln110_fu_542_p3[5:3]}};
        trunc_ln111_reg_1247 <= trunc_ln111_fu_558_p1;
        trunc_ln112_reg_1348 <= trunc_ln112_fu_638_p1;
        trunc_ln134_reg_1288 <= trunc_ln134_fu_588_p1;
        trunc_ln152_reg_1318 <= trunc_ln152_fu_616_p1;
        v65_0_addr_1_reg_1296[4 : 1] <= zext_ln135_fu_600_p1[4 : 1];
        v65_0_addr_1_reg_1296_pp0_iter1_reg[4 : 1] <= v65_0_addr_1_reg_1296[4 : 1];
        v65_0_addr_reg_1272 <= zext_ln113_fu_572_p1;
        v65_0_addr_reg_1272_pp0_iter1_reg <= v65_0_addr_reg_1272;
        v65_1_addr_1_reg_1302[4 : 1] <= zext_ln135_fu_600_p1[4 : 1];
        v65_1_addr_1_reg_1302_pp0_iter1_reg[4 : 1] <= v65_1_addr_1_reg_1302[4 : 1];
        v65_1_addr_reg_1277 <= zext_ln113_fu_572_p1;
        v65_1_addr_reg_1277_pp0_iter1_reg <= v65_1_addr_reg_1277;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_464 <= v138_q1;
        reg_468 <= v138_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_472 <= grp_fu_434_p2;
        reg_477 <= grp_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_482 <= grp_fu_434_p2;
        reg_487 <= grp_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v100_1_reg_1702 <= grp_fu_446_p2;
        v89_2_reg_1729 <= v65_0_q0;
        v92_1_reg_1697 <= grp_fu_442_p2;
        v97_2_reg_1734 <= v65_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v100_reg_1592 <= grp_fu_446_p2;
        v92_reg_1587 <= grp_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v101_1_reg_1804 <= grp_fu_438_p2;
        v93_1_reg_1799 <= grp_fu_434_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v106_2_reg_1759 <= v106_2_fu_1175_p3;
        v114_2_reg_1764 <= v114_2_fu_1182_p3;
        v122_2_reg_1769 <= v122_2_fu_1189_p3;
        v130_2_reg_1774 <= v130_2_fu_1196_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v106_reg_1462 <= grp_fu_450_p3;
        v114_reg_1467 <= grp_fu_457_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v108_1_reg_1739 <= grp_fu_442_p2;
        v116_1_reg_1744 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v108_reg_1617 <= grp_fu_442_p2;
        v116_reg_1622 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v109_1_reg_1809 <= grp_fu_434_p2;
        v117_1_reg_1814 <= grp_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v122_reg_1472 <= v122_fu_825_p3;
        v130_reg_1477 <= v130_fu_832_p3;
        v65_0_addr_4_reg_1452[1 : 0] <= zext_ln110_fu_819_p1[1 : 0];
v65_0_addr_4_reg_1452[4 : 3] <= zext_ln110_fu_819_p1[4 : 3];
        v65_0_addr_4_reg_1452_pp0_iter1_reg[1 : 0] <= v65_0_addr_4_reg_1452[1 : 0];
v65_0_addr_4_reg_1452_pp0_iter1_reg[4 : 3] <= v65_0_addr_4_reg_1452[4 : 3];
        v65_0_addr_4_reg_1452_pp0_iter2_reg[1 : 0] <= v65_0_addr_4_reg_1452_pp0_iter1_reg[1 : 0];
v65_0_addr_4_reg_1452_pp0_iter2_reg[4 : 3] <= v65_0_addr_4_reg_1452_pp0_iter1_reg[4 : 3];
        v65_0_addr_5_reg_1677[1] <= zext_ln135_1_fu_1118_p1[1];
v65_0_addr_5_reg_1677[4 : 3] <= zext_ln135_1_fu_1118_p1[4 : 3];
        v65_0_addr_5_reg_1677_pp0_iter2_reg[1] <= v65_0_addr_5_reg_1677[1];
v65_0_addr_5_reg_1677_pp0_iter2_reg[4 : 3] <= v65_0_addr_5_reg_1677[4 : 3];
        v65_1_addr_4_reg_1457[1 : 0] <= zext_ln110_fu_819_p1[1 : 0];
v65_1_addr_4_reg_1457[4 : 3] <= zext_ln110_fu_819_p1[4 : 3];
        v65_1_addr_4_reg_1457_pp0_iter1_reg[1 : 0] <= v65_1_addr_4_reg_1457[1 : 0];
v65_1_addr_4_reg_1457_pp0_iter1_reg[4 : 3] <= v65_1_addr_4_reg_1457[4 : 3];
        v65_1_addr_4_reg_1457_pp0_iter2_reg[1 : 0] <= v65_1_addr_4_reg_1457_pp0_iter1_reg[1 : 0];
v65_1_addr_4_reg_1457_pp0_iter2_reg[4 : 3] <= v65_1_addr_4_reg_1457_pp0_iter1_reg[4 : 3];
        v65_1_addr_5_reg_1682[1] <= zext_ln135_1_fu_1118_p1[1];
v65_1_addr_5_reg_1682[4 : 3] <= zext_ln135_1_fu_1118_p1[4 : 3];
        v65_1_addr_5_reg_1682_pp0_iter2_reg[1] <= v65_1_addr_5_reg_1682[1];
v65_1_addr_5_reg_1682_pp0_iter2_reg[4 : 3] <= v65_1_addr_5_reg_1682[4 : 3];
        v66_reg_1436 <= v66_fu_776_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v124_1_reg_1779 <= grp_fu_442_p2;
        v132_1_reg_1784 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_reg_1647 <= grp_fu_442_p2;
        v132_reg_1652 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_addr_6_reg_1707[0] <= zext_ln153_1_fu_1142_p1[0];
v65_0_addr_6_reg_1707[4 : 3] <= zext_ln153_1_fu_1142_p1[4 : 3];
        v65_0_addr_6_reg_1707_pp0_iter2_reg[0] <= v65_0_addr_6_reg_1707[0];
v65_0_addr_6_reg_1707_pp0_iter2_reg[4 : 3] <= v65_0_addr_6_reg_1707[4 : 3];
        v65_0_addr_7_reg_1719[4 : 3] <= zext_ln171_1_fu_1155_p1[4 : 3];
        v65_0_addr_7_reg_1719_pp0_iter2_reg[4 : 3] <= v65_0_addr_7_reg_1719[4 : 3];
        v65_1_addr_6_reg_1713[0] <= zext_ln153_1_fu_1142_p1[0];
v65_1_addr_6_reg_1713[4 : 3] <= zext_ln153_1_fu_1142_p1[4 : 3];
        v65_1_addr_6_reg_1713_pp0_iter2_reg[0] <= v65_1_addr_6_reg_1713[0];
v65_1_addr_6_reg_1713_pp0_iter2_reg[4 : 3] <= v65_1_addr_6_reg_1713[4 : 3];
        v65_1_addr_7_reg_1724[4 : 3] <= zext_ln171_1_fu_1155_p1[4 : 3];
        v65_1_addr_7_reg_1724_pp0_iter2_reg[4 : 3] <= v65_1_addr_7_reg_1724[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln111_reg_1230 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_1_fu_122 <= v66_fu_776_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_1391 <= v65_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v74_2_reg_1502 <= grp_fu_450_p3;
        v82_2_reg_1507 <= grp_fu_457_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v76_1_reg_1667 <= grp_fu_442_p2;
        v84_1_reg_1672 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v76_reg_1552 <= grp_fu_442_p2;
        v84_reg_1557 <= grp_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v77_1_reg_1789 <= grp_fu_434_p2;
        v85_1_reg_1794 <= grp_fu_438_p2;
    end
end
always @ (*) begin
    if (((icmp_ln111_reg_1230 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_134;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v126_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v126_load = v126_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v67_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v67_load = v67_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_434_p0 = v122_2_reg_1769;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_434_p0 = v106_2_reg_1759;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_434_p0 = v90_2_fu_1161_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_434_p0 = v74_2_reg_1502;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p0 = v122_reg_1472;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p0 = v106_reg_1462;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p0 = v90_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_434_p0 = v74_fu_1004_p3;
    end else begin
        grp_fu_434_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_434_p1 = v124_1_reg_1779;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_434_p1 = v108_1_reg_1739;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_434_p1 = v92_1_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_434_p1 = v76_1_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p1 = v124_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p1 = v108_reg_1617;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p1 = v92_reg_1587;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_434_p1 = v76_reg_1552;
    end else begin
        grp_fu_434_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_438_p0 = v130_2_reg_1774;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_438_p0 = v114_2_reg_1764;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_438_p0 = v98_2_fu_1168_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_438_p0 = v82_2_reg_1507;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_438_p0 = v130_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p0 = v114_reg_1467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p0 = v98_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_438_p0 = v82_reg_1421;
    end else begin
        grp_fu_438_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_438_p1 = v132_1_reg_1784;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_438_p1 = v116_1_reg_1744;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_438_p1 = v100_1_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_438_p1 = v84_1_reg_1672;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_438_p1 = v132_reg_1652;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p1 = v116_reg_1622;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p1 = v100_reg_1592;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_438_p1 = v84_reg_1557;
    end else begin
        grp_fu_438_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_442_p0 = v123_1_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_442_p0 = v107_1_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_442_p0 = v91_1_fu_1061_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_442_p0 = v75_1_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_442_p0 = v123_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_442_p0 = v107_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_442_p0 = v91_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_442_p0 = v75_fu_844_p1;
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_446_p0 = v131_1_fu_1129_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_446_p0 = v115_1_fu_1103_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_p0 = v99_1_fu_1066_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_446_p0 = v83_1_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_446_p0 = v131_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_446_p0 = v115_fu_926_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_446_p0 = v99_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_446_p0 = v83_fu_849_p1;
    end else begin
        grp_fu_446_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v138_address0_local = zext_ln183_1_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v138_address0_local = zext_ln164_1_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v138_address0_local = zext_ln146_1_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v138_address0_local = zext_ln128_1_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v138_address0_local = zext_ln183_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v138_address0_local = zext_ln164_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v138_address0_local = zext_ln146_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_address0_local = zext_ln128_fu_708_p1;
    end else begin
        v138_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v138_address1_local = zext_ln173_1_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v138_address1_local = zext_ln155_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v138_address1_local = zext_ln137_1_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v138_address1_local = zext_ln119_1_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v138_address1_local = zext_ln173_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v138_address1_local = zext_ln155_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v138_address1_local = zext_ln137_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_address1_local = zext_ln119_2_fu_695_p1;
    end else begin
        v138_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_ce0_local = 1'b1;
    end else begin
        v138_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_ce1_local = 1'b1;
    end else begin
        v138_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v140_ce0_local = 1'b1;
    end else begin
        v140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v65_0_address0_local = v65_0_addr_7_reg_1719_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_0_address0_local = v65_0_addr_6_reg_1707_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_0_address0_local = v65_0_addr_5_reg_1677_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_0_address0_local = v65_0_addr_3_reg_1411_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address0_local = zext_ln171_1_fu_1155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = zext_ln135_1_fu_1118_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_600_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_0_address1_local = v65_0_addr_4_reg_1452_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_0_address1_local = v65_0_addr_2_reg_1401_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v65_0_address1_local = v65_0_addr_1_reg_1296_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_0_address1_local = v65_0_addr_reg_1272_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = zext_ln153_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = zext_ln110_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_572_p1;
    end else begin
        v65_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_0_d0_local = v109_1_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_0_d0_local = v93_1_reg_1799;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_0_d0_local = reg_482;
    end else begin
        v65_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_0_d1_local = v77_1_reg_1789;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_0_d1_local = reg_472;
    end else begin
        v65_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_0_we0_local = 1'b1;
    end else begin
        v65_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_0_we1_local = 1'b1;
    end else begin
        v65_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v65_1_address0_local = v65_1_addr_7_reg_1724_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_1_address0_local = v65_1_addr_6_reg_1713_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_1_address0_local = v65_1_addr_5_reg_1682_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_1_address0_local = v65_1_addr_3_reg_1416_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address0_local = zext_ln171_1_fu_1155_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = zext_ln135_1_fu_1118_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_600_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_1_address1_local = v65_1_addr_4_reg_1457_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_1_address1_local = v65_1_addr_2_reg_1406_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v65_1_address1_local = v65_1_addr_1_reg_1302_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_1_address1_local = v65_1_addr_reg_1277_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = zext_ln153_1_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = zext_ln110_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_572_p1;
    end else begin
        v65_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v65_1_d0_local = v117_1_reg_1814;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_1_d0_local = v101_1_reg_1804;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_1_d0_local = reg_487;
    end else begin
        v65_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v65_1_d1_local = v85_1_reg_1794;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_1_d1_local = reg_477;
    end else begin
        v65_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_1_we0_local = 1'b1;
    end else begin
        v65_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v65_1_we1_local = 1'b1;
    end else begin
        v65_1_we1_local = 1'b0;
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
assign add_ln111_1_fu_516_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln111_fu_528_p2 = (ap_sig_allocacmp_v67_load + 7'd1);
assign add_ln112_fu_1051_p2 = (select_ln110_reg_1234 + 7'd16);
assign add_ln119_fu_689_p2 = (tmp_fu_674_p3 + zext_ln119_fu_686_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign cmp10_fu_681_p2 = ((select_ln111_reg_1241 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_450_p3 = ((cmp10_reg_1371[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign grp_fu_457_p3 = ((cmp10_reg_1371[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign icmp_ln111_fu_510_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_771_p2 = ((select_ln110_reg_1234 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_562_p4 = {{select_ln110_fu_542_p3[5:1]}};
assign or_ln134_1_fu_592_p3 = {{tmp_3_fu_578_p4}, {1'd1}};
assign or_ln134_3_fu_1108_p5 = {{{{tmp_11_reg_1332_pp0_iter1_reg}, {1'd1}}, {tmp_15_reg_1359_pp0_iter1_reg}}, {1'd1}};
assign or_ln152_1_fu_713_p4 = {{{tmp_9_reg_1308}, {1'd1}}, {tmp_4_reg_1324}};
assign or_ln152_3_fu_1134_p4 = {{{tmp_11_reg_1332_pp0_iter1_reg}, {2'd3}}, {tmp_4_reg_1324_pp0_iter1_reg}};
assign or_ln170_1_fu_727_p3 = {{tmp_9_reg_1308}, {2'd3}};
assign or_ln170_3_fu_1148_p3 = {{tmp_11_reg_1332_pp0_iter1_reg}, {3'd7}};
assign or_ln_fu_811_p4 = {{{tmp_11_reg_1332}, {1'd1}}, {tmp_13_reg_1353}};
assign select_ln110_fu_542_p3 = ((tmp_1_fu_534_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v126_load);
assign select_ln111_fu_550_p3 = ((tmp_1_fu_534_p3[0:0] == 1'b1) ? add_ln111_fu_528_p2 : ap_sig_allocacmp_v67_load);
assign tmp_10_fu_908_p4 = {{{trunc_ln111_reg_1247}, {tmp_9_reg_1308}}, {3'd7}};
assign tmp_12_fu_931_p5 = {{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {1'd1}}, {trunc_ln112_reg_1348}};
assign tmp_14_fu_945_p6 = {{{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {1'd1}}, {tmp_13_reg_1353}}, {1'd1}};
assign tmp_16_fu_971_p7 = {{{{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {1'd1}}, {tmp_15_reg_1359}}, {1'd1}}, {trunc_ln134_reg_1288}};
assign tmp_17_fu_988_p6 = {{{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {1'd1}}, {tmp_15_reg_1359}}, {2'd3}};
assign tmp_18_fu_1021_p5 = {{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {2'd3}}, {trunc_ln152_reg_1318}};
assign tmp_19_fu_1035_p6 = {{{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {2'd3}}, {tmp_4_reg_1324}}, {1'd1}};
assign tmp_1_fu_534_p3 = ap_sig_allocacmp_v126_load[32'd6];
assign tmp_20_fu_1071_p5 = {{{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {3'd7}}, {trunc_ln134_reg_1288}};
assign tmp_21_fu_1085_p4 = {{{trunc_ln111_reg_1247}, {tmp_11_reg_1332}}, {4'd15}};
assign tmp_2_fu_700_p4 = {{{trunc_ln111_reg_1247}, {lshr_ln_reg_1267}}, {1'd1}};
assign tmp_3_fu_578_p4 = {{select_ln110_fu_542_p3[5:2]}};
assign tmp_5_fu_784_p5 = {{{{trunc_ln111_reg_1247}, {tmp_3_reg_1282}}, {1'd1}}, {trunc_ln134_reg_1288}};
assign tmp_6_fu_868_p6 = {{{{{trunc_ln111_reg_1247}, {tmp_9_reg_1308}}, {1'd1}}, {tmp_4_reg_1324}}, {1'd1}};
assign tmp_7_fu_894_p5 = {{{{trunc_ln111_reg_1247}, {tmp_9_reg_1308}}, {2'd3}}, {trunc_ln134_reg_1288}};
assign tmp_8_fu_798_p4 = {{{trunc_ln111_reg_1247}, {tmp_3_reg_1282}}, {2'd3}};
assign tmp_fu_674_p3 = {{trunc_ln111_reg_1247}, {6'd0}};
assign tmp_s_fu_854_p5 = {{{{trunc_ln111_reg_1247}, {tmp_9_reg_1308}}, {1'd1}}, {trunc_ln152_reg_1318}};
assign trunc_ln111_fu_558_p1 = select_ln111_fu_550_p3[5:0];
assign trunc_ln112_fu_638_p1 = select_ln110_fu_542_p3[2:0];
assign trunc_ln134_fu_588_p1 = select_ln110_fu_542_p3[0:0];
assign trunc_ln152_fu_616_p1 = select_ln110_fu_542_p3[1:0];
assign v106_2_fu_1175_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign v107_1_fu_1098_p1 = reg_464;
assign v107_fu_921_p1 = reg_464;
assign v114_2_fu_1182_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v115_1_fu_1103_p1 = reg_468;
assign v115_fu_926_p1 = reg_468;
assign v122_2_fu_1189_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign v122_fu_825_p3 = ((cmp10_reg_1371[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign v123_1_fu_1124_p1 = reg_464;
assign v123_fu_961_p1 = reg_464;
assign v130_2_fu_1196_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign v130_fu_832_p3 = ((cmp10_reg_1371[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign v131_1_fu_1129_p1 = reg_468;
assign v131_fu_966_p1 = reg_468;
assign v138_address0 = v138_address0_local;
assign v138_address1 = v138_address1_local;
assign v138_ce0 = v138_ce0_local;
assign v138_ce1 = v138_ce1_local;
assign v140_address0 = zext_ln111_fu_670_p1;
assign v140_ce0 = v140_ce0_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = v65_0_d1_local;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = v65_1_d1_local;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v66_fu_776_p3 = ((icmp_ln115_fu_771_p2[0:0] == 1'b1) ? v69_fu_767_p1 : v66_1_fu_122);
assign v69_fu_767_p1 = v140_q0;
assign v74_fu_1004_p3 = ((cmp10_reg_1371[0:0] == 1'b1) ? 32'd0 : v73_reg_1391);
assign v75_1_fu_1011_p1 = reg_464;
assign v75_fu_844_p1 = reg_464;
assign v82_fu_740_p3 = ((cmp10_fu_681_p2[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v83_1_fu_1016_p1 = reg_468;
assign v83_fu_849_p1 = reg_468;
assign v90_2_fu_1161_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v89_2_reg_1729);
assign v90_fu_748_p3 = ((cmp10_fu_681_p2[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign v91_1_fu_1061_p1 = reg_464;
assign v91_fu_884_p1 = reg_464;
assign v98_2_fu_1168_p3 = ((cmp10_reg_1371_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v97_2_reg_1734);
assign v98_fu_756_p3 = ((cmp10_fu_681_p2[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign v99_1_fu_1066_p1 = reg_468;
assign v99_fu_889_p1 = reg_468;
assign zext_ln110_fu_819_p1 = or_ln_fu_811_p4;
assign zext_ln111_fu_670_p1 = select_ln111_reg_1241;
assign zext_ln113_fu_572_p1 = lshr_ln_fu_562_p4;
assign zext_ln119_1_fu_940_p1 = tmp_12_fu_931_p5;
assign zext_ln119_2_fu_695_p1 = add_ln119_fu_689_p2;
assign zext_ln119_fu_686_p1 = select_ln110_reg_1234;
assign zext_ln128_1_fu_956_p1 = tmp_14_fu_945_p6;
assign zext_ln128_fu_708_p1 = tmp_2_fu_700_p4;
assign zext_ln135_1_fu_1118_p1 = or_ln134_3_fu_1108_p5;
assign zext_ln135_fu_600_p1 = or_ln134_1_fu_592_p3;
assign zext_ln137_1_fu_983_p1 = tmp_16_fu_971_p7;
assign zext_ln137_fu_793_p1 = tmp_5_fu_784_p5;
assign zext_ln146_1_fu_999_p1 = tmp_17_fu_988_p6;
assign zext_ln146_fu_806_p1 = tmp_8_fu_798_p4;
assign zext_ln153_1_fu_1142_p1 = or_ln152_3_fu_1134_p4;
assign zext_ln153_fu_721_p1 = or_ln152_1_fu_713_p4;
assign zext_ln155_1_fu_1030_p1 = tmp_18_fu_1021_p5;
assign zext_ln155_fu_863_p1 = tmp_s_fu_854_p5;
assign zext_ln164_1_fu_1046_p1 = tmp_19_fu_1035_p6;
assign zext_ln164_fu_879_p1 = tmp_6_fu_868_p6;
assign zext_ln171_1_fu_1155_p1 = or_ln170_3_fu_1148_p3;
assign zext_ln171_fu_734_p1 = or_ln170_1_fu_727_p3;
assign zext_ln173_1_fu_1080_p1 = tmp_20_fu_1071_p5;
assign zext_ln173_fu_903_p1 = tmp_7_fu_894_p5;
assign zext_ln183_1_fu_1093_p1 = tmp_21_fu_1085_p4;
assign zext_ln183_fu_916_p1 = tmp_10_fu_908_p4;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_1296[0] <= 1'b1;
    v65_0_addr_1_reg_1296_pp0_iter1_reg[0] <= 1'b1;
    v65_1_addr_1_reg_1302[0] <= 1'b1;
    v65_1_addr_1_reg_1302_pp0_iter1_reg[0] <= 1'b1;
    v65_0_addr_2_reg_1401[1] <= 1'b1;
    v65_0_addr_2_reg_1401_pp0_iter1_reg[1] <= 1'b1;
    v65_0_addr_2_reg_1401_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1406[1] <= 1'b1;
    v65_1_addr_2_reg_1406_pp0_iter1_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1406_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_3_reg_1411[1:0] <= 2'b11;
    v65_0_addr_3_reg_1411_pp0_iter1_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_1411_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1416[1:0] <= 2'b11;
    v65_1_addr_3_reg_1416_pp0_iter1_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1416_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_4_reg_1452[2] <= 1'b1;
    v65_0_addr_4_reg_1452_pp0_iter1_reg[2] <= 1'b1;
    v65_0_addr_4_reg_1452_pp0_iter2_reg[2] <= 1'b1;
    v65_1_addr_4_reg_1457[2] <= 1'b1;
    v65_1_addr_4_reg_1457_pp0_iter1_reg[2] <= 1'b1;
    v65_1_addr_4_reg_1457_pp0_iter2_reg[2] <= 1'b1;
    v65_0_addr_5_reg_1677[0] <= 1'b1;
    v65_0_addr_5_reg_1677[2] <= 1'b1;
    v65_0_addr_5_reg_1677_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_5_reg_1677_pp0_iter2_reg[2] <= 1'b1;
    v65_1_addr_5_reg_1682[0] <= 1'b1;
    v65_1_addr_5_reg_1682[2] <= 1'b1;
    v65_1_addr_5_reg_1682_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_5_reg_1682_pp0_iter2_reg[2] <= 1'b1;
    v65_0_addr_6_reg_1707[2:1] <= 2'b11;
    v65_0_addr_6_reg_1707_pp0_iter2_reg[2:1] <= 2'b11;
    v65_1_addr_6_reg_1713[2:1] <= 2'b11;
    v65_1_addr_6_reg_1713_pp0_iter2_reg[2:1] <= 2'b11;
    v65_0_addr_7_reg_1719[2:0] <= 3'b111;
    v65_0_addr_7_reg_1719_pp0_iter2_reg[2:0] <= 3'b111;
    v65_1_addr_7_reg_1724[2:0] <= 3'b111;
    v65_1_addr_7_reg_1724_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 