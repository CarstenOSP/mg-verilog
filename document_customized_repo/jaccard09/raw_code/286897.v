module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v138_2_address0,v138_2_ce0,v138_2_q0,v138_2_address1,v138_2_ce1,v138_2_q1,v138_3_address0,v138_3_ce0,v138_3_q0,v138_3_address1,v138_3_ce1,v138_3_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;
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
output  [9:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [9:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [9:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [9:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
output  [9:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [9:0] v138_2_address1;
output   v138_2_ce1;
input  [31:0] v138_2_q1;
output  [9:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [9:0] v138_3_address1;
output   v138_3_ce1;
input  [31:0] v138_3_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
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
reg   [6:0] v41_load_reg_502;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln27_fu_350_p1;
reg   [2:0] trunc_ln27_reg_507;
wire   [4:0] lshr_ln_fu_354_p4;
reg   [4:0] lshr_ln_reg_513;
wire   [0:0] tmp_fu_398_p3;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_300_ap_done;
wire    grp_bicg_node1_fu_330_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg   [2:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg    v151_ce1;
wire   [31:0] v151_q1;
reg   [2:0] v151_1_address0;
reg    v151_1_ce0;
reg    v151_1_we0;
wire   [31:0] v151_1_q0;
reg    v151_1_ce1;
wire   [31:0] v151_1_q1;
reg   [2:0] v151_2_address0;
reg    v151_2_ce0;
reg    v151_2_we0;
wire   [31:0] v151_2_q0;
reg    v151_2_ce1;
wire   [31:0] v151_2_q1;
reg   [2:0] v151_3_address0;
reg    v151_3_ce0;
reg    v151_3_we0;
wire   [31:0] v151_3_q0;
reg    v151_3_ce1;
wire   [31:0] v151_3_q1;
reg   [2:0] v151_4_address0;
reg    v151_4_ce0;
reg    v151_4_we0;
wire   [31:0] v151_4_q0;
reg   [2:0] v151_5_address0;
reg    v151_5_ce0;
reg    v151_5_we0;
wire   [31:0] v151_5_q0;
reg   [2:0] v151_6_address0;
reg    v151_6_ce0;
reg    v151_6_we0;
wire   [31:0] v151_6_q0;
reg   [2:0] v151_7_address0;
reg    v151_7_ce0;
reg    v151_7_we0;
wire   [31:0] v151_7_q0;
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
wire    grp_bicg_node2_fu_300_ap_start;
wire    grp_bicg_node2_fu_300_ap_idle;
wire    grp_bicg_node2_fu_300_ap_ready;
wire   [5:0] grp_bicg_node2_fu_300_v140_address0;
wire    grp_bicg_node2_fu_300_v140_ce0;
wire   [9:0] grp_bicg_node2_fu_300_v138_0_address0;
wire    grp_bicg_node2_fu_300_v138_0_ce0;
wire   [9:0] grp_bicg_node2_fu_300_v138_0_address1;
wire    grp_bicg_node2_fu_300_v138_0_ce1;
wire   [9:0] grp_bicg_node2_fu_300_v138_1_address0;
wire    grp_bicg_node2_fu_300_v138_1_ce0;
wire   [9:0] grp_bicg_node2_fu_300_v138_1_address1;
wire    grp_bicg_node2_fu_300_v138_1_ce1;
wire   [9:0] grp_bicg_node2_fu_300_v138_2_address0;
wire    grp_bicg_node2_fu_300_v138_2_ce0;
wire   [9:0] grp_bicg_node2_fu_300_v138_2_address1;
wire    grp_bicg_node2_fu_300_v138_2_ce1;
wire   [9:0] grp_bicg_node2_fu_300_v138_3_address0;
wire    grp_bicg_node2_fu_300_v138_3_ce0;
wire   [9:0] grp_bicg_node2_fu_300_v138_3_address1;
wire    grp_bicg_node2_fu_300_v138_3_ce1;
wire   [2:0] grp_bicg_node2_fu_300_v65_0_address0;
wire    grp_bicg_node2_fu_300_v65_0_ce0;
wire    grp_bicg_node2_fu_300_v65_0_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_0_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_0_address1;
wire    grp_bicg_node2_fu_300_v65_0_ce1;
wire   [2:0] grp_bicg_node2_fu_300_v65_1_address0;
wire    grp_bicg_node2_fu_300_v65_1_ce0;
wire    grp_bicg_node2_fu_300_v65_1_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_1_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_1_address1;
wire    grp_bicg_node2_fu_300_v65_1_ce1;
wire   [2:0] grp_bicg_node2_fu_300_v65_2_address0;
wire    grp_bicg_node2_fu_300_v65_2_ce0;
wire    grp_bicg_node2_fu_300_v65_2_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_2_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_2_address1;
wire    grp_bicg_node2_fu_300_v65_2_ce1;
wire   [2:0] grp_bicg_node2_fu_300_v65_3_address0;
wire    grp_bicg_node2_fu_300_v65_3_ce0;
wire    grp_bicg_node2_fu_300_v65_3_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_3_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_3_address1;
wire    grp_bicg_node2_fu_300_v65_3_ce1;
wire   [2:0] grp_bicg_node2_fu_300_v65_4_address0;
wire    grp_bicg_node2_fu_300_v65_4_ce0;
wire    grp_bicg_node2_fu_300_v65_4_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_4_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_5_address0;
wire    grp_bicg_node2_fu_300_v65_5_ce0;
wire    grp_bicg_node2_fu_300_v65_5_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_5_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_6_address0;
wire    grp_bicg_node2_fu_300_v65_6_ce0;
wire    grp_bicg_node2_fu_300_v65_6_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_6_d0;
wire   [2:0] grp_bicg_node2_fu_300_v65_7_address0;
wire    grp_bicg_node2_fu_300_v65_7_ce0;
wire    grp_bicg_node2_fu_300_v65_7_we0;
wire   [31:0] grp_bicg_node2_fu_300_v65_7_d0;
wire    grp_bicg_node1_fu_330_ap_start;
wire    grp_bicg_node1_fu_330_ap_idle;
wire    grp_bicg_node1_fu_330_ap_ready;
wire   [11:0] grp_bicg_node1_fu_330_v137_address0;
wire    grp_bicg_node1_fu_330_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_330_v137_address1;
wire    grp_bicg_node1_fu_330_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_330_v139_address0;
wire    grp_bicg_node1_fu_330_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_330_v10_0_address0;
wire    grp_bicg_node1_fu_330_v10_0_ce0;
wire    grp_bicg_node1_fu_330_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_330_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_330_v10_0_address1;
wire    grp_bicg_node1_fu_330_v10_0_ce1;
wire    grp_bicg_node1_fu_330_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_330_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_330_v10_1_address0;
wire    grp_bicg_node1_fu_330_v10_1_ce0;
wire    grp_bicg_node1_fu_330_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_330_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_330_v10_1_address1;
wire    grp_bicg_node1_fu_330_v10_1_ce1;
wire    grp_bicg_node1_fu_330_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_330_v10_1_d1;
reg    grp_bicg_node2_fu_300_ap_start_reg;
reg    grp_bicg_node1_fu_330_ap_start_reg;
wire   [63:0] zext_ln27_2_fu_380_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_364_p1;
wire   [63:0] zext_ln27_fu_411_p1;
wire   [63:0] zext_ln28_fu_456_p1;
reg   [6:0] v41_fu_86;
wire   [6:0] v4_fu_392_p2;
reg    v151_ce0_local;
reg    v151_2_ce0_local;
reg    v151_4_ce0_local;
reg    v151_6_ce0_local;
reg    v152_ce0_local;
reg    v151_1_ce0_local;
reg    v151_3_ce0_local;
reg    v151_5_ce0_local;
reg    v151_7_ce0_local;
reg    v152_1_ce0_local;
reg    v141_we1_local;
wire   [31:0] bitcast_ln29_fu_439_p1;
reg    v141_ce1_local;
reg    v141_we0_local;
wire   [31:0] bitcast_ln29_1_fu_485_p1;
reg    v141_ce0_local;
reg    v142_we1_local;
wire   [31:0] bitcast_ln31_fu_444_p1;
reg    v142_ce1_local;
reg    v142_we0_local;
wire   [31:0] bitcast_ln31_1_fu_490_p1;
reg    v142_ce0_local;
wire   [2:0] lshr_ln27_1_fu_370_p4;
wire   [31:0] v5_fu_416_p9;
wire   [31:0] v5_fu_416_p11;
wire   [5:0] or_ln_fu_449_p3;
wire   [31:0] v5_1_fu_462_p9;
wire   [31:0] v5_1_fu_462_p11;
wire    ap_CS_fsm_state5;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [2:0] v5_fu_416_p1;
wire   [2:0] v5_fu_416_p3;
wire  signed [2:0] v5_fu_416_p5;
wire  signed [2:0] v5_fu_416_p7;
wire   [2:0] v5_1_fu_462_p1;
wire   [2:0] v5_1_fu_462_p3;
wire  signed [2:0] v5_1_fu_462_p5;
wire  signed [2:0] v5_1_fu_462_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bicg_node2_fu_300_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_330_ap_start_reg = 1'b0;
#0 v41_fu_86 = 7'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_300_v65_0_d0),.q0(v151_q0),.address1(grp_bicg_node2_fu_300_v65_0_address1),.ce1(v151_ce1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_1_address0),.ce0(v151_1_ce0),.we0(v151_1_we0),.d0(grp_bicg_node2_fu_300_v65_1_d0),.q0(v151_1_q0),.address1(grp_bicg_node2_fu_300_v65_1_address1),.ce1(v151_1_ce1),.q1(v151_1_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_2_address0),.ce0(v151_2_ce0),.we0(v151_2_we0),.d0(grp_bicg_node2_fu_300_v65_2_d0),.q0(v151_2_q0),.address1(grp_bicg_node2_fu_300_v65_2_address1),.ce1(v151_2_ce1),.q1(v151_2_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_3_address0),.ce0(v151_3_ce0),.we0(v151_3_we0),.d0(grp_bicg_node2_fu_300_v65_3_d0),.q0(v151_3_q0),.address1(grp_bicg_node2_fu_300_v65_3_address1),.ce1(v151_3_ce1),.q1(v151_3_q1));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_4_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_4_address0),.ce0(v151_4_ce0),.we0(v151_4_we0),.d0(grp_bicg_node2_fu_300_v65_4_d0),.q0(v151_4_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_5_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_5_address0),.ce0(v151_5_ce0),.we0(v151_5_we0),.d0(grp_bicg_node2_fu_300_v65_5_d0),.q0(v151_5_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_6_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_6_address0),.ce0(v151_6_ce0),.we0(v151_6_we0),.d0(grp_bicg_node2_fu_300_v65_6_d0),.q0(v151_6_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_7_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_7_address0),.ce0(v151_7_ce0),.we0(v151_7_we0),.d0(grp_bicg_node2_fu_300_v65_7_d0),.q0(v151_7_q0));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_330_v10_0_d0),.q0(v152_q0),.address1(grp_bicg_node1_fu_330_v10_0_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_330_v10_0_d1),.q1(v152_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_330_v10_1_d0),.q0(v152_1_q0),.address1(grp_bicg_node1_fu_330_v10_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_330_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_300(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_300_ap_start),.ap_done(grp_bicg_node2_fu_300_ap_done),.ap_idle(grp_bicg_node2_fu_300_ap_idle),.ap_ready(grp_bicg_node2_fu_300_ap_ready),.v140_address0(grp_bicg_node2_fu_300_v140_address0),.v140_ce0(grp_bicg_node2_fu_300_v140_ce0),.v140_q0(v140_q0),.v138_0_address0(grp_bicg_node2_fu_300_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_300_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_0_address1(grp_bicg_node2_fu_300_v138_0_address1),.v138_0_ce1(grp_bicg_node2_fu_300_v138_0_ce1),.v138_0_q1(v138_0_q1),.v138_1_address0(grp_bicg_node2_fu_300_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_300_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_1_address1(grp_bicg_node2_fu_300_v138_1_address1),.v138_1_ce1(grp_bicg_node2_fu_300_v138_1_ce1),.v138_1_q1(v138_1_q1),.v138_2_address0(grp_bicg_node2_fu_300_v138_2_address0),.v138_2_ce0(grp_bicg_node2_fu_300_v138_2_ce0),.v138_2_q0(v138_2_q0),.v138_2_address1(grp_bicg_node2_fu_300_v138_2_address1),.v138_2_ce1(grp_bicg_node2_fu_300_v138_2_ce1),.v138_2_q1(v138_2_q1),.v138_3_address0(grp_bicg_node2_fu_300_v138_3_address0),.v138_3_ce0(grp_bicg_node2_fu_300_v138_3_ce0),.v138_3_q0(v138_3_q0),.v138_3_address1(grp_bicg_node2_fu_300_v138_3_address1),.v138_3_ce1(grp_bicg_node2_fu_300_v138_3_ce1),.v138_3_q1(v138_3_q1),.v65_0_address0(grp_bicg_node2_fu_300_v65_0_address0),.v65_0_ce0(grp_bicg_node2_fu_300_v65_0_ce0),.v65_0_we0(grp_bicg_node2_fu_300_v65_0_we0),.v65_0_d0(grp_bicg_node2_fu_300_v65_0_d0),.v65_0_address1(grp_bicg_node2_fu_300_v65_0_address1),.v65_0_ce1(grp_bicg_node2_fu_300_v65_0_ce1),.v65_0_q1(v151_q1),.v65_1_address0(grp_bicg_node2_fu_300_v65_1_address0),.v65_1_ce0(grp_bicg_node2_fu_300_v65_1_ce0),.v65_1_we0(grp_bicg_node2_fu_300_v65_1_we0),.v65_1_d0(grp_bicg_node2_fu_300_v65_1_d0),.v65_1_address1(grp_bicg_node2_fu_300_v65_1_address1),.v65_1_ce1(grp_bicg_node2_fu_300_v65_1_ce1),.v65_1_q1(v151_1_q1),.v65_2_address0(grp_bicg_node2_fu_300_v65_2_address0),.v65_2_ce0(grp_bicg_node2_fu_300_v65_2_ce0),.v65_2_we0(grp_bicg_node2_fu_300_v65_2_we0),.v65_2_d0(grp_bicg_node2_fu_300_v65_2_d0),.v65_2_address1(grp_bicg_node2_fu_300_v65_2_address1),.v65_2_ce1(grp_bicg_node2_fu_300_v65_2_ce1),.v65_2_q1(v151_2_q1),.v65_3_address0(grp_bicg_node2_fu_300_v65_3_address0),.v65_3_ce0(grp_bicg_node2_fu_300_v65_3_ce0),.v65_3_we0(grp_bicg_node2_fu_300_v65_3_we0),.v65_3_d0(grp_bicg_node2_fu_300_v65_3_d0),.v65_3_address1(grp_bicg_node2_fu_300_v65_3_address1),.v65_3_ce1(grp_bicg_node2_fu_300_v65_3_ce1),.v65_3_q1(v151_3_q1),.v65_4_address0(grp_bicg_node2_fu_300_v65_4_address0),.v65_4_ce0(grp_bicg_node2_fu_300_v65_4_ce0),.v65_4_we0(grp_bicg_node2_fu_300_v65_4_we0),.v65_4_d0(grp_bicg_node2_fu_300_v65_4_d0),.v65_4_q0(v151_4_q0),.v65_5_address0(grp_bicg_node2_fu_300_v65_5_address0),.v65_5_ce0(grp_bicg_node2_fu_300_v65_5_ce0),.v65_5_we0(grp_bicg_node2_fu_300_v65_5_we0),.v65_5_d0(grp_bicg_node2_fu_300_v65_5_d0),.v65_5_q0(v151_5_q0),.v65_6_address0(grp_bicg_node2_fu_300_v65_6_address0),.v65_6_ce0(grp_bicg_node2_fu_300_v65_6_ce0),.v65_6_we0(grp_bicg_node2_fu_300_v65_6_we0),.v65_6_d0(grp_bicg_node2_fu_300_v65_6_d0),.v65_6_q0(v151_6_q0),.v65_7_address0(grp_bicg_node2_fu_300_v65_7_address0),.v65_7_ce0(grp_bicg_node2_fu_300_v65_7_ce0),.v65_7_we0(grp_bicg_node2_fu_300_v65_7_we0),.v65_7_d0(grp_bicg_node2_fu_300_v65_7_d0),.v65_7_q0(v151_7_q0));
bicg_bicg_node1 grp_bicg_node1_fu_330(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_330_ap_start),.ap_done(grp_bicg_node1_fu_330_ap_done),.ap_idle(grp_bicg_node1_fu_330_ap_idle),.ap_ready(grp_bicg_node1_fu_330_ap_ready),.v137_address0(grp_bicg_node1_fu_330_v137_address0),.v137_ce0(grp_bicg_node1_fu_330_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_330_v137_address1),.v137_ce1(grp_bicg_node1_fu_330_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_330_v139_address0),.v139_ce0(grp_bicg_node1_fu_330_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_330_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_330_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_330_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_330_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_330_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_330_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_330_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_330_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_330_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_330_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_330_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_330_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_330_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_330_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_330_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_330_v10_1_d1),.v10_1_q1(v152_1_q1));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U32(.din0(v151_q0),.din1(v151_2_q0),.din2(v151_4_q0),.din3(v151_6_q0),.def(v5_fu_416_p9),.sel(trunc_ln27_reg_507),.dout(v5_fu_416_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U33(.din0(v151_1_q0),.din1(v151_3_q0),.din2(v151_5_q0),.din3(v151_7_q0),.def(v5_1_fu_462_p9),.sel(trunc_ln27_reg_507),.dout(v5_1_fu_462_p11));
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_330_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_330_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_330_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_330_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_300_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_300_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_300_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_300_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v41_fu_86 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v41_fu_86 <= v4_fu_392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        lshr_ln_reg_513 <= {{v41_fu_86[5:1]}};
        trunc_ln27_reg_507 <= trunc_ln27_fu_350_p1;
        v41_load_reg_502 <= v41_fu_86;
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
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_398_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address0 = grp_bicg_node2_fu_300_v65_1_address0;
    end else begin
        v151_1_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce0 = grp_bicg_node2_fu_300_v65_1_ce0;
    end else begin
        v151_1_ce0 = v151_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_1_ce0_local = 1'b1;
    end else begin
        v151_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce1 = grp_bicg_node2_fu_300_v65_1_ce1;
    end else begin
        v151_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we0 = grp_bicg_node2_fu_300_v65_1_we0;
    end else begin
        v151_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_address0 = grp_bicg_node2_fu_300_v65_2_address0;
    end else begin
        v151_2_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce0 = grp_bicg_node2_fu_300_v65_2_ce0;
    end else begin
        v151_2_ce0 = v151_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_2_ce0_local = 1'b1;
    end else begin
        v151_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce1 = grp_bicg_node2_fu_300_v65_2_ce1;
    end else begin
        v151_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_we0 = grp_bicg_node2_fu_300_v65_2_we0;
    end else begin
        v151_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_address0 = grp_bicg_node2_fu_300_v65_3_address0;
    end else begin
        v151_3_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce0 = grp_bicg_node2_fu_300_v65_3_ce0;
    end else begin
        v151_3_ce0 = v151_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_3_ce0_local = 1'b1;
    end else begin
        v151_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce1 = grp_bicg_node2_fu_300_v65_3_ce1;
    end else begin
        v151_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_we0 = grp_bicg_node2_fu_300_v65_3_we0;
    end else begin
        v151_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_address0 = grp_bicg_node2_fu_300_v65_4_address0;
    end else begin
        v151_4_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_ce0 = grp_bicg_node2_fu_300_v65_4_ce0;
    end else begin
        v151_4_ce0 = v151_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_4_ce0_local = 1'b1;
    end else begin
        v151_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_we0 = grp_bicg_node2_fu_300_v65_4_we0;
    end else begin
        v151_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_address0 = grp_bicg_node2_fu_300_v65_5_address0;
    end else begin
        v151_5_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_ce0 = grp_bicg_node2_fu_300_v65_5_ce0;
    end else begin
        v151_5_ce0 = v151_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_5_ce0_local = 1'b1;
    end else begin
        v151_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_we0 = grp_bicg_node2_fu_300_v65_5_we0;
    end else begin
        v151_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_address0 = grp_bicg_node2_fu_300_v65_6_address0;
    end else begin
        v151_6_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_ce0 = grp_bicg_node2_fu_300_v65_6_ce0;
    end else begin
        v151_6_ce0 = v151_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_6_ce0_local = 1'b1;
    end else begin
        v151_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_we0 = grp_bicg_node2_fu_300_v65_6_we0;
    end else begin
        v151_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_address0 = grp_bicg_node2_fu_300_v65_7_address0;
    end else begin
        v151_7_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_ce0 = grp_bicg_node2_fu_300_v65_7_ce0;
    end else begin
        v151_7_ce0 = v151_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_7_ce0_local = 1'b1;
    end else begin
        v151_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_we0 = grp_bicg_node2_fu_300_v65_7_we0;
    end else begin
        v151_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_300_v65_0_address0;
    end else begin
        v151_address0 = zext_ln27_2_fu_380_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_300_v65_0_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_300_v65_0_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_300_v65_0_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_330_v10_1_address0;
    end else begin
        v152_1_address0 = zext_ln27_1_fu_364_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_330_v10_1_ce0;
    end else begin
        v152_1_ce0 = v152_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v152_1_ce0_local = 1'b1;
    end else begin
        v152_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_330_v10_1_ce1;
    end else begin
        v152_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_330_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_330_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_330_v10_0_address0;
    end else begin
        v152_address0 = zext_ln27_1_fu_364_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_330_v10_0_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_330_v10_0_ce1;
    end else begin
        v152_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_330_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_330_v10_0_we1;
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
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_330_ap_done == 1'b0) | (grp_bicg_node2_fu_300_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_1_fu_485_p1 = v5_1_fu_462_p11;
assign bitcast_ln29_fu_439_p1 = v5_fu_416_p11;
assign bitcast_ln31_1_fu_490_p1 = v152_1_q0;
assign bitcast_ln31_fu_444_p1 = v152_q0;
assign grp_bicg_node1_fu_330_ap_start = grp_bicg_node1_fu_330_ap_start_reg;
assign grp_bicg_node2_fu_300_ap_start = grp_bicg_node2_fu_300_ap_start_reg;
assign lshr_ln27_1_fu_370_p4 = {{v41_fu_86[5:3]}};
assign lshr_ln_fu_354_p4 = {{v41_fu_86[5:1]}};
assign or_ln_fu_449_p3 = {{lshr_ln_reg_513}, {1'd1}};
assign tmp_fu_398_p3 = v4_fu_392_p2[32'd6];
assign trunc_ln27_fu_350_p1 = v41_fu_86[2:0];
assign v137_address0 = grp_bicg_node1_fu_330_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_330_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_330_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_330_v137_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_300_v138_0_address0;
assign v138_0_address1 = grp_bicg_node2_fu_300_v138_0_address1;
assign v138_0_ce0 = grp_bicg_node2_fu_300_v138_0_ce0;
assign v138_0_ce1 = grp_bicg_node2_fu_300_v138_0_ce1;
assign v138_1_address0 = grp_bicg_node2_fu_300_v138_1_address0;
assign v138_1_address1 = grp_bicg_node2_fu_300_v138_1_address1;
assign v138_1_ce0 = grp_bicg_node2_fu_300_v138_1_ce0;
assign v138_1_ce1 = grp_bicg_node2_fu_300_v138_1_ce1;
assign v138_2_address0 = grp_bicg_node2_fu_300_v138_2_address0;
assign v138_2_address1 = grp_bicg_node2_fu_300_v138_2_address1;
assign v138_2_ce0 = grp_bicg_node2_fu_300_v138_2_ce0;
assign v138_2_ce1 = grp_bicg_node2_fu_300_v138_2_ce1;
assign v138_3_address0 = grp_bicg_node2_fu_300_v138_3_address0;
assign v138_3_address1 = grp_bicg_node2_fu_300_v138_3_address1;
assign v138_3_ce0 = grp_bicg_node2_fu_300_v138_3_ce0;
assign v138_3_ce1 = grp_bicg_node2_fu_300_v138_3_ce1;
assign v139_address0 = grp_bicg_node1_fu_330_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_330_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_300_v140_address0;
assign v140_ce0 = grp_bicg_node2_fu_300_v140_ce0;
assign v141_address0 = zext_ln28_fu_456_p1;
assign v141_address1 = zext_ln27_fu_411_p1;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = bitcast_ln29_1_fu_485_p1;
assign v141_d1 = bitcast_ln29_fu_439_p1;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = zext_ln28_fu_456_p1;
assign v142_address1 = zext_ln27_fu_411_p1;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = bitcast_ln31_1_fu_490_p1;
assign v142_d1 = bitcast_ln31_fu_444_p1;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v4_fu_392_p2 = (v41_fu_86 + 7'd2);
assign v5_1_fu_462_p9 = 'bx;
assign v5_fu_416_p9 = 'bx;
assign zext_ln27_1_fu_364_p1 = lshr_ln_fu_354_p4;
assign zext_ln27_2_fu_380_p1 = lshr_ln27_1_fu_370_p4;
assign zext_ln27_fu_411_p1 = v41_load_reg_502;
assign zext_ln28_fu_456_p1 = or_ln_fu_449_p3;
endmodule 