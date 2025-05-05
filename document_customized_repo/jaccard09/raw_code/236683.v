module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v115_4_address0,v115_4_ce0,v115_4_q0,v115_5_address0,v115_5_ce0,v115_5_q0,v115_6_address0,v115_6_ce0,v115_6_q0,v115_7_address0,v115_7_ce0,v115_7_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v117_0_address0,v117_0_ce0,v117_0_we0,v117_0_d0,v117_0_address1,v117_0_ce1,v117_0_we1,v117_0_d1,v117_1_address0,v117_1_ce0,v117_1_we0,v117_1_d0,v117_1_address1,v117_1_ce1,v117_1_we1,v117_1_d1); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
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
output  [10:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [10:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [10:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [10:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [2:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [2:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [2:0] v115_2_address0;
output   v115_2_ce0;
input  [31:0] v115_2_q0;
output  [2:0] v115_3_address0;
output   v115_3_ce0;
input  [31:0] v115_3_q0;
output  [2:0] v115_4_address0;
output   v115_4_ce0;
input  [31:0] v115_4_q0;
output  [2:0] v115_5_address0;
output   v115_5_ce0;
input  [31:0] v115_5_q0;
output  [2:0] v115_6_address0;
output   v115_6_ce0;
input  [31:0] v115_6_q0;
output  [2:0] v115_7_address0;
output   v115_7_ce0;
input  [31:0] v115_7_q0;
output  [3:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [3:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [3:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [3:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [3:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [3:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [3:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [3:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [4:0] v117_0_address0;
output   v117_0_ce0;
output   v117_0_we0;
output  [31:0] v117_0_d0;
output  [4:0] v117_0_address1;
output   v117_0_ce1;
output   v117_0_we1;
output  [31:0] v117_0_d1;
output  [4:0] v117_1_address0;
output   v117_1_ce0;
output   v117_1_we0;
output  [31:0] v117_1_d0;
output  [4:0] v117_1_address1;
output   v117_1_ce1;
output   v117_1_we1;
output  [31:0] v117_1_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] tmp_s_fu_418_p4;
reg   [2:0] tmp_s_reg_505;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_reg_511;
reg   [0:0] tmp_19_reg_516;
reg   [3:0] v123_address0;
reg    v123_ce0;
wire   [31:0] v123_q0;
reg   [3:0] v123_address1;
reg    v123_ce1;
wire   [31:0] v123_q1;
reg   [3:0] v123_1_address0;
reg    v123_1_ce0;
wire   [31:0] v123_1_q0;
reg   [3:0] v123_1_address1;
reg    v123_1_ce1;
wire   [31:0] v123_1_q1;
reg   [3:0] v123_2_address0;
reg    v123_2_ce0;
wire   [31:0] v123_2_q0;
reg   [3:0] v123_2_address1;
reg    v123_2_ce1;
wire   [31:0] v123_2_q1;
reg   [3:0] v123_3_address0;
reg    v123_3_ce0;
wire   [31:0] v123_3_q0;
reg   [3:0] v123_3_address1;
reg    v123_3_ce1;
wire   [31:0] v123_3_q1;
reg   [5:0] v124_address0;
reg    v124_ce0;
reg    v124_we0;
wire   [31:0] v124_q0;
reg    v124_ce1;
reg    v124_we1;
wire   [31:0] v124_q1;
wire    grp_atax_node1_fu_316_ap_start;
wire    grp_atax_node1_fu_316_ap_done;
wire    grp_atax_node1_fu_316_ap_idle;
wire    grp_atax_node1_fu_316_ap_ready;
wire   [10:0] grp_atax_node1_fu_316_v114_0_address0;
wire    grp_atax_node1_fu_316_v114_0_ce0;
wire   [10:0] grp_atax_node1_fu_316_v114_0_address1;
wire    grp_atax_node1_fu_316_v114_0_ce1;
wire   [10:0] grp_atax_node1_fu_316_v114_1_address0;
wire    grp_atax_node1_fu_316_v114_1_ce0;
wire   [10:0] grp_atax_node1_fu_316_v114_1_address1;
wire    grp_atax_node1_fu_316_v114_1_ce1;
wire   [2:0] grp_atax_node1_fu_316_v115_0_address0;
wire    grp_atax_node1_fu_316_v115_0_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_1_address0;
wire    grp_atax_node1_fu_316_v115_1_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_2_address0;
wire    grp_atax_node1_fu_316_v115_2_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_3_address0;
wire    grp_atax_node1_fu_316_v115_3_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_4_address0;
wire    grp_atax_node1_fu_316_v115_4_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_5_address0;
wire    grp_atax_node1_fu_316_v115_5_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_6_address0;
wire    grp_atax_node1_fu_316_v115_6_ce0;
wire   [2:0] grp_atax_node1_fu_316_v115_7_address0;
wire    grp_atax_node1_fu_316_v115_7_ce0;
wire   [3:0] grp_atax_node1_fu_316_v57_0_address0;
wire    grp_atax_node1_fu_316_v57_0_ce0;
wire   [3:0] grp_atax_node1_fu_316_v57_0_address1;
wire    grp_atax_node1_fu_316_v57_0_ce1;
wire   [3:0] grp_atax_node1_fu_316_v57_1_address0;
wire    grp_atax_node1_fu_316_v57_1_ce0;
wire   [3:0] grp_atax_node1_fu_316_v57_1_address1;
wire    grp_atax_node1_fu_316_v57_1_ce1;
wire   [3:0] grp_atax_node1_fu_316_v57_2_address0;
wire    grp_atax_node1_fu_316_v57_2_ce0;
wire   [3:0] grp_atax_node1_fu_316_v57_2_address1;
wire    grp_atax_node1_fu_316_v57_2_ce1;
wire   [3:0] grp_atax_node1_fu_316_v57_3_address0;
wire    grp_atax_node1_fu_316_v57_3_ce0;
wire   [3:0] grp_atax_node1_fu_316_v57_3_address1;
wire    grp_atax_node1_fu_316_v57_3_ce1;
wire   [5:0] grp_atax_node1_fu_316_v58_address0;
wire    grp_atax_node1_fu_316_v58_ce0;
wire    grp_atax_node1_fu_316_v58_we0;
wire   [31:0] grp_atax_node1_fu_316_v58_d0;
wire   [5:0] grp_atax_node1_fu_316_v58_address1;
wire    grp_atax_node1_fu_316_v58_ce1;
wire    grp_atax_node1_fu_316_v58_we1;
wire   [31:0] grp_atax_node1_fu_316_v58_d1;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_520_p_din0;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_520_p_din1;
wire   [1:0] grp_atax_node1_fu_316_grp_fu_520_p_opcode;
wire    grp_atax_node1_fu_316_grp_fu_520_p_ce;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_524_p_din0;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_524_p_din1;
wire   [1:0] grp_atax_node1_fu_316_grp_fu_524_p_opcode;
wire    grp_atax_node1_fu_316_grp_fu_524_p_ce;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_528_p_din0;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_528_p_din1;
wire    grp_atax_node1_fu_316_grp_fu_528_p_ce;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_532_p_din0;
wire   [31:0] grp_atax_node1_fu_316_grp_fu_532_p_din1;
wire    grp_atax_node1_fu_316_grp_fu_532_p_ce;
wire    grp_atax_node0_fu_345_ap_start;
wire    grp_atax_node0_fu_345_ap_done;
wire    grp_atax_node0_fu_345_ap_idle;
wire    grp_atax_node0_fu_345_ap_ready;
wire   [5:0] grp_atax_node0_fu_345_v0_address0;
wire    grp_atax_node0_fu_345_v0_ce0;
wire   [10:0] grp_atax_node0_fu_345_v113_0_address0;
wire    grp_atax_node0_fu_345_v113_0_ce0;
wire   [10:0] grp_atax_node0_fu_345_v113_0_address1;
wire    grp_atax_node0_fu_345_v113_0_ce1;
wire   [10:0] grp_atax_node0_fu_345_v113_1_address0;
wire    grp_atax_node0_fu_345_v113_1_ce0;
wire   [10:0] grp_atax_node0_fu_345_v113_1_address1;
wire    grp_atax_node0_fu_345_v113_1_ce1;
wire   [3:0] grp_atax_node0_fu_345_v116_0_address0;
wire    grp_atax_node0_fu_345_v116_0_ce0;
wire    grp_atax_node0_fu_345_v116_0_we0;
wire   [31:0] grp_atax_node0_fu_345_v116_0_d0;
wire   [3:0] grp_atax_node0_fu_345_v116_0_address1;
wire    grp_atax_node0_fu_345_v116_0_ce1;
wire    grp_atax_node0_fu_345_v116_0_we1;
wire   [31:0] grp_atax_node0_fu_345_v116_0_d1;
wire   [3:0] grp_atax_node0_fu_345_v116_1_address0;
wire    grp_atax_node0_fu_345_v116_1_ce0;
wire    grp_atax_node0_fu_345_v116_1_we0;
wire   [31:0] grp_atax_node0_fu_345_v116_1_d0;
wire   [3:0] grp_atax_node0_fu_345_v116_1_address1;
wire    grp_atax_node0_fu_345_v116_1_ce1;
wire    grp_atax_node0_fu_345_v116_1_we1;
wire   [31:0] grp_atax_node0_fu_345_v116_1_d1;
wire   [3:0] grp_atax_node0_fu_345_v116_2_address0;
wire    grp_atax_node0_fu_345_v116_2_ce0;
wire    grp_atax_node0_fu_345_v116_2_we0;
wire   [31:0] grp_atax_node0_fu_345_v116_2_d0;
wire   [3:0] grp_atax_node0_fu_345_v116_2_address1;
wire    grp_atax_node0_fu_345_v116_2_ce1;
wire    grp_atax_node0_fu_345_v116_2_we1;
wire   [31:0] grp_atax_node0_fu_345_v116_2_d1;
wire   [3:0] grp_atax_node0_fu_345_v116_3_address0;
wire    grp_atax_node0_fu_345_v116_3_ce0;
wire    grp_atax_node0_fu_345_v116_3_we0;
wire   [31:0] grp_atax_node0_fu_345_v116_3_d0;
wire   [3:0] grp_atax_node0_fu_345_v116_3_address1;
wire    grp_atax_node0_fu_345_v116_3_ce1;
wire    grp_atax_node0_fu_345_v116_3_we1;
wire   [31:0] grp_atax_node0_fu_345_v116_3_d1;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_520_p_din0;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_520_p_din1;
wire   [1:0] grp_atax_node0_fu_345_grp_fu_520_p_opcode;
wire    grp_atax_node0_fu_345_grp_fu_520_p_ce;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_524_p_din0;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_524_p_din1;
wire   [1:0] grp_atax_node0_fu_345_grp_fu_524_p_opcode;
wire    grp_atax_node0_fu_345_grp_fu_524_p_ce;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_528_p_din0;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_528_p_din1;
wire    grp_atax_node0_fu_345_grp_fu_528_p_ce;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_532_p_din0;
wire   [31:0] grp_atax_node0_fu_345_grp_fu_532_p_din1;
wire    grp_atax_node0_fu_345_grp_fu_532_p_ce;
reg    grp_atax_node1_fu_316_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_atax_node0_fu_345_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln164_1_fu_396_p1;
wire   [63:0] zext_ln166_1_fu_444_p1;
wire   [63:0] zext_ln164_fu_380_p1;
wire   [63:0] zext_ln166_fu_412_p1;
wire   [63:0] zext_ln165_fu_479_p1;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln166_2_fu_492_p1;
reg   [6:0] v1121_fu_106;
wire   [6:0] v112_fu_452_p2;
reg    v117_0_we1_local;
reg    v117_0_ce1_local;
reg   [4:0] v117_0_address1_local;
reg    v117_0_we0_local;
reg    v117_0_ce0_local;
reg   [4:0] v117_0_address0_local;
reg    v117_1_we1_local;
reg    v117_1_ce1_local;
reg   [4:0] v117_1_address1_local;
reg    v117_1_we0_local;
reg    v117_1_ce0_local;
reg   [4:0] v117_1_address0_local;
reg    v123_we1_local;
reg    v123_ce1_local;
reg    v123_we0_local;
reg    v123_ce0_local;
reg    v123_1_we1_local;
reg    v123_1_ce1_local;
reg    v123_1_we0_local;
reg    v123_1_ce0_local;
reg    v123_2_we1_local;
reg    v123_2_ce1_local;
reg    v123_2_we0_local;
reg    v123_2_ce0_local;
reg    v123_3_we1_local;
reg    v123_3_ce1_local;
reg    v123_3_we0_local;
reg    v123_3_ce0_local;
wire   [4:0] lshr_ln_fu_370_p4;
wire   [3:0] lshr_ln164_1_fu_386_p4;
wire   [4:0] or_ln_fu_404_p3;
wire   [3:0] or_ln165_2_fu_436_p3;
wire   [4:0] or_ln165_1_fu_471_p4;
wire   [4:0] or_ln165_3_fu_485_p3;
wire   [31:0] grp_fu_520_p2;
reg   [31:0] grp_fu_520_p0;
reg   [31:0] grp_fu_520_p1;
reg    grp_fu_520_ce;
wire   [31:0] grp_fu_524_p2;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_524_p1;
reg    grp_fu_524_ce;
wire   [31:0] grp_fu_528_p2;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_528_p1;
reg    grp_fu_528_ce;
wire   [31:0] grp_fu_532_p2;
reg   [31:0] grp_fu_532_p0;
reg   [31:0] grp_fu_532_p1;
reg    grp_fu_532_ce;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_atax_node1_fu_316_ap_start_reg = 1'b0;
#0 grp_atax_node0_fu_345_ap_start_reg = 1'b0;
#0 v1121_fu_106 = 7'd0;
end
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v123_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_address0),.ce0(v123_ce0),.we0(v123_we0_local),.d0(32'd0),.q0(v123_q0),.address1(v123_address1),.ce1(v123_ce1),.we1(v123_we1_local),.d1(32'd0),.q1(v123_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v123_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_1_address0),.ce0(v123_1_ce0),.we0(v123_1_we0_local),.d0(32'd0),.q0(v123_1_q0),.address1(v123_1_address1),.ce1(v123_1_ce1),.we1(v123_1_we1_local),.d1(32'd0),.q1(v123_1_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v123_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_2_address0),.ce0(v123_2_ce0),.we0(v123_2_we0_local),.d0(32'd0),.q0(v123_2_q0),.address1(v123_2_address1),.ce1(v123_2_ce1),.we1(v123_2_we1_local),.d1(32'd0),.q1(v123_2_q1));
atax_v123_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v123_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v123_3_address0),.ce0(v123_3_ce0),.we0(v123_3_we0_local),.d0(32'd0),.q0(v123_3_q0),.address1(v123_3_address1),.ce1(v123_3_ce1),.we1(v123_3_we1_local),.d1(32'd0),.q1(v123_3_q1));
atax_v124_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v124_U(.clk(ap_clk),.reset(ap_rst),.address0(v124_address0),.ce0(v124_ce0),.we0(v124_we0),.d0(grp_atax_node1_fu_316_v58_d0),.q0(v124_q0),.address1(grp_atax_node1_fu_316_v58_address1),.ce1(v124_ce1),.we1(v124_we1),.d1(grp_atax_node1_fu_316_v58_d1),.q1(v124_q1));
atax_atax_node1 grp_atax_node1_fu_316(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node1_fu_316_ap_start),.ap_done(grp_atax_node1_fu_316_ap_done),.ap_idle(grp_atax_node1_fu_316_ap_idle),.ap_ready(grp_atax_node1_fu_316_ap_ready),.v114_0_address0(grp_atax_node1_fu_316_v114_0_address0),.v114_0_ce0(grp_atax_node1_fu_316_v114_0_ce0),.v114_0_q0(v114_0_q0),.v114_0_address1(grp_atax_node1_fu_316_v114_0_address1),.v114_0_ce1(grp_atax_node1_fu_316_v114_0_ce1),.v114_0_q1(v114_0_q1),.v114_1_address0(grp_atax_node1_fu_316_v114_1_address0),.v114_1_ce0(grp_atax_node1_fu_316_v114_1_ce0),.v114_1_q0(v114_1_q0),.v114_1_address1(grp_atax_node1_fu_316_v114_1_address1),.v114_1_ce1(grp_atax_node1_fu_316_v114_1_ce1),.v114_1_q1(v114_1_q1),.v115_0_address0(grp_atax_node1_fu_316_v115_0_address0),.v115_0_ce0(grp_atax_node1_fu_316_v115_0_ce0),.v115_0_q0(v115_0_q0),.v115_1_address0(grp_atax_node1_fu_316_v115_1_address0),.v115_1_ce0(grp_atax_node1_fu_316_v115_1_ce0),.v115_1_q0(v115_1_q0),.v115_2_address0(grp_atax_node1_fu_316_v115_2_address0),.v115_2_ce0(grp_atax_node1_fu_316_v115_2_ce0),.v115_2_q0(v115_2_q0),.v115_3_address0(grp_atax_node1_fu_316_v115_3_address0),.v115_3_ce0(grp_atax_node1_fu_316_v115_3_ce0),.v115_3_q0(v115_3_q0),.v115_4_address0(grp_atax_node1_fu_316_v115_4_address0),.v115_4_ce0(grp_atax_node1_fu_316_v115_4_ce0),.v115_4_q0(v115_4_q0),.v115_5_address0(grp_atax_node1_fu_316_v115_5_address0),.v115_5_ce0(grp_atax_node1_fu_316_v115_5_ce0),.v115_5_q0(v115_5_q0),.v115_6_address0(grp_atax_node1_fu_316_v115_6_address0),.v115_6_ce0(grp_atax_node1_fu_316_v115_6_ce0),.v115_6_q0(v115_6_q0),.v115_7_address0(grp_atax_node1_fu_316_v115_7_address0),.v115_7_ce0(grp_atax_node1_fu_316_v115_7_ce0),.v115_7_q0(v115_7_q0),.v57_0_address0(grp_atax_node1_fu_316_v57_0_address0),.v57_0_ce0(grp_atax_node1_fu_316_v57_0_ce0),.v57_0_q0(v123_q0),.v57_0_address1(grp_atax_node1_fu_316_v57_0_address1),.v57_0_ce1(grp_atax_node1_fu_316_v57_0_ce1),.v57_0_q1(v123_q1),.v57_1_address0(grp_atax_node1_fu_316_v57_1_address0),.v57_1_ce0(grp_atax_node1_fu_316_v57_1_ce0),.v57_1_q0(v123_1_q0),.v57_1_address1(grp_atax_node1_fu_316_v57_1_address1),.v57_1_ce1(grp_atax_node1_fu_316_v57_1_ce1),.v57_1_q1(v123_1_q1),.v57_2_address0(grp_atax_node1_fu_316_v57_2_address0),.v57_2_ce0(grp_atax_node1_fu_316_v57_2_ce0),.v57_2_q0(v123_2_q0),.v57_2_address1(grp_atax_node1_fu_316_v57_2_address1),.v57_2_ce1(grp_atax_node1_fu_316_v57_2_ce1),.v57_2_q1(v123_2_q1),.v57_3_address0(grp_atax_node1_fu_316_v57_3_address0),.v57_3_ce0(grp_atax_node1_fu_316_v57_3_ce0),.v57_3_q0(v123_3_q0),.v57_3_address1(grp_atax_node1_fu_316_v57_3_address1),.v57_3_ce1(grp_atax_node1_fu_316_v57_3_ce1),.v57_3_q1(v123_3_q1),.v58_address0(grp_atax_node1_fu_316_v58_address0),.v58_ce0(grp_atax_node1_fu_316_v58_ce0),.v58_we0(grp_atax_node1_fu_316_v58_we0),.v58_d0(grp_atax_node1_fu_316_v58_d0),.v58_q0(v124_q0),.v58_address1(grp_atax_node1_fu_316_v58_address1),.v58_ce1(grp_atax_node1_fu_316_v58_ce1),.v58_we1(grp_atax_node1_fu_316_v58_we1),.v58_d1(grp_atax_node1_fu_316_v58_d1),.v58_q1(v124_q1),.grp_fu_520_p_din0(grp_atax_node1_fu_316_grp_fu_520_p_din0),.grp_fu_520_p_din1(grp_atax_node1_fu_316_grp_fu_520_p_din1),.grp_fu_520_p_opcode(grp_atax_node1_fu_316_grp_fu_520_p_opcode),.grp_fu_520_p_dout0(grp_fu_520_p2),.grp_fu_520_p_ce(grp_atax_node1_fu_316_grp_fu_520_p_ce),.grp_fu_524_p_din0(grp_atax_node1_fu_316_grp_fu_524_p_din0),.grp_fu_524_p_din1(grp_atax_node1_fu_316_grp_fu_524_p_din1),.grp_fu_524_p_opcode(grp_atax_node1_fu_316_grp_fu_524_p_opcode),.grp_fu_524_p_dout0(grp_fu_524_p2),.grp_fu_524_p_ce(grp_atax_node1_fu_316_grp_fu_524_p_ce),.grp_fu_528_p_din0(grp_atax_node1_fu_316_grp_fu_528_p_din0),.grp_fu_528_p_din1(grp_atax_node1_fu_316_grp_fu_528_p_din1),.grp_fu_528_p_dout0(grp_fu_528_p2),.grp_fu_528_p_ce(grp_atax_node1_fu_316_grp_fu_528_p_ce),.grp_fu_532_p_din0(grp_atax_node1_fu_316_grp_fu_532_p_din0),.grp_fu_532_p_din1(grp_atax_node1_fu_316_grp_fu_532_p_din1),.grp_fu_532_p_dout0(grp_fu_532_p2),.grp_fu_532_p_ce(grp_atax_node1_fu_316_grp_fu_532_p_ce));
atax_atax_node0 grp_atax_node0_fu_345(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_fu_345_ap_start),.ap_done(grp_atax_node0_fu_345_ap_done),.ap_idle(grp_atax_node0_fu_345_ap_idle),.ap_ready(grp_atax_node0_fu_345_ap_ready),.v0_address0(grp_atax_node0_fu_345_v0_address0),.v0_ce0(grp_atax_node0_fu_345_v0_ce0),.v0_q0(v124_q0),.v113_0_address0(grp_atax_node0_fu_345_v113_0_address0),.v113_0_ce0(grp_atax_node0_fu_345_v113_0_ce0),.v113_0_q0(v113_0_q0),.v113_0_address1(grp_atax_node0_fu_345_v113_0_address1),.v113_0_ce1(grp_atax_node0_fu_345_v113_0_ce1),.v113_0_q1(v113_0_q1),.v113_1_address0(grp_atax_node0_fu_345_v113_1_address0),.v113_1_ce0(grp_atax_node0_fu_345_v113_1_ce0),.v113_1_q0(v113_1_q0),.v113_1_address1(grp_atax_node0_fu_345_v113_1_address1),.v113_1_ce1(grp_atax_node0_fu_345_v113_1_ce1),.v113_1_q1(v113_1_q1),.v116_0_address0(grp_atax_node0_fu_345_v116_0_address0),.v116_0_ce0(grp_atax_node0_fu_345_v116_0_ce0),.v116_0_we0(grp_atax_node0_fu_345_v116_0_we0),.v116_0_d0(grp_atax_node0_fu_345_v116_0_d0),.v116_0_q0(v116_0_q0),.v116_0_address1(grp_atax_node0_fu_345_v116_0_address1),.v116_0_ce1(grp_atax_node0_fu_345_v116_0_ce1),.v116_0_we1(grp_atax_node0_fu_345_v116_0_we1),.v116_0_d1(grp_atax_node0_fu_345_v116_0_d1),.v116_0_q1(v116_0_q1),.v116_1_address0(grp_atax_node0_fu_345_v116_1_address0),.v116_1_ce0(grp_atax_node0_fu_345_v116_1_ce0),.v116_1_we0(grp_atax_node0_fu_345_v116_1_we0),.v116_1_d0(grp_atax_node0_fu_345_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_1_address1(grp_atax_node0_fu_345_v116_1_address1),.v116_1_ce1(grp_atax_node0_fu_345_v116_1_ce1),.v116_1_we1(grp_atax_node0_fu_345_v116_1_we1),.v116_1_d1(grp_atax_node0_fu_345_v116_1_d1),.v116_1_q1(v116_1_q1),.v116_2_address0(grp_atax_node0_fu_345_v116_2_address0),.v116_2_ce0(grp_atax_node0_fu_345_v116_2_ce0),.v116_2_we0(grp_atax_node0_fu_345_v116_2_we0),.v116_2_d0(grp_atax_node0_fu_345_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_2_address1(grp_atax_node0_fu_345_v116_2_address1),.v116_2_ce1(grp_atax_node0_fu_345_v116_2_ce1),.v116_2_we1(grp_atax_node0_fu_345_v116_2_we1),.v116_2_d1(grp_atax_node0_fu_345_v116_2_d1),.v116_2_q1(v116_2_q1),.v116_3_address0(grp_atax_node0_fu_345_v116_3_address0),.v116_3_ce0(grp_atax_node0_fu_345_v116_3_ce0),.v116_3_we0(grp_atax_node0_fu_345_v116_3_we0),.v116_3_d0(grp_atax_node0_fu_345_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_3_address1(grp_atax_node0_fu_345_v116_3_address1),.v116_3_ce1(grp_atax_node0_fu_345_v116_3_ce1),.v116_3_we1(grp_atax_node0_fu_345_v116_3_we1),.v116_3_d1(grp_atax_node0_fu_345_v116_3_d1),.v116_3_q1(v116_3_q1),.grp_fu_520_p_din0(grp_atax_node0_fu_345_grp_fu_520_p_din0),.grp_fu_520_p_din1(grp_atax_node0_fu_345_grp_fu_520_p_din1),.grp_fu_520_p_opcode(grp_atax_node0_fu_345_grp_fu_520_p_opcode),.grp_fu_520_p_dout0(grp_fu_520_p2),.grp_fu_520_p_ce(grp_atax_node0_fu_345_grp_fu_520_p_ce),.grp_fu_524_p_din0(grp_atax_node0_fu_345_grp_fu_524_p_din0),.grp_fu_524_p_din1(grp_atax_node0_fu_345_grp_fu_524_p_din1),.grp_fu_524_p_opcode(grp_atax_node0_fu_345_grp_fu_524_p_opcode),.grp_fu_524_p_dout0(grp_fu_524_p2),.grp_fu_524_p_ce(grp_atax_node0_fu_345_grp_fu_524_p_ce),.grp_fu_528_p_din0(grp_atax_node0_fu_345_grp_fu_528_p_din0),.grp_fu_528_p_din1(grp_atax_node0_fu_345_grp_fu_528_p_din1),.grp_fu_528_p_dout0(grp_fu_528_p2),.grp_fu_528_p_ce(grp_atax_node0_fu_345_grp_fu_528_p_ce),.grp_fu_532_p_din0(grp_atax_node0_fu_345_grp_fu_532_p_din0),.grp_fu_532_p_din1(grp_atax_node0_fu_345_grp_fu_532_p_din1),.grp_fu_532_p_dout0(grp_fu_532_p2),.grp_fu_532_p_ce(grp_atax_node0_fu_345_grp_fu_532_p_ce));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(grp_fu_520_p1),.ce(grp_fu_520_ce),.dout(grp_fu_520_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.ce(grp_fu_524_ce),.dout(grp_fu_524_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_528_p0),.din1(grp_fu_528_p1),.ce(grp_fu_528_ce),.dout(grp_fu_528_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.ce(grp_fu_532_ce),.dout(grp_fu_532_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_fu_345_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_atax_node0_fu_345_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_fu_345_ap_ready == 1'b1)) begin
            grp_atax_node0_fu_345_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node1_fu_316_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_atax_node1_fu_316_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node1_fu_316_ap_ready == 1'b1)) begin
            grp_atax_node1_fu_316_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v1121_fu_106 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v1121_fu_106 <= v112_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_19_reg_516 <= v112_fu_452_p2[32'd6];
        tmp_reg_511 <= v1121_fu_106[32'd1];
        tmp_s_reg_505 <= {{v1121_fu_106[5:3]}};
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
always @ (*) begin
    if ((grp_atax_node1_fu_316_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_fu_345_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
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
    if (((grp_atax_node0_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_520_ce = grp_atax_node0_fu_345_grp_fu_520_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_520_ce = grp_atax_node1_fu_316_grp_fu_520_p_ce;
    end else begin
        grp_fu_520_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_520_p0 = grp_atax_node0_fu_345_grp_fu_520_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_520_p0 = grp_atax_node1_fu_316_grp_fu_520_p_din0;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_520_p1 = grp_atax_node0_fu_345_grp_fu_520_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_520_p1 = grp_atax_node1_fu_316_grp_fu_520_p_din1;
    end else begin
        grp_fu_520_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_524_ce = grp_atax_node0_fu_345_grp_fu_524_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_524_ce = grp_atax_node1_fu_316_grp_fu_524_p_ce;
    end else begin
        grp_fu_524_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_524_p0 = grp_atax_node0_fu_345_grp_fu_524_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_524_p0 = grp_atax_node1_fu_316_grp_fu_524_p_din0;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_524_p1 = grp_atax_node0_fu_345_grp_fu_524_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_524_p1 = grp_atax_node1_fu_316_grp_fu_524_p_din1;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_528_ce = grp_atax_node0_fu_345_grp_fu_528_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_528_ce = grp_atax_node1_fu_316_grp_fu_528_p_ce;
    end else begin
        grp_fu_528_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_528_p0 = grp_atax_node0_fu_345_grp_fu_528_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_528_p0 = grp_atax_node1_fu_316_grp_fu_528_p_din0;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_528_p1 = grp_atax_node0_fu_345_grp_fu_528_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_528_p1 = grp_atax_node1_fu_316_grp_fu_528_p_din1;
    end else begin
        grp_fu_528_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_532_ce = grp_atax_node0_fu_345_grp_fu_532_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_532_ce = grp_atax_node1_fu_316_grp_fu_532_p_ce;
    end else begin
        grp_fu_532_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_532_p0 = grp_atax_node0_fu_345_grp_fu_532_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_532_p0 = grp_atax_node1_fu_316_grp_fu_532_p_din0;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_532_p1 = grp_atax_node0_fu_345_grp_fu_532_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_532_p1 = grp_atax_node1_fu_316_grp_fu_532_p_din1;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_0_address0_local = zext_ln166_2_fu_492_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_0_address0_local = zext_ln166_fu_412_p1;
    end else begin
        v117_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_0_address1_local = zext_ln165_fu_479_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_0_address1_local = zext_ln164_fu_380_p1;
    end else begin
        v117_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_0_ce0_local = 1'b1;
    end else begin
        v117_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_0_ce1_local = 1'b1;
    end else begin
        v117_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_0_we0_local = 1'b1;
    end else begin
        v117_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_0_we1_local = 1'b1;
    end else begin
        v117_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_1_address0_local = zext_ln166_2_fu_492_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_1_address0_local = zext_ln166_fu_412_p1;
    end else begin
        v117_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v117_1_address1_local = zext_ln165_fu_479_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v117_1_address1_local = zext_ln164_fu_380_p1;
    end else begin
        v117_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_1_ce0_local = 1'b1;
    end else begin
        v117_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_1_ce1_local = 1'b1;
    end else begin
        v117_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_1_we0_local = 1'b1;
    end else begin
        v117_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        v117_1_we1_local = 1'b1;
    end else begin
        v117_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_1_address0 = grp_atax_node1_fu_316_v57_1_address0;
    end else begin
        v123_1_address0 = zext_ln166_1_fu_444_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_1_address1 = grp_atax_node1_fu_316_v57_1_address1;
    end else begin
        v123_1_address1 = zext_ln164_1_fu_396_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_1_ce0 = grp_atax_node1_fu_316_v57_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_1_ce1 = grp_atax_node1_fu_316_v57_1_ce1;
    end else begin
        v123_1_ce1 = v123_1_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_ce1_local = 1'b1;
    end else begin
        v123_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_we0_local = 1'b1;
    end else begin
        v123_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_1_we1_local = 1'b1;
    end else begin
        v123_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_2_address0 = grp_atax_node1_fu_316_v57_2_address0;
    end else begin
        v123_2_address0 = zext_ln166_1_fu_444_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_2_address1 = grp_atax_node1_fu_316_v57_2_address1;
    end else begin
        v123_2_address1 = zext_ln164_1_fu_396_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_2_ce0 = grp_atax_node1_fu_316_v57_2_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_2_ce1 = grp_atax_node1_fu_316_v57_2_ce1;
    end else begin
        v123_2_ce1 = v123_2_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_2_ce1_local = 1'b1;
    end else begin
        v123_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_2_we0_local = 1'b1;
    end else begin
        v123_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_2_we1_local = 1'b1;
    end else begin
        v123_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_3_address0 = grp_atax_node1_fu_316_v57_3_address0;
    end else begin
        v123_3_address0 = zext_ln166_1_fu_444_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_3_address1 = grp_atax_node1_fu_316_v57_3_address1;
    end else begin
        v123_3_address1 = zext_ln164_1_fu_396_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_3_ce0 = grp_atax_node1_fu_316_v57_3_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_3_ce1 = grp_atax_node1_fu_316_v57_3_ce1;
    end else begin
        v123_3_ce1 = v123_3_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_3_ce1_local = 1'b1;
    end else begin
        v123_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_3_we0_local = 1'b1;
    end else begin
        v123_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_3_we1_local = 1'b1;
    end else begin
        v123_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_address0 = grp_atax_node1_fu_316_v57_0_address0;
    end else begin
        v123_address0 = zext_ln166_1_fu_444_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_address1 = grp_atax_node1_fu_316_v57_0_address1;
    end else begin
        v123_address1 = zext_ln164_1_fu_396_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_ce0 = grp_atax_node1_fu_316_v57_0_ce0;
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v123_ce1 = grp_atax_node1_fu_316_v57_0_ce1;
    end else begin
        v123_ce1 = v123_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_ce1_local = 1'b1;
    end else begin
        v123_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_we0_local = 1'b1;
    end else begin
        v123_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v123_we1_local = 1'b1;
    end else begin
        v123_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_address0 = grp_atax_node0_fu_345_v0_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v124_address0 = grp_atax_node1_fu_316_v58_address0;
    end else begin
        v124_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v124_ce0 = grp_atax_node0_fu_345_v0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v124_ce0 = grp_atax_node1_fu_316_v58_ce0;
    end else begin
        v124_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v124_ce1 = grp_atax_node1_fu_316_v58_ce1;
    end else begin
        v124_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v124_we0 = grp_atax_node1_fu_316_v58_we0;
    end else begin
        v124_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v124_we1 = grp_atax_node1_fu_316_v58_we1;
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
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_19_reg_516 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_atax_node1_fu_316_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_atax_node0_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
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
assign grp_atax_node0_fu_345_ap_start = grp_atax_node0_fu_345_ap_start_reg;
assign grp_atax_node1_fu_316_ap_start = grp_atax_node1_fu_316_ap_start_reg;
assign lshr_ln164_1_fu_386_p4 = {{v1121_fu_106[5:2]}};
assign lshr_ln_fu_370_p4 = {{v1121_fu_106[5:1]}};
assign or_ln165_1_fu_471_p4 = {{{tmp_s_reg_505}, {1'd1}}, {tmp_reg_511}};
assign or_ln165_2_fu_436_p3 = {{tmp_s_fu_418_p4}, {1'd1}};
assign or_ln165_3_fu_485_p3 = {{tmp_s_reg_505}, {2'd3}};
assign or_ln_fu_404_p3 = {{lshr_ln164_1_fu_386_p4}, {1'd1}};
assign tmp_s_fu_418_p4 = {{v1121_fu_106[5:3]}};
assign v112_fu_452_p2 = (v1121_fu_106 + 7'd8);
assign v113_0_address0 = grp_atax_node0_fu_345_v113_0_address0;
assign v113_0_address1 = grp_atax_node0_fu_345_v113_0_address1;
assign v113_0_ce0 = grp_atax_node0_fu_345_v113_0_ce0;
assign v113_0_ce1 = grp_atax_node0_fu_345_v113_0_ce1;
assign v113_1_address0 = grp_atax_node0_fu_345_v113_1_address0;
assign v113_1_address1 = grp_atax_node0_fu_345_v113_1_address1;
assign v113_1_ce0 = grp_atax_node0_fu_345_v113_1_ce0;
assign v113_1_ce1 = grp_atax_node0_fu_345_v113_1_ce1;
assign v114_0_address0 = grp_atax_node1_fu_316_v114_0_address0;
assign v114_0_address1 = grp_atax_node1_fu_316_v114_0_address1;
assign v114_0_ce0 = grp_atax_node1_fu_316_v114_0_ce0;
assign v114_0_ce1 = grp_atax_node1_fu_316_v114_0_ce1;
assign v114_1_address0 = grp_atax_node1_fu_316_v114_1_address0;
assign v114_1_address1 = grp_atax_node1_fu_316_v114_1_address1;
assign v114_1_ce0 = grp_atax_node1_fu_316_v114_1_ce0;
assign v114_1_ce1 = grp_atax_node1_fu_316_v114_1_ce1;
assign v115_0_address0 = grp_atax_node1_fu_316_v115_0_address0;
assign v115_0_ce0 = grp_atax_node1_fu_316_v115_0_ce0;
assign v115_1_address0 = grp_atax_node1_fu_316_v115_1_address0;
assign v115_1_ce0 = grp_atax_node1_fu_316_v115_1_ce0;
assign v115_2_address0 = grp_atax_node1_fu_316_v115_2_address0;
assign v115_2_ce0 = grp_atax_node1_fu_316_v115_2_ce0;
assign v115_3_address0 = grp_atax_node1_fu_316_v115_3_address0;
assign v115_3_ce0 = grp_atax_node1_fu_316_v115_3_ce0;
assign v115_4_address0 = grp_atax_node1_fu_316_v115_4_address0;
assign v115_4_ce0 = grp_atax_node1_fu_316_v115_4_ce0;
assign v115_5_address0 = grp_atax_node1_fu_316_v115_5_address0;
assign v115_5_ce0 = grp_atax_node1_fu_316_v115_5_ce0;
assign v115_6_address0 = grp_atax_node1_fu_316_v115_6_address0;
assign v115_6_ce0 = grp_atax_node1_fu_316_v115_6_ce0;
assign v115_7_address0 = grp_atax_node1_fu_316_v115_7_address0;
assign v115_7_ce0 = grp_atax_node1_fu_316_v115_7_ce0;
assign v116_0_address0 = grp_atax_node0_fu_345_v116_0_address0;
assign v116_0_address1 = grp_atax_node0_fu_345_v116_0_address1;
assign v116_0_ce0 = grp_atax_node0_fu_345_v116_0_ce0;
assign v116_0_ce1 = grp_atax_node0_fu_345_v116_0_ce1;
assign v116_0_d0 = grp_atax_node0_fu_345_v116_0_d0;
assign v116_0_d1 = grp_atax_node0_fu_345_v116_0_d1;
assign v116_0_we0 = grp_atax_node0_fu_345_v116_0_we0;
assign v116_0_we1 = grp_atax_node0_fu_345_v116_0_we1;
assign v116_1_address0 = grp_atax_node0_fu_345_v116_1_address0;
assign v116_1_address1 = grp_atax_node0_fu_345_v116_1_address1;
assign v116_1_ce0 = grp_atax_node0_fu_345_v116_1_ce0;
assign v116_1_ce1 = grp_atax_node0_fu_345_v116_1_ce1;
assign v116_1_d0 = grp_atax_node0_fu_345_v116_1_d0;
assign v116_1_d1 = grp_atax_node0_fu_345_v116_1_d1;
assign v116_1_we0 = grp_atax_node0_fu_345_v116_1_we0;
assign v116_1_we1 = grp_atax_node0_fu_345_v116_1_we1;
assign v116_2_address0 = grp_atax_node0_fu_345_v116_2_address0;
assign v116_2_address1 = grp_atax_node0_fu_345_v116_2_address1;
assign v116_2_ce0 = grp_atax_node0_fu_345_v116_2_ce0;
assign v116_2_ce1 = grp_atax_node0_fu_345_v116_2_ce1;
assign v116_2_d0 = grp_atax_node0_fu_345_v116_2_d0;
assign v116_2_d1 = grp_atax_node0_fu_345_v116_2_d1;
assign v116_2_we0 = grp_atax_node0_fu_345_v116_2_we0;
assign v116_2_we1 = grp_atax_node0_fu_345_v116_2_we1;
assign v116_3_address0 = grp_atax_node0_fu_345_v116_3_address0;
assign v116_3_address1 = grp_atax_node0_fu_345_v116_3_address1;
assign v116_3_ce0 = grp_atax_node0_fu_345_v116_3_ce0;
assign v116_3_ce1 = grp_atax_node0_fu_345_v116_3_ce1;
assign v116_3_d0 = grp_atax_node0_fu_345_v116_3_d0;
assign v116_3_d1 = grp_atax_node0_fu_345_v116_3_d1;
assign v116_3_we0 = grp_atax_node0_fu_345_v116_3_we0;
assign v116_3_we1 = grp_atax_node0_fu_345_v116_3_we1;
assign v117_0_address0 = v117_0_address0_local;
assign v117_0_address1 = v117_0_address1_local;
assign v117_0_ce0 = v117_0_ce0_local;
assign v117_0_ce1 = v117_0_ce1_local;
assign v117_0_d0 = 32'd0;
assign v117_0_d1 = 32'd0;
assign v117_0_we0 = v117_0_we0_local;
assign v117_0_we1 = v117_0_we1_local;
assign v117_1_address0 = v117_1_address0_local;
assign v117_1_address1 = v117_1_address1_local;
assign v117_1_ce0 = v117_1_ce0_local;
assign v117_1_ce1 = v117_1_ce1_local;
assign v117_1_d0 = 32'd0;
assign v117_1_d1 = 32'd0;
assign v117_1_we0 = v117_1_we0_local;
assign v117_1_we1 = v117_1_we1_local;
assign zext_ln164_1_fu_396_p1 = lshr_ln164_1_fu_386_p4;
assign zext_ln164_fu_380_p1 = lshr_ln_fu_370_p4;
assign zext_ln165_fu_479_p1 = or_ln165_1_fu_471_p4;
assign zext_ln166_1_fu_444_p1 = or_ln165_2_fu_436_p3;
assign zext_ln166_2_fu_492_p1 = or_ln165_3_fu_485_p3;
assign zext_ln166_fu_412_p1 = or_ln_fu_404_p3;
endmodule 