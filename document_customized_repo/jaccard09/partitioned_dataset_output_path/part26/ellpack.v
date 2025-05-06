
module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_2_address0,nzval_2_ce0,nzval_2_q0,nzval_3_address0,nzval_3_ce0,nzval_3_q0,cols_0_address0,cols_0_ce0,cols_0_q0,cols_1_address0,cols_1_ce0,cols_1_q0,cols_2_address0,cols_2_ce0,cols_2_q0,cols_3_address0,cols_3_ce0,cols_3_q0,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_0_q0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_1_q0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_2_q0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0,out_3_q0);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [10:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [10:0] nzval_2_address0;
output   nzval_2_ce0;
input  [63:0] nzval_2_q0;
output  [10:0] nzval_3_address0;
output   nzval_3_ce0;
input  [63:0] nzval_3_q0;
output  [10:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [10:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [10:0] cols_2_address0;
output   cols_2_ce0;
input  [31:0] cols_2_q0;
output  [10:0] cols_3_address0;
output   cols_3_ce0;
input  [31:0] cols_3_q0;
output  [6:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [6:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [6:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [6:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [6:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [6:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [6:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [6:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [6:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
input  [63:0] out_0_q0;
output  [6:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
input  [63:0] out_1_q0;
output  [6:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
input  [63:0] out_2_q0;
output  [6:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
input  [63:0] out_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln13_fu_201_p2;
reg   [8:0] add_ln13_reg_330;
wire    ap_CS_fsm_state2;
reg   [6:0] out_0_addr_reg_335;
reg   [6:0] out_1_addr_reg_340;
reg   [6:0] out_2_addr_reg_345;
reg   [6:0] out_3_addr_reg_350;
wire   [1:0] trunc_ln13_fu_225_p1;
reg   [1:0] trunc_ln13_reg_355;
wire    ap_CS_fsm_state3;
wire   [63:0] sum_fu_244_p11;
reg   [63:0] sum_reg_359;
wire   [12:0] empty_fu_290_p2;
reg   [12:0] empty_reg_364;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_ap_done;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_ap_idle;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_ap_ready;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_ce0;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce0;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce1;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce0;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce1;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce0;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce1;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce0;
wire   [6:0] grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce1;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_ce0;
wire   [10:0] grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_ce0;
wire   [63:0] grp_ellpack_Pipeline_ellpack_2_fu_156_sum_1_out;
wire    grp_ellpack_Pipeline_ellpack_2_fu_156_sum_1_out_ap_vld;
reg    grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln10_fu_217_p1;
wire   [0:0] icmp_ln13_fu_195_p2;
reg   [8:0] i_fu_96;
wire    ap_CS_fsm_state6;
reg    out_0_ce0_local;
reg   [6:0] out_0_address0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln19_fu_299_p1;
reg    out_1_ce0_local;
reg   [6:0] out_1_address0_local;
reg    out_1_we0_local;
reg    out_2_ce0_local;
reg   [6:0] out_2_address0_local;
reg    out_2_we0_local;
reg    out_3_ce0_local;
reg   [6:0] out_3_address0_local;
reg    out_3_we0_local;
wire   [6:0] lshr_ln_fu_207_p4;
wire   [63:0] sum_fu_244_p2;
wire   [63:0] sum_fu_244_p4;
wire   [63:0] sum_fu_244_p6;
wire   [63:0] sum_fu_244_p8;
wire   [63:0] sum_fu_244_p9;
wire   [1:0] sum_fu_244_p10;
wire   [11:0] tmp_fu_268_p3;
wire   [9:0] tmp_2_fu_279_p3;
wire   [12:0] p_shl_fu_275_p1;
wire   [12:0] p_shl4_fu_286_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire   [1:0] sum_fu_244_p1;
wire   [1:0] sum_fu_244_p3;
wire  signed [1:0] sum_fu_244_p5;
wire  signed [1:0] sum_fu_244_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg = 1'b0;
#0 i_fu_96 = 9'd0;
end
ellpack_ellpack_Pipeline_ellpack_2 grp_ellpack_Pipeline_ellpack_2_fu_156(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start),.ap_done(grp_ellpack_Pipeline_ellpack_2_fu_156_ap_done),.ap_idle(grp_ellpack_Pipeline_ellpack_2_fu_156_ap_idle),.ap_ready(grp_ellpack_Pipeline_ellpack_2_fu_156_ap_ready),.sum(sum_reg_359),.empty(empty_reg_364),.nzval_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_address0),.nzval_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_ce0),.nzval_0_q0(nzval_0_q0),.nzval_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_address0),.nzval_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_ce0),.nzval_2_q0(nzval_2_q0),.cols_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_address0),.cols_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_ce0),.cols_0_q0(cols_0_q0),.cols_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_address0),.cols_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_ce0),.cols_2_q0(cols_2_q0),.vec_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address0),.vec_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address1),.vec_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address0),.vec_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address1),.vec_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce1),.vec_1_q1(vec_1_q1),.vec_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address0),.vec_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_2_address1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address1),.vec_2_ce1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce1),.vec_2_q1(vec_2_q1),.vec_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address0),.vec_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce0),.vec_3_q0(vec_3_q0),.vec_3_address1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address1),.vec_3_ce1(grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce1),.vec_3_q1(vec_3_q1),.nzval_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_address0),.nzval_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_ce0),.nzval_1_q0(nzval_1_q0),.nzval_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_address0),.nzval_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_ce0),.nzval_3_q0(nzval_3_q0),.cols_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_address0),.cols_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_ce0),.cols_1_q0(cols_1_q0),.cols_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_address0),.cols_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_ce0),.cols_3_q0(cols_3_q0),.sum_1_out(grp_ellpack_Pipeline_ellpack_2_fu_156_sum_1_out),.sum_1_out_ap_vld(grp_ellpack_Pipeline_ellpack_2_fu_156_sum_1_out_ap_vld));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U23(.din0(sum_fu_244_p2),.din1(sum_fu_244_p4),.din2(sum_fu_244_p6),.din3(sum_fu_244_p8),.def(sum_fu_244_p9),.sel(sum_fu_244_p10),.dout(sum_fu_244_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg <= 1'b1;
        end else if ((grp_ellpack_Pipeline_ellpack_2_fu_156_ap_ready == 1'b1)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_96 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_96 <= add_ln13_reg_330;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_330 <= add_ln13_fu_201_p2;
        out_0_addr_reg_335 <= zext_ln10_fu_217_p1;
        out_1_addr_reg_340 <= zext_ln10_fu_217_p1;
        out_2_addr_reg_345 <= zext_ln10_fu_217_p1;
        out_3_addr_reg_350 <= zext_ln10_fu_217_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_reg_364[12 : 1] <= empty_fu_290_p2[12 : 1];
        sum_reg_359 <= sum_fu_244_p11;
        trunc_ln13_reg_355 <= trunc_ln13_fu_225_p1;
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
always @ (*) begin
    if ((grp_ellpack_Pipeline_ellpack_2_fu_156_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln13_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln13_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_0_address0_local = out_0_addr_reg_335;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_0_address0_local = zext_ln10_fu_217_p1;
    end else begin
        out_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_355 == 2'd0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_1_address0_local = out_1_addr_reg_340;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_1_address0_local = zext_ln10_fu_217_p1;
    end else begin
        out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_355 == 2'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_2_address0_local = out_2_addr_reg_345;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_2_address0_local = zext_ln10_fu_217_p1;
    end else begin
        out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_355 == 2'd2))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_3_address0_local = out_3_addr_reg_350;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_3_address0_local = zext_ln10_fu_217_p1;
    end else begin
        out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_355 == 2'd3))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
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
            if (((icmp_ln13_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_ellpack_Pipeline_ellpack_2_fu_156_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_201_p2 = (i_fu_96 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln19_fu_299_p1 = grp_ellpack_Pipeline_ellpack_2_fu_156_sum_1_out;
assign cols_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_address0;
assign cols_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_0_ce0;
assign cols_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_address0;
assign cols_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_1_ce0;
assign cols_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_address0;
assign cols_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_2_ce0;
assign cols_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_address0;
assign cols_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_cols_3_ce0;
assign empty_fu_290_p2 = (p_shl_fu_275_p1 + p_shl4_fu_286_p1);
assign grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start = grp_ellpack_Pipeline_ellpack_2_fu_156_ap_start_reg;
assign icmp_ln13_fu_195_p2 = ((i_fu_96 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln_fu_207_p4 = {{i_fu_96[8:2]}};
assign nzval_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_address0;
assign nzval_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_0_ce0;
assign nzval_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_address0;
assign nzval_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_1_ce0;
assign nzval_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_address0;
assign nzval_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_2_ce0;
assign nzval_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_address0;
assign nzval_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_nzval_3_ce0;
assign out_0_address0 = out_0_address0_local;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln19_fu_299_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_address0_local;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln19_fu_299_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = out_2_address0_local;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln19_fu_299_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = out_3_address0_local;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln19_fu_299_p1;
assign out_3_we0 = out_3_we0_local;
assign p_shl4_fu_286_p1 = tmp_2_fu_279_p3;
assign p_shl_fu_275_p1 = tmp_fu_268_p3;
assign sum_fu_244_p10 = i_fu_96[1:0];
assign sum_fu_244_p2 = out_0_q0;
assign sum_fu_244_p4 = out_1_q0;
assign sum_fu_244_p6 = out_2_q0;
assign sum_fu_244_p8 = out_3_q0;
assign sum_fu_244_p9 = 'bx;
assign tmp_2_fu_279_p3 = {{i_fu_96}, {1'd0}};
assign tmp_fu_268_p3 = {{i_fu_96}, {3'd0}};
assign trunc_ln13_fu_225_p1 = i_fu_96[1:0];
assign vec_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address0;
assign vec_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_address1;
assign vec_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce0;
assign vec_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_0_ce1;
assign vec_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address0;
assign vec_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_address1;
assign vec_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce0;
assign vec_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_1_ce1;
assign vec_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address0;
assign vec_2_address1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_address1;
assign vec_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce0;
assign vec_2_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_2_ce1;
assign vec_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address0;
assign vec_3_address1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_address1;
assign vec_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce0;
assign vec_3_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_156_vec_3_ce1;
assign zext_ln10_fu_217_p1 = lshr_ln_fu_207_p4;
always @ (posedge ap_clk) begin
    empty_reg_364[0] <= 1'b0;
end
endmodule 
