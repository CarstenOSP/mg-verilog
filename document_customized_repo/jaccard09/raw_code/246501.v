module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_address0,v115_ce0,v115_q0,v115_address1,v115_ce1,v115_q1,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,v117_address0,v117_ce0,v117_we0,v117_d0); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [5:0] v115_address1;
output   v115_ce1;
input  [31:0] v115_q1;
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
output  [5:0] v117_address0;
output   v117_ce0;
output   v117_we0;
output  [31:0] v117_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] v123_address0;
reg    v123_ce0;
wire   [31:0] v123_q0;
reg    v123_ce1;
wire   [31:0] v123_q1;
reg   [2:0] v123_1_address0;
reg    v123_1_ce0;
wire   [31:0] v123_1_q0;
reg    v123_1_ce1;
wire   [31:0] v123_1_q1;
reg   [2:0] v123_2_address0;
reg    v123_2_ce0;
wire   [31:0] v123_2_q0;
reg    v123_2_ce1;
wire   [31:0] v123_2_q1;
reg   [2:0] v123_3_address0;
reg    v123_3_ce0;
wire   [31:0] v123_3_q0;
reg    v123_3_ce1;
wire   [31:0] v123_3_q1;
reg   [2:0] v123_4_address0;
reg    v123_4_ce0;
wire   [31:0] v123_4_q0;
reg    v123_4_ce1;
wire   [31:0] v123_4_q1;
reg   [2:0] v123_5_address0;
reg    v123_5_ce0;
wire   [31:0] v123_5_q0;
reg    v123_5_ce1;
wire   [31:0] v123_5_q1;
reg   [2:0] v123_6_address0;
reg    v123_6_ce0;
wire   [31:0] v123_6_q0;
reg    v123_6_ce1;
wire   [31:0] v123_6_q1;
reg   [2:0] v123_7_address0;
reg    v123_7_ce0;
wire   [31:0] v123_7_q0;
reg    v123_7_ce1;
wire   [31:0] v123_7_q1;
reg   [5:0] v124_address0;
reg    v124_ce0;
reg    v124_we0;
wire   [31:0] v124_q0;
reg   [5:0] v124_address1;
reg    v124_ce1;
wire   [31:0] v124_q1;
reg    v124_ce2;
wire   [31:0] v124_q2;
reg    v124_ce3;
wire   [31:0] v124_q3;
reg    v124_ce4;
wire   [31:0] v124_q4;
reg    v124_ce5;
wire   [31:0] v124_q5;
reg    v124_ce6;
wire   [31:0] v124_q6;
reg    v124_ce7;
wire   [31:0] v124_q7;
reg    v124_ce8;
wire   [31:0] v124_q8;
reg    v124_ce9;
wire   [31:0] v124_q9;
reg    v124_ce10;
wire   [31:0] v124_q10;
reg    v124_ce11;
wire   [31:0] v124_q11;
reg    v124_ce12;
wire   [31:0] v124_q12;
reg    v124_ce13;
wire   [31:0] v124_q13;
reg    v124_ce14;
wire   [31:0] v124_q14;
reg    v124_ce15;
wire   [31:0] v124_q15;
reg    v124_ce16;
wire   [31:0] v124_q16;
wire    grp_atax_node1_fu_234_ap_start;
wire    grp_atax_node1_fu_234_ap_done;
wire    grp_atax_node1_fu_234_ap_idle;
wire    grp_atax_node1_fu_234_ap_ready;
wire   [11:0] grp_atax_node1_fu_234_v114_address0;
wire    grp_atax_node1_fu_234_v114_ce0;
wire   [11:0] grp_atax_node1_fu_234_v114_address1;
wire    grp_atax_node1_fu_234_v114_ce1;
wire   [5:0] grp_atax_node1_fu_234_v115_address0;
wire    grp_atax_node1_fu_234_v115_ce0;
wire   [5:0] grp_atax_node1_fu_234_v115_address1;
wire    grp_atax_node1_fu_234_v115_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_0_address0;
wire    grp_atax_node1_fu_234_v57_0_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_0_address1;
wire    grp_atax_node1_fu_234_v57_0_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_1_address0;
wire    grp_atax_node1_fu_234_v57_1_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_1_address1;
wire    grp_atax_node1_fu_234_v57_1_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_2_address0;
wire    grp_atax_node1_fu_234_v57_2_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_2_address1;
wire    grp_atax_node1_fu_234_v57_2_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_3_address0;
wire    grp_atax_node1_fu_234_v57_3_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_3_address1;
wire    grp_atax_node1_fu_234_v57_3_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_4_address0;
wire    grp_atax_node1_fu_234_v57_4_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_4_address1;
wire    grp_atax_node1_fu_234_v57_4_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_5_address0;
wire    grp_atax_node1_fu_234_v57_5_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_5_address1;
wire    grp_atax_node1_fu_234_v57_5_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_6_address0;
wire    grp_atax_node1_fu_234_v57_6_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_6_address1;
wire    grp_atax_node1_fu_234_v57_6_ce1;
wire   [2:0] grp_atax_node1_fu_234_v57_7_address0;
wire    grp_atax_node1_fu_234_v57_7_ce0;
wire   [2:0] grp_atax_node1_fu_234_v57_7_address1;
wire    grp_atax_node1_fu_234_v57_7_ce1;
wire   [5:0] grp_atax_node1_fu_234_v58_address0;
wire    grp_atax_node1_fu_234_v58_ce0;
wire    grp_atax_node1_fu_234_v58_we0;
wire   [31:0] grp_atax_node1_fu_234_v58_d0;
wire   [5:0] grp_atax_node1_fu_234_v58_address1;
wire    grp_atax_node1_fu_234_v58_ce1;
wire   [5:0] grp_atax_node1_fu_234_v58_address2;
wire    grp_atax_node1_fu_234_v58_ce2;
wire   [5:0] grp_atax_node1_fu_234_v58_address3;
wire    grp_atax_node1_fu_234_v58_ce3;
wire   [5:0] grp_atax_node1_fu_234_v58_address4;
wire    grp_atax_node1_fu_234_v58_ce4;
wire   [5:0] grp_atax_node1_fu_234_v58_address5;
wire    grp_atax_node1_fu_234_v58_ce5;
wire   [5:0] grp_atax_node1_fu_234_v58_address6;
wire    grp_atax_node1_fu_234_v58_ce6;
wire   [5:0] grp_atax_node1_fu_234_v58_address7;
wire    grp_atax_node1_fu_234_v58_ce7;
wire   [5:0] grp_atax_node1_fu_234_v58_address8;
wire    grp_atax_node1_fu_234_v58_ce8;
wire   [5:0] grp_atax_node1_fu_234_v58_address9;
wire    grp_atax_node1_fu_234_v58_ce9;
wire   [5:0] grp_atax_node1_fu_234_v58_address10;
wire    grp_atax_node1_fu_234_v58_ce10;
wire   [5:0] grp_atax_node1_fu_234_v58_address11;
wire    grp_atax_node1_fu_234_v58_ce11;
wire   [5:0] grp_atax_node1_fu_234_v58_address12;
wire    grp_atax_node1_fu_234_v58_ce12;
wire   [5:0] grp_atax_node1_fu_234_v58_address13;
wire    grp_atax_node1_fu_234_v58_ce13;
wire   [5:0] grp_atax_node1_fu_234_v58_address14;
wire    grp_atax_node1_fu_234_v58_ce14;
wire   [5:0] grp_atax_node1_fu_234_v58_address15;
wire    grp_atax_node1_fu_234_v58_ce15;
wire   [5:0] grp_atax_node1_fu_234_v58_address16;
wire    grp_atax_node1_fu_234_v58_ce16;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_331_p_din0;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_331_p_din1;
wire   [1:0] grp_atax_node1_fu_234_grp_fu_331_p_opcode;
wire    grp_atax_node1_fu_234_grp_fu_331_p_ce;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_335_p_din0;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_335_p_din1;
wire   [1:0] grp_atax_node1_fu_234_grp_fu_335_p_opcode;
wire    grp_atax_node1_fu_234_grp_fu_335_p_ce;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_339_p_din0;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_339_p_din1;
wire    grp_atax_node1_fu_234_grp_fu_339_p_ce;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_343_p_din0;
wire   [31:0] grp_atax_node1_fu_234_grp_fu_343_p_din1;
wire    grp_atax_node1_fu_234_grp_fu_343_p_ce;
wire    grp_atax_node0_fu_251_ap_start;
wire    grp_atax_node0_fu_251_ap_done;
wire    grp_atax_node0_fu_251_ap_idle;
wire    grp_atax_node0_fu_251_ap_ready;
wire   [5:0] grp_atax_node0_fu_251_v0_address0;
wire    grp_atax_node0_fu_251_v0_ce0;
wire   [5:0] grp_atax_node0_fu_251_v0_address1;
wire    grp_atax_node0_fu_251_v0_ce1;
wire   [10:0] grp_atax_node0_fu_251_v113_0_address0;
wire    grp_atax_node0_fu_251_v113_0_ce0;
wire   [10:0] grp_atax_node0_fu_251_v113_0_address1;
wire    grp_atax_node0_fu_251_v113_0_ce1;
wire   [10:0] grp_atax_node0_fu_251_v113_1_address0;
wire    grp_atax_node0_fu_251_v113_1_ce0;
wire   [10:0] grp_atax_node0_fu_251_v113_1_address1;
wire    grp_atax_node0_fu_251_v113_1_ce1;
wire   [5:0] grp_atax_node0_fu_251_v116_address0;
wire    grp_atax_node0_fu_251_v116_ce0;
wire    grp_atax_node0_fu_251_v116_we0;
wire   [31:0] grp_atax_node0_fu_251_v116_d0;
wire   [5:0] grp_atax_node0_fu_251_v116_address1;
wire    grp_atax_node0_fu_251_v116_ce1;
wire    grp_atax_node0_fu_251_v116_we1;
wire   [31:0] grp_atax_node0_fu_251_v116_d1;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_331_p_din0;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_331_p_din1;
wire   [1:0] grp_atax_node0_fu_251_grp_fu_331_p_opcode;
wire    grp_atax_node0_fu_251_grp_fu_331_p_ce;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_335_p_din0;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_335_p_din1;
wire   [1:0] grp_atax_node0_fu_251_grp_fu_335_p_opcode;
wire    grp_atax_node0_fu_251_grp_fu_335_p_ce;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_339_p_din0;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_339_p_din1;
wire    grp_atax_node0_fu_251_grp_fu_339_p_ce;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_343_p_din0;
wire   [31:0] grp_atax_node0_fu_251_grp_fu_343_p_din1;
wire    grp_atax_node0_fu_251_grp_fu_343_p_ce;
reg    grp_atax_node1_fu_234_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_atax_node0_fu_251_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln164_fu_270_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln164_1_fu_289_p1;
reg   [5:0] v1121_fu_76;
wire   [5:0] v112_fu_301_p2;
reg    v117_we0_local;
reg    v117_ce0_local;
reg    v123_6_we0_local;
wire   [2:0] trunc_ln164_fu_275_p1;
reg    v123_6_ce0_local;
reg    v123_5_we0_local;
reg    v123_5_ce0_local;
reg    v123_4_we0_local;
reg    v123_4_ce0_local;
reg    v123_3_we0_local;
reg    v123_3_ce0_local;
reg    v123_2_we0_local;
reg    v123_2_ce0_local;
reg    v123_1_we0_local;
reg    v123_1_ce0_local;
reg    v123_we0_local;
reg    v123_ce0_local;
reg    v123_7_we0_local;
reg    v123_7_ce0_local;
wire   [2:0] lshr_ln_fu_279_p4;
wire   [0:0] icmp_ln164_fu_307_p2;
wire   [31:0] grp_fu_331_p2;
reg   [31:0] grp_fu_331_p0;
reg   [31:0] grp_fu_331_p1;
reg    grp_fu_331_ce;
wire   [31:0] grp_fu_335_p2;
reg   [31:0] grp_fu_335_p0;
reg   [31:0] grp_fu_335_p1;
reg    grp_fu_335_ce;
wire   [31:0] grp_fu_339_p2;
reg   [31:0] grp_fu_339_p0;
reg   [31:0] grp_fu_339_p1;
reg    grp_fu_339_ce;
wire   [31:0] grp_fu_343_p2;
reg   [31:0] grp_fu_343_p0;
reg   [31:0] grp_fu_343_p1;
reg    grp_fu_343_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_atax_node1_fu_234_ap_start_reg = 1'b0;
#0 grp_atax_node0_fu_251_ap_start_reg = 1'b0;
#0 v1121_fu_76 = 6'd0;
end
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_address0),.ce0(v123_ce0),.we0(v123_we0_local),.d0(32'd0),.q0(v123_q0),.address1(grp_atax_node1_fu_234_v57_0_address1),.ce1(v123_ce1),.q1(v123_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_1_address0),.ce0(v123_1_ce0),.we0(v123_1_we0_local),.d0(32'd0),.q0(v123_1_q0),.address1(grp_atax_node1_fu_234_v57_1_address1),.ce1(v123_1_ce1),.q1(v123_1_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_2_address0),.ce0(v123_2_ce0),.we0(v123_2_we0_local),.d0(32'd0),.q0(v123_2_q0),.address1(grp_atax_node1_fu_234_v57_2_address1),.ce1(v123_2_ce1),.q1(v123_2_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_3_address0),.ce0(v123_3_ce0),.we0(v123_3_we0_local),.d0(32'd0),.q0(v123_3_q0),.address1(grp_atax_node1_fu_234_v57_3_address1),.ce1(v123_3_ce1),.q1(v123_3_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_4_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_4_address0),.ce0(v123_4_ce0),.we0(v123_4_we0_local),.d0(32'd0),.q0(v123_4_q0),.address1(grp_atax_node1_fu_234_v57_4_address1),.ce1(v123_4_ce1),.q1(v123_4_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_5_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_5_address0),.ce0(v123_5_ce0),.we0(v123_5_we0_local),.d0(32'd0),.q0(v123_5_q0),.address1(grp_atax_node1_fu_234_v57_5_address1),.ce1(v123_5_ce1),.q1(v123_5_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_6_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_6_address0),.ce0(v123_6_ce0),.we0(v123_6_we0_local),.d0(32'd0),.q0(v123_6_q0),.address1(grp_atax_node1_fu_234_v57_6_address1),.ce1(v123_6_ce1),.q1(v123_6_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v123_7_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_7_address0),.ce0(v123_7_ce0),.we0(v123_7_we0_local),.d0(32'd0),.q0(v123_7_q0),.address1(grp_atax_node1_fu_234_v57_7_address1),.ce1(v123_7_ce1),.q1(v123_7_q1));
atax_v124_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v124_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_address0),.ce0(v124_ce0),.we0(v124_we0),.d0(grp_atax_node1_fu_234_v58_d0),.q0(v124_q0),.address1(v124_address1),.ce1(v124_ce1),.q1(v124_q1),.address2(grp_atax_node1_fu_234_v58_address2),.ce2(v124_ce2),.q2(v124_q2),.address3(grp_atax_node1_fu_234_v58_address3),.ce3(v124_ce3),.q3(v124_q3),.address4(grp_atax_node1_fu_234_v58_address4),.ce4(v124_ce4),.q4(v124_q4),.address5(grp_atax_node1_fu_234_v58_address5),.ce5(v124_ce5),.q5(v124_q5),.address6(grp_atax_node1_fu_234_v58_address6),.ce6(v124_ce6),.q6(v124_q6),.address7(grp_atax_node1_fu_234_v58_address7),.ce7(v124_ce7),.q7(v124_q7),.address8(grp_atax_node1_fu_234_v58_address8),.ce8(v124_ce8),.q8(v124_q8),.address9(grp_atax_node1_fu_234_v58_address9),.ce9(v124_ce9),.q9(v124_q9),.address10(grp_atax_node1_fu_234_v58_address10),.ce10(v124_ce10),.q10(v124_q10),.address11(grp_atax_node1_fu_234_v58_address11),.ce11(v124_ce11),.q11(v124_q11),.address12(grp_atax_node1_fu_234_v58_address12),.ce12(v124_ce12),.q12(v124_q12),.address13(grp_atax_node1_fu_234_v58_address13),.ce13(v124_ce13),.q13(v124_q13),.address14(grp_atax_node1_fu_234_v58_address14),.ce14(v124_ce14),.q14(v124_q14),.address15(grp_atax_node1_fu_234_v58_address15),.ce15(v124_ce15),.q15(v124_q15),.address16(grp_atax_node1_fu_234_v58_address16),.ce16(v124_ce16),.q16(v124_q16));
atax_atax_node1 grp_atax_node1_fu_234(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_fu_234_ap_start),.ap_done(grp_atax_node1_fu_234_ap_done),.ap_idle(grp_atax_node1_fu_234_ap_idle),.ap_ready(grp_atax_node1_fu_234_ap_ready),.v114_address0(grp_atax_node1_fu_234_v114_address0),.v114_ce0(grp_atax_node1_fu_234_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_fu_234_v114_address1),.v114_ce1(grp_atax_node1_fu_234_v114_ce1),.v114_q1(v114_q1),.v115_address0(grp_atax_node1_fu_234_v115_address0),.v115_ce0(grp_atax_node1_fu_234_v115_ce0),.v115_q0(v115_q0),.v115_address1(grp_atax_node1_fu_234_v115_address1),.v115_ce1(grp_atax_node1_fu_234_v115_ce1),.v115_q1(v115_q1),.v57_0_address0(grp_atax_node1_fu_234_v57_0_address0),.v57_0_ce0(grp_atax_node1_fu_234_v57_0_ce0),.v57_0_q0(v123_q0),.v57_0_address1(grp_atax_node1_fu_234_v57_0_address1),.v57_0_ce1(grp_atax_node1_fu_234_v57_0_ce1),.v57_0_q1(v123_q1),.v57_1_address0(grp_atax_node1_fu_234_v57_1_address0),.v57_1_ce0(grp_atax_node1_fu_234_v57_1_ce0),.v57_1_q0(v123_1_q0),.v57_1_address1(grp_atax_node1_fu_234_v57_1_address1),.v57_1_ce1(grp_atax_node1_fu_234_v57_1_ce1),.v57_1_q1(v123_1_q1),.v57_2_address0(grp_atax_node1_fu_234_v57_2_address0),.v57_2_ce0(grp_atax_node1_fu_234_v57_2_ce0),.v57_2_q0(v123_2_q0),.v57_2_address1(grp_atax_node1_fu_234_v57_2_address1),.v57_2_ce1(grp_atax_node1_fu_234_v57_2_ce1),.v57_2_q1(v123_2_q1),.v57_3_address0(grp_atax_node1_fu_234_v57_3_address0),.v57_3_ce0(grp_atax_node1_fu_234_v57_3_ce0),.v57_3_q0(v123_3_q0),.v57_3_address1(grp_atax_node1_fu_234_v57_3_address1),.v57_3_ce1(grp_atax_node1_fu_234_v57_3_ce1),.v57_3_q1(v123_3_q1),.v57_4_address0(grp_atax_node1_fu_234_v57_4_address0),.v57_4_ce0(grp_atax_node1_fu_234_v57_4_ce0),.v57_4_q0(v123_4_q0),.v57_4_address1(grp_atax_node1_fu_234_v57_4_address1),.v57_4_ce1(grp_atax_node1_fu_234_v57_4_ce1),.v57_4_q1(v123_4_q1),.v57_5_address0(grp_atax_node1_fu_234_v57_5_address0),.v57_5_ce0(grp_atax_node1_fu_234_v57_5_ce0),.v57_5_q0(v123_5_q0),.v57_5_address1(grp_atax_node1_fu_234_v57_5_address1),.v57_5_ce1(grp_atax_node1_fu_234_v57_5_ce1),.v57_5_q1(v123_5_q1),.v57_6_address0(grp_atax_node1_fu_234_v57_6_address0),.v57_6_ce0(grp_atax_node1_fu_234_v57_6_ce0),.v57_6_q0(v123_6_q0),.v57_6_address1(grp_atax_node1_fu_234_v57_6_address1),.v57_6_ce1(grp_atax_node1_fu_234_v57_6_ce1),.v57_6_q1(v123_6_q1),.v57_7_address0(grp_atax_node1_fu_234_v57_7_address0),.v57_7_ce0(grp_atax_node1_fu_234_v57_7_ce0),.v57_7_q0(v123_7_q0),.v57_7_address1(grp_atax_node1_fu_234_v57_7_address1),.v57_7_ce1(grp_atax_node1_fu_234_v57_7_ce1),.v57_7_q1(v123_7_q1),.v58_address0(grp_atax_node1_fu_234_v58_address0),.v58_ce0(grp_atax_node1_fu_234_v58_ce0),.v58_we0(grp_atax_node1_fu_234_v58_we0),.v58_d0(grp_atax_node1_fu_234_v58_d0),.v58_q0(v124_q0),.v58_address1(grp_atax_node1_fu_234_v58_address1),.v58_ce1(grp_atax_node1_fu_234_v58_ce1),.v58_q1(v124_q1),.v58_address2(grp_atax_node1_fu_234_v58_address2),.v58_ce2(grp_atax_node1_fu_234_v58_ce2),.v58_q2(v124_q2),.v58_address3(grp_atax_node1_fu_234_v58_address3),.v58_ce3(grp_atax_node1_fu_234_v58_ce3),.v58_q3(v124_q3),.v58_address4(grp_atax_node1_fu_234_v58_address4),.v58_ce4(grp_atax_node1_fu_234_v58_ce4),.v58_q4(v124_q4),.v58_address5(grp_atax_node1_fu_234_v58_address5),.v58_ce5(grp_atax_node1_fu_234_v58_ce5),.v58_q5(v124_q5),.v58_address6(grp_atax_node1_fu_234_v58_address6),.v58_ce6(grp_atax_node1_fu_234_v58_ce6),.v58_q6(v124_q6),.v58_address7(grp_atax_node1_fu_234_v58_address7),.v58_ce7(grp_atax_node1_fu_234_v58_ce7),.v58_q7(v124_q7),.v58_address8(grp_atax_node1_fu_234_v58_address8),.v58_ce8(grp_atax_node1_fu_234_v58_ce8),.v58_q8(v124_q8),.v58_address9(grp_atax_node1_fu_234_v58_address9),.v58_ce9(grp_atax_node1_fu_234_v58_ce9),.v58_q9(v124_q9),.v58_address10(grp_atax_node1_fu_234_v58_address10),.v58_ce10(grp_atax_node1_fu_234_v58_ce10),.v58_q10(v124_q10),.v58_address11(grp_atax_node1_fu_234_v58_address11),.v58_ce11(grp_atax_node1_fu_234_v58_ce11),.v58_q11(v124_q11),.v58_address12(grp_atax_node1_fu_234_v58_address12),.v58_ce12(grp_atax_node1_fu_234_v58_ce12),.v58_q12(v124_q12),.v58_address13(grp_atax_node1_fu_234_v58_address13),.v58_ce13(grp_atax_node1_fu_234_v58_ce13),.v58_q13(v124_q13),.v58_address14(grp_atax_node1_fu_234_v58_address14),.v58_ce14(grp_atax_node1_fu_234_v58_ce14),.v58_q14(v124_q14),.v58_address15(grp_atax_node1_fu_234_v58_address15),.v58_ce15(grp_atax_node1_fu_234_v58_ce15),.v58_q15(v124_q15),.v58_address16(grp_atax_node1_fu_234_v58_address16),.v58_ce16(grp_atax_node1_fu_234_v58_ce16),.v58_q16(v124_q16),.grp_fu_331_p_din0(grp_atax_node1_fu_234_grp_fu_331_p_din0),.grp_fu_331_p_din1(grp_atax_node1_fu_234_grp_fu_331_p_din1),.grp_fu_331_p_opcode(grp_atax_node1_fu_234_grp_fu_331_p_opcode),.grp_fu_331_p_dout0(grp_fu_331_p2),.grp_fu_331_p_ce(grp_atax_node1_fu_234_grp_fu_331_p_ce),.grp_fu_335_p_din0(grp_atax_node1_fu_234_grp_fu_335_p_din0),.grp_fu_335_p_din1(grp_atax_node1_fu_234_grp_fu_335_p_din1),.grp_fu_335_p_opcode(grp_atax_node1_fu_234_grp_fu_335_p_opcode),.grp_fu_335_p_dout0(grp_fu_335_p2),.grp_fu_335_p_ce(grp_atax_node1_fu_234_grp_fu_335_p_ce),.grp_fu_339_p_din0(grp_atax_node1_fu_234_grp_fu_339_p_din0),.grp_fu_339_p_din1(grp_atax_node1_fu_234_grp_fu_339_p_din1),.grp_fu_339_p_dout0(grp_fu_339_p2),.grp_fu_339_p_ce(grp_atax_node1_fu_234_grp_fu_339_p_ce),.grp_fu_343_p_din0(grp_atax_node1_fu_234_grp_fu_343_p_din0),.grp_fu_343_p_din1(grp_atax_node1_fu_234_grp_fu_343_p_din1),.grp_fu_343_p_dout0(grp_fu_343_p2),.grp_fu_343_p_ce(grp_atax_node1_fu_234_grp_fu_343_p_ce));
atax_atax_node0 grp_atax_node0_fu_251(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_fu_251_ap_start),.ap_done(grp_atax_node0_fu_251_ap_done),.ap_idle(grp_atax_node0_fu_251_ap_idle),.ap_ready(grp_atax_node0_fu_251_ap_ready),.v0_address0(grp_atax_node0_fu_251_v0_address0),.v0_ce0(grp_atax_node0_fu_251_v0_ce0),.v0_q0(v124_q0),.v0_address1(grp_atax_node0_fu_251_v0_address1),.v0_ce1(grp_atax_node0_fu_251_v0_ce1),.v0_q1(v124_q1),.v113_0_address0(grp_atax_node0_fu_251_v113_0_address0),.v113_0_ce0(grp_atax_node0_fu_251_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_fu_251_v113_0_address1),.v113_0_ce1(grp_atax_node0_fu_251_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_fu_251_v113_1_address0),.v113_1_ce0(grp_atax_node0_fu_251_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_fu_251_v113_1_address1),.v113_1_ce1(grp_atax_node0_fu_251_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_address0(grp_atax_node0_fu_251_v116_address0),.v116_ce0(grp_atax_node0_fu_251_v116_ce0),.v116_we0(grp_atax_node0_fu_251_v116_we0),.v116_d0(grp_atax_node0_fu_251_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_fu_251_v116_address1),.v116_ce1(grp_atax_node0_fu_251_v116_ce1),.v116_we1(grp_atax_node0_fu_251_v116_we1),.v116_d1(grp_atax_node0_fu_251_v116_d1),.v116_q1(v116_q1),.grp_fu_331_p_din0(grp_atax_node0_fu_251_grp_fu_331_p_din0),.grp_fu_331_p_din1(grp_atax_node0_fu_251_grp_fu_331_p_din1),.grp_fu_331_p_opcode(grp_atax_node0_fu_251_grp_fu_331_p_opcode),.grp_fu_331_p_dout0(grp_fu_331_p2),.grp_fu_331_p_ce(grp_atax_node0_fu_251_grp_fu_331_p_ce),.grp_fu_335_p_din0(grp_atax_node0_fu_251_grp_fu_335_p_din0),.grp_fu_335_p_din1(grp_atax_node0_fu_251_grp_fu_335_p_din1),.grp_fu_335_p_opcode(grp_atax_node0_fu_251_grp_fu_335_p_opcode),.grp_fu_335_p_dout0(grp_fu_335_p2),.grp_fu_335_p_ce(grp_atax_node0_fu_251_grp_fu_335_p_ce),.grp_fu_339_p_din0(grp_atax_node0_fu_251_grp_fu_339_p_din0),.grp_fu_339_p_din1(grp_atax_node0_fu_251_grp_fu_339_p_din1),.grp_fu_339_p_dout0(grp_fu_339_p2),.grp_fu_339_p_ce(grp_atax_node0_fu_251_grp_fu_339_p_ce),.grp_fu_343_p_din0(grp_atax_node0_fu_251_grp_fu_343_p_din0),.grp_fu_343_p_din1(grp_atax_node0_fu_251_grp_fu_343_p_din1),.grp_fu_343_p_dout0(grp_fu_343_p2),.grp_fu_343_p_ce(grp_atax_node0_fu_251_grp_fu_343_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U361(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_331_p0),.din1(grp_fu_331_p1),.ce(grp_fu_331_ce),.dout(grp_fu_331_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U362(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_335_p0),.din1(grp_fu_335_p1),.ce(grp_fu_335_ce),.dout(grp_fu_335_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U363(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_339_p0),.din1(grp_fu_339_p1),.ce(grp_fu_339_ce),.dout(grp_fu_339_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_343_p0),.din1(grp_fu_343_p1),.ce(grp_fu_343_ce),.dout(grp_fu_343_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_fu_251_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_fu_251_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_fu_251_ap_ready == 1'b1)) begin
            grp_atax_node0_fu_251_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_fu_234_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node1_fu_234_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_fu_234_ap_ready == 1'b1)) begin
            grp_atax_node1_fu_234_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v1121_fu_76 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v1121_fu_76 <= v112_fu_301_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_fu_234_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_fu_251_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_fu_251_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
    if (((grp_atax_node0_fu_251_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_331_ce = grp_atax_node0_fu_251_grp_fu_331_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_331_ce = grp_atax_node1_fu_234_grp_fu_331_p_ce;
    end else begin
        grp_fu_331_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_331_p0 = grp_atax_node0_fu_251_grp_fu_331_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_331_p0 = grp_atax_node1_fu_234_grp_fu_331_p_din0;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_331_p1 = grp_atax_node0_fu_251_grp_fu_331_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_331_p1 = grp_atax_node1_fu_234_grp_fu_331_p_din1;
    end else begin
        grp_fu_331_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_335_ce = grp_atax_node0_fu_251_grp_fu_335_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_335_ce = grp_atax_node1_fu_234_grp_fu_335_p_ce;
    end else begin
        grp_fu_335_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_335_p0 = grp_atax_node0_fu_251_grp_fu_335_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_335_p0 = grp_atax_node1_fu_234_grp_fu_335_p_din0;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_335_p1 = grp_atax_node0_fu_251_grp_fu_335_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_335_p1 = grp_atax_node1_fu_234_grp_fu_335_p_din1;
    end else begin
        grp_fu_335_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_339_ce = grp_atax_node0_fu_251_grp_fu_339_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_339_ce = grp_atax_node1_fu_234_grp_fu_339_p_ce;
    end else begin
        grp_fu_339_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_339_p0 = grp_atax_node0_fu_251_grp_fu_339_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_339_p0 = grp_atax_node1_fu_234_grp_fu_339_p_din0;
    end else begin
        grp_fu_339_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_339_p1 = grp_atax_node0_fu_251_grp_fu_339_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_339_p1 = grp_atax_node1_fu_234_grp_fu_339_p_din1;
    end else begin
        grp_fu_339_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_343_ce = grp_atax_node0_fu_251_grp_fu_343_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_343_ce = grp_atax_node1_fu_234_grp_fu_343_p_ce;
    end else begin
        grp_fu_343_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_343_p0 = grp_atax_node0_fu_251_grp_fu_343_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_343_p0 = grp_atax_node1_fu_234_grp_fu_343_p_din0;
    end else begin
        grp_fu_343_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_343_p1 = grp_atax_node0_fu_251_grp_fu_343_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_343_p1 = grp_atax_node1_fu_234_grp_fu_343_p_din1;
    end else begin
        grp_fu_343_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_ce0_local = 1'b1;
    end else begin
        v117_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_we0_local = 1'b1;
    end else begin
        v117_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_address0 = grp_atax_node1_fu_234_v57_1_address0;
    end else begin
        v123_1_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce0 = grp_atax_node1_fu_234_v57_1_ce0;
    end else begin
        v123_1_ce0 = v123_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_ce0_local = 1'b1;
    end else begin
        v123_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_1_ce1 = grp_atax_node1_fu_234_v57_1_ce1;
    end else begin
        v123_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_1_we0_local = 1'b1;
    end else begin
        v123_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_address0 = grp_atax_node1_fu_234_v57_2_address0;
    end else begin
        v123_2_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_ce0 = grp_atax_node1_fu_234_v57_2_ce0;
    end else begin
        v123_2_ce0 = v123_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_2_ce0_local = 1'b1;
    end else begin
        v123_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_2_ce1 = grp_atax_node1_fu_234_v57_2_ce1;
    end else begin
        v123_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd2) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_2_we0_local = 1'b1;
    end else begin
        v123_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_address0 = grp_atax_node1_fu_234_v57_3_address0;
    end else begin
        v123_3_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_ce0 = grp_atax_node1_fu_234_v57_3_ce0;
    end else begin
        v123_3_ce0 = v123_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_3_ce0_local = 1'b1;
    end else begin
        v123_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_3_ce1 = grp_atax_node1_fu_234_v57_3_ce1;
    end else begin
        v123_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd3) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_3_we0_local = 1'b1;
    end else begin
        v123_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_address0 = grp_atax_node1_fu_234_v57_4_address0;
    end else begin
        v123_4_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_ce0 = grp_atax_node1_fu_234_v57_4_ce0;
    end else begin
        v123_4_ce0 = v123_4_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_4_ce0_local = 1'b1;
    end else begin
        v123_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_4_ce1 = grp_atax_node1_fu_234_v57_4_ce1;
    end else begin
        v123_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd4) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_4_we0_local = 1'b1;
    end else begin
        v123_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_address0 = grp_atax_node1_fu_234_v57_5_address0;
    end else begin
        v123_5_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_ce0 = grp_atax_node1_fu_234_v57_5_ce0;
    end else begin
        v123_5_ce0 = v123_5_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_5_ce0_local = 1'b1;
    end else begin
        v123_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_5_ce1 = grp_atax_node1_fu_234_v57_5_ce1;
    end else begin
        v123_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd5) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_5_we0_local = 1'b1;
    end else begin
        v123_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_address0 = grp_atax_node1_fu_234_v57_6_address0;
    end else begin
        v123_6_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_ce0 = grp_atax_node1_fu_234_v57_6_ce0;
    end else begin
        v123_6_ce0 = v123_6_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_6_ce0_local = 1'b1;
    end else begin
        v123_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_6_ce1 = grp_atax_node1_fu_234_v57_6_ce1;
    end else begin
        v123_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd6) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_6_we0_local = 1'b1;
    end else begin
        v123_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_address0 = grp_atax_node1_fu_234_v57_7_address0;
    end else begin
        v123_7_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_ce0 = grp_atax_node1_fu_234_v57_7_ce0;
    end else begin
        v123_7_ce0 = v123_7_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_7_ce0_local = 1'b1;
    end else begin
        v123_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_7_ce1 = grp_atax_node1_fu_234_v57_7_ce1;
    end else begin
        v123_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd7) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_7_we0_local = 1'b1;
    end else begin
        v123_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_address0 = grp_atax_node1_fu_234_v57_0_address0;
    end else begin
        v123_address0 = zext_ln164_1_fu_289_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce0 = grp_atax_node1_fu_234_v57_0_ce0;
    end else begin
        v123_ce0 = v123_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_ce0_local = 1'b1;
    end else begin
        v123_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v123_ce1 = grp_atax_node1_fu_234_v57_0_ce1;
    end else begin
        v123_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln164_fu_275_p1 == 3'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v123_we0_local = 1'b1;
    end else begin
        v123_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_address0 = grp_atax_node0_fu_251_v0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_address0 = grp_atax_node1_fu_234_v58_address0;
    end else begin
        v124_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_address1 = grp_atax_node0_fu_251_v0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_address1 = grp_atax_node1_fu_234_v58_address1;
    end else begin
        v124_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_ce0 = grp_atax_node0_fu_251_v0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce0 = grp_atax_node1_fu_234_v58_ce0;
    end else begin
        v124_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v124_ce1 = grp_atax_node0_fu_251_v0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce1 = grp_atax_node1_fu_234_v58_ce1;
    end else begin
        v124_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce10 = grp_atax_node1_fu_234_v58_ce10;
    end else begin
        v124_ce10 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce11 = grp_atax_node1_fu_234_v58_ce11;
    end else begin
        v124_ce11 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce12 = grp_atax_node1_fu_234_v58_ce12;
    end else begin
        v124_ce12 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce13 = grp_atax_node1_fu_234_v58_ce13;
    end else begin
        v124_ce13 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce14 = grp_atax_node1_fu_234_v58_ce14;
    end else begin
        v124_ce14 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce15 = grp_atax_node1_fu_234_v58_ce15;
    end else begin
        v124_ce15 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce16 = grp_atax_node1_fu_234_v58_ce16;
    end else begin
        v124_ce16 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce2 = grp_atax_node1_fu_234_v58_ce2;
    end else begin
        v124_ce2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce3 = grp_atax_node1_fu_234_v58_ce3;
    end else begin
        v124_ce3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce4 = grp_atax_node1_fu_234_v58_ce4;
    end else begin
        v124_ce4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce5 = grp_atax_node1_fu_234_v58_ce5;
    end else begin
        v124_ce5 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce6 = grp_atax_node1_fu_234_v58_ce6;
    end else begin
        v124_ce6 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce7 = grp_atax_node1_fu_234_v58_ce7;
    end else begin
        v124_ce7 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce8 = grp_atax_node1_fu_234_v58_ce8;
    end else begin
        v124_ce8 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_ce9 = grp_atax_node1_fu_234_v58_ce9;
    end else begin
        v124_ce9 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v124_we0 = grp_atax_node1_fu_234_v58_we0;
    end else begin
        v124_we0 = 1'b0;
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
            if (((icmp_ln164_fu_307_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_node1_fu_234_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_fu_251_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign grp_atax_node0_fu_251_ap_start = grp_atax_node0_fu_251_ap_start_reg;
assign grp_atax_node1_fu_234_ap_start = grp_atax_node1_fu_234_ap_start_reg;
assign icmp_ln164_fu_307_p2 = ((v1121_fu_76 == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln_fu_279_p4 = {{v1121_fu_76[5:3]}};
assign trunc_ln164_fu_275_p1 = v1121_fu_76[2:0];
assign v112_fu_301_p2 = (v1121_fu_76 + 6'd1);
assign v113_0_address0 = grp_atax_node0_fu_251_v113_0_address0;
assign v113_0_address1 = grp_atax_node0_fu_251_v113_0_address1;
assign v113_0_ce0 = grp_atax_node0_fu_251_v113_0_ce0;
assign v113_0_ce1 = grp_atax_node0_fu_251_v113_0_ce1;
assign v113_1_address0 = grp_atax_node0_fu_251_v113_1_address0;
assign v113_1_address1 = grp_atax_node0_fu_251_v113_1_address1;
assign v113_1_ce0 = grp_atax_node0_fu_251_v113_1_ce0;
assign v113_1_ce1 = grp_atax_node0_fu_251_v113_1_ce1;
assign v114_address0 = grp_atax_node1_fu_234_v114_address0;
assign v114_address1 = grp_atax_node1_fu_234_v114_address1;
assign v114_ce0 = grp_atax_node1_fu_234_v114_ce0;
assign v114_ce1 = grp_atax_node1_fu_234_v114_ce1;
assign v115_address0 = grp_atax_node1_fu_234_v115_address0;
assign v115_address1 = grp_atax_node1_fu_234_v115_address1;
assign v115_ce0 = grp_atax_node1_fu_234_v115_ce0;
assign v115_ce1 = grp_atax_node1_fu_234_v115_ce1;
assign v116_address0 = grp_atax_node0_fu_251_v116_address0;
assign v116_address1 = grp_atax_node0_fu_251_v116_address1;
assign v116_ce0 = grp_atax_node0_fu_251_v116_ce0;
assign v116_ce1 = grp_atax_node0_fu_251_v116_ce1;
assign v116_d0 = grp_atax_node0_fu_251_v116_d0;
assign v116_d1 = grp_atax_node0_fu_251_v116_d1;
assign v116_we0 = grp_atax_node0_fu_251_v116_we0;
assign v116_we1 = grp_atax_node0_fu_251_v116_we1;
assign v117_address0 = zext_ln164_fu_270_p1;
assign v117_ce0 = v117_ce0_local;
assign v117_d0 = 32'd0;
assign v117_we0 = v117_we0_local;
assign zext_ln164_1_fu_289_p1 = lshr_ln_fu_279_p4;
assign zext_ln164_fu_270_p1 = v1121_fu_76;
endmodule 