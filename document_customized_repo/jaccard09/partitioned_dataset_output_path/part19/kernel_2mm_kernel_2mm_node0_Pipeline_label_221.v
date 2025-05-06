
module kernel_2mm_kernel_2mm_node0_Pipeline_label_221 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,mul_ln34_3,mul_ln88_3,mul_ln140_3,v11_12,v24_12,v35_12,v46_12,v57_12,v68_12,v79_12,v90_12,v101_12,grp_fu_23405_p_din0,grp_fu_23405_p_din1,grp_fu_23405_p_opcode,grp_fu_23405_p_dout0,grp_fu_23405_p_ce,grp_fu_23409_p_din0,grp_fu_23409_p_din1,grp_fu_23409_p_opcode,grp_fu_23409_p_dout0,grp_fu_23409_p_ce,grp_fu_23413_p_din0,grp_fu_23413_p_din1,grp_fu_23413_p_opcode,grp_fu_23413_p_dout0,grp_fu_23413_p_ce,grp_fu_23417_p_din0,grp_fu_23417_p_din1,grp_fu_23417_p_dout0,grp_fu_23417_p_ce,grp_fu_23421_p_din0,grp_fu_23421_p_din1,grp_fu_23421_p_dout0,grp_fu_23421_p_ce,grp_fu_23425_p_din0,grp_fu_23425_p_din1,grp_fu_23425_p_dout0,grp_fu_23425_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [14:0] mul_ln38;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
input  [13:0] mul_ln34_3;
input  [13:0] mul_ln88_3;
input  [13:0] mul_ln140_3;
input  [31:0] v11_12;
input  [31:0] v24_12;
input  [31:0] v35_12;
input  [31:0] v46_12;
input  [31:0] v57_12;
input  [31:0] v68_12;
input  [31:0] v79_12;
input  [31:0] v90_12;
input  [31:0] v101_12;
output  [31:0] grp_fu_23405_p_din0;
output  [31:0] grp_fu_23405_p_din1;
output  [1:0] grp_fu_23405_p_opcode;
input  [31:0] grp_fu_23405_p_dout0;
output   grp_fu_23405_p_ce;
output  [31:0] grp_fu_23409_p_din0;
output  [31:0] grp_fu_23409_p_din1;
output  [1:0] grp_fu_23409_p_opcode;
input  [31:0] grp_fu_23409_p_dout0;
output   grp_fu_23409_p_ce;
output  [31:0] grp_fu_23413_p_din0;
output  [31:0] grp_fu_23413_p_din1;
output  [1:0] grp_fu_23413_p_opcode;
input  [31:0] grp_fu_23413_p_dout0;
output   grp_fu_23413_p_ce;
output  [31:0] grp_fu_23417_p_din0;
output  [31:0] grp_fu_23417_p_din1;
input  [31:0] grp_fu_23417_p_dout0;
output   grp_fu_23417_p_ce;
output  [31:0] grp_fu_23421_p_din0;
output  [31:0] grp_fu_23421_p_din1;
input  [31:0] grp_fu_23421_p_dout0;
output   grp_fu_23421_p_ce;
output  [31:0] grp_fu_23425_p_din0;
output  [31:0] grp_fu_23425_p_din1;
input  [31:0] grp_fu_23425_p_dout0;
output   grp_fu_23425_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln33_reg_823;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_386;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_390;
reg   [31:0] reg_394;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_399;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_403;
reg   [31:0] reg_407;
reg   [31:0] reg_411;
reg   [31:0] reg_415;
reg   [31:0] reg_419;
reg   [7:0] v7_4_reg_818;
wire   [0:0] icmp_ln33_fu_431_p2;
wire   [13:0] zext_ln38_fu_437_p1;
reg   [13:0] zext_ln38_reg_827;
reg   [13:0] zext_ln38_reg_827_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_838;
reg   [13:0] v229_0_addr_reg_838_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_838_pp0_iter2_reg;
reg   [13:0] v229_1_addr_reg_843;
reg   [13:0] v229_1_addr_reg_843_pp0_iter1_reg;
reg   [13:0] v229_1_addr_reg_843_pp0_iter2_reg;
reg   [13:0] v229_2_addr_reg_848;
reg   [13:0] v229_2_addr_reg_848_pp0_iter1_reg;
reg   [13:0] v229_2_addr_reg_848_pp0_iter2_reg;
reg   [13:0] v229_3_addr_reg_853;
reg   [13:0] v229_3_addr_reg_853_pp0_iter1_reg;
reg   [13:0] v229_3_addr_reg_853_pp0_iter2_reg;
wire   [13:0] zext_ln45_fu_488_p1;
reg   [13:0] zext_ln45_reg_859;
reg   [13:0] zext_ln45_reg_859_pp0_iter1_reg;
reg   [13:0] v229_0_addr_12_reg_870;
reg   [13:0] v229_0_addr_12_reg_870_pp0_iter1_reg;
reg   [13:0] v229_0_addr_12_reg_870_pp0_iter2_reg;
reg   [13:0] v229_1_addr_13_reg_875;
reg   [13:0] v229_1_addr_13_reg_875_pp0_iter1_reg;
reg   [13:0] v229_1_addr_13_reg_875_pp0_iter2_reg;
reg   [13:0] v229_2_addr_13_reg_880;
reg   [13:0] v229_2_addr_13_reg_880_pp0_iter1_reg;
reg   [13:0] v229_2_addr_13_reg_880_pp0_iter2_reg;
reg   [13:0] v229_3_addr_13_reg_885;
reg   [13:0] v229_3_addr_13_reg_885_pp0_iter1_reg;
reg   [13:0] v229_3_addr_13_reg_885_pp0_iter2_reg;
reg   [13:0] v229_0_addr_10_reg_891;
reg   [13:0] v229_0_addr_10_reg_891_pp0_iter1_reg;
reg   [13:0] v229_0_addr_10_reg_891_pp0_iter2_reg;
reg   [13:0] v229_1_addr_12_reg_896;
reg   [13:0] v229_1_addr_12_reg_896_pp0_iter1_reg;
reg   [13:0] v229_1_addr_12_reg_896_pp0_iter2_reg;
reg   [13:0] v229_2_addr_12_reg_901;
reg   [13:0] v229_2_addr_12_reg_901_pp0_iter1_reg;
reg   [13:0] v229_2_addr_12_reg_901_pp0_iter2_reg;
reg   [13:0] v229_3_addr_12_reg_906;
reg   [13:0] v229_3_addr_12_reg_906_pp0_iter1_reg;
reg   [13:0] v229_3_addr_12_reg_906_pp0_iter2_reg;
reg   [31:0] v229_0_load_reg_911;
reg   [31:0] v228_1_load_reg_916;
reg   [31:0] v229_0_load_10_reg_921;
reg   [31:0] v228_1_load_4_reg_926;
reg   [31:0] v229_1_load_reg_931;
reg   [31:0] v229_1_load_12_reg_936;
reg   [31:0] v229_2_load_reg_941;
reg   [31:0] v229_2_load_12_reg_946;
wire   [31:0] v12_fu_533_p1;
reg   [31:0] v12_reg_951;
wire   [31:0] v18_fu_538_p1;
reg   [31:0] v18_reg_958;
reg   [31:0] v229_0_load_11_reg_965;
reg   [31:0] v13_reg_970;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v19_reg_975;
reg   [31:0] v25_reg_980;
wire   [31:0] v8_fu_552_p1;
wire   [31:0] v15_fu_556_p1;
wire   [31:0] v21_fu_560_p1;
reg   [31:0] v30_reg_1000;
reg   [31:0] v36_reg_1005;
reg   [31:0] v41_reg_1010;
wire   [13:0] add_ln140_fu_564_p2;
reg   [13:0] add_ln140_reg_1015;
reg   [13:0] v229_0_addr_13_reg_1020;
reg   [13:0] v229_0_addr_13_reg_1020_pp0_iter2_reg;
wire   [13:0] add_ln147_fu_580_p2;
reg   [13:0] add_ln147_reg_1025;
reg   [13:0] v229_1_addr_14_reg_1030;
reg   [13:0] v229_1_addr_14_reg_1030_pp0_iter2_reg;
reg   [13:0] v229_2_addr_14_reg_1035;
reg   [13:0] v229_2_addr_14_reg_1035_pp0_iter2_reg;
reg   [13:0] v229_3_addr_14_reg_1040;
reg   [13:0] v229_3_addr_14_reg_1040_pp0_iter2_reg;
reg   [13:0] v229_3_addr_14_reg_1040_pp0_iter3_reg;
wire   [31:0] v27_fu_584_p1;
wire   [31:0] v32_fu_588_p1;
wire   [31:0] v38_fu_592_p1;
reg   [31:0] v47_reg_1060;
reg   [31:0] v52_reg_1065;
reg   [31:0] v58_reg_1070;
reg   [13:0] v229_0_addr_11_reg_1075;
reg   [13:0] v229_0_addr_11_reg_1075_pp0_iter2_reg;
reg   [13:0] v229_0_addr_11_reg_1075_pp0_iter3_reg;
reg   [13:0] v229_0_addr_14_reg_1080;
reg   [13:0] v229_0_addr_14_reg_1080_pp0_iter2_reg;
reg   [13:0] v229_0_addr_14_reg_1080_pp0_iter3_reg;
wire   [31:0] v43_fu_604_p1;
wire   [31:0] v49_fu_609_p1;
wire   [31:0] v54_fu_614_p1;
reg   [31:0] v63_reg_1100;
reg   [31:0] v229_1_load_13_reg_1105;
reg   [31:0] v69_reg_1110;
reg   [31:0] v229_1_load_14_reg_1115;
reg   [31:0] v74_reg_1120;
reg   [31:0] v229_2_load_13_reg_1125;
reg   [31:0] v229_2_load_14_reg_1130;
wire   [31:0] v60_fu_618_p1;
wire   [31:0] v65_fu_623_p1;
wire   [31:0] v71_fu_627_p1;
reg   [31:0] v80_reg_1150;
reg   [31:0] v85_reg_1155;
reg   [31:0] v91_reg_1160;
reg   [31:0] v229_0_load_14_reg_1165;
wire   [31:0] v76_fu_631_p1;
wire   [31:0] v82_fu_635_p1;
wire   [31:0] v87_fu_639_p1;
reg   [31:0] v96_reg_1185;
reg   [31:0] v102_reg_1190;
reg   [31:0] v107_reg_1195;
wire   [31:0] v93_fu_644_p1;
wire   [31:0] v98_fu_649_p1;
wire   [31:0] v104_fu_654_p1;
reg   [31:0] v97_reg_1215;
reg   [31:0] v103_reg_1220;
reg   [31:0] v108_reg_1225;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_8_fu_451_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_462_p1;
wire   [63:0] zext_ln45_8_fu_502_p1;
wire   [63:0] zext_ln42_fu_513_p1;
wire   [63:0] zext_ln88_fu_525_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_fu_572_p1;
wire   [63:0] zext_ln140_fu_596_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln147_fu_600_p1;
reg   [7:0] v7_fu_80;
wire   [7:0] add_ln33_fu_542_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_4;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_678_p1;
wire    ap_block_pp0_stage3;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln48_fu_683_p1;
wire   [31:0] bitcast_ln94_fu_698_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_703_p1;
wire   [31:0] bitcast_ln146_fu_737_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_741_p1;
reg    v228_1_ce1_local;
reg    v228_1_ce0_local;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_fu_658_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_fu_663_p1;
wire   [31:0] bitcast_ln107_fu_708_p1;
wire   [31:0] bitcast_ln113_fu_713_p1;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln68_fu_668_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln74_fu_673_p1;
wire   [31:0] bitcast_ln120_fu_718_p1;
wire   [31:0] bitcast_ln126_fu_723_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln81_fu_688_p1;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln87_fu_693_p1;
wire   [31:0] bitcast_ln133_fu_728_p1;
wire   [31:0] bitcast_ln139_fu_733_p1;
reg   [31:0] grp_fu_362_p0;
reg   [31:0] grp_fu_362_p1;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_374_p1;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_378_p1;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
wire   [14:0] zext_ln38_7_fu_441_p1;
wire   [14:0] add_ln38_fu_445_p2;
wire   [13:0] add_ln34_fu_456_p2;
wire   [6:0] tmp_s_fu_470_p4;
wire   [7:0] or_ln42_s_fu_480_p3;
wire   [14:0] zext_ln45_7_fu_492_p1;
wire   [14:0] add_ln45_fu_496_p2;
wire   [13:0] add_ln42_fu_507_p2;
wire   [13:0] add_ln88_fu_521_p2;
wire   [13:0] add_ln95_fu_568_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_80 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_394 <= v229_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_394 <= v229_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_80 <= 8'd0;
    end else if (((icmp_ln33_reg_823 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_80 <= add_ln33_fu_542_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln140_reg_1015 <= add_ln140_fu_564_p2;
        add_ln147_reg_1025 <= add_ln147_fu_580_p2;
        v229_0_addr_10_reg_891 <= zext_ln88_fu_525_p1;
        v229_0_addr_10_reg_891_pp0_iter1_reg <= v229_0_addr_10_reg_891;
        v229_0_addr_10_reg_891_pp0_iter2_reg <= v229_0_addr_10_reg_891_pp0_iter1_reg;
        v229_0_addr_13_reg_1020 <= zext_ln95_fu_572_p1;
        v229_0_addr_13_reg_1020_pp0_iter2_reg <= v229_0_addr_13_reg_1020;
        v229_1_addr_12_reg_896 <= zext_ln88_fu_525_p1;
        v229_1_addr_12_reg_896_pp0_iter1_reg <= v229_1_addr_12_reg_896;
        v229_1_addr_12_reg_896_pp0_iter2_reg <= v229_1_addr_12_reg_896_pp0_iter1_reg;
        v229_1_addr_14_reg_1030 <= zext_ln95_fu_572_p1;
        v229_1_addr_14_reg_1030_pp0_iter2_reg <= v229_1_addr_14_reg_1030;
        v229_2_addr_12_reg_901 <= zext_ln88_fu_525_p1;
        v229_2_addr_12_reg_901_pp0_iter1_reg <= v229_2_addr_12_reg_901;
        v229_2_addr_12_reg_901_pp0_iter2_reg <= v229_2_addr_12_reg_901_pp0_iter1_reg;
        v229_2_addr_14_reg_1035 <= zext_ln95_fu_572_p1;
        v229_2_addr_14_reg_1035_pp0_iter2_reg <= v229_2_addr_14_reg_1035;
        v229_3_addr_12_reg_906 <= zext_ln88_fu_525_p1;
        v229_3_addr_12_reg_906_pp0_iter1_reg <= v229_3_addr_12_reg_906;
        v229_3_addr_12_reg_906_pp0_iter2_reg <= v229_3_addr_12_reg_906_pp0_iter1_reg;
        v229_3_addr_14_reg_1040 <= zext_ln95_fu_572_p1;
        v229_3_addr_14_reg_1040_pp0_iter2_reg <= v229_3_addr_14_reg_1040;
        v229_3_addr_14_reg_1040_pp0_iter3_reg <= v229_3_addr_14_reg_1040_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_823 <= icmp_ln33_fu_431_p2;
        v229_0_addr_12_reg_870 <= zext_ln42_fu_513_p1;
        v229_0_addr_12_reg_870_pp0_iter1_reg <= v229_0_addr_12_reg_870;
        v229_0_addr_12_reg_870_pp0_iter2_reg <= v229_0_addr_12_reg_870_pp0_iter1_reg;
        v229_0_addr_reg_838 <= zext_ln34_fu_462_p1;
        v229_0_addr_reg_838_pp0_iter1_reg <= v229_0_addr_reg_838;
        v229_0_addr_reg_838_pp0_iter2_reg <= v229_0_addr_reg_838_pp0_iter1_reg;
        v229_1_addr_13_reg_875 <= zext_ln42_fu_513_p1;
        v229_1_addr_13_reg_875_pp0_iter1_reg <= v229_1_addr_13_reg_875;
        v229_1_addr_13_reg_875_pp0_iter2_reg <= v229_1_addr_13_reg_875_pp0_iter1_reg;
        v229_1_addr_reg_843 <= zext_ln34_fu_462_p1;
        v229_1_addr_reg_843_pp0_iter1_reg <= v229_1_addr_reg_843;
        v229_1_addr_reg_843_pp0_iter2_reg <= v229_1_addr_reg_843_pp0_iter1_reg;
        v229_2_addr_13_reg_880 <= zext_ln42_fu_513_p1;
        v229_2_addr_13_reg_880_pp0_iter1_reg <= v229_2_addr_13_reg_880;
        v229_2_addr_13_reg_880_pp0_iter2_reg <= v229_2_addr_13_reg_880_pp0_iter1_reg;
        v229_2_addr_reg_848 <= zext_ln34_fu_462_p1;
        v229_2_addr_reg_848_pp0_iter1_reg <= v229_2_addr_reg_848;
        v229_2_addr_reg_848_pp0_iter2_reg <= v229_2_addr_reg_848_pp0_iter1_reg;
        v229_3_addr_13_reg_885 <= zext_ln42_fu_513_p1;
        v229_3_addr_13_reg_885_pp0_iter1_reg <= v229_3_addr_13_reg_885;
        v229_3_addr_13_reg_885_pp0_iter2_reg <= v229_3_addr_13_reg_885_pp0_iter1_reg;
        v229_3_addr_reg_853 <= zext_ln34_fu_462_p1;
        v229_3_addr_reg_853_pp0_iter1_reg <= v229_3_addr_reg_853;
        v229_3_addr_reg_853_pp0_iter2_reg <= v229_3_addr_reg_853_pp0_iter1_reg;
        v7_4_reg_818 <= ap_sig_allocacmp_v7_4;
        zext_ln38_reg_827[7 : 0] <= zext_ln38_fu_437_p1[7 : 0];
        zext_ln38_reg_827_pp0_iter1_reg[7 : 0] <= zext_ln38_reg_827[7 : 0];
        zext_ln45_reg_859[7 : 1] <= zext_ln45_fu_488_p1[7 : 1];
        zext_ln45_reg_859_pp0_iter1_reg[7 : 1] <= zext_ln45_reg_859[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_386 <= v229_3_q1;
        reg_390 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_399 <= grp_fu_23405_p_dout0;
        reg_403 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_407 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_411 <= grp_fu_23405_p_dout0;
        reg_415 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_419 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1190 <= grp_fu_23421_p_dout0;
        v107_reg_1195 <= grp_fu_23425_p_dout0;
        v96_reg_1185 <= grp_fu_23417_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1220 <= grp_fu_23409_p_dout0;
        v108_reg_1225 <= grp_fu_23413_p_dout0;
        v97_reg_1215 <= grp_fu_23405_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_951 <= v12_fu_533_p1;
        v18_reg_958 <= v18_fu_538_p1;
        v229_0_addr_11_reg_1075 <= zext_ln140_fu_596_p1;
        v229_0_addr_11_reg_1075_pp0_iter2_reg <= v229_0_addr_11_reg_1075;
        v229_0_addr_11_reg_1075_pp0_iter3_reg <= v229_0_addr_11_reg_1075_pp0_iter2_reg;
        v229_0_addr_14_reg_1080 <= zext_ln147_fu_600_p1;
        v229_0_addr_14_reg_1080_pp0_iter2_reg <= v229_0_addr_14_reg_1080;
        v229_0_addr_14_reg_1080_pp0_iter3_reg <= v229_0_addr_14_reg_1080_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_970 <= grp_fu_23417_p_dout0;
        v19_reg_975 <= grp_fu_23421_p_dout0;
        v25_reg_980 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_1_load_4_reg_926 <= v228_1_q0;
        v228_1_load_reg_916 <= v228_1_q1;
        v229_0_load_10_reg_921 <= v229_0_q0;
        v229_0_load_reg_911 <= v229_0_q1;
        v229_1_load_12_reg_936 <= v229_1_q0;
        v229_1_load_reg_931 <= v229_1_q1;
        v229_2_load_12_reg_946 <= v229_2_q0;
        v229_2_load_reg_941 <= v229_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_load_11_reg_965 <= v229_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_load_14_reg_1165 <= v229_0_q0;
        v80_reg_1150 <= grp_fu_23417_p_dout0;
        v85_reg_1155 <= grp_fu_23421_p_dout0;
        v91_reg_1160 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_load_13_reg_1105 <= v229_1_q1;
        v229_1_load_14_reg_1115 <= v229_1_q0;
        v229_2_load_13_reg_1125 <= v229_2_q1;
        v229_2_load_14_reg_1130 <= v229_2_q0;
        v63_reg_1100 <= grp_fu_23417_p_dout0;
        v69_reg_1110 <= grp_fu_23421_p_dout0;
        v74_reg_1120 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1000 <= grp_fu_23417_p_dout0;
        v36_reg_1005 <= grp_fu_23421_p_dout0;
        v41_reg_1010 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1060 <= grp_fu_23417_p_dout0;
        v52_reg_1065 <= grp_fu_23421_p_dout0;
        v58_reg_1070 <= grp_fu_23425_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_823 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_4 = v7_fu_80;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_362_p0 = v93_fu_644_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_362_p0 = v76_fu_631_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_362_p0 = v60_fu_618_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_362_p0 = v43_fu_604_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_362_p0 = v27_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_362_p0 = v8_fu_552_p1;
        end else begin
            grp_fu_362_p0 = 'bx;
        end
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_362_p1 = v96_reg_1185;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_362_p1 = v80_reg_1150;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_362_p1 = v63_reg_1100;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_362_p1 = v47_reg_1060;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_362_p1 = v30_reg_1000;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_362_p1 = v13_reg_970;
        end else begin
            grp_fu_362_p1 = 'bx;
        end
    end else begin
        grp_fu_362_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_366_p0 = v98_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_366_p0 = v82_fu_635_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_366_p0 = v65_fu_623_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_366_p0 = v49_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_366_p0 = v32_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_366_p0 = v15_fu_556_p1;
        end else begin
            grp_fu_366_p0 = 'bx;
        end
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_366_p1 = v102_reg_1190;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_366_p1 = v85_reg_1155;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_366_p1 = v69_reg_1110;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_366_p1 = v52_reg_1065;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_366_p1 = v36_reg_1005;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_366_p1 = v19_reg_975;
        end else begin
            grp_fu_366_p1 = 'bx;
        end
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_370_p0 = v104_fu_654_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_370_p0 = v87_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_370_p0 = v71_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_370_p0 = v54_fu_614_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_370_p0 = v38_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_370_p0 = v21_fu_560_p1;
        end else begin
            grp_fu_370_p0 = 'bx;
        end
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_370_p1 = v107_reg_1195;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_370_p1 = v91_reg_1160;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_370_p1 = v74_reg_1120;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_370_p1 = v58_reg_1070;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_370_p1 = v41_reg_1010;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_370_p1 = v25_reg_980;
        end else begin
            grp_fu_370_p1 = 'bx;
        end
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_374_p0 = v90_12;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p0 = v79_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p0 = v57_12;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p0 = v46_12;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p0 = v24_12;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p0 = v11_12;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_374_p1 = v12_reg_951;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_374_p1 = v18_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p1 = v12_fu_533_p1;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p0 = v101_12;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p0 = v79_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_378_p0 = v68_12;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p0 = v46_12;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_378_p0 = v35_12;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_378_p0 = v11_12;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_378_p1 = v18_reg_958;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_378_p1 = v12_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_378_p1 = v18_fu_538_p1;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p0 = v101_12;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p0 = v90_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_382_p0 = v68_12;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_382_p0 = v57_12;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p0 = v35_12;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p0 = v24_12;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_382_p1 = v12_reg_951;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_382_p1 = v18_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p1 = v12_fu_533_p1;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_1_ce0_local = 1'b1;
    end else begin
        v228_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_1_ce1_local = 1'b1;
    end else begin
        v228_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address0_local = v229_0_addr_14_reg_1080_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_13_reg_1020_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_12_reg_870_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = zext_ln147_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln95_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_513_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_11_reg_1075_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_10_reg_891_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_reg_838_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = zext_ln140_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln88_fu_525_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_462_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d0_local = bitcast_ln152_fu_741_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln100_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln48_fu_683_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d1_local = bitcast_ln146_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln94_fu_698_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln41_fu_678_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_14_reg_1030_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_13_reg_875_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln95_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_513_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_12_reg_896_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_reg_843_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_12_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_462_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d0_local = bitcast_ln113_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d0_local = bitcast_ln61_fu_663_p1;
        end else begin
            v229_1_d0_local = 'bx;
        end
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d1_local = bitcast_ln107_fu_708_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d1_local = bitcast_ln55_fu_658_p1;
        end else begin
            v229_1_d1_local = 'bx;
        end
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address0_local = v229_2_addr_14_reg_1035_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_13_reg_880_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = zext_ln95_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_513_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_12_reg_901_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_reg_848_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = v229_2_addr_12_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_462_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d0_local = bitcast_ln126_fu_723_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln74_fu_673_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d1_local = bitcast_ln120_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln68_fu_668_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_14_reg_1040_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address0_local = v229_3_addr_reg_853_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = zext_ln95_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = v229_3_addr_13_reg_885;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_12_reg_906_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_13_reg_885_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_12_reg_906;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = v229_3_addr_reg_853;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_d0_local = bitcast_ln139_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d0_local = bitcast_ln81_fu_688_p1;
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln133_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_3_d1_local = bitcast_ln87_fu_693_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_fu_564_p2 = (mul_ln140_3 + zext_ln38_reg_827_pp0_iter1_reg);
assign add_ln147_fu_580_p2 = (mul_ln140_3 + zext_ln45_reg_859_pp0_iter1_reg);
assign add_ln33_fu_542_p2 = (v7_4_reg_818 + 8'd2);
assign add_ln34_fu_456_p2 = (mul_ln34_3 + zext_ln38_fu_437_p1);
assign add_ln38_fu_445_p2 = (mul_ln38 + zext_ln38_7_fu_441_p1);
assign add_ln42_fu_507_p2 = (mul_ln34_3 + zext_ln45_fu_488_p1);
assign add_ln45_fu_496_p2 = (mul_ln38 + zext_ln45_7_fu_492_p1);
assign add_ln88_fu_521_p2 = (mul_ln88_3 + zext_ln38_reg_827);
assign add_ln95_fu_568_p2 = (mul_ln88_3 + zext_ln45_reg_859_pp0_iter1_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_703_p1 = reg_399;
assign bitcast_ln107_fu_708_p1 = reg_403;
assign bitcast_ln113_fu_713_p1 = reg_419;
assign bitcast_ln120_fu_718_p1 = reg_399;
assign bitcast_ln126_fu_723_p1 = reg_403;
assign bitcast_ln133_fu_728_p1 = reg_407;
assign bitcast_ln139_fu_733_p1 = v97_reg_1215;
assign bitcast_ln146_fu_737_p1 = v103_reg_1220;
assign bitcast_ln152_fu_741_p1 = v108_reg_1225;
assign bitcast_ln41_fu_678_p1 = reg_399;
assign bitcast_ln48_fu_683_p1 = reg_403;
assign bitcast_ln55_fu_658_p1 = reg_407;
assign bitcast_ln61_fu_663_p1 = reg_411;
assign bitcast_ln68_fu_668_p1 = reg_415;
assign bitcast_ln74_fu_673_p1 = reg_419;
assign bitcast_ln81_fu_688_p1 = reg_411;
assign bitcast_ln87_fu_693_p1 = reg_415;
assign bitcast_ln94_fu_698_p1 = reg_407;
assign grp_fu_23405_p_ce = 1'b1;
assign grp_fu_23405_p_din0 = grp_fu_362_p0;
assign grp_fu_23405_p_din1 = grp_fu_362_p1;
assign grp_fu_23405_p_opcode = 2'd0;
assign grp_fu_23409_p_ce = 1'b1;
assign grp_fu_23409_p_din0 = grp_fu_366_p0;
assign grp_fu_23409_p_din1 = grp_fu_366_p1;
assign grp_fu_23409_p_opcode = 2'd0;
assign grp_fu_23413_p_ce = 1'b1;
assign grp_fu_23413_p_din0 = grp_fu_370_p0;
assign grp_fu_23413_p_din1 = grp_fu_370_p1;
assign grp_fu_23413_p_opcode = 2'd0;
assign grp_fu_23417_p_ce = 1'b1;
assign grp_fu_23417_p_din0 = grp_fu_374_p0;
assign grp_fu_23417_p_din1 = grp_fu_374_p1;
assign grp_fu_23421_p_ce = 1'b1;
assign grp_fu_23421_p_din0 = grp_fu_378_p0;
assign grp_fu_23421_p_din1 = grp_fu_378_p1;
assign grp_fu_23425_p_ce = 1'b1;
assign grp_fu_23425_p_din0 = grp_fu_382_p0;
assign grp_fu_23425_p_din1 = grp_fu_382_p1;
assign icmp_ln33_fu_431_p2 = ((ap_sig_allocacmp_v7_4 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_s_fu_480_p3 = {{tmp_s_fu_470_p4}, {1'd1}};
assign tmp_s_fu_470_p4 = {{ap_sig_allocacmp_v7_4[7:1]}};
assign v104_fu_654_p1 = v229_0_load_14_reg_1165;
assign v12_fu_533_p1 = v228_1_load_reg_916;
assign v15_fu_556_p1 = v229_0_load_10_reg_921;
assign v18_fu_538_p1 = v228_1_load_4_reg_926;
assign v21_fu_560_p1 = v229_1_load_reg_931;
assign v228_1_address0 = zext_ln45_8_fu_502_p1;
assign v228_1_address1 = zext_ln38_8_fu_451_p1;
assign v228_1_ce0 = v228_1_ce0_local;
assign v228_1_ce1 = v228_1_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = v229_0_d0_local;
assign v229_0_d1 = v229_0_d1_local;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = v229_1_d0_local;
assign v229_1_d1 = v229_1_d1_local;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = v229_2_d0_local;
assign v229_2_d1 = v229_2_d1_local;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = v229_3_d0_local;
assign v229_3_d1 = v229_3_d1_local;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v27_fu_584_p1 = v229_1_load_12_reg_936;
assign v32_fu_588_p1 = v229_2_load_reg_941;
assign v38_fu_592_p1 = v229_2_load_12_reg_946;
assign v43_fu_604_p1 = reg_386;
assign v49_fu_609_p1 = reg_390;
assign v54_fu_614_p1 = v229_0_load_11_reg_965;
assign v60_fu_618_p1 = reg_394;
assign v65_fu_623_p1 = v229_1_load_13_reg_1105;
assign v71_fu_627_p1 = v229_1_load_14_reg_1115;
assign v76_fu_631_p1 = v229_2_load_13_reg_1125;
assign v82_fu_635_p1 = v229_2_load_14_reg_1130;
assign v87_fu_639_p1 = reg_386;
assign v8_fu_552_p1 = v229_0_load_reg_911;
assign v93_fu_644_p1 = reg_390;
assign v98_fu_649_p1 = reg_394;
assign zext_ln140_fu_596_p1 = add_ln140_reg_1015;
assign zext_ln147_fu_600_p1 = add_ln147_reg_1025;
assign zext_ln34_fu_462_p1 = add_ln34_fu_456_p2;
assign zext_ln38_7_fu_441_p1 = ap_sig_allocacmp_v7_4;
assign zext_ln38_8_fu_451_p1 = add_ln38_fu_445_p2;
assign zext_ln38_fu_437_p1 = ap_sig_allocacmp_v7_4;
assign zext_ln42_fu_513_p1 = add_ln42_fu_507_p2;
assign zext_ln45_7_fu_492_p1 = or_ln42_s_fu_480_p3;
assign zext_ln45_8_fu_502_p1 = add_ln45_fu_496_p2;
assign zext_ln45_fu_488_p1 = or_ln42_s_fu_480_p3;
assign zext_ln88_fu_525_p1 = add_ln88_fu_521_p2;
assign zext_ln95_fu_572_p1 = add_ln95_fu_568_p2;
always @ (posedge ap_clk) begin
    zext_ln38_reg_827[13:8] <= 6'b000000;
    zext_ln38_reg_827_pp0_iter1_reg[13:8] <= 6'b000000;
    zext_ln45_reg_859[0] <= 1'b1;
    zext_ln45_reg_859[13:8] <= 6'b000000;
    zext_ln45_reg_859_pp0_iter1_reg[0] <= 1'b1;
    zext_ln45_reg_859_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 
