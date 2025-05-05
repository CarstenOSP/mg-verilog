module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_0_address0,v262_0_ce0,v262_0_q0,v262_0_address1,v262_0_ce1,v262_0_q1,v262_1_address0,v262_1_ce0,v262_1_q0,v262_1_address1,v262_1_ce1,v262_1_q1,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v279_din,v279_full_n,v279_write,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [14:0] v262_0_address1;
output   v262_0_ce1;
input  [31:0] v262_0_q1;
output  [14:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
output  [14:0] v262_1_address1;
output   v262_1_ce1;
input  [31:0] v262_1_q1;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state3;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce1;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d1;
wire   [14:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce0;
wire   [14:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce1;
wire   [14:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce0;
wire   [14:0] grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce1;
reg    grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    v279_write_local;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg = 1'b0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_6_label_7 grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_ready),.v263_address0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address0),.v263_ce0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce0),.v263_q0(v263_q0),.v263_address1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address1),.v263_ce1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce1),.v263_q1(v263_q1),.v261_address0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address0),.v261_ce0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce0),.v261_we0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we0),.v261_d0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d0),.v261_q0(v261_q0),.v261_address1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address1),.v261_ce1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce1),.v261_we1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we1),.v261_d1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d1),.v261_q1(v261_q1),.v262_0_address0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address0),.v262_0_ce0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce0),.v262_0_q0(v262_0_q0),.v262_0_address1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address1),.v262_0_ce1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce1),.v262_0_q1(v262_0_q1),.v262_1_address0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address0),.v262_1_ce0(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce0),.v262_1_q0(v262_1_q0),.v262_1_address1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address1),.v262_1_ce1(grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce1),.v262_1_q1(v262_1_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg <= 1'b0;
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
    if ((grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((v279_full_n == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((v279_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((v279_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((v279_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
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
            if (((grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((v279_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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
assign grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_ap_start_reg;
assign v261_address0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address0;
assign v261_address1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_address1;
assign v261_ce0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce0;
assign v261_ce1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_ce1;
assign v261_d0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d0;
assign v261_d1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_d1;
assign v261_we0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we0;
assign v261_we1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v261_we1;
assign v262_0_address0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address0;
assign v262_0_address1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_address1;
assign v262_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce0;
assign v262_0_ce1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_0_ce1;
assign v262_1_address0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address0;
assign v262_1_address1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_address1;
assign v262_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce0;
assign v262_1_ce1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v262_1_ce1;
assign v263_address0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address0;
assign v263_address1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_address1;
assign v263_ce0 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce0;
assign v263_ce1 = grp_kernel_3mm_node2_Pipeline_label_6_label_7_fu_36_v263_ce1;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
endmodule 