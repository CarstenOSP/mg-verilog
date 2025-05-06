
module stencil (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1);  
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
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] filter_load_reg_164;
wire    ap_CS_fsm_state2;
reg   [31:0] filter_load_1_reg_179;
wire    ap_CS_fsm_state3;
reg   [31:0] filter_load_2_reg_184;
reg   [31:0] filter_load_3_reg_199;
wire    ap_CS_fsm_state4;
reg   [31:0] filter_load_4_reg_204;
reg   [31:0] filter_load_5_reg_219;
wire    ap_CS_fsm_state5;
reg   [31:0] filter_load_6_reg_224;
reg   [31:0] filter_load_7_reg_239;
wire    ap_CS_fsm_state6;
reg   [31:0] filter_load_8_reg_244;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_idle;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_ready;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_address0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_ce0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_we0;
wire   [31:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_d0;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_address0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_ce0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_we0;
wire   [31:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_d0;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce0;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address1;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce1;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address0;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce0;
wire   [11:0] grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address1;
wire    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce1;
reg    grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    filter_ce1_local;
reg   [3:0] filter_address1_local;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg = 1'b0;
end
stencil_stencil_Pipeline_stencil_label1_stencil_label2 grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start),.ap_done(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done),.ap_idle(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_idle),.ap_ready(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_ready),.sol_1_address0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_address0),.sol_1_ce0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_ce0),.sol_1_we0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_we0),.sol_1_d0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_d0),.sol_0_address0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_address0),.sol_0_ce0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_ce0),.sol_0_we0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_we0),.sol_0_d0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_d0),.orig_0_address0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address0),.orig_0_ce0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address1),.orig_0_ce1(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address0),.orig_1_ce0(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address1),.orig_1_ce1(grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce1),.orig_1_q1(orig_1_q1),.filter_load_7(filter_load_7_reg_239),.filter_load_8(filter_load_8_reg_244),.filter_load_2(filter_load_2_reg_184),.filter_load_1(filter_load_1_reg_179),.filter_load_5(filter_load_5_reg_219),.filter_load_3(filter_load_3_reg_199),.filter_load_4(filter_load_4_reg_204),.filter_load_6(filter_load_6_reg_224),.filter_load(filter_load_reg_164));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_ready == 1'b1)) begin
            grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        filter_load_1_reg_179 <= filter_q1;
        filter_load_2_reg_184 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        filter_load_3_reg_199 <= filter_q0;
        filter_load_4_reg_204 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        filter_load_5_reg_219 <= filter_q0;
        filter_load_6_reg_224 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        filter_load_7_reg_239 <= filter_q0;
        filter_load_8_reg_244 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        filter_load_reg_164 <= filter_q0;
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
    if ((grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) & (grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        filter_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        filter_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        filter_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        filter_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        filter_address0_local = 64'd0;
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        filter_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        filter_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        filter_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        filter_address1_local = 64'd1;
    end else begin
        filter_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_done == 1'b1))) begin
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
assign filter_address0 = filter_address0_local;
assign filter_address1 = filter_address1_local;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_ap_start_reg;
assign orig_0_address0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address0;
assign orig_0_address1 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_address1;
assign orig_0_ce0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce0;
assign orig_0_ce1 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_0_ce1;
assign orig_1_address0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address0;
assign orig_1_address1 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_address1;
assign orig_1_ce0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce0;
assign orig_1_ce1 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_orig_1_ce1;
assign sol_0_address0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_address0;
assign sol_0_ce0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_ce0;
assign sol_0_d0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_d0;
assign sol_0_we0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_0_we0;
assign sol_1_address0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_address0;
assign sol_1_ce0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_ce0;
assign sol_1_d0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_d0;
assign sol_1_we0 = grp_stencil_Pipeline_stencil_label1_stencil_label2_fu_136_sol_1_we0;
endmodule 
