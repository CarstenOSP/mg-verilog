module kernel_atax_kernel_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v353_address0,v353_ce0,v353_q0,v353_address1,v353_ce1,v353_q1,v355_address0,v355_ce0,v355_q0,v355_address1,v355_ce1,v355_q1,v354_address0,v354_ce0,v354_q0,v354_address1,v354_ce1,v354_q1,v357_address0,v357_ce0,v357_q0,v356_0_address0,v356_0_ce0,v356_0_we0,v356_0_d0,v356_0_address1,v356_0_ce1,v356_0_we1,v356_0_d1,v356_0_q1,v356_1_address0,v356_1_ce0,v356_1_we0,v356_1_d0,v356_1_address1,v356_1_ce1,v356_1_we1,v356_1_d1,v356_1_q1,v356_2_address0,v356_2_ce0,v356_2_we0,v356_2_d0,v356_2_address1,v356_2_ce1,v356_2_we1,v356_2_d1,v356_2_q1,v356_3_address0,v356_3_ce0,v356_3_we0,v356_3_d0,v356_3_address1,v356_3_ce1,v356_3_we1,v356_3_d1,v356_3_q1,v358_address0,v358_ce0,v358_we0,v358_d0); 
parameter    ap_ST_fsm_state1 = 34'd1;
parameter    ap_ST_fsm_state2 = 34'd2;
parameter    ap_ST_fsm_state3 = 34'd4;
parameter    ap_ST_fsm_state4 = 34'd8;
parameter    ap_ST_fsm_state5 = 34'd16;
parameter    ap_ST_fsm_state6 = 34'd32;
parameter    ap_ST_fsm_state7 = 34'd64;
parameter    ap_ST_fsm_state8 = 34'd128;
parameter    ap_ST_fsm_state9 = 34'd256;
parameter    ap_ST_fsm_state10 = 34'd512;
parameter    ap_ST_fsm_state11 = 34'd1024;
parameter    ap_ST_fsm_state12 = 34'd2048;
parameter    ap_ST_fsm_state13 = 34'd4096;
parameter    ap_ST_fsm_state14 = 34'd8192;
parameter    ap_ST_fsm_state15 = 34'd16384;
parameter    ap_ST_fsm_state16 = 34'd32768;
parameter    ap_ST_fsm_state17 = 34'd65536;
parameter    ap_ST_fsm_state18 = 34'd131072;
parameter    ap_ST_fsm_state19 = 34'd262144;
parameter    ap_ST_fsm_state20 = 34'd524288;
parameter    ap_ST_fsm_state21 = 34'd1048576;
parameter    ap_ST_fsm_state22 = 34'd2097152;
parameter    ap_ST_fsm_state23 = 34'd4194304;
parameter    ap_ST_fsm_state24 = 34'd8388608;
parameter    ap_ST_fsm_state25 = 34'd16777216;
parameter    ap_ST_fsm_state26 = 34'd33554432;
parameter    ap_ST_fsm_state27 = 34'd67108864;
parameter    ap_ST_fsm_state28 = 34'd134217728;
parameter    ap_ST_fsm_state29 = 34'd268435456;
parameter    ap_ST_fsm_state30 = 34'd536870912;
parameter    ap_ST_fsm_state31 = 34'd1073741824;
parameter    ap_ST_fsm_state32 = 34'd2147483648;
parameter    ap_ST_fsm_state33 = 34'd4294967296;
parameter    ap_ST_fsm_state34 = 34'd8589934592;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] v353_address0;
output   v353_ce0;
input  [31:0] v353_q0;
output  [17:0] v353_address1;
output   v353_ce1;
input  [31:0] v353_q1;
output  [8:0] v355_address0;
output   v355_ce0;
input  [31:0] v355_q0;
output  [8:0] v355_address1;
output   v355_ce1;
input  [31:0] v355_q1;
output  [17:0] v354_address0;
output   v354_ce0;
input  [31:0] v354_q0;
output  [17:0] v354_address1;
output   v354_ce1;
input  [31:0] v354_q1;
output  [8:0] v357_address0;
output   v357_ce0;
input  [31:0] v357_q0;
output  [6:0] v356_0_address0;
output   v356_0_ce0;
output   v356_0_we0;
output  [31:0] v356_0_d0;
output  [6:0] v356_0_address1;
output   v356_0_ce1;
output   v356_0_we1;
output  [31:0] v356_0_d1;
input  [31:0] v356_0_q1;
output  [6:0] v356_1_address0;
output   v356_1_ce0;
output   v356_1_we0;
output  [31:0] v356_1_d0;
output  [6:0] v356_1_address1;
output   v356_1_ce1;
output   v356_1_we1;
output  [31:0] v356_1_d1;
input  [31:0] v356_1_q1;
output  [6:0] v356_2_address0;
output   v356_2_ce0;
output   v356_2_we0;
output  [31:0] v356_2_d0;
output  [6:0] v356_2_address1;
output   v356_2_ce1;
output   v356_2_we1;
output  [31:0] v356_2_d1;
input  [31:0] v356_2_q1;
output  [6:0] v356_3_address0;
output   v356_3_ce0;
output   v356_3_we0;
output  [31:0] v356_3_d0;
output  [6:0] v356_3_address1;
output   v356_3_ce1;
output   v356_3_we1;
output  [31:0] v356_3_d1;
input  [31:0] v356_3_q1;
output  [8:0] v358_address0;
output   v358_ce0;
output   v358_we0;
output  [31:0] v358_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg v353_ce0;
reg v353_ce1;
reg v355_ce0;
reg v355_ce1;
reg v354_ce0;
reg v354_ce1;
reg v357_ce0;
reg[6:0] v356_0_address0;
reg v356_0_ce0;
reg v356_0_we0;
reg[31:0] v356_0_d0;
reg[6:0] v356_0_address1;
reg v356_0_ce1;
reg v356_0_we1;
reg[6:0] v356_1_address0;
reg v356_1_ce0;
reg v356_1_we0;
reg[31:0] v356_1_d0;
reg[6:0] v356_1_address1;
reg v356_1_ce1;
reg v356_1_we1;
reg[6:0] v356_2_address0;
reg v356_2_ce0;
reg v356_2_we0;
reg[31:0] v356_2_d0;
reg[6:0] v356_2_address1;
reg v356_2_ce1;
reg v356_2_we1;
reg[6:0] v356_3_address0;
reg v356_3_ce0;
reg v356_3_we0;
reg[31:0] v356_3_d0;
reg[6:0] v356_3_address1;
reg v356_3_ce1;
reg v356_3_we1;
reg v358_ce0;
reg v358_we0;
(* fsm_encoding = "none" *) reg   [33:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] tmp_reg_281;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_1_reg_286;
reg   [5:0] tmp_4_reg_292;
reg   [0:0] tmp_2_reg_300;
wire   [8:0] v349_1_fu_191_p3;
reg   [8:0] v349_1_reg_305;
wire    ap_CS_fsm_state7;
wire   [8:0] v349_2_fu_199_p3;
reg   [8:0] v349_2_reg_311;
wire    ap_CS_fsm_state11;
wire   [8:0] v349_3_fu_207_p3;
reg   [8:0] v349_3_reg_317;
wire    ap_CS_fsm_state15;
wire   [8:0] v349_4_fu_215_p3;
reg   [8:0] v349_4_reg_323;
wire    ap_CS_fsm_state19;
wire   [8:0] v349_5_fu_223_p5;
reg   [8:0] v349_5_reg_329;
wire    ap_CS_fsm_state23;
wire   [8:0] v349_6_fu_234_p3;
reg   [8:0] v349_6_reg_335;
wire    ap_CS_fsm_state26;
wire   [8:0] v349_7_fu_257_p3;
reg   [8:0] v349_7_reg_344;
wire    ap_CS_fsm_state31;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_done;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_idle;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_ready;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we0;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d0;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we1;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d1;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we0;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d0;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we1;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d1;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we0;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d0;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we1;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d1;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we0;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d0;
wire   [6:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we1;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d1;
wire    grp_kernel_atax_node2_fu_114_ap_start;
wire    grp_kernel_atax_node2_fu_114_ap_done;
wire    grp_kernel_atax_node2_fu_114_ap_idle;
wire    grp_kernel_atax_node2_fu_114_ap_ready;
wire   [17:0] grp_kernel_atax_node2_fu_114_v353_address0;
wire    grp_kernel_atax_node2_fu_114_v353_ce0;
wire   [17:0] grp_kernel_atax_node2_fu_114_v353_address1;
wire    grp_kernel_atax_node2_fu_114_v353_ce1;
wire   [8:0] grp_kernel_atax_node2_fu_114_v355_address0;
wire    grp_kernel_atax_node2_fu_114_v355_ce0;
wire   [8:0] grp_kernel_atax_node2_fu_114_v355_address1;
wire    grp_kernel_atax_node2_fu_114_v355_ce1;
wire   [0:0] grp_kernel_atax_node2_fu_114_v350_din;
wire    grp_kernel_atax_node2_fu_114_v350_write;
wire   [8:0] grp_kernel_atax_node2_fu_114_v358_address0;
wire    grp_kernel_atax_node2_fu_114_v358_ce0;
wire    grp_kernel_atax_node2_fu_114_v358_we0;
wire   [31:0] grp_kernel_atax_node2_fu_114_v358_d0;
reg   [8:0] grp_kernel_atax_node2_fu_114_v175;
wire    grp_kernel_atax_node1_fu_126_ap_start;
wire    grp_kernel_atax_node1_fu_126_ap_done;
wire    grp_kernel_atax_node1_fu_126_ap_idle;
wire    grp_kernel_atax_node1_fu_126_ap_ready;
wire   [17:0] grp_kernel_atax_node1_fu_126_v354_address0;
wire    grp_kernel_atax_node1_fu_126_v354_ce0;
wire   [17:0] grp_kernel_atax_node1_fu_126_v354_address1;
wire    grp_kernel_atax_node1_fu_126_v354_ce1;
wire    grp_kernel_atax_node1_fu_126_v350_read;
wire   [8:0] grp_kernel_atax_node1_fu_126_v357_address0;
wire    grp_kernel_atax_node1_fu_126_v357_ce0;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_0_address0;
wire    grp_kernel_atax_node1_fu_126_v356_0_ce0;
wire    grp_kernel_atax_node1_fu_126_v356_0_we0;
wire   [31:0] grp_kernel_atax_node1_fu_126_v356_0_d0;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_0_address1;
wire    grp_kernel_atax_node1_fu_126_v356_0_ce1;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_1_address0;
wire    grp_kernel_atax_node1_fu_126_v356_1_ce0;
wire    grp_kernel_atax_node1_fu_126_v356_1_we0;
wire   [31:0] grp_kernel_atax_node1_fu_126_v356_1_d0;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_1_address1;
wire    grp_kernel_atax_node1_fu_126_v356_1_ce1;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_2_address0;
wire    grp_kernel_atax_node1_fu_126_v356_2_ce0;
wire    grp_kernel_atax_node1_fu_126_v356_2_we0;
wire   [31:0] grp_kernel_atax_node1_fu_126_v356_2_d0;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_2_address1;
wire    grp_kernel_atax_node1_fu_126_v356_2_ce1;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_3_address0;
wire    grp_kernel_atax_node1_fu_126_v356_3_ce0;
wire    grp_kernel_atax_node1_fu_126_v356_3_we0;
wire   [31:0] grp_kernel_atax_node1_fu_126_v356_3_d0;
wire   [6:0] grp_kernel_atax_node1_fu_126_v356_3_address1;
wire    grp_kernel_atax_node1_fu_126_v356_3_ce1;
reg   [8:0] grp_kernel_atax_node1_fu_126_v4;
reg    grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_kernel_atax_node2_fu_114_ap_start_reg;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state32;
wire    v350_full_n;
reg    v350_write;
reg    grp_kernel_atax_node1_fu_126_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state33;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state34;
wire   [0:0] v350_dout;
wire    v350_empty_n;
reg    v350_read;
reg   [8:0] v349_fu_94;
wire   [8:0] v349_10_fu_247_p2;
wire   [0:0] icmp_ln476_fu_241_p2;
reg   [33:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
reg    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
reg    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
reg    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
reg    ap_ST_fsm_state34_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 34'd1;
#0 grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg = 1'b0;
#0 grp_kernel_atax_node2_fu_114_ap_start_reg = 1'b0;
#0 grp_kernel_atax_node1_fu_126_ap_start_reg = 1'b0;
#0 v349_fu_94 = 9'd0;
end
kernel_atax_kernel_atax_node0_Pipeline_label_2 grp_kernel_atax_node0_Pipeline_label_2_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start),.ap_done(grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_done),.ap_idle(grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_idle),.ap_ready(grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_ready),.v356_0_address0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address0),.v356_0_ce0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce0),.v356_0_we0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we0),.v356_0_d0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d0),.v356_0_address1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address1),.v356_0_ce1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce1),.v356_0_we1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we1),.v356_0_d1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d1),.v356_3_address0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address0),.v356_3_ce0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce0),.v356_3_we0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we0),.v356_3_d0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d0),.v356_3_address1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address1),.v356_3_ce1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce1),.v356_3_we1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we1),.v356_3_d1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d1),.v356_2_address0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address0),.v356_2_ce0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce0),.v356_2_we0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we0),.v356_2_d0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d0),.v356_2_address1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address1),.v356_2_ce1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce1),.v356_2_we1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we1),.v356_2_d1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d1),.v356_1_address0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address0),.v356_1_ce0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce0),.v356_1_we0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we0),.v356_1_d0(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d0),.v356_1_address1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address1),.v356_1_ce1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce1),.v356_1_we1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we1),.v356_1_d1(grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d1));
kernel_atax_kernel_atax_node2 grp_kernel_atax_node2_fu_114(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node2_fu_114_ap_start),.ap_done(grp_kernel_atax_node2_fu_114_ap_done),.ap_idle(grp_kernel_atax_node2_fu_114_ap_idle),.ap_ready(grp_kernel_atax_node2_fu_114_ap_ready),.v353_address0(grp_kernel_atax_node2_fu_114_v353_address0),.v353_ce0(grp_kernel_atax_node2_fu_114_v353_ce0),.v353_q0(v353_q0),.v353_address1(grp_kernel_atax_node2_fu_114_v353_address1),.v353_ce1(grp_kernel_atax_node2_fu_114_v353_ce1),.v353_q1(v353_q1),.v355_address0(grp_kernel_atax_node2_fu_114_v355_address0),.v355_ce0(grp_kernel_atax_node2_fu_114_v355_ce0),.v355_q0(v355_q0),.v355_address1(grp_kernel_atax_node2_fu_114_v355_address1),.v355_ce1(grp_kernel_atax_node2_fu_114_v355_ce1),.v355_q1(v355_q1),.v350_din(grp_kernel_atax_node2_fu_114_v350_din),.v350_full_n(v350_full_n),.v350_write(grp_kernel_atax_node2_fu_114_v350_write),.v358_address0(grp_kernel_atax_node2_fu_114_v358_address0),.v358_ce0(grp_kernel_atax_node2_fu_114_v358_ce0),.v358_we0(grp_kernel_atax_node2_fu_114_v358_we0),.v358_d0(grp_kernel_atax_node2_fu_114_v358_d0),.v175(grp_kernel_atax_node2_fu_114_v175));
kernel_atax_kernel_atax_node1 grp_kernel_atax_node1_fu_126(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node1_fu_126_ap_start),.ap_done(grp_kernel_atax_node1_fu_126_ap_done),.ap_idle(grp_kernel_atax_node1_fu_126_ap_idle),.ap_ready(grp_kernel_atax_node1_fu_126_ap_ready),.v354_address0(grp_kernel_atax_node1_fu_126_v354_address0),.v354_ce0(grp_kernel_atax_node1_fu_126_v354_ce0),.v354_q0(v354_q0),.v354_address1(grp_kernel_atax_node1_fu_126_v354_address1),.v354_ce1(grp_kernel_atax_node1_fu_126_v354_ce1),.v354_q1(v354_q1),.v350_dout(v350_dout),.v350_empty_n(v350_empty_n),.v350_read(grp_kernel_atax_node1_fu_126_v350_read),.v357_address0(grp_kernel_atax_node1_fu_126_v357_address0),.v357_ce0(grp_kernel_atax_node1_fu_126_v357_ce0),.v357_q0(v357_q0),.v356_0_address0(grp_kernel_atax_node1_fu_126_v356_0_address0),.v356_0_ce0(grp_kernel_atax_node1_fu_126_v356_0_ce0),.v356_0_we0(grp_kernel_atax_node1_fu_126_v356_0_we0),.v356_0_d0(grp_kernel_atax_node1_fu_126_v356_0_d0),.v356_0_address1(grp_kernel_atax_node1_fu_126_v356_0_address1),.v356_0_ce1(grp_kernel_atax_node1_fu_126_v356_0_ce1),.v356_0_q1(v356_0_q1),.v356_1_address0(grp_kernel_atax_node1_fu_126_v356_1_address0),.v356_1_ce0(grp_kernel_atax_node1_fu_126_v356_1_ce0),.v356_1_we0(grp_kernel_atax_node1_fu_126_v356_1_we0),.v356_1_d0(grp_kernel_atax_node1_fu_126_v356_1_d0),.v356_1_address1(grp_kernel_atax_node1_fu_126_v356_1_address1),.v356_1_ce1(grp_kernel_atax_node1_fu_126_v356_1_ce1),.v356_1_q1(v356_1_q1),.v356_2_address0(grp_kernel_atax_node1_fu_126_v356_2_address0),.v356_2_ce0(grp_kernel_atax_node1_fu_126_v356_2_ce0),.v356_2_we0(grp_kernel_atax_node1_fu_126_v356_2_we0),.v356_2_d0(grp_kernel_atax_node1_fu_126_v356_2_d0),.v356_2_address1(grp_kernel_atax_node1_fu_126_v356_2_address1),.v356_2_ce1(grp_kernel_atax_node1_fu_126_v356_2_ce1),.v356_2_q1(v356_2_q1),.v356_3_address0(grp_kernel_atax_node1_fu_126_v356_3_address0),.v356_3_ce0(grp_kernel_atax_node1_fu_126_v356_3_ce0),.v356_3_we0(grp_kernel_atax_node1_fu_126_v356_3_we0),.v356_3_d0(grp_kernel_atax_node1_fu_126_v356_3_d0),.v356_3_address1(grp_kernel_atax_node1_fu_126_v356_3_address1),.v356_3_ce1(grp_kernel_atax_node1_fu_126_v356_3_ce1),.v356_3_q1(v356_3_q1),.v4(grp_kernel_atax_node1_fu_126_v4));
kernel_atax_fifo_w1_d2_S v350_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_atax_node2_fu_114_v350_din),.if_full_n(v350_full_n),.if_write(v350_write),.if_dout(v350_dout),.if_empty_n(v350_empty_n),.if_read(v350_read));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_ready == 1'b1)) begin
            grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node1_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_kernel_atax_node1_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node1_fu_126_ap_ready == 1'b1)) begin
            grp_kernel_atax_node1_fu_126_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node2_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
            grp_kernel_atax_node2_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node2_fu_114_ap_ready == 1'b1)) begin
            grp_kernel_atax_node2_fu_114_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v349_fu_94 <= 9'd0;
    end else if (((icmp_ln476_fu_241_p2 == 1'd1) & (grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v349_fu_94 <= v349_10_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_1_reg_286 <= {{v349_fu_94[8:2]}};
        tmp_2_reg_300 <= v349_fu_94[32'd1];
        tmp_4_reg_292 <= {{v349_fu_94[8:3]}};
        tmp_reg_281 <= {{v349_fu_94[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v349_1_reg_305[8 : 1] <= v349_1_fu_191_p3[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v349_2_reg_311[8 : 2] <= v349_2_fu_199_p3[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v349_3_reg_317[8 : 2] <= v349_3_fu_207_p3[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        v349_4_reg_323[8 : 3] <= v349_4_fu_215_p3[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v349_5_reg_329[1] <= v349_5_fu_223_p5[1];
v349_5_reg_329[8 : 3] <= v349_5_fu_223_p5[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v349_6_reg_335[8 : 3] <= v349_6_fu_234_p3[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        v349_7_reg_344[8 : 3] <= v349_7_fu_257_p3[8 : 3];
    end
end
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
    end
end
assign ap_ST_fsm_state21_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
    end
end
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
assign ap_ST_fsm_state27_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state28_blk = 1'b1;
    end else begin
        ap_ST_fsm_state28_blk = 1'b0;
    end
end
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
    end
end
assign ap_ST_fsm_state31_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state32_blk = 1'b1;
    end else begin
        ap_ST_fsm_state32_blk = 1'b0;
    end
end
assign ap_ST_fsm_state33_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state34_blk = 1'b1;
    end else begin
        ap_ST_fsm_state34_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln476_fu_241_p2 == 1'd0) & (grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln476_fu_241_p2 == 1'd0) & (grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_7_reg_344;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_6_reg_335;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_5_reg_329;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_4_reg_323;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_3_reg_317;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_2_reg_311;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_1_reg_305;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_kernel_atax_node1_fu_126_v4 = v349_fu_94;
    end else begin
        grp_kernel_atax_node1_fu_126_v4 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_7_reg_344;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_6_reg_335;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_5_reg_329;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_4_reg_323;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_3_reg_317;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_2_reg_311;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_1_reg_305;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_kernel_atax_node2_fu_114_v175 = v349_fu_94;
    end else begin
        grp_kernel_atax_node2_fu_114_v175 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v350_read = grp_kernel_atax_node1_fu_126_v350_read;
    end else begin
        v350_read = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v350_write = grp_kernel_atax_node2_fu_114_v350_write;
    end else begin
        v350_write = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_ce0 = grp_kernel_atax_node2_fu_114_v353_ce0;
    end else begin
        v353_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_ce1 = grp_kernel_atax_node2_fu_114_v353_ce1;
    end else begin
        v353_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v354_ce0 = grp_kernel_atax_node1_fu_126_v354_ce0;
    end else begin
        v354_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v354_ce1 = grp_kernel_atax_node1_fu_126_v354_ce1;
    end else begin
        v354_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v355_ce0 = grp_kernel_atax_node2_fu_114_v355_ce0;
    end else begin
        v355_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v355_ce1 = grp_kernel_atax_node2_fu_114_v355_ce1;
    end else begin
        v355_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_address0 = grp_kernel_atax_node1_fu_126_v356_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_address0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address0;
    end else begin
        v356_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_address1 = grp_kernel_atax_node1_fu_126_v356_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_address1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_address1;
    end else begin
        v356_0_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_ce0 = grp_kernel_atax_node1_fu_126_v356_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_ce0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce0;
    end else begin
        v356_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_ce1 = grp_kernel_atax_node1_fu_126_v356_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_ce1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_ce1;
    end else begin
        v356_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_d0 = grp_kernel_atax_node1_fu_126_v356_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_d0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d0;
    end else begin
        v356_0_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_0_we0 = grp_kernel_atax_node1_fu_126_v356_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_we0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we0;
    end else begin
        v356_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_0_we1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_we1;
    end else begin
        v356_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_address0 = grp_kernel_atax_node1_fu_126_v356_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_address0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address0;
    end else begin
        v356_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_address1 = grp_kernel_atax_node1_fu_126_v356_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_address1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_address1;
    end else begin
        v356_1_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_ce0 = grp_kernel_atax_node1_fu_126_v356_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_ce0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce0;
    end else begin
        v356_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_ce1 = grp_kernel_atax_node1_fu_126_v356_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_ce1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_ce1;
    end else begin
        v356_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_d0 = grp_kernel_atax_node1_fu_126_v356_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_d0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d0;
    end else begin
        v356_1_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_1_we0 = grp_kernel_atax_node1_fu_126_v356_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_we0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we0;
    end else begin
        v356_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_1_we1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_we1;
    end else begin
        v356_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_address0 = grp_kernel_atax_node1_fu_126_v356_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_address0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address0;
    end else begin
        v356_2_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_address1 = grp_kernel_atax_node1_fu_126_v356_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_address1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_address1;
    end else begin
        v356_2_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_ce0 = grp_kernel_atax_node1_fu_126_v356_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_ce0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce0;
    end else begin
        v356_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_ce1 = grp_kernel_atax_node1_fu_126_v356_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_ce1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_ce1;
    end else begin
        v356_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_d0 = grp_kernel_atax_node1_fu_126_v356_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_d0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d0;
    end else begin
        v356_2_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_2_we0 = grp_kernel_atax_node1_fu_126_v356_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_we0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we0;
    end else begin
        v356_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_2_we1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_we1;
    end else begin
        v356_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_address0 = grp_kernel_atax_node1_fu_126_v356_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_address0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address0;
    end else begin
        v356_3_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_address1 = grp_kernel_atax_node1_fu_126_v356_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_address1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_address1;
    end else begin
        v356_3_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_ce0 = grp_kernel_atax_node1_fu_126_v356_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_ce0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce0;
    end else begin
        v356_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_ce1 = grp_kernel_atax_node1_fu_126_v356_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_ce1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_ce1;
    end else begin
        v356_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_d0 = grp_kernel_atax_node1_fu_126_v356_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_d0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d0;
    end else begin
        v356_3_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v356_3_we0 = grp_kernel_atax_node1_fu_126_v356_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_we0 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we0;
    end else begin
        v356_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_3_we1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_we1;
    end else begin
        v356_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state26))) begin
        v357_ce0 = grp_kernel_atax_node1_fu_126_v357_ce0;
    end else begin
        v357_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v358_ce0 = grp_kernel_atax_node2_fu_114_v358_ce0;
    end else begin
        v358_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v358_we0 = grp_kernel_atax_node2_fu_114_v358_we0;
    end else begin
        v358_we0 = 1'b0;
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
            if (((grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((icmp_ln476_fu_241_p2 == 1'd0) & (grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln476_fu_241_p2 == 1'd1) & (grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state28))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((grp_kernel_atax_node2_fu_114_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            if (((grp_kernel_atax_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start = grp_kernel_atax_node0_Pipeline_label_2_fu_102_ap_start_reg;
assign grp_kernel_atax_node1_fu_126_ap_start = grp_kernel_atax_node1_fu_126_ap_start_reg;
assign grp_kernel_atax_node2_fu_114_ap_start = grp_kernel_atax_node2_fu_114_ap_start_reg;
assign icmp_ln476_fu_241_p2 = ((v349_6_fu_234_p3 < 9'd390) ? 1'b1 : 1'b0);
assign v349_10_fu_247_p2 = (v349_fu_94 + 9'd8);
assign v349_1_fu_191_p3 = {{tmp_reg_281}, {1'd1}};
assign v349_2_fu_199_p3 = {{tmp_1_reg_286}, {2'd2}};
assign v349_3_fu_207_p3 = {{tmp_1_reg_286}, {2'd3}};
assign v349_4_fu_215_p3 = {{tmp_4_reg_292}, {3'd4}};
assign v349_5_fu_223_p5 = {{{{tmp_4_reg_292}, {1'd1}}, {tmp_2_reg_300}}, {1'd1}};
assign v349_6_fu_234_p3 = {{tmp_4_reg_292}, {3'd6}};
assign v349_7_fu_257_p3 = {{tmp_4_reg_292}, {3'd7}};
assign v353_address0 = grp_kernel_atax_node2_fu_114_v353_address0;
assign v353_address1 = grp_kernel_atax_node2_fu_114_v353_address1;
assign v354_address0 = grp_kernel_atax_node1_fu_126_v354_address0;
assign v354_address1 = grp_kernel_atax_node1_fu_126_v354_address1;
assign v355_address0 = grp_kernel_atax_node2_fu_114_v355_address0;
assign v355_address1 = grp_kernel_atax_node2_fu_114_v355_address1;
assign v356_0_d1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_0_d1;
assign v356_1_d1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_1_d1;
assign v356_2_d1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_2_d1;
assign v356_3_d1 = grp_kernel_atax_node0_Pipeline_label_2_fu_102_v356_3_d1;
assign v357_address0 = grp_kernel_atax_node1_fu_126_v357_address0;
assign v358_address0 = grp_kernel_atax_node2_fu_114_v358_address0;
assign v358_d0 = grp_kernel_atax_node2_fu_114_v358_d0;
always @ (posedge ap_clk) begin
    v349_1_reg_305[0] <= 1'b1;
    v349_2_reg_311[1:0] <= 2'b10;
    v349_3_reg_317[1:0] <= 2'b11;
    v349_4_reg_323[2:0] <= 3'b100;
    v349_5_reg_329[0] <= 1'b1;
    v349_5_reg_329[2] <= 1'b1;
    v349_6_reg_335[2:0] <= 3'b110;
    v349_7_reg_344[2:0] <= 3'b111;
end
endmodule 