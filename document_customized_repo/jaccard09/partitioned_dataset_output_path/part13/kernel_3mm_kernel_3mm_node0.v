
module kernel_3mm_kernel_3mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v279_dout,v279_empty_n,v279_read,v260_address0,v260_ce0,v260_q0,v278_dout,v278_empty_n,v278_read,v264_address0,v264_ce0,v264_q0,v264_address1,v264_ce1,v264_q1,v268_address0,v268_ce0,v268_we0,v268_d0,v268_q0,v268_address1,v268_ce1,v268_we1,v268_d1,v268_q1,grp_fu_122_p_din0,grp_fu_122_p_din1,grp_fu_122_p_opcode,grp_fu_122_p_dout0,grp_fu_122_p_ce,grp_fu_126_p_din0,grp_fu_126_p_din1,grp_fu_126_p_dout0,grp_fu_126_p_ce);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v279_dout;
input   v279_empty_n;
output   v279_read;
output  [15:0] v260_address0;
output   v260_ce0;
input  [31:0] v260_q0;
input  [0:0] v278_dout;
input   v278_empty_n;
output   v278_read;
output  [15:0] v264_address0;
output   v264_ce0;
input  [31:0] v264_q0;
output  [15:0] v264_address1;
output   v264_ce1;
input  [31:0] v264_q1;
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
output  [31:0] grp_fu_122_p_din0;
output  [31:0] grp_fu_122_p_din1;
output  [1:0] grp_fu_122_p_opcode;
input  [31:0] grp_fu_122_p_dout0;
output   grp_fu_122_p_ce;
output  [31:0] grp_fu_126_p_din0;
output  [31:0] grp_fu_126_p_din1;
input  [31:0] grp_fu_126_p_dout0;
output   grp_fu_126_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
reg    v278_blk_n;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_idle;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_ready;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_ce0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce1;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce0;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce1;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din1;
wire   [1:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_opcode;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_ce;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din1;
wire    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_ce;
reg    grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg;
reg    ap_block_state2;
reg    v278_read_local;
reg    v279_read_local;
reg    grp_fu_48_ce;
reg    grp_fu_52_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg = 1'b0;
end
kernel_3mm_kernel_3mm_node0_Pipeline_label_0_label_1_label_2 grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start),.ap_done(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done),.ap_idle(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_idle),.ap_ready(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_ready),.v260_address0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_address0),.v260_ce0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_ce0),.v260_q0(v260_q0),.v264_address0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address0),.v264_ce0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce0),.v264_q0(v264_q0),.v264_address1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address1),.v264_ce1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce1),.v264_q1(v264_q1),.v268_address0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address0),.v268_ce0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce0),.v268_we0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we0),.v268_d0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d0),.v268_q0(v268_q0),.v268_address1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address1),.v268_ce1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce1),.v268_we1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we1),.v268_d1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d1),.v268_q1(v268_q1),.grp_fu_48_p_din0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din0),.grp_fu_48_p_din1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din1),.grp_fu_48_p_opcode(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_opcode),.grp_fu_48_p_dout0(grp_fu_122_p_dout0),.grp_fu_48_p_ce(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_ce),.grp_fu_52_p_din0(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din0),.grp_fu_52_p_din1(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din1),.grp_fu_52_p_dout0(grp_fu_126_p_dout0),.grp_fu_52_p_ce(grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg <= 1'b0;
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
    if (((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2)) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if ((~((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2)) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_48_ce = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_ce;
    end else begin
        grp_fu_48_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_52_ce = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_ce;
    end else begin
        grp_fu_52_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v278_blk_n = v278_empty_n;
    end else begin
        v278_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2)) & (1'b1 == ap_CS_fsm_state2))) begin
        v278_read_local = 1'b1;
    end else begin
        v278_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v279_blk_n = v279_empty_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2)) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_read_local = 1'b1;
    end else begin
        v279_read_local = 1'b0;
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
            if ((~((grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_done == 1'b0) | (1'b1 == ap_block_state2)) & (1'b1 == ap_CS_fsm_state2))) begin
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
always @ (*) begin
    ap_block_state2 = ((v278_empty_n == 1'b0) | (v279_empty_n == 1'b0));
end
assign grp_fu_122_p_ce = grp_fu_48_ce;
assign grp_fu_122_p_din0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din0;
assign grp_fu_122_p_din1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_48_p_din1;
assign grp_fu_122_p_opcode = 2'd0;
assign grp_fu_126_p_ce = grp_fu_52_ce;
assign grp_fu_126_p_din0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din0;
assign grp_fu_126_p_din1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_grp_fu_52_p_din1;
assign grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_ap_start_reg;
assign v260_address0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_address0;
assign v260_ce0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v260_ce0;
assign v264_address0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address0;
assign v264_address1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_address1;
assign v264_ce0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce0;
assign v264_ce1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v264_ce1;
assign v268_address0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address0;
assign v268_address1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_address1;
assign v268_ce0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce0;
assign v268_ce1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_ce1;
assign v268_d0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d0;
assign v268_d1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_d1;
assign v268_we0 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we0;
assign v268_we1 = grp_kernel_3mm_node0_Pipeline_label_0_label_1_label_2_fu_38_v268_we1;
assign v278_read = v278_read_local;
assign v279_read = v279_read_local;
endmodule 
