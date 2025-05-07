module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v114_address0,v114_ce0,v114_q0,v114_address1,v114_ce1,v114_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v116_address0,v116_ce0,v116_we0,v116_d0,v116_q0,v116_address1,v116_ce1,v116_we1,v116_d1,v116_q1,v117_address0,v117_ce0,v117_we0,v117_d0,v117_address1,v117_ce1,v117_we1,v117_d1); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [11:0] v114_address0;
output   v114_ce0;
input  [31:0] v114_q0;
output  [11:0] v114_address1;
output   v114_ce1;
input  [31:0] v114_q1;
output  [4:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [4:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
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
output  [5:0] v117_address1;
output   v117_ce1;
output   v117_we1;
output  [31:0] v117_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] tmp_s_fu_335_p4;
reg   [3:0] tmp_s_reg_505;
wire    ap_CS_fsm_state2;
reg   [2:0] tmp_186_reg_511;
reg   [0:0] tmp_reg_521;
reg   [0:0] tmp_18_reg_527;
reg   [4:0] v123_address0;
reg    v123_ce0;
wire   [31:0] v123_q0;
reg   [4:0] v123_address1;
reg    v123_ce1;
wire   [31:0] v123_q1;
reg   [4:0] v123_1_address0;
reg    v123_1_ce0;
wire   [31:0] v123_1_q0;
reg   [4:0] v123_1_address1;
reg    v123_1_ce1;
wire   [31:0] v123_1_q1;
reg   [4:0] v124_address0;
reg    v124_ce0;
reg    v124_we0;
wire   [31:0] v124_q0;
reg    v124_ce1;
reg    v124_we1;
wire   [31:0] v124_q1;
reg   [4:0] v124_1_address0;
reg    v124_1_ce0;
reg    v124_1_we0;
wire   [31:0] v124_1_q0;
reg    v124_1_ce1;
reg    v124_1_we1;
wire   [31:0] v124_1_q1;
wire    grp_atax_node1_fu_269_ap_start;
wire    grp_atax_node1_fu_269_ap_done;
wire    grp_atax_node1_fu_269_ap_idle;
wire    grp_atax_node1_fu_269_ap_ready;
wire   [11:0] grp_atax_node1_fu_269_v114_address0;
wire    grp_atax_node1_fu_269_v114_ce0;
wire   [11:0] grp_atax_node1_fu_269_v114_address1;
wire    grp_atax_node1_fu_269_v114_ce1;
wire   [4:0] grp_atax_node1_fu_269_v115_0_address0;
wire    grp_atax_node1_fu_269_v115_0_ce0;
wire   [4:0] grp_atax_node1_fu_269_v115_1_address0;
wire    grp_atax_node1_fu_269_v115_1_ce0;
wire   [4:0] grp_atax_node1_fu_269_v57_0_address0;
wire    grp_atax_node1_fu_269_v57_0_ce0;
wire   [4:0] grp_atax_node1_fu_269_v57_0_address1;
wire    grp_atax_node1_fu_269_v57_0_ce1;
wire   [4:0] grp_atax_node1_fu_269_v57_1_address0;
wire    grp_atax_node1_fu_269_v57_1_ce0;
wire   [4:0] grp_atax_node1_fu_269_v57_1_address1;
wire    grp_atax_node1_fu_269_v57_1_ce1;
wire   [4:0] grp_atax_node1_fu_269_v58_0_address0;
wire    grp_atax_node1_fu_269_v58_0_ce0;
wire    grp_atax_node1_fu_269_v58_0_we0;
wire   [31:0] grp_atax_node1_fu_269_v58_0_d0;
wire   [4:0] grp_atax_node1_fu_269_v58_0_address1;
wire    grp_atax_node1_fu_269_v58_0_ce1;
wire    grp_atax_node1_fu_269_v58_0_we1;
wire   [31:0] grp_atax_node1_fu_269_v58_0_d1;
wire   [4:0] grp_atax_node1_fu_269_v58_1_address0;
wire    grp_atax_node1_fu_269_v58_1_ce0;
wire    grp_atax_node1_fu_269_v58_1_we0;
wire   [31:0] grp_atax_node1_fu_269_v58_1_d0;
wire   [4:0] grp_atax_node1_fu_269_v58_1_address1;
wire    grp_atax_node1_fu_269_v58_1_ce1;
wire    grp_atax_node1_fu_269_v58_1_we1;
wire   [31:0] grp_atax_node1_fu_269_v58_1_d1;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_531_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_531_p_din1;
wire   [1:0] grp_atax_node1_fu_269_grp_fu_531_p_opcode;
wire    grp_atax_node1_fu_269_grp_fu_531_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_535_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_535_p_din1;
wire   [1:0] grp_atax_node1_fu_269_grp_fu_535_p_opcode;
wire    grp_atax_node1_fu_269_grp_fu_535_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_539_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_539_p_din1;
wire    grp_atax_node1_fu_269_grp_fu_539_p_ce;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_543_p_din0;
wire   [31:0] grp_atax_node1_fu_269_grp_fu_543_p_din1;
wire    grp_atax_node1_fu_269_grp_fu_543_p_ce;
wire    grp_atax_node0_fu_283_ap_start;
wire    grp_atax_node0_fu_283_ap_done;
wire    grp_atax_node0_fu_283_ap_idle;
wire    grp_atax_node0_fu_283_ap_ready;
wire   [4:0] grp_atax_node0_fu_283_v0_0_address0;
wire    grp_atax_node0_fu_283_v0_0_ce0;
wire   [4:0] grp_atax_node0_fu_283_v0_1_address0;
wire    grp_atax_node0_fu_283_v0_1_ce0;
wire   [11:0] grp_atax_node0_fu_283_v113_address0;
wire    grp_atax_node0_fu_283_v113_ce0;
wire   [11:0] grp_atax_node0_fu_283_v113_address1;
wire    grp_atax_node0_fu_283_v113_ce1;
wire   [5:0] grp_atax_node0_fu_283_v116_address0;
wire    grp_atax_node0_fu_283_v116_ce0;
wire    grp_atax_node0_fu_283_v116_we0;
wire   [31:0] grp_atax_node0_fu_283_v116_d0;
wire   [5:0] grp_atax_node0_fu_283_v116_address1;
wire    grp_atax_node0_fu_283_v116_ce1;
wire    grp_atax_node0_fu_283_v116_we1;
wire   [31:0] grp_atax_node0_fu_283_v116_d1;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_531_p_din0;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_531_p_din1;
wire   [1:0] grp_atax_node0_fu_283_grp_fu_531_p_opcode;
wire    grp_atax_node0_fu_283_grp_fu_531_p_ce;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_535_p_din0;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_535_p_din1;
wire   [1:0] grp_atax_node0_fu_283_grp_fu_535_p_opcode;
wire    grp_atax_node0_fu_283_grp_fu_535_p_ce;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_539_p_din0;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_539_p_din1;
wire    grp_atax_node0_fu_283_grp_fu_539_p_ce;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_543_p_din0;
wire   [31:0] grp_atax_node0_fu_283_grp_fu_543_p_din1;
wire    grp_atax_node0_fu_283_grp_fu_543_p_ce;
reg    grp_atax_node1_fu_269_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_atax_node0_fu_283_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln164_fu_301_p1;
wire   [63:0] zext_ln164_1_fu_316_p1;
wire   [63:0] zext_ln165_fu_330_p1;
wire   [63:0] zext_ln165_2_fu_353_p1;
wire   [63:0] zext_ln165_1_fu_403_p1;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln165_3_fu_415_p1;
wire   [63:0] zext_ln165_5_fu_428_p1;
wire   [63:0] zext_ln165_8_fu_441_p1;
wire   [63:0] zext_ln165_4_fu_454_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln165_6_fu_469_p1;
wire   [63:0] zext_ln165_7_fu_481_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln165_9_fu_493_p1;
reg   [6:0] v1121_fu_96;
wire   [6:0] v112_fu_377_p2;
reg    v117_we1_local;
reg    v117_ce1_local;
reg   [5:0] v117_address1_local;
reg    v117_we0_local;
reg    v117_ce0_local;
reg   [5:0] v117_address0_local;
reg    v123_we1_local;
reg    v123_ce1_local;
reg   [4:0] v123_address1_local;
reg    v123_we0_local;
reg    v123_ce0_local;
reg   [4:0] v123_address0_local;
reg    v123_1_we1_local;
reg    v123_1_ce1_local;
reg   [4:0] v123_1_address1_local;
reg    v123_1_we0_local;
reg    v123_1_ce0_local;
reg   [4:0] v123_1_address0_local;
wire   [4:0] lshr_ln_fu_306_p4;
wire   [5:0] or_ln_fu_322_p3;
wire   [4:0] or_ln1_fu_345_p3;
wire   [5:0] or_ln164_1_fu_396_p3;
wire   [5:0] or_ln164_2_fu_408_p3;
wire   [4:0] or_ln165_1_fu_420_p4;
wire   [4:0] or_ln165_2_fu_434_p3;
wire   [5:0] or_ln164_3_fu_447_p3;
wire   [5:0] or_ln164_4_fu_459_p5;
wire   [5:0] or_ln164_5_fu_474_p3;
wire   [5:0] or_ln164_6_fu_486_p3;
wire   [31:0] grp_fu_531_p2;
reg   [31:0] grp_fu_531_p0;
reg   [31:0] grp_fu_531_p1;
reg    grp_fu_531_ce;
wire   [31:0] grp_fu_535_p2;
reg   [31:0] grp_fu_535_p0;
reg   [31:0] grp_fu_535_p1;
reg    grp_fu_535_ce;
wire   [31:0] grp_fu_539_p2;
reg   [31:0] grp_fu_539_p0;
reg   [31:0] grp_fu_539_p1;
reg    grp_fu_539_ce;
wire   [31:0] grp_fu_543_p2;
reg   [31:0] grp_fu_543_p0;
reg   [31:0] grp_fu_543_p1;
reg    grp_fu_543_ce;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_atax_node1_fu_269_ap_start_reg = 1'b0;
#0 grp_atax_node0_fu_283_ap_start_reg = 1'b0;
#0 v1121_fu_96 = 7'd0;
end
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v123_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_address0),.ce0(v123_ce0),.we0(v123_we0_local),.d0(32'd0),.q0(v123_q0),.address1(v123_address1),.ce1(v123_ce1),.we1(v123_we1_local),.d1(32'd0),.q1(v123_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v123_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_1_address0),.ce0(v123_1_ce0),.we0(v123_1_we0_local),.d0(32'd0),.q0(v123_1_q0),.address1(v123_1_address1),.ce1(v123_1_ce1),.we1(v123_1_we1_local),.d1(32'd0),.q1(v123_1_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v124_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_address0),.ce0(v124_ce0),.we0(v124_we0),.d0(grp_atax_node1_fu_269_v58_0_d0),.q0(v124_q0),.address1(grp_atax_node1_fu_269_v58_0_address1),.ce1(v124_ce1),.we1(v124_we1),.d1(grp_atax_node1_fu_269_v58_0_d1),.q1(v124_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v124_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_1_address0),.ce0(v124_1_ce0),.we0(v124_1_we0),.d0(grp_atax_node1_fu_269_v58_1_d0),.q0(v124_1_q0),.address1(grp_atax_node1_fu_269_v58_1_address1),.ce1(v124_1_ce1),.we1(v124_1_we1),.d1(grp_atax_node1_fu_269_v58_1_d1),.q1(v124_1_q1));
atax_atax_node1 grp_atax_node1_fu_269(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_fu_269_ap_start),.ap_done(grp_atax_node1_fu_269_ap_done),.ap_idle(grp_atax_node1_fu_269_ap_idle),.ap_ready(grp_atax_node1_fu_269_ap_ready),.v114_address0(grp_atax_node1_fu_269_v114_address0),.v114_ce0(grp_atax_node1_fu_269_v114_ce0),.v114_q0(v114_q0),.v114_address1(grp_atax_node1_fu_269_v114_address1),.v114_ce1(grp_atax_node1_fu_269_v114_ce1),.v114_q1(v114_q1),.v115_0_address0(grp_atax_node1_fu_269_v115_0_address0),.v115_0_ce0(grp_atax_node1_fu_269_v115_0_ce0),.v115_0_q0(v115_0_q0),.v115_1_address0(grp_atax_node1_fu_269_v115_1_address0),.v115_1_ce0(grp_atax_node1_fu_269_v115_1_ce0),.v115_1_q0(v115_1_q0),.v57_0_address0(grp_atax_node1_fu_269_v57_0_address0),.v57_0_ce0(grp_atax_node1_fu_269_v57_0_ce0),.v57_0_q0(v123_q0),.v57_0_address1(grp_atax_node1_fu_269_v57_0_address1),.v57_0_ce1(grp_atax_node1_fu_269_v57_0_ce1),.v57_0_q1(v123_q1),.v57_1_address0(grp_atax_node1_fu_269_v57_1_address0),.v57_1_ce0(grp_atax_node1_fu_269_v57_1_ce0),.v57_1_q0(v123_1_q0),.v57_1_address1(grp_atax_node1_fu_269_v57_1_address1),.v57_1_ce1(grp_atax_node1_fu_269_v57_1_ce1),.v57_1_q1(v123_1_q1),.v58_0_address0(grp_atax_node1_fu_269_v58_0_address0),.v58_0_ce0(grp_atax_node1_fu_269_v58_0_ce0),.v58_0_we0(grp_atax_node1_fu_269_v58_0_we0),.v58_0_d0(grp_atax_node1_fu_269_v58_0_d0),.v58_0_q0(v124_q0),.v58_0_address1(grp_atax_node1_fu_269_v58_0_address1),.v58_0_ce1(grp_atax_node1_fu_269_v58_0_ce1),.v58_0_we1(grp_atax_node1_fu_269_v58_0_we1),.v58_0_d1(grp_atax_node1_fu_269_v58_0_d1),.v58_0_q1(v124_q1),.v58_1_address0(grp_atax_node1_fu_269_v58_1_address0),.v58_1_ce0(grp_atax_node1_fu_269_v58_1_ce0),.v58_1_we0(grp_atax_node1_fu_269_v58_1_we0),.v58_1_d0(grp_atax_node1_fu_269_v58_1_d0),.v58_1_q0(v124_1_q0),.v58_1_address1(grp_atax_node1_fu_269_v58_1_address1),.v58_1_ce1(grp_atax_node1_fu_269_v58_1_ce1),.v58_1_we1(grp_atax_node1_fu_269_v58_1_we1),.v58_1_d1(grp_atax_node1_fu_269_v58_1_d1),.v58_1_q1(v124_1_q1),.grp_fu_531_p_din0(grp_atax_node1_fu_269_grp_fu_531_p_din0),.grp_fu_531_p_din1(grp_atax_node1_fu_269_grp_fu_531_p_din1),.grp_fu_531_p_opcode(grp_atax_node1_fu_269_grp_fu_531_p_opcode),.grp_fu_531_p_dout0(grp_fu_531_p2),.grp_fu_531_p_ce(grp_atax_node1_fu_269_grp_fu_531_p_ce),.grp_fu_535_p_din0(grp_atax_node1_fu_269_grp_fu_535_p_din0),.grp_fu_535_p_din1(grp_atax_node1_fu_269_grp_fu_535_p_din1),.grp_fu_535_p_opcode(grp_atax_node1_fu_269_grp_fu_535_p_opcode),.grp_fu_535_p_dout0(grp_fu_535_p2),.grp_fu_535_p_ce(grp_atax_node1_fu_269_grp_fu_535_p_ce),.grp_fu_539_p_din0(grp_atax_node1_fu_269_grp_fu_539_p_din0),.grp_fu_539_p_din1(grp_atax_node1_fu_269_grp_fu_539_p_din1),.grp_fu_539_p_dout0(grp_fu_539_p2),.grp_fu_539_p_ce(grp_atax_node1_fu_269_grp_fu_539_p_ce),.grp_fu_543_p_din0(grp_atax_node1_fu_269_grp_fu_543_p_din0),.grp_fu_543_p_din1(grp_atax_node1_fu_269_grp_fu_543_p_din1),.grp_fu_543_p_dout0(grp_fu_543_p2),.grp_fu_543_p_ce(grp_atax_node1_fu_269_grp_fu_543_p_ce));
atax_atax_node0 grp_atax_node0_fu_283(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_fu_283_ap_start),.ap_done(grp_atax_node0_fu_283_ap_done),.ap_idle(grp_atax_node0_fu_283_ap_idle),.ap_ready(grp_atax_node0_fu_283_ap_ready),.v0_0_address0(grp_atax_node0_fu_283_v0_0_address0),.v0_0_ce0(grp_atax_node0_fu_283_v0_0_ce0),.v0_0_q0(v124_q0),.v0_1_address0(grp_atax_node0_fu_283_v0_1_address0),.v0_1_ce0(grp_atax_node0_fu_283_v0_1_ce0),.v0_1_q0(v124_1_q0),.v113_address0(grp_atax_node0_fu_283_v113_address0),.v113_ce0(grp_atax_node0_fu_283_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_fu_283_v113_address1),.v113_ce1(grp_atax_node0_fu_283_v113_ce1),.v113_q1(v113_q1),.v116_address0(grp_atax_node0_fu_283_v116_address0),.v116_ce0(grp_atax_node0_fu_283_v116_ce0),.v116_we0(grp_atax_node0_fu_283_v116_we0),.v116_d0(grp_atax_node0_fu_283_v116_d0),.v116_q0(v116_q0),.v116_address1(grp_atax_node0_fu_283_v116_address1),.v116_ce1(grp_atax_node0_fu_283_v116_ce1),.v116_we1(grp_atax_node0_fu_283_v116_we1),.v116_d1(grp_atax_node0_fu_283_v116_d1),.v116_q1(v116_q1),.grp_fu_531_p_din0(grp_atax_node0_fu_283_grp_fu_531_p_din0),.grp_fu_531_p_din1(grp_atax_node0_fu_283_grp_fu_531_p_din1),.grp_fu_531_p_opcode(grp_atax_node0_fu_283_grp_fu_531_p_opcode),.grp_fu_531_p_dout0(grp_fu_531_p2),.grp_fu_531_p_ce(grp_atax_node0_fu_283_grp_fu_531_p_ce),.grp_fu_535_p_din0(grp_atax_node0_fu_283_grp_fu_535_p_din0),.grp_fu_535_p_din1(grp_atax_node0_fu_283_grp_fu_535_p_din1),.grp_fu_535_p_opcode(grp_atax_node0_fu_283_grp_fu_535_p_opcode),.grp_fu_535_p_dout0(grp_fu_535_p2),.grp_fu_535_p_ce(grp_atax_node0_fu_283_grp_fu_535_p_ce),.grp_fu_539_p_din0(grp_atax_node0_fu_283_grp_fu_539_p_din0),.grp_fu_539_p_din1(grp_atax_node0_fu_283_grp_fu_539_p_din1),.grp_fu_539_p_dout0(grp_fu_539_p2),.grp_fu_539_p_ce(grp_atax_node0_fu_283_grp_fu_539_p_ce),.grp_fu_543_p_din0(grp_atax_node0_fu_283_grp_fu_543_p_din0),.grp_fu_543_p_din1(grp_atax_node0_fu_283_grp_fu_543_p_din1),.grp_fu_543_p_dout0(grp_fu_543_p2),.grp_fu_543_p_ce(grp_atax_node0_fu_283_grp_fu_543_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_531_p0),.din1(grp_fu_531_p1),.ce(grp_fu_531_ce),.dout(grp_fu_531_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_535_p0),.din1(grp_fu_535_p1),.ce(grp_fu_535_ce),.dout(grp_fu_535_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U234(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_539_p0),.din1(grp_fu_539_p1),.ce(grp_fu_539_ce),.dout(grp_fu_539_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U235(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_543_p0),.din1(grp_fu_543_p1),.ce(grp_fu_543_ce),.dout(grp_fu_543_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_fu_283_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_atax_node0_fu_283_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_fu_283_ap_ready == 1'b1)) begin
            grp_atax_node0_fu_283_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_fu_269_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_atax_node1_fu_269_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_fu_269_ap_ready == 1'b1)) begin
            grp_atax_node1_fu_269_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v1121_fu_96 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v1121_fu_96 <= v112_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_186_reg_511 <= {{v1121_fu_96[5:3]}};
        tmp_18_reg_527 <= v112_fu_377_p2[32'd6];
        tmp_reg_521 <= v1121_fu_96[32'd1];
        tmp_s_reg_505 <= {{v1121_fu_96[5:2]}};
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node1_fu_269_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_fu_283_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_fu_283_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_atax_node0_fu_283_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_531_ce = grp_atax_node0_fu_283_grp_fu_531_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_531_ce = grp_atax_node1_fu_269_grp_fu_531_p_ce;
    end else begin
        grp_fu_531_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_531_p0 = grp_atax_node0_fu_283_grp_fu_531_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_531_p0 = grp_atax_node1_fu_269_grp_fu_531_p_din0;
    end else begin
        grp_fu_531_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_531_p1 = grp_atax_node0_fu_283_grp_fu_531_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_531_p1 = grp_atax_node1_fu_269_grp_fu_531_p_din1;
    end else begin
        grp_fu_531_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_535_ce = grp_atax_node0_fu_283_grp_fu_535_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_535_ce = grp_atax_node1_fu_269_grp_fu_535_p_ce;
    end else begin
        grp_fu_535_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_535_p0 = grp_atax_node0_fu_283_grp_fu_535_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_535_p0 = grp_atax_node1_fu_269_grp_fu_535_p_din0;
    end else begin
        grp_fu_535_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_535_p1 = grp_atax_node0_fu_283_grp_fu_535_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_535_p1 = grp_atax_node1_fu_269_grp_fu_535_p_din1;
    end else begin
        grp_fu_535_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_539_ce = grp_atax_node0_fu_283_grp_fu_539_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_539_ce = grp_atax_node1_fu_269_grp_fu_539_p_ce;
    end else begin
        grp_fu_539_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_539_p0 = grp_atax_node0_fu_283_grp_fu_539_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_539_p0 = grp_atax_node1_fu_269_grp_fu_539_p_din0;
    end else begin
        grp_fu_539_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_539_p1 = grp_atax_node0_fu_283_grp_fu_539_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_539_p1 = grp_atax_node1_fu_269_grp_fu_539_p_din1;
    end else begin
        grp_fu_539_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_543_ce = grp_atax_node0_fu_283_grp_fu_543_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_543_ce = grp_atax_node1_fu_269_grp_fu_543_p_ce;
    end else begin
        grp_fu_543_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_543_p0 = grp_atax_node0_fu_283_grp_fu_543_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_543_p0 = grp_atax_node1_fu_269_grp_fu_543_p_din0;
    end else begin
        grp_fu_543_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_543_p1 = grp_atax_node0_fu_283_grp_fu_543_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_543_p1 = grp_atax_node1_fu_269_grp_fu_543_p_din1;
    end else begin
        grp_fu_543_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v117_address0_local = zext_ln165_9_fu_493_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v117_address0_local = zext_ln165_6_fu_469_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_address0_local = zext_ln165_3_fu_415_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_address0_local = zext_ln165_fu_330_p1;
    end else begin
        v117_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v117_address1_local = zext_ln165_7_fu_481_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v117_address1_local = zext_ln165_4_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_address1_local = zext_ln165_1_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_address1_local = zext_ln164_fu_301_p1;
    end else begin
        v117_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v117_ce0_local = 1'b1;
    end else begin
        v117_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v117_ce1_local = 1'b1;
    end else begin
        v117_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v117_we0_local = 1'b1;
    end else begin
        v117_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v117_we1_local = 1'b1;
    end else begin
        v117_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_1_address0 = grp_atax_node1_fu_269_v57_1_address0;
    end else begin
        v123_1_address0 = v123_1_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v123_1_address0_local = zext_ln165_8_fu_441_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_address0_local = zext_ln165_2_fu_353_p1;
    end else begin
        v123_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_1_address1 = grp_atax_node1_fu_269_v57_1_address1;
    end else begin
        v123_1_address1 = v123_1_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v123_1_address1_local = zext_ln165_5_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_address1_local = zext_ln164_1_fu_316_p1;
    end else begin
        v123_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_1_ce0 = grp_atax_node1_fu_269_v57_1_ce0;
    end else begin
        v123_1_ce0 = v123_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_1_ce0_local = 1'b1;
    end else begin
        v123_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_1_ce1 = grp_atax_node1_fu_269_v57_1_ce1;
    end else begin
        v123_1_ce1 = v123_1_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_1_ce1_local = 1'b1;
    end else begin
        v123_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_1_we0_local = 1'b1;
    end else begin
        v123_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_1_we1_local = 1'b1;
    end else begin
        v123_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_address0 = grp_atax_node1_fu_269_v57_0_address0;
    end else begin
        v123_address0 = v123_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v123_address0_local = zext_ln165_8_fu_441_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_address0_local = zext_ln165_2_fu_353_p1;
    end else begin
        v123_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_address1 = grp_atax_node1_fu_269_v57_0_address1;
    end else begin
        v123_address1 = v123_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v123_address1_local = zext_ln165_5_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_address1_local = zext_ln164_1_fu_316_p1;
    end else begin
        v123_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_ce0 = grp_atax_node1_fu_269_v57_0_ce0;
    end else begin
        v123_ce0 = v123_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_ce0_local = 1'b1;
    end else begin
        v123_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v123_ce1 = grp_atax_node1_fu_269_v57_0_ce1;
    end else begin
        v123_ce1 = v123_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_ce1_local = 1'b1;
    end else begin
        v123_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_we0_local = 1'b1;
    end else begin
        v123_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        v123_we1_local = 1'b1;
    end else begin
        v123_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v124_1_address0 = grp_atax_node0_fu_283_v0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_1_address0 = grp_atax_node1_fu_269_v58_1_address0;
    end else begin
        v124_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v124_1_ce0 = grp_atax_node0_fu_283_v0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_1_ce0 = grp_atax_node1_fu_269_v58_1_ce0;
    end else begin
        v124_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_1_ce1 = grp_atax_node1_fu_269_v58_1_ce1;
    end else begin
        v124_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_1_we0 = grp_atax_node1_fu_269_v58_1_we0;
    end else begin
        v124_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_1_we1 = grp_atax_node1_fu_269_v58_1_we1;
    end else begin
        v124_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v124_address0 = grp_atax_node0_fu_283_v0_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_address0 = grp_atax_node1_fu_269_v58_0_address0;
    end else begin
        v124_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v124_ce0 = grp_atax_node0_fu_283_v0_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_ce0 = grp_atax_node1_fu_269_v58_0_ce0;
    end else begin
        v124_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_ce1 = grp_atax_node1_fu_269_v58_0_ce1;
    end else begin
        v124_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_we0 = grp_atax_node1_fu_269_v58_0_we0;
    end else begin
        v124_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_we1 = grp_atax_node1_fu_269_v58_0_we1;
    end else begin
        v124_we1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_18_reg_527 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_atax_node1_fu_269_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_atax_node0_fu_283_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
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
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_atax_node0_fu_283_ap_start = grp_atax_node0_fu_283_ap_start_reg;
assign grp_atax_node1_fu_269_ap_start = grp_atax_node1_fu_269_ap_start_reg;
assign lshr_ln_fu_306_p4 = {{v1121_fu_96[5:1]}};
assign or_ln164_1_fu_396_p3 = {{tmp_s_reg_505}, {2'd2}};
assign or_ln164_2_fu_408_p3 = {{tmp_s_reg_505}, {2'd3}};
assign or_ln164_3_fu_447_p3 = {{tmp_186_reg_511}, {3'd4}};
assign or_ln164_4_fu_459_p5 = {{{{tmp_186_reg_511}, {1'd1}}, {tmp_reg_521}}, {1'd1}};
assign or_ln164_5_fu_474_p3 = {{tmp_186_reg_511}, {3'd6}};
assign or_ln164_6_fu_486_p3 = {{tmp_186_reg_511}, {3'd7}};
assign or_ln165_1_fu_420_p4 = {{{tmp_186_reg_511}, {1'd1}}, {tmp_reg_521}};
assign or_ln165_2_fu_434_p3 = {{tmp_186_reg_511}, {2'd3}};
assign or_ln1_fu_345_p3 = {{tmp_s_fu_335_p4}, {1'd1}};
assign or_ln_fu_322_p3 = {{lshr_ln_fu_306_p4}, {1'd1}};
assign tmp_s_fu_335_p4 = {{v1121_fu_96[5:2]}};
assign v112_fu_377_p2 = (v1121_fu_96 + 7'd8);
assign v113_address0 = grp_atax_node0_fu_283_v113_address0;
assign v113_address1 = grp_atax_node0_fu_283_v113_address1;
assign v113_ce0 = grp_atax_node0_fu_283_v113_ce0;
assign v113_ce1 = grp_atax_node0_fu_283_v113_ce1;
assign v114_address0 = grp_atax_node1_fu_269_v114_address0;
assign v114_address1 = grp_atax_node1_fu_269_v114_address1;
assign v114_ce0 = grp_atax_node1_fu_269_v114_ce0;
assign v114_ce1 = grp_atax_node1_fu_269_v114_ce1;
assign v115_0_address0 = grp_atax_node1_fu_269_v115_0_address0;
assign v115_0_ce0 = grp_atax_node1_fu_269_v115_0_ce0;
assign v115_1_address0 = grp_atax_node1_fu_269_v115_1_address0;
assign v115_1_ce0 = grp_atax_node1_fu_269_v115_1_ce0;
assign v116_address0 = grp_atax_node0_fu_283_v116_address0;
assign v116_address1 = grp_atax_node0_fu_283_v116_address1;
assign v116_ce0 = grp_atax_node0_fu_283_v116_ce0;
assign v116_ce1 = grp_atax_node0_fu_283_v116_ce1;
assign v116_d0 = grp_atax_node0_fu_283_v116_d0;
assign v116_d1 = grp_atax_node0_fu_283_v116_d1;
assign v116_we0 = grp_atax_node0_fu_283_v116_we0;
assign v116_we1 = grp_atax_node0_fu_283_v116_we1;
assign v117_address0 = v117_address0_local;
assign v117_address1 = v117_address1_local;
assign v117_ce0 = v117_ce0_local;
assign v117_ce1 = v117_ce1_local;
assign v117_d0 = 32'd0;
assign v117_d1 = 32'd0;
assign v117_we0 = v117_we0_local;
assign v117_we1 = v117_we1_local;
assign zext_ln164_1_fu_316_p1 = lshr_ln_fu_306_p4;
assign zext_ln164_fu_301_p1 = v1121_fu_96;
assign zext_ln165_1_fu_403_p1 = or_ln164_1_fu_396_p3;
assign zext_ln165_2_fu_353_p1 = or_ln1_fu_345_p3;
assign zext_ln165_3_fu_415_p1 = or_ln164_2_fu_408_p3;
assign zext_ln165_4_fu_454_p1 = or_ln164_3_fu_447_p3;
assign zext_ln165_5_fu_428_p1 = or_ln165_1_fu_420_p4;
assign zext_ln165_6_fu_469_p1 = or_ln164_4_fu_459_p5;
assign zext_ln165_7_fu_481_p1 = or_ln164_5_fu_474_p3;
assign zext_ln165_8_fu_441_p1 = or_ln165_2_fu_434_p3;
assign zext_ln165_9_fu_493_p1 = or_ln164_6_fu_486_p3;
assign zext_ln165_fu_330_p1 = or_ln_fu_322_p3;
endmodule 