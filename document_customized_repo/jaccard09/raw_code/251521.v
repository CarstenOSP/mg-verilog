module kernel_atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v351,v352,v353_address0,v353_ce0,v353_q0,v353_address1,v353_ce1,v353_q1,v354_address0,v354_ce0,v354_q0,v354_address1,v354_ce1,v354_q1,v355_address0,v355_ce0,v355_q0,v355_address1,v355_ce1,v355_q1,v356_0_address0,v356_0_ce0,v356_0_we0,v356_0_d0,v356_0_q0,v356_0_address1,v356_0_ce1,v356_0_we1,v356_0_d1,v356_0_q1,v356_1_address0,v356_1_ce0,v356_1_we0,v356_1_d0,v356_1_q0,v356_1_address1,v356_1_ce1,v356_1_we1,v356_1_d1,v356_1_q1,v356_2_address0,v356_2_ce0,v356_2_we0,v356_2_d0,v356_2_q0,v356_2_address1,v356_2_ce1,v356_2_we1,v356_2_d1,v356_2_q1,v356_3_address0,v356_3_ce0,v356_3_we0,v356_3_d0,v356_3_q0,v356_3_address1,v356_3_ce1,v356_3_we1,v356_3_d1,v356_3_q1,v356_4_address0,v356_4_ce0,v356_4_we0,v356_4_d0,v356_4_q0,v356_4_address1,v356_4_ce1,v356_4_we1,v356_4_d1,v356_4_q1,v356_5_address0,v356_5_ce0,v356_5_we0,v356_5_d0,v356_5_q0,v356_5_address1,v356_5_ce1,v356_5_we1,v356_5_d1,v356_5_q1,v356_6_address0,v356_6_ce0,v356_6_we0,v356_6_d0,v356_6_q0,v356_6_address1,v356_6_ce1,v356_6_we1,v356_6_d1,v356_6_q1,v356_7_address0,v356_7_ce0,v356_7_we0,v356_7_d0,v356_7_q0,v356_7_address1,v356_7_ce1,v356_7_we1,v356_7_d1,v356_7_q1,v357_address0,v357_ce0,v357_q0,v358_address0,v358_ce0,v358_we0,v358_d0); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v351;
input  [31:0] v352;
output  [17:0] v353_address0;
output   v353_ce0;
input  [31:0] v353_q0;
output  [17:0] v353_address1;
output   v353_ce1;
input  [31:0] v353_q1;
output  [17:0] v354_address0;
output   v354_ce0;
input  [31:0] v354_q0;
output  [17:0] v354_address1;
output   v354_ce1;
input  [31:0] v354_q1;
output  [8:0] v355_address0;
output   v355_ce0;
input  [31:0] v355_q0;
output  [8:0] v355_address1;
output   v355_ce1;
input  [31:0] v355_q1;
output  [5:0] v356_0_address0;
output   v356_0_ce0;
output   v356_0_we0;
output  [31:0] v356_0_d0;
input  [31:0] v356_0_q0;
output  [5:0] v356_0_address1;
output   v356_0_ce1;
output   v356_0_we1;
output  [31:0] v356_0_d1;
input  [31:0] v356_0_q1;
output  [5:0] v356_1_address0;
output   v356_1_ce0;
output   v356_1_we0;
output  [31:0] v356_1_d0;
input  [31:0] v356_1_q0;
output  [5:0] v356_1_address1;
output   v356_1_ce1;
output   v356_1_we1;
output  [31:0] v356_1_d1;
input  [31:0] v356_1_q1;
output  [5:0] v356_2_address0;
output   v356_2_ce0;
output   v356_2_we0;
output  [31:0] v356_2_d0;
input  [31:0] v356_2_q0;
output  [5:0] v356_2_address1;
output   v356_2_ce1;
output   v356_2_we1;
output  [31:0] v356_2_d1;
input  [31:0] v356_2_q1;
output  [5:0] v356_3_address0;
output   v356_3_ce0;
output   v356_3_we0;
output  [31:0] v356_3_d0;
input  [31:0] v356_3_q0;
output  [5:0] v356_3_address1;
output   v356_3_ce1;
output   v356_3_we1;
output  [31:0] v356_3_d1;
input  [31:0] v356_3_q1;
output  [5:0] v356_4_address0;
output   v356_4_ce0;
output   v356_4_we0;
output  [31:0] v356_4_d0;
input  [31:0] v356_4_q0;
output  [5:0] v356_4_address1;
output   v356_4_ce1;
output   v356_4_we1;
output  [31:0] v356_4_d1;
input  [31:0] v356_4_q1;
output  [5:0] v356_5_address0;
output   v356_5_ce0;
output   v356_5_we0;
output  [31:0] v356_5_d0;
input  [31:0] v356_5_q0;
output  [5:0] v356_5_address1;
output   v356_5_ce1;
output   v356_5_we1;
output  [31:0] v356_5_d1;
input  [31:0] v356_5_q1;
output  [5:0] v356_6_address0;
output   v356_6_ce0;
output   v356_6_we0;
output  [31:0] v356_6_d0;
input  [31:0] v356_6_q0;
output  [5:0] v356_6_address1;
output   v356_6_ce1;
output   v356_6_we1;
output  [31:0] v356_6_d1;
input  [31:0] v356_6_q1;
output  [5:0] v356_7_address0;
output   v356_7_ce0;
output   v356_7_we0;
output  [31:0] v356_7_d0;
input  [31:0] v356_7_q0;
output  [5:0] v356_7_address1;
output   v356_7_ce1;
output   v356_7_we1;
output  [31:0] v356_7_d1;
input  [31:0] v356_7_q1;
output  [8:0] v357_address0;
output   v357_ce0;
input  [31:0] v357_q0;
output  [8:0] v358_address0;
output   v358_ce0;
output   v358_we0;
output  [31:0] v358_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_kernel_atax_node0_fu_50_ap_start;
wire    grp_kernel_atax_node0_fu_50_ap_done;
wire    grp_kernel_atax_node0_fu_50_ap_idle;
wire    grp_kernel_atax_node0_fu_50_ap_ready;
wire   [17:0] grp_kernel_atax_node0_fu_50_v353_address0;
wire    grp_kernel_atax_node0_fu_50_v353_ce0;
wire   [17:0] grp_kernel_atax_node0_fu_50_v353_address1;
wire    grp_kernel_atax_node0_fu_50_v353_ce1;
wire   [8:0] grp_kernel_atax_node0_fu_50_v355_address0;
wire    grp_kernel_atax_node0_fu_50_v355_ce0;
wire   [8:0] grp_kernel_atax_node0_fu_50_v355_address1;
wire    grp_kernel_atax_node0_fu_50_v355_ce1;
wire   [17:0] grp_kernel_atax_node0_fu_50_v354_address0;
wire    grp_kernel_atax_node0_fu_50_v354_ce0;
wire   [17:0] grp_kernel_atax_node0_fu_50_v354_address1;
wire    grp_kernel_atax_node0_fu_50_v354_ce1;
wire   [8:0] grp_kernel_atax_node0_fu_50_v357_address0;
wire    grp_kernel_atax_node0_fu_50_v357_ce0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_0_address0;
wire    grp_kernel_atax_node0_fu_50_v356_0_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_0_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_0_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_0_address1;
wire    grp_kernel_atax_node0_fu_50_v356_0_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_0_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_0_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_1_address0;
wire    grp_kernel_atax_node0_fu_50_v356_1_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_1_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_1_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_1_address1;
wire    grp_kernel_atax_node0_fu_50_v356_1_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_1_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_1_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_2_address0;
wire    grp_kernel_atax_node0_fu_50_v356_2_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_2_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_2_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_2_address1;
wire    grp_kernel_atax_node0_fu_50_v356_2_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_2_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_2_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_3_address0;
wire    grp_kernel_atax_node0_fu_50_v356_3_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_3_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_3_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_3_address1;
wire    grp_kernel_atax_node0_fu_50_v356_3_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_3_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_3_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_4_address0;
wire    grp_kernel_atax_node0_fu_50_v356_4_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_4_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_4_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_4_address1;
wire    grp_kernel_atax_node0_fu_50_v356_4_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_4_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_4_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_5_address0;
wire    grp_kernel_atax_node0_fu_50_v356_5_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_5_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_5_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_5_address1;
wire    grp_kernel_atax_node0_fu_50_v356_5_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_5_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_5_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_6_address0;
wire    grp_kernel_atax_node0_fu_50_v356_6_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_6_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_6_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_6_address1;
wire    grp_kernel_atax_node0_fu_50_v356_6_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_6_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_6_d1;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_7_address0;
wire    grp_kernel_atax_node0_fu_50_v356_7_ce0;
wire    grp_kernel_atax_node0_fu_50_v356_7_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_7_d0;
wire   [5:0] grp_kernel_atax_node0_fu_50_v356_7_address1;
wire    grp_kernel_atax_node0_fu_50_v356_7_ce1;
wire    grp_kernel_atax_node0_fu_50_v356_7_we1;
wire   [31:0] grp_kernel_atax_node0_fu_50_v356_7_d1;
wire   [8:0] grp_kernel_atax_node0_fu_50_v358_address0;
wire    grp_kernel_atax_node0_fu_50_v358_ce0;
wire    grp_kernel_atax_node0_fu_50_v358_we0;
wire   [31:0] grp_kernel_atax_node0_fu_50_v358_d0;
reg    grp_kernel_atax_node0_fu_50_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_kernel_atax_node0_fu_50_ap_start_reg = 1'b0;
end
kernel_atax_kernel_atax_node0 grp_kernel_atax_node0_fu_50(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node0_fu_50_ap_start),.ap_done(grp_kernel_atax_node0_fu_50_ap_done),.ap_idle(grp_kernel_atax_node0_fu_50_ap_idle),.ap_ready(grp_kernel_atax_node0_fu_50_ap_ready),.v353_address0(grp_kernel_atax_node0_fu_50_v353_address0),.v353_ce0(grp_kernel_atax_node0_fu_50_v353_ce0),.v353_q0(v353_q0),.v353_address1(grp_kernel_atax_node0_fu_50_v353_address1),.v353_ce1(grp_kernel_atax_node0_fu_50_v353_ce1),.v353_q1(v353_q1),.v355_address0(grp_kernel_atax_node0_fu_50_v355_address0),.v355_ce0(grp_kernel_atax_node0_fu_50_v355_ce0),.v355_q0(v355_q0),.v355_address1(grp_kernel_atax_node0_fu_50_v355_address1),.v355_ce1(grp_kernel_atax_node0_fu_50_v355_ce1),.v355_q1(v355_q1),.v354_address0(grp_kernel_atax_node0_fu_50_v354_address0),.v354_ce0(grp_kernel_atax_node0_fu_50_v354_ce0),.v354_q0(v354_q0),.v354_address1(grp_kernel_atax_node0_fu_50_v354_address1),.v354_ce1(grp_kernel_atax_node0_fu_50_v354_ce1),.v354_q1(v354_q1),.v357_address0(grp_kernel_atax_node0_fu_50_v357_address0),.v357_ce0(grp_kernel_atax_node0_fu_50_v357_ce0),.v357_q0(v357_q0),.v356_0_address0(grp_kernel_atax_node0_fu_50_v356_0_address0),.v356_0_ce0(grp_kernel_atax_node0_fu_50_v356_0_ce0),.v356_0_we0(grp_kernel_atax_node0_fu_50_v356_0_we0),.v356_0_d0(grp_kernel_atax_node0_fu_50_v356_0_d0),.v356_0_q0(v356_0_q0),.v356_0_address1(grp_kernel_atax_node0_fu_50_v356_0_address1),.v356_0_ce1(grp_kernel_atax_node0_fu_50_v356_0_ce1),.v356_0_we1(grp_kernel_atax_node0_fu_50_v356_0_we1),.v356_0_d1(grp_kernel_atax_node0_fu_50_v356_0_d1),.v356_0_q1(v356_0_q1),.v356_1_address0(grp_kernel_atax_node0_fu_50_v356_1_address0),.v356_1_ce0(grp_kernel_atax_node0_fu_50_v356_1_ce0),.v356_1_we0(grp_kernel_atax_node0_fu_50_v356_1_we0),.v356_1_d0(grp_kernel_atax_node0_fu_50_v356_1_d0),.v356_1_q0(v356_1_q0),.v356_1_address1(grp_kernel_atax_node0_fu_50_v356_1_address1),.v356_1_ce1(grp_kernel_atax_node0_fu_50_v356_1_ce1),.v356_1_we1(grp_kernel_atax_node0_fu_50_v356_1_we1),.v356_1_d1(grp_kernel_atax_node0_fu_50_v356_1_d1),.v356_1_q1(v356_1_q1),.v356_2_address0(grp_kernel_atax_node0_fu_50_v356_2_address0),.v356_2_ce0(grp_kernel_atax_node0_fu_50_v356_2_ce0),.v356_2_we0(grp_kernel_atax_node0_fu_50_v356_2_we0),.v356_2_d0(grp_kernel_atax_node0_fu_50_v356_2_d0),.v356_2_q0(v356_2_q0),.v356_2_address1(grp_kernel_atax_node0_fu_50_v356_2_address1),.v356_2_ce1(grp_kernel_atax_node0_fu_50_v356_2_ce1),.v356_2_we1(grp_kernel_atax_node0_fu_50_v356_2_we1),.v356_2_d1(grp_kernel_atax_node0_fu_50_v356_2_d1),.v356_2_q1(v356_2_q1),.v356_3_address0(grp_kernel_atax_node0_fu_50_v356_3_address0),.v356_3_ce0(grp_kernel_atax_node0_fu_50_v356_3_ce0),.v356_3_we0(grp_kernel_atax_node0_fu_50_v356_3_we0),.v356_3_d0(grp_kernel_atax_node0_fu_50_v356_3_d0),.v356_3_q0(v356_3_q0),.v356_3_address1(grp_kernel_atax_node0_fu_50_v356_3_address1),.v356_3_ce1(grp_kernel_atax_node0_fu_50_v356_3_ce1),.v356_3_we1(grp_kernel_atax_node0_fu_50_v356_3_we1),.v356_3_d1(grp_kernel_atax_node0_fu_50_v356_3_d1),.v356_3_q1(v356_3_q1),.v356_4_address0(grp_kernel_atax_node0_fu_50_v356_4_address0),.v356_4_ce0(grp_kernel_atax_node0_fu_50_v356_4_ce0),.v356_4_we0(grp_kernel_atax_node0_fu_50_v356_4_we0),.v356_4_d0(grp_kernel_atax_node0_fu_50_v356_4_d0),.v356_4_q0(v356_4_q0),.v356_4_address1(grp_kernel_atax_node0_fu_50_v356_4_address1),.v356_4_ce1(grp_kernel_atax_node0_fu_50_v356_4_ce1),.v356_4_we1(grp_kernel_atax_node0_fu_50_v356_4_we1),.v356_4_d1(grp_kernel_atax_node0_fu_50_v356_4_d1),.v356_4_q1(v356_4_q1),.v356_5_address0(grp_kernel_atax_node0_fu_50_v356_5_address0),.v356_5_ce0(grp_kernel_atax_node0_fu_50_v356_5_ce0),.v356_5_we0(grp_kernel_atax_node0_fu_50_v356_5_we0),.v356_5_d0(grp_kernel_atax_node0_fu_50_v356_5_d0),.v356_5_q0(v356_5_q0),.v356_5_address1(grp_kernel_atax_node0_fu_50_v356_5_address1),.v356_5_ce1(grp_kernel_atax_node0_fu_50_v356_5_ce1),.v356_5_we1(grp_kernel_atax_node0_fu_50_v356_5_we1),.v356_5_d1(grp_kernel_atax_node0_fu_50_v356_5_d1),.v356_5_q1(v356_5_q1),.v356_6_address0(grp_kernel_atax_node0_fu_50_v356_6_address0),.v356_6_ce0(grp_kernel_atax_node0_fu_50_v356_6_ce0),.v356_6_we0(grp_kernel_atax_node0_fu_50_v356_6_we0),.v356_6_d0(grp_kernel_atax_node0_fu_50_v356_6_d0),.v356_6_q0(v356_6_q0),.v356_6_address1(grp_kernel_atax_node0_fu_50_v356_6_address1),.v356_6_ce1(grp_kernel_atax_node0_fu_50_v356_6_ce1),.v356_6_we1(grp_kernel_atax_node0_fu_50_v356_6_we1),.v356_6_d1(grp_kernel_atax_node0_fu_50_v356_6_d1),.v356_6_q1(v356_6_q1),.v356_7_address0(grp_kernel_atax_node0_fu_50_v356_7_address0),.v356_7_ce0(grp_kernel_atax_node0_fu_50_v356_7_ce0),.v356_7_we0(grp_kernel_atax_node0_fu_50_v356_7_we0),.v356_7_d0(grp_kernel_atax_node0_fu_50_v356_7_d0),.v356_7_q0(v356_7_q0),.v356_7_address1(grp_kernel_atax_node0_fu_50_v356_7_address1),.v356_7_ce1(grp_kernel_atax_node0_fu_50_v356_7_ce1),.v356_7_we1(grp_kernel_atax_node0_fu_50_v356_7_we1),.v356_7_d1(grp_kernel_atax_node0_fu_50_v356_7_d1),.v356_7_q1(v356_7_q1),.v358_address0(grp_kernel_atax_node0_fu_50_v358_address0),.v358_ce0(grp_kernel_atax_node0_fu_50_v358_ce0),.v358_we0(grp_kernel_atax_node0_fu_50_v358_we0),.v358_d0(grp_kernel_atax_node0_fu_50_v358_d0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node0_fu_50_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_atax_node0_fu_50_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node0_fu_50_ap_ready == 1'b1)) begin
            grp_kernel_atax_node0_fu_50_ap_start_reg <= 1'b0;
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
    if ((grp_kernel_atax_node0_fu_50_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_kernel_atax_node0_fu_50_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (grp_kernel_atax_node0_fu_50_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_kernel_atax_node0_fu_50_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign grp_kernel_atax_node0_fu_50_ap_start = grp_kernel_atax_node0_fu_50_ap_start_reg;
assign v353_address0 = grp_kernel_atax_node0_fu_50_v353_address0;
assign v353_address1 = grp_kernel_atax_node0_fu_50_v353_address1;
assign v353_ce0 = grp_kernel_atax_node0_fu_50_v353_ce0;
assign v353_ce1 = grp_kernel_atax_node0_fu_50_v353_ce1;
assign v354_address0 = grp_kernel_atax_node0_fu_50_v354_address0;
assign v354_address1 = grp_kernel_atax_node0_fu_50_v354_address1;
assign v354_ce0 = grp_kernel_atax_node0_fu_50_v354_ce0;
assign v354_ce1 = grp_kernel_atax_node0_fu_50_v354_ce1;
assign v355_address0 = grp_kernel_atax_node0_fu_50_v355_address0;
assign v355_address1 = grp_kernel_atax_node0_fu_50_v355_address1;
assign v355_ce0 = grp_kernel_atax_node0_fu_50_v355_ce0;
assign v355_ce1 = grp_kernel_atax_node0_fu_50_v355_ce1;
assign v356_0_address0 = grp_kernel_atax_node0_fu_50_v356_0_address0;
assign v356_0_address1 = grp_kernel_atax_node0_fu_50_v356_0_address1;
assign v356_0_ce0 = grp_kernel_atax_node0_fu_50_v356_0_ce0;
assign v356_0_ce1 = grp_kernel_atax_node0_fu_50_v356_0_ce1;
assign v356_0_d0 = grp_kernel_atax_node0_fu_50_v356_0_d0;
assign v356_0_d1 = grp_kernel_atax_node0_fu_50_v356_0_d1;
assign v356_0_we0 = grp_kernel_atax_node0_fu_50_v356_0_we0;
assign v356_0_we1 = grp_kernel_atax_node0_fu_50_v356_0_we1;
assign v356_1_address0 = grp_kernel_atax_node0_fu_50_v356_1_address0;
assign v356_1_address1 = grp_kernel_atax_node0_fu_50_v356_1_address1;
assign v356_1_ce0 = grp_kernel_atax_node0_fu_50_v356_1_ce0;
assign v356_1_ce1 = grp_kernel_atax_node0_fu_50_v356_1_ce1;
assign v356_1_d0 = grp_kernel_atax_node0_fu_50_v356_1_d0;
assign v356_1_d1 = grp_kernel_atax_node0_fu_50_v356_1_d1;
assign v356_1_we0 = grp_kernel_atax_node0_fu_50_v356_1_we0;
assign v356_1_we1 = grp_kernel_atax_node0_fu_50_v356_1_we1;
assign v356_2_address0 = grp_kernel_atax_node0_fu_50_v356_2_address0;
assign v356_2_address1 = grp_kernel_atax_node0_fu_50_v356_2_address1;
assign v356_2_ce0 = grp_kernel_atax_node0_fu_50_v356_2_ce0;
assign v356_2_ce1 = grp_kernel_atax_node0_fu_50_v356_2_ce1;
assign v356_2_d0 = grp_kernel_atax_node0_fu_50_v356_2_d0;
assign v356_2_d1 = grp_kernel_atax_node0_fu_50_v356_2_d1;
assign v356_2_we0 = grp_kernel_atax_node0_fu_50_v356_2_we0;
assign v356_2_we1 = grp_kernel_atax_node0_fu_50_v356_2_we1;
assign v356_3_address0 = grp_kernel_atax_node0_fu_50_v356_3_address0;
assign v356_3_address1 = grp_kernel_atax_node0_fu_50_v356_3_address1;
assign v356_3_ce0 = grp_kernel_atax_node0_fu_50_v356_3_ce0;
assign v356_3_ce1 = grp_kernel_atax_node0_fu_50_v356_3_ce1;
assign v356_3_d0 = grp_kernel_atax_node0_fu_50_v356_3_d0;
assign v356_3_d1 = grp_kernel_atax_node0_fu_50_v356_3_d1;
assign v356_3_we0 = grp_kernel_atax_node0_fu_50_v356_3_we0;
assign v356_3_we1 = grp_kernel_atax_node0_fu_50_v356_3_we1;
assign v356_4_address0 = grp_kernel_atax_node0_fu_50_v356_4_address0;
assign v356_4_address1 = grp_kernel_atax_node0_fu_50_v356_4_address1;
assign v356_4_ce0 = grp_kernel_atax_node0_fu_50_v356_4_ce0;
assign v356_4_ce1 = grp_kernel_atax_node0_fu_50_v356_4_ce1;
assign v356_4_d0 = grp_kernel_atax_node0_fu_50_v356_4_d0;
assign v356_4_d1 = grp_kernel_atax_node0_fu_50_v356_4_d1;
assign v356_4_we0 = grp_kernel_atax_node0_fu_50_v356_4_we0;
assign v356_4_we1 = grp_kernel_atax_node0_fu_50_v356_4_we1;
assign v356_5_address0 = grp_kernel_atax_node0_fu_50_v356_5_address0;
assign v356_5_address1 = grp_kernel_atax_node0_fu_50_v356_5_address1;
assign v356_5_ce0 = grp_kernel_atax_node0_fu_50_v356_5_ce0;
assign v356_5_ce1 = grp_kernel_atax_node0_fu_50_v356_5_ce1;
assign v356_5_d0 = grp_kernel_atax_node0_fu_50_v356_5_d0;
assign v356_5_d1 = grp_kernel_atax_node0_fu_50_v356_5_d1;
assign v356_5_we0 = grp_kernel_atax_node0_fu_50_v356_5_we0;
assign v356_5_we1 = grp_kernel_atax_node0_fu_50_v356_5_we1;
assign v356_6_address0 = grp_kernel_atax_node0_fu_50_v356_6_address0;
assign v356_6_address1 = grp_kernel_atax_node0_fu_50_v356_6_address1;
assign v356_6_ce0 = grp_kernel_atax_node0_fu_50_v356_6_ce0;
assign v356_6_ce1 = grp_kernel_atax_node0_fu_50_v356_6_ce1;
assign v356_6_d0 = grp_kernel_atax_node0_fu_50_v356_6_d0;
assign v356_6_d1 = grp_kernel_atax_node0_fu_50_v356_6_d1;
assign v356_6_we0 = grp_kernel_atax_node0_fu_50_v356_6_we0;
assign v356_6_we1 = grp_kernel_atax_node0_fu_50_v356_6_we1;
assign v356_7_address0 = grp_kernel_atax_node0_fu_50_v356_7_address0;
assign v356_7_address1 = grp_kernel_atax_node0_fu_50_v356_7_address1;
assign v356_7_ce0 = grp_kernel_atax_node0_fu_50_v356_7_ce0;
assign v356_7_ce1 = grp_kernel_atax_node0_fu_50_v356_7_ce1;
assign v356_7_d0 = grp_kernel_atax_node0_fu_50_v356_7_d0;
assign v356_7_d1 = grp_kernel_atax_node0_fu_50_v356_7_d1;
assign v356_7_we0 = grp_kernel_atax_node0_fu_50_v356_7_we0;
assign v356_7_we1 = grp_kernel_atax_node0_fu_50_v356_7_we1;
assign v357_address0 = grp_kernel_atax_node0_fu_50_v357_address0;
assign v357_ce0 = grp_kernel_atax_node0_fu_50_v357_ce0;
assign v358_address0 = grp_kernel_atax_node0_fu_50_v358_address0;
assign v358_ce0 = grp_kernel_atax_node0_fu_50_v358_ce0;
assign v358_d0 = grp_kernel_atax_node0_fu_50_v358_d0;
assign v358_we0 = grp_kernel_atax_node0_fu_50_v358_we0;
endmodule 