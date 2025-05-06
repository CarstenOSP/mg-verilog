
module ms_mergesort_merge (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,start_r,m,stop);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] empty_fu_201_p1;
reg   [10:0] empty_reg_459;
wire  signed [63:0] sext_ln7_fu_205_p1;
reg  signed [63:0] sext_ln7_reg_464;
reg   [31:0] i_4_reg_469;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_258_p2;
reg   [10:0] add9_reg_495;
wire  signed [63:0] sext_ln11_1_fu_267_p1;
reg  signed [63:0] sext_ln11_1_reg_500;
wire   [31:0] select_ln8_fu_278_p3;
reg   [31:0] select_ln8_reg_506;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_fu_298_p1;
reg   [0:0] trunc_ln11_reg_514;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln12_fu_322_p2;
reg   [10:0] sub_ln12_reg_529;
wire   [31:0] select_ln12_fu_350_p3;
reg   [31:0] select_ln12_reg_555;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_j_reg_576;
wire    ap_CS_fsm_state9;
reg   [31:0] tmp_i_reg_583;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [63:0] zext_ln5_fu_232_p1;
wire   [0:0] icmp_ln7_fu_217_p2;
wire   [63:0] zext_ln7_fu_286_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln5_1_fu_316_p1;
wire   [0:0] icmp_ln11_fu_293_p2;
wire   [63:0] zext_ln12_fu_357_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln19_fu_369_p1;
wire   [0:0] icmp_ln18_fu_364_p2;
wire   [63:0] zext_ln20_fu_374_p1;
wire   [63:0] zext_ln5_2_fu_391_p1;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln21_fu_399_p2;
wire   [0:0] trunc_ln18_fu_379_p1;
wire   [9:0] a_0_addr_2_gep_fu_179_p3;
wire   [9:0] a_1_addr_2_gep_fu_187_p3;
reg   [31:0] i_fu_42;
wire   [31:0] add_ln7_fu_238_p2;
reg   [63:0] j_1_fu_50;
wire   [63:0] add_ln11_fu_327_p2;
wire  signed [63:0] sext_ln11_fu_263_p1;
reg   [63:0] k_fu_54;
wire   [63:0] add_ln18_fu_425_p2;
reg   [31:0] i_3_fu_58;
wire   [31:0] i_5_fu_403_p2;
reg   [31:0] j_2_fu_62;
wire   [31:0] j_4_fu_414_p2;
reg    a_0_ce0_local;
reg   [9:0] a_0_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_1_ce0_local;
reg   [9:0] a_1_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    temp_ce1_local;
wire  signed [31:0] empty_fu_201_p0;
wire  signed [31:0] sext_ln7_fu_205_p0;
wire   [9:0] lshr_ln5_fu_222_p4;
wire  signed [31:0] j_fu_249_p2;
wire   [10:0] trunc_ln5_fu_254_p1;
wire  signed [31:0] sext_ln11_1_fu_267_p0;
wire   [0:0] trunc_ln7_fu_275_p1;
wire   [9:0] lshr_ln5_1_fu_306_p4;
wire   [10:0] trunc_ln11_1_fu_302_p1;
wire   [9:0] lshr_ln5_2_fu_382_p4;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 i_fu_42 = 32'd0;
#0 j_1_fu_50 = 64'd0;
#0 k_fu_54 = 64'd0;
#0 i_3_fu_58 = 32'd0;
#0 j_2_fu_62 = 32'd0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0_local),.ce0(temp_ce0_local),.we0(temp_we0_local),.d0(temp_d0_local),.q0(temp_q0),.address1(temp_address1),.ce1(temp_ce1_local),.q1(temp_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_293_p2 == 1'd1))) begin
        i_3_fu_58 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_399_p2 == 1'd0))) begin
        i_3_fu_58 <= i_5_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_42 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_217_p2 == 1'd0))) begin
        i_fu_42 <= add_ln7_fu_238_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_217_p2 == 1'd1))) begin
        j_1_fu_50 <= sext_ln11_fu_263_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_293_p2 == 1'd0))) begin
        j_1_fu_50 <= add_ln11_fu_327_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_293_p2 == 1'd1))) begin
        j_2_fu_62 <= stop;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_399_p2 == 1'd1))) begin
        j_2_fu_62 <= j_4_fu_414_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_293_p2 == 1'd1))) begin
        k_fu_54 <= sext_ln7_reg_464;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_fu_54 <= add_ln18_fu_425_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_495 <= add9_fu_258_p2;
        i_4_reg_469 <= i_fu_42;
        sext_ln11_1_reg_500 <= sext_ln11_1_fu_267_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_459 <= empty_fu_201_p1;
        sext_ln7_reg_464 <= sext_ln7_fu_205_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        select_ln12_reg_555 <= select_ln12_fu_350_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln8_reg_506 <= select_ln8_fu_278_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln12_reg_529 <= sub_ln12_fu_322_p2;
        trunc_ln11_reg_514 <= trunc_ln11_fu_298_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_i_reg_583 <= temp_q0;
        tmp_j_reg_576 <= temp_q1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd1))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_179_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_0_address0_local = zext_ln5_1_fu_316_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0_local = zext_ln5_fu_232_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0))) begin
        if ((icmp_ln21_fu_399_p2 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_576;
        end else if ((icmp_ln21_fu_399_p2 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_583;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd0) & (icmp_ln21_fu_399_p2 == 1'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd1))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_187_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_1_address0_local = zext_ln5_1_fu_316_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0_local = zext_ln5_fu_232_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1))) begin
        if ((icmp_ln21_fu_399_p2 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_576;
        end else if ((icmp_ln21_fu_399_p2 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_583;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_379_p1 == 1'd1) & (icmp_ln21_fu_399_p2 == 1'd0)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
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
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_364_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_364_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_address0_local = zext_ln20_fu_374_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0_local = zext_ln12_fu_357_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0_local = zext_ln7_fu_286_p1;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_d0_local = select_ln12_reg_555;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0_local = select_ln8_reg_506;
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state4))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_217_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_293_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_364_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_addr_2_gep_fu_179_p3 = zext_ln5_2_fu_391_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_187_p3 = zext_ln5_2_fu_391_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign add9_fu_258_p2 = (trunc_ln5_fu_254_p1 + empty_reg_459);
assign add_ln11_fu_327_p2 = (j_1_fu_50 + 64'd1);
assign add_ln18_fu_425_p2 = (k_fu_54 + 64'd1);
assign add_ln7_fu_238_p2 = (i_fu_42 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign empty_fu_201_p0 = stop;
assign empty_fu_201_p1 = empty_fu_201_p0[10:0];
assign i_5_fu_403_p2 = (i_3_fu_58 + 32'd1);
assign icmp_ln11_fu_293_p2 = (($signed(j_1_fu_50) > $signed(sext_ln11_1_reg_500)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_364_p2 = (($signed(k_fu_54) > $signed(sext_ln11_1_reg_500)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_399_p2 = (($signed(tmp_j_reg_576) < $signed(tmp_i_reg_583)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_217_p2 = (($signed(i_fu_42) > $signed(m)) ? 1'b1 : 1'b0);
assign j_4_fu_414_p2 = ($signed(j_2_fu_62) + $signed(32'd4294967295));
assign j_fu_249_p2 = (m + 32'd1);
assign lshr_ln5_1_fu_306_p4 = {{j_1_fu_50[10:1]}};
assign lshr_ln5_2_fu_382_p4 = {{k_fu_54[10:1]}};
assign lshr_ln5_fu_222_p4 = {{i_fu_42[10:1]}};
assign select_ln12_fu_350_p3 = ((trunc_ln11_reg_514[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln8_fu_278_p3 = ((trunc_ln7_fu_275_p1[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign sext_ln11_1_fu_267_p0 = stop;
assign sext_ln11_1_fu_267_p1 = sext_ln11_1_fu_267_p0;
assign sext_ln11_fu_263_p1 = j_fu_249_p2;
assign sext_ln7_fu_205_p0 = start_r;
assign sext_ln7_fu_205_p1 = sext_ln7_fu_205_p0;
assign sub_ln12_fu_322_p2 = (add9_reg_495 - trunc_ln11_1_fu_302_p1);
assign temp_address1 = zext_ln19_fu_369_p1;
assign trunc_ln11_1_fu_302_p1 = j_1_fu_50[10:0];
assign trunc_ln11_fu_298_p1 = j_1_fu_50[0:0];
assign trunc_ln18_fu_379_p1 = k_fu_54[0:0];
assign trunc_ln5_fu_254_p1 = j_fu_249_p2[10:0];
assign trunc_ln7_fu_275_p1 = i_4_reg_469[0:0];
assign zext_ln12_fu_357_p1 = sub_ln12_reg_529;
assign zext_ln19_fu_369_p1 = j_2_fu_62;
assign zext_ln20_fu_374_p1 = i_3_fu_58;
assign zext_ln5_1_fu_316_p1 = lshr_ln5_1_fu_306_p4;
assign zext_ln5_2_fu_391_p1 = lshr_ln5_2_fu_382_p4;
assign zext_ln5_fu_232_p1 = lshr_ln5_fu_222_p4;
assign zext_ln7_fu_286_p1 = i_4_reg_469;
endmodule 
