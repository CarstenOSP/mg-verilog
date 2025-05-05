module kernel_3mm_kernel_3mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v266_address0,v266_ce0,v266_q0,v267_address0,v267_ce0,v267_q0,v267_address1,v267_ce1,v267_q1,v278_din,v278_full_n,v278_write,v265_address0,v265_ce0,v265_we0,v265_d0,v265_q0,v265_address1,v265_ce1,v265_we1,v265_d1,v265_q1,grp_fu_134_p_din0,grp_fu_134_p_din1,grp_fu_134_p_opcode,grp_fu_134_p_dout0,grp_fu_134_p_ce,grp_fu_138_p_din0,grp_fu_138_p_din1,grp_fu_138_p_dout0,grp_fu_138_p_ce); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v266_address0;
output   v266_ce0;
input  [31:0] v266_q0;
output  [15:0] v267_address0;
output   v267_ce0;
input  [31:0] v267_q0;
output  [15:0] v267_address1;
output   v267_ce1;
input  [31:0] v267_q1;
output  [0:0] v278_din;
input   v278_full_n;
output   v278_write;
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
output  [31:0] grp_fu_134_p_din0;
output  [31:0] grp_fu_134_p_din1;
output  [1:0] grp_fu_134_p_opcode;
input  [31:0] grp_fu_134_p_dout0;
output   grp_fu_134_p_ce;
output  [31:0] grp_fu_138_p_din0;
output  [31:0] grp_fu_138_p_din1;
input  [31:0] grp_fu_138_p_dout0;
output   grp_fu_138_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v278_blk_n;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_idle;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_ready;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_ce0;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce0;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce1;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce0;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d0;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce1;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we1;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d1;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din1;
wire   [1:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_opcode;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_ce;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din1;
wire    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_ce;
reg    grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg;
reg    ap_block_state1_ignore_call4;
wire    ap_CS_fsm_state2;
reg    ap_block_state1;
reg    v278_write_local;
reg    grp_fu_44_ce;
reg    grp_fu_48_ce;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg = 1'b0;
end
kernel_3mm_kernel_3mm_node1_Pipeline_label_3_label_4_label_5 grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start),.ap_done(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done),.ap_idle(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_idle),.ap_ready(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_ready),.v266_address0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_address0),.v266_ce0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_ce0),.v266_q0(v266_q0),.v267_address0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address0),.v267_ce0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce0),.v267_q0(v267_q0),.v267_address1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address1),.v267_ce1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce1),.v267_q1(v267_q1),.v265_address0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address0),.v265_ce0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce0),.v265_we0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we0),.v265_d0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d0),.v265_q0(v265_q0),.v265_address1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address1),.v265_ce1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce1),.v265_we1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we1),.v265_d1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d1),.v265_q1(v265_q1),.grp_fu_44_p_din0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din0),.grp_fu_44_p_din1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din1),.grp_fu_44_p_opcode(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_opcode),.grp_fu_44_p_dout0(grp_fu_134_p_dout0),.grp_fu_44_p_ce(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_ce),.grp_fu_48_p_din0(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din0),.grp_fu_48_p_din1(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din1),.grp_fu_48_p_dout0(grp_fu_138_p_dout0),.grp_fu_48_p_ce(grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call4) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_44_ce = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_ce;
    end else begin
        grp_fu_44_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_48_ce = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_ce;
    end else begin
        grp_fu_48_ce = 1'b1;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v278_blk_n = v278_full_n;
    end else begin
        v278_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v278_write_local = 1'b1;
    end else begin
        v278_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1 = ((ap_start == 1'b0) | (v278_full_n == 1'b0));
end
always @ (*) begin
    ap_block_state1_ignore_call4 = ((ap_start == 1'b0) | (v278_full_n == 1'b0));
end
assign grp_fu_134_p_ce = grp_fu_44_ce;
assign grp_fu_134_p_din0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din0;
assign grp_fu_134_p_din1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_44_p_din1;
assign grp_fu_134_p_opcode = 2'd0;
assign grp_fu_138_p_ce = grp_fu_48_ce;
assign grp_fu_138_p_din0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din0;
assign grp_fu_138_p_din1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_grp_fu_48_p_din1;
assign grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_ap_start_reg;
assign v265_address0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address0;
assign v265_address1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_address1;
assign v265_ce0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce0;
assign v265_ce1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_ce1;
assign v265_d0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d0;
assign v265_d1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_d1;
assign v265_we0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we0;
assign v265_we1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v265_we1;
assign v266_address0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_address0;
assign v266_ce0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v266_ce0;
assign v267_address0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address0;
assign v267_address1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_address1;
assign v267_ce0 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce0;
assign v267_ce1 = grp_kernel_3mm_node1_Pipeline_label_3_label_4_label_5_fu_34_v267_ce1;
assign v278_din = 1'd1;
assign v278_write = v278_write_local;
endmodule 