
module main_graph_main_graph_Pipeline_VITIS_LOOP_1243_253_VITIS_LOOP_1244_254_VITIS_LOOP_1245_255 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v24_Addr_A,v24_EN_A,v24_WEN_A,v24_Din_A,v24_Dout_A,v24_Addr_B,v24_EN_B,v24_WEN_B,v24_Din_B,v24_Dout_B,v41_address1,v41_ce1,v41_we1,v41_d1,v42_address0,v42_ce0,v42_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] v24_Addr_A;
output   v24_EN_A;
output  [0:0] v24_WEN_A;
output  [7:0] v24_Din_A;
input  [7:0] v24_Dout_A;
output  [31:0] v24_Addr_B;
output   v24_EN_B;
output  [0:0] v24_WEN_B;
output  [7:0] v24_Din_B;
input  [7:0] v24_Dout_B;
output  [10:0] v41_address1;
output   v41_ce1;
output   v41_we1;
output  [7:0] v41_d1;
output  [14:0] v42_address0;
output   v42_ce0;
input  [6:0] v42_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln1243_reg_1083;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_301;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln1243_fu_333_p2;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] select_ln1243_1_fu_395_p3;
reg   [9:0] select_ln1243_1_reg_1087;
wire   [1:0] v644_mid2_fu_415_p3;
reg   [1:0] v644_mid2_reg_1093;
wire   [1:0] select_ln1244_fu_423_p3;
reg   [1:0] select_ln1244_reg_1099;
wire   [12:0] tmp_fu_431_p3;
reg   [12:0] tmp_reg_1104;
wire   [12:0] sub_ln1249_fu_451_p2;
reg   [12:0] sub_ln1249_reg_1109;
wire   [0:0] empty_139_fu_457_p1;
reg   [0:0] empty_139_reg_1115;
wire   [1:0] empty_140_fu_461_p2;
reg   [1:0] empty_140_reg_1120;
wire   [12:0] add_ln1249_2_fu_481_p2;
reg   [12:0] add_ln1249_2_reg_1125;
wire   [0:0] empty_144_fu_487_p1;
reg   [0:0] empty_144_reg_1131;
wire   [12:0] empty_130_fu_553_p1;
reg   [12:0] empty_130_reg_1138;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [10:0] add_ln1246_1_fu_621_p2;
reg   [10:0] add_ln1246_1_reg_1159;
reg   [10:0] add_ln1246_1_reg_1159_pp0_iter1_reg;
wire   [1:0] empty_145_fu_627_p2;
reg   [1:0] empty_145_reg_1164;
wire   [1:0] trunc_ln1249_1_fu_632_p1;
reg   [1:0] trunc_ln1249_1_reg_1170;
reg   [12:0] tmp_347_cast_reg_1176;
wire   [14:0] zext_ln1249_25_fu_656_p1;
reg   [14:0] zext_ln1249_25_reg_1182;
reg  signed [7:0] v648_reg_1203;
reg  signed [7:0] v648_8_reg_1208;
wire   [14:0] sub_ln1245_fu_769_p2;
reg   [14:0] sub_ln1245_reg_1213;
wire   [12:0] tmp_344_cast_fu_775_p4;
reg   [12:0] tmp_344_cast_reg_1220;
wire   [14:0] add_ln1249_6_fu_799_p2;
reg   [14:0] add_ln1249_6_reg_1230;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [7:0] v648_3_reg_1245;
reg  signed [7:0] v648_5_reg_1250;
reg   [6:0] v647_reg_1260;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg  signed [7:0] v648_6_reg_1275;
reg  signed [7:0] v648_7_reg_1280;
reg   [6:0] v647_3_reg_1290;
wire    ap_block_pp0_stage5_11001;
reg  signed [7:0] v648_1_reg_1300;
reg  signed [7:0] v648_2_reg_1305;
reg   [6:0] v647_5_reg_1315;
reg  signed [7:0] v648_4_reg_1320;
wire   [14:0] add_ln1249_5_fu_903_p2;
reg   [14:0] add_ln1249_5_reg_1325;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] mul_ln1256_fu_949_p2;
reg   [7:0] mul_ln1256_reg_1350;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln1256_3_fu_965_p2;
reg   [7:0] mul_ln1256_3_reg_1365;
wire   [7:0] mul_ln1256_2_fu_981_p2;
reg   [7:0] mul_ln1256_2_reg_1380;
wire   [7:0] grp_fu_1017_p3;
reg   [7:0] add_ln1256_4_reg_1385;
wire   [7:0] mul_ln1256_6_fu_994_p2;
reg   [7:0] mul_ln1256_6_reg_1395;
wire   [7:0] grp_fu_1023_p3;
reg  signed [7:0] add_ln1256_reg_1400;
wire   [7:0] grp_fu_1029_p3;
reg  signed [7:0] add_ln1256_1_reg_1405;
wire   [7:0] grp_fu_1035_p3;
reg  signed [7:0] add_ln1256_3_reg_1410;
wire   [7:0] v655_fu_1007_p2;
reg   [7:0] v655_reg_1415;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast9_fu_548_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast17_fu_563_p1;
wire   [63:0] zext_ln1249_28_fu_666_p1;
wire   [63:0] p_cast12_fu_676_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast14_fu_686_p1;
wire   [63:0] zext_ln1249_18_fu_794_p1;
wire   [63:0] p_cast15_fu_809_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast16_fu_819_p1;
wire   [63:0] zext_ln1249_19_fu_832_p1;
wire   [63:0] p_cast10_fu_842_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast11_fu_852_p1;
wire   [63:0] zext_ln1249_27_fu_861_p1;
wire   [63:0] p_cast13_fu_871_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln1249_20_fu_887_p1;
wire   [63:0] zext_ln1249_24_fu_920_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln1249_22_fu_940_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln1249_26_fu_958_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln1249_23_fu_970_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1246_2_fu_1013_p1;
reg   [1:0] v644_fu_106;
wire   [1:0] add_ln1245_fu_491_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v644_load;
reg   [1:0] v643_fu_110;
reg   [1:0] ap_sig_allocacmp_v643_load;
reg   [3:0] indvar_flatten1510_fu_114;
wire   [3:0] select_ln1244_1_fu_503_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten1510_load;
reg   [9:0] v642_fu_118;
reg   [9:0] ap_sig_allocacmp_v642_load;
reg   [11:0] indvar_flatten1523_fu_122;
wire   [11:0] add_ln1243_1_fu_339_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1523_load;
reg    v24_EN_B_local;
reg   [31:0] v24_Addr_B_orig;
reg    v24_EN_A_local;
reg   [31:0] v24_Addr_A_orig;
reg    v42_ce0_local;
reg   [14:0] v42_address0_local;
reg    v41_we1_local;
reg    v41_ce1_local;
wire   [0:0] icmp_ln1244_fu_363_p2;
wire   [0:0] icmp_ln1245_fu_383_p2;
wire   [0:0] xor_ln1243_fu_377_p2;
wire   [9:0] add_ln1243_fu_357_p2;
wire   [1:0] select_ln1243_fu_369_p3;
wire   [0:0] and_ln1243_fu_389_p2;
wire   [0:0] empty_fu_409_p2;
wire   [1:0] add_ln1244_fu_403_p2;
wire   [10:0] tmp_94_fu_439_p3;
wire   [12:0] zext_ln1249_fu_447_p1;
wire   [2:0] p_cast218_fu_467_p1;
wire   [2:0] empty_142_fu_471_p2;
wire   [12:0] zext_ln1249_13_fu_477_p1;
wire   [3:0] add_ln1244_1_fu_497_p2;
wire   [13:0] p_shl76_fu_539_p1;
wire   [13:0] select_ln1243_1_cast_fu_536_p1;
wire   [13:0] empty_129_fu_542_p2;
wire   [12:0] empty_138_fu_557_p2;
wire   [9:0] shl_ln1246_fu_568_p2;
wire   [9:0] zext_ln1246_fu_573_p1;
wire   [9:0] add_ln1246_fu_576_p2;
wire   [13:0] tmp_97_fu_597_p3;
wire   [15:0] p_shl7_fu_590_p3;
wire   [15:0] zext_ln1249_14_fu_604_p1;
wire   [15:0] sub_ln1249_2_fu_608_p2;
wire   [10:0] tmp_95_fu_582_p3;
wire   [10:0] zext_ln1246_1_fu_618_p1;
wire   [2:0] zext_ln1249_1_fu_646_p1;
wire   [2:0] add_ln1249_fu_650_p2;
wire   [14:0] empty_143_fu_614_p1;
wire   [14:0] add_ln1249_8_fu_660_p2;
wire   [12:0] empty_133_fu_671_p2;
wire   [12:0] empty_135_fu_681_p2;
wire   [12:0] zext_ln1249_3_fu_691_p1;
wire   [12:0] add_ln1249_1_fu_694_p2;
wire   [13:0] tmp_96_fu_707_p3;
wire   [15:0] p_shl_fu_699_p3;
wire   [15:0] zext_ln1249_5_fu_715_p1;
wire   [15:0] sub_ln1249_1_fu_719_p2;
wire   [1:0] tmp_s_fu_729_p3;
wire   [12:0] zext_ln1249_15_fu_736_p1;
wire   [12:0] add_ln1249_3_fu_740_p2;
wire   [11:0] trunc_ln1249_fu_745_p1;
wire   [13:0] tmp_98_fu_749_p3;
wire   [14:0] tmp_99_fu_757_p3;
wire   [14:0] zext_ln1249_16_fu_765_p1;
wire   [14:0] tmp_92_fu_785_p4;
wire   [14:0] empty_141_fu_725_p1;
wire   [12:0] empty_136_fu_804_p2;
wire   [12:0] empty_137_fu_814_p2;
wire   [14:0] zext_ln1249_17_fu_824_p1;
wire   [14:0] add_ln1249_4_fu_827_p2;
wire   [12:0] empty_131_fu_837_p2;
wire   [12:0] empty_132_fu_847_p2;
wire   [14:0] add_ln1249_7_fu_857_p2;
wire   [12:0] empty_134_fu_866_p2;
wire   [1:0] or_ln1249_fu_876_p2;
wire   [14:0] tmp_93_fu_880_p3;
wire   [1:0] or_ln3_fu_892_p3;
wire   [14:0] zext_ln1249_21_fu_899_p1;
wire   [1:0] or_ln1249_1_fu_908_p2;
wire   [14:0] tmp_101_fu_913_p3;
wire   [14:0] tmp_100_fu_932_p4;
wire   [6:0] mul_ln1256_fu_949_p0;
wire   [6:0] mul_ln1256_3_fu_965_p0;
wire   [6:0] mul_ln1256_2_fu_981_p0;
wire   [6:0] mul_ln1256_6_fu_994_p0;
wire  signed [7:0] add_ln1256_6_fu_1003_p0;
wire   [7:0] grp_fu_1041_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1256_6_fu_1003_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1256_2_fu_999_p2;
wire   [6:0] grp_fu_1017_p1;
wire   [6:0] grp_fu_1023_p1;
wire   [6:0] grp_fu_1029_p1;
wire   [6:0] grp_fu_1035_p1;
wire   [6:0] grp_fu_1041_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1017_p10;
wire   [7:0] grp_fu_1023_p10;
wire   [7:0] grp_fu_1029_p10;
wire   [7:0] grp_fu_1035_p10;
wire   [7:0] grp_fu_1041_p10;
wire   [7:0] mul_ln1256_2_fu_981_p00;
wire   [7:0] mul_ln1256_3_fu_965_p00;
wire   [7:0] mul_ln1256_6_fu_994_p00;
wire   [7:0] mul_ln1256_fu_949_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v644_fu_106 = 2'd0;
#0 v643_fu_110 = 2'd0;
#0 indvar_flatten1510_fu_114 = 4'd0;
#0 v642_fu_118 = 10'd0;
#0 indvar_flatten1523_fu_122 = 12'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U511(.din0(mul_ln1256_fu_949_p0),.din1(v648_7_reg_1280),.dout(mul_ln1256_fu_949_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U512(.din0(mul_ln1256_3_fu_965_p0),.din1(v648_1_reg_1300),.dout(mul_ln1256_3_fu_965_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U513(.din0(mul_ln1256_2_fu_981_p0),.din1(v648_2_reg_1305),.dout(mul_ln1256_2_fu_981_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U514(.din0(mul_ln1256_6_fu_994_p0),.din1(v648_4_reg_1320),.dout(mul_ln1256_6_fu_994_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U515(.clk(ap_clk),.reset(ap_rst),.din0(v648_8_reg_1208),.din1(grp_fu_1017_p1),.din2(mul_ln1256_reg_1350),.ce(1'b1),.dout(grp_fu_1017_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U516(.clk(ap_clk),.reset(ap_rst),.din0(v648_reg_1203),.din1(grp_fu_1023_p1),.din2(mul_ln1256_3_reg_1365),.ce(1'b1),.dout(grp_fu_1023_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U517(.clk(ap_clk),.reset(ap_rst),.din0(v648_3_reg_1245),.din1(grp_fu_1029_p1),.din2(mul_ln1256_2_reg_1380),.ce(1'b1),.dout(grp_fu_1029_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U518(.clk(ap_clk),.reset(ap_rst),.din0(v648_5_reg_1250),.din1(grp_fu_1035_p1),.din2(mul_ln1256_6_reg_1395),.ce(1'b1),.dout(grp_fu_1035_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U519(.clk(ap_clk),.reset(ap_rst),.din0(v648_6_reg_1275),.din1(grp_fu_1041_p1),.din2(add_ln1256_4_reg_1385),.ce(1'b1),.dout(grp_fu_1041_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1243_fu_333_p2 == 1'd0))) begin
            indvar_flatten1510_fu_114 <= select_ln1244_1_fu_503_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1510_fu_114 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1243_fu_333_p2 == 1'd0))) begin
            indvar_flatten1523_fu_122 <= add_ln1243_1_fu_339_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1523_fu_122 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1243_fu_333_p2 == 1'd0))) begin
            v642_fu_118 <= select_ln1243_1_fu_395_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v642_fu_118 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1243_fu_333_p2 == 1'd0))) begin
            v643_fu_110 <= select_ln1244_fu_423_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v643_fu_110 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1243_fu_333_p2 == 1'd0))) begin
            v644_fu_106 <= add_ln1245_fu_491_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v644_fu_106 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln1246_1_reg_1159 <= add_ln1246_1_fu_621_p2;
        add_ln1246_1_reg_1159_pp0_iter1_reg <= add_ln1246_1_reg_1159;
        empty_130_reg_1138 <= empty_130_fu_553_p1;
        empty_145_reg_1164[1] <= empty_145_fu_627_p2[1];
        mul_ln1256_6_reg_1395 <= mul_ln1256_6_fu_994_p2;
        tmp_347_cast_reg_1176 <= {{sub_ln1249_2_fu_608_p2[14:2]}};
        zext_ln1249_25_reg_1182[2 : 1] <= zext_ln1249_25_fu_656_p1[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1249_2_reg_1125[12 : 1] <= add_ln1249_2_fu_481_p2[12 : 1];
        empty_139_reg_1115 <= empty_139_fu_457_p1;
        empty_140_reg_1120[1] <= empty_140_fu_461_p2[1];
        empty_144_reg_1131 <= empty_144_fu_487_p1;
        icmp_ln1243_reg_1083 <= icmp_ln1243_fu_333_p2;
        mul_ln1256_2_reg_1380 <= mul_ln1256_2_fu_981_p2;
        select_ln1243_1_reg_1087 <= select_ln1243_1_fu_395_p3;
        select_ln1244_reg_1099 <= select_ln1244_fu_423_p3;
        sub_ln1249_reg_1109[12 : 1] <= sub_ln1249_fu_451_p2[12 : 1];
        tmp_reg_1104[12 : 3] <= tmp_fu_431_p3[12 : 3];
        v644_mid2_reg_1093 <= v644_mid2_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln1249_5_reg_1325[14 : 1] <= add_ln1249_5_fu_903_p2[14 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln1249_6_reg_1230[14 : 1] <= add_ln1249_6_fu_799_p2[14 : 1];
        sub_ln1245_reg_1213[14 : 2] <= sub_ln1245_fu_769_p2[14 : 2];
        tmp_344_cast_reg_1220 <= {{sub_ln1249_1_fu_719_p2[14:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln1256_1_reg_1405 <= grp_fu_1029_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln1256_3_reg_1410 <= grp_fu_1035_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1256_4_reg_1385 <= grp_fu_1017_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln1256_reg_1400 <= grp_fu_1023_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln1256_3_reg_1365 <= mul_ln1256_3_fu_965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln1256_reg_1350 <= mul_ln1256_fu_949_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_301 <= v42_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v647_3_reg_1290 <= v42_q0;
        v648_6_reg_1275 <= v24_Dout_B;
        v648_7_reg_1280 <= v24_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v647_5_reg_1315 <= v42_q0;
        v648_1_reg_1300 <= v24_Dout_B;
        v648_2_reg_1305 <= v24_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v647_reg_1260 <= v42_q0;
        v648_3_reg_1245 <= v24_Dout_B;
        v648_5_reg_1250 <= v24_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v648_4_reg_1320 <= v24_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v648_8_reg_1208 <= v24_Dout_A;
        v648_reg_1203 <= v24_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v655_reg_1415 <= v655_fu_1007_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1243_reg_1083 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1510_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1510_load = indvar_flatten1510_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1523_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1523_load = indvar_flatten1523_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v642_load = 10'd0;
    end else begin
        ap_sig_allocacmp_v642_load = v642_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v643_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v643_load = v643_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v644_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v644_load = v644_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v24_Addr_A_orig = p_cast13_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v24_Addr_A_orig = p_cast11_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v24_Addr_A_orig = p_cast16_fu_819_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v24_Addr_A_orig = p_cast14_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v24_Addr_A_orig = p_cast17_fu_563_p1;
        end else begin
            v24_Addr_A_orig = 'bx;
        end
    end else begin
        v24_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v24_Addr_B_orig = p_cast10_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v24_Addr_B_orig = p_cast15_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v24_Addr_B_orig = p_cast12_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v24_Addr_B_orig = p_cast9_fu_548_p1;
        end else begin
            v24_Addr_B_orig = 'bx;
        end
    end else begin
        v24_Addr_B_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v24_EN_A_local = 1'b1;
    end else begin
        v24_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v24_EN_B_local = 1'b1;
    end else begin
        v24_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v41_ce1_local = 1'b1;
    end else begin
        v41_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v41_we1_local = 1'b1;
    end else begin
        v41_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_address0_local = zext_ln1249_23_fu_970_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v42_address0_local = zext_ln1249_26_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v42_address0_local = zext_ln1249_22_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v42_address0_local = zext_ln1249_24_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v42_address0_local = zext_ln1249_20_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v42_address0_local = zext_ln1249_27_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_address0_local = zext_ln1249_19_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v42_address0_local = zext_ln1249_18_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_address0_local = zext_ln1249_28_fu_666_p1;
    end else begin
        v42_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v42_ce0_local = 1'b1;
    end else begin
        v42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1243_1_fu_339_p2 = (ap_sig_allocacmp_indvar_flatten1523_load + 12'd1);
assign add_ln1243_fu_357_p2 = (ap_sig_allocacmp_v642_load + 10'd1);
assign add_ln1244_1_fu_497_p2 = (ap_sig_allocacmp_indvar_flatten1510_load + 4'd1);
assign add_ln1244_fu_403_p2 = (select_ln1243_fu_369_p3 + 2'd1);
assign add_ln1245_fu_491_p2 = (v644_mid2_fu_415_p3 + 2'd1);
assign add_ln1246_1_fu_621_p2 = (tmp_95_fu_582_p3 + zext_ln1246_1_fu_618_p1);
assign add_ln1246_fu_576_p2 = (shl_ln1246_fu_568_p2 + zext_ln1246_fu_573_p1);
assign add_ln1249_1_fu_694_p2 = (sub_ln1249_reg_1109 + zext_ln1249_3_fu_691_p1);
assign add_ln1249_2_fu_481_p2 = (sub_ln1249_fu_451_p2 + zext_ln1249_13_fu_477_p1);
assign add_ln1249_3_fu_740_p2 = (sub_ln1249_reg_1109 + zext_ln1249_15_fu_736_p1);
assign add_ln1249_4_fu_827_p2 = (sub_ln1245_reg_1213 + zext_ln1249_17_fu_824_p1);
assign add_ln1249_5_fu_903_p2 = (sub_ln1245_reg_1213 + zext_ln1249_21_fu_899_p1);
assign add_ln1249_6_fu_799_p2 = (empty_141_fu_725_p1 + zext_ln1249_25_reg_1182);
assign add_ln1249_7_fu_857_p2 = (sub_ln1245_reg_1213 + zext_ln1249_25_reg_1182);
assign add_ln1249_8_fu_660_p2 = (empty_143_fu_614_p1 + zext_ln1249_25_fu_656_p1);
assign add_ln1249_fu_650_p2 = (zext_ln1249_1_fu_646_p1 + 3'd2);
assign add_ln1256_2_fu_999_p2 = ($signed(add_ln1256_1_reg_1405) + $signed(add_ln1256_reg_1400));
assign add_ln1256_6_fu_1003_p0 = grp_fu_1041_p3;
assign add_ln1256_6_fu_1003_p2 = ($signed(add_ln1256_6_fu_1003_p0) + $signed(add_ln1256_3_reg_1410));
assign and_ln1243_fu_389_p2 = (xor_ln1243_fu_377_p2 & icmp_ln1245_fu_383_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign empty_129_fu_542_p2 = (p_shl76_fu_539_p1 + select_ln1243_1_cast_fu_536_p1);
assign empty_130_fu_553_p1 = empty_129_fu_542_p2[12:0];
assign empty_131_fu_837_p2 = (empty_130_reg_1138 + 13'd1);
assign empty_132_fu_847_p2 = (empty_130_reg_1138 + 13'd2);
assign empty_133_fu_671_p2 = (empty_130_reg_1138 + 13'd3);
assign empty_134_fu_866_p2 = (empty_130_reg_1138 + 13'd4);
assign empty_135_fu_681_p2 = (empty_130_reg_1138 + 13'd5);
assign empty_136_fu_804_p2 = (empty_130_reg_1138 + 13'd6);
assign empty_137_fu_814_p2 = (empty_130_reg_1138 + 13'd7);
assign empty_138_fu_557_p2 = (empty_130_fu_553_p1 + 13'd8);
assign empty_139_fu_457_p1 = select_ln1244_fu_423_p3[0:0];
assign empty_140_fu_461_p2 = select_ln1244_fu_423_p3 << 2'd1;
assign empty_141_fu_725_p1 = sub_ln1249_1_fu_719_p2[14:0];
assign empty_142_fu_471_p2 = (p_cast218_fu_467_p1 + 3'd2);
assign empty_143_fu_614_p1 = sub_ln1249_2_fu_608_p2[14:0];
assign empty_144_fu_487_p1 = v644_mid2_fu_415_p3[0:0];
assign empty_145_fu_627_p2 = v644_mid2_reg_1093 << 2'd1;
assign empty_fu_409_p2 = (icmp_ln1244_fu_363_p2 | and_ln1243_fu_389_p2);
assign grp_fu_1017_p1 = grp_fu_1017_p10;
assign grp_fu_1017_p10 = reg_301;
assign grp_fu_1023_p1 = grp_fu_1023_p10;
assign grp_fu_1023_p10 = v647_reg_1260;
assign grp_fu_1029_p1 = grp_fu_1029_p10;
assign grp_fu_1029_p10 = v647_3_reg_1290;
assign grp_fu_1035_p1 = grp_fu_1035_p10;
assign grp_fu_1035_p10 = v647_5_reg_1315;
assign grp_fu_1041_p1 = grp_fu_1041_p10;
assign grp_fu_1041_p10 = reg_301;
assign icmp_ln1243_fu_333_p2 = ((ap_sig_allocacmp_indvar_flatten1523_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln1244_fu_363_p2 = ((ap_sig_allocacmp_indvar_flatten1510_load == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln1245_fu_383_p2 = ((ap_sig_allocacmp_v644_load == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln1256_2_fu_981_p0 = mul_ln1256_2_fu_981_p00;
assign mul_ln1256_2_fu_981_p00 = v42_q0;
assign mul_ln1256_3_fu_965_p0 = mul_ln1256_3_fu_965_p00;
assign mul_ln1256_3_fu_965_p00 = v42_q0;
assign mul_ln1256_6_fu_994_p0 = mul_ln1256_6_fu_994_p00;
assign mul_ln1256_6_fu_994_p00 = v42_q0;
assign mul_ln1256_fu_949_p0 = mul_ln1256_fu_949_p00;
assign mul_ln1256_fu_949_p00 = v42_q0;
assign or_ln1249_1_fu_908_p2 = (trunc_ln1249_1_reg_1170 | or_ln3_fu_892_p3);
assign or_ln1249_fu_876_p2 = (trunc_ln1249_1_reg_1170 | empty_145_reg_1164);
assign or_ln3_fu_892_p3 = {{empty_144_reg_1131}, {1'd1}};
assign p_cast10_fu_842_p1 = empty_131_fu_837_p2;
assign p_cast11_fu_852_p1 = empty_132_fu_847_p2;
assign p_cast12_fu_676_p1 = empty_133_fu_671_p2;
assign p_cast13_fu_871_p1 = empty_134_fu_866_p2;
assign p_cast14_fu_686_p1 = empty_135_fu_681_p2;
assign p_cast15_fu_809_p1 = empty_136_fu_804_p2;
assign p_cast16_fu_819_p1 = empty_137_fu_814_p2;
assign p_cast17_fu_563_p1 = empty_138_fu_557_p2;
assign p_cast218_fu_467_p1 = empty_140_fu_461_p2;
assign p_cast9_fu_548_p1 = empty_129_fu_542_p2;
assign p_shl76_fu_539_p1 = tmp_reg_1104;
assign p_shl7_fu_590_p3 = {{add_ln1249_2_reg_1125}, {3'd0}};
assign p_shl_fu_699_p3 = {{add_ln1249_1_fu_694_p2}, {3'd0}};
assign select_ln1243_1_cast_fu_536_p1 = select_ln1243_1_reg_1087;
assign select_ln1243_1_fu_395_p3 = ((icmp_ln1244_fu_363_p2[0:0] == 1'b1) ? add_ln1243_fu_357_p2 : ap_sig_allocacmp_v642_load);
assign select_ln1243_fu_369_p3 = ((icmp_ln1244_fu_363_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v643_load);
assign select_ln1244_1_fu_503_p3 = ((icmp_ln1244_fu_363_p2[0:0] == 1'b1) ? 4'd1 : add_ln1244_1_fu_497_p2);
assign select_ln1244_fu_423_p3 = ((and_ln1243_fu_389_p2[0:0] == 1'b1) ? add_ln1244_fu_403_p2 : select_ln1243_fu_369_p3);
assign shl_ln1246_fu_568_p2 = select_ln1243_1_reg_1087 << 10'd1;
assign sub_ln1245_fu_769_p2 = (tmp_99_fu_757_p3 - zext_ln1249_16_fu_765_p1);
assign sub_ln1249_1_fu_719_p2 = (p_shl_fu_699_p3 - zext_ln1249_5_fu_715_p1);
assign sub_ln1249_2_fu_608_p2 = (p_shl7_fu_590_p3 - zext_ln1249_14_fu_604_p1);
assign sub_ln1249_fu_451_p2 = (tmp_fu_431_p3 - zext_ln1249_fu_447_p1);
assign tmp_100_fu_932_p4 = {{{tmp_344_cast_reg_1220}, {empty_144_reg_1131}}, {1'd1}};
assign tmp_101_fu_913_p3 = {{tmp_347_cast_reg_1176}, {or_ln1249_1_fu_908_p2}};
assign tmp_344_cast_fu_775_p4 = {{sub_ln1249_1_fu_719_p2[14:2]}};
assign tmp_92_fu_785_p4 = {{{tmp_344_cast_fu_775_p4}, {empty_144_reg_1131}}, {1'd0}};
assign tmp_93_fu_880_p3 = {{tmp_347_cast_reg_1176}, {or_ln1249_fu_876_p2}};
assign tmp_94_fu_439_p3 = {{select_ln1243_1_fu_395_p3}, {1'd0}};
assign tmp_95_fu_582_p3 = {{add_ln1246_fu_576_p2}, {1'd0}};
assign tmp_96_fu_707_p3 = {{add_ln1249_1_fu_694_p2}, {1'd0}};
assign tmp_97_fu_597_p3 = {{add_ln1249_2_reg_1125}, {1'd0}};
assign tmp_98_fu_749_p3 = {{add_ln1249_3_fu_740_p2}, {1'd0}};
assign tmp_99_fu_757_p3 = {{trunc_ln1249_fu_745_p1}, {3'd0}};
assign tmp_fu_431_p3 = {{select_ln1243_1_fu_395_p3}, {3'd0}};
assign tmp_s_fu_729_p3 = {{empty_139_reg_1115}, {1'd1}};
assign trunc_ln1249_1_fu_632_p1 = sub_ln1249_2_fu_608_p2[1:0];
assign trunc_ln1249_fu_745_p1 = add_ln1249_3_fu_740_p2[11:0];
assign v24_Addr_A = v24_Addr_A_orig << 32'd0;
assign v24_Addr_B = v24_Addr_B_orig << 32'd0;
assign v24_Din_A = 8'd0;
assign v24_Din_B = 8'd0;
assign v24_EN_A = v24_EN_A_local;
assign v24_EN_B = v24_EN_B_local;
assign v24_WEN_A = 1'd0;
assign v24_WEN_B = 1'd0;
assign v41_address1 = zext_ln1246_2_fu_1013_p1;
assign v41_ce1 = v41_ce1_local;
assign v41_d1 = v655_reg_1415;
assign v41_we1 = v41_we1_local;
assign v42_address0 = v42_address0_local;
assign v42_ce0 = v42_ce0_local;
assign v644_mid2_fu_415_p3 = ((empty_fu_409_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v644_load);
assign v655_fu_1007_p2 = (add_ln1256_6_fu_1003_p2 + add_ln1256_2_fu_999_p2);
assign xor_ln1243_fu_377_p2 = (icmp_ln1244_fu_363_p2 ^ 1'd1);
assign zext_ln1246_1_fu_618_p1 = v644_mid2_reg_1093;
assign zext_ln1246_2_fu_1013_p1 = add_ln1246_1_reg_1159_pp0_iter1_reg;
assign zext_ln1246_fu_573_p1 = select_ln1244_reg_1099;
assign zext_ln1249_13_fu_477_p1 = empty_142_fu_471_p2;
assign zext_ln1249_14_fu_604_p1 = tmp_97_fu_597_p3;
assign zext_ln1249_15_fu_736_p1 = tmp_s_fu_729_p3;
assign zext_ln1249_16_fu_765_p1 = tmp_98_fu_749_p3;
assign zext_ln1249_17_fu_824_p1 = empty_145_reg_1164;
assign zext_ln1249_18_fu_794_p1 = tmp_92_fu_785_p4;
assign zext_ln1249_19_fu_832_p1 = add_ln1249_4_fu_827_p2;
assign zext_ln1249_1_fu_646_p1 = empty_145_fu_627_p2;
assign zext_ln1249_20_fu_887_p1 = tmp_93_fu_880_p3;
assign zext_ln1249_21_fu_899_p1 = or_ln3_fu_892_p3;
assign zext_ln1249_22_fu_940_p1 = tmp_100_fu_932_p4;
assign zext_ln1249_23_fu_970_p1 = add_ln1249_5_reg_1325;
assign zext_ln1249_24_fu_920_p1 = tmp_101_fu_913_p3;
assign zext_ln1249_25_fu_656_p1 = add_ln1249_fu_650_p2;
assign zext_ln1249_26_fu_958_p1 = add_ln1249_6_reg_1230;
assign zext_ln1249_27_fu_861_p1 = add_ln1249_7_fu_857_p2;
assign zext_ln1249_28_fu_666_p1 = add_ln1249_8_fu_660_p2;
assign zext_ln1249_3_fu_691_p1 = empty_140_reg_1120;
assign zext_ln1249_5_fu_715_p1 = tmp_96_fu_707_p3;
assign zext_ln1249_fu_447_p1 = tmp_94_fu_439_p3;
always @ (posedge ap_clk) begin
    tmp_reg_1104[2:0] <= 3'b000;
    sub_ln1249_reg_1109[0] <= 1'b0;
    empty_140_reg_1120[0] <= 1'b0;
    add_ln1249_2_reg_1125[0] <= 1'b0;
    empty_145_reg_1164[0] <= 1'b0;
    trunc_ln1249_1_reg_1170[1:0] <= 2'b00;
    zext_ln1249_25_reg_1182[0] <= 1'b0;
    zext_ln1249_25_reg_1182[14:3] <= 12'b000000000000;
    sub_ln1245_reg_1213[1:0] <= 2'b10;
    add_ln1249_6_reg_1230[0] <= 1'b0;
    add_ln1249_5_reg_1325[0] <= 1'b1;
end
endmodule 
