
module bicg_bicg_node2_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v66,v67,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v65_3_address0,v65_3_ce0,v65_3_we0,v65_3_d0,v65_3_q0,v65_3_address1,v65_3_ce1,v65_3_we1,v65_3_d1,v65_3_q1,v65_2_address0,v65_2_ce0,v65_2_we0,v65_2_d0,v65_2_q0,v65_2_address1,v65_2_ce1,v65_2_we1,v65_2_d1,v65_2_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v69,cmp10,v70_out,v70_out_ap_vld,grp_fu_810_p_din0,grp_fu_810_p_din1,grp_fu_810_p_opcode,grp_fu_810_p_dout0,grp_fu_810_p_ce,grp_fu_814_p_din0,grp_fu_814_p_din1,grp_fu_814_p_opcode,grp_fu_814_p_dout0,grp_fu_814_p_ce,grp_fu_818_p_din0,grp_fu_818_p_din1,grp_fu_818_p_opcode,grp_fu_818_p_dout0,grp_fu_818_p_ce,grp_fu_822_p_din0,grp_fu_822_p_din1,grp_fu_822_p_opcode,grp_fu_822_p_dout0,grp_fu_822_p_ce,grp_fu_826_p_din0,grp_fu_826_p_din1,grp_fu_826_p_dout0,grp_fu_826_p_ce,grp_fu_830_p_din0,grp_fu_830_p_din1,grp_fu_830_p_dout0,grp_fu_830_p_ce,grp_fu_834_p_din0,grp_fu_834_p_din1,grp_fu_834_p_dout0,grp_fu_834_p_ce,grp_fu_838_p_din0,grp_fu_838_p_din1,grp_fu_838_p_dout0,grp_fu_838_p_ce);  
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
input  [31:0] v66;
input  [5:0] v67;
output  [10:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [10:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [10:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [10:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
output  [3:0] v65_3_address0;
output   v65_3_ce0;
output   v65_3_we0;
output  [31:0] v65_3_d0;
input  [31:0] v65_3_q0;
output  [3:0] v65_3_address1;
output   v65_3_ce1;
output   v65_3_we1;
output  [31:0] v65_3_d1;
input  [31:0] v65_3_q1;
output  [3:0] v65_2_address0;
output   v65_2_ce0;
output   v65_2_we0;
output  [31:0] v65_2_d0;
input  [31:0] v65_2_q0;
output  [3:0] v65_2_address1;
output   v65_2_ce1;
output   v65_2_we1;
output  [31:0] v65_2_d1;
input  [31:0] v65_2_q1;
output  [3:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
input  [31:0] v65_1_q0;
output  [3:0] v65_1_address1;
output   v65_1_ce1;
output   v65_1_we1;
output  [31:0] v65_1_d1;
input  [31:0] v65_1_q1;
output  [3:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
input  [31:0] v65_0_q0;
output  [3:0] v65_0_address1;
output   v65_0_ce1;
output   v65_0_we1;
output  [31:0] v65_0_d1;
input  [31:0] v65_0_q1;
input  [31:0] v69;
input  [0:0] cmp10;
output  [31:0] v70_out;
output   v70_out_ap_vld;
output  [31:0] grp_fu_810_p_din0;
output  [31:0] grp_fu_810_p_din1;
output  [1:0] grp_fu_810_p_opcode;
input  [31:0] grp_fu_810_p_dout0;
output   grp_fu_810_p_ce;
output  [31:0] grp_fu_814_p_din0;
output  [31:0] grp_fu_814_p_din1;
output  [1:0] grp_fu_814_p_opcode;
input  [31:0] grp_fu_814_p_dout0;
output   grp_fu_814_p_ce;
output  [31:0] grp_fu_818_p_din0;
output  [31:0] grp_fu_818_p_din1;
output  [1:0] grp_fu_818_p_opcode;
input  [31:0] grp_fu_818_p_dout0;
output   grp_fu_818_p_ce;
output  [31:0] grp_fu_822_p_din0;
output  [31:0] grp_fu_822_p_din1;
output  [1:0] grp_fu_822_p_opcode;
input  [31:0] grp_fu_822_p_dout0;
output   grp_fu_822_p_ce;
output  [31:0] grp_fu_826_p_din0;
output  [31:0] grp_fu_826_p_din1;
input  [31:0] grp_fu_826_p_dout0;
output   grp_fu_826_p_ce;
output  [31:0] grp_fu_830_p_din0;
output  [31:0] grp_fu_830_p_din1;
input  [31:0] grp_fu_830_p_dout0;
output   grp_fu_830_p_ce;
output  [31:0] grp_fu_834_p_din0;
output  [31:0] grp_fu_834_p_din1;
input  [31:0] grp_fu_834_p_dout0;
output   grp_fu_834_p_ce;
output  [31:0] grp_fu_838_p_din0;
output  [31:0] grp_fu_838_p_din1;
input  [31:0] grp_fu_838_p_dout0;
output   grp_fu_838_p_ce;
reg ap_idle;
reg v70_out_ap_vld;
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
reg   [0:0] tmp_reg_1057;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_521;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_525;
reg   [31:0] reg_529;
reg   [31:0] reg_533;
reg   [31:0] reg_537;
reg   [31:0] reg_542;
reg   [31:0] reg_547;
reg   [31:0] reg_552;
reg   [6:0] v68_reg_1047;
wire   [0:0] tmp_fu_570_p3;
reg   [0:0] tmp_reg_1057_pp0_iter1_reg;
reg   [0:0] tmp_reg_1057_pp0_iter2_reg;
reg   [0:0] tmp_reg_1057_pp0_iter3_reg;
wire   [3:0] lshr_ln_fu_578_p4;
reg   [3:0] lshr_ln_reg_1061;
wire   [0:0] icmp_ln115_fu_651_p2;
reg   [0:0] icmp_ln115_reg_1086;
wire   [2:0] tmp_4_fu_656_p4;
reg   [2:0] tmp_4_reg_1091;
wire   [0:0] tmp_22_fu_665_p3;
reg   [0:0] tmp_22_reg_1096;
reg   [1:0] tmp_10_reg_1121;
reg   [0:0] tmp_24_reg_1131;
reg   [1:0] tmp_13_reg_1137;
wire   [31:0] v71_fu_732_p3;
reg   [31:0] v71_reg_1142;
wire   [31:0] v75_fu_742_p1;
wire   [31:0] v83_fu_747_p1;
wire   [31:0] v91_fu_752_p1;
wire   [31:0] v99_fu_757_p1;
wire   [31:0] v107_fu_799_p1;
wire   [31:0] v115_fu_804_p1;
wire   [31:0] v123_fu_809_p1;
wire   [31:0] v131_fu_814_p1;
reg   [3:0] v65_0_addr_reg_1230;
reg   [3:0] v65_0_addr_reg_1230_pp0_iter2_reg;
reg   [3:0] v65_0_addr_reg_1230_pp0_iter3_reg;
reg   [3:0] v65_1_addr_reg_1235;
reg   [3:0] v65_1_addr_reg_1235_pp0_iter2_reg;
reg   [3:0] v65_1_addr_reg_1235_pp0_iter3_reg;
reg   [3:0] v65_2_addr_reg_1240;
reg   [3:0] v65_2_addr_reg_1240_pp0_iter2_reg;
reg   [3:0] v65_2_addr_reg_1240_pp0_iter3_reg;
reg   [3:0] v65_3_addr_reg_1245;
reg   [3:0] v65_3_addr_reg_1245_pp0_iter2_reg;
reg   [3:0] v65_3_addr_reg_1245_pp0_iter3_reg;
reg   [3:0] v65_0_addr_1_reg_1250;
reg   [3:0] v65_0_addr_1_reg_1250_pp0_iter2_reg;
reg   [3:0] v65_0_addr_1_reg_1250_pp0_iter3_reg;
reg   [3:0] v65_1_addr_1_reg_1255;
reg   [3:0] v65_1_addr_1_reg_1255_pp0_iter2_reg;
reg   [3:0] v65_1_addr_1_reg_1255_pp0_iter3_reg;
reg   [3:0] v65_2_addr_1_reg_1260;
reg   [3:0] v65_2_addr_1_reg_1260_pp0_iter2_reg;
reg   [3:0] v65_2_addr_1_reg_1260_pp0_iter3_reg;
reg   [3:0] v65_3_addr_1_reg_1265;
reg   [3:0] v65_3_addr_1_reg_1265_pp0_iter2_reg;
reg   [3:0] v65_3_addr_1_reg_1265_pp0_iter3_reg;
wire   [31:0] v75_8_fu_870_p1;
wire   [31:0] v83_8_fu_875_p1;
wire   [31:0] v91_8_fu_880_p1;
wire   [31:0] v99_8_fu_885_p1;
reg   [31:0] v73_reg_1290;
reg   [31:0] v76_reg_1295;
reg   [31:0] v84_reg_1300;
reg   [31:0] v92_reg_1305;
reg   [31:0] v100_reg_1310;
reg   [3:0] v65_0_addr_2_reg_1315;
reg   [3:0] v65_0_addr_2_reg_1315_pp0_iter2_reg;
reg   [3:0] v65_0_addr_2_reg_1315_pp0_iter3_reg;
reg   [3:0] v65_1_addr_2_reg_1320;
reg   [3:0] v65_1_addr_2_reg_1320_pp0_iter2_reg;
reg   [3:0] v65_1_addr_2_reg_1320_pp0_iter3_reg;
reg   [3:0] v65_2_addr_2_reg_1325;
reg   [3:0] v65_2_addr_2_reg_1325_pp0_iter2_reg;
reg   [3:0] v65_2_addr_2_reg_1325_pp0_iter3_reg;
reg   [3:0] v65_3_addr_2_reg_1330;
reg   [3:0] v65_3_addr_2_reg_1330_pp0_iter2_reg;
reg   [3:0] v65_3_addr_2_reg_1330_pp0_iter3_reg;
reg   [3:0] v65_0_addr_3_reg_1335;
reg   [3:0] v65_0_addr_3_reg_1335_pp0_iter2_reg;
reg   [3:0] v65_0_addr_3_reg_1335_pp0_iter3_reg;
reg   [3:0] v65_0_addr_3_reg_1335_pp0_iter4_reg;
wire   [31:0] v107_8_fu_921_p1;
reg   [3:0] v65_1_addr_3_reg_1345;
reg   [3:0] v65_1_addr_3_reg_1345_pp0_iter2_reg;
reg   [3:0] v65_1_addr_3_reg_1345_pp0_iter3_reg;
reg   [3:0] v65_1_addr_3_reg_1345_pp0_iter4_reg;
wire   [31:0] v115_8_fu_926_p1;
reg   [3:0] v65_2_addr_3_reg_1355;
reg   [3:0] v65_2_addr_3_reg_1355_pp0_iter2_reg;
reg   [3:0] v65_2_addr_3_reg_1355_pp0_iter3_reg;
reg   [3:0] v65_2_addr_3_reg_1355_pp0_iter4_reg;
wire   [31:0] v123_8_fu_931_p1;
reg   [3:0] v65_3_addr_3_reg_1365;
reg   [3:0] v65_3_addr_3_reg_1365_pp0_iter2_reg;
reg   [3:0] v65_3_addr_3_reg_1365_pp0_iter3_reg;
reg   [3:0] v65_3_addr_3_reg_1365_pp0_iter4_reg;
wire   [31:0] v131_8_fu_936_p1;
reg   [31:0] v81_reg_1375;
reg   [31:0] v89_reg_1380;
reg   [31:0] v97_reg_1385;
wire   [31:0] grp_fu_493_p3;
reg   [31:0] v106_reg_1390;
wire   [31:0] grp_fu_500_p3;
reg   [31:0] v114_reg_1395;
wire   [31:0] grp_fu_507_p3;
reg   [31:0] v122_reg_1400;
wire   [31:0] grp_fu_514_p3;
reg   [31:0] v130_reg_1405;
wire   [31:0] v74_fu_941_p3;
reg   [31:0] v108_reg_1415;
reg   [31:0] v116_reg_1420;
reg   [31:0] v124_reg_1425;
reg   [31:0] v132_reg_1430;
wire   [31:0] v82_fu_948_p3;
wire   [31:0] v90_fu_955_p3;
wire   [31:0] v98_fu_962_p3;
wire   [31:0] v74_9_fu_969_p3;
reg   [31:0] v74_9_reg_1450;
wire   [31:0] v82_9_fu_976_p3;
reg   [31:0] v82_9_reg_1455;
wire   [31:0] v90_9_fu_983_p3;
reg   [31:0] v90_9_reg_1460;
wire   [31:0] v98_9_fu_990_p3;
reg   [31:0] v98_9_reg_1465;
reg   [31:0] v106_9_reg_1470;
reg   [31:0] v114_9_reg_1475;
reg   [31:0] v122_9_reg_1480;
reg   [31:0] v130_9_reg_1485;
reg   [31:0] v76_1_reg_1490;
reg   [31:0] v84_1_reg_1495;
reg   [31:0] v92_1_reg_1500;
reg   [31:0] v100_1_reg_1505;
reg   [31:0] v108_1_reg_1510;
reg   [31:0] v116_1_reg_1515;
reg   [31:0] v124_1_reg_1520;
reg   [31:0] v132_1_reg_1525;
reg   [31:0] v109_reg_1530;
reg   [31:0] v117_reg_1535;
reg   [31:0] v125_reg_1540;
reg   [31:0] v133_reg_1545;
reg   [31:0] v109_1_reg_1550;
reg   [31:0] v117_1_reg_1555;
reg   [31:0] v125_1_reg_1560;
reg   [31:0] v133_1_reg_1565;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln119_fu_618_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln137_fu_634_p1;
wire   [63:0] zext_ln155_fu_683_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln173_fu_698_p1;
wire   [63:0] zext_ln119_1_fu_771_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln137_1_fu_788_p1;
wire   [63:0] zext_ln155_1_fu_828_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln173_1_fu_842_p1;
wire   [63:0] zext_ln113_fu_848_p1;
wire   [63:0] zext_ln152_fu_862_p1;
wire   [63:0] zext_ln110_fu_898_p1;
wire   [63:0] zext_ln152_1_fu_913_p1;
reg   [31:0] v66_7_fu_112;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v126_fu_116;
wire   [6:0] add_ln112_fu_640_p2;
reg   [6:0] ap_sig_allocacmp_v68;
wire    ap_block_pp0_stage3_01001;
reg    v138_0_ce1_local;
reg   [10:0] v138_0_address1_local;
reg    v138_0_ce0_local;
reg   [10:0] v138_0_address0_local;
reg    v138_1_ce1_local;
reg   [10:0] v138_1_address1_local;
reg    v138_1_ce0_local;
reg   [10:0] v138_1_address0_local;
reg    v65_0_ce1_local;
reg   [3:0] v65_0_address1_local;
reg    v65_0_ce0_local;
reg   [3:0] v65_0_address0_local;
reg    v65_0_we1_local;
reg    v65_0_we0_local;
reg   [31:0] v65_0_d0_local;
reg    v65_1_ce1_local;
reg   [3:0] v65_1_address1_local;
reg    v65_1_ce0_local;
reg   [3:0] v65_1_address0_local;
reg    v65_1_we1_local;
reg    v65_1_we0_local;
reg   [31:0] v65_1_d0_local;
reg    v65_2_ce1_local;
reg   [3:0] v65_2_address1_local;
reg    v65_2_ce0_local;
reg   [3:0] v65_2_address0_local;
reg    v65_2_we1_local;
reg    v65_2_we0_local;
reg   [31:0] v65_2_d0_local;
reg    v65_3_ce1_local;
reg   [3:0] v65_3_address1_local;
reg    v65_3_ce0_local;
reg   [3:0] v65_3_address0_local;
reg    v65_3_we1_local;
reg    v65_3_we0_local;
reg   [31:0] v65_3_d0_local;
reg   [31:0] grp_fu_461_p0;
reg   [31:0] grp_fu_461_p1;
reg   [31:0] grp_fu_465_p0;
reg   [31:0] grp_fu_465_p1;
reg   [31:0] grp_fu_469_p0;
reg   [31:0] grp_fu_469_p1;
reg   [31:0] grp_fu_473_p0;
reg   [31:0] grp_fu_473_p1;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
reg   [31:0] grp_fu_481_p0;
reg   [31:0] grp_fu_481_p1;
reg   [31:0] grp_fu_485_p0;
reg   [31:0] grp_fu_485_p1;
reg   [31:0] grp_fu_489_p0;
reg   [31:0] grp_fu_489_p1;
wire   [4:0] tmp_cast_fu_598_p4;
wire   [4:0] lshr_ln113_1_fu_588_p4;
wire   [10:0] tmp_1_fu_608_p4;
wire   [10:0] tmp_3_fu_624_p4;
wire   [10:0] tmp_7_fu_672_p5;
wire   [10:0] tmp_9_fu_689_p4;
wire   [10:0] tmp_14_fu_762_p5;
wire   [10:0] tmp_17_fu_777_p6;
wire   [10:0] tmp_21_fu_819_p5;
wire   [10:0] tmp_23_fu_834_p4;
wire   [3:0] or_ln_fu_855_p3;
wire   [3:0] or_ln1_fu_890_p4;
wire   [3:0] or_ln152_2_fu_906_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v66_7_fu_112 = 32'd0;
#0 v126_fu_116 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_570_p3 == 1'd0))) begin
            v126_fu_116 <= add_ln112_fu_640_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v126_fu_116 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_7_fu_112 <= v66;
    end else if (((tmp_reg_1057 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_7_fu_112 <= v71_fu_732_p3;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln115_reg_1086 <= icmp_ln115_fu_651_p2;
        tmp_10_reg_1121 <= {{v68_reg_1047[5:4]}};
        tmp_13_reg_1137 <= {{v68_reg_1047[2:1]}};
        tmp_22_reg_1096 <= v68_reg_1047[32'd1];
        tmp_24_reg_1131 <= v68_reg_1047[32'd2];
        tmp_4_reg_1091 <= {{v68_reg_1047[5:3]}};
        v65_0_addr_2_reg_1315[0] <= zext_ln110_fu_898_p1[0];
v65_0_addr_2_reg_1315[3 : 2] <= zext_ln110_fu_898_p1[3 : 2];
        v65_0_addr_2_reg_1315_pp0_iter2_reg[0] <= v65_0_addr_2_reg_1315[0];
v65_0_addr_2_reg_1315_pp0_iter2_reg[3 : 2] <= v65_0_addr_2_reg_1315[3 : 2];
        v65_0_addr_2_reg_1315_pp0_iter3_reg[0] <= v65_0_addr_2_reg_1315_pp0_iter2_reg[0];
v65_0_addr_2_reg_1315_pp0_iter3_reg[3 : 2] <= v65_0_addr_2_reg_1315_pp0_iter2_reg[3 : 2];
        v65_0_addr_3_reg_1335[3 : 2] <= zext_ln152_1_fu_913_p1[3 : 2];
        v65_0_addr_3_reg_1335_pp0_iter2_reg[3 : 2] <= v65_0_addr_3_reg_1335[3 : 2];
        v65_0_addr_3_reg_1335_pp0_iter3_reg[3 : 2] <= v65_0_addr_3_reg_1335_pp0_iter2_reg[3 : 2];
        v65_0_addr_3_reg_1335_pp0_iter4_reg[3 : 2] <= v65_0_addr_3_reg_1335_pp0_iter3_reg[3 : 2];
        v65_1_addr_2_reg_1320[0] <= zext_ln110_fu_898_p1[0];
v65_1_addr_2_reg_1320[3 : 2] <= zext_ln110_fu_898_p1[3 : 2];
        v65_1_addr_2_reg_1320_pp0_iter2_reg[0] <= v65_1_addr_2_reg_1320[0];
v65_1_addr_2_reg_1320_pp0_iter2_reg[3 : 2] <= v65_1_addr_2_reg_1320[3 : 2];
        v65_1_addr_2_reg_1320_pp0_iter3_reg[0] <= v65_1_addr_2_reg_1320_pp0_iter2_reg[0];
v65_1_addr_2_reg_1320_pp0_iter3_reg[3 : 2] <= v65_1_addr_2_reg_1320_pp0_iter2_reg[3 : 2];
        v65_1_addr_3_reg_1345[3 : 2] <= zext_ln152_1_fu_913_p1[3 : 2];
        v65_1_addr_3_reg_1345_pp0_iter2_reg[3 : 2] <= v65_1_addr_3_reg_1345[3 : 2];
        v65_1_addr_3_reg_1345_pp0_iter3_reg[3 : 2] <= v65_1_addr_3_reg_1345_pp0_iter2_reg[3 : 2];
        v65_1_addr_3_reg_1345_pp0_iter4_reg[3 : 2] <= v65_1_addr_3_reg_1345_pp0_iter3_reg[3 : 2];
        v65_2_addr_2_reg_1325[0] <= zext_ln110_fu_898_p1[0];
v65_2_addr_2_reg_1325[3 : 2] <= zext_ln110_fu_898_p1[3 : 2];
        v65_2_addr_2_reg_1325_pp0_iter2_reg[0] <= v65_2_addr_2_reg_1325[0];
v65_2_addr_2_reg_1325_pp0_iter2_reg[3 : 2] <= v65_2_addr_2_reg_1325[3 : 2];
        v65_2_addr_2_reg_1325_pp0_iter3_reg[0] <= v65_2_addr_2_reg_1325_pp0_iter2_reg[0];
v65_2_addr_2_reg_1325_pp0_iter3_reg[3 : 2] <= v65_2_addr_2_reg_1325_pp0_iter2_reg[3 : 2];
        v65_2_addr_3_reg_1355[3 : 2] <= zext_ln152_1_fu_913_p1[3 : 2];
        v65_2_addr_3_reg_1355_pp0_iter2_reg[3 : 2] <= v65_2_addr_3_reg_1355[3 : 2];
        v65_2_addr_3_reg_1355_pp0_iter3_reg[3 : 2] <= v65_2_addr_3_reg_1355_pp0_iter2_reg[3 : 2];
        v65_2_addr_3_reg_1355_pp0_iter4_reg[3 : 2] <= v65_2_addr_3_reg_1355_pp0_iter3_reg[3 : 2];
        v65_3_addr_2_reg_1330[0] <= zext_ln110_fu_898_p1[0];
v65_3_addr_2_reg_1330[3 : 2] <= zext_ln110_fu_898_p1[3 : 2];
        v65_3_addr_2_reg_1330_pp0_iter2_reg[0] <= v65_3_addr_2_reg_1330[0];
v65_3_addr_2_reg_1330_pp0_iter2_reg[3 : 2] <= v65_3_addr_2_reg_1330[3 : 2];
        v65_3_addr_2_reg_1330_pp0_iter3_reg[0] <= v65_3_addr_2_reg_1330_pp0_iter2_reg[0];
v65_3_addr_2_reg_1330_pp0_iter3_reg[3 : 2] <= v65_3_addr_2_reg_1330_pp0_iter2_reg[3 : 2];
        v65_3_addr_3_reg_1365[3 : 2] <= zext_ln152_1_fu_913_p1[3 : 2];
        v65_3_addr_3_reg_1365_pp0_iter2_reg[3 : 2] <= v65_3_addr_3_reg_1365[3 : 2];
        v65_3_addr_3_reg_1365_pp0_iter3_reg[3 : 2] <= v65_3_addr_3_reg_1365_pp0_iter2_reg[3 : 2];
        v65_3_addr_3_reg_1365_pp0_iter4_reg[3 : 2] <= v65_3_addr_3_reg_1365_pp0_iter3_reg[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_1061 <= {{ap_sig_allocacmp_v68[5:2]}};
        tmp_reg_1057 <= ap_sig_allocacmp_v68[32'd6];
        tmp_reg_1057_pp0_iter1_reg <= tmp_reg_1057;
        tmp_reg_1057_pp0_iter2_reg <= tmp_reg_1057_pp0_iter1_reg;
        tmp_reg_1057_pp0_iter3_reg <= tmp_reg_1057_pp0_iter2_reg;
        v65_0_addr_1_reg_1250[3 : 1] <= zext_ln152_fu_862_p1[3 : 1];
        v65_0_addr_1_reg_1250_pp0_iter2_reg[3 : 1] <= v65_0_addr_1_reg_1250[3 : 1];
        v65_0_addr_1_reg_1250_pp0_iter3_reg[3 : 1] <= v65_0_addr_1_reg_1250_pp0_iter2_reg[3 : 1];
        v65_0_addr_reg_1230 <= zext_ln113_fu_848_p1;
        v65_0_addr_reg_1230_pp0_iter2_reg <= v65_0_addr_reg_1230;
        v65_0_addr_reg_1230_pp0_iter3_reg <= v65_0_addr_reg_1230_pp0_iter2_reg;
        v65_1_addr_1_reg_1255[3 : 1] <= zext_ln152_fu_862_p1[3 : 1];
        v65_1_addr_1_reg_1255_pp0_iter2_reg[3 : 1] <= v65_1_addr_1_reg_1255[3 : 1];
        v65_1_addr_1_reg_1255_pp0_iter3_reg[3 : 1] <= v65_1_addr_1_reg_1255_pp0_iter2_reg[3 : 1];
        v65_1_addr_reg_1235 <= zext_ln113_fu_848_p1;
        v65_1_addr_reg_1235_pp0_iter2_reg <= v65_1_addr_reg_1235;
        v65_1_addr_reg_1235_pp0_iter3_reg <= v65_1_addr_reg_1235_pp0_iter2_reg;
        v65_2_addr_1_reg_1260[3 : 1] <= zext_ln152_fu_862_p1[3 : 1];
        v65_2_addr_1_reg_1260_pp0_iter2_reg[3 : 1] <= v65_2_addr_1_reg_1260[3 : 1];
        v65_2_addr_1_reg_1260_pp0_iter3_reg[3 : 1] <= v65_2_addr_1_reg_1260_pp0_iter2_reg[3 : 1];
        v65_2_addr_reg_1240 <= zext_ln113_fu_848_p1;
        v65_2_addr_reg_1240_pp0_iter2_reg <= v65_2_addr_reg_1240;
        v65_2_addr_reg_1240_pp0_iter3_reg <= v65_2_addr_reg_1240_pp0_iter2_reg;
        v65_3_addr_1_reg_1265[3 : 1] <= zext_ln152_fu_862_p1[3 : 1];
        v65_3_addr_1_reg_1265_pp0_iter2_reg[3 : 1] <= v65_3_addr_1_reg_1265[3 : 1];
        v65_3_addr_1_reg_1265_pp0_iter3_reg[3 : 1] <= v65_3_addr_1_reg_1265_pp0_iter2_reg[3 : 1];
        v65_3_addr_reg_1245 <= zext_ln113_fu_848_p1;
        v65_3_addr_reg_1245_pp0_iter2_reg <= v65_3_addr_reg_1245;
        v65_3_addr_reg_1245_pp0_iter3_reg <= v65_3_addr_reg_1245_pp0_iter2_reg;
        v68_reg_1047 <= ap_sig_allocacmp_v68;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_521 <= v138_0_q1;
        reg_525 <= v138_1_q1;
        reg_529 <= v138_0_q0;
        reg_533 <= v138_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_537 <= grp_fu_810_p_dout0;
        reg_542 <= grp_fu_814_p_dout0;
        reg_547 <= grp_fu_818_p_dout0;
        reg_552 <= grp_fu_822_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v100_1_reg_1505 <= grp_fu_838_p_dout0;
        v76_1_reg_1490 <= grp_fu_826_p_dout0;
        v84_1_reg_1495 <= grp_fu_830_p_dout0;
        v92_1_reg_1500 <= grp_fu_834_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v100_reg_1310 <= grp_fu_838_p_dout0;
        v106_reg_1390 <= grp_fu_493_p3;
        v114_reg_1395 <= grp_fu_500_p3;
        v122_reg_1400 <= grp_fu_507_p3;
        v130_reg_1405 <= grp_fu_514_p3;
        v73_reg_1290 <= v65_0_q1;
        v76_reg_1295 <= grp_fu_826_p_dout0;
        v81_reg_1375 <= v65_1_q1;
        v84_reg_1300 <= grp_fu_830_p_dout0;
        v89_reg_1380 <= v65_2_q1;
        v92_reg_1305 <= grp_fu_834_p_dout0;
        v97_reg_1385 <= v65_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v106_9_reg_1470 <= grp_fu_493_p3;
        v108_reg_1415 <= grp_fu_826_p_dout0;
        v114_9_reg_1475 <= grp_fu_500_p3;
        v116_reg_1420 <= grp_fu_830_p_dout0;
        v122_9_reg_1480 <= grp_fu_507_p3;
        v124_reg_1425 <= grp_fu_834_p_dout0;
        v130_9_reg_1485 <= grp_fu_514_p3;
        v132_reg_1430 <= grp_fu_838_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v108_1_reg_1510 <= grp_fu_826_p_dout0;
        v116_1_reg_1515 <= grp_fu_830_p_dout0;
        v124_1_reg_1520 <= grp_fu_834_p_dout0;
        v132_1_reg_1525 <= grp_fu_838_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v109_1_reg_1550 <= grp_fu_810_p_dout0;
        v117_1_reg_1555 <= grp_fu_814_p_dout0;
        v125_1_reg_1560 <= grp_fu_818_p_dout0;
        v133_1_reg_1565 <= grp_fu_822_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v109_reg_1530 <= grp_fu_810_p_dout0;
        v117_reg_1535 <= grp_fu_814_p_dout0;
        v125_reg_1540 <= grp_fu_818_p_dout0;
        v133_reg_1545 <= grp_fu_822_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v71_reg_1142 <= v71_fu_732_p3;
        v74_9_reg_1450 <= v74_9_fu_969_p3;
        v82_9_reg_1455 <= v82_9_fu_976_p3;
        v90_9_reg_1460 <= v90_9_fu_983_p3;
        v98_9_reg_1465 <= v98_9_fu_990_p3;
    end
end
always @ (*) begin
    if (((tmp_reg_1057 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v68 = 7'd0;
    end else begin
        ap_sig_allocacmp_v68 = v126_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p0 = v106_9_reg_1470;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p0 = v74_9_reg_1450;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_461_p0 = v106_reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_461_p0 = v74_fu_941_p3;
    end else begin
        grp_fu_461_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p1 = v108_1_reg_1510;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p1 = v76_1_reg_1490;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_461_p1 = v108_reg_1415;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_461_p1 = v76_reg_1295;
    end else begin
        grp_fu_461_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p0 = v114_9_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p0 = v82_9_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_465_p0 = v114_reg_1395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_465_p0 = v82_fu_948_p3;
    end else begin
        grp_fu_465_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p1 = v116_1_reg_1515;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p1 = v84_1_reg_1495;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_465_p1 = v116_reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_465_p1 = v84_reg_1300;
    end else begin
        grp_fu_465_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p0 = v122_9_reg_1480;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p0 = v90_9_reg_1460;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p0 = v122_reg_1400;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p0 = v90_fu_955_p3;
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p1 = v124_1_reg_1520;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p1 = v92_1_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p1 = v124_reg_1425;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p1 = v92_reg_1305;
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = v130_9_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = v98_9_reg_1465;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p0 = v130_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = v98_fu_962_p3;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = v132_1_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = v100_1_reg_1505;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p1 = v132_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p1 = v100_reg_1310;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v107_8_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v75_8_fu_870_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v107_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v75_fu_742_p1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_477_p1 = v71_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p1 = v71_fu_732_p3;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v115_8_fu_926_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v83_8_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_481_p0 = v115_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v83_fu_747_p1;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_481_p1 = v71_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p1 = v71_fu_732_p3;
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p0 = v123_8_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p0 = v91_8_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_485_p0 = v123_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p0 = v91_fu_752_p1;
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_485_p1 = v71_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p1 = v71_fu_732_p3;
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p0 = v131_8_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p0 = v99_8_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_489_p0 = v131_fu_814_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p0 = v99_fu_757_p1;
    end else begin
        grp_fu_489_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_489_p1 = v71_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p1 = v71_fu_732_p3;
    end else begin
        grp_fu_489_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address0_local = zext_ln173_1_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address0_local = zext_ln137_1_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address0_local = zext_ln173_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address0_local = zext_ln137_fu_634_p1;
        end else begin
            v138_0_address0_local = 'bx;
        end
    end else begin
        v138_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_0_address1_local = zext_ln155_1_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_0_address1_local = zext_ln119_1_fu_771_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_0_address1_local = zext_ln155_fu_683_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_0_address1_local = zext_ln119_fu_618_p1;
        end else begin
            v138_0_address1_local = 'bx;
        end
    end else begin
        v138_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_0_ce0_local = 1'b1;
    end else begin
        v138_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_0_ce1_local = 1'b1;
    end else begin
        v138_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_1_address0_local = zext_ln173_1_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address0_local = zext_ln137_1_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address0_local = zext_ln173_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address0_local = zext_ln137_fu_634_p1;
        end else begin
            v138_1_address0_local = 'bx;
        end
    end else begin
        v138_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v138_1_address1_local = zext_ln155_1_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v138_1_address1_local = zext_ln119_1_fu_771_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v138_1_address1_local = zext_ln155_fu_683_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v138_1_address1_local = zext_ln119_fu_618_p1;
        end else begin
            v138_1_address1_local = 'bx;
        end
    end else begin
        v138_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_1_ce0_local = 1'b1;
    end else begin
        v138_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v138_1_ce1_local = 1'b1;
    end else begin
        v138_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address0_local = v65_0_addr_3_reg_1335_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_1_reg_1250_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln152_1_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln152_fu_862_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_2_reg_1315_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_1230_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln110_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_848_p1;
    end else begin
        v65_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_d0_local = v109_1_reg_1550;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_d0_local = v109_reg_1530;
    end else begin
        v65_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we0_local = 1'b1;
    end else begin
        v65_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we1_local = 1'b1;
    end else begin
        v65_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address0_local = v65_1_addr_3_reg_1345_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_1_reg_1255_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln152_1_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln152_fu_862_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_2_reg_1320_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_1235_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln110_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_848_p1;
    end else begin
        v65_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_d0_local = v117_1_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_d0_local = v117_reg_1535;
    end else begin
        v65_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we0_local = 1'b1;
    end else begin
        v65_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we1_local = 1'b1;
    end else begin
        v65_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_2_address0_local = v65_2_addr_3_reg_1355_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_2_address0_local = v65_2_addr_1_reg_1260_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_2_address0_local = zext_ln152_1_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_2_address0_local = zext_ln152_fu_862_p1;
    end else begin
        v65_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_2_address1_local = v65_2_addr_2_reg_1325_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_2_address1_local = v65_2_addr_reg_1240_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_2_address1_local = zext_ln110_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_2_address1_local = zext_ln113_fu_848_p1;
    end else begin
        v65_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_2_ce0_local = 1'b1;
    end else begin
        v65_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_2_ce1_local = 1'b1;
    end else begin
        v65_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_2_d0_local = v125_1_reg_1560;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_2_d0_local = v125_reg_1540;
    end else begin
        v65_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_2_we0_local = 1'b1;
    end else begin
        v65_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_2_we1_local = 1'b1;
    end else begin
        v65_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_3_address0_local = v65_3_addr_3_reg_1365_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_3_address0_local = v65_3_addr_1_reg_1265_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_3_address0_local = zext_ln152_1_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_3_address0_local = zext_ln152_fu_862_p1;
    end else begin
        v65_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_3_address1_local = v65_3_addr_2_reg_1330_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_3_address1_local = v65_3_addr_reg_1245_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_3_address1_local = zext_ln110_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_3_address1_local = zext_ln113_fu_848_p1;
    end else begin
        v65_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_3_ce0_local = 1'b1;
    end else begin
        v65_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v65_3_ce1_local = 1'b1;
    end else begin
        v65_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_3_d0_local = v133_1_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_3_d0_local = v133_reg_1545;
    end else begin
        v65_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_3_we0_local = 1'b1;
    end else begin
        v65_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_3_we1_local = 1'b1;
    end else begin
        v65_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (tmp_reg_1057_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v70_out_ap_vld = 1'b1;
    end else begin
        v70_out_ap_vld = 1'b0;
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
assign add_ln112_fu_640_p2 = (ap_sig_allocacmp_v68 + 7'd16);
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
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_493_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign grp_fu_500_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign grp_fu_507_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_2_q0);
assign grp_fu_514_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_3_q0);
assign grp_fu_810_p_ce = 1'b1;
assign grp_fu_810_p_din0 = grp_fu_461_p0;
assign grp_fu_810_p_din1 = grp_fu_461_p1;
assign grp_fu_810_p_opcode = 2'd0;
assign grp_fu_814_p_ce = 1'b1;
assign grp_fu_814_p_din0 = grp_fu_465_p0;
assign grp_fu_814_p_din1 = grp_fu_465_p1;
assign grp_fu_814_p_opcode = 2'd0;
assign grp_fu_818_p_ce = 1'b1;
assign grp_fu_818_p_din0 = grp_fu_469_p0;
assign grp_fu_818_p_din1 = grp_fu_469_p1;
assign grp_fu_818_p_opcode = 2'd0;
assign grp_fu_822_p_ce = 1'b1;
assign grp_fu_822_p_din0 = grp_fu_473_p0;
assign grp_fu_822_p_din1 = grp_fu_473_p1;
assign grp_fu_822_p_opcode = 2'd0;
assign grp_fu_826_p_ce = 1'b1;
assign grp_fu_826_p_din0 = grp_fu_477_p0;
assign grp_fu_826_p_din1 = grp_fu_477_p1;
assign grp_fu_830_p_ce = 1'b1;
assign grp_fu_830_p_din0 = grp_fu_481_p0;
assign grp_fu_830_p_din1 = grp_fu_481_p1;
assign grp_fu_834_p_ce = 1'b1;
assign grp_fu_834_p_din0 = grp_fu_485_p0;
assign grp_fu_834_p_din1 = grp_fu_485_p1;
assign grp_fu_838_p_ce = 1'b1;
assign grp_fu_838_p_din0 = grp_fu_489_p0;
assign grp_fu_838_p_din1 = grp_fu_489_p1;
assign icmp_ln115_fu_651_p2 = ((v68_reg_1047 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln113_1_fu_588_p4 = {{ap_sig_allocacmp_v68[5:1]}};
assign lshr_ln_fu_578_p4 = {{ap_sig_allocacmp_v68[5:2]}};
assign or_ln152_2_fu_906_p3 = {{tmp_10_reg_1121}, {2'd3}};
assign or_ln1_fu_890_p4 = {{{tmp_10_reg_1121}, {1'd1}}, {tmp_24_reg_1131}};
assign or_ln_fu_855_p3 = {{tmp_4_reg_1091}, {1'd1}};
assign tmp_14_fu_762_p5 = {{{{v67}, {tmp_10_reg_1121}}, {1'd1}}, {tmp_13_reg_1137}};
assign tmp_17_fu_777_p6 = {{{{{v67}, {tmp_10_reg_1121}}, {1'd1}}, {tmp_24_reg_1131}}, {1'd1}};
assign tmp_1_fu_608_p4 = {{{tmp_cast_fu_598_p4}, {1'd0}}, {lshr_ln113_1_fu_588_p4}};
assign tmp_21_fu_819_p5 = {{{{v67}, {tmp_10_reg_1121}}, {2'd3}}, {tmp_22_reg_1096}};
assign tmp_22_fu_665_p3 = v68_reg_1047[32'd1];
assign tmp_23_fu_834_p4 = {{{v67}, {tmp_10_reg_1121}}, {3'd7}};
assign tmp_3_fu_624_p4 = {{{v67}, {lshr_ln_fu_578_p4}}, {1'd1}};
assign tmp_4_fu_656_p4 = {{v68_reg_1047[5:3]}};
assign tmp_7_fu_672_p5 = {{{{v67}, {tmp_4_fu_656_p4}}, {1'd1}}, {tmp_22_fu_665_p3}};
assign tmp_9_fu_689_p4 = {{{v67}, {tmp_4_fu_656_p4}}, {2'd3}};
assign tmp_cast_fu_598_p4 = {{v67[5:1]}};
assign tmp_fu_570_p3 = ap_sig_allocacmp_v68[32'd6];
assign v107_8_fu_921_p1 = reg_521;
assign v107_fu_799_p1 = reg_521;
assign v115_8_fu_926_p1 = reg_525;
assign v115_fu_804_p1 = reg_525;
assign v123_8_fu_931_p1 = reg_529;
assign v123_fu_809_p1 = reg_529;
assign v131_8_fu_936_p1 = reg_533;
assign v131_fu_814_p1 = reg_533;
assign v138_0_address0 = v138_0_address0_local;
assign v138_0_address1 = v138_0_address1_local;
assign v138_0_ce0 = v138_0_ce0_local;
assign v138_0_ce1 = v138_0_ce1_local;
assign v138_1_address0 = v138_1_address0_local;
assign v138_1_address1 = v138_1_address1_local;
assign v138_1_ce0 = v138_1_ce0_local;
assign v138_1_ce1 = v138_1_ce1_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_537;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_542;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v65_2_address0 = v65_2_address0_local;
assign v65_2_address1 = v65_2_address1_local;
assign v65_2_ce0 = v65_2_ce0_local;
assign v65_2_ce1 = v65_2_ce1_local;
assign v65_2_d0 = v65_2_d0_local;
assign v65_2_d1 = reg_547;
assign v65_2_we0 = v65_2_we0_local;
assign v65_2_we1 = v65_2_we1_local;
assign v65_3_address0 = v65_3_address0_local;
assign v65_3_address1 = v65_3_address1_local;
assign v65_3_ce0 = v65_3_ce0_local;
assign v65_3_ce1 = v65_3_ce1_local;
assign v65_3_d0 = v65_3_d0_local;
assign v65_3_d1 = reg_552;
assign v65_3_we0 = v65_3_we0_local;
assign v65_3_we1 = v65_3_we1_local;
assign v70_out = v66_7_fu_112;
assign v71_fu_732_p3 = ((icmp_ln115_reg_1086[0:0] == 1'b1) ? v69 : v66_7_fu_112);
assign v74_9_fu_969_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign v74_fu_941_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v73_reg_1290);
assign v75_8_fu_870_p1 = reg_521;
assign v75_fu_742_p1 = reg_521;
assign v82_9_fu_976_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v82_fu_948_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v81_reg_1375);
assign v83_8_fu_875_p1 = reg_525;
assign v83_fu_747_p1 = reg_525;
assign v90_9_fu_983_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_2_q1);
assign v90_fu_955_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v89_reg_1380);
assign v91_8_fu_880_p1 = reg_529;
assign v91_fu_752_p1 = reg_529;
assign v98_9_fu_990_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v65_3_q1);
assign v98_fu_962_p3 = ((cmp10[0:0] == 1'b1) ? 32'd0 : v97_reg_1385);
assign v99_8_fu_885_p1 = reg_533;
assign v99_fu_757_p1 = reg_533;
assign zext_ln110_fu_898_p1 = or_ln1_fu_890_p4;
assign zext_ln113_fu_848_p1 = lshr_ln_reg_1061;
assign zext_ln119_1_fu_771_p1 = tmp_14_fu_762_p5;
assign zext_ln119_fu_618_p1 = tmp_1_fu_608_p4;
assign zext_ln137_1_fu_788_p1 = tmp_17_fu_777_p6;
assign zext_ln137_fu_634_p1 = tmp_3_fu_624_p4;
assign zext_ln152_1_fu_913_p1 = or_ln152_2_fu_906_p3;
assign zext_ln152_fu_862_p1 = or_ln_fu_855_p3;
assign zext_ln155_1_fu_828_p1 = tmp_21_fu_819_p5;
assign zext_ln155_fu_683_p1 = tmp_7_fu_672_p5;
assign zext_ln173_1_fu_842_p1 = tmp_23_fu_834_p4;
assign zext_ln173_fu_698_p1 = tmp_9_fu_689_p4;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_1250[0] <= 1'b1;
    v65_0_addr_1_reg_1250_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_1_reg_1250_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_1_reg_1255[0] <= 1'b1;
    v65_1_addr_1_reg_1255_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_1_reg_1255_pp0_iter3_reg[0] <= 1'b1;
    v65_2_addr_1_reg_1260[0] <= 1'b1;
    v65_2_addr_1_reg_1260_pp0_iter2_reg[0] <= 1'b1;
    v65_2_addr_1_reg_1260_pp0_iter3_reg[0] <= 1'b1;
    v65_3_addr_1_reg_1265[0] <= 1'b1;
    v65_3_addr_1_reg_1265_pp0_iter2_reg[0] <= 1'b1;
    v65_3_addr_1_reg_1265_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_2_reg_1315[1] <= 1'b1;
    v65_0_addr_2_reg_1315_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_2_reg_1315_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1320[1] <= 1'b1;
    v65_1_addr_2_reg_1320_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_1320_pp0_iter3_reg[1] <= 1'b1;
    v65_2_addr_2_reg_1325[1] <= 1'b1;
    v65_2_addr_2_reg_1325_pp0_iter2_reg[1] <= 1'b1;
    v65_2_addr_2_reg_1325_pp0_iter3_reg[1] <= 1'b1;
    v65_3_addr_2_reg_1330[1] <= 1'b1;
    v65_3_addr_2_reg_1330_pp0_iter2_reg[1] <= 1'b1;
    v65_3_addr_2_reg_1330_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_3_reg_1335[1:0] <= 2'b11;
    v65_0_addr_3_reg_1335_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_1335_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_1335_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1345[1:0] <= 2'b11;
    v65_1_addr_3_reg_1345_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1345_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_1345_pp0_iter4_reg[1:0] <= 2'b11;
    v65_2_addr_3_reg_1355[1:0] <= 2'b11;
    v65_2_addr_3_reg_1355_pp0_iter2_reg[1:0] <= 2'b11;
    v65_2_addr_3_reg_1355_pp0_iter3_reg[1:0] <= 2'b11;
    v65_2_addr_3_reg_1355_pp0_iter4_reg[1:0] <= 2'b11;
    v65_3_addr_3_reg_1365[1:0] <= 2'b11;
    v65_3_addr_3_reg_1365_pp0_iter2_reg[1:0] <= 2'b11;
    v65_3_addr_3_reg_1365_pp0_iter3_reg[1:0] <= 2'b11;
    v65_3_addr_3_reg_1365_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
