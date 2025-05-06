
module Gsm_LPC_Analysis_Transformation_to_Log_Area_Ratios (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,LARc_q0,LARc_address1,LARc_ce1,LARc_we1,LARc_d1,LARc_q1);  
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
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
input  [15:0] LARc_q0;
output  [2:0] LARc_address1;
output   LARc_ce1;
output   LARc_we1;
output  [15:0] LARc_d1;
input  [15:0] LARc_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] reg_189;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [15:0] grp_fu_153_p3;
reg   [15:0] reg_193;
reg   [15:0] reg_197;
wire   [15:0] grp_fu_181_p3;
reg   [15:0] reg_201;
wire   [2:0] LARc_addr_reg_829;
wire   [2:0] LARc_addr_1_reg_834;
reg   [0:0] tmp_reg_839;
reg   [0:0] tmp_1_reg_845;
wire   [2:0] LARc_addr_2_reg_851;
wire   [2:0] LARc_addr_3_reg_856;
wire   [15:0] temp_1_fu_264_p3;
reg   [15:0] temp_1_reg_861;
wire   [15:0] temp_12_fu_331_p3;
reg   [15:0] temp_12_reg_867;
reg   [0:0] tmp_2_reg_873;
reg   [0:0] tmp_3_reg_879;
wire   [2:0] LARc_addr_4_reg_885;
wire   [2:0] LARc_addr_5_reg_890;
wire   [15:0] select_ln268_fu_344_p3;
reg   [15:0] select_ln268_reg_895;
wire   [15:0] select_ln268_1_fu_355_p3;
reg   [15:0] select_ln268_1_reg_900;
wire   [15:0] temp_19_fu_420_p3;
reg   [15:0] temp_19_reg_905;
wire   [15:0] temp_26_fu_487_p3;
reg   [15:0] temp_26_reg_911;
reg   [0:0] tmp_4_reg_917;
reg   [0:0] tmp_5_reg_923;
wire   [2:0] LARc_addr_6_reg_929;
wire   [2:0] LARc_addr_7_reg_934;
wire   [15:0] select_ln268_2_fu_500_p3;
reg   [15:0] select_ln268_2_reg_939;
wire   [15:0] select_ln268_3_fu_511_p3;
reg   [15:0] select_ln268_3_reg_944;
wire   [15:0] temp_33_fu_576_p3;
reg   [15:0] temp_33_reg_949;
wire   [15:0] temp_40_fu_643_p3;
reg   [15:0] temp_40_reg_955;
reg   [0:0] tmp_6_reg_961;
reg   [0:0] tmp_7_reg_967;
wire   [15:0] select_ln268_4_fu_656_p3;
reg   [15:0] select_ln268_4_reg_973;
wire    ap_CS_fsm_state6;
wire   [15:0] select_ln268_5_fu_667_p3;
reg   [15:0] select_ln268_5_reg_978;
wire   [15:0] temp_47_fu_732_p3;
reg   [15:0] temp_47_reg_983;
wire   [15:0] temp_54_fu_799_p3;
reg   [15:0] temp_54_reg_989;
wire   [15:0] select_ln268_6_fu_812_p3;
reg   [15:0] select_ln268_6_reg_995;
wire    ap_CS_fsm_state7;
wire   [15:0] select_ln268_7_fu_823_p3;
reg   [15:0] select_ln268_7_reg_1000;
reg    LARc_ce1_local;
reg   [2:0] LARc_address1_local;
reg    LARc_ce0_local;
reg   [2:0] LARc_address0_local;
reg    LARc_we1_local;
reg   [15:0] LARc_d1_local;
reg    LARc_we0_local;
reg   [15:0] LARc_d0_local;
wire    ap_CS_fsm_state8;
wire   [0:0] grp_fu_141_p2;
wire   [15:0] grp_fu_147_p2;
wire   [0:0] grp_fu_169_p2;
wire   [15:0] grp_fu_175_p2;
wire   [15:0] temp_fu_205_p3;
wire   [14:0] temp_3_fu_218_p4;
wire   [15:0] shl_ln265_fu_244_p2;
wire   [0:0] icmp_ln258_fu_232_p2;
wire   [15:0] temp_4_fu_238_p2;
wire   [15:0] temp_5_fu_250_p2;
wire   [0:0] icmp_ln254_fu_212_p2;
wire  signed [15:0] sext_ln256_fu_228_p1;
wire   [15:0] temp_6_fu_256_p3;
wire   [15:0] temp_7_fu_272_p3;
wire   [14:0] temp_9_fu_285_p4;
wire   [15:0] shl_ln265_1_fu_311_p2;
wire   [0:0] icmp_ln258_1_fu_299_p2;
wire   [15:0] temp_10_fu_305_p2;
wire   [15:0] temp_11_fu_317_p2;
wire   [0:0] icmp_ln254_1_fu_279_p2;
wire  signed [15:0] sext_ln256_1_fu_295_p1;
wire   [15:0] temp_13_fu_323_p3;
wire   [15:0] sub_ln268_fu_339_p2;
wire   [15:0] sub_ln268_1_fu_350_p2;
wire   [15:0] temp_14_fu_361_p3;
wire   [14:0] temp_16_fu_374_p4;
wire   [15:0] shl_ln265_2_fu_400_p2;
wire   [0:0] icmp_ln258_2_fu_388_p2;
wire   [15:0] temp_17_fu_394_p2;
wire   [15:0] temp_18_fu_406_p2;
wire   [0:0] icmp_ln254_2_fu_368_p2;
wire  signed [15:0] sext_ln256_2_fu_384_p1;
wire   [15:0] temp_20_fu_412_p3;
wire   [15:0] temp_21_fu_428_p3;
wire   [14:0] temp_23_fu_441_p4;
wire   [15:0] shl_ln265_3_fu_467_p2;
wire   [0:0] icmp_ln258_3_fu_455_p2;
wire   [15:0] temp_24_fu_461_p2;
wire   [15:0] temp_25_fu_473_p2;
wire   [0:0] icmp_ln254_3_fu_435_p2;
wire  signed [15:0] sext_ln256_3_fu_451_p1;
wire   [15:0] temp_27_fu_479_p3;
wire   [15:0] sub_ln268_2_fu_495_p2;
wire   [15:0] sub_ln268_3_fu_506_p2;
wire   [15:0] temp_28_fu_517_p3;
wire   [14:0] temp_30_fu_530_p4;
wire   [15:0] shl_ln265_4_fu_556_p2;
wire   [0:0] icmp_ln258_4_fu_544_p2;
wire   [15:0] temp_31_fu_550_p2;
wire   [15:0] temp_32_fu_562_p2;
wire   [0:0] icmp_ln254_4_fu_524_p2;
wire  signed [15:0] sext_ln256_4_fu_540_p1;
wire   [15:0] temp_34_fu_568_p3;
wire   [15:0] temp_35_fu_584_p3;
wire   [14:0] temp_37_fu_597_p4;
wire   [15:0] shl_ln265_5_fu_623_p2;
wire   [0:0] icmp_ln258_5_fu_611_p2;
wire   [15:0] temp_38_fu_617_p2;
wire   [15:0] temp_39_fu_629_p2;
wire   [0:0] icmp_ln254_5_fu_591_p2;
wire  signed [15:0] sext_ln256_5_fu_607_p1;
wire   [15:0] temp_41_fu_635_p3;
wire   [15:0] sub_ln268_4_fu_651_p2;
wire   [15:0] sub_ln268_5_fu_662_p2;
wire   [15:0] temp_42_fu_673_p3;
wire   [14:0] temp_44_fu_686_p4;
wire   [15:0] shl_ln265_6_fu_712_p2;
wire   [0:0] icmp_ln258_6_fu_700_p2;
wire   [15:0] temp_45_fu_706_p2;
wire   [15:0] temp_46_fu_718_p2;
wire   [0:0] icmp_ln254_6_fu_680_p2;
wire  signed [15:0] sext_ln256_6_fu_696_p1;
wire   [15:0] temp_48_fu_724_p3;
wire   [15:0] temp_49_fu_740_p3;
wire   [14:0] temp_51_fu_753_p4;
wire   [15:0] shl_ln265_7_fu_779_p2;
wire   [0:0] icmp_ln258_7_fu_767_p2;
wire   [15:0] temp_52_fu_773_p2;
wire   [15:0] temp_53_fu_785_p2;
wire   [0:0] icmp_ln254_7_fu_747_p2;
wire  signed [15:0] sext_ln256_7_fu_763_p1;
wire   [15:0] temp_55_fu_791_p3;
wire   [15:0] sub_ln268_6_fu_807_p2;
wire   [15:0] sub_ln268_7_fu_818_p2;
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
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_189 <= LARc_q1;
        reg_193 <= grp_fu_153_p3;
        reg_197 <= LARc_q0;
        reg_201 <= grp_fu_181_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        select_ln268_1_reg_900 <= select_ln268_1_fu_355_p3;
        select_ln268_reg_895 <= select_ln268_fu_344_p3;
        temp_19_reg_905 <= temp_19_fu_420_p3;
        temp_26_reg_911 <= temp_26_fu_487_p3;
        tmp_4_reg_917 <= LARc_q1[32'd15];
        tmp_5_reg_923 <= LARc_q0[32'd15];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        select_ln268_2_reg_939 <= select_ln268_2_fu_500_p3;
        select_ln268_3_reg_944 <= select_ln268_3_fu_511_p3;
        temp_33_reg_949 <= temp_33_fu_576_p3;
        temp_40_reg_955 <= temp_40_fu_643_p3;
        tmp_6_reg_961 <= LARc_q1[32'd15];
        tmp_7_reg_967 <= LARc_q0[32'd15];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        select_ln268_4_reg_973 <= select_ln268_4_fu_656_p3;
        select_ln268_5_reg_978 <= select_ln268_5_fu_667_p3;
        temp_47_reg_983 <= temp_47_fu_732_p3;
        temp_54_reg_989 <= temp_54_fu_799_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        select_ln268_6_reg_995 <= select_ln268_6_fu_812_p3;
        select_ln268_7_reg_1000 <= select_ln268_7_fu_823_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        temp_12_reg_867 <= temp_12_fu_331_p3;
        temp_1_reg_861 <= temp_1_fu_264_p3;
        tmp_2_reg_873 <= LARc_q1[32'd15];
        tmp_3_reg_879 <= LARc_q0[32'd15];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_1_reg_845 <= LARc_q0[32'd15];
        tmp_reg_839 <= LARc_q1[32'd15];
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address0_local = LARc_addr_7_reg_934;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_address0_local = LARc_addr_5_reg_890;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address0_local = LARc_addr_3_reg_856;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_address0_local = LARc_addr_1_reg_834;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        LARc_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        LARc_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        LARc_address0_local = 64'd1;
    end else begin
        LARc_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_address1_local = LARc_addr_6_reg_929;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_address1_local = LARc_addr_4_reg_885;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_address1_local = LARc_addr_2_reg_851;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_address1_local = LARc_addr_reg_829;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        LARc_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        LARc_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        LARc_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        LARc_address1_local = 64'd0;
    end else begin
        LARc_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        LARc_ce0_local = 1'b1;
    end else begin
        LARc_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        LARc_ce1_local = 1'b1;
    end else begin
        LARc_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d0_local = select_ln268_7_reg_1000;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_d0_local = select_ln268_5_reg_978;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d0_local = select_ln268_3_reg_944;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_d0_local = select_ln268_1_reg_900;
    end else begin
        LARc_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        LARc_d1_local = select_ln268_6_reg_995;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        LARc_d1_local = select_ln268_4_reg_973;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        LARc_d1_local = select_ln268_2_reg_939;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        LARc_d1_local = select_ln268_reg_895;
    end else begin
        LARc_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        LARc_we0_local = 1'b1;
    end else begin
        LARc_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        LARc_we1_local = 1'b1;
    end else begin
        LARc_we1_local = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign LARc_addr_1_reg_834 = 64'd1;
assign LARc_addr_2_reg_851 = 64'd2;
assign LARc_addr_3_reg_856 = 64'd3;
assign LARc_addr_4_reg_885 = 64'd4;
assign LARc_addr_5_reg_890 = 64'd5;
assign LARc_addr_6_reg_929 = 64'd6;
assign LARc_addr_7_reg_934 = 64'd7;
assign LARc_addr_reg_829 = 64'd0;
assign LARc_address0 = LARc_address0_local;
assign LARc_address1 = LARc_address1_local;
assign LARc_ce0 = LARc_ce0_local;
assign LARc_ce1 = LARc_ce1_local;
assign LARc_d0 = LARc_d0_local;
assign LARc_d1 = LARc_d1_local;
assign LARc_we0 = LARc_we0_local;
assign LARc_we1 = LARc_we1_local;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_fu_141_p2 = ((LARc_q1 == 16'd32768) ? 1'b1 : 1'b0);
assign grp_fu_147_p2 = (16'd0 - LARc_q1);
assign grp_fu_153_p3 = ((grp_fu_141_p2[0:0] == 1'b1) ? 16'd32767 : grp_fu_147_p2);
assign grp_fu_169_p2 = ((LARc_q0 == 16'd32768) ? 1'b1 : 1'b0);
assign grp_fu_175_p2 = (16'd0 - LARc_q0);
assign grp_fu_181_p3 = ((grp_fu_169_p2[0:0] == 1'b1) ? 16'd32767 : grp_fu_175_p2);
assign icmp_ln254_1_fu_279_p2 = (($signed(temp_7_fu_272_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_2_fu_368_p2 = (($signed(temp_14_fu_361_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_3_fu_435_p2 = (($signed(temp_21_fu_428_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_4_fu_524_p2 = (($signed(temp_28_fu_517_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_5_fu_591_p2 = (($signed(temp_35_fu_584_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_6_fu_680_p2 = (($signed(temp_42_fu_673_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_7_fu_747_p2 = (($signed(temp_49_fu_740_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln254_fu_212_p2 = (($signed(temp_fu_205_p3) < $signed(16'd22118)) ? 1'b1 : 1'b0);
assign icmp_ln258_1_fu_299_p2 = (($signed(temp_7_fu_272_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_2_fu_388_p2 = (($signed(temp_14_fu_361_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_3_fu_455_p2 = (($signed(temp_21_fu_428_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_4_fu_544_p2 = (($signed(temp_28_fu_517_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_5_fu_611_p2 = (($signed(temp_35_fu_584_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_6_fu_700_p2 = (($signed(temp_42_fu_673_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_7_fu_767_p2 = (($signed(temp_49_fu_740_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign icmp_ln258_fu_232_p2 = (($signed(temp_fu_205_p3) < $signed(16'd31130)) ? 1'b1 : 1'b0);
assign select_ln268_1_fu_355_p3 = ((tmp_1_reg_845[0:0] == 1'b1) ? sub_ln268_1_fu_350_p2 : temp_12_reg_867);
assign select_ln268_2_fu_500_p3 = ((tmp_2_reg_873[0:0] == 1'b1) ? sub_ln268_2_fu_495_p2 : temp_19_reg_905);
assign select_ln268_3_fu_511_p3 = ((tmp_3_reg_879[0:0] == 1'b1) ? sub_ln268_3_fu_506_p2 : temp_26_reg_911);
assign select_ln268_4_fu_656_p3 = ((tmp_4_reg_917[0:0] == 1'b1) ? sub_ln268_4_fu_651_p2 : temp_33_reg_949);
assign select_ln268_5_fu_667_p3 = ((tmp_5_reg_923[0:0] == 1'b1) ? sub_ln268_5_fu_662_p2 : temp_40_reg_955);
assign select_ln268_6_fu_812_p3 = ((tmp_6_reg_961[0:0] == 1'b1) ? sub_ln268_6_fu_807_p2 : temp_47_reg_983);
assign select_ln268_7_fu_823_p3 = ((tmp_7_reg_967[0:0] == 1'b1) ? sub_ln268_7_fu_818_p2 : temp_54_reg_989);
assign select_ln268_fu_344_p3 = ((tmp_reg_839[0:0] == 1'b1) ? sub_ln268_fu_339_p2 : temp_1_reg_861);
assign sext_ln256_1_fu_295_p1 = $signed(temp_9_fu_285_p4);
assign sext_ln256_2_fu_384_p1 = $signed(temp_16_fu_374_p4);
assign sext_ln256_3_fu_451_p1 = $signed(temp_23_fu_441_p4);
assign sext_ln256_4_fu_540_p1 = $signed(temp_30_fu_530_p4);
assign sext_ln256_5_fu_607_p1 = $signed(temp_37_fu_597_p4);
assign sext_ln256_6_fu_696_p1 = $signed(temp_44_fu_686_p4);
assign sext_ln256_7_fu_763_p1 = $signed(temp_51_fu_753_p4);
assign sext_ln256_fu_228_p1 = $signed(temp_3_fu_218_p4);
assign shl_ln265_1_fu_311_p2 = temp_7_fu_272_p3 << 16'd2;
assign shl_ln265_2_fu_400_p2 = temp_14_fu_361_p3 << 16'd2;
assign shl_ln265_3_fu_467_p2 = temp_21_fu_428_p3 << 16'd2;
assign shl_ln265_4_fu_556_p2 = temp_28_fu_517_p3 << 16'd2;
assign shl_ln265_5_fu_623_p2 = temp_35_fu_584_p3 << 16'd2;
assign shl_ln265_6_fu_712_p2 = temp_42_fu_673_p3 << 16'd2;
assign shl_ln265_7_fu_779_p2 = temp_49_fu_740_p3 << 16'd2;
assign shl_ln265_fu_244_p2 = temp_fu_205_p3 << 16'd2;
assign sub_ln268_1_fu_350_p2 = (16'd0 - temp_12_reg_867);
assign sub_ln268_2_fu_495_p2 = (16'd0 - temp_19_reg_905);
assign sub_ln268_3_fu_506_p2 = (16'd0 - temp_26_reg_911);
assign sub_ln268_4_fu_651_p2 = (16'd0 - temp_33_reg_949);
assign sub_ln268_5_fu_662_p2 = (16'd0 - temp_40_reg_955);
assign sub_ln268_6_fu_807_p2 = (16'd0 - temp_47_reg_983);
assign sub_ln268_7_fu_818_p2 = (16'd0 - temp_54_reg_989);
assign sub_ln268_fu_339_p2 = (16'd0 - temp_1_reg_861);
assign temp_10_fu_305_p2 = ($signed(temp_7_fu_272_p3) + $signed(16'd54477));
assign temp_11_fu_317_p2 = (shl_ln265_1_fu_311_p2 + 16'd26624);
assign temp_12_fu_331_p3 = ((icmp_ln254_1_fu_279_p2[0:0] == 1'b1) ? sext_ln256_1_fu_295_p1 : temp_13_fu_323_p3);
assign temp_13_fu_323_p3 = ((icmp_ln258_1_fu_299_p2[0:0] == 1'b1) ? temp_10_fu_305_p2 : temp_11_fu_317_p2);
assign temp_14_fu_361_p3 = ((tmp_2_reg_873[0:0] == 1'b1) ? reg_193 : reg_189);
assign temp_16_fu_374_p4 = {{temp_14_fu_361_p3[15:1]}};
assign temp_17_fu_394_p2 = ($signed(temp_14_fu_361_p3) + $signed(16'd54477));
assign temp_18_fu_406_p2 = (shl_ln265_2_fu_400_p2 + 16'd26624);
assign temp_19_fu_420_p3 = ((icmp_ln254_2_fu_368_p2[0:0] == 1'b1) ? sext_ln256_2_fu_384_p1 : temp_20_fu_412_p3);
assign temp_1_fu_264_p3 = ((icmp_ln254_fu_212_p2[0:0] == 1'b1) ? sext_ln256_fu_228_p1 : temp_6_fu_256_p3);
assign temp_20_fu_412_p3 = ((icmp_ln258_2_fu_388_p2[0:0] == 1'b1) ? temp_17_fu_394_p2 : temp_18_fu_406_p2);
assign temp_21_fu_428_p3 = ((tmp_3_reg_879[0:0] == 1'b1) ? reg_201 : reg_197);
assign temp_23_fu_441_p4 = {{temp_21_fu_428_p3[15:1]}};
assign temp_24_fu_461_p2 = ($signed(temp_21_fu_428_p3) + $signed(16'd54477));
assign temp_25_fu_473_p2 = (shl_ln265_3_fu_467_p2 + 16'd26624);
assign temp_26_fu_487_p3 = ((icmp_ln254_3_fu_435_p2[0:0] == 1'b1) ? sext_ln256_3_fu_451_p1 : temp_27_fu_479_p3);
assign temp_27_fu_479_p3 = ((icmp_ln258_3_fu_455_p2[0:0] == 1'b1) ? temp_24_fu_461_p2 : temp_25_fu_473_p2);
assign temp_28_fu_517_p3 = ((tmp_4_reg_917[0:0] == 1'b1) ? reg_193 : reg_189);
assign temp_30_fu_530_p4 = {{temp_28_fu_517_p3[15:1]}};
assign temp_31_fu_550_p2 = ($signed(temp_28_fu_517_p3) + $signed(16'd54477));
assign temp_32_fu_562_p2 = (shl_ln265_4_fu_556_p2 + 16'd26624);
assign temp_33_fu_576_p3 = ((icmp_ln254_4_fu_524_p2[0:0] == 1'b1) ? sext_ln256_4_fu_540_p1 : temp_34_fu_568_p3);
assign temp_34_fu_568_p3 = ((icmp_ln258_4_fu_544_p2[0:0] == 1'b1) ? temp_31_fu_550_p2 : temp_32_fu_562_p2);
assign temp_35_fu_584_p3 = ((tmp_5_reg_923[0:0] == 1'b1) ? reg_201 : reg_197);
assign temp_37_fu_597_p4 = {{temp_35_fu_584_p3[15:1]}};
assign temp_38_fu_617_p2 = ($signed(temp_35_fu_584_p3) + $signed(16'd54477));
assign temp_39_fu_629_p2 = (shl_ln265_5_fu_623_p2 + 16'd26624);
assign temp_3_fu_218_p4 = {{temp_fu_205_p3[15:1]}};
assign temp_40_fu_643_p3 = ((icmp_ln254_5_fu_591_p2[0:0] == 1'b1) ? sext_ln256_5_fu_607_p1 : temp_41_fu_635_p3);
assign temp_41_fu_635_p3 = ((icmp_ln258_5_fu_611_p2[0:0] == 1'b1) ? temp_38_fu_617_p2 : temp_39_fu_629_p2);
assign temp_42_fu_673_p3 = ((tmp_6_reg_961[0:0] == 1'b1) ? reg_193 : reg_189);
assign temp_44_fu_686_p4 = {{temp_42_fu_673_p3[15:1]}};
assign temp_45_fu_706_p2 = ($signed(temp_42_fu_673_p3) + $signed(16'd54477));
assign temp_46_fu_718_p2 = (shl_ln265_6_fu_712_p2 + 16'd26624);
assign temp_47_fu_732_p3 = ((icmp_ln254_6_fu_680_p2[0:0] == 1'b1) ? sext_ln256_6_fu_696_p1 : temp_48_fu_724_p3);
assign temp_48_fu_724_p3 = ((icmp_ln258_6_fu_700_p2[0:0] == 1'b1) ? temp_45_fu_706_p2 : temp_46_fu_718_p2);
assign temp_49_fu_740_p3 = ((tmp_7_reg_967[0:0] == 1'b1) ? reg_201 : reg_197);
assign temp_4_fu_238_p2 = ($signed(temp_fu_205_p3) + $signed(16'd54477));
assign temp_51_fu_753_p4 = {{temp_49_fu_740_p3[15:1]}};
assign temp_52_fu_773_p2 = ($signed(temp_49_fu_740_p3) + $signed(16'd54477));
assign temp_53_fu_785_p2 = (shl_ln265_7_fu_779_p2 + 16'd26624);
assign temp_54_fu_799_p3 = ((icmp_ln254_7_fu_747_p2[0:0] == 1'b1) ? sext_ln256_7_fu_763_p1 : temp_55_fu_791_p3);
assign temp_55_fu_791_p3 = ((icmp_ln258_7_fu_767_p2[0:0] == 1'b1) ? temp_52_fu_773_p2 : temp_53_fu_785_p2);
assign temp_5_fu_250_p2 = (shl_ln265_fu_244_p2 + 16'd26624);
assign temp_6_fu_256_p3 = ((icmp_ln258_fu_232_p2[0:0] == 1'b1) ? temp_4_fu_238_p2 : temp_5_fu_250_p2);
assign temp_7_fu_272_p3 = ((tmp_1_reg_845[0:0] == 1'b1) ? reg_201 : reg_197);
assign temp_9_fu_285_p4 = {{temp_7_fu_272_p3[15:1]}};
assign temp_fu_205_p3 = ((tmp_reg_839[0:0] == 1'b1) ? reg_193 : reg_189);
endmodule 
