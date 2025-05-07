module ms_mergesort_merge (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0,start_r,m,stop); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] a_q0;
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] empty_fu_143_p1;
reg   [10:0] empty_reg_335;
wire   [63:0] zext_ln7_fu_160_p1;
reg   [63:0] zext_ln7_reg_343;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_185_p2;
reg   [10:0] add9_reg_360;
wire  signed [63:0] sext_ln11_1_fu_194_p1;
reg  signed [63:0] sext_ln11_1_reg_365;
wire    ap_CS_fsm_state4;
wire   [10:0] sub_ln12_fu_215_p2;
reg   [10:0] sub_ln12_reg_378;
wire    ap_CS_fsm_state6;
reg   [31:0] tmp_j_reg_426;
wire    ap_CS_fsm_state7;
reg   [31:0] tmp_i_reg_432;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [0:0] icmp_ln7_fu_155_p2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln11_fu_206_p2;
wire   [63:0] zext_ln12_fu_243_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln19_fu_261_p1;
wire   [0:0] icmp_ln18_fu_250_p2;
wire   [63:0] zext_ln20_fu_266_p1;
wire   [63:0] zext_ln18_fu_271_p1;
wire    ap_CS_fsm_state8;
reg   [31:0] i_fu_34;
wire   [31:0] add_ln7_fu_165_p2;
reg   [63:0] j_1_fu_42;
wire   [63:0] add_ln11_fu_220_p2;
wire  signed [63:0] sext_ln11_fu_190_p1;
reg   [31:0] k_fu_46;
wire   [31:0] add_ln18_fu_299_p2;
reg   [31:0] i_8_fu_50;
wire   [31:0] i_11_fu_279_p2;
wire   [0:0] icmp_ln21_fu_275_p2;
reg   [31:0] j_2_fu_54;
wire   [31:0] j_4_fu_289_p2;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    temp_we0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    temp_ce1_local;
wire  signed [31:0] empty_fu_143_p0;
wire  signed [31:0] j_fu_176_p2;
wire   [10:0] trunc_ln5_fu_181_p1;
wire  signed [31:0] sext_ln11_1_fu_194_p0;
wire   [10:0] trunc_ln11_fu_211_p1;
wire  signed [31:0] icmp_ln18_fu_250_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 i_fu_34 = 32'd0;
#0 j_1_fu_42 = 64'd0;
#0 k_fu_46 = 32'd0;
#0 i_8_fu_50 = 32'd0;
#0 j_2_fu_54 = 32'd0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0_local),.ce0(temp_ce0_local),.we0(temp_we0_local),.d0(a_q0),.q0(temp_q0),.address1(temp_address1),.ce1(temp_ce1_local),.q1(temp_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_206_p2 == 1'd1))) begin
        i_8_fu_50 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd0))) begin
        i_8_fu_50 <= i_11_fu_279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_34 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_155_p2 == 1'd0))) begin
        i_fu_34 <= add_ln7_fu_165_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_155_p2 == 1'd1))) begin
        j_1_fu_42 <= sext_ln11_fu_190_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_206_p2 == 1'd0))) begin
        j_1_fu_42 <= add_ln11_fu_220_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_206_p2 == 1'd1))) begin
        j_2_fu_54 <= stop;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd1))) begin
        j_2_fu_54 <= j_4_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_206_p2 == 1'd1))) begin
        k_fu_46 <= start_r;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        k_fu_46 <= add_ln18_fu_299_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_360 <= add9_fu_185_p2;
        sext_ln11_1_reg_365 <= sext_ln11_1_fu_194_p1;
        zext_ln7_reg_343[31 : 0] <= zext_ln7_fu_160_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_335 <= empty_fu_143_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sub_ln12_reg_378 <= sub_ln12_fu_215_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_i_reg_432 <= temp_q0;
        tmp_j_reg_426 <= temp_q1;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd0)))) begin
        a_address0_local = zext_ln18_fu_271_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_address0_local = j_1_fu_42;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address0_local = zext_ln7_fu_160_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd0)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((icmp_ln21_fu_275_p2 == 1'd1)) begin
            a_d0_local = tmp_j_reg_426;
        end else if ((icmp_ln21_fu_275_p2 == 1'd0)) begin
            a_d0_local = tmp_i_reg_432;
        end else begin
            a_d0_local = 'bx;
        end
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_275_p2 == 1'd0)))) begin
        a_we0_local = 1'b1;
    end else begin
        a_we0_local = 1'b0;
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
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_250_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_250_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_address0_local = zext_ln20_fu_266_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_address0_local = zext_ln12_fu_243_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_address0_local = zext_ln7_reg_343;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_155_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_206_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_250_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_ce0 = a_ce0_local;
assign a_d0 = a_d0_local;
assign a_we0 = a_we0_local;
assign add9_fu_185_p2 = (trunc_ln5_fu_181_p1 + empty_reg_335);
assign add_ln11_fu_220_p2 = (j_1_fu_42 + 64'd1);
assign add_ln18_fu_299_p2 = (k_fu_46 + 32'd1);
assign add_ln7_fu_165_p2 = (i_fu_34 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign empty_fu_143_p0 = stop;
assign empty_fu_143_p1 = empty_fu_143_p0[10:0];
assign i_11_fu_279_p2 = (i_8_fu_50 + 32'd1);
assign icmp_ln11_fu_206_p2 = (($signed(j_1_fu_42) > $signed(sext_ln11_1_reg_365)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_250_p1 = stop;
assign icmp_ln18_fu_250_p2 = (($signed(k_fu_46) > $signed(icmp_ln18_fu_250_p1)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_275_p2 = (($signed(tmp_j_reg_426) < $signed(tmp_i_reg_432)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_155_p2 = (($signed(i_fu_34) > $signed(m)) ? 1'b1 : 1'b0);
assign j_4_fu_289_p2 = ($signed(j_2_fu_54) + $signed(32'd4294967295));
assign j_fu_176_p2 = (m + 32'd1);
assign sext_ln11_1_fu_194_p0 = stop;
assign sext_ln11_1_fu_194_p1 = sext_ln11_1_fu_194_p0;
assign sext_ln11_fu_190_p1 = j_fu_176_p2;
assign sub_ln12_fu_215_p2 = (add9_reg_360 - trunc_ln11_fu_211_p1);
assign temp_address1 = zext_ln19_fu_261_p1;
assign trunc_ln11_fu_211_p1 = j_1_fu_42[10:0];
assign trunc_ln5_fu_181_p1 = j_fu_176_p2[10:0];
assign zext_ln12_fu_243_p1 = sub_ln12_reg_378;
assign zext_ln18_fu_271_p1 = k_fu_46;
assign zext_ln19_fu_261_p1 = j_2_fu_54;
assign zext_ln20_fu_266_p1 = i_8_fu_50;
assign zext_ln7_fu_160_p1 = i_fu_34;
always @ (posedge ap_clk) begin
    zext_ln7_reg_343[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule 