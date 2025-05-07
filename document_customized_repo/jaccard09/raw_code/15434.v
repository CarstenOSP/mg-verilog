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
input  [10:0] start_r;
input  [10:0] m;
input  [10:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] stop_cast9_fu_203_p1;
reg   [31:0] stop_cast9_reg_456;
wire   [31:0] start_cast8_fu_207_p1;
reg   [31:0] start_cast8_reg_461;
wire   [63:0] zext_ln7_fu_211_p1;
reg   [63:0] zext_ln7_reg_466;
reg   [10:0] i_2_reg_471;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_260_p2;
reg   [10:0] add9_reg_497;
wire   [63:0] zext_ln11_1_fu_269_p1;
reg   [63:0] zext_ln11_1_reg_502;
wire   [31:0] select_ln8_fu_280_p3;
reg   [31:0] select_ln8_reg_508;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln11_fu_300_p1;
reg   [0:0] trunc_ln11_reg_516;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln12_fu_324_p2;
reg   [10:0] sub_ln12_reg_531;
wire   [31:0] select_ln12_fu_352_p3;
reg   [31:0] select_ln12_reg_557;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] tmp_j_reg_578;
wire    ap_CS_fsm_state9;
reg   [31:0] tmp_i_reg_585;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [63:0] zext_ln5_fu_238_p1;
wire   [0:0] icmp_ln7_fu_223_p2;
wire   [63:0] zext_ln7_1_fu_288_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln5_1_fu_318_p1;
wire   [0:0] icmp_ln11_fu_295_p2;
wire   [63:0] zext_ln12_fu_359_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln19_fu_371_p1;
wire   [0:0] icmp_ln18_fu_366_p2;
wire   [63:0] zext_ln20_fu_376_p1;
wire   [63:0] zext_ln5_2_fu_393_p1;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln21_fu_401_p2;
wire   [0:0] trunc_ln18_fu_381_p1;
wire   [9:0] a_0_addr_2_gep_fu_181_p3;
wire   [9:0] a_1_addr_2_gep_fu_189_p3;
reg   [10:0] i_fu_44;
wire   [10:0] add_ln7_fu_244_p2;
reg   [63:0] j_1_fu_52;
wire   [63:0] add_ln11_fu_329_p2;
wire   [63:0] zext_ln11_fu_265_p1;
reg   [63:0] k_fu_56;
wire   [63:0] add_ln18_fu_427_p2;
reg   [31:0] i_1_fu_60;
wire   [31:0] i_3_fu_405_p2;
reg   [31:0] j_2_fu_64;
wire   [31:0] j_4_fu_416_p2;
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
wire   [9:0] lshr_ln5_fu_228_p4;
wire   [10:0] j_fu_255_p2;
wire   [0:0] trunc_ln7_fu_277_p1;
wire   [9:0] lshr_ln5_1_fu_308_p4;
wire   [10:0] trunc_ln11_1_fu_304_p1;
wire   [9:0] lshr_ln5_2_fu_384_p4;
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
#0 i_fu_44 = 11'd0;
#0 j_1_fu_52 = 64'd0;
#0 k_fu_56 = 64'd0;
#0 i_1_fu_60 = 32'd0;
#0 j_2_fu_64 = 32'd0;
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
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_295_p2 == 1'd1))) begin
        i_1_fu_60 <= start_cast8_reg_461;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_401_p2 == 1'd0))) begin
        i_1_fu_60 <= i_3_fu_405_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_44 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_223_p2 == 1'd0))) begin
        i_fu_44 <= add_ln7_fu_244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_223_p2 == 1'd1))) begin
        j_1_fu_52 <= zext_ln11_fu_265_p1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_295_p2 == 1'd0))) begin
        j_1_fu_52 <= add_ln11_fu_329_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_295_p2 == 1'd1))) begin
        j_2_fu_64 <= stop_cast9_reg_456;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln21_fu_401_p2 == 1'd1))) begin
        j_2_fu_64 <= j_4_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_295_p2 == 1'd1))) begin
        k_fu_56 <= zext_ln7_reg_466;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_fu_56 <= add_ln18_fu_427_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_497 <= add9_fu_260_p2;
        i_2_reg_471 <= i_fu_44;
        zext_ln11_1_reg_502[10 : 0] <= zext_ln11_1_fu_269_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        select_ln12_reg_557 <= select_ln12_fu_352_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln8_reg_508 <= select_ln8_fu_280_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        start_cast8_reg_461[10 : 0] <= start_cast8_fu_207_p1[10 : 0];
        stop_cast9_reg_456[10 : 0] <= stop_cast9_fu_203_p1[10 : 0];
        zext_ln7_reg_466[10 : 0] <= zext_ln7_fu_211_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sub_ln12_reg_531 <= sub_ln12_fu_324_p2;
        trunc_ln11_reg_516 <= trunc_ln11_fu_300_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_i_reg_585 <= temp_q0;
        tmp_j_reg_578 <= temp_q1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd1))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_181_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd0))) begin
        a_0_address0_local = zext_ln5_2_fu_393_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_0_address0_local = zext_ln5_1_fu_318_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0_local = zext_ln5_fu_238_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0))) begin
        if ((icmp_ln21_fu_401_p2 == 1'd1)) begin
            a_0_d0_local = tmp_j_reg_578;
        end else if ((icmp_ln21_fu_401_p2 == 1'd0)) begin
            a_0_d0_local = tmp_i_reg_585;
        end else begin
            a_0_d0_local = 'bx;
        end
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd0) & (icmp_ln21_fu_401_p2 == 1'd0)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd1))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_189_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd0))) begin
        a_1_address0_local = zext_ln5_2_fu_393_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_1_address0_local = zext_ln5_1_fu_318_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0_local = zext_ln5_fu_238_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1))) begin
        if ((icmp_ln21_fu_401_p2 == 1'd1)) begin
            a_1_d0_local = tmp_j_reg_578;
        end else if ((icmp_ln21_fu_401_p2 == 1'd0)) begin
            a_1_d0_local = tmp_i_reg_585;
        end else begin
            a_1_d0_local = 'bx;
        end
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (trunc_ln18_fu_381_p1 == 1'd1) & (icmp_ln21_fu_401_p2 == 1'd0)))) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_366_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_366_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        temp_address0_local = zext_ln20_fu_376_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0_local = zext_ln12_fu_359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0_local = zext_ln7_1_fu_288_p1;
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
        temp_d0_local = select_ln12_reg_557;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0_local = select_ln8_reg_508;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_223_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln11_fu_295_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln18_fu_366_p2 == 1'd1))) begin
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
assign a_0_addr_2_gep_fu_181_p3 = zext_ln5_2_fu_393_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_189_p3 = zext_ln5_2_fu_393_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign add9_fu_260_p2 = (j_fu_255_p2 + stop);
assign add_ln11_fu_329_p2 = (j_1_fu_52 + 64'd1);
assign add_ln18_fu_427_p2 = (k_fu_56 + 64'd1);
assign add_ln7_fu_244_p2 = (i_fu_44 + 11'd1);
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
assign i_3_fu_405_p2 = (i_1_fu_60 + 32'd1);
assign icmp_ln11_fu_295_p2 = (($signed(j_1_fu_52) > $signed(zext_ln11_1_reg_502)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_366_p2 = (($signed(k_fu_56) > $signed(zext_ln11_1_reg_502)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_401_p2 = (($signed(tmp_j_reg_578) < $signed(tmp_i_reg_585)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_223_p2 = ((i_fu_44 > m) ? 1'b1 : 1'b0);
assign j_4_fu_416_p2 = ($signed(j_2_fu_64) + $signed(32'd4294967295));
assign j_fu_255_p2 = (m + 11'd1);
assign lshr_ln5_1_fu_308_p4 = {{j_1_fu_52[10:1]}};
assign lshr_ln5_2_fu_384_p4 = {{k_fu_56[10:1]}};
assign lshr_ln5_fu_228_p4 = {{i_fu_44[10:1]}};
assign select_ln12_fu_352_p3 = ((trunc_ln11_reg_516[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign select_ln8_fu_280_p3 = ((trunc_ln7_fu_277_p1[0:0] == 1'b1) ? a_1_q0 : a_0_q0);
assign start_cast8_fu_207_p1 = start_r;
assign stop_cast9_fu_203_p1 = stop;
assign sub_ln12_fu_324_p2 = (add9_reg_497 - trunc_ln11_1_fu_304_p1);
assign temp_address1 = zext_ln19_fu_371_p1;
assign trunc_ln11_1_fu_304_p1 = j_1_fu_52[10:0];
assign trunc_ln11_fu_300_p1 = j_1_fu_52[0:0];
assign trunc_ln18_fu_381_p1 = k_fu_56[0:0];
assign trunc_ln7_fu_277_p1 = i_2_reg_471[0:0];
assign zext_ln11_1_fu_269_p1 = stop;
assign zext_ln11_fu_265_p1 = j_fu_255_p2;
assign zext_ln12_fu_359_p1 = sub_ln12_reg_531;
assign zext_ln19_fu_371_p1 = j_2_fu_64;
assign zext_ln20_fu_376_p1 = i_1_fu_60;
assign zext_ln5_1_fu_318_p1 = lshr_ln5_1_fu_308_p4;
assign zext_ln5_2_fu_393_p1 = lshr_ln5_2_fu_384_p4;
assign zext_ln5_fu_238_p1 = lshr_ln5_fu_228_p4;
assign zext_ln7_1_fu_288_p1 = i_2_reg_471;
assign zext_ln7_fu_211_p1 = start_r;
always @ (posedge ap_clk) begin
    stop_cast9_reg_456[31:11] <= 21'b000000000000000000000;
    start_cast8_reg_461[31:11] <= 21'b000000000000000000000;
    zext_ln7_reg_466[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln11_1_reg_502[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 