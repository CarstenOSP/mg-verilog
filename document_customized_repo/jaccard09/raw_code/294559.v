module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v139_address0,v139_ce0,v139_q0,v139_address1,v139_ce1,v139_q1,v140_address0,v140_ce0,v140_q0,v140_address1,v140_ce1,v140_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_pp0_stage0 = 7'd4;
parameter    ap_ST_fsm_pp0_stage1 = 7'd8;
parameter    ap_ST_fsm_pp0_stage2 = 7'd16;
parameter    ap_ST_fsm_pp0_stage3 = 7'd32;
parameter    ap_ST_fsm_state8 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v139_address1;
output   v139_ce1;
input  [31:0] v139_q1;
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
output  [5:0] v141_address1;
output   v141_ce1;
output   v141_we1;
output  [31:0] v141_d1;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
output  [5:0] v142_address1;
output   v142_ce1;
output   v142_we1;
output  [31:0] v142_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln27_fu_404_p1;
reg   [63:0] zext_ln27_reg_649;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln28_fu_428_p1;
reg   [63:0] zext_ln28_reg_665;
reg   [3:0] tmp_s_reg_681;
reg   [2:0] tmp_259_reg_687;
reg   [0:0] tmp_131_reg_695;
reg   [0:0] tmp_132_reg_700;
wire   [63:0] zext_ln28_1_fu_508_p1;
reg   [63:0] zext_ln28_1_reg_704;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln28_2_fu_521_p1;
reg   [63:0] zext_ln28_2_reg_720;
wire   [63:0] zext_ln28_3_fu_554_p1;
reg   [63:0] zext_ln28_3_reg_736;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln28_4_fu_570_p1;
reg   [63:0] zext_ln28_4_reg_752;
wire   [63:0] zext_ln28_5_fu_603_p1;
reg   [63:0] zext_ln28_5_reg_768;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] zext_ln28_6_fu_616_p1;
reg   [63:0] zext_ln28_6_reg_784;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_376_ap_done;
wire    grp_bicg_node1_fu_386_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_block_pp0_stage3_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
reg   [5:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg   [5:0] v151_address1;
reg    v151_ce1;
wire   [31:0] v151_q1;
reg    v151_ce2;
wire   [31:0] v151_q2;
reg    v151_ce3;
wire   [31:0] v151_q3;
reg    v151_ce4;
wire   [31:0] v151_q4;
reg    v151_ce5;
wire   [31:0] v151_q5;
reg    v151_ce6;
wire   [31:0] v151_q6;
reg    v151_ce7;
wire   [31:0] v151_q7;
reg    v151_ce8;
wire   [31:0] v151_q8;
reg    v151_ce9;
wire   [31:0] v151_q9;
reg    v151_ce10;
wire   [31:0] v151_q10;
reg    v151_ce11;
wire   [31:0] v151_q11;
reg    v151_ce12;
wire   [31:0] v151_q12;
reg    v151_ce13;
wire   [31:0] v151_q13;
reg    v151_ce14;
wire   [31:0] v151_q14;
reg    v151_ce15;
wire   [31:0] v151_q15;
reg    v151_ce16;
wire   [31:0] v151_q16;
reg   [5:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg   [5:0] v152_address1;
reg    v152_ce1;
wire   [31:0] v152_q1;
reg    v152_ce2;
wire   [31:0] v152_q2;
reg    v152_ce3;
wire   [31:0] v152_q3;
reg    v152_ce4;
wire   [31:0] v152_q4;
reg    v152_ce5;
wire   [31:0] v152_q5;
reg    v152_ce6;
wire   [31:0] v152_q6;
reg    v152_ce7;
wire   [31:0] v152_q7;
reg    v152_ce8;
wire   [31:0] v152_q8;
reg    v152_ce9;
wire   [31:0] v152_q9;
reg    v152_ce10;
wire   [31:0] v152_q10;
reg    v152_ce11;
wire   [31:0] v152_q11;
reg    v152_ce12;
wire   [31:0] v152_q12;
reg    v152_ce13;
wire   [31:0] v152_q13;
reg    v152_ce14;
wire   [31:0] v152_q14;
reg    v152_ce15;
wire   [31:0] v152_q15;
reg    v152_ce16;
wire   [31:0] v152_q16;
wire    grp_bicg_node2_fu_376_ap_start;
wire    grp_bicg_node2_fu_376_ap_idle;
wire    grp_bicg_node2_fu_376_ap_ready;
wire   [5:0] grp_bicg_node2_fu_376_v140_address0;
wire    grp_bicg_node2_fu_376_v140_ce0;
wire   [5:0] grp_bicg_node2_fu_376_v140_address1;
wire    grp_bicg_node2_fu_376_v140_ce1;
wire   [11:0] grp_bicg_node2_fu_376_v138_address0;
wire    grp_bicg_node2_fu_376_v138_ce0;
wire   [11:0] grp_bicg_node2_fu_376_v138_address1;
wire    grp_bicg_node2_fu_376_v138_ce1;
wire   [5:0] grp_bicg_node2_fu_376_v65_address0;
wire    grp_bicg_node2_fu_376_v65_ce0;
wire    grp_bicg_node2_fu_376_v65_we0;
wire   [31:0] grp_bicg_node2_fu_376_v65_d0;
wire   [5:0] grp_bicg_node2_fu_376_v65_address1;
wire    grp_bicg_node2_fu_376_v65_ce1;
wire   [5:0] grp_bicg_node2_fu_376_v65_address2;
wire    grp_bicg_node2_fu_376_v65_ce2;
wire   [5:0] grp_bicg_node2_fu_376_v65_address3;
wire    grp_bicg_node2_fu_376_v65_ce3;
wire   [5:0] grp_bicg_node2_fu_376_v65_address4;
wire    grp_bicg_node2_fu_376_v65_ce4;
wire   [5:0] grp_bicg_node2_fu_376_v65_address5;
wire    grp_bicg_node2_fu_376_v65_ce5;
wire   [5:0] grp_bicg_node2_fu_376_v65_address6;
wire    grp_bicg_node2_fu_376_v65_ce6;
wire   [5:0] grp_bicg_node2_fu_376_v65_address7;
wire    grp_bicg_node2_fu_376_v65_ce7;
wire   [5:0] grp_bicg_node2_fu_376_v65_address8;
wire    grp_bicg_node2_fu_376_v65_ce8;
wire   [5:0] grp_bicg_node2_fu_376_v65_address9;
wire    grp_bicg_node2_fu_376_v65_ce9;
wire   [5:0] grp_bicg_node2_fu_376_v65_address10;
wire    grp_bicg_node2_fu_376_v65_ce10;
wire   [5:0] grp_bicg_node2_fu_376_v65_address11;
wire    grp_bicg_node2_fu_376_v65_ce11;
wire   [5:0] grp_bicg_node2_fu_376_v65_address12;
wire    grp_bicg_node2_fu_376_v65_ce12;
wire   [5:0] grp_bicg_node2_fu_376_v65_address13;
wire    grp_bicg_node2_fu_376_v65_ce13;
wire   [5:0] grp_bicg_node2_fu_376_v65_address14;
wire    grp_bicg_node2_fu_376_v65_ce14;
wire   [5:0] grp_bicg_node2_fu_376_v65_address15;
wire    grp_bicg_node2_fu_376_v65_ce15;
wire   [5:0] grp_bicg_node2_fu_376_v65_address16;
wire    grp_bicg_node2_fu_376_v65_ce16;
wire    grp_bicg_node1_fu_386_ap_start;
wire    grp_bicg_node1_fu_386_ap_idle;
wire    grp_bicg_node1_fu_386_ap_ready;
wire   [11:0] grp_bicg_node1_fu_386_v137_address0;
wire    grp_bicg_node1_fu_386_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_386_v137_address1;
wire    grp_bicg_node1_fu_386_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_386_v139_address0;
wire    grp_bicg_node1_fu_386_v139_ce0;
wire   [5:0] grp_bicg_node1_fu_386_v139_address1;
wire    grp_bicg_node1_fu_386_v139_ce1;
wire   [5:0] grp_bicg_node1_fu_386_v10_address0;
wire    grp_bicg_node1_fu_386_v10_ce0;
wire    grp_bicg_node1_fu_386_v10_we0;
wire   [31:0] grp_bicg_node1_fu_386_v10_d0;
wire   [5:0] grp_bicg_node1_fu_386_v10_address1;
wire    grp_bicg_node1_fu_386_v10_ce1;
wire   [5:0] grp_bicg_node1_fu_386_v10_address2;
wire    grp_bicg_node1_fu_386_v10_ce2;
wire   [5:0] grp_bicg_node1_fu_386_v10_address3;
wire    grp_bicg_node1_fu_386_v10_ce3;
wire   [5:0] grp_bicg_node1_fu_386_v10_address4;
wire    grp_bicg_node1_fu_386_v10_ce4;
wire   [5:0] grp_bicg_node1_fu_386_v10_address5;
wire    grp_bicg_node1_fu_386_v10_ce5;
wire   [5:0] grp_bicg_node1_fu_386_v10_address6;
wire    grp_bicg_node1_fu_386_v10_ce6;
wire   [5:0] grp_bicg_node1_fu_386_v10_address7;
wire    grp_bicg_node1_fu_386_v10_ce7;
wire   [5:0] grp_bicg_node1_fu_386_v10_address8;
wire    grp_bicg_node1_fu_386_v10_ce8;
wire   [5:0] grp_bicg_node1_fu_386_v10_address9;
wire    grp_bicg_node1_fu_386_v10_ce9;
wire   [5:0] grp_bicg_node1_fu_386_v10_address10;
wire    grp_bicg_node1_fu_386_v10_ce10;
wire   [5:0] grp_bicg_node1_fu_386_v10_address11;
wire    grp_bicg_node1_fu_386_v10_ce11;
wire   [5:0] grp_bicg_node1_fu_386_v10_address12;
wire    grp_bicg_node1_fu_386_v10_ce12;
wire   [5:0] grp_bicg_node1_fu_386_v10_address13;
wire    grp_bicg_node1_fu_386_v10_ce13;
wire   [5:0] grp_bicg_node1_fu_386_v10_address14;
wire    grp_bicg_node1_fu_386_v10_ce14;
wire   [5:0] grp_bicg_node1_fu_386_v10_address15;
wire    grp_bicg_node1_fu_386_v10_ce15;
wire   [5:0] grp_bicg_node1_fu_386_v10_address16;
wire    grp_bicg_node1_fu_386_v10_ce16;
reg    grp_bicg_node2_fu_376_ap_start_reg;
reg    grp_bicg_node1_fu_386_ap_start_reg;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg   [6:0] v41_fu_88;
wire   [6:0] v4_fu_462_p2;
reg    v151_ce1_local;
reg   [5:0] v151_address1_local;
reg    v151_ce0_local;
reg   [5:0] v151_address0_local;
reg    v152_ce1_local;
reg   [5:0] v152_address1_local;
reg    v152_ce0_local;
reg   [5:0] v152_address0_local;
reg    v141_we1_local;
reg   [31:0] v141_d1_local;
wire   [31:0] bitcast_ln29_fu_481_p1;
reg    v141_ce1_local;
reg   [5:0] v141_address1_local;
reg    v141_we0_local;
reg   [31:0] v141_d0_local;
wire   [31:0] bitcast_ln29_1_fu_491_p1;
reg    v141_ce0_local;
reg   [5:0] v141_address0_local;
wire   [31:0] bitcast_ln29_2_fu_527_p1;
wire   [31:0] bitcast_ln29_3_fu_537_p1;
wire   [31:0] bitcast_ln29_4_fu_576_p1;
wire   [31:0] bitcast_ln29_5_fu_586_p1;
wire   [31:0] bitcast_ln29_6_fu_622_p1;
wire   [31:0] bitcast_ln29_7_fu_632_p1;
reg    v142_we1_local;
reg   [31:0] v142_d1_local;
wire   [31:0] bitcast_ln31_fu_486_p1;
reg    v142_ce1_local;
reg   [5:0] v142_address1_local;
reg    v142_we0_local;
reg   [31:0] v142_d0_local;
wire   [31:0] bitcast_ln31_1_fu_496_p1;
reg    v142_ce0_local;
reg   [5:0] v142_address0_local;
wire   [31:0] bitcast_ln31_2_fu_532_p1;
wire   [31:0] bitcast_ln31_3_fu_542_p1;
wire   [31:0] bitcast_ln31_4_fu_581_p1;
wire   [31:0] bitcast_ln31_5_fu_591_p1;
wire   [31:0] bitcast_ln31_6_fu_627_p1;
wire   [31:0] bitcast_ln31_7_fu_637_p1;
wire   [4:0] tmp_fu_410_p4;
wire   [5:0] or_ln_fu_420_p3;
wire   [5:0] or_ln27_1_fu_501_p3;
wire   [5:0] or_ln27_2_fu_514_p3;
wire   [5:0] or_ln27_3_fu_547_p3;
wire   [5:0] or_ln27_4_fu_560_p5;
wire   [5:0] or_ln27_5_fu_596_p3;
wire   [5:0] or_ln27_6_fu_609_p3;
wire    ap_CS_fsm_state8;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bicg_node2_fu_376_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_386_ap_start_reg = 1'b0;
#0 v41_fu_88 = 7'd0;
end
bicg_v151_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_376_v65_d0),.q0(v151_q0),.address1(v151_address1),.ce1(v151_ce1),.q1(v151_q1),.address2(grp_bicg_node2_fu_376_v65_address2),.ce2(v151_ce2),.q2(v151_q2),.address3(grp_bicg_node2_fu_376_v65_address3),.ce3(v151_ce3),.q3(v151_q3),.address4(grp_bicg_node2_fu_376_v65_address4),.ce4(v151_ce4),.q4(v151_q4),.address5(grp_bicg_node2_fu_376_v65_address5),.ce5(v151_ce5),.q5(v151_q5),.address6(grp_bicg_node2_fu_376_v65_address6),.ce6(v151_ce6),.q6(v151_q6),.address7(grp_bicg_node2_fu_376_v65_address7),.ce7(v151_ce7),.q7(v151_q7),.address8(grp_bicg_node2_fu_376_v65_address8),.ce8(v151_ce8),.q8(v151_q8),.address9(grp_bicg_node2_fu_376_v65_address9),.ce9(v151_ce9),.q9(v151_q9),.address10(grp_bicg_node2_fu_376_v65_address10),.ce10(v151_ce10),.q10(v151_q10),.address11(grp_bicg_node2_fu_376_v65_address11),.ce11(v151_ce11),.q11(v151_q11),.address12(grp_bicg_node2_fu_376_v65_address12),.ce12(v151_ce12),.q12(v151_q12),.address13(grp_bicg_node2_fu_376_v65_address13),.ce13(v151_ce13),.q13(v151_q13),.address14(grp_bicg_node2_fu_376_v65_address14),.ce14(v151_ce14),.q14(v151_q14),.address15(grp_bicg_node2_fu_376_v65_address15),.ce15(v151_ce15),.q15(v151_q15),.address16(grp_bicg_node2_fu_376_v65_address16),.ce16(v151_ce16),.q16(v151_q16));
bicg_v151_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_386_v10_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.q1(v152_q1),.address2(grp_bicg_node1_fu_386_v10_address2),.ce2(v152_ce2),.q2(v152_q2),.address3(grp_bicg_node1_fu_386_v10_address3),.ce3(v152_ce3),.q3(v152_q3),.address4(grp_bicg_node1_fu_386_v10_address4),.ce4(v152_ce4),.q4(v152_q4),.address5(grp_bicg_node1_fu_386_v10_address5),.ce5(v152_ce5),.q5(v152_q5),.address6(grp_bicg_node1_fu_386_v10_address6),.ce6(v152_ce6),.q6(v152_q6),.address7(grp_bicg_node1_fu_386_v10_address7),.ce7(v152_ce7),.q7(v152_q7),.address8(grp_bicg_node1_fu_386_v10_address8),.ce8(v152_ce8),.q8(v152_q8),.address9(grp_bicg_node1_fu_386_v10_address9),.ce9(v152_ce9),.q9(v152_q9),.address10(grp_bicg_node1_fu_386_v10_address10),.ce10(v152_ce10),.q10(v152_q10),.address11(grp_bicg_node1_fu_386_v10_address11),.ce11(v152_ce11),.q11(v152_q11),.address12(grp_bicg_node1_fu_386_v10_address12),.ce12(v152_ce12),.q12(v152_q12),.address13(grp_bicg_node1_fu_386_v10_address13),.ce13(v152_ce13),.q13(v152_q13),.address14(grp_bicg_node1_fu_386_v10_address14),.ce14(v152_ce14),.q14(v152_q14),.address15(grp_bicg_node1_fu_386_v10_address15),.ce15(v152_ce15),.q15(v152_q15),.address16(grp_bicg_node1_fu_386_v10_address16),.ce16(v152_ce16),.q16(v152_q16));
bicg_bicg_node2 grp_bicg_node2_fu_376(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_376_ap_start),.ap_done(grp_bicg_node2_fu_376_ap_done),.ap_idle(grp_bicg_node2_fu_376_ap_idle),.ap_ready(grp_bicg_node2_fu_376_ap_ready),.v140_address0(grp_bicg_node2_fu_376_v140_address0),.v140_ce0(grp_bicg_node2_fu_376_v140_ce0),.v140_q0(v140_q0),.v140_address1(grp_bicg_node2_fu_376_v140_address1),.v140_ce1(grp_bicg_node2_fu_376_v140_ce1),.v140_q1(v140_q1),.v138_address0(grp_bicg_node2_fu_376_v138_address0),.v138_ce0(grp_bicg_node2_fu_376_v138_ce0),.v138_q0(v138_q0),.v138_address1(grp_bicg_node2_fu_376_v138_address1),.v138_ce1(grp_bicg_node2_fu_376_v138_ce1),.v138_q1(v138_q1),.v65_address0(grp_bicg_node2_fu_376_v65_address0),.v65_ce0(grp_bicg_node2_fu_376_v65_ce0),.v65_we0(grp_bicg_node2_fu_376_v65_we0),.v65_d0(grp_bicg_node2_fu_376_v65_d0),.v65_q0(v151_q0),.v65_address1(grp_bicg_node2_fu_376_v65_address1),.v65_ce1(grp_bicg_node2_fu_376_v65_ce1),.v65_q1(v151_q1),.v65_address2(grp_bicg_node2_fu_376_v65_address2),.v65_ce2(grp_bicg_node2_fu_376_v65_ce2),.v65_q2(v151_q2),.v65_address3(grp_bicg_node2_fu_376_v65_address3),.v65_ce3(grp_bicg_node2_fu_376_v65_ce3),.v65_q3(v151_q3),.v65_address4(grp_bicg_node2_fu_376_v65_address4),.v65_ce4(grp_bicg_node2_fu_376_v65_ce4),.v65_q4(v151_q4),.v65_address5(grp_bicg_node2_fu_376_v65_address5),.v65_ce5(grp_bicg_node2_fu_376_v65_ce5),.v65_q5(v151_q5),.v65_address6(grp_bicg_node2_fu_376_v65_address6),.v65_ce6(grp_bicg_node2_fu_376_v65_ce6),.v65_q6(v151_q6),.v65_address7(grp_bicg_node2_fu_376_v65_address7),.v65_ce7(grp_bicg_node2_fu_376_v65_ce7),.v65_q7(v151_q7),.v65_address8(grp_bicg_node2_fu_376_v65_address8),.v65_ce8(grp_bicg_node2_fu_376_v65_ce8),.v65_q8(v151_q8),.v65_address9(grp_bicg_node2_fu_376_v65_address9),.v65_ce9(grp_bicg_node2_fu_376_v65_ce9),.v65_q9(v151_q9),.v65_address10(grp_bicg_node2_fu_376_v65_address10),.v65_ce10(grp_bicg_node2_fu_376_v65_ce10),.v65_q10(v151_q10),.v65_address11(grp_bicg_node2_fu_376_v65_address11),.v65_ce11(grp_bicg_node2_fu_376_v65_ce11),.v65_q11(v151_q11),.v65_address12(grp_bicg_node2_fu_376_v65_address12),.v65_ce12(grp_bicg_node2_fu_376_v65_ce12),.v65_q12(v151_q12),.v65_address13(grp_bicg_node2_fu_376_v65_address13),.v65_ce13(grp_bicg_node2_fu_376_v65_ce13),.v65_q13(v151_q13),.v65_address14(grp_bicg_node2_fu_376_v65_address14),.v65_ce14(grp_bicg_node2_fu_376_v65_ce14),.v65_q14(v151_q14),.v65_address15(grp_bicg_node2_fu_376_v65_address15),.v65_ce15(grp_bicg_node2_fu_376_v65_ce15),.v65_q15(v151_q15),.v65_address16(grp_bicg_node2_fu_376_v65_address16),.v65_ce16(grp_bicg_node2_fu_376_v65_ce16),.v65_q16(v151_q16));
bicg_bicg_node1 grp_bicg_node1_fu_386(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_386_ap_start),.ap_done(grp_bicg_node1_fu_386_ap_done),.ap_idle(grp_bicg_node1_fu_386_ap_idle),.ap_ready(grp_bicg_node1_fu_386_ap_ready),.v137_address0(grp_bicg_node1_fu_386_v137_address0),.v137_ce0(grp_bicg_node1_fu_386_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_386_v137_address1),.v137_ce1(grp_bicg_node1_fu_386_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_386_v139_address0),.v139_ce0(grp_bicg_node1_fu_386_v139_ce0),.v139_q0(v139_q0),.v139_address1(grp_bicg_node1_fu_386_v139_address1),.v139_ce1(grp_bicg_node1_fu_386_v139_ce1),.v139_q1(v139_q1),.v10_address0(grp_bicg_node1_fu_386_v10_address0),.v10_ce0(grp_bicg_node1_fu_386_v10_ce0),.v10_we0(grp_bicg_node1_fu_386_v10_we0),.v10_d0(grp_bicg_node1_fu_386_v10_d0),.v10_q0(v152_q0),.v10_address1(grp_bicg_node1_fu_386_v10_address1),.v10_ce1(grp_bicg_node1_fu_386_v10_ce1),.v10_q1(v152_q1),.v10_address2(grp_bicg_node1_fu_386_v10_address2),.v10_ce2(grp_bicg_node1_fu_386_v10_ce2),.v10_q2(v152_q2),.v10_address3(grp_bicg_node1_fu_386_v10_address3),.v10_ce3(grp_bicg_node1_fu_386_v10_ce3),.v10_q3(v152_q3),.v10_address4(grp_bicg_node1_fu_386_v10_address4),.v10_ce4(grp_bicg_node1_fu_386_v10_ce4),.v10_q4(v152_q4),.v10_address5(grp_bicg_node1_fu_386_v10_address5),.v10_ce5(grp_bicg_node1_fu_386_v10_ce5),.v10_q5(v152_q5),.v10_address6(grp_bicg_node1_fu_386_v10_address6),.v10_ce6(grp_bicg_node1_fu_386_v10_ce6),.v10_q6(v152_q6),.v10_address7(grp_bicg_node1_fu_386_v10_address7),.v10_ce7(grp_bicg_node1_fu_386_v10_ce7),.v10_q7(v152_q7),.v10_address8(grp_bicg_node1_fu_386_v10_address8),.v10_ce8(grp_bicg_node1_fu_386_v10_ce8),.v10_q8(v152_q8),.v10_address9(grp_bicg_node1_fu_386_v10_address9),.v10_ce9(grp_bicg_node1_fu_386_v10_ce9),.v10_q9(v152_q9),.v10_address10(grp_bicg_node1_fu_386_v10_address10),.v10_ce10(grp_bicg_node1_fu_386_v10_ce10),.v10_q10(v152_q10),.v10_address11(grp_bicg_node1_fu_386_v10_address11),.v10_ce11(grp_bicg_node1_fu_386_v10_ce11),.v10_q11(v152_q11),.v10_address12(grp_bicg_node1_fu_386_v10_address12),.v10_ce12(grp_bicg_node1_fu_386_v10_ce12),.v10_q12(v152_q12),.v10_address13(grp_bicg_node1_fu_386_v10_address13),.v10_ce13(grp_bicg_node1_fu_386_v10_ce13),.v10_q13(v152_q13),.v10_address14(grp_bicg_node1_fu_386_v10_address14),.v10_ce14(grp_bicg_node1_fu_386_v10_ce14),.v10_q14(v152_q14),.v10_address15(grp_bicg_node1_fu_386_v10_address15),.v10_ce15(grp_bicg_node1_fu_386_v10_ce15),.v10_q15(v152_q15),.v10_address16(grp_bicg_node1_fu_386_v10_address16),.v10_ce16(grp_bicg_node1_fu_386_v10_ce16),.v10_q16(v152_q16));
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
        if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_386_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node1_fu_386_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_386_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_386_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_376_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node2_fu_376_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_376_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_376_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v41_fu_88 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v41_fu_88 <= v4_fu_462_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_131_reg_695 <= v41_fu_88[32'd1];
        tmp_132_reg_700 <= v4_fu_462_p2[32'd6];
        tmp_259_reg_687 <= {{v41_fu_88[5:3]}};
        tmp_s_reg_681 <= {{v41_fu_88[5:2]}};
        zext_ln27_reg_649[6 : 0] <= zext_ln27_fu_404_p1[6 : 0];
        zext_ln28_reg_665[5 : 1] <= zext_ln28_fu_428_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln28_1_reg_704[5 : 2] <= zext_ln28_1_fu_508_p1[5 : 2];
        zext_ln28_2_reg_720[5 : 2] <= zext_ln28_2_fu_521_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        zext_ln28_3_reg_736[5 : 3] <= zext_ln28_3_fu_554_p1[5 : 3];
        zext_ln28_4_reg_752[1] <= zext_ln28_4_fu_570_p1[1];
zext_ln28_4_reg_752[5 : 3] <= zext_ln28_4_fu_570_p1[5 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln28_5_reg_768[5 : 3] <= zext_ln28_5_fu_603_p1[5 : 3];
        zext_ln28_6_reg_784[5 : 3] <= zext_ln28_6_fu_616_p1[5 : 3];
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
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_132_reg_700 == 1'd1))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address0_local = zext_ln28_6_reg_784;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address0_local = zext_ln28_4_reg_752;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address0_local = zext_ln28_2_reg_720;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address0_local = zext_ln28_reg_665;
    end else begin
        v141_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address1_local = zext_ln28_5_reg_768;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address1_local = zext_ln28_3_reg_736;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address1_local = zext_ln28_1_reg_704;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_address1_local = zext_ln27_reg_649;
    end else begin
        v141_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d0_local = bitcast_ln29_7_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d0_local = bitcast_ln29_5_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d0_local = bitcast_ln29_3_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d0_local = bitcast_ln29_1_fu_491_p1;
    end else begin
        v141_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d1_local = bitcast_ln29_6_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d1_local = bitcast_ln29_4_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d1_local = bitcast_ln29_2_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v141_d1_local = bitcast_ln29_fu_481_p1;
    end else begin
        v141_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address0_local = zext_ln28_6_reg_784;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address0_local = zext_ln28_4_reg_752;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address0_local = zext_ln28_2_reg_720;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address0_local = zext_ln28_reg_665;
    end else begin
        v142_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address1_local = zext_ln28_5_reg_768;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address1_local = zext_ln28_3_reg_736;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address1_local = zext_ln28_1_reg_704;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_address1_local = zext_ln27_reg_649;
    end else begin
        v142_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d0_local = bitcast_ln31_7_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d0_local = bitcast_ln31_5_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d0_local = bitcast_ln31_3_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d0_local = bitcast_ln31_1_fu_496_p1;
    end else begin
        v142_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d1_local = bitcast_ln31_6_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d1_local = bitcast_ln31_4_fu_581_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d1_local = bitcast_ln31_2_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        v142_d1_local = bitcast_ln31_fu_486_p1;
    end else begin
        v142_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_376_v65_address0;
    end else begin
        v151_address0 = v151_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v151_address0_local = zext_ln28_6_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v151_address0_local = zext_ln28_4_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_address0_local = zext_ln28_2_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_address0_local = zext_ln28_fu_428_p1;
        end else begin
            v151_address0_local = 'bx;
        end
    end else begin
        v151_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address1 = grp_bicg_node2_fu_376_v65_address1;
    end else begin
        v151_address1 = v151_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v151_address1_local = zext_ln28_5_fu_603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v151_address1_local = zext_ln28_3_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v151_address1_local = zext_ln28_1_fu_508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v151_address1_local = zext_ln27_fu_404_p1;
        end else begin
            v151_address1_local = 'bx;
        end
    end else begin
        v151_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_376_v65_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_376_v65_ce1;
    end else begin
        v151_ce1 = v151_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce10 = grp_bicg_node2_fu_376_v65_ce10;
    end else begin
        v151_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce11 = grp_bicg_node2_fu_376_v65_ce11;
    end else begin
        v151_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce12 = grp_bicg_node2_fu_376_v65_ce12;
    end else begin
        v151_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce13 = grp_bicg_node2_fu_376_v65_ce13;
    end else begin
        v151_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce14 = grp_bicg_node2_fu_376_v65_ce14;
    end else begin
        v151_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce15 = grp_bicg_node2_fu_376_v65_ce15;
    end else begin
        v151_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce16 = grp_bicg_node2_fu_376_v65_ce16;
    end else begin
        v151_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v151_ce1_local = 1'b1;
    end else begin
        v151_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce2 = grp_bicg_node2_fu_376_v65_ce2;
    end else begin
        v151_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce3 = grp_bicg_node2_fu_376_v65_ce3;
    end else begin
        v151_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce4 = grp_bicg_node2_fu_376_v65_ce4;
    end else begin
        v151_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce5 = grp_bicg_node2_fu_376_v65_ce5;
    end else begin
        v151_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce6 = grp_bicg_node2_fu_376_v65_ce6;
    end else begin
        v151_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce7 = grp_bicg_node2_fu_376_v65_ce7;
    end else begin
        v151_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce8 = grp_bicg_node2_fu_376_v65_ce8;
    end else begin
        v151_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce9 = grp_bicg_node2_fu_376_v65_ce9;
    end else begin
        v151_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_376_v65_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_386_v10_address0;
    end else begin
        v152_address0 = v152_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v152_address0_local = zext_ln28_6_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v152_address0_local = zext_ln28_4_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address0_local = zext_ln28_2_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address0_local = zext_ln28_fu_428_p1;
        end else begin
            v152_address0_local = 'bx;
        end
    end else begin
        v152_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_386_v10_address1;
    end else begin
        v152_address1 = v152_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v152_address1_local = zext_ln28_5_fu_603_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v152_address1_local = zext_ln28_3_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address1_local = zext_ln28_1_fu_508_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address1_local = zext_ln27_fu_404_p1;
        end else begin
            v152_address1_local = 'bx;
        end
    end else begin
        v152_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_386_v10_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_386_v10_ce1;
    end else begin
        v152_ce1 = v152_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce10 = grp_bicg_node1_fu_386_v10_ce10;
    end else begin
        v152_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce11 = grp_bicg_node1_fu_386_v10_ce11;
    end else begin
        v152_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce12 = grp_bicg_node1_fu_386_v10_ce12;
    end else begin
        v152_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce13 = grp_bicg_node1_fu_386_v10_ce13;
    end else begin
        v152_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce14 = grp_bicg_node1_fu_386_v10_ce14;
    end else begin
        v152_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce15 = grp_bicg_node1_fu_386_v10_ce15;
    end else begin
        v152_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce16 = grp_bicg_node1_fu_386_v10_ce16;
    end else begin
        v152_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        v152_ce1_local = 1'b1;
    end else begin
        v152_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce2 = grp_bicg_node1_fu_386_v10_ce2;
    end else begin
        v152_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce3 = grp_bicg_node1_fu_386_v10_ce3;
    end else begin
        v152_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce4 = grp_bicg_node1_fu_386_v10_ce4;
    end else begin
        v152_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce5 = grp_bicg_node1_fu_386_v10_ce5;
    end else begin
        v152_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce6 = grp_bicg_node1_fu_386_v10_ce6;
    end else begin
        v152_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce7 = grp_bicg_node1_fu_386_v10_ce7;
    end else begin
        v152_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce8 = grp_bicg_node1_fu_386_v10_ce8;
    end else begin
        v152_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce9 = grp_bicg_node1_fu_386_v10_ce9;
    end else begin
        v152_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_386_v10_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
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
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];
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
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_386_ap_done == 1'b0) | (grp_bicg_node2_fu_376_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_1_fu_491_p1 = v151_q0;
assign bitcast_ln29_2_fu_527_p1 = v151_q1;
assign bitcast_ln29_3_fu_537_p1 = v151_q0;
assign bitcast_ln29_4_fu_576_p1 = v151_q1;
assign bitcast_ln29_5_fu_586_p1 = v151_q0;
assign bitcast_ln29_6_fu_622_p1 = v151_q1;
assign bitcast_ln29_7_fu_632_p1 = v151_q0;
assign bitcast_ln29_fu_481_p1 = v151_q1;
assign bitcast_ln31_1_fu_496_p1 = v152_q0;
assign bitcast_ln31_2_fu_532_p1 = v152_q1;
assign bitcast_ln31_3_fu_542_p1 = v152_q0;
assign bitcast_ln31_4_fu_581_p1 = v152_q1;
assign bitcast_ln31_5_fu_591_p1 = v152_q0;
assign bitcast_ln31_6_fu_627_p1 = v152_q1;
assign bitcast_ln31_7_fu_637_p1 = v152_q0;
assign bitcast_ln31_fu_486_p1 = v152_q1;
assign grp_bicg_node1_fu_386_ap_start = grp_bicg_node1_fu_386_ap_start_reg;
assign grp_bicg_node2_fu_376_ap_start = grp_bicg_node2_fu_376_ap_start_reg;
assign or_ln27_1_fu_501_p3 = {{tmp_s_reg_681}, {2'd2}};
assign or_ln27_2_fu_514_p3 = {{tmp_s_reg_681}, {2'd3}};
assign or_ln27_3_fu_547_p3 = {{tmp_259_reg_687}, {3'd4}};
assign or_ln27_4_fu_560_p5 = {{{{tmp_259_reg_687}, {1'd1}}, {tmp_131_reg_695}}, {1'd1}};
assign or_ln27_5_fu_596_p3 = {{tmp_259_reg_687}, {3'd6}};
assign or_ln27_6_fu_609_p3 = {{tmp_259_reg_687}, {3'd7}};
assign or_ln_fu_420_p3 = {{tmp_fu_410_p4}, {1'd1}};
assign tmp_fu_410_p4 = {{v41_fu_88[5:1]}};
assign v137_address0 = grp_bicg_node1_fu_386_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_386_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_386_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_386_v137_ce1;
assign v138_address0 = grp_bicg_node2_fu_376_v138_address0;
assign v138_address1 = grp_bicg_node2_fu_376_v138_address1;
assign v138_ce0 = grp_bicg_node2_fu_376_v138_ce0;
assign v138_ce1 = grp_bicg_node2_fu_376_v138_ce1;
assign v139_address0 = grp_bicg_node1_fu_386_v139_address0;
assign v139_address1 = grp_bicg_node1_fu_386_v139_address1;
assign v139_ce0 = grp_bicg_node1_fu_386_v139_ce0;
assign v139_ce1 = grp_bicg_node1_fu_386_v139_ce1;
assign v140_address0 = grp_bicg_node2_fu_376_v140_address0;
assign v140_address1 = grp_bicg_node2_fu_376_v140_address1;
assign v140_ce0 = grp_bicg_node2_fu_376_v140_ce0;
assign v140_ce1 = grp_bicg_node2_fu_376_v140_ce1;
assign v141_address0 = v141_address0_local;
assign v141_address1 = v141_address1_local;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = v141_d0_local;
assign v141_d1 = v141_d1_local;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = v142_address0_local;
assign v142_address1 = v142_address1_local;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = v142_d0_local;
assign v142_d1 = v142_d1_local;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v4_fu_462_p2 = (v41_fu_88 + 7'd8);
assign zext_ln27_fu_404_p1 = v41_fu_88;
assign zext_ln28_1_fu_508_p1 = or_ln27_1_fu_501_p3;
assign zext_ln28_2_fu_521_p1 = or_ln27_2_fu_514_p3;
assign zext_ln28_3_fu_554_p1 = or_ln27_3_fu_547_p3;
assign zext_ln28_4_fu_570_p1 = or_ln27_4_fu_560_p5;
assign zext_ln28_5_fu_603_p1 = or_ln27_5_fu_596_p3;
assign zext_ln28_6_fu_616_p1 = or_ln27_6_fu_609_p3;
assign zext_ln28_fu_428_p1 = or_ln_fu_420_p3;
always @ (posedge ap_clk) begin
    zext_ln27_reg_649[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln28_reg_665[0] <= 1'b1;
    zext_ln28_reg_665[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_1_reg_704[1:0] <= 2'b10;
    zext_ln28_1_reg_704[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_2_reg_720[1:0] <= 2'b11;
    zext_ln28_2_reg_720[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_3_reg_736[2:0] <= 3'b100;
    zext_ln28_3_reg_736[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_4_reg_752[0] <= 1'b1;
    zext_ln28_4_reg_752[2:2] <= 1'b1;
    zext_ln28_4_reg_752[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_5_reg_768[2:0] <= 3'b110;
    zext_ln28_5_reg_768[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln28_6_reg_784[2:0] <= 3'b111;
    zext_ln28_6_reg_784[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 