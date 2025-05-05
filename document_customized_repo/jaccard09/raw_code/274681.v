module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v138_2_address0,v138_2_ce0,v138_2_q0,v138_2_address1,v138_2_ce1,v138_2_q1,v138_3_address0,v138_3_ce0,v138_3_q0,v138_3_address1,v138_3_ce1,v138_3_q1,v138_4_address0,v138_4_ce0,v138_4_q0,v138_4_address1,v138_4_ce1,v138_4_q1,v138_5_address0,v138_5_ce0,v138_5_q0,v138_5_address1,v138_5_ce1,v138_5_q1,v138_6_address0,v138_6_ce0,v138_6_q0,v138_6_address1,v138_6_ce1,v138_6_q1,v138_7_address0,v138_7_ce0,v138_7_q0,v138_7_address1,v138_7_ce1,v138_7_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v140_address1,v140_ce1,v140_q1,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
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
output  [8:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [8:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [8:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [8:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
output  [8:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [8:0] v138_2_address1;
output   v138_2_ce1;
input  [31:0] v138_2_q1;
output  [8:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [8:0] v138_3_address1;
output   v138_3_ce1;
input  [31:0] v138_3_q1;
output  [8:0] v138_4_address0;
output   v138_4_ce0;
input  [31:0] v138_4_q0;
output  [8:0] v138_4_address1;
output   v138_4_ce1;
input  [31:0] v138_4_q1;
output  [8:0] v138_5_address0;
output   v138_5_ce0;
input  [31:0] v138_5_q0;
output  [8:0] v138_5_address1;
output   v138_5_ce1;
input  [31:0] v138_5_q1;
output  [8:0] v138_6_address0;
output   v138_6_ce0;
input  [31:0] v138_6_q0;
output  [8:0] v138_6_address1;
output   v138_6_ce1;
input  [31:0] v138_6_q1;
output  [8:0] v138_7_address0;
output   v138_7_ce0;
input  [31:0] v138_7_q0;
output  [8:0] v138_7_address1;
output   v138_7_ce1;
input  [31:0] v138_7_q1;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
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
reg   [4:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg   [4:0] v152_address1;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
reg   [4:0] v152_1_address0;
reg    v152_1_ce0;
reg    v152_1_we0;
wire   [31:0] v152_1_q0;
reg   [4:0] v152_1_address1;
reg    v152_1_ce1;
reg    v152_1_we1;
wire   [31:0] v152_1_q1;
wire    grp_bicg_node2_fu_62_ap_start;
wire    grp_bicg_node2_fu_62_ap_done;
wire    grp_bicg_node2_fu_62_ap_idle;
wire    grp_bicg_node2_fu_62_ap_ready;
wire   [5:0] grp_bicg_node2_fu_62_v140_address0;
wire    grp_bicg_node2_fu_62_v140_ce0;
wire   [5:0] grp_bicg_node2_fu_62_v140_address1;
wire    grp_bicg_node2_fu_62_v140_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_0_address0;
wire    grp_bicg_node2_fu_62_v138_0_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_0_address1;
wire    grp_bicg_node2_fu_62_v138_0_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_1_address0;
wire    grp_bicg_node2_fu_62_v138_1_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_1_address1;
wire    grp_bicg_node2_fu_62_v138_1_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_2_address0;
wire    grp_bicg_node2_fu_62_v138_2_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_2_address1;
wire    grp_bicg_node2_fu_62_v138_2_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_3_address0;
wire    grp_bicg_node2_fu_62_v138_3_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_3_address1;
wire    grp_bicg_node2_fu_62_v138_3_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_4_address0;
wire    grp_bicg_node2_fu_62_v138_4_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_4_address1;
wire    grp_bicg_node2_fu_62_v138_4_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_5_address0;
wire    grp_bicg_node2_fu_62_v138_5_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_5_address1;
wire    grp_bicg_node2_fu_62_v138_5_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_6_address0;
wire    grp_bicg_node2_fu_62_v138_6_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_6_address1;
wire    grp_bicg_node2_fu_62_v138_6_ce1;
wire   [8:0] grp_bicg_node2_fu_62_v138_7_address0;
wire    grp_bicg_node2_fu_62_v138_7_ce0;
wire   [8:0] grp_bicg_node2_fu_62_v138_7_address1;
wire    grp_bicg_node2_fu_62_v138_7_ce1;
wire   [5:0] grp_bicg_node2_fu_62_v65_address0;
wire    grp_bicg_node2_fu_62_v65_ce0;
wire    grp_bicg_node2_fu_62_v65_we0;
wire   [31:0] grp_bicg_node2_fu_62_v65_d0;
wire   [5:0] grp_bicg_node2_fu_62_v65_address1;
wire    grp_bicg_node2_fu_62_v65_ce1;
wire   [5:0] grp_bicg_node2_fu_62_v65_address2;
wire    grp_bicg_node2_fu_62_v65_ce2;
wire   [5:0] grp_bicg_node2_fu_62_v65_address3;
wire    grp_bicg_node2_fu_62_v65_ce3;
wire   [5:0] grp_bicg_node2_fu_62_v65_address4;
wire    grp_bicg_node2_fu_62_v65_ce4;
wire   [5:0] grp_bicg_node2_fu_62_v65_address5;
wire    grp_bicg_node2_fu_62_v65_ce5;
wire   [5:0] grp_bicg_node2_fu_62_v65_address6;
wire    grp_bicg_node2_fu_62_v65_ce6;
wire   [5:0] grp_bicg_node2_fu_62_v65_address7;
wire    grp_bicg_node2_fu_62_v65_ce7;
wire   [5:0] grp_bicg_node2_fu_62_v65_address8;
wire    grp_bicg_node2_fu_62_v65_ce8;
wire   [5:0] grp_bicg_node2_fu_62_v65_address9;
wire    grp_bicg_node2_fu_62_v65_ce9;
wire   [5:0] grp_bicg_node2_fu_62_v65_address10;
wire    grp_bicg_node2_fu_62_v65_ce10;
wire   [5:0] grp_bicg_node2_fu_62_v65_address11;
wire    grp_bicg_node2_fu_62_v65_ce11;
wire   [5:0] grp_bicg_node2_fu_62_v65_address12;
wire    grp_bicg_node2_fu_62_v65_ce12;
wire   [5:0] grp_bicg_node2_fu_62_v65_address13;
wire    grp_bicg_node2_fu_62_v65_ce13;
wire   [5:0] grp_bicg_node2_fu_62_v65_address14;
wire    grp_bicg_node2_fu_62_v65_ce14;
wire   [5:0] grp_bicg_node2_fu_62_v65_address15;
wire    grp_bicg_node2_fu_62_v65_ce15;
wire   [5:0] grp_bicg_node2_fu_62_v65_address16;
wire    grp_bicg_node2_fu_62_v65_ce16;
wire    grp_bicg_node1_fu_86_ap_start;
wire    grp_bicg_node1_fu_86_ap_done;
wire    grp_bicg_node1_fu_86_ap_idle;
wire    grp_bicg_node1_fu_86_ap_ready;
wire   [11:0] grp_bicg_node1_fu_86_v137_address0;
wire    grp_bicg_node1_fu_86_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_86_v137_address1;
wire    grp_bicg_node1_fu_86_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_86_v139_address0;
wire    grp_bicg_node1_fu_86_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_86_v10_0_address0;
wire    grp_bicg_node1_fu_86_v10_0_ce0;
wire    grp_bicg_node1_fu_86_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_86_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_86_v10_0_address1;
wire    grp_bicg_node1_fu_86_v10_0_ce1;
wire    grp_bicg_node1_fu_86_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_86_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_86_v10_1_address0;
wire    grp_bicg_node1_fu_86_v10_1_ce0;
wire    grp_bicg_node1_fu_86_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_86_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_86_v10_1_address1;
wire    grp_bicg_node1_fu_86_v10_1_ce1;
wire    grp_bicg_node1_fu_86_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_86_v10_1_d1;
wire    grp_bicg_node0_fu_98_ap_start;
wire    grp_bicg_node0_fu_98_ap_done;
wire    grp_bicg_node0_fu_98_ap_idle;
wire    grp_bicg_node0_fu_98_ap_ready;
wire   [5:0] grp_bicg_node0_fu_98_v0_address0;
wire    grp_bicg_node0_fu_98_v0_ce0;
wire   [5:0] grp_bicg_node0_fu_98_v0_address1;
wire    grp_bicg_node0_fu_98_v0_ce1;
wire   [4:0] grp_bicg_node0_fu_98_v1_0_address0;
wire    grp_bicg_node0_fu_98_v1_0_ce0;
wire   [4:0] grp_bicg_node0_fu_98_v1_0_address1;
wire    grp_bicg_node0_fu_98_v1_0_ce1;
wire   [4:0] grp_bicg_node0_fu_98_v1_1_address0;
wire    grp_bicg_node0_fu_98_v1_1_ce0;
wire   [4:0] grp_bicg_node0_fu_98_v1_1_address1;
wire    grp_bicg_node0_fu_98_v1_1_ce1;
wire   [5:0] grp_bicg_node0_fu_98_v141_address0;
wire    grp_bicg_node0_fu_98_v141_ce0;
wire    grp_bicg_node0_fu_98_v141_we0;
wire   [31:0] grp_bicg_node0_fu_98_v141_d0;
wire   [5:0] grp_bicg_node0_fu_98_v141_address1;
wire    grp_bicg_node0_fu_98_v141_ce1;
wire    grp_bicg_node0_fu_98_v141_we1;
wire   [31:0] grp_bicg_node0_fu_98_v141_d1;
wire   [5:0] grp_bicg_node0_fu_98_v142_address0;
wire    grp_bicg_node0_fu_98_v142_ce0;
wire    grp_bicg_node0_fu_98_v142_we0;
wire   [31:0] grp_bicg_node0_fu_98_v142_d0;
wire   [5:0] grp_bicg_node0_fu_98_v142_address1;
wire    grp_bicg_node0_fu_98_v142_ce1;
wire    grp_bicg_node0_fu_98_v142_we1;
wire   [31:0] grp_bicg_node0_fu_98_v142_d1;
reg    grp_bicg_node2_fu_62_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_bicg_node1_fu_86_ap_start_reg;
reg    grp_bicg_node0_fu_98_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_bicg_node2_fu_62_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_86_ap_start_reg = 1'b0;
#0 grp_bicg_node0_fu_98_ap_start_reg = 1'b0;
end
bicg_v151_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_62_v65_d0),.q0(v151_q0),.address1(v151_address1),.ce1(v151_ce1),.q1(v151_q1),.address2(grp_bicg_node2_fu_62_v65_address2),.ce2(v151_ce2),.q2(v151_q2),.address3(grp_bicg_node2_fu_62_v65_address3),.ce3(v151_ce3),.q3(v151_q3),.address4(grp_bicg_node2_fu_62_v65_address4),.ce4(v151_ce4),.q4(v151_q4),.address5(grp_bicg_node2_fu_62_v65_address5),.ce5(v151_ce5),.q5(v151_q5),.address6(grp_bicg_node2_fu_62_v65_address6),.ce6(v151_ce6),.q6(v151_q6),.address7(grp_bicg_node2_fu_62_v65_address7),.ce7(v151_ce7),.q7(v151_q7),.address8(grp_bicg_node2_fu_62_v65_address8),.ce8(v151_ce8),.q8(v151_q8),.address9(grp_bicg_node2_fu_62_v65_address9),.ce9(v151_ce9),.q9(v151_q9),.address10(grp_bicg_node2_fu_62_v65_address10),.ce10(v151_ce10),.q10(v151_q10),.address11(grp_bicg_node2_fu_62_v65_address11),.ce11(v151_ce11),.q11(v151_q11),.address12(grp_bicg_node2_fu_62_v65_address12),.ce12(v151_ce12),.q12(v151_q12),.address13(grp_bicg_node2_fu_62_v65_address13),.ce13(v151_ce13),.q13(v151_q13),.address14(grp_bicg_node2_fu_62_v65_address14),.ce14(v151_ce14),.q14(v151_q14),.address15(grp_bicg_node2_fu_62_v65_address15),.ce15(v151_ce15),.q15(v151_q15),.address16(grp_bicg_node2_fu_62_v65_address16),.ce16(v151_ce16),.q16(v151_q16));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_86_v10_0_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_86_v10_0_d1),.q1(v152_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_86_v10_1_d0),.q0(v152_1_q0),.address1(v152_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_86_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_62_ap_start),.ap_done(grp_bicg_node2_fu_62_ap_done),.ap_idle(grp_bicg_node2_fu_62_ap_idle),.ap_ready(grp_bicg_node2_fu_62_ap_ready),.v140_address0(grp_bicg_node2_fu_62_v140_address0),.v140_ce0(grp_bicg_node2_fu_62_v140_ce0),.v140_q0(v140_q0),.v140_address1(grp_bicg_node2_fu_62_v140_address1),.v140_ce1(grp_bicg_node2_fu_62_v140_ce1),.v140_q1(v140_q1),.v138_0_address0(grp_bicg_node2_fu_62_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_62_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_0_address1(grp_bicg_node2_fu_62_v138_0_address1),.v138_0_ce1(grp_bicg_node2_fu_62_v138_0_ce1),.v138_0_q1(v138_0_q1),.v138_1_address0(grp_bicg_node2_fu_62_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_62_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_1_address1(grp_bicg_node2_fu_62_v138_1_address1),.v138_1_ce1(grp_bicg_node2_fu_62_v138_1_ce1),.v138_1_q1(v138_1_q1),.v138_2_address0(grp_bicg_node2_fu_62_v138_2_address0),.v138_2_ce0(grp_bicg_node2_fu_62_v138_2_ce0),.v138_2_q0(v138_2_q0),.v138_2_address1(grp_bicg_node2_fu_62_v138_2_address1),.v138_2_ce1(grp_bicg_node2_fu_62_v138_2_ce1),.v138_2_q1(v138_2_q1),.v138_3_address0(grp_bicg_node2_fu_62_v138_3_address0),.v138_3_ce0(grp_bicg_node2_fu_62_v138_3_ce0),.v138_3_q0(v138_3_q0),.v138_3_address1(grp_bicg_node2_fu_62_v138_3_address1),.v138_3_ce1(grp_bicg_node2_fu_62_v138_3_ce1),.v138_3_q1(v138_3_q1),.v138_4_address0(grp_bicg_node2_fu_62_v138_4_address0),.v138_4_ce0(grp_bicg_node2_fu_62_v138_4_ce0),.v138_4_q0(v138_4_q0),.v138_4_address1(grp_bicg_node2_fu_62_v138_4_address1),.v138_4_ce1(grp_bicg_node2_fu_62_v138_4_ce1),.v138_4_q1(v138_4_q1),.v138_5_address0(grp_bicg_node2_fu_62_v138_5_address0),.v138_5_ce0(grp_bicg_node2_fu_62_v138_5_ce0),.v138_5_q0(v138_5_q0),.v138_5_address1(grp_bicg_node2_fu_62_v138_5_address1),.v138_5_ce1(grp_bicg_node2_fu_62_v138_5_ce1),.v138_5_q1(v138_5_q1),.v138_6_address0(grp_bicg_node2_fu_62_v138_6_address0),.v138_6_ce0(grp_bicg_node2_fu_62_v138_6_ce0),.v138_6_q0(v138_6_q0),.v138_6_address1(grp_bicg_node2_fu_62_v138_6_address1),.v138_6_ce1(grp_bicg_node2_fu_62_v138_6_ce1),.v138_6_q1(v138_6_q1),.v138_7_address0(grp_bicg_node2_fu_62_v138_7_address0),.v138_7_ce0(grp_bicg_node2_fu_62_v138_7_ce0),.v138_7_q0(v138_7_q0),.v138_7_address1(grp_bicg_node2_fu_62_v138_7_address1),.v138_7_ce1(grp_bicg_node2_fu_62_v138_7_ce1),.v138_7_q1(v138_7_q1),.v65_address0(grp_bicg_node2_fu_62_v65_address0),.v65_ce0(grp_bicg_node2_fu_62_v65_ce0),.v65_we0(grp_bicg_node2_fu_62_v65_we0),.v65_d0(grp_bicg_node2_fu_62_v65_d0),.v65_q0(v151_q0),.v65_address1(grp_bicg_node2_fu_62_v65_address1),.v65_ce1(grp_bicg_node2_fu_62_v65_ce1),.v65_q1(v151_q1),.v65_address2(grp_bicg_node2_fu_62_v65_address2),.v65_ce2(grp_bicg_node2_fu_62_v65_ce2),.v65_q2(v151_q2),.v65_address3(grp_bicg_node2_fu_62_v65_address3),.v65_ce3(grp_bicg_node2_fu_62_v65_ce3),.v65_q3(v151_q3),.v65_address4(grp_bicg_node2_fu_62_v65_address4),.v65_ce4(grp_bicg_node2_fu_62_v65_ce4),.v65_q4(v151_q4),.v65_address5(grp_bicg_node2_fu_62_v65_address5),.v65_ce5(grp_bicg_node2_fu_62_v65_ce5),.v65_q5(v151_q5),.v65_address6(grp_bicg_node2_fu_62_v65_address6),.v65_ce6(grp_bicg_node2_fu_62_v65_ce6),.v65_q6(v151_q6),.v65_address7(grp_bicg_node2_fu_62_v65_address7),.v65_ce7(grp_bicg_node2_fu_62_v65_ce7),.v65_q7(v151_q7),.v65_address8(grp_bicg_node2_fu_62_v65_address8),.v65_ce8(grp_bicg_node2_fu_62_v65_ce8),.v65_q8(v151_q8),.v65_address9(grp_bicg_node2_fu_62_v65_address9),.v65_ce9(grp_bicg_node2_fu_62_v65_ce9),.v65_q9(v151_q9),.v65_address10(grp_bicg_node2_fu_62_v65_address10),.v65_ce10(grp_bicg_node2_fu_62_v65_ce10),.v65_q10(v151_q10),.v65_address11(grp_bicg_node2_fu_62_v65_address11),.v65_ce11(grp_bicg_node2_fu_62_v65_ce11),.v65_q11(v151_q11),.v65_address12(grp_bicg_node2_fu_62_v65_address12),.v65_ce12(grp_bicg_node2_fu_62_v65_ce12),.v65_q12(v151_q12),.v65_address13(grp_bicg_node2_fu_62_v65_address13),.v65_ce13(grp_bicg_node2_fu_62_v65_ce13),.v65_q13(v151_q13),.v65_address14(grp_bicg_node2_fu_62_v65_address14),.v65_ce14(grp_bicg_node2_fu_62_v65_ce14),.v65_q14(v151_q14),.v65_address15(grp_bicg_node2_fu_62_v65_address15),.v65_ce15(grp_bicg_node2_fu_62_v65_ce15),.v65_q15(v151_q15),.v65_address16(grp_bicg_node2_fu_62_v65_address16),.v65_ce16(grp_bicg_node2_fu_62_v65_ce16),.v65_q16(v151_q16));
bicg_bicg_node1 grp_bicg_node1_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_86_ap_start),.ap_done(grp_bicg_node1_fu_86_ap_done),.ap_idle(grp_bicg_node1_fu_86_ap_idle),.ap_ready(grp_bicg_node1_fu_86_ap_ready),.v137_address0(grp_bicg_node1_fu_86_v137_address0),.v137_ce0(grp_bicg_node1_fu_86_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_86_v137_address1),.v137_ce1(grp_bicg_node1_fu_86_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_86_v139_address0),.v139_ce0(grp_bicg_node1_fu_86_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_86_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_86_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_86_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_86_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_86_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_86_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_86_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_86_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_86_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_86_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_86_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_86_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_86_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_86_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_86_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_86_v10_1_d1),.v10_1_q1(v152_1_q1));
bicg_bicg_node0 grp_bicg_node0_fu_98(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node0_fu_98_ap_start),.ap_done(grp_bicg_node0_fu_98_ap_done),.ap_idle(grp_bicg_node0_fu_98_ap_idle),.ap_ready(grp_bicg_node0_fu_98_ap_ready),.v0_address0(grp_bicg_node0_fu_98_v0_address0),.v0_ce0(grp_bicg_node0_fu_98_v0_ce0),.v0_q0(v151_q0),.v0_address1(grp_bicg_node0_fu_98_v0_address1),.v0_ce1(grp_bicg_node0_fu_98_v0_ce1),.v0_q1(v151_q1),.v1_0_address0(grp_bicg_node0_fu_98_v1_0_address0),.v1_0_ce0(grp_bicg_node0_fu_98_v1_0_ce0),.v1_0_q0(v152_q0),.v1_0_address1(grp_bicg_node0_fu_98_v1_0_address1),.v1_0_ce1(grp_bicg_node0_fu_98_v1_0_ce1),.v1_0_q1(v152_q1),.v1_1_address0(grp_bicg_node0_fu_98_v1_1_address0),.v1_1_ce0(grp_bicg_node0_fu_98_v1_1_ce0),.v1_1_q0(v152_1_q0),.v1_1_address1(grp_bicg_node0_fu_98_v1_1_address1),.v1_1_ce1(grp_bicg_node0_fu_98_v1_1_ce1),.v1_1_q1(v152_1_q1),.v141_address0(grp_bicg_node0_fu_98_v141_address0),.v141_ce0(grp_bicg_node0_fu_98_v141_ce0),.v141_we0(grp_bicg_node0_fu_98_v141_we0),.v141_d0(grp_bicg_node0_fu_98_v141_d0),.v141_address1(grp_bicg_node0_fu_98_v141_address1),.v141_ce1(grp_bicg_node0_fu_98_v141_ce1),.v141_we1(grp_bicg_node0_fu_98_v141_we1),.v141_d1(grp_bicg_node0_fu_98_v141_d1),.v142_address0(grp_bicg_node0_fu_98_v142_address0),.v142_ce0(grp_bicg_node0_fu_98_v142_ce0),.v142_we0(grp_bicg_node0_fu_98_v142_we0),.v142_d0(grp_bicg_node0_fu_98_v142_d0),.v142_address1(grp_bicg_node0_fu_98_v142_address1),.v142_ce1(grp_bicg_node0_fu_98_v142_ce1),.v142_we1(grp_bicg_node0_fu_98_v142_we1),.v142_d1(grp_bicg_node0_fu_98_v142_d1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node0_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_node0_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node0_fu_98_ap_ready == 1'b1)) begin
            grp_bicg_node0_fu_98_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_86_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_62_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_62_ap_start_reg <= 1'b0;
        end
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_node0_fu_98_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_bicg_node0_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((grp_bicg_node0_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_address0 = grp_bicg_node0_fu_98_v0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_62_v65_address0;
    end else begin
        v151_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_address1 = grp_bicg_node0_fu_98_v0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address1 = grp_bicg_node2_fu_62_v65_address1;
    end else begin
        v151_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_ce0 = grp_bicg_node0_fu_98_v0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_62_v65_ce0;
    end else begin
        v151_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v151_ce1 = grp_bicg_node0_fu_98_v0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_62_v65_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce10 = grp_bicg_node2_fu_62_v65_ce10;
    end else begin
        v151_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce11 = grp_bicg_node2_fu_62_v65_ce11;
    end else begin
        v151_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce12 = grp_bicg_node2_fu_62_v65_ce12;
    end else begin
        v151_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce13 = grp_bicg_node2_fu_62_v65_ce13;
    end else begin
        v151_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce14 = grp_bicg_node2_fu_62_v65_ce14;
    end else begin
        v151_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce15 = grp_bicg_node2_fu_62_v65_ce15;
    end else begin
        v151_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce16 = grp_bicg_node2_fu_62_v65_ce16;
    end else begin
        v151_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce2 = grp_bicg_node2_fu_62_v65_ce2;
    end else begin
        v151_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce3 = grp_bicg_node2_fu_62_v65_ce3;
    end else begin
        v151_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce4 = grp_bicg_node2_fu_62_v65_ce4;
    end else begin
        v151_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce5 = grp_bicg_node2_fu_62_v65_ce5;
    end else begin
        v151_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce6 = grp_bicg_node2_fu_62_v65_ce6;
    end else begin
        v151_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce7 = grp_bicg_node2_fu_62_v65_ce7;
    end else begin
        v151_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce8 = grp_bicg_node2_fu_62_v65_ce8;
    end else begin
        v151_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce9 = grp_bicg_node2_fu_62_v65_ce9;
    end else begin
        v151_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_62_v65_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_address0 = grp_bicg_node0_fu_98_v1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_86_v10_1_address0;
    end else begin
        v152_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_address1 = grp_bicg_node0_fu_98_v1_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address1 = grp_bicg_node1_fu_86_v10_1_address1;
    end else begin
        v152_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_ce0 = grp_bicg_node0_fu_98_v1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_86_v10_1_ce0;
    end else begin
        v152_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_1_ce1 = grp_bicg_node0_fu_98_v1_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_86_v10_1_ce1;
    end else begin
        v152_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_86_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_86_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_address0 = grp_bicg_node0_fu_98_v1_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_86_v10_0_address0;
    end else begin
        v152_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_address1 = grp_bicg_node0_fu_98_v1_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_86_v10_0_address1;
    end else begin
        v152_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_ce0 = grp_bicg_node0_fu_98_v1_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_86_v10_0_ce0;
    end else begin
        v152_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v152_ce1 = grp_bicg_node0_fu_98_v1_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_86_v10_0_ce1;
    end else begin
        v152_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_86_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_86_v10_0_we1;
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
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_node0_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_86_ap_done == 1'b0) | (grp_bicg_node2_fu_62_ap_done == 1'b0));
end
assign grp_bicg_node0_fu_98_ap_start = grp_bicg_node0_fu_98_ap_start_reg;
assign grp_bicg_node1_fu_86_ap_start = grp_bicg_node1_fu_86_ap_start_reg;
assign grp_bicg_node2_fu_62_ap_start = grp_bicg_node2_fu_62_ap_start_reg;
assign v137_address0 = grp_bicg_node1_fu_86_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_86_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_86_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_86_v137_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_62_v138_0_address0;
assign v138_0_address1 = grp_bicg_node2_fu_62_v138_0_address1;
assign v138_0_ce0 = grp_bicg_node2_fu_62_v138_0_ce0;
assign v138_0_ce1 = grp_bicg_node2_fu_62_v138_0_ce1;
assign v138_1_address0 = grp_bicg_node2_fu_62_v138_1_address0;
assign v138_1_address1 = grp_bicg_node2_fu_62_v138_1_address1;
assign v138_1_ce0 = grp_bicg_node2_fu_62_v138_1_ce0;
assign v138_1_ce1 = grp_bicg_node2_fu_62_v138_1_ce1;
assign v138_2_address0 = grp_bicg_node2_fu_62_v138_2_address0;
assign v138_2_address1 = grp_bicg_node2_fu_62_v138_2_address1;
assign v138_2_ce0 = grp_bicg_node2_fu_62_v138_2_ce0;
assign v138_2_ce1 = grp_bicg_node2_fu_62_v138_2_ce1;
assign v138_3_address0 = grp_bicg_node2_fu_62_v138_3_address0;
assign v138_3_address1 = grp_bicg_node2_fu_62_v138_3_address1;
assign v138_3_ce0 = grp_bicg_node2_fu_62_v138_3_ce0;
assign v138_3_ce1 = grp_bicg_node2_fu_62_v138_3_ce1;
assign v138_4_address0 = grp_bicg_node2_fu_62_v138_4_address0;
assign v138_4_address1 = grp_bicg_node2_fu_62_v138_4_address1;
assign v138_4_ce0 = grp_bicg_node2_fu_62_v138_4_ce0;
assign v138_4_ce1 = grp_bicg_node2_fu_62_v138_4_ce1;
assign v138_5_address0 = grp_bicg_node2_fu_62_v138_5_address0;
assign v138_5_address1 = grp_bicg_node2_fu_62_v138_5_address1;
assign v138_5_ce0 = grp_bicg_node2_fu_62_v138_5_ce0;
assign v138_5_ce1 = grp_bicg_node2_fu_62_v138_5_ce1;
assign v138_6_address0 = grp_bicg_node2_fu_62_v138_6_address0;
assign v138_6_address1 = grp_bicg_node2_fu_62_v138_6_address1;
assign v138_6_ce0 = grp_bicg_node2_fu_62_v138_6_ce0;
assign v138_6_ce1 = grp_bicg_node2_fu_62_v138_6_ce1;
assign v138_7_address0 = grp_bicg_node2_fu_62_v138_7_address0;
assign v138_7_address1 = grp_bicg_node2_fu_62_v138_7_address1;
assign v138_7_ce0 = grp_bicg_node2_fu_62_v138_7_ce0;
assign v138_7_ce1 = grp_bicg_node2_fu_62_v138_7_ce1;
assign v139_address0 = grp_bicg_node1_fu_86_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_86_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_62_v140_address0;
assign v140_address1 = grp_bicg_node2_fu_62_v140_address1;
assign v140_ce0 = grp_bicg_node2_fu_62_v140_ce0;
assign v140_ce1 = grp_bicg_node2_fu_62_v140_ce1;
assign v141_address0 = grp_bicg_node0_fu_98_v141_address0;
assign v141_address1 = grp_bicg_node0_fu_98_v141_address1;
assign v141_ce0 = grp_bicg_node0_fu_98_v141_ce0;
assign v141_ce1 = grp_bicg_node0_fu_98_v141_ce1;
assign v141_d0 = grp_bicg_node0_fu_98_v141_d0;
assign v141_d1 = grp_bicg_node0_fu_98_v141_d1;
assign v141_we0 = grp_bicg_node0_fu_98_v141_we0;
assign v141_we1 = grp_bicg_node0_fu_98_v141_we1;
assign v142_address0 = grp_bicg_node0_fu_98_v142_address0;
assign v142_address1 = grp_bicg_node0_fu_98_v142_address1;
assign v142_ce0 = grp_bicg_node0_fu_98_v142_ce0;
assign v142_ce1 = grp_bicg_node0_fu_98_v142_ce1;
assign v142_d0 = grp_bicg_node0_fu_98_v142_d0;
assign v142_d1 = grp_bicg_node0_fu_98_v142_d1;
assign v142_we0 = grp_bicg_node0_fu_98_v142_we0;
assign v142_we1 = grp_bicg_node0_fu_98_v142_we1;
endmodule 