module stencil (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1); 
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] r_1_reg_350;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln7_fu_270_p2;
reg   [6:0] add_ln7_reg_359;
wire   [5:0] add_ln8_fu_282_p2;
reg   [5:0] add_ln8_reg_367;
wire    ap_CS_fsm_state3;
wire   [2:0] trunc_ln8_fu_288_p1;
reg   [2:0] trunc_ln8_reg_372;
reg   [2:0] lshr_ln5_reg_377;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_ap_start;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_ap_done;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_ap_idle;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_ap_ready;
wire   [3:0] grp_stencil_Pipeline_stencil_label3_fu_228_filter_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce0;
wire   [3:0] grp_stencil_Pipeline_stencil_label3_fu_228_filter_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce1;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address0;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce0;
wire   [9:0] grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address1;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce1;
wire   [31:0] grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out;
wire    grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out_ap_vld;
reg   [5:0] c_reg_216;
wire   [0:0] icmp_ln7_fu_264_p2;
wire    ap_CS_fsm_state5;
reg    grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg;
wire   [0:0] icmp_ln8_fu_276_p2;
wire    ap_CS_fsm_state4;
reg   [31:0] temp_1_loc_fu_108;
wire   [63:0] zext_ln16_fu_325_p1;
reg   [6:0] r_fu_104;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
wire   [9:0] add_ln_fu_319_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg = 1'b0;
#0 r_fu_104 = 7'd0;
end
stencil_stencil_Pipeline_stencil_label3 grp_stencil_Pipeline_stencil_label3_fu_228(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil_Pipeline_stencil_label3_fu_228_ap_start),.ap_done(grp_stencil_Pipeline_stencil_label3_fu_228_ap_done),.ap_idle(grp_stencil_Pipeline_stencil_label3_fu_228_ap_idle),.ap_ready(grp_stencil_Pipeline_stencil_label3_fu_228_ap_ready),.r(r_1_reg_350),.c(c_reg_216),.lshr_ln5(lshr_ln5_reg_377),.filter_address0(grp_stencil_Pipeline_stencil_label3_fu_228_filter_address0),.filter_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce0),.filter_q0(filter_q0),.filter_address1(grp_stencil_Pipeline_stencil_label3_fu_228_filter_address1),.filter_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce1),.filter_q1(filter_q1),.orig_0_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address0),.orig_0_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce0),.orig_0_q0(orig_0_q0),.orig_0_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address1),.orig_0_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce1),.orig_0_q1(orig_0_q1),.orig_1_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address0),.orig_1_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce0),.orig_1_q0(orig_1_q0),.orig_1_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address1),.orig_1_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce1),.orig_1_q1(orig_1_q1),.orig_2_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address0),.orig_2_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce0),.orig_2_q0(orig_2_q0),.orig_2_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address1),.orig_2_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce1),.orig_2_q1(orig_2_q1),.orig_3_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address0),.orig_3_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce0),.orig_3_q0(orig_3_q0),.orig_3_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address1),.orig_3_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce1),.orig_3_q1(orig_3_q1),.orig_4_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address0),.orig_4_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce0),.orig_4_q0(orig_4_q0),.orig_4_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address1),.orig_4_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce1),.orig_4_q1(orig_4_q1),.orig_5_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address0),.orig_5_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce0),.orig_5_q0(orig_5_q0),.orig_5_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address1),.orig_5_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce1),.orig_5_q1(orig_5_q1),.orig_6_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address0),.orig_6_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce0),.orig_6_q0(orig_6_q0),.orig_6_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address1),.orig_6_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce1),.orig_6_q1(orig_6_q1),.orig_7_address0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address0),.orig_7_ce0(grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce0),.orig_7_q0(orig_7_q0),.orig_7_address1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address1),.orig_7_ce1(grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce1),.orig_7_q1(orig_7_q1),.empty(trunc_ln8_reg_372),.temp_1_out(grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out),.temp_1_out_ap_vld(grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln8_fu_276_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg <= 1'b1;
        end else if ((grp_stencil_Pipeline_stencil_label3_fu_228_ap_ready == 1'b1)) begin
            grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c_reg_216 <= add_ln8_reg_367;
    end else if (((icmp_ln7_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c_reg_216 <= 6'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_fu_104 <= 7'd0;
    end else if (((icmp_ln8_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        r_fu_104 <= add_ln7_reg_359;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln7_reg_359 <= add_ln7_fu_270_p2;
        r_1_reg_350 <= r_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln8_reg_367 <= add_ln8_fu_282_p2;
        lshr_ln5_reg_377 <= {{c_reg_216[5:3]}};
        trunc_ln8_reg_372 <= trunc_ln8_fu_288_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp_1_loc_fu_108 <= grp_stencil_Pipeline_stencil_label3_fu_228_temp_1_out;
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
always @ (*) begin
    if ((grp_stencil_Pipeline_stencil_label3_fu_228_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln7_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln7_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd3))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd4))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd5))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd6))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln8_reg_372 == 3'd7))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
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
            if (((icmp_ln7_fu_264_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln8_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_stencil_Pipeline_stencil_label3_fu_228_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln7_fu_270_p2 = (r_fu_104 + 7'd1);
assign add_ln8_fu_282_p2 = (c_reg_216 + 6'd1);
assign add_ln_fu_319_p3 = {{r_1_reg_350}, {lshr_ln5_reg_377}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign filter_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_filter_address0;
assign filter_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_filter_address1;
assign filter_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce0;
assign filter_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_filter_ce1;
assign grp_stencil_Pipeline_stencil_label3_fu_228_ap_start = grp_stencil_Pipeline_stencil_label3_fu_228_ap_start_reg;
assign icmp_ln7_fu_264_p2 = ((r_fu_104 == 7'd126) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_276_p2 = ((c_reg_216 == 6'd62) ? 1'b1 : 1'b0);
assign orig_0_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address0;
assign orig_0_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_address1;
assign orig_0_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce0;
assign orig_0_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_0_ce1;
assign orig_1_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address0;
assign orig_1_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_address1;
assign orig_1_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce0;
assign orig_1_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_1_ce1;
assign orig_2_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address0;
assign orig_2_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_address1;
assign orig_2_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce0;
assign orig_2_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_2_ce1;
assign orig_3_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address0;
assign orig_3_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_address1;
assign orig_3_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce0;
assign orig_3_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_3_ce1;
assign orig_4_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address0;
assign orig_4_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_address1;
assign orig_4_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce0;
assign orig_4_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_4_ce1;
assign orig_5_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address0;
assign orig_5_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_address1;
assign orig_5_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce0;
assign orig_5_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_5_ce1;
assign orig_6_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address0;
assign orig_6_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_address1;
assign orig_6_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce0;
assign orig_6_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_6_ce1;
assign orig_7_address0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address0;
assign orig_7_address1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_address1;
assign orig_7_ce0 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce0;
assign orig_7_ce1 = grp_stencil_Pipeline_stencil_label3_fu_228_orig_7_ce1;
assign sol_0_address0 = zext_ln16_fu_325_p1;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_1_loc_fu_108;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln16_fu_325_p1;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_loc_fu_108;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln16_fu_325_p1;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_1_loc_fu_108;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln16_fu_325_p1;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_1_loc_fu_108;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln16_fu_325_p1;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_1_loc_fu_108;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln16_fu_325_p1;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_1_loc_fu_108;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln16_fu_325_p1;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_1_loc_fu_108;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln16_fu_325_p1;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_1_loc_fu_108;
assign sol_7_we0 = sol_7_we0_local;
assign trunc_ln8_fu_288_p1 = c_reg_216[2:0];
assign zext_ln16_fu_325_p1 = add_ln_fu_319_p3;
endmodule 