
module backprop_get_oracle_activations2_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,dactivations_address0,dactivations_ce0,dactivations_q0,dactivations_address1,dactivations_ce1,dactivations_q1,grp_fu_3011_p_din0,grp_fu_3011_p_din1,grp_fu_3011_p_opcode,grp_fu_3011_p_dout0,grp_fu_3011_p_ce,grp_fu_3015_p_din0,grp_fu_3015_p_din1,grp_fu_3015_p_opcode,grp_fu_3015_p_dout0,grp_fu_3015_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [3:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [3:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [3:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [3:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [5:0] dactivations_address0;
output   dactivations_ce0;
input  [63:0] dactivations_q0;
output  [5:0] dactivations_address1;
output   dactivations_ce1;
input  [63:0] dactivations_q1;
output  [63:0] grp_fu_3011_p_din0;
output  [63:0] grp_fu_3011_p_din1;
output  [0:0] grp_fu_3011_p_opcode;
input  [63:0] grp_fu_3011_p_dout0;
output   grp_fu_3011_p_ce;
output  [63:0] grp_fu_3015_p_din0;
output  [63:0] grp_fu_3015_p_din1;
output  [0:0] grp_fu_3015_p_opcode;
input  [63:0] grp_fu_3015_p_dout0;
output   grp_fu_3015_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_21_reg_1184;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_544;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
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
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_548;
wire   [63:0] grp_fu_540_p2;
reg   [63:0] reg_552;
reg   [6:0] i_8_reg_1176;
reg   [6:0] tmp_reg_1193;
wire   [5:0] tmp_s_fu_618_p4;
reg   [5:0] tmp_s_reg_1198;
wire   [7:0] tmp_22_fu_651_p3;
reg   [7:0] tmp_22_reg_1208;
reg   [4:0] tmp_23_reg_1241;
wire   [3:0] lshr_ln_fu_674_p4;
reg   [3:0] lshr_ln_reg_1246;
reg   [3:0] lshr_ln_reg_1246_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_1246_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_1246_pp0_iter3_reg;
reg   [63:0] dactivations_load_reg_1251;
reg   [63:0] dactivations_load_reg_1251_pp0_iter1_reg;
reg   [63:0] dactivations_load_reg_1251_pp0_iter2_reg;
reg   [63:0] dactivations_load_1_reg_1256;
reg   [63:0] dactivations_load_1_reg_1256_pp0_iter1_reg;
reg   [63:0] dactivations_load_1_reg_1256_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_fu_729_p1;
wire   [63:0] bitcast_ln85_3_fu_734_p1;
reg   [63:0] dactivations_load_2_reg_1291;
reg   [63:0] dactivations_load_2_reg_1291_pp0_iter1_reg;
reg   [63:0] dactivations_load_2_reg_1291_pp0_iter2_reg;
reg   [63:0] dactivations_load_3_reg_1296;
reg   [63:0] dactivations_load_3_reg_1296_pp0_iter1_reg;
reg   [63:0] dactivations_load_3_reg_1296_pp0_iter2_reg;
wire   [2:0] tmp_24_fu_739_p4;
reg   [2:0] tmp_24_reg_1301;
reg   [2:0] tmp_24_reg_1301_pp0_iter1_reg;
reg   [2:0] tmp_24_reg_1301_pp0_iter2_reg;
reg   [2:0] tmp_24_reg_1301_pp0_iter3_reg;
wire   [63:0] bitcast_ln85_6_fu_805_p1;
wire   [63:0] bitcast_ln85_9_fu_810_p1;
reg   [63:0] dactivations_load_4_reg_1338;
reg   [63:0] dactivations_load_4_reg_1338_pp0_iter1_reg;
reg   [63:0] dactivations_load_4_reg_1338_pp0_iter2_reg;
reg   [63:0] dactivations_load_5_reg_1343;
reg   [63:0] dactivations_load_5_reg_1343_pp0_iter1_reg;
reg   [63:0] dactivations_load_5_reg_1343_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_12_fu_883_p1;
wire   [63:0] bitcast_ln85_15_fu_888_p1;
reg   [63:0] dactivations_load_6_reg_1388;
reg   [63:0] dactivations_load_6_reg_1388_pp0_iter1_reg;
reg   [63:0] dactivations_load_6_reg_1388_pp0_iter2_reg;
reg   [63:0] dactivations_load_7_reg_1393;
reg   [63:0] dactivations_load_7_reg_1393_pp0_iter1_reg;
reg   [63:0] dactivations_load_7_reg_1393_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_18_fu_913_p1;
wire   [63:0] bitcast_ln85_21_fu_918_p1;
wire   [63:0] bitcast_ln85_1_fu_923_p1;
wire   [63:0] bitcast_ln85_7_fu_928_p1;
wire   [63:0] bitcast_ln85_4_fu_953_p1;
wire   [63:0] bitcast_ln85_10_fu_958_p1;
wire   [63:0] grp_fu_532_p2;
reg   [63:0] mul8_reg_1458;
wire   [63:0] grp_fu_536_p2;
reg   [63:0] mul8_1_reg_1468;
wire   [63:0] bitcast_ln85_13_fu_1005_p1;
wire   [63:0] bitcast_ln85_16_fu_1010_p1;
reg   [63:0] mul8_2_reg_1488;
reg   [63:0] mul8_3_reg_1498;
wire   [63:0] bitcast_ln85_19_fu_1035_p1;
wire   [63:0] bitcast_ln85_22_fu_1040_p1;
wire   [63:0] bitcast_ln85_2_fu_1045_p1;
wire   [63:0] bitcast_ln85_5_fu_1050_p1;
reg   [63:0] mul8_4_reg_1528;
reg   [63:0] mul8_5_reg_1538;
wire   [63:0] bitcast_ln85_8_fu_1075_p1;
wire   [63:0] bitcast_ln85_11_fu_1080_p1;
reg   [63:0] mul8_6_reg_1558;
reg   [63:0] mul8_7_reg_1568;
reg   [63:0] mul8_s_reg_1578;
reg   [63:0] mul8_2_1_reg_1583;
wire   [63:0] bitcast_ln85_14_fu_1115_p1;
wire   [63:0] bitcast_ln85_17_fu_1120_p1;
reg   [63:0] mul8_1_1_reg_1598;
reg   [63:0] mul8_3_1_reg_1603;
wire   [63:0] bitcast_ln85_20_fu_1125_p1;
wire   [63:0] bitcast_ln85_23_fu_1130_p1;
reg   [63:0] mul8_4_1_reg_1618;
reg   [63:0] mul8_5_1_reg_1623;
reg   [63:0] mul8_6_1_reg_1628;
reg   [63:0] mul8_7_1_reg_1633;
reg   [63:0] add_reg_1638;
reg   [63:0] mul8_19_reg_1643;
reg   [63:0] add11_1_reg_1648;
reg   [63:0] mul8_1_2_reg_1653;
reg   [63:0] add11_2_reg_1658;
reg   [63:0] mul8_2_2_reg_1663;
reg   [63:0] add11_3_reg_1668;
reg   [63:0] mul8_3_2_reg_1673;
reg   [63:0] add11_4_reg_1678;
reg   [63:0] mul8_4_2_reg_1683;
reg   [63:0] add11_5_reg_1688;
reg   [63:0] mul8_5_2_reg_1693;
reg   [63:0] add11_6_reg_1698;
reg   [63:0] mul8_6_2_reg_1703;
reg   [63:0] add11_7_reg_1708;
reg   [63:0] mul8_7_2_reg_1713;
reg   [63:0] add11_s_reg_1718;
reg   [63:0] add11_1_1_reg_1723;
reg   [63:0] add11_2_1_reg_1728;
reg   [63:0] add11_3_1_reg_1733;
reg   [63:0] add11_4_1_reg_1738;
reg   [63:0] add11_5_1_reg_1743;
reg   [63:0] add11_6_1_reg_1748;
reg   [63:0] add11_7_1_reg_1753;
reg   [63:0] add11_19_reg_1758;
reg   [63:0] add11_1_2_reg_1763;
reg   [63:0] add11_2_2_reg_1768;
reg   [63:0] add11_3_2_reg_1773;
reg   [63:0] add11_4_2_reg_1778;
reg   [63:0] add11_5_2_reg_1783;
reg   [63:0] add11_6_2_reg_1788;
reg   [63:0] add11_7_2_reg_1793;
wire   [63:0] zext_ln81_fu_1135_p1;
reg   [63:0] zext_ln81_reg_1798;
wire   [63:0] zext_ln83_4_fu_1146_p1;
reg   [63:0] zext_ln83_4_reg_1805;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_603_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln82_fu_576_p1;
wire   [63:0] zext_ln85_3_fu_659_p1;
wire   [63:0] zext_ln83_fu_646_p1;
wire   [63:0] zext_ln85_6_fu_701_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln83_1_fu_691_p1;
wire   [63:0] zext_ln85_9_fu_724_p1;
wire   [63:0] zext_ln83_2_fu_714_p1;
wire   [63:0] zext_ln85_12_fu_766_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln83_3_fu_756_p1;
wire   [63:0] zext_ln85_15_fu_800_p1;
wire   [63:0] zext_ln83_5_fu_790_p1;
wire   [63:0] zext_ln85_18_fu_832_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_6_fu_822_p1;
wire   [63:0] zext_ln85_21_fu_854_p1;
wire   [63:0] zext_ln83_7_fu_844_p1;
wire   [63:0] zext_ln85_1_fu_866_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln85_7_fu_878_p1;
wire   [63:0] zext_ln85_4_fu_898_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln85_10_fu_908_p1;
wire   [63:0] zext_ln85_13_fu_938_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln85_16_fu_948_p1;
wire   [63:0] zext_ln85_19_fu_968_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln85_22_fu_978_p1;
wire   [63:0] zext_ln85_2_fu_990_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln85_5_fu_1000_p1;
wire   [63:0] zext_ln85_8_fu_1020_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln85_11_fu_1030_p1;
wire   [63:0] zext_ln85_14_fu_1060_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln85_17_fu_1070_p1;
wire   [63:0] zext_ln85_20_fu_1090_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln85_23_fu_1100_p1;
reg   [6:0] i_fu_142;
wire   [6:0] add_ln82_fu_1105_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    dactivations_ce1_local;
reg   [5:0] dactivations_address1_local;
reg    dactivations_ce0_local;
reg   [5:0] dactivations_address0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [3:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [3:0] oracle_activations_1_address0_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg   [3:0] oracle_activations_2_address0_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg   [3:0] oracle_activations_3_address0_local;
reg   [63:0] grp_fu_522_p0;
reg   [63:0] grp_fu_522_p1;
reg   [63:0] grp_fu_527_p0;
reg   [63:0] grp_fu_527_p1;
reg   [63:0] grp_fu_532_p0;
reg   [63:0] grp_fu_532_p1;
reg   [63:0] grp_fu_536_p0;
reg   [63:0] grp_fu_536_p1;
reg   [63:0] grp_fu_540_p0;
reg   [63:0] grp_fu_540_p1;
wire   [5:0] empty_fu_585_p1;
wire   [7:0] p_shl_fu_589_p3;
wire   [7:0] zext_ln37_fu_581_p1;
wire   [7:0] empty_65_fu_597_p2;
wire   [4:0] tmp_20_fu_628_p4;
wire   [5:0] or_ln7_fu_638_p3;
wire   [5:0] or_ln82_1_fu_683_p3;
wire   [7:0] empty_66_fu_696_p2;
wire   [5:0] or_ln82_2_fu_706_p3;
wire   [7:0] empty_67_fu_719_p2;
wire   [5:0] or_ln82_3_fu_748_p3;
wire   [7:0] empty_68_fu_761_p2;
wire   [0:0] tmp_25_fu_771_p3;
wire   [5:0] or_ln82_4_fu_778_p5;
wire   [7:0] empty_69_fu_795_p2;
wire   [5:0] or_ln82_5_fu_815_p3;
wire   [7:0] empty_70_fu_827_p2;
wire   [5:0] or_ln82_6_fu_837_p3;
wire   [7:0] empty_71_fu_849_p2;
wire   [7:0] or_ln_fu_859_p3;
wire   [7:0] or_ln85_2_fu_871_p3;
wire   [7:0] add_ln85_fu_893_p2;
wire   [7:0] add_ln85_3_fu_903_p2;
wire   [7:0] add_ln85_5_fu_933_p2;
wire   [7:0] add_ln85_7_fu_943_p2;
wire   [7:0] add_ln85_9_fu_963_p2;
wire   [7:0] add_ln85_11_fu_973_p2;
wire   [7:0] or_ln85_1_fu_983_p3;
wire   [7:0] add_ln85_1_fu_995_p2;
wire   [7:0] add_ln85_2_fu_1015_p2;
wire   [7:0] add_ln85_4_fu_1025_p2;
wire   [7:0] add_ln85_6_fu_1055_p2;
wire   [7:0] add_ln85_8_fu_1065_p2;
wire   [7:0] add_ln85_10_fu_1085_p2;
wire   [7:0] add_ln85_12_fu_1095_p2;
wire   [3:0] or_ln8_fu_1139_p3;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_142 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.ce(1'b1),.dout(grp_fu_532_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_536_p0),.din1(grp_fu_536_p1),.ce(1'b1),.dout(grp_fu_536_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_540_p0),.din1(grp_fu_540_p1),.ce(1'b1),.dout(grp_fu_540_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_142 <= 7'd0;
    end else if (((tmp_21_reg_1184 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_142 <= add_ln82_fu_1105_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_19_reg_1758 <= grp_fu_3011_p_dout0;
        add11_1_2_reg_1763 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_1723 <= grp_fu_3015_p_dout0;
        add11_s_reg_1718 <= grp_fu_3011_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_1648 <= grp_fu_3015_p_dout0;
        add_reg_1638 <= grp_fu_3011_p_dout0;
        mul8_19_reg_1643 <= grp_fu_532_p2;
        mul8_1_2_reg_1653 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_reg_1728 <= grp_fu_3011_p_dout0;
        add11_3_1_reg_1733 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add11_2_2_reg_1768 <= grp_fu_3011_p_dout0;
        add11_3_2_reg_1773 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_2_reg_1658 <= grp_fu_3011_p_dout0;
        add11_3_reg_1668 <= grp_fu_3015_p_dout0;
        mul8_2_2_reg_1663 <= grp_fu_532_p2;
        mul8_3_2_reg_1673 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_4_1_reg_1738 <= grp_fu_3011_p_dout0;
        add11_5_1_reg_1743 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_4_2_reg_1778 <= grp_fu_3011_p_dout0;
        add11_5_2_reg_1783 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_4_reg_1678 <= grp_fu_3011_p_dout0;
        add11_5_reg_1688 <= grp_fu_3015_p_dout0;
        mul8_4_2_reg_1683 <= grp_fu_532_p2;
        mul8_5_2_reg_1693 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_6_1_reg_1748 <= grp_fu_3011_p_dout0;
        add11_7_1_reg_1753 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_6_2_reg_1788 <= grp_fu_3011_p_dout0;
        add11_7_2_reg_1793 <= grp_fu_3015_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_6_reg_1698 <= grp_fu_3011_p_dout0;
        add11_7_reg_1708 <= grp_fu_3015_p_dout0;
        mul8_6_2_reg_1703 <= grp_fu_532_p2;
        mul8_7_2_reg_1713 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_load_1_reg_1256 <= dactivations_q0;
        dactivations_load_reg_1251 <= dactivations_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_load_1_reg_1256_pp0_iter1_reg <= dactivations_load_1_reg_1256;
        dactivations_load_1_reg_1256_pp0_iter2_reg <= dactivations_load_1_reg_1256_pp0_iter1_reg;
        dactivations_load_reg_1251_pp0_iter1_reg <= dactivations_load_reg_1251;
        dactivations_load_reg_1251_pp0_iter2_reg <= dactivations_load_reg_1251_pp0_iter1_reg;
        lshr_ln_reg_1246 <= {{i_8_reg_1176[5:2]}};
        lshr_ln_reg_1246_pp0_iter1_reg <= lshr_ln_reg_1246;
        lshr_ln_reg_1246_pp0_iter2_reg <= lshr_ln_reg_1246_pp0_iter1_reg;
        lshr_ln_reg_1246_pp0_iter3_reg <= lshr_ln_reg_1246_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_load_2_reg_1291 <= dactivations_q1;
        dactivations_load_3_reg_1296 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_load_2_reg_1291_pp0_iter1_reg <= dactivations_load_2_reg_1291;
        dactivations_load_2_reg_1291_pp0_iter2_reg <= dactivations_load_2_reg_1291_pp0_iter1_reg;
        dactivations_load_3_reg_1296_pp0_iter1_reg <= dactivations_load_3_reg_1296;
        dactivations_load_3_reg_1296_pp0_iter2_reg <= dactivations_load_3_reg_1296_pp0_iter1_reg;
        tmp_24_reg_1301 <= {{i_8_reg_1176[5:3]}};
        tmp_24_reg_1301_pp0_iter1_reg <= tmp_24_reg_1301;
        tmp_24_reg_1301_pp0_iter2_reg <= tmp_24_reg_1301_pp0_iter1_reg;
        tmp_24_reg_1301_pp0_iter3_reg <= tmp_24_reg_1301_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_load_4_reg_1338 <= dactivations_q1;
        dactivations_load_5_reg_1343 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_load_4_reg_1338_pp0_iter1_reg <= dactivations_load_4_reg_1338;
        dactivations_load_4_reg_1338_pp0_iter2_reg <= dactivations_load_4_reg_1338_pp0_iter1_reg;
        dactivations_load_5_reg_1343_pp0_iter1_reg <= dactivations_load_5_reg_1343;
        dactivations_load_5_reg_1343_pp0_iter2_reg <= dactivations_load_5_reg_1343_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_load_6_reg_1388 <= dactivations_q1;
        dactivations_load_7_reg_1393 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_load_6_reg_1388_pp0_iter1_reg <= dactivations_load_6_reg_1388;
        dactivations_load_6_reg_1388_pp0_iter2_reg <= dactivations_load_6_reg_1388_pp0_iter1_reg;
        dactivations_load_7_reg_1393_pp0_iter1_reg <= dactivations_load_7_reg_1393;
        dactivations_load_7_reg_1393_pp0_iter2_reg <= dactivations_load_7_reg_1393_pp0_iter1_reg;
        zext_ln81_reg_1798[3 : 0] <= zext_ln81_fu_1135_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_8_reg_1176 <= ap_sig_allocacmp_i_8;
        tmp_21_reg_1184 <= ap_sig_allocacmp_i_8[32'd6];
        tmp_22_reg_1208[7 : 2] <= tmp_22_fu_651_p3[7 : 2];
        tmp_23_reg_1241 <= {{empty_65_fu_597_p2[7:3]}};
        tmp_reg_1193 <= {{empty_65_fu_597_p2[7:1]}};
        tmp_s_reg_1198 <= {{empty_65_fu_597_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_1_reg_1598 <= grp_fu_532_p2;
        mul8_3_1_reg_1603 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_1_reg_1468 <= grp_fu_536_p2;
        mul8_reg_1458 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_2_1_reg_1583 <= grp_fu_536_p2;
        mul8_s_reg_1578 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_2_reg_1488 <= grp_fu_532_p2;
        mul8_3_reg_1498 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_4_1_reg_1618 <= grp_fu_532_p2;
        mul8_5_1_reg_1623 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_4_reg_1528 <= grp_fu_532_p2;
        mul8_5_reg_1538 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_6_1_reg_1628 <= grp_fu_532_p2;
        mul8_7_1_reg_1633 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_6_reg_1558 <= grp_fu_532_p2;
        mul8_7_reg_1568 <= grp_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_544 <= weights3_q1;
        reg_548 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_552 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        zext_ln83_4_reg_1805[3 : 1] <= zext_ln83_4_fu_1146_p1[3 : 1];
    end
end
always @ (*) begin
    if (((tmp_21_reg_1184 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_address0_local = zext_ln83_7_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_address0_local = zext_ln83_5_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_address0_local = zext_ln83_2_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_address0_local = zext_ln83_fu_646_p1;
        end else begin
            dactivations_address0_local = 'bx;
        end
    end else begin
        dactivations_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_address1_local = zext_ln83_6_fu_822_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_address1_local = zext_ln83_3_fu_756_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_address1_local = zext_ln83_1_fu_691_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_address1_local = zext_ln82_fu_576_p1;
        end else begin
            dactivations_address1_local = 'bx;
        end
    end else begin
        dactivations_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_ce0_local = 1'b1;
    end else begin
        dactivations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_ce1_local = 1'b1;
    end else begin
        dactivations_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p0 = add11_6_1_reg_1748;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p0 = add11_4_1_reg_1738;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p0 = add11_2_1_reg_1728;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p0 = add11_s_reg_1718;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_522_p0 = add11_6_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_522_p0 = add11_4_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_522_p0 = add11_2_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_522_p0 = add_reg_1638;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_522_p0 = mul8_6_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_522_p0 = mul8_4_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_522_p0 = mul8_2_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_522_p0 = mul8_reg_1458;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_522_p1 = mul8_6_2_reg_1703;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_522_p1 = mul8_4_2_reg_1683;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_522_p1 = mul8_2_2_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p1 = mul8_19_reg_1643;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_522_p1 = mul8_6_1_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_522_p1 = mul8_4_1_reg_1618;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_522_p1 = mul8_2_1_reg_1583;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_522_p1 = mul8_s_reg_1578;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_522_p1 = 64'd0;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_527_p0 = add11_7_1_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_527_p0 = add11_5_1_reg_1743;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_527_p0 = add11_3_1_reg_1733;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_527_p0 = add11_1_1_reg_1723;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_527_p0 = add11_7_reg_1708;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_527_p0 = add11_5_reg_1688;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_527_p0 = add11_3_reg_1668;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_527_p0 = add11_1_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_527_p0 = mul8_7_reg_1568;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_527_p0 = mul8_5_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_527_p0 = mul8_3_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_527_p0 = mul8_1_reg_1468;
    end else begin
        grp_fu_527_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_527_p1 = mul8_7_2_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_527_p1 = mul8_5_2_reg_1693;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_527_p1 = mul8_3_2_reg_1673;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_527_p1 = mul8_1_2_reg_1653;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_527_p1 = mul8_7_1_reg_1633;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_527_p1 = mul8_5_1_reg_1623;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_527_p1 = mul8_3_1_reg_1603;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_527_p1 = mul8_1_1_reg_1598;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_527_p1 = 64'd0;
    end else begin
        grp_fu_527_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_532_p0 = bitcast_ln85_20_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p0 = bitcast_ln85_14_fu_1115_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_532_p0 = bitcast_ln85_8_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_532_p0 = bitcast_ln85_2_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_532_p0 = bitcast_ln85_19_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_532_p0 = bitcast_ln85_13_fu_1005_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_532_p0 = bitcast_ln85_4_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_532_p0 = bitcast_ln85_1_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_532_p0 = bitcast_ln85_18_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_532_p0 = bitcast_ln85_12_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p0 = bitcast_ln85_6_fu_805_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p0 = bitcast_ln85_fu_729_p1;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_532_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_532_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_532_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_536_p0 = bitcast_ln85_23_fu_1130_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p0 = bitcast_ln85_17_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_536_p0 = bitcast_ln85_11_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_536_p0 = bitcast_ln85_5_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_536_p0 = bitcast_ln85_22_fu_1040_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_536_p0 = bitcast_ln85_16_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_536_p0 = bitcast_ln85_10_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_536_p0 = bitcast_ln85_7_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_536_p0 = bitcast_ln85_21_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_536_p0 = bitcast_ln85_15_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p0 = bitcast_ln85_9_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_536_p0 = bitcast_ln85_3_fu_734_p1;
    end else begin
        grp_fu_536_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_536_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_536_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_536_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_536_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_540_p0 = add11_7_2_reg_1793;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_540_p0 = add11_6_2_reg_1788;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_540_p0 = add11_5_2_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p0 = add11_4_2_reg_1778;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p0 = add11_3_2_reg_1773;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_540_p0 = add11_2_2_reg_1768;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_540_p0 = add11_1_2_reg_1763;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_540_p0 = add11_19_reg_1758;
    end else begin
        grp_fu_540_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_540_p1 = dactivations_load_7_reg_1393_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_540_p1 = dactivations_load_6_reg_1388_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_540_p1 = dactivations_load_5_reg_1343_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p1 = dactivations_load_4_reg_1338_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p1 = dactivations_load_3_reg_1296_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_540_p1 = dactivations_load_2_reg_1291_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_540_p1 = dactivations_load_1_reg_1256_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_540_p1 = dactivations_load_reg_1251_pp0_iter2_reg;
    end else begin
        grp_fu_540_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            oracle_activations_0_address0_local = zext_ln83_4_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            oracle_activations_0_address0_local = zext_ln81_fu_1135_p1;
        end else begin
            oracle_activations_0_address0_local = 'bx;
        end
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            oracle_activations_1_address0_local = zext_ln83_4_reg_1805;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            oracle_activations_1_address0_local = zext_ln81_reg_1798;
        end else begin
            oracle_activations_1_address0_local = 'bx;
        end
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            oracle_activations_2_address0_local = zext_ln83_4_reg_1805;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            oracle_activations_2_address0_local = zext_ln81_reg_1798;
        end else begin
            oracle_activations_2_address0_local = 'bx;
        end
    end else begin
        oracle_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            oracle_activations_3_address0_local = zext_ln83_4_reg_1805;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            oracle_activations_3_address0_local = zext_ln81_reg_1798;
        end else begin
            oracle_activations_3_address0_local = 'bx;
        end
    end else begin
        oracle_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_address0_local = zext_ln85_23_fu_1100_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_address0_local = zext_ln85_17_fu_1070_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_address0_local = zext_ln85_11_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_address0_local = zext_ln85_5_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_address0_local = zext_ln85_22_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_address0_local = zext_ln85_16_fu_948_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_address0_local = zext_ln85_10_fu_908_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_address0_local = zext_ln85_7_fu_878_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_address0_local = zext_ln85_21_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address0_local = zext_ln85_15_fu_800_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address0_local = zext_ln85_9_fu_724_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address0_local = zext_ln85_3_fu_659_p1;
        end else begin
            weights3_address0_local = 'bx;
        end
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_address1_local = zext_ln85_20_fu_1090_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_address1_local = zext_ln85_14_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_address1_local = zext_ln85_8_fu_1020_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_address1_local = zext_ln85_2_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_address1_local = zext_ln85_19_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_address1_local = zext_ln85_13_fu_938_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_address1_local = zext_ln85_4_fu_898_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_address1_local = zext_ln85_1_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_address1_local = zext_ln85_18_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address1_local = zext_ln85_12_fu_766_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address1_local = zext_ln85_6_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address1_local = zext_ln85_fu_603_p1;
        end else begin
            weights3_address1_local = 'bx;
        end
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_1105_p2 = (i_8_reg_1176 + 7'd8);
assign add_ln85_10_fu_1085_p2 = (tmp_22_reg_1208 + 8'd17);
assign add_ln85_11_fu_973_p2 = (tmp_22_reg_1208 + 8'd19);
assign add_ln85_12_fu_1095_p2 = (tmp_22_reg_1208 + 8'd20);
assign add_ln85_1_fu_995_p2 = (tmp_22_reg_1208 + 8'd2);
assign add_ln85_2_fu_1015_p2 = (tmp_22_reg_1208 + 8'd5);
assign add_ln85_3_fu_903_p2 = (tmp_22_reg_1208 + 8'd7);
assign add_ln85_4_fu_1025_p2 = (tmp_22_reg_1208 + 8'd8);
assign add_ln85_5_fu_933_p2 = (tmp_22_reg_1208 + 8'd10);
assign add_ln85_6_fu_1055_p2 = (tmp_22_reg_1208 + 8'd11);
assign add_ln85_7_fu_943_p2 = (tmp_22_reg_1208 + 8'd13);
assign add_ln85_8_fu_1065_p2 = (tmp_22_reg_1208 + 8'd14);
assign add_ln85_9_fu_963_p2 = (tmp_22_reg_1208 + 8'd16);
assign add_ln85_fu_893_p2 = (tmp_22_reg_1208 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_958_p1 = reg_548;
assign bitcast_ln85_11_fu_1080_p1 = reg_548;
assign bitcast_ln85_12_fu_883_p1 = reg_544;
assign bitcast_ln85_13_fu_1005_p1 = reg_544;
assign bitcast_ln85_14_fu_1115_p1 = reg_544;
assign bitcast_ln85_15_fu_888_p1 = reg_548;
assign bitcast_ln85_16_fu_1010_p1 = reg_548;
assign bitcast_ln85_17_fu_1120_p1 = reg_548;
assign bitcast_ln85_18_fu_913_p1 = reg_544;
assign bitcast_ln85_19_fu_1035_p1 = reg_544;
assign bitcast_ln85_1_fu_923_p1 = reg_544;
assign bitcast_ln85_20_fu_1125_p1 = reg_544;
assign bitcast_ln85_21_fu_918_p1 = reg_548;
assign bitcast_ln85_22_fu_1040_p1 = reg_548;
assign bitcast_ln85_23_fu_1130_p1 = reg_548;
assign bitcast_ln85_2_fu_1045_p1 = reg_544;
assign bitcast_ln85_3_fu_734_p1 = reg_548;
assign bitcast_ln85_4_fu_953_p1 = reg_544;
assign bitcast_ln85_5_fu_1050_p1 = reg_548;
assign bitcast_ln85_6_fu_805_p1 = reg_544;
assign bitcast_ln85_7_fu_928_p1 = reg_548;
assign bitcast_ln85_8_fu_1075_p1 = reg_544;
assign bitcast_ln85_9_fu_810_p1 = reg_548;
assign bitcast_ln85_fu_729_p1 = reg_544;
assign dactivations_address0 = dactivations_address0_local;
assign dactivations_address1 = dactivations_address1_local;
assign dactivations_ce0 = dactivations_ce0_local;
assign dactivations_ce1 = dactivations_ce1_local;
assign empty_65_fu_597_p2 = (p_shl_fu_589_p3 - zext_ln37_fu_581_p1);
assign empty_66_fu_696_p2 = (tmp_22_reg_1208 + 8'd3);
assign empty_67_fu_719_p2 = (tmp_22_reg_1208 + 8'd6);
assign empty_68_fu_761_p2 = (tmp_22_reg_1208 + 8'd9);
assign empty_69_fu_795_p2 = (tmp_22_reg_1208 + 8'd12);
assign empty_70_fu_827_p2 = (tmp_22_reg_1208 + 8'd15);
assign empty_71_fu_849_p2 = (tmp_22_reg_1208 + 8'd18);
assign empty_fu_585_p1 = ap_sig_allocacmp_i_8[5:0];
assign grp_fu_3011_p_ce = 1'b1;
assign grp_fu_3011_p_din0 = grp_fu_522_p0;
assign grp_fu_3011_p_din1 = grp_fu_522_p1;
assign grp_fu_3011_p_opcode = 2'd0;
assign grp_fu_3015_p_ce = 1'b1;
assign grp_fu_3015_p_din0 = grp_fu_527_p0;
assign grp_fu_3015_p_din1 = grp_fu_527_p1;
assign grp_fu_3015_p_opcode = 2'd0;
assign lshr_ln_fu_674_p4 = {{i_8_reg_1176[5:2]}};
assign or_ln7_fu_638_p3 = {{tmp_20_fu_628_p4}, {1'd1}};
assign or_ln82_1_fu_683_p3 = {{lshr_ln_fu_674_p4}, {2'd2}};
assign or_ln82_2_fu_706_p3 = {{lshr_ln_fu_674_p4}, {2'd3}};
assign or_ln82_3_fu_748_p3 = {{tmp_24_fu_739_p4}, {3'd4}};
assign or_ln82_4_fu_778_p5 = {{{{tmp_24_fu_739_p4}, {1'd1}}, {tmp_25_fu_771_p3}}, {1'd1}};
assign or_ln82_5_fu_815_p3 = {{tmp_24_reg_1301}, {3'd6}};
assign or_ln82_6_fu_837_p3 = {{tmp_24_reg_1301}, {3'd7}};
assign or_ln85_1_fu_983_p3 = {{tmp_s_reg_1198}, {2'd2}};
assign or_ln85_2_fu_871_p3 = {{tmp_23_reg_1241}, {3'd7}};
assign or_ln8_fu_1139_p3 = {{tmp_24_reg_1301_pp0_iter3_reg}, {1'd1}};
assign or_ln_fu_859_p3 = {{tmp_reg_1193}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = reg_552;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = reg_552;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_address0_local;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = reg_552;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_address0_local;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = reg_552;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign p_shl_fu_589_p3 = {{empty_fu_585_p1}, {2'd0}};
assign tmp_20_fu_628_p4 = {{ap_sig_allocacmp_i_8[5:1]}};
assign tmp_22_fu_651_p3 = {{tmp_s_fu_618_p4}, {2'd3}};
assign tmp_24_fu_739_p4 = {{i_8_reg_1176[5:3]}};
assign tmp_25_fu_771_p3 = i_8_reg_1176[32'd1];
assign tmp_s_fu_618_p4 = {{empty_65_fu_597_p2[7:2]}};
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign zext_ln37_fu_581_p1 = ap_sig_allocacmp_i_8;
assign zext_ln81_fu_1135_p1 = lshr_ln_reg_1246_pp0_iter3_reg;
assign zext_ln82_fu_576_p1 = ap_sig_allocacmp_i_8;
assign zext_ln83_1_fu_691_p1 = or_ln82_1_fu_683_p3;
assign zext_ln83_2_fu_714_p1 = or_ln82_2_fu_706_p3;
assign zext_ln83_3_fu_756_p1 = or_ln82_3_fu_748_p3;
assign zext_ln83_4_fu_1146_p1 = or_ln8_fu_1139_p3;
assign zext_ln83_5_fu_790_p1 = or_ln82_4_fu_778_p5;
assign zext_ln83_6_fu_822_p1 = or_ln82_5_fu_815_p3;
assign zext_ln83_7_fu_844_p1 = or_ln82_6_fu_837_p3;
assign zext_ln83_fu_646_p1 = or_ln7_fu_638_p3;
assign zext_ln85_10_fu_908_p1 = add_ln85_3_fu_903_p2;
assign zext_ln85_11_fu_1030_p1 = add_ln85_4_fu_1025_p2;
assign zext_ln85_12_fu_766_p1 = empty_68_fu_761_p2;
assign zext_ln85_13_fu_938_p1 = add_ln85_5_fu_933_p2;
assign zext_ln85_14_fu_1060_p1 = add_ln85_6_fu_1055_p2;
assign zext_ln85_15_fu_800_p1 = empty_69_fu_795_p2;
assign zext_ln85_16_fu_948_p1 = add_ln85_7_fu_943_p2;
assign zext_ln85_17_fu_1070_p1 = add_ln85_8_fu_1065_p2;
assign zext_ln85_18_fu_832_p1 = empty_70_fu_827_p2;
assign zext_ln85_19_fu_968_p1 = add_ln85_9_fu_963_p2;
assign zext_ln85_1_fu_866_p1 = or_ln_fu_859_p3;
assign zext_ln85_20_fu_1090_p1 = add_ln85_10_fu_1085_p2;
assign zext_ln85_21_fu_854_p1 = empty_71_fu_849_p2;
assign zext_ln85_22_fu_978_p1 = add_ln85_11_fu_973_p2;
assign zext_ln85_23_fu_1100_p1 = add_ln85_12_fu_1095_p2;
assign zext_ln85_2_fu_990_p1 = or_ln85_1_fu_983_p3;
assign zext_ln85_3_fu_659_p1 = tmp_22_fu_651_p3;
assign zext_ln85_4_fu_898_p1 = add_ln85_fu_893_p2;
assign zext_ln85_5_fu_1000_p1 = add_ln85_1_fu_995_p2;
assign zext_ln85_6_fu_701_p1 = empty_66_fu_696_p2;
assign zext_ln85_7_fu_878_p1 = or_ln85_2_fu_871_p3;
assign zext_ln85_8_fu_1020_p1 = add_ln85_2_fu_1015_p2;
assign zext_ln85_9_fu_724_p1 = empty_67_fu_719_p2;
assign zext_ln85_fu_603_p1 = empty_65_fu_597_p2;
always @ (posedge ap_clk) begin
    tmp_22_reg_1208[1:0] <= 2'b11;
    zext_ln81_reg_1798[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_1805[0] <= 1'b1;
    zext_ln83_4_reg_1805[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
