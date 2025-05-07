module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v137_4_address0,v137_4_ce0,v137_4_q0,v137_4_address1,v137_4_ce1,v137_4_q1,v137_5_address0,v137_5_ce0,v137_5_q0,v137_5_address1,v137_5_ce1,v137_5_q1,v137_6_address0,v137_6_ce0,v137_6_q0,v137_6_address1,v137_6_ce1,v137_6_q1,v137_7_address0,v137_7_ce0,v137_7_q0,v137_7_address1,v137_7_ce1,v137_7_q1,v137_8_address0,v137_8_ce0,v137_8_q0,v137_8_address1,v137_8_ce1,v137_8_q1,v137_9_address0,v137_9_ce0,v137_9_q0,v137_9_address1,v137_9_ce1,v137_9_q1,v137_10_address0,v137_10_ce0,v137_10_q0,v137_10_address1,v137_10_ce1,v137_10_q1,v137_11_address0,v137_11_ce0,v137_11_q0,v137_11_address1,v137_11_ce1,v137_11_q1,v137_12_address0,v137_12_ce0,v137_12_q0,v137_12_address1,v137_12_ce1,v137_12_q1,v137_13_address0,v137_13_ce0,v137_13_q0,v137_13_address1,v137_13_ce1,v137_13_q1,v137_14_address0,v137_14_ce0,v137_14_q0,v137_14_address1,v137_14_ce1,v137_14_q1,v137_15_address0,v137_15_ce0,v137_15_q0,v137_15_address1,v137_15_ce1,v137_15_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v140_address1,v140_ce1,v140_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v142_address0,v142_ce0,v142_we0,v142_d0); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [7:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [7:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [7:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [7:0] v137_2_address0;
output   v137_2_ce0;
input  [31:0] v137_2_q0;
output  [7:0] v137_2_address1;
output   v137_2_ce1;
input  [31:0] v137_2_q1;
output  [7:0] v137_3_address0;
output   v137_3_ce0;
input  [31:0] v137_3_q0;
output  [7:0] v137_3_address1;
output   v137_3_ce1;
input  [31:0] v137_3_q1;
output  [7:0] v137_4_address0;
output   v137_4_ce0;
input  [31:0] v137_4_q0;
output  [7:0] v137_4_address1;
output   v137_4_ce1;
input  [31:0] v137_4_q1;
output  [7:0] v137_5_address0;
output   v137_5_ce0;
input  [31:0] v137_5_q0;
output  [7:0] v137_5_address1;
output   v137_5_ce1;
input  [31:0] v137_5_q1;
output  [7:0] v137_6_address0;
output   v137_6_ce0;
input  [31:0] v137_6_q0;
output  [7:0] v137_6_address1;
output   v137_6_ce1;
input  [31:0] v137_6_q1;
output  [7:0] v137_7_address0;
output   v137_7_ce0;
input  [31:0] v137_7_q0;
output  [7:0] v137_7_address1;
output   v137_7_ce1;
input  [31:0] v137_7_q1;
output  [7:0] v137_8_address0;
output   v137_8_ce0;
input  [31:0] v137_8_q0;
output  [7:0] v137_8_address1;
output   v137_8_ce1;
input  [31:0] v137_8_q1;
output  [7:0] v137_9_address0;
output   v137_9_ce0;
input  [31:0] v137_9_q0;
output  [7:0] v137_9_address1;
output   v137_9_ce1;
input  [31:0] v137_9_q1;
output  [7:0] v137_10_address0;
output   v137_10_ce0;
input  [31:0] v137_10_q0;
output  [7:0] v137_10_address1;
output   v137_10_ce1;
input  [31:0] v137_10_q1;
output  [7:0] v137_11_address0;
output   v137_11_ce0;
input  [31:0] v137_11_q0;
output  [7:0] v137_11_address1;
output   v137_11_ce1;
input  [31:0] v137_11_q1;
output  [7:0] v137_12_address0;
output   v137_12_ce0;
input  [31:0] v137_12_q0;
output  [7:0] v137_12_address1;
output   v137_12_ce1;
input  [31:0] v137_12_q1;
output  [7:0] v137_13_address0;
output   v137_13_ce0;
input  [31:0] v137_13_q0;
output  [7:0] v137_13_address1;
output   v137_13_ce1;
input  [31:0] v137_13_q1;
output  [7:0] v137_14_address0;
output   v137_14_ce0;
input  [31:0] v137_14_q0;
output  [7:0] v137_14_address1;
output   v137_14_ce1;
input  [31:0] v137_14_q1;
output  [7:0] v137_15_address0;
output   v137_15_ce0;
input  [31:0] v137_15_q0;
output  [7:0] v137_15_address1;
output   v137_15_ce1;
input  [31:0] v137_15_q1;
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
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [5:0] v140_address1;
output   v140_ce1;
input  [31:0] v140_q1;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln27_fu_230_p1;
reg   [63:0] zext_ln27_reg_295;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] zext_ln27_reg_295_pp0_iter1_reg;
wire   [0:0] trunc_ln27_fu_235_p1;
reg   [0:0] trunc_ln27_reg_301;
wire   [0:0] icmp_ln27_fu_261_p2;
wire   [31:0] v6_fu_277_p3;
reg   [31:0] v6_reg_325;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_168_ap_done;
wire    grp_bicg_node1_fu_180_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [5:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg    v151_ce1;
reg    v151_we1;
wire   [31:0] v151_q1;
reg   [4:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
reg   [4:0] v152_1_address0;
reg    v152_1_ce0;
reg    v152_1_we0;
wire   [31:0] v152_1_q0;
reg    v152_1_ce1;
reg    v152_1_we1;
wire   [31:0] v152_1_q1;
wire    grp_bicg_node2_fu_168_ap_start;
wire    grp_bicg_node2_fu_168_ap_idle;
wire    grp_bicg_node2_fu_168_ap_ready;
wire   [5:0] grp_bicg_node2_fu_168_v140_address0;
wire    grp_bicg_node2_fu_168_v140_ce0;
wire   [5:0] grp_bicg_node2_fu_168_v140_address1;
wire    grp_bicg_node2_fu_168_v140_ce1;
wire   [10:0] grp_bicg_node2_fu_168_v138_0_address0;
wire    grp_bicg_node2_fu_168_v138_0_ce0;
wire   [10:0] grp_bicg_node2_fu_168_v138_0_address1;
wire    grp_bicg_node2_fu_168_v138_0_ce1;
wire   [10:0] grp_bicg_node2_fu_168_v138_1_address0;
wire    grp_bicg_node2_fu_168_v138_1_ce0;
wire   [10:0] grp_bicg_node2_fu_168_v138_1_address1;
wire    grp_bicg_node2_fu_168_v138_1_ce1;
wire   [5:0] grp_bicg_node2_fu_168_v65_address0;
wire    grp_bicg_node2_fu_168_v65_ce0;
wire    grp_bicg_node2_fu_168_v65_we0;
wire   [31:0] grp_bicg_node2_fu_168_v65_d0;
wire   [5:0] grp_bicg_node2_fu_168_v65_address1;
wire    grp_bicg_node2_fu_168_v65_ce1;
wire    grp_bicg_node2_fu_168_v65_we1;
wire   [31:0] grp_bicg_node2_fu_168_v65_d1;
wire    grp_bicg_node1_fu_180_ap_start;
wire    grp_bicg_node1_fu_180_ap_idle;
wire    grp_bicg_node1_fu_180_ap_ready;
wire   [7:0] grp_bicg_node1_fu_180_v137_0_address0;
wire    grp_bicg_node1_fu_180_v137_0_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_0_address1;
wire    grp_bicg_node1_fu_180_v137_0_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_1_address0;
wire    grp_bicg_node1_fu_180_v137_1_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_1_address1;
wire    grp_bicg_node1_fu_180_v137_1_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_2_address0;
wire    grp_bicg_node1_fu_180_v137_2_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_2_address1;
wire    grp_bicg_node1_fu_180_v137_2_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_3_address0;
wire    grp_bicg_node1_fu_180_v137_3_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_3_address1;
wire    grp_bicg_node1_fu_180_v137_3_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_4_address0;
wire    grp_bicg_node1_fu_180_v137_4_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_4_address1;
wire    grp_bicg_node1_fu_180_v137_4_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_5_address0;
wire    grp_bicg_node1_fu_180_v137_5_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_5_address1;
wire    grp_bicg_node1_fu_180_v137_5_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_6_address0;
wire    grp_bicg_node1_fu_180_v137_6_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_6_address1;
wire    grp_bicg_node1_fu_180_v137_6_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_7_address0;
wire    grp_bicg_node1_fu_180_v137_7_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_7_address1;
wire    grp_bicg_node1_fu_180_v137_7_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_8_address0;
wire    grp_bicg_node1_fu_180_v137_8_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_8_address1;
wire    grp_bicg_node1_fu_180_v137_8_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_9_address0;
wire    grp_bicg_node1_fu_180_v137_9_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_9_address1;
wire    grp_bicg_node1_fu_180_v137_9_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_10_address0;
wire    grp_bicg_node1_fu_180_v137_10_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_10_address1;
wire    grp_bicg_node1_fu_180_v137_10_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_11_address0;
wire    grp_bicg_node1_fu_180_v137_11_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_11_address1;
wire    grp_bicg_node1_fu_180_v137_11_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_12_address0;
wire    grp_bicg_node1_fu_180_v137_12_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_12_address1;
wire    grp_bicg_node1_fu_180_v137_12_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_13_address0;
wire    grp_bicg_node1_fu_180_v137_13_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_13_address1;
wire    grp_bicg_node1_fu_180_v137_13_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_14_address0;
wire    grp_bicg_node1_fu_180_v137_14_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_14_address1;
wire    grp_bicg_node1_fu_180_v137_14_ce1;
wire   [7:0] grp_bicg_node1_fu_180_v137_15_address0;
wire    grp_bicg_node1_fu_180_v137_15_ce0;
wire   [7:0] grp_bicg_node1_fu_180_v137_15_address1;
wire    grp_bicg_node1_fu_180_v137_15_ce1;
wire   [5:0] grp_bicg_node1_fu_180_v139_address0;
wire    grp_bicg_node1_fu_180_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_180_v10_0_address0;
wire    grp_bicg_node1_fu_180_v10_0_ce0;
wire    grp_bicg_node1_fu_180_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_180_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_180_v10_0_address1;
wire    grp_bicg_node1_fu_180_v10_0_ce1;
wire    grp_bicg_node1_fu_180_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_180_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_180_v10_1_address0;
wire    grp_bicg_node1_fu_180_v10_1_ce0;
wire    grp_bicg_node1_fu_180_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_180_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_180_v10_1_address1;
wire    grp_bicg_node1_fu_180_v10_1_ce1;
wire    grp_bicg_node1_fu_180_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_180_v10_1_d1;
reg    grp_bicg_node2_fu_168_ap_start_reg;
reg    grp_bicg_node1_fu_180_ap_start_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_249_p1;
reg   [5:0] v41_fu_90;
wire   [5:0] v4_fu_255_p2;
reg    v151_ce0_local;
reg    v152_ce0_local;
reg    v152_1_ce0_local;
reg    v141_we0_local;
wire   [31:0] bitcast_ln29_fu_272_p1;
reg    v141_ce0_local;
reg    v142_we0_local;
wire   [31:0] bitcast_ln31_fu_284_p1;
reg    v142_ce0_local;
wire   [4:0] lshr_ln_fu_239_p4;
wire    ap_CS_fsm_state6;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 grp_bicg_node2_fu_168_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_180_ap_start_reg = 1'b0;
#0 v41_fu_90 = 6'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_168_v65_d0),.q0(v151_q0),.address1(grp_bicg_node2_fu_168_v65_address1),.ce1(v151_ce1),.we1(v151_we1),.d1(grp_bicg_node2_fu_168_v65_d1),.q1(v151_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_180_v10_0_d0),.q0(v152_q0),.address1(grp_bicg_node1_fu_180_v10_0_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_180_v10_0_d1),.q1(v152_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_180_v10_1_d0),.q0(v152_1_q0),.address1(grp_bicg_node1_fu_180_v10_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_180_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_168(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_168_ap_start),.ap_done(grp_bicg_node2_fu_168_ap_done),.ap_idle(grp_bicg_node2_fu_168_ap_idle),.ap_ready(grp_bicg_node2_fu_168_ap_ready),.v140_address0(grp_bicg_node2_fu_168_v140_address0),.v140_ce0(grp_bicg_node2_fu_168_v140_ce0),.v140_q0(v140_q0),.v140_address1(grp_bicg_node2_fu_168_v140_address1),.v140_ce1(grp_bicg_node2_fu_168_v140_ce1),.v140_q1(v140_q1),.v138_0_address0(grp_bicg_node2_fu_168_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_168_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_0_address1(grp_bicg_node2_fu_168_v138_0_address1),.v138_0_ce1(grp_bicg_node2_fu_168_v138_0_ce1),.v138_0_q1(v138_0_q1),.v138_1_address0(grp_bicg_node2_fu_168_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_168_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_1_address1(grp_bicg_node2_fu_168_v138_1_address1),.v138_1_ce1(grp_bicg_node2_fu_168_v138_1_ce1),.v138_1_q1(v138_1_q1),.v65_address0(grp_bicg_node2_fu_168_v65_address0),.v65_ce0(grp_bicg_node2_fu_168_v65_ce0),.v65_we0(grp_bicg_node2_fu_168_v65_we0),.v65_d0(grp_bicg_node2_fu_168_v65_d0),.v65_q0(v151_q0),.v65_address1(grp_bicg_node2_fu_168_v65_address1),.v65_ce1(grp_bicg_node2_fu_168_v65_ce1),.v65_we1(grp_bicg_node2_fu_168_v65_we1),.v65_d1(grp_bicg_node2_fu_168_v65_d1),.v65_q1(v151_q1));
bicg_bicg_node1 grp_bicg_node1_fu_180(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_180_ap_start),.ap_done(grp_bicg_node1_fu_180_ap_done),.ap_idle(grp_bicg_node1_fu_180_ap_idle),.ap_ready(grp_bicg_node1_fu_180_ap_ready),.v137_0_address0(grp_bicg_node1_fu_180_v137_0_address0),.v137_0_ce0(grp_bicg_node1_fu_180_v137_0_ce0),.v137_0_q0(v137_0_q0),.v137_0_address1(grp_bicg_node1_fu_180_v137_0_address1),.v137_0_ce1(grp_bicg_node1_fu_180_v137_0_ce1),.v137_0_q1(v137_0_q1),.v137_1_address0(grp_bicg_node1_fu_180_v137_1_address0),.v137_1_ce0(grp_bicg_node1_fu_180_v137_1_ce0),.v137_1_q0(v137_1_q0),.v137_1_address1(grp_bicg_node1_fu_180_v137_1_address1),.v137_1_ce1(grp_bicg_node1_fu_180_v137_1_ce1),.v137_1_q1(v137_1_q1),.v137_2_address0(grp_bicg_node1_fu_180_v137_2_address0),.v137_2_ce0(grp_bicg_node1_fu_180_v137_2_ce0),.v137_2_q0(v137_2_q0),.v137_2_address1(grp_bicg_node1_fu_180_v137_2_address1),.v137_2_ce1(grp_bicg_node1_fu_180_v137_2_ce1),.v137_2_q1(v137_2_q1),.v137_3_address0(grp_bicg_node1_fu_180_v137_3_address0),.v137_3_ce0(grp_bicg_node1_fu_180_v137_3_ce0),.v137_3_q0(v137_3_q0),.v137_3_address1(grp_bicg_node1_fu_180_v137_3_address1),.v137_3_ce1(grp_bicg_node1_fu_180_v137_3_ce1),.v137_3_q1(v137_3_q1),.v137_4_address0(grp_bicg_node1_fu_180_v137_4_address0),.v137_4_ce0(grp_bicg_node1_fu_180_v137_4_ce0),.v137_4_q0(v137_4_q0),.v137_4_address1(grp_bicg_node1_fu_180_v137_4_address1),.v137_4_ce1(grp_bicg_node1_fu_180_v137_4_ce1),.v137_4_q1(v137_4_q1),.v137_5_address0(grp_bicg_node1_fu_180_v137_5_address0),.v137_5_ce0(grp_bicg_node1_fu_180_v137_5_ce0),.v137_5_q0(v137_5_q0),.v137_5_address1(grp_bicg_node1_fu_180_v137_5_address1),.v137_5_ce1(grp_bicg_node1_fu_180_v137_5_ce1),.v137_5_q1(v137_5_q1),.v137_6_address0(grp_bicg_node1_fu_180_v137_6_address0),.v137_6_ce0(grp_bicg_node1_fu_180_v137_6_ce0),.v137_6_q0(v137_6_q0),.v137_6_address1(grp_bicg_node1_fu_180_v137_6_address1),.v137_6_ce1(grp_bicg_node1_fu_180_v137_6_ce1),.v137_6_q1(v137_6_q1),.v137_7_address0(grp_bicg_node1_fu_180_v137_7_address0),.v137_7_ce0(grp_bicg_node1_fu_180_v137_7_ce0),.v137_7_q0(v137_7_q0),.v137_7_address1(grp_bicg_node1_fu_180_v137_7_address1),.v137_7_ce1(grp_bicg_node1_fu_180_v137_7_ce1),.v137_7_q1(v137_7_q1),.v137_8_address0(grp_bicg_node1_fu_180_v137_8_address0),.v137_8_ce0(grp_bicg_node1_fu_180_v137_8_ce0),.v137_8_q0(v137_8_q0),.v137_8_address1(grp_bicg_node1_fu_180_v137_8_address1),.v137_8_ce1(grp_bicg_node1_fu_180_v137_8_ce1),.v137_8_q1(v137_8_q1),.v137_9_address0(grp_bicg_node1_fu_180_v137_9_address0),.v137_9_ce0(grp_bicg_node1_fu_180_v137_9_ce0),.v137_9_q0(v137_9_q0),.v137_9_address1(grp_bicg_node1_fu_180_v137_9_address1),.v137_9_ce1(grp_bicg_node1_fu_180_v137_9_ce1),.v137_9_q1(v137_9_q1),.v137_10_address0(grp_bicg_node1_fu_180_v137_10_address0),.v137_10_ce0(grp_bicg_node1_fu_180_v137_10_ce0),.v137_10_q0(v137_10_q0),.v137_10_address1(grp_bicg_node1_fu_180_v137_10_address1),.v137_10_ce1(grp_bicg_node1_fu_180_v137_10_ce1),.v137_10_q1(v137_10_q1),.v137_11_address0(grp_bicg_node1_fu_180_v137_11_address0),.v137_11_ce0(grp_bicg_node1_fu_180_v137_11_ce0),.v137_11_q0(v137_11_q0),.v137_11_address1(grp_bicg_node1_fu_180_v137_11_address1),.v137_11_ce1(grp_bicg_node1_fu_180_v137_11_ce1),.v137_11_q1(v137_11_q1),.v137_12_address0(grp_bicg_node1_fu_180_v137_12_address0),.v137_12_ce0(grp_bicg_node1_fu_180_v137_12_ce0),.v137_12_q0(v137_12_q0),.v137_12_address1(grp_bicg_node1_fu_180_v137_12_address1),.v137_12_ce1(grp_bicg_node1_fu_180_v137_12_ce1),.v137_12_q1(v137_12_q1),.v137_13_address0(grp_bicg_node1_fu_180_v137_13_address0),.v137_13_ce0(grp_bicg_node1_fu_180_v137_13_ce0),.v137_13_q0(v137_13_q0),.v137_13_address1(grp_bicg_node1_fu_180_v137_13_address1),.v137_13_ce1(grp_bicg_node1_fu_180_v137_13_ce1),.v137_13_q1(v137_13_q1),.v137_14_address0(grp_bicg_node1_fu_180_v137_14_address0),.v137_14_ce0(grp_bicg_node1_fu_180_v137_14_ce0),.v137_14_q0(v137_14_q0),.v137_14_address1(grp_bicg_node1_fu_180_v137_14_address1),.v137_14_ce1(grp_bicg_node1_fu_180_v137_14_ce1),.v137_14_q1(v137_14_q1),.v137_15_address0(grp_bicg_node1_fu_180_v137_15_address0),.v137_15_ce0(grp_bicg_node1_fu_180_v137_15_ce0),.v137_15_q0(v137_15_q0),.v137_15_address1(grp_bicg_node1_fu_180_v137_15_address1),.v137_15_ce1(grp_bicg_node1_fu_180_v137_15_ce1),.v137_15_q1(v137_15_q1),.v139_address0(grp_bicg_node1_fu_180_v139_address0),.v139_ce0(grp_bicg_node1_fu_180_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_180_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_180_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_180_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_180_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_180_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_180_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_180_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_180_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_180_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_180_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_180_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_180_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_180_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_180_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_180_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_180_v10_1_d1),.v10_1_q1(v152_1_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_180_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_180_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_168_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_168_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_168_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_168_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v41_fu_90 <= 6'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_fu_90 <= v4_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln27_reg_301 <= trunc_ln27_fu_235_p1;
        v6_reg_325 <= v6_fu_277_p3;
        zext_ln27_reg_295[5 : 0] <= zext_ln27_fu_230_p1[5 : 0];
        zext_ln27_reg_295_pp0_iter1_reg[5 : 0] <= zext_ln27_reg_295[5 : 0];
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln27_fu_261_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_168_v65_address0;
    end else begin
        v151_address0 = zext_ln27_fu_230_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_168_v65_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_168_v65_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_168_v65_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we1 = grp_bicg_node2_fu_168_v65_we1;
    end else begin
        v151_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_180_v10_1_address0;
    end else begin
        v152_1_address0 = zext_ln27_1_fu_249_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_180_v10_1_ce0;
    end else begin
        v152_1_ce0 = v152_1_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v152_1_ce0_local = 1'b1;
    end else begin
        v152_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_180_v10_1_ce1;
    end else begin
        v152_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_180_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_180_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_180_v10_0_address0;
    end else begin
        v152_address0 = zext_ln27_1_fu_249_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_180_v10_0_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_180_v10_0_ce1;
    end else begin
        v152_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_180_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_180_v10_0_we1;
    end else begin
        v152_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_180_ap_done == 1'b0) | (grp_bicg_node2_fu_168_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_fu_272_p1 = v151_q0;
assign bitcast_ln31_fu_284_p1 = v6_reg_325;
assign grp_bicg_node1_fu_180_ap_start = grp_bicg_node1_fu_180_ap_start_reg;
assign grp_bicg_node2_fu_168_ap_start = grp_bicg_node2_fu_168_ap_start_reg;
assign icmp_ln27_fu_261_p2 = ((v41_fu_90 == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln_fu_239_p4 = {{v41_fu_90[5:1]}};
assign trunc_ln27_fu_235_p1 = v41_fu_90[0:0];
assign v137_0_address0 = grp_bicg_node1_fu_180_v137_0_address0;
assign v137_0_address1 = grp_bicg_node1_fu_180_v137_0_address1;
assign v137_0_ce0 = grp_bicg_node1_fu_180_v137_0_ce0;
assign v137_0_ce1 = grp_bicg_node1_fu_180_v137_0_ce1;
assign v137_10_address0 = grp_bicg_node1_fu_180_v137_10_address0;
assign v137_10_address1 = grp_bicg_node1_fu_180_v137_10_address1;
assign v137_10_ce0 = grp_bicg_node1_fu_180_v137_10_ce0;
assign v137_10_ce1 = grp_bicg_node1_fu_180_v137_10_ce1;
assign v137_11_address0 = grp_bicg_node1_fu_180_v137_11_address0;
assign v137_11_address1 = grp_bicg_node1_fu_180_v137_11_address1;
assign v137_11_ce0 = grp_bicg_node1_fu_180_v137_11_ce0;
assign v137_11_ce1 = grp_bicg_node1_fu_180_v137_11_ce1;
assign v137_12_address0 = grp_bicg_node1_fu_180_v137_12_address0;
assign v137_12_address1 = grp_bicg_node1_fu_180_v137_12_address1;
assign v137_12_ce0 = grp_bicg_node1_fu_180_v137_12_ce0;
assign v137_12_ce1 = grp_bicg_node1_fu_180_v137_12_ce1;
assign v137_13_address0 = grp_bicg_node1_fu_180_v137_13_address0;
assign v137_13_address1 = grp_bicg_node1_fu_180_v137_13_address1;
assign v137_13_ce0 = grp_bicg_node1_fu_180_v137_13_ce0;
assign v137_13_ce1 = grp_bicg_node1_fu_180_v137_13_ce1;
assign v137_14_address0 = grp_bicg_node1_fu_180_v137_14_address0;
assign v137_14_address1 = grp_bicg_node1_fu_180_v137_14_address1;
assign v137_14_ce0 = grp_bicg_node1_fu_180_v137_14_ce0;
assign v137_14_ce1 = grp_bicg_node1_fu_180_v137_14_ce1;
assign v137_15_address0 = grp_bicg_node1_fu_180_v137_15_address0;
assign v137_15_address1 = grp_bicg_node1_fu_180_v137_15_address1;
assign v137_15_ce0 = grp_bicg_node1_fu_180_v137_15_ce0;
assign v137_15_ce1 = grp_bicg_node1_fu_180_v137_15_ce1;
assign v137_1_address0 = grp_bicg_node1_fu_180_v137_1_address0;
assign v137_1_address1 = grp_bicg_node1_fu_180_v137_1_address1;
assign v137_1_ce0 = grp_bicg_node1_fu_180_v137_1_ce0;
assign v137_1_ce1 = grp_bicg_node1_fu_180_v137_1_ce1;
assign v137_2_address0 = grp_bicg_node1_fu_180_v137_2_address0;
assign v137_2_address1 = grp_bicg_node1_fu_180_v137_2_address1;
assign v137_2_ce0 = grp_bicg_node1_fu_180_v137_2_ce0;
assign v137_2_ce1 = grp_bicg_node1_fu_180_v137_2_ce1;
assign v137_3_address0 = grp_bicg_node1_fu_180_v137_3_address0;
assign v137_3_address1 = grp_bicg_node1_fu_180_v137_3_address1;
assign v137_3_ce0 = grp_bicg_node1_fu_180_v137_3_ce0;
assign v137_3_ce1 = grp_bicg_node1_fu_180_v137_3_ce1;
assign v137_4_address0 = grp_bicg_node1_fu_180_v137_4_address0;
assign v137_4_address1 = grp_bicg_node1_fu_180_v137_4_address1;
assign v137_4_ce0 = grp_bicg_node1_fu_180_v137_4_ce0;
assign v137_4_ce1 = grp_bicg_node1_fu_180_v137_4_ce1;
assign v137_5_address0 = grp_bicg_node1_fu_180_v137_5_address0;
assign v137_5_address1 = grp_bicg_node1_fu_180_v137_5_address1;
assign v137_5_ce0 = grp_bicg_node1_fu_180_v137_5_ce0;
assign v137_5_ce1 = grp_bicg_node1_fu_180_v137_5_ce1;
assign v137_6_address0 = grp_bicg_node1_fu_180_v137_6_address0;
assign v137_6_address1 = grp_bicg_node1_fu_180_v137_6_address1;
assign v137_6_ce0 = grp_bicg_node1_fu_180_v137_6_ce0;
assign v137_6_ce1 = grp_bicg_node1_fu_180_v137_6_ce1;
assign v137_7_address0 = grp_bicg_node1_fu_180_v137_7_address0;
assign v137_7_address1 = grp_bicg_node1_fu_180_v137_7_address1;
assign v137_7_ce0 = grp_bicg_node1_fu_180_v137_7_ce0;
assign v137_7_ce1 = grp_bicg_node1_fu_180_v137_7_ce1;
assign v137_8_address0 = grp_bicg_node1_fu_180_v137_8_address0;
assign v137_8_address1 = grp_bicg_node1_fu_180_v137_8_address1;
assign v137_8_ce0 = grp_bicg_node1_fu_180_v137_8_ce0;
assign v137_8_ce1 = grp_bicg_node1_fu_180_v137_8_ce1;
assign v137_9_address0 = grp_bicg_node1_fu_180_v137_9_address0;
assign v137_9_address1 = grp_bicg_node1_fu_180_v137_9_address1;
assign v137_9_ce0 = grp_bicg_node1_fu_180_v137_9_ce0;
assign v137_9_ce1 = grp_bicg_node1_fu_180_v137_9_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_168_v138_0_address0;
assign v138_0_address1 = grp_bicg_node2_fu_168_v138_0_address1;
assign v138_0_ce0 = grp_bicg_node2_fu_168_v138_0_ce0;
assign v138_0_ce1 = grp_bicg_node2_fu_168_v138_0_ce1;
assign v138_1_address0 = grp_bicg_node2_fu_168_v138_1_address0;
assign v138_1_address1 = grp_bicg_node2_fu_168_v138_1_address1;
assign v138_1_ce0 = grp_bicg_node2_fu_168_v138_1_ce0;
assign v138_1_ce1 = grp_bicg_node2_fu_168_v138_1_ce1;
assign v139_address0 = grp_bicg_node1_fu_180_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_180_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_168_v140_address0;
assign v140_address1 = grp_bicg_node2_fu_168_v140_address1;
assign v140_ce0 = grp_bicg_node2_fu_168_v140_ce0;
assign v140_ce1 = grp_bicg_node2_fu_168_v140_ce1;
assign v141_address0 = zext_ln27_reg_295;
assign v141_ce0 = v141_ce0_local;
assign v141_d0 = bitcast_ln29_fu_272_p1;
assign v141_we0 = v141_we0_local;
assign v142_address0 = zext_ln27_reg_295_pp0_iter1_reg;
assign v142_ce0 = v142_ce0_local;
assign v142_d0 = bitcast_ln31_fu_284_p1;
assign v142_we0 = v142_we0_local;
assign v4_fu_255_p2 = (v41_fu_90 + 6'd1);
assign v6_fu_277_p3 = ((trunc_ln27_reg_301[0:0] == 1'b1) ? v152_1_q0 : v152_q0);
assign zext_ln27_1_fu_249_p1 = lshr_ln_fu_239_p4;
assign zext_ln27_fu_230_p1 = v41_fu_90;
always @ (posedge ap_clk) begin
    zext_ln27_reg_295[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln27_reg_295_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 