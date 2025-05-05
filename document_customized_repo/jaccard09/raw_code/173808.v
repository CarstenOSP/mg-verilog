module kernel_2mm_kernel_2mm_node0_Pipeline_label_218 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,mul_ln75_2,mul_ln127_2,mul_ln140_2,v11_7,v24_7,v35_7,v46_7,v57_7,v68_7,v79_7,v90_7,v101_7,grp_fu_23405_p_din0,grp_fu_23405_p_din1,grp_fu_23405_p_opcode,grp_fu_23405_p_dout0,grp_fu_23405_p_ce,grp_fu_23409_p_din0,grp_fu_23409_p_din1,grp_fu_23409_p_opcode,grp_fu_23409_p_dout0,grp_fu_23409_p_ce,grp_fu_23413_p_din0,grp_fu_23413_p_din1,grp_fu_23413_p_opcode,grp_fu_23413_p_dout0,grp_fu_23413_p_ce,grp_fu_23417_p_din0,grp_fu_23417_p_din1,grp_fu_23417_p_dout0,grp_fu_23417_p_ce,grp_fu_23421_p_din0,grp_fu_23421_p_din1,grp_fu_23421_p_dout0,grp_fu_23421_p_ce,grp_fu_23425_p_din0,grp_fu_23425_p_din1,grp_fu_23425_p_dout0,grp_fu_23425_p_ce); 
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
input  [13:0] mul_ln75_2;
input  [13:0] mul_ln127_2;
input  [13:0] mul_ln140_2;
input  [31:0] v11_7;
input  [31:0] v24_7;
input  [31:0] v35_7;
input  [31:0] v46_7;
input  [31:0] v57_7;
input  [31:0] v68_7;
input  [31:0] v79_7;
input  [31:0] v90_7;
input  [31:0] v101_7;
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
reg   [0:0] icmp_ln33_reg_820;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_383;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_387;
reg   [31:0] reg_391;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_396;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_400;
reg   [31:0] reg_404;
reg   [31:0] reg_408;
reg   [31:0] reg_412;
reg   [31:0] reg_416;
reg   [7:0] v7_7_reg_815;
wire   [0:0] icmp_ln33_fu_428_p2;
wire   [13:0] zext_ln38_fu_434_p1;
reg   [13:0] zext_ln38_reg_824;
reg   [13:0] v229_1_addr_reg_835;
reg   [13:0] v229_1_addr_reg_835_pp0_iter1_reg;
reg   [13:0] v229_1_addr_reg_835_pp0_iter2_reg;
reg   [13:0] v229_2_addr_reg_840;
reg   [13:0] v229_2_addr_reg_840_pp0_iter1_reg;
reg   [13:0] v229_2_addr_reg_840_pp0_iter2_reg;
reg   [13:0] v229_3_addr_reg_845;
reg   [13:0] v229_3_addr_reg_845_pp0_iter1_reg;
reg   [13:0] v229_3_addr_reg_845_pp0_iter2_reg;
wire   [13:0] zext_ln45_fu_484_p1;
reg   [13:0] zext_ln45_reg_850;
reg   [13:0] v229_1_addr_23_reg_861;
reg   [13:0] v229_1_addr_23_reg_861_pp0_iter1_reg;
reg   [13:0] v229_1_addr_23_reg_861_pp0_iter2_reg;
reg   [13:0] v229_2_addr_24_reg_866;
reg   [13:0] v229_2_addr_24_reg_866_pp0_iter1_reg;
reg   [13:0] v229_2_addr_24_reg_866_pp0_iter2_reg;
reg   [13:0] v229_3_addr_24_reg_871;
reg   [13:0] v229_3_addr_24_reg_871_pp0_iter1_reg;
reg   [13:0] v229_3_addr_24_reg_871_pp0_iter2_reg;
reg   [13:0] v229_0_addr_reg_876;
reg   [13:0] v229_0_addr_reg_876_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_876_pp0_iter2_reg;
wire   [13:0] add_ln127_fu_528_p2;
reg   [13:0] add_ln127_reg_882;
reg   [13:0] v229_1_addr_21_reg_887;
reg   [13:0] v229_1_addr_21_reg_887_pp0_iter1_reg;
reg   [13:0] v229_1_addr_21_reg_887_pp0_iter2_reg;
reg   [13:0] v229_2_addr_23_reg_892;
reg   [13:0] v229_2_addr_23_reg_892_pp0_iter1_reg;
reg   [13:0] v229_2_addr_23_reg_892_pp0_iter2_reg;
reg   [13:0] v229_3_addr_23_reg_897;
reg   [13:0] v229_3_addr_23_reg_897_pp0_iter1_reg;
reg   [13:0] v229_3_addr_23_reg_897_pp0_iter2_reg;
reg   [31:0] v229_1_load_reg_902;
reg   [31:0] v228_1_load_2_reg_907;
reg   [31:0] v229_1_load_21_reg_912;
reg   [31:0] v228_1_load_3_reg_917;
reg   [31:0] v229_2_load_reg_922;
reg   [31:0] v229_2_load_23_reg_927;
reg   [31:0] v229_3_load_reg_932;
reg   [31:0] v229_3_load_23_reg_937;
wire   [31:0] v12_fu_532_p1;
reg   [31:0] v12_reg_942;
wire   [31:0] v18_fu_537_p1;
reg   [31:0] v18_reg_949;
reg   [31:0] v229_1_load_22_reg_956;
reg   [31:0] v13_reg_961;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v19_reg_966;
reg   [31:0] v25_reg_971;
wire   [31:0] v8_fu_551_p1;
reg   [13:0] v229_0_addr_22_reg_981;
reg   [13:0] v229_0_addr_22_reg_981_pp0_iter2_reg;
wire   [13:0] add_ln134_fu_567_p2;
reg   [13:0] add_ln134_reg_987;
reg   [13:0] v229_1_addr_24_reg_992;
reg   [13:0] v229_1_addr_24_reg_992_pp0_iter2_reg;
reg   [13:0] v229_2_addr_25_reg_997;
reg   [13:0] v229_2_addr_25_reg_997_pp0_iter2_reg;
reg   [13:0] v229_3_addr_25_reg_1002;
reg   [13:0] v229_3_addr_25_reg_1002_pp0_iter2_reg;
wire   [31:0] v15_fu_571_p1;
wire   [31:0] v21_fu_575_p1;
reg   [31:0] v30_reg_1017;
reg   [31:0] v36_reg_1022;
reg   [31:0] v41_reg_1027;
reg   [13:0] v229_0_addr_21_reg_1032;
reg   [13:0] v229_0_addr_21_reg_1032_pp0_iter2_reg;
reg   [13:0] v229_1_addr_22_reg_1037;
reg   [13:0] v229_1_addr_22_reg_1037_pp0_iter2_reg;
reg   [13:0] v229_1_addr_22_reg_1037_pp0_iter3_reg;
reg   [13:0] v229_0_addr_23_reg_1042;
reg   [13:0] v229_0_addr_23_reg_1042_pp0_iter2_reg;
reg   [13:0] v229_0_addr_23_reg_1042_pp0_iter3_reg;
reg   [13:0] v229_1_addr_25_reg_1047;
reg   [13:0] v229_1_addr_25_reg_1047_pp0_iter2_reg;
reg   [13:0] v229_1_addr_25_reg_1047_pp0_iter3_reg;
wire   [31:0] v27_fu_589_p1;
wire   [31:0] v32_fu_593_p1;
wire   [31:0] v38_fu_597_p1;
reg   [31:0] v47_reg_1067;
reg   [31:0] v52_reg_1072;
reg   [31:0] v58_reg_1077;
wire   [31:0] v43_fu_601_p1;
wire   [31:0] v49_fu_606_p1;
wire   [31:0] v54_fu_611_p1;
reg   [31:0] v63_reg_1097;
reg   [31:0] v229_2_load_24_reg_1102;
reg   [31:0] v69_reg_1107;
reg   [31:0] v229_2_load_25_reg_1112;
reg   [31:0] v74_reg_1117;
reg   [31:0] v229_3_load_24_reg_1122;
reg   [31:0] v229_3_load_25_reg_1127;
wire   [31:0] v60_fu_615_p1;
wire   [31:0] v65_fu_620_p1;
wire   [31:0] v71_fu_624_p1;
reg   [31:0] v80_reg_1147;
reg   [31:0] v85_reg_1152;
reg   [31:0] v91_reg_1157;
reg   [31:0] v229_1_load_25_reg_1162;
wire   [31:0] v76_fu_628_p1;
wire   [31:0] v82_fu_632_p1;
wire   [31:0] v87_fu_636_p1;
reg   [31:0] v96_reg_1182;
reg   [31:0] v102_reg_1187;
reg   [31:0] v107_reg_1192;
wire   [31:0] v93_fu_641_p1;
wire   [31:0] v98_fu_646_p1;
wire   [31:0] v104_fu_651_p1;
reg   [31:0] v97_reg_1212;
reg   [31:0] v103_reg_1217;
reg   [31:0] v108_reg_1222;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_14_fu_448_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_459_p1;
wire   [63:0] zext_ln45_14_fu_498_p1;
wire   [63:0] zext_ln42_fu_509_p1;
wire   [63:0] zext_ln75_fu_520_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln82_fu_559_p1;
wire   [63:0] zext_ln127_fu_579_p1;
wire   [63:0] zext_ln134_fu_584_p1;
reg   [7:0] v7_fu_80;
wire   [7:0] add_ln33_fu_541_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_7;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln41_fu_675_p1;
wire    ap_block_pp0_stage3;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln48_fu_680_p1;
wire   [31:0] bitcast_ln94_fu_695_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_700_p1;
wire   [31:0] bitcast_ln146_fu_734_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_738_p1;
reg    v228_1_ce1_local;
reg    v228_1_ce0_local;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln55_fu_655_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln61_fu_660_p1;
wire   [31:0] bitcast_ln107_fu_705_p1;
wire   [31:0] bitcast_ln113_fu_710_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln68_fu_665_p1;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln74_fu_670_p1;
wire   [31:0] bitcast_ln120_fu_715_p1;
wire   [31:0] bitcast_ln126_fu_720_p1;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln81_fu_685_p1;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln87_fu_690_p1;
wire   [31:0] bitcast_ln133_fu_725_p1;
wire   [31:0] bitcast_ln139_fu_730_p1;
reg   [31:0] grp_fu_359_p0;
reg   [31:0] grp_fu_359_p1;
reg   [31:0] grp_fu_363_p0;
reg   [31:0] grp_fu_363_p1;
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
wire   [14:0] zext_ln38_13_fu_438_p1;
wire   [14:0] add_ln38_fu_442_p2;
wire   [13:0] add_ln34_fu_453_p2;
wire   [6:0] tmp_s_fu_466_p4;
wire   [7:0] or_ln42_7_fu_476_p3;
wire   [14:0] zext_ln45_13_fu_488_p1;
wire   [14:0] add_ln45_fu_492_p2;
wire   [13:0] add_ln42_fu_503_p2;
wire   [13:0] add_ln75_fu_516_p2;
wire   [13:0] add_ln82_fu_555_p2;
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
            reg_391 <= v229_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_391 <= v229_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_80 <= 8'd0;
    end else if (((icmp_ln33_reg_820 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_80 <= add_ln33_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln127_reg_882 <= add_ln127_fu_528_p2;
        v229_0_addr_21_reg_1032 <= zext_ln127_fu_579_p1;
        v229_0_addr_21_reg_1032_pp0_iter2_reg <= v229_0_addr_21_reg_1032;
        v229_0_addr_23_reg_1042 <= zext_ln134_fu_584_p1;
        v229_0_addr_23_reg_1042_pp0_iter2_reg <= v229_0_addr_23_reg_1042;
        v229_0_addr_23_reg_1042_pp0_iter3_reg <= v229_0_addr_23_reg_1042_pp0_iter2_reg;
        v229_0_addr_reg_876 <= zext_ln75_fu_520_p1;
        v229_0_addr_reg_876_pp0_iter1_reg <= v229_0_addr_reg_876;
        v229_0_addr_reg_876_pp0_iter2_reg <= v229_0_addr_reg_876_pp0_iter1_reg;
        v229_1_addr_21_reg_887 <= zext_ln75_fu_520_p1;
        v229_1_addr_21_reg_887_pp0_iter1_reg <= v229_1_addr_21_reg_887;
        v229_1_addr_21_reg_887_pp0_iter2_reg <= v229_1_addr_21_reg_887_pp0_iter1_reg;
        v229_1_addr_22_reg_1037 <= zext_ln127_fu_579_p1;
        v229_1_addr_22_reg_1037_pp0_iter2_reg <= v229_1_addr_22_reg_1037;
        v229_1_addr_22_reg_1037_pp0_iter3_reg <= v229_1_addr_22_reg_1037_pp0_iter2_reg;
        v229_1_addr_25_reg_1047 <= zext_ln134_fu_584_p1;
        v229_1_addr_25_reg_1047_pp0_iter2_reg <= v229_1_addr_25_reg_1047;
        v229_1_addr_25_reg_1047_pp0_iter3_reg <= v229_1_addr_25_reg_1047_pp0_iter2_reg;
        v229_2_addr_23_reg_892 <= zext_ln75_fu_520_p1;
        v229_2_addr_23_reg_892_pp0_iter1_reg <= v229_2_addr_23_reg_892;
        v229_2_addr_23_reg_892_pp0_iter2_reg <= v229_2_addr_23_reg_892_pp0_iter1_reg;
        v229_3_addr_23_reg_897 <= zext_ln75_fu_520_p1;
        v229_3_addr_23_reg_897_pp0_iter1_reg <= v229_3_addr_23_reg_897;
        v229_3_addr_23_reg_897_pp0_iter2_reg <= v229_3_addr_23_reg_897_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln134_reg_987 <= add_ln134_fu_567_p2;
        icmp_ln33_reg_820 <= icmp_ln33_fu_428_p2;
        v229_0_addr_22_reg_981 <= zext_ln82_fu_559_p1;
        v229_0_addr_22_reg_981_pp0_iter2_reg <= v229_0_addr_22_reg_981;
        v229_1_addr_23_reg_861 <= zext_ln42_fu_509_p1;
        v229_1_addr_23_reg_861_pp0_iter1_reg <= v229_1_addr_23_reg_861;
        v229_1_addr_23_reg_861_pp0_iter2_reg <= v229_1_addr_23_reg_861_pp0_iter1_reg;
        v229_1_addr_24_reg_992 <= zext_ln82_fu_559_p1;
        v229_1_addr_24_reg_992_pp0_iter2_reg <= v229_1_addr_24_reg_992;
        v229_1_addr_reg_835 <= zext_ln34_fu_459_p1;
        v229_1_addr_reg_835_pp0_iter1_reg <= v229_1_addr_reg_835;
        v229_1_addr_reg_835_pp0_iter2_reg <= v229_1_addr_reg_835_pp0_iter1_reg;
        v229_2_addr_24_reg_866 <= zext_ln42_fu_509_p1;
        v229_2_addr_24_reg_866_pp0_iter1_reg <= v229_2_addr_24_reg_866;
        v229_2_addr_24_reg_866_pp0_iter2_reg <= v229_2_addr_24_reg_866_pp0_iter1_reg;
        v229_2_addr_25_reg_997 <= zext_ln82_fu_559_p1;
        v229_2_addr_25_reg_997_pp0_iter2_reg <= v229_2_addr_25_reg_997;
        v229_2_addr_reg_840 <= zext_ln34_fu_459_p1;
        v229_2_addr_reg_840_pp0_iter1_reg <= v229_2_addr_reg_840;
        v229_2_addr_reg_840_pp0_iter2_reg <= v229_2_addr_reg_840_pp0_iter1_reg;
        v229_3_addr_24_reg_871 <= zext_ln42_fu_509_p1;
        v229_3_addr_24_reg_871_pp0_iter1_reg <= v229_3_addr_24_reg_871;
        v229_3_addr_24_reg_871_pp0_iter2_reg <= v229_3_addr_24_reg_871_pp0_iter1_reg;
        v229_3_addr_25_reg_1002 <= zext_ln82_fu_559_p1;
        v229_3_addr_25_reg_1002_pp0_iter2_reg <= v229_3_addr_25_reg_1002;
        v229_3_addr_reg_845 <= zext_ln34_fu_459_p1;
        v229_3_addr_reg_845_pp0_iter1_reg <= v229_3_addr_reg_845;
        v229_3_addr_reg_845_pp0_iter2_reg <= v229_3_addr_reg_845_pp0_iter1_reg;
        v7_7_reg_815 <= ap_sig_allocacmp_v7_7;
        zext_ln38_reg_824[7 : 0] <= zext_ln38_fu_434_p1[7 : 0];
        zext_ln45_reg_850[7 : 1] <= zext_ln45_fu_484_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_383 <= v229_0_q1;
        reg_387 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_396 <= grp_fu_23405_p_dout0;
        reg_400 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_404 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_408 <= grp_fu_23405_p_dout0;
        reg_412 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_416 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1187 <= grp_fu_23421_p_dout0;
        v107_reg_1192 <= grp_fu_23425_p_dout0;
        v96_reg_1182 <= grp_fu_23417_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1217 <= grp_fu_23409_p_dout0;
        v108_reg_1222 <= grp_fu_23413_p_dout0;
        v97_reg_1212 <= grp_fu_23405_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_942 <= v12_fu_532_p1;
        v18_reg_949 <= v18_fu_537_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_961 <= grp_fu_23417_p_dout0;
        v19_reg_966 <= grp_fu_23421_p_dout0;
        v25_reg_971 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_1_load_2_reg_907 <= v228_1_q1;
        v228_1_load_3_reg_917 <= v228_1_q0;
        v229_1_load_21_reg_912 <= v229_1_q0;
        v229_1_load_reg_902 <= v229_1_q1;
        v229_2_load_23_reg_927 <= v229_2_q0;
        v229_2_load_reg_922 <= v229_2_q1;
        v229_3_load_23_reg_937 <= v229_3_q0;
        v229_3_load_reg_932 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_load_22_reg_956 <= v229_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_load_25_reg_1162 <= v229_1_q0;
        v80_reg_1147 <= grp_fu_23417_p_dout0;
        v85_reg_1152 <= grp_fu_23421_p_dout0;
        v91_reg_1157 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_load_24_reg_1102 <= v229_2_q1;
        v229_2_load_25_reg_1112 <= v229_2_q0;
        v229_3_load_24_reg_1122 <= v229_3_q1;
        v229_3_load_25_reg_1127 <= v229_3_q0;
        v63_reg_1097 <= grp_fu_23417_p_dout0;
        v69_reg_1107 <= grp_fu_23421_p_dout0;
        v74_reg_1117 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1017 <= grp_fu_23417_p_dout0;
        v36_reg_1022 <= grp_fu_23421_p_dout0;
        v41_reg_1027 <= grp_fu_23425_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1067 <= grp_fu_23417_p_dout0;
        v52_reg_1072 <= grp_fu_23421_p_dout0;
        v58_reg_1077 <= grp_fu_23425_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_820 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7_7 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_7 = v7_fu_80;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_359_p0 = v93_fu_641_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_359_p0 = v76_fu_628_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_359_p0 = v60_fu_615_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_359_p0 = v43_fu_601_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_359_p0 = v27_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_359_p0 = v8_fu_551_p1;
        end else begin
            grp_fu_359_p0 = 'bx;
        end
    end else begin
        grp_fu_359_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_359_p1 = v96_reg_1182;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_359_p1 = v80_reg_1147;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_359_p1 = v63_reg_1097;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_359_p1 = v47_reg_1067;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_359_p1 = v30_reg_1017;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_359_p1 = v13_reg_961;
        end else begin
            grp_fu_359_p1 = 'bx;
        end
    end else begin
        grp_fu_359_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_363_p0 = v98_fu_646_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_363_p0 = v82_fu_632_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_363_p0 = v65_fu_620_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p0 = v49_fu_606_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_363_p0 = v32_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_363_p0 = v15_fu_571_p1;
        end else begin
            grp_fu_363_p0 = 'bx;
        end
    end else begin
        grp_fu_363_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_363_p1 = v102_reg_1187;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_363_p1 = v85_reg_1152;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_363_p1 = v69_reg_1107;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p1 = v52_reg_1072;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_363_p1 = v36_reg_1022;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_363_p1 = v19_reg_966;
        end else begin
            grp_fu_363_p1 = 'bx;
        end
    end else begin
        grp_fu_363_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_367_p0 = v104_fu_651_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_367_p0 = v87_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_367_p0 = v71_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p0 = v54_fu_611_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_367_p0 = v38_fu_597_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p0 = v21_fu_575_p1;
        end else begin
            grp_fu_367_p0 = 'bx;
        end
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_367_p1 = v107_reg_1192;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_367_p1 = v91_reg_1157;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_367_p1 = v74_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p1 = v58_reg_1077;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_367_p1 = v41_reg_1027;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p1 = v25_reg_971;
        end else begin
            grp_fu_367_p1 = 'bx;
        end
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_371_p0 = v90_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_371_p0 = v79_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_371_p0 = v57_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_371_p0 = v46_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_371_p0 = v24_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p0 = v11_7;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_371_p1 = v12_reg_942;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_371_p1 = v18_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_371_p1 = v12_fu_532_p1;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v101_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v79_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_375_p0 = v68_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p0 = v46_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v35_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v11_7;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_375_p1 = v18_reg_949;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_375_p1 = v12_reg_942;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = v18_fu_537_p1;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v101_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v90_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_379_p0 = v68_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p0 = v57_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v35_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v24_7;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_379_p1 = v12_reg_942;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_379_p1 = v18_reg_949;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = v12_fu_532_p1;
    end else begin
        grp_fu_379_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_23_reg_1042_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_reg_876_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln134_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln82_fu_559_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_21_reg_1032_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_22_reg_981_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln127_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = v229_0_addr_reg_876;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln139_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln81_fu_685_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_0_d1_local = bitcast_ln133_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_0_d1_local = bitcast_ln87_fu_690_p1;
        end else begin
            v229_0_d1_local = 'bx;
        end
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address0_local = v229_1_addr_25_reg_1047_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_24_reg_992_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_23_reg_861_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_25_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_24_reg_992;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_509_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address1_local = v229_1_addr_22_reg_1037_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_21_reg_887_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_reg_835_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_22_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln75_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_459_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d0_local = bitcast_ln152_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d0_local = bitcast_ln100_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d0_local = bitcast_ln48_fu_680_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d1_local = bitcast_ln146_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d1_local = bitcast_ln94_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d1_local = bitcast_ln41_fu_675_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address0_local = v229_2_addr_25_reg_997_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_24_reg_866_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_25_reg_997;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_509_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address1_local = v229_2_addr_23_reg_892_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_reg_840_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = v229_2_addr_23_reg_892;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_459_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d0_local = bitcast_ln113_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln61_fu_660_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d1_local = bitcast_ln107_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln55_fu_655_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address0_local = v229_3_addr_25_reg_1002_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_24_reg_871_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_25_reg_1002;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_509_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_23_reg_897_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_reg_845_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_23_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_459_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d0_local = bitcast_ln126_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d0_local = bitcast_ln74_fu_670_p1;
        end else begin
            v229_3_d0_local = 'bx;
        end
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln120_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d1_local = bitcast_ln68_fu_665_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln127_fu_528_p2 = (mul_ln127_2 + zext_ln38_reg_824);
assign add_ln134_fu_567_p2 = (mul_ln127_2 + zext_ln45_reg_850);
assign add_ln33_fu_541_p2 = (v7_7_reg_815 + 8'd2);
assign add_ln34_fu_453_p2 = (mul_ln140_2 + zext_ln38_fu_434_p1);
assign add_ln38_fu_442_p2 = (mul_ln38 + zext_ln38_13_fu_438_p1);
assign add_ln42_fu_503_p2 = (mul_ln140_2 + zext_ln45_fu_484_p1);
assign add_ln45_fu_492_p2 = (mul_ln38 + zext_ln45_13_fu_488_p1);
assign add_ln75_fu_516_p2 = (mul_ln75_2 + zext_ln38_reg_824);
assign add_ln82_fu_555_p2 = (mul_ln75_2 + zext_ln45_reg_850);
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
assign bitcast_ln100_fu_700_p1 = reg_396;
assign bitcast_ln107_fu_705_p1 = reg_400;
assign bitcast_ln113_fu_710_p1 = reg_416;
assign bitcast_ln120_fu_715_p1 = reg_396;
assign bitcast_ln126_fu_720_p1 = reg_400;
assign bitcast_ln133_fu_725_p1 = reg_404;
assign bitcast_ln139_fu_730_p1 = v97_reg_1212;
assign bitcast_ln146_fu_734_p1 = v103_reg_1217;
assign bitcast_ln152_fu_738_p1 = v108_reg_1222;
assign bitcast_ln41_fu_675_p1 = reg_396;
assign bitcast_ln48_fu_680_p1 = reg_400;
assign bitcast_ln55_fu_655_p1 = reg_404;
assign bitcast_ln61_fu_660_p1 = reg_408;
assign bitcast_ln68_fu_665_p1 = reg_412;
assign bitcast_ln74_fu_670_p1 = reg_416;
assign bitcast_ln81_fu_685_p1 = reg_408;
assign bitcast_ln87_fu_690_p1 = reg_412;
assign bitcast_ln94_fu_695_p1 = reg_404;
assign grp_fu_23405_p_ce = 1'b1;
assign grp_fu_23405_p_din0 = grp_fu_359_p0;
assign grp_fu_23405_p_din1 = grp_fu_359_p1;
assign grp_fu_23405_p_opcode = 2'd0;
assign grp_fu_23409_p_ce = 1'b1;
assign grp_fu_23409_p_din0 = grp_fu_363_p0;
assign grp_fu_23409_p_din1 = grp_fu_363_p1;
assign grp_fu_23409_p_opcode = 2'd0;
assign grp_fu_23413_p_ce = 1'b1;
assign grp_fu_23413_p_din0 = grp_fu_367_p0;
assign grp_fu_23413_p_din1 = grp_fu_367_p1;
assign grp_fu_23413_p_opcode = 2'd0;
assign grp_fu_23417_p_ce = 1'b1;
assign grp_fu_23417_p_din0 = grp_fu_371_p0;
assign grp_fu_23417_p_din1 = grp_fu_371_p1;
assign grp_fu_23421_p_ce = 1'b1;
assign grp_fu_23421_p_din0 = grp_fu_375_p0;
assign grp_fu_23421_p_din1 = grp_fu_375_p1;
assign grp_fu_23425_p_ce = 1'b1;
assign grp_fu_23425_p_din0 = grp_fu_379_p0;
assign grp_fu_23425_p_din1 = grp_fu_379_p1;
assign icmp_ln33_fu_428_p2 = ((ap_sig_allocacmp_v7_7 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_7_fu_476_p3 = {{tmp_s_fu_466_p4}, {1'd1}};
assign tmp_s_fu_466_p4 = {{ap_sig_allocacmp_v7_7[7:1]}};
assign v104_fu_651_p1 = v229_1_load_25_reg_1162;
assign v12_fu_532_p1 = v228_1_load_2_reg_907;
assign v15_fu_571_p1 = v229_1_load_21_reg_912;
assign v18_fu_537_p1 = v228_1_load_3_reg_917;
assign v21_fu_575_p1 = v229_2_load_reg_922;
assign v228_1_address0 = zext_ln45_14_fu_498_p1;
assign v228_1_address1 = zext_ln38_14_fu_448_p1;
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
assign v27_fu_589_p1 = v229_2_load_23_reg_927;
assign v32_fu_593_p1 = v229_3_load_reg_932;
assign v38_fu_597_p1 = v229_3_load_23_reg_937;
assign v43_fu_601_p1 = reg_383;
assign v49_fu_606_p1 = reg_387;
assign v54_fu_611_p1 = v229_1_load_22_reg_956;
assign v60_fu_615_p1 = reg_391;
assign v65_fu_620_p1 = v229_2_load_24_reg_1102;
assign v71_fu_624_p1 = v229_2_load_25_reg_1112;
assign v76_fu_628_p1 = v229_3_load_24_reg_1122;
assign v82_fu_632_p1 = v229_3_load_25_reg_1127;
assign v87_fu_636_p1 = reg_383;
assign v8_fu_551_p1 = v229_1_load_reg_902;
assign v93_fu_641_p1 = reg_387;
assign v98_fu_646_p1 = reg_391;
assign zext_ln127_fu_579_p1 = add_ln127_reg_882;
assign zext_ln134_fu_584_p1 = add_ln134_reg_987;
assign zext_ln34_fu_459_p1 = add_ln34_fu_453_p2;
assign zext_ln38_13_fu_438_p1 = ap_sig_allocacmp_v7_7;
assign zext_ln38_14_fu_448_p1 = add_ln38_fu_442_p2;
assign zext_ln38_fu_434_p1 = ap_sig_allocacmp_v7_7;
assign zext_ln42_fu_509_p1 = add_ln42_fu_503_p2;
assign zext_ln45_13_fu_488_p1 = or_ln42_7_fu_476_p3;
assign zext_ln45_14_fu_498_p1 = add_ln45_fu_492_p2;
assign zext_ln45_fu_484_p1 = or_ln42_7_fu_476_p3;
assign zext_ln75_fu_520_p1 = add_ln75_fu_516_p2;
assign zext_ln82_fu_559_p1 = add_ln82_fu_555_p2;
always @ (posedge ap_clk) begin
    zext_ln38_reg_824[13:8] <= 6'b000000;
    zext_ln45_reg_850[0] <= 1'b1;
    zext_ln45_reg_850[13:8] <= 6'b000000;
end
endmodule 