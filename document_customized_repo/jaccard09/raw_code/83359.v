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
input  [10:0] start_r;
input  [10:0] m;
input  [10:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] stop_cast6_fu_147_p1;
reg   [31:0] stop_cast6_reg_340;
wire   [31:0] start_cast5_fu_151_p1;
reg   [31:0] start_cast5_reg_345;
wire   [11:0] zext_ln7_fu_155_p1;
reg   [11:0] zext_ln7_reg_350;
wire   [63:0] zext_ln7_1_fu_172_p1;
reg   [63:0] zext_ln7_1_reg_358;
wire    ap_CS_fsm_state2;
wire   [10:0] add9_fu_193_p2;
reg   [10:0] add9_reg_375;
wire   [63:0] zext_ln11_1_fu_202_p1;
reg   [63:0] zext_ln11_1_reg_380;
wire   [11:0] zext_ln11_2_fu_205_p1;
reg   [11:0] zext_ln11_2_reg_385;
wire    ap_CS_fsm_state4;
wire   [10:0] sub_ln12_fu_226_p2;
reg   [10:0] sub_ln12_reg_398;
wire    ap_CS_fsm_state6;
reg   [31:0] tmp_j_reg_446;
wire    ap_CS_fsm_state7;
reg   [31:0] tmp_i_reg_452;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
wire   [31:0] temp_q1;
wire   [0:0] icmp_ln7_fu_167_p2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln11_fu_217_p2;
wire   [63:0] zext_ln12_fu_254_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln19_fu_272_p1;
wire   [0:0] icmp_ln18_fu_261_p2;
wire   [63:0] zext_ln20_fu_277_p1;
wire   [63:0] zext_ln18_fu_282_p1;
wire    ap_CS_fsm_state8;
reg   [10:0] i_fu_38;
wire   [10:0] add_ln7_fu_177_p2;
reg   [63:0] j_1_fu_46;
wire   [63:0] add_ln11_fu_231_p2;
wire   [63:0] zext_ln11_fu_198_p1;
reg   [11:0] k_fu_50;
wire   [11:0] add_ln18_fu_310_p2;
reg   [31:0] i_1_fu_54;
wire   [31:0] i_3_fu_290_p2;
wire   [0:0] icmp_ln21_fu_286_p2;
reg   [31:0] j_2_fu_58;
wire   [31:0] j_4_fu_300_p2;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    temp_we0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    temp_ce1_local;
wire   [10:0] j_fu_188_p2;
wire   [10:0] trunc_ln11_fu_222_p1;
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
#0 i_fu_38 = 11'd0;
#0 j_1_fu_46 = 64'd0;
#0 k_fu_50 = 12'd0;
#0 i_1_fu_54 = 32'd0;
#0 j_2_fu_58 = 32'd0;
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
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_217_p2 == 1'd1))) begin
        i_1_fu_54 <= start_cast5_reg_345;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd0))) begin
        i_1_fu_54 <= i_3_fu_290_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_38 <= start_r;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_167_p2 == 1'd0))) begin
        i_fu_38 <= add_ln7_fu_177_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_167_p2 == 1'd1))) begin
        j_1_fu_46 <= zext_ln11_fu_198_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_217_p2 == 1'd0))) begin
        j_1_fu_46 <= add_ln11_fu_231_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_217_p2 == 1'd1))) begin
        j_2_fu_58 <= stop_cast6_reg_340;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd1))) begin
        j_2_fu_58 <= j_4_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_217_p2 == 1'd1))) begin
        k_fu_50 <= zext_ln7_reg_350;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        k_fu_50 <= add_ln18_fu_310_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add9_reg_375 <= add9_fu_193_p2;
        zext_ln11_1_reg_380[10 : 0] <= zext_ln11_1_fu_202_p1[10 : 0];
        zext_ln11_2_reg_385[10 : 0] <= zext_ln11_2_fu_205_p1[10 : 0];
        zext_ln7_1_reg_358[10 : 0] <= zext_ln7_1_fu_172_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        start_cast5_reg_345[10 : 0] <= start_cast5_fu_151_p1[10 : 0];
        stop_cast6_reg_340[10 : 0] <= stop_cast6_fu_147_p1[10 : 0];
        zext_ln7_reg_350[10 : 0] <= zext_ln7_fu_155_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sub_ln12_reg_398 <= sub_ln12_fu_226_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_i_reg_452 <= temp_q0;
        tmp_j_reg_446 <= temp_q1;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd0)))) begin
        a_address0_local = zext_ln18_fu_282_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_address0_local = j_1_fu_46;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_address0_local = zext_ln7_1_fu_172_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd0)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((icmp_ln21_fu_286_p2 == 1'd1)) begin
            a_d0_local = tmp_j_reg_446;
        end else if ((icmp_ln21_fu_286_p2 == 1'd0)) begin
            a_d0_local = tmp_i_reg_452;
        end else begin
            a_d0_local = 'bx;
        end
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln21_fu_286_p2 == 1'd0)))) begin
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
    if ((((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_261_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_261_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_address0_local = zext_ln20_fu_277_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        temp_address0_local = zext_ln12_fu_254_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_address0_local = zext_ln7_1_reg_358;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln7_fu_167_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln11_fu_217_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln18_fu_261_p2 == 1'd1))) begin
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
assign add9_fu_193_p2 = (j_fu_188_p2 + stop);
assign add_ln11_fu_231_p2 = (j_1_fu_46 + 64'd1);
assign add_ln18_fu_310_p2 = (k_fu_50 + 12'd1);
assign add_ln7_fu_177_p2 = (i_fu_38 + 11'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign i_3_fu_290_p2 = (i_1_fu_54 + 32'd1);
assign icmp_ln11_fu_217_p2 = (($signed(j_1_fu_46) > $signed(zext_ln11_1_reg_380)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_261_p2 = ((k_fu_50 > zext_ln11_2_reg_385) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_286_p2 = (($signed(tmp_j_reg_446) < $signed(tmp_i_reg_452)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_167_p2 = ((i_fu_38 > m) ? 1'b1 : 1'b0);
assign j_4_fu_300_p2 = ($signed(j_2_fu_58) + $signed(32'd4294967295));
assign j_fu_188_p2 = (m + 11'd1);
assign start_cast5_fu_151_p1 = start_r;
assign stop_cast6_fu_147_p1 = stop;
assign sub_ln12_fu_226_p2 = (add9_reg_375 - trunc_ln11_fu_222_p1);
assign temp_address1 = zext_ln19_fu_272_p1;
assign trunc_ln11_fu_222_p1 = j_1_fu_46[10:0];
assign zext_ln11_1_fu_202_p1 = stop;
assign zext_ln11_2_fu_205_p1 = stop;
assign zext_ln11_fu_198_p1 = j_fu_188_p2;
assign zext_ln12_fu_254_p1 = sub_ln12_reg_398;
assign zext_ln18_fu_282_p1 = k_fu_50;
assign zext_ln19_fu_272_p1 = j_2_fu_58;
assign zext_ln20_fu_277_p1 = i_1_fu_54;
assign zext_ln7_1_fu_172_p1 = i_fu_38;
assign zext_ln7_fu_155_p1 = start_r;
always @ (posedge ap_clk) begin
    stop_cast6_reg_340[31:11] <= 21'b000000000000000000000;
    start_cast5_reg_345[31:11] <= 21'b000000000000000000000;
    zext_ln7_reg_350[11] <= 1'b0;
    zext_ln7_1_reg_358[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln11_1_reg_380[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln11_2_reg_385[11] <= 1'b0;
end
endmodule 