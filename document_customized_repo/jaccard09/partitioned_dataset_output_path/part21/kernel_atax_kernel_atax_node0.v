
module kernel_atax_kernel_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v353_0_address0,v353_0_ce0,v353_0_q0,v353_0_address1,v353_0_ce1,v353_0_q1,v353_1_address0,v353_1_ce0,v353_1_q0,v353_1_address1,v353_1_ce1,v353_1_q1,v353_2_address0,v353_2_ce0,v353_2_q0,v353_2_address1,v353_2_ce1,v353_2_q1,v353_3_address0,v353_3_ce0,v353_3_q0,v353_3_address1,v353_3_ce1,v353_3_q1,v355_address0,v355_ce0,v355_q0,v355_address1,v355_ce1,v355_q1,v354_address0,v354_ce0,v354_q0,v354_address1,v354_ce1,v354_q1,v357_address0,v357_ce0,v357_q0,v356_address0,v356_ce0,v356_we0,v356_d0,v356_q0,v356_address1,v356_ce1,v356_we1,v356_d1,v356_q1,v358_address0,v358_ce0,v358_we0,v358_d0);  
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v353_0_address0;
output   v353_0_ce0;
input  [31:0] v353_0_q0;
output  [15:0] v353_0_address1;
output   v353_0_ce1;
input  [31:0] v353_0_q1;
output  [15:0] v353_1_address0;
output   v353_1_ce0;
input  [31:0] v353_1_q0;
output  [15:0] v353_1_address1;
output   v353_1_ce1;
input  [31:0] v353_1_q1;
output  [15:0] v353_2_address0;
output   v353_2_ce0;
input  [31:0] v353_2_q0;
output  [15:0] v353_2_address1;
output   v353_2_ce1;
input  [31:0] v353_2_q1;
output  [15:0] v353_3_address0;
output   v353_3_ce0;
input  [31:0] v353_3_q0;
output  [15:0] v353_3_address1;
output   v353_3_ce1;
input  [31:0] v353_3_q1;
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
output  [8:0] v356_address0;
output   v356_ce0;
output   v356_we0;
output  [31:0] v356_d0;
input  [31:0] v356_q0;
output  [8:0] v356_address1;
output   v356_ce1;
output   v356_we1;
output  [31:0] v356_d1;
input  [31:0] v356_q1;
output  [8:0] v358_address0;
output   v358_ce0;
output   v358_we0;
output  [31:0] v358_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg v353_0_ce0;
reg v353_0_ce1;
reg v353_1_ce0;
reg v353_1_ce1;
reg v353_2_ce0;
reg v353_2_ce1;
reg v353_3_ce0;
reg v353_3_ce1;
reg v355_ce0;
reg v355_ce1;
reg v354_ce0;
reg v354_ce1;
reg v357_ce0;
reg[8:0] v356_address0;
reg v356_ce0;
reg v356_we0;
reg[31:0] v356_d0;
reg[8:0] v356_address1;
reg v356_ce1;
reg v356_we1;
reg[31:0] v356_d1;
reg v358_ce0;
reg v358_we0;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] tmp_reg_206;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_1_reg_211;
wire   [8:0] v349_1_fu_151_p3;
reg   [8:0] v349_1_reg_217;
wire    ap_CS_fsm_state7;
wire   [8:0] v349_2_fu_159_p3;
reg   [8:0] v349_2_reg_223;
wire    ap_CS_fsm_state10;
wire   [8:0] v349_3_fu_182_p3;
reg   [8:0] v349_3_reg_232;
wire    ap_CS_fsm_state15;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_done;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_idle;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_ready;
wire   [8:0] grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce0;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we0;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d0;
wire   [8:0] grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce1;
wire    grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we1;
wire   [31:0] grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d1;
wire    grp_kernel_atax_node2_fu_92_ap_start;
wire    grp_kernel_atax_node2_fu_92_ap_done;
wire    grp_kernel_atax_node2_fu_92_ap_idle;
wire    grp_kernel_atax_node2_fu_92_ap_ready;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_0_address0;
wire    grp_kernel_atax_node2_fu_92_v353_0_ce0;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_0_address1;
wire    grp_kernel_atax_node2_fu_92_v353_0_ce1;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_1_address0;
wire    grp_kernel_atax_node2_fu_92_v353_1_ce0;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_1_address1;
wire    grp_kernel_atax_node2_fu_92_v353_1_ce1;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_2_address0;
wire    grp_kernel_atax_node2_fu_92_v353_2_ce0;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_2_address1;
wire    grp_kernel_atax_node2_fu_92_v353_2_ce1;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_3_address0;
wire    grp_kernel_atax_node2_fu_92_v353_3_ce0;
wire   [15:0] grp_kernel_atax_node2_fu_92_v353_3_address1;
wire    grp_kernel_atax_node2_fu_92_v353_3_ce1;
wire   [8:0] grp_kernel_atax_node2_fu_92_v355_address0;
wire    grp_kernel_atax_node2_fu_92_v355_ce0;
wire   [8:0] grp_kernel_atax_node2_fu_92_v355_address1;
wire    grp_kernel_atax_node2_fu_92_v355_ce1;
wire   [0:0] grp_kernel_atax_node2_fu_92_v350_din;
wire    grp_kernel_atax_node2_fu_92_v350_write;
wire   [8:0] grp_kernel_atax_node2_fu_92_v358_address0;
wire    grp_kernel_atax_node2_fu_92_v358_ce0;
wire    grp_kernel_atax_node2_fu_92_v358_we0;
wire   [31:0] grp_kernel_atax_node2_fu_92_v358_d0;
reg   [8:0] grp_kernel_atax_node2_fu_92_v175;
wire    grp_kernel_atax_node1_fu_110_ap_start;
wire    grp_kernel_atax_node1_fu_110_ap_done;
wire    grp_kernel_atax_node1_fu_110_ap_idle;
wire    grp_kernel_atax_node1_fu_110_ap_ready;
wire   [17:0] grp_kernel_atax_node1_fu_110_v354_address0;
wire    grp_kernel_atax_node1_fu_110_v354_ce0;
wire   [17:0] grp_kernel_atax_node1_fu_110_v354_address1;
wire    grp_kernel_atax_node1_fu_110_v354_ce1;
wire    grp_kernel_atax_node1_fu_110_v350_read;
wire   [8:0] grp_kernel_atax_node1_fu_110_v357_address0;
wire    grp_kernel_atax_node1_fu_110_v357_ce0;
wire   [8:0] grp_kernel_atax_node1_fu_110_v356_address0;
wire    grp_kernel_atax_node1_fu_110_v356_ce0;
wire    grp_kernel_atax_node1_fu_110_v356_we0;
wire   [31:0] grp_kernel_atax_node1_fu_110_v356_d0;
wire   [8:0] grp_kernel_atax_node1_fu_110_v356_address1;
wire    grp_kernel_atax_node1_fu_110_v356_ce1;
wire    grp_kernel_atax_node1_fu_110_v356_we1;
wire   [31:0] grp_kernel_atax_node1_fu_110_v356_d1;
reg   [8:0] grp_kernel_atax_node1_fu_110_v4;
reg    grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_kernel_atax_node2_fu_92_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    v350_full_n;
reg    v350_write;
reg    grp_kernel_atax_node1_fu_110_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire   [0:0] v350_dout;
wire    v350_empty_n;
reg    v350_read;
reg   [8:0] v349_fu_78;
wire   [8:0] v349_6_fu_172_p2;
wire   [0:0] icmp_ln476_fu_166_p2;
reg   [17:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg = 1'b0;
#0 grp_kernel_atax_node2_fu_92_ap_start_reg = 1'b0;
#0 grp_kernel_atax_node1_fu_110_ap_start_reg = 1'b0;
#0 v349_fu_78 = 9'd0;
end
kernel_atax_kernel_atax_node0_Pipeline_label_2 grp_kernel_atax_node0_Pipeline_label_2_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start),.ap_done(grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_done),.ap_idle(grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_idle),.ap_ready(grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_ready),.v356_address0(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address0),.v356_ce0(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce0),.v356_we0(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we0),.v356_d0(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d0),.v356_address1(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address1),.v356_ce1(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce1),.v356_we1(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we1),.v356_d1(grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d1));
kernel_atax_kernel_atax_node2 grp_kernel_atax_node2_fu_92(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node2_fu_92_ap_start),.ap_done(grp_kernel_atax_node2_fu_92_ap_done),.ap_idle(grp_kernel_atax_node2_fu_92_ap_idle),.ap_ready(grp_kernel_atax_node2_fu_92_ap_ready),.v353_0_address0(grp_kernel_atax_node2_fu_92_v353_0_address0),.v353_0_ce0(grp_kernel_atax_node2_fu_92_v353_0_ce0),.v353_0_q0(v353_0_q0),.v353_0_address1(grp_kernel_atax_node2_fu_92_v353_0_address1),.v353_0_ce1(grp_kernel_atax_node2_fu_92_v353_0_ce1),.v353_0_q1(v353_0_q1),.v353_1_address0(grp_kernel_atax_node2_fu_92_v353_1_address0),.v353_1_ce0(grp_kernel_atax_node2_fu_92_v353_1_ce0),.v353_1_q0(v353_1_q0),.v353_1_address1(grp_kernel_atax_node2_fu_92_v353_1_address1),.v353_1_ce1(grp_kernel_atax_node2_fu_92_v353_1_ce1),.v353_1_q1(v353_1_q1),.v353_2_address0(grp_kernel_atax_node2_fu_92_v353_2_address0),.v353_2_ce0(grp_kernel_atax_node2_fu_92_v353_2_ce0),.v353_2_q0(v353_2_q0),.v353_2_address1(grp_kernel_atax_node2_fu_92_v353_2_address1),.v353_2_ce1(grp_kernel_atax_node2_fu_92_v353_2_ce1),.v353_2_q1(v353_2_q1),.v353_3_address0(grp_kernel_atax_node2_fu_92_v353_3_address0),.v353_3_ce0(grp_kernel_atax_node2_fu_92_v353_3_ce0),.v353_3_q0(v353_3_q0),.v353_3_address1(grp_kernel_atax_node2_fu_92_v353_3_address1),.v353_3_ce1(grp_kernel_atax_node2_fu_92_v353_3_ce1),.v353_3_q1(v353_3_q1),.v355_address0(grp_kernel_atax_node2_fu_92_v355_address0),.v355_ce0(grp_kernel_atax_node2_fu_92_v355_ce0),.v355_q0(v355_q0),.v355_address1(grp_kernel_atax_node2_fu_92_v355_address1),.v355_ce1(grp_kernel_atax_node2_fu_92_v355_ce1),.v355_q1(v355_q1),.v350_din(grp_kernel_atax_node2_fu_92_v350_din),.v350_full_n(v350_full_n),.v350_write(grp_kernel_atax_node2_fu_92_v350_write),.v358_address0(grp_kernel_atax_node2_fu_92_v358_address0),.v358_ce0(grp_kernel_atax_node2_fu_92_v358_ce0),.v358_we0(grp_kernel_atax_node2_fu_92_v358_we0),.v358_d0(grp_kernel_atax_node2_fu_92_v358_d0),.v175(grp_kernel_atax_node2_fu_92_v175));
kernel_atax_kernel_atax_node1 grp_kernel_atax_node1_fu_110(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node1_fu_110_ap_start),.ap_done(grp_kernel_atax_node1_fu_110_ap_done),.ap_idle(grp_kernel_atax_node1_fu_110_ap_idle),.ap_ready(grp_kernel_atax_node1_fu_110_ap_ready),.v354_address0(grp_kernel_atax_node1_fu_110_v354_address0),.v354_ce0(grp_kernel_atax_node1_fu_110_v354_ce0),.v354_q0(v354_q0),.v354_address1(grp_kernel_atax_node1_fu_110_v354_address1),.v354_ce1(grp_kernel_atax_node1_fu_110_v354_ce1),.v354_q1(v354_q1),.v350_dout(v350_dout),.v350_empty_n(v350_empty_n),.v350_read(grp_kernel_atax_node1_fu_110_v350_read),.v357_address0(grp_kernel_atax_node1_fu_110_v357_address0),.v357_ce0(grp_kernel_atax_node1_fu_110_v357_ce0),.v357_q0(v357_q0),.v356_address0(grp_kernel_atax_node1_fu_110_v356_address0),.v356_ce0(grp_kernel_atax_node1_fu_110_v356_ce0),.v356_we0(grp_kernel_atax_node1_fu_110_v356_we0),.v356_d0(grp_kernel_atax_node1_fu_110_v356_d0),.v356_q0(v356_q0),.v356_address1(grp_kernel_atax_node1_fu_110_v356_address1),.v356_ce1(grp_kernel_atax_node1_fu_110_v356_ce1),.v356_we1(grp_kernel_atax_node1_fu_110_v356_we1),.v356_d1(grp_kernel_atax_node1_fu_110_v356_d1),.v356_q1(v356_q1),.v4(grp_kernel_atax_node1_fu_110_v4));
kernel_atax_fifo_w1_d2_S v350_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_atax_node2_fu_92_v350_din),.if_full_n(v350_full_n),.if_write(v350_write),.if_dout(v350_dout),.if_empty_n(v350_empty_n),.if_read(v350_read));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_ready == 1'b1)) begin
            grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node1_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_kernel_atax_node1_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node1_fu_110_ap_ready == 1'b1)) begin
            grp_kernel_atax_node1_fu_110_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node2_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
            grp_kernel_atax_node2_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node2_fu_92_ap_ready == 1'b1)) begin
            grp_kernel_atax_node2_fu_92_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v349_fu_78 <= 9'd0;
    end else if (((icmp_ln476_fu_166_p2 == 1'd1) & (grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v349_fu_78 <= v349_6_fu_172_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_1_reg_211 <= {{v349_fu_78[8:2]}};
        tmp_reg_206 <= {{v349_fu_78[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v349_1_reg_217[8 : 1] <= v349_1_fu_151_p3[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v349_2_reg_223[8 : 2] <= v349_2_fu_159_p3[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v349_3_reg_232[8 : 2] <= v349_3_fu_182_p3[8 : 2];
    end
end
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
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
    if ((grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node1_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln476_fu_166_p2 == 1'd0) & (grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln476_fu_166_p2 == 1'd0) & (grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_kernel_atax_node1_fu_110_v4 = v349_3_reg_232;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_kernel_atax_node1_fu_110_v4 = v349_2_reg_223;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_kernel_atax_node1_fu_110_v4 = v349_1_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_kernel_atax_node1_fu_110_v4 = v349_fu_78;
    end else begin
        grp_kernel_atax_node1_fu_110_v4 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_kernel_atax_node2_fu_92_v175 = v349_3_reg_232;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_kernel_atax_node2_fu_92_v175 = v349_2_reg_223;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_kernel_atax_node2_fu_92_v175 = v349_1_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_kernel_atax_node2_fu_92_v175 = v349_fu_78;
    end else begin
        grp_kernel_atax_node2_fu_92_v175 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v350_read = grp_kernel_atax_node1_fu_110_v350_read;
    end else begin
        v350_read = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v350_write = grp_kernel_atax_node2_fu_92_v350_write;
    end else begin
        v350_write = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_0_ce0 = grp_kernel_atax_node2_fu_92_v353_0_ce0;
    end else begin
        v353_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_0_ce1 = grp_kernel_atax_node2_fu_92_v353_0_ce1;
    end else begin
        v353_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_1_ce0 = grp_kernel_atax_node2_fu_92_v353_1_ce0;
    end else begin
        v353_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_1_ce1 = grp_kernel_atax_node2_fu_92_v353_1_ce1;
    end else begin
        v353_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_2_ce0 = grp_kernel_atax_node2_fu_92_v353_2_ce0;
    end else begin
        v353_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_2_ce1 = grp_kernel_atax_node2_fu_92_v353_2_ce1;
    end else begin
        v353_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_3_ce0 = grp_kernel_atax_node2_fu_92_v353_3_ce0;
    end else begin
        v353_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v353_3_ce1 = grp_kernel_atax_node2_fu_92_v353_3_ce1;
    end else begin
        v353_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v354_ce0 = grp_kernel_atax_node1_fu_110_v354_ce0;
    end else begin
        v354_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v354_ce1 = grp_kernel_atax_node1_fu_110_v354_ce1;
    end else begin
        v354_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v355_ce0 = grp_kernel_atax_node2_fu_92_v355_ce0;
    end else begin
        v355_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v355_ce1 = grp_kernel_atax_node2_fu_92_v355_ce1;
    end else begin
        v355_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_address0 = grp_kernel_atax_node1_fu_110_v356_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_address0 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address0;
    end else begin
        v356_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_address1 = grp_kernel_atax_node1_fu_110_v356_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_address1 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_address1;
    end else begin
        v356_address1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_ce0 = grp_kernel_atax_node1_fu_110_v356_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_ce0 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce0;
    end else begin
        v356_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_ce1 = grp_kernel_atax_node1_fu_110_v356_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_ce1 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_ce1;
    end else begin
        v356_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_d0 = grp_kernel_atax_node1_fu_110_v356_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_d0 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d0;
    end else begin
        v356_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_d1 = grp_kernel_atax_node1_fu_110_v356_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_d1 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_d1;
    end else begin
        v356_d1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_we0 = grp_kernel_atax_node1_fu_110_v356_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_we0 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we0;
    end else begin
        v356_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v356_we1 = grp_kernel_atax_node1_fu_110_v356_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_we1 = grp_kernel_atax_node0_Pipeline_label_2_fu_86_v356_we1;
    end else begin
        v356_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10))) begin
        v357_ce0 = grp_kernel_atax_node1_fu_110_v357_ce0;
    end else begin
        v357_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v358_ce0 = grp_kernel_atax_node2_fu_92_v358_ce0;
    end else begin
        v358_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
        v358_we0 = grp_kernel_atax_node2_fu_92_v358_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_atax_node2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_kernel_atax_node2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln476_fu_166_p2 == 1'd0) & (grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln476_fu_166_p2 == 1'd1) & (grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_kernel_atax_node2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_kernel_atax_node2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_atax_node1_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start = grp_kernel_atax_node0_Pipeline_label_2_fu_86_ap_start_reg;
assign grp_kernel_atax_node1_fu_110_ap_start = grp_kernel_atax_node1_fu_110_ap_start_reg;
assign grp_kernel_atax_node2_fu_92_ap_start = grp_kernel_atax_node2_fu_92_ap_start_reg;
assign icmp_ln476_fu_166_p2 = ((v349_2_fu_159_p3 < 9'd390) ? 1'b1 : 1'b0);
assign v349_1_fu_151_p3 = {{tmp_reg_206}, {1'd1}};
assign v349_2_fu_159_p3 = {{tmp_1_reg_211}, {2'd2}};
assign v349_3_fu_182_p3 = {{tmp_1_reg_211}, {2'd3}};
assign v349_6_fu_172_p2 = (v349_fu_78 + 9'd4);
assign v353_0_address0 = grp_kernel_atax_node2_fu_92_v353_0_address0;
assign v353_0_address1 = grp_kernel_atax_node2_fu_92_v353_0_address1;
assign v353_1_address0 = grp_kernel_atax_node2_fu_92_v353_1_address0;
assign v353_1_address1 = grp_kernel_atax_node2_fu_92_v353_1_address1;
assign v353_2_address0 = grp_kernel_atax_node2_fu_92_v353_2_address0;
assign v353_2_address1 = grp_kernel_atax_node2_fu_92_v353_2_address1;
assign v353_3_address0 = grp_kernel_atax_node2_fu_92_v353_3_address0;
assign v353_3_address1 = grp_kernel_atax_node2_fu_92_v353_3_address1;
assign v354_address0 = grp_kernel_atax_node1_fu_110_v354_address0;
assign v354_address1 = grp_kernel_atax_node1_fu_110_v354_address1;
assign v355_address0 = grp_kernel_atax_node2_fu_92_v355_address0;
assign v355_address1 = grp_kernel_atax_node2_fu_92_v355_address1;
assign v357_address0 = grp_kernel_atax_node1_fu_110_v357_address0;
assign v358_address0 = grp_kernel_atax_node2_fu_92_v358_address0;
assign v358_d0 = grp_kernel_atax_node2_fu_92_v358_d0;
always @ (posedge ap_clk) begin
    v349_1_reg_217[0] <= 1'b1;
    v349_2_reg_223[1:0] <= 2'b10;
    v349_3_reg_232[1:0] <= 2'b11;
end
endmodule 
