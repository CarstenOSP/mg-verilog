module kernel_3mm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v255,v256,v257,v258,v259,v260_address0,v260_ce0,v260_q0,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1,v262_address0,v262_ce0,v262_q0,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v264_address0,v264_ce0,v264_q0,v264_address1,v264_ce1,v264_q1,v265_address0,v265_ce0,v265_we0,v265_d0,v265_q0,v265_address1,v265_ce1,v265_we1,v265_d1,v265_q1,v266_0_address0,v266_0_ce0,v266_0_q0,v266_1_address0,v266_1_ce0,v266_1_q0,v266_2_address0,v266_2_ce0,v266_2_q0,v266_3_address0,v266_3_ce0,v266_3_q0,v267_address0,v267_ce0,v267_q0,v267_address1,v267_ce1,v267_q1,v268_address0,v268_ce0,v268_we0,v268_d0,v268_q0,v268_address1,v268_ce1,v268_we1,v268_d1,v268_q1); 
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
input  [31:0] v255;
input  [31:0] v256;
input  [31:0] v257;
input  [31:0] v258;
input  [31:0] v259;
output  [15:0] v260_address0;
output   v260_ce0;
input  [31:0] v260_q0;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [15:0] v264_address0;
output   v264_ce0;
input  [31:0] v264_q0;
output  [15:0] v264_address1;
output   v264_ce1;
input  [31:0] v264_q1;
output  [15:0] v265_address0;
output   v265_ce0;
output   v265_we0;
output  [31:0] v265_d0;
input  [31:0] v265_q0;
output  [15:0] v265_address1;
output   v265_ce1;
output   v265_we1;
output  [31:0] v265_d1;
input  [31:0] v265_q1;
output  [13:0] v266_0_address0;
output   v266_0_ce0;
input  [31:0] v266_0_q0;
output  [13:0] v266_1_address0;
output   v266_1_ce0;
input  [31:0] v266_1_q0;
output  [13:0] v266_2_address0;
output   v266_2_ce0;
input  [31:0] v266_2_q0;
output  [13:0] v266_3_address0;
output   v266_3_ce0;
input  [31:0] v266_3_q0;
output  [15:0] v267_address0;
output   v267_ce0;
input  [31:0] v267_q0;
output  [15:0] v267_address1;
output   v267_ce1;
input  [31:0] v267_q1;
output  [15:0] v268_address0;
output   v268_ce0;
output   v268_we0;
output  [31:0] v268_d0;
input  [31:0] v268_q0;
output  [15:0] v268_address1;
output   v268_ce1;
output   v268_we1;
output  [31:0] v268_d1;
input  [31:0] v268_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_kernel_3mm_node2_fu_82_ap_start;
wire    grp_kernel_3mm_node2_fu_82_ap_done;
wire    grp_kernel_3mm_node2_fu_82_ap_idle;
wire    grp_kernel_3mm_node2_fu_82_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_fu_82_v262_address0;
wire    grp_kernel_3mm_node2_fu_82_v262_ce0;
wire   [15:0] grp_kernel_3mm_node2_fu_82_v263_address0;
wire    grp_kernel_3mm_node2_fu_82_v263_ce0;
wire   [15:0] grp_kernel_3mm_node2_fu_82_v263_address1;
wire    grp_kernel_3mm_node2_fu_82_v263_ce1;
wire   [0:0] grp_kernel_3mm_node2_fu_82_v279_din;
wire    grp_kernel_3mm_node2_fu_82_v279_write;
wire   [15:0] grp_kernel_3mm_node2_fu_82_v261_address0;
wire    grp_kernel_3mm_node2_fu_82_v261_ce0;
wire    grp_kernel_3mm_node2_fu_82_v261_we0;
wire   [31:0] grp_kernel_3mm_node2_fu_82_v261_d0;
wire   [15:0] grp_kernel_3mm_node2_fu_82_v261_address1;
wire    grp_kernel_3mm_node2_fu_82_v261_ce1;
wire    grp_kernel_3mm_node2_fu_82_v261_we1;
wire   [31:0] grp_kernel_3mm_node2_fu_82_v261_d1;
wire    grp_kernel_3mm_node1_fu_93_ap_start;
wire    grp_kernel_3mm_node1_fu_93_ap_done;
wire    grp_kernel_3mm_node1_fu_93_ap_idle;
wire    grp_kernel_3mm_node1_fu_93_ap_ready;
wire   [13:0] grp_kernel_3mm_node1_fu_93_v266_0_address0;
wire    grp_kernel_3mm_node1_fu_93_v266_0_ce0;
wire   [13:0] grp_kernel_3mm_node1_fu_93_v266_1_address0;
wire    grp_kernel_3mm_node1_fu_93_v266_1_ce0;
wire   [13:0] grp_kernel_3mm_node1_fu_93_v266_2_address0;
wire    grp_kernel_3mm_node1_fu_93_v266_2_ce0;
wire   [13:0] grp_kernel_3mm_node1_fu_93_v266_3_address0;
wire    grp_kernel_3mm_node1_fu_93_v266_3_ce0;
wire   [15:0] grp_kernel_3mm_node1_fu_93_v267_address0;
wire    grp_kernel_3mm_node1_fu_93_v267_ce0;
wire   [15:0] grp_kernel_3mm_node1_fu_93_v267_address1;
wire    grp_kernel_3mm_node1_fu_93_v267_ce1;
wire   [0:0] grp_kernel_3mm_node1_fu_93_v278_din;
wire    grp_kernel_3mm_node1_fu_93_v278_write;
wire   [15:0] grp_kernel_3mm_node1_fu_93_v265_address0;
wire    grp_kernel_3mm_node1_fu_93_v265_ce0;
wire    grp_kernel_3mm_node1_fu_93_v265_we0;
wire   [31:0] grp_kernel_3mm_node1_fu_93_v265_d0;
wire   [15:0] grp_kernel_3mm_node1_fu_93_v265_address1;
wire    grp_kernel_3mm_node1_fu_93_v265_ce1;
wire    grp_kernel_3mm_node1_fu_93_v265_we1;
wire   [31:0] grp_kernel_3mm_node1_fu_93_v265_d1;
wire   [31:0] grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din0;
wire   [31:0] grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din1;
wire   [1:0] grp_kernel_3mm_node1_fu_93_grp_fu_134_p_opcode;
wire    grp_kernel_3mm_node1_fu_93_grp_fu_134_p_ce;
wire   [31:0] grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din0;
wire   [31:0] grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din1;
wire    grp_kernel_3mm_node1_fu_93_grp_fu_138_p_ce;
wire    grp_kernel_3mm_node0_fu_110_ap_start;
wire    grp_kernel_3mm_node0_fu_110_ap_done;
wire    grp_kernel_3mm_node0_fu_110_ap_idle;
wire    grp_kernel_3mm_node0_fu_110_ap_ready;
wire    grp_kernel_3mm_node0_fu_110_v279_read;
wire   [15:0] grp_kernel_3mm_node0_fu_110_v260_address0;
wire    grp_kernel_3mm_node0_fu_110_v260_ce0;
wire    grp_kernel_3mm_node0_fu_110_v278_read;
wire   [15:0] grp_kernel_3mm_node0_fu_110_v264_address0;
wire    grp_kernel_3mm_node0_fu_110_v264_ce0;
wire   [15:0] grp_kernel_3mm_node0_fu_110_v264_address1;
wire    grp_kernel_3mm_node0_fu_110_v264_ce1;
wire   [15:0] grp_kernel_3mm_node0_fu_110_v268_address0;
wire    grp_kernel_3mm_node0_fu_110_v268_ce0;
wire    grp_kernel_3mm_node0_fu_110_v268_we0;
wire   [31:0] grp_kernel_3mm_node0_fu_110_v268_d0;
wire   [15:0] grp_kernel_3mm_node0_fu_110_v268_address1;
wire    grp_kernel_3mm_node0_fu_110_v268_ce1;
wire    grp_kernel_3mm_node0_fu_110_v268_we1;
wire   [31:0] grp_kernel_3mm_node0_fu_110_v268_d1;
wire   [31:0] grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din0;
wire   [31:0] grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din1;
wire   [1:0] grp_kernel_3mm_node0_fu_110_grp_fu_134_p_opcode;
wire    grp_kernel_3mm_node0_fu_110_grp_fu_134_p_ce;
wire   [31:0] grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din0;
wire   [31:0] grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din1;
wire    grp_kernel_3mm_node0_fu_110_grp_fu_138_p_ce;
reg    grp_kernel_3mm_node2_fu_82_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    v279_full_n;
reg    v279_write;
reg    grp_kernel_3mm_node1_fu_93_ap_start_reg;
wire    v278_full_n;
reg    v278_write;
reg    grp_kernel_3mm_node0_fu_110_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [0:0] v279_dout;
wire    v279_empty_n;
reg    v279_read;
wire    ap_CS_fsm_state4;
wire   [0:0] v278_dout;
wire    v278_empty_n;
reg    v278_read;
wire   [31:0] grp_fu_134_p2;
reg   [31:0] grp_fu_134_p0;
reg   [31:0] grp_fu_134_p1;
reg    grp_fu_134_ce;
wire   [31:0] grp_fu_138_p2;
reg   [31:0] grp_fu_138_p0;
reg   [31:0] grp_fu_138_p1;
reg    grp_fu_138_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_3mm_node2_fu_82_ap_start_reg = 1'b0;
#0 grp_kernel_3mm_node1_fu_93_ap_start_reg = 1'b0;
#0 grp_kernel_3mm_node0_fu_110_ap_start_reg = 1'b0;
end
kernel_3mm_kernel_3mm_node2 grp_kernel_3mm_node2_fu_82(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_fu_82_ap_start),.ap_done(grp_kernel_3mm_node2_fu_82_ap_done),.ap_idle(grp_kernel_3mm_node2_fu_82_ap_idle),.ap_ready(grp_kernel_3mm_node2_fu_82_ap_ready),.v262_address0(grp_kernel_3mm_node2_fu_82_v262_address0),.v262_ce0(grp_kernel_3mm_node2_fu_82_v262_ce0),.v262_q0(v262_q0),.v263_address0(grp_kernel_3mm_node2_fu_82_v263_address0),.v263_ce0(grp_kernel_3mm_node2_fu_82_v263_ce0),.v263_q0(v263_q0),.v263_address1(grp_kernel_3mm_node2_fu_82_v263_address1),.v263_ce1(grp_kernel_3mm_node2_fu_82_v263_ce1),.v263_q1(v263_q1),.v279_din(grp_kernel_3mm_node2_fu_82_v279_din),.v279_full_n(v279_full_n),.v279_write(grp_kernel_3mm_node2_fu_82_v279_write),.v261_address0(grp_kernel_3mm_node2_fu_82_v261_address0),.v261_ce0(grp_kernel_3mm_node2_fu_82_v261_ce0),.v261_we0(grp_kernel_3mm_node2_fu_82_v261_we0),.v261_d0(grp_kernel_3mm_node2_fu_82_v261_d0),.v261_q0(v261_q0),.v261_address1(grp_kernel_3mm_node2_fu_82_v261_address1),.v261_ce1(grp_kernel_3mm_node2_fu_82_v261_ce1),.v261_we1(grp_kernel_3mm_node2_fu_82_v261_we1),.v261_d1(grp_kernel_3mm_node2_fu_82_v261_d1),.v261_q1(v261_q1));
kernel_3mm_kernel_3mm_node1 grp_kernel_3mm_node1_fu_93(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node1_fu_93_ap_start),.ap_done(grp_kernel_3mm_node1_fu_93_ap_done),.ap_idle(grp_kernel_3mm_node1_fu_93_ap_idle),.ap_ready(grp_kernel_3mm_node1_fu_93_ap_ready),.v266_0_address0(grp_kernel_3mm_node1_fu_93_v266_0_address0),.v266_0_ce0(grp_kernel_3mm_node1_fu_93_v266_0_ce0),.v266_0_q0(v266_0_q0),.v266_1_address0(grp_kernel_3mm_node1_fu_93_v266_1_address0),.v266_1_ce0(grp_kernel_3mm_node1_fu_93_v266_1_ce0),.v266_1_q0(v266_1_q0),.v266_2_address0(grp_kernel_3mm_node1_fu_93_v266_2_address0),.v266_2_ce0(grp_kernel_3mm_node1_fu_93_v266_2_ce0),.v266_2_q0(v266_2_q0),.v266_3_address0(grp_kernel_3mm_node1_fu_93_v266_3_address0),.v266_3_ce0(grp_kernel_3mm_node1_fu_93_v266_3_ce0),.v266_3_q0(v266_3_q0),.v267_address0(grp_kernel_3mm_node1_fu_93_v267_address0),.v267_ce0(grp_kernel_3mm_node1_fu_93_v267_ce0),.v267_q0(v267_q0),.v267_address1(grp_kernel_3mm_node1_fu_93_v267_address1),.v267_ce1(grp_kernel_3mm_node1_fu_93_v267_ce1),.v267_q1(v267_q1),.v278_din(grp_kernel_3mm_node1_fu_93_v278_din),.v278_full_n(v278_full_n),.v278_write(grp_kernel_3mm_node1_fu_93_v278_write),.v265_address0(grp_kernel_3mm_node1_fu_93_v265_address0),.v265_ce0(grp_kernel_3mm_node1_fu_93_v265_ce0),.v265_we0(grp_kernel_3mm_node1_fu_93_v265_we0),.v265_d0(grp_kernel_3mm_node1_fu_93_v265_d0),.v265_q0(v265_q0),.v265_address1(grp_kernel_3mm_node1_fu_93_v265_address1),.v265_ce1(grp_kernel_3mm_node1_fu_93_v265_ce1),.v265_we1(grp_kernel_3mm_node1_fu_93_v265_we1),.v265_d1(grp_kernel_3mm_node1_fu_93_v265_d1),.v265_q1(v265_q1),.grp_fu_134_p_din0(grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din0),.grp_fu_134_p_din1(grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din1),.grp_fu_134_p_opcode(grp_kernel_3mm_node1_fu_93_grp_fu_134_p_opcode),.grp_fu_134_p_dout0(grp_fu_134_p2),.grp_fu_134_p_ce(grp_kernel_3mm_node1_fu_93_grp_fu_134_p_ce),.grp_fu_138_p_din0(grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din0),.grp_fu_138_p_din1(grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din1),.grp_fu_138_p_dout0(grp_fu_138_p2),.grp_fu_138_p_ce(grp_kernel_3mm_node1_fu_93_grp_fu_138_p_ce));
kernel_3mm_kernel_3mm_node0 grp_kernel_3mm_node0_fu_110(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node0_fu_110_ap_start),.ap_done(grp_kernel_3mm_node0_fu_110_ap_done),.ap_idle(grp_kernel_3mm_node0_fu_110_ap_idle),.ap_ready(grp_kernel_3mm_node0_fu_110_ap_ready),.v279_dout(v279_dout),.v279_empty_n(v279_empty_n),.v279_read(grp_kernel_3mm_node0_fu_110_v279_read),.v260_address0(grp_kernel_3mm_node0_fu_110_v260_address0),.v260_ce0(grp_kernel_3mm_node0_fu_110_v260_ce0),.v260_q0(v260_q0),.v278_dout(v278_dout),.v278_empty_n(v278_empty_n),.v278_read(grp_kernel_3mm_node0_fu_110_v278_read),.v264_address0(grp_kernel_3mm_node0_fu_110_v264_address0),.v264_ce0(grp_kernel_3mm_node0_fu_110_v264_ce0),.v264_q0(v264_q0),.v264_address1(grp_kernel_3mm_node0_fu_110_v264_address1),.v264_ce1(grp_kernel_3mm_node0_fu_110_v264_ce1),.v264_q1(v264_q1),.v268_address0(grp_kernel_3mm_node0_fu_110_v268_address0),.v268_ce0(grp_kernel_3mm_node0_fu_110_v268_ce0),.v268_we0(grp_kernel_3mm_node0_fu_110_v268_we0),.v268_d0(grp_kernel_3mm_node0_fu_110_v268_d0),.v268_q0(v268_q0),.v268_address1(grp_kernel_3mm_node0_fu_110_v268_address1),.v268_ce1(grp_kernel_3mm_node0_fu_110_v268_ce1),.v268_we1(grp_kernel_3mm_node0_fu_110_v268_we1),.v268_d1(grp_kernel_3mm_node0_fu_110_v268_d1),.v268_q1(v268_q1),.grp_fu_134_p_din0(grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din0),.grp_fu_134_p_din1(grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din1),.grp_fu_134_p_opcode(grp_kernel_3mm_node0_fu_110_grp_fu_134_p_opcode),.grp_fu_134_p_dout0(grp_fu_134_p2),.grp_fu_134_p_ce(grp_kernel_3mm_node0_fu_110_grp_fu_134_p_ce),.grp_fu_138_p_din0(grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din0),.grp_fu_138_p_din1(grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din1),.grp_fu_138_p_dout0(grp_fu_138_p2),.grp_fu_138_p_ce(grp_kernel_3mm_node0_fu_110_grp_fu_138_p_ce));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_134_p0),.din1(grp_fu_134_p1),.ce(grp_fu_134_ce),.dout(grp_fu_134_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_138_p0),.din1(grp_fu_138_p1),.ce(grp_fu_138_ce),.dout(grp_fu_138_p2));
kernel_3mm_fifo_w1_d2_S v278_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_3mm_node1_fu_93_v278_din),.if_full_n(v278_full_n),.if_write(v278_write),.if_dout(v278_dout),.if_empty_n(v278_empty_n),.if_read(v278_read));
kernel_3mm_fifo_w1_d2_S v279_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_3mm_node2_fu_82_v279_din),.if_full_n(v279_full_n),.if_write(v279_write),.if_dout(v279_dout),.if_empty_n(v279_empty_n),.if_read(v279_read));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node0_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_3mm_node0_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node0_fu_110_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node0_fu_110_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node1_fu_93_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_3mm_node1_fu_93_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node1_fu_93_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node1_fu_93_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_3mm_node2_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_fu_82_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_fu_82_ap_start_reg <= 1'b0;
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
    if ((grp_kernel_3mm_node0_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_3mm_node0_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((grp_kernel_3mm_node0_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_134_ce = grp_kernel_3mm_node0_fu_110_grp_fu_134_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_134_ce = grp_kernel_3mm_node1_fu_93_grp_fu_134_p_ce;
    end else begin
        grp_fu_134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_134_p0 = grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_134_p0 = grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din0;
    end else begin
        grp_fu_134_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_134_p1 = grp_kernel_3mm_node0_fu_110_grp_fu_134_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_134_p1 = grp_kernel_3mm_node1_fu_93_grp_fu_134_p_din1;
    end else begin
        grp_fu_134_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_138_ce = grp_kernel_3mm_node0_fu_110_grp_fu_138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_138_ce = grp_kernel_3mm_node1_fu_93_grp_fu_138_p_ce;
    end else begin
        grp_fu_138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_138_p0 = grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_138_p0 = grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din0;
    end else begin
        grp_fu_138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_138_p1 = grp_kernel_3mm_node0_fu_110_grp_fu_138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_138_p1 = grp_kernel_3mm_node1_fu_93_grp_fu_138_p_din1;
    end else begin
        grp_fu_138_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v278_read = grp_kernel_3mm_node0_fu_110_v278_read;
    end else begin
        v278_read = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v278_write = grp_kernel_3mm_node1_fu_93_v278_write;
    end else begin
        v278_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v279_read = grp_kernel_3mm_node0_fu_110_v279_read;
    end else begin
        v279_read = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v279_write = grp_kernel_3mm_node2_fu_82_v279_write;
    end else begin
        v279_write = 1'b0;
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
            if (((grp_kernel_3mm_node0_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    ap_block_state2_on_subcall_done = ((grp_kernel_3mm_node1_fu_93_ap_done == 1'b0) | (grp_kernel_3mm_node2_fu_82_ap_done == 1'b0));
end
assign grp_kernel_3mm_node0_fu_110_ap_start = grp_kernel_3mm_node0_fu_110_ap_start_reg;
assign grp_kernel_3mm_node1_fu_93_ap_start = grp_kernel_3mm_node1_fu_93_ap_start_reg;
assign grp_kernel_3mm_node2_fu_82_ap_start = grp_kernel_3mm_node2_fu_82_ap_start_reg;
assign v260_address0 = grp_kernel_3mm_node0_fu_110_v260_address0;
assign v260_ce0 = grp_kernel_3mm_node0_fu_110_v260_ce0;
assign v261_address0 = grp_kernel_3mm_node2_fu_82_v261_address0;
assign v261_address1 = grp_kernel_3mm_node2_fu_82_v261_address1;
assign v261_ce0 = grp_kernel_3mm_node2_fu_82_v261_ce0;
assign v261_ce1 = grp_kernel_3mm_node2_fu_82_v261_ce1;
assign v261_d0 = grp_kernel_3mm_node2_fu_82_v261_d0;
assign v261_d1 = grp_kernel_3mm_node2_fu_82_v261_d1;
assign v261_we0 = grp_kernel_3mm_node2_fu_82_v261_we0;
assign v261_we1 = grp_kernel_3mm_node2_fu_82_v261_we1;
assign v262_address0 = grp_kernel_3mm_node2_fu_82_v262_address0;
assign v262_ce0 = grp_kernel_3mm_node2_fu_82_v262_ce0;
assign v263_address0 = grp_kernel_3mm_node2_fu_82_v263_address0;
assign v263_address1 = grp_kernel_3mm_node2_fu_82_v263_address1;
assign v263_ce0 = grp_kernel_3mm_node2_fu_82_v263_ce0;
assign v263_ce1 = grp_kernel_3mm_node2_fu_82_v263_ce1;
assign v264_address0 = grp_kernel_3mm_node0_fu_110_v264_address0;
assign v264_address1 = grp_kernel_3mm_node0_fu_110_v264_address1;
assign v264_ce0 = grp_kernel_3mm_node0_fu_110_v264_ce0;
assign v264_ce1 = grp_kernel_3mm_node0_fu_110_v264_ce1;
assign v265_address0 = grp_kernel_3mm_node1_fu_93_v265_address0;
assign v265_address1 = grp_kernel_3mm_node1_fu_93_v265_address1;
assign v265_ce0 = grp_kernel_3mm_node1_fu_93_v265_ce0;
assign v265_ce1 = grp_kernel_3mm_node1_fu_93_v265_ce1;
assign v265_d0 = grp_kernel_3mm_node1_fu_93_v265_d0;
assign v265_d1 = grp_kernel_3mm_node1_fu_93_v265_d1;
assign v265_we0 = grp_kernel_3mm_node1_fu_93_v265_we0;
assign v265_we1 = grp_kernel_3mm_node1_fu_93_v265_we1;
assign v266_0_address0 = grp_kernel_3mm_node1_fu_93_v266_0_address0;
assign v266_0_ce0 = grp_kernel_3mm_node1_fu_93_v266_0_ce0;
assign v266_1_address0 = grp_kernel_3mm_node1_fu_93_v266_1_address0;
assign v266_1_ce0 = grp_kernel_3mm_node1_fu_93_v266_1_ce0;
assign v266_2_address0 = grp_kernel_3mm_node1_fu_93_v266_2_address0;
assign v266_2_ce0 = grp_kernel_3mm_node1_fu_93_v266_2_ce0;
assign v266_3_address0 = grp_kernel_3mm_node1_fu_93_v266_3_address0;
assign v266_3_ce0 = grp_kernel_3mm_node1_fu_93_v266_3_ce0;
assign v267_address0 = grp_kernel_3mm_node1_fu_93_v267_address0;
assign v267_address1 = grp_kernel_3mm_node1_fu_93_v267_address1;
assign v267_ce0 = grp_kernel_3mm_node1_fu_93_v267_ce0;
assign v267_ce1 = grp_kernel_3mm_node1_fu_93_v267_ce1;
assign v268_address0 = grp_kernel_3mm_node0_fu_110_v268_address0;
assign v268_address1 = grp_kernel_3mm_node0_fu_110_v268_address1;
assign v268_ce0 = grp_kernel_3mm_node0_fu_110_v268_ce0;
assign v268_ce1 = grp_kernel_3mm_node0_fu_110_v268_ce1;
assign v268_d0 = grp_kernel_3mm_node0_fu_110_v268_d0;
assign v268_d1 = grp_kernel_3mm_node0_fu_110_v268_d1;
assign v268_we0 = grp_kernel_3mm_node0_fu_110_v268_we0;
assign v268_we1 = grp_kernel_3mm_node0_fu_110_v268_we1;
endmodule 