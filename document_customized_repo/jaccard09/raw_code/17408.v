module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_0_address1,buf_0_ce1,buf_0_we1,buf_0_d1,buf_0_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_1_address1,buf_1_ce1,buf_1_we1,buf_1_d1,buf_1_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_q0,buf_2_address1,buf_2_ce1,buf_2_we1,buf_2_d1,buf_2_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_q0,buf_3_address1,buf_3_ce1,buf_3_we1,buf_3_d1,buf_3_q1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [1:0] buf_0_address1;
output   buf_0_ce1;
output   buf_0_we1;
output  [7:0] buf_0_d1;
input  [7:0] buf_0_q1;
output  [1:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [1:0] buf_1_address1;
output   buf_1_ce1;
output   buf_1_we1;
output  [7:0] buf_1_d1;
input  [7:0] buf_1_q1;
output  [1:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
input  [7:0] buf_2_q0;
output  [1:0] buf_2_address1;
output   buf_2_ce1;
output   buf_2_we1;
output  [7:0] buf_2_d1;
input  [7:0] buf_2_q1;
output  [1:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
input  [7:0] buf_3_q0;
output  [1:0] buf_3_address1;
output   buf_3_ce1;
output   buf_3_we1;
output  [7:0] buf_3_d1;
input  [7:0] buf_3_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] reg_214;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [7:0] reg_218;
reg   [7:0] reg_222;
reg   [7:0] reg_226;
reg   [7:0] reg_230;
reg   [7:0] reg_234;
reg   [7:0] reg_238;
reg   [7:0] reg_242;
wire   [1:0] buf_0_addr_reg_950;
wire   [1:0] buf_1_addr_reg_955;
wire   [1:0] buf_2_addr_reg_960;
wire   [1:0] buf_3_addr_reg_965;
wire   [1:0] buf_0_addr_1_reg_970;
wire   [1:0] buf_1_addr_1_reg_975;
wire   [1:0] buf_2_addr_1_reg_980;
wire   [1:0] buf_3_addr_1_reg_985;
wire   [1:0] buf_0_addr_2_reg_990;
wire   [1:0] buf_1_addr_2_reg_995;
wire   [1:0] buf_2_addr_2_reg_1000;
wire   [1:0] buf_3_addr_2_reg_1005;
wire   [1:0] buf_0_addr_3_reg_1010;
wire   [1:0] buf_1_addr_3_reg_1015;
wire   [1:0] buf_2_addr_3_reg_1020;
wire   [1:0] buf_3_addr_3_reg_1025;
reg    buf_0_ce1_local;
reg   [1:0] buf_0_address1_local;
reg    buf_0_ce0_local;
reg   [1:0] buf_0_address0_local;
reg    buf_0_we1_local;
reg   [7:0] buf_0_d1_local;
wire   [7:0] xor_ln99_1_fu_352_p2;
reg    buf_0_we0_local;
reg   [7:0] buf_0_d0_local;
wire   [7:0] xor_ln99_7_fu_538_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln99_12_fu_696_p2;
wire   [7:0] xor_ln99_17_fu_854_p2;
reg    buf_1_ce1_local;
reg   [1:0] buf_1_address1_local;
reg    buf_1_ce0_local;
reg   [1:0] buf_1_address0_local;
reg    buf_1_we1_local;
reg   [7:0] buf_1_d1_local;
wire   [7:0] xor_ln99_4_fu_393_p2;
reg    buf_1_we0_local;
reg   [7:0] buf_1_d0_local;
wire   [7:0] xor_ln99_9_fu_551_p2;
wire   [7:0] xor_ln99_14_fu_709_p2;
wire   [7:0] xor_ln99_19_fu_867_p2;
reg    buf_2_ce1_local;
reg   [1:0] buf_2_address1_local;
reg    buf_2_ce0_local;
reg   [1:0] buf_2_address0_local;
reg    buf_2_we1_local;
reg   [7:0] buf_2_d1_local;
wire   [7:0] xor_ln100_2_fu_434_p2;
reg    buf_2_we0_local;
reg   [7:0] buf_2_d0_local;
wire   [7:0] xor_ln100_7_fu_592_p2;
wire   [7:0] xor_ln100_12_fu_750_p2;
wire   [7:0] xor_ln100_17_fu_908_p2;
reg    buf_3_ce1_local;
reg   [1:0] buf_3_address1_local;
reg    buf_3_ce0_local;
reg   [1:0] buf_3_address0_local;
reg    buf_3_we1_local;
reg   [7:0] buf_3_d1_local;
wire   [7:0] xor_ln100_4_fu_469_p2;
reg    buf_3_we0_local;
reg   [7:0] buf_3_d0_local;
wire   [7:0] xor_ln100_9_fu_627_p2;
wire   [7:0] xor_ln100_14_fu_785_p2;
wire   [7:0] xor_ln100_19_fu_943_p2;
wire   [7:0] grp_fu_246_p2;
wire   [7:0] grp_fu_252_p2;
wire   [7:0] grp_fu_282_p2;
wire   [7:0] grp_fu_288_p2;
wire   [7:0] shl_ln50_fu_326_p2;
wire   [0:0] tmp_fu_318_p3;
wire   [7:0] xor_ln50_fu_332_p2;
wire   [7:0] select_ln50_fu_338_p3;
wire   [7:0] grp_fu_258_p2;
wire   [7:0] xor_ln99_fu_346_p2;
wire   [7:0] grp_fu_264_p2;
wire   [7:0] shl_ln50_1_fu_367_p2;
wire   [0:0] tmp_1_fu_359_p3;
wire   [7:0] xor_ln50_1_fu_373_p2;
wire   [7:0] select_ln50_1_fu_379_p3;
wire   [7:0] xor_ln99_3_fu_387_p2;
wire   [7:0] grp_fu_270_p2;
wire   [7:0] shl_ln50_2_fu_408_p2;
wire   [0:0] tmp_2_fu_400_p3;
wire   [7:0] xor_ln50_2_fu_414_p2;
wire   [7:0] select_ln50_2_fu_420_p3;
wire   [7:0] xor_ln100_1_fu_428_p2;
wire   [7:0] grp_fu_276_p2;
wire   [7:0] shl_ln50_3_fu_449_p2;
wire   [0:0] tmp_3_fu_441_p3;
wire   [7:0] xor_ln50_3_fu_455_p2;
wire   [7:0] select_ln50_3_fu_461_p3;
wire   [7:0] shl_ln50_4_fu_484_p2;
wire   [0:0] tmp_4_fu_476_p3;
wire   [7:0] xor_ln50_4_fu_490_p2;
wire   [7:0] grp_fu_294_p2;
wire   [7:0] shl_ln50_5_fu_512_p2;
wire   [0:0] tmp_5_fu_504_p3;
wire   [7:0] xor_ln50_5_fu_518_p2;
wire   [7:0] select_ln50_4_fu_496_p3;
wire   [7:0] grp_fu_300_p2;
wire   [7:0] xor_ln99_6_fu_532_p2;
wire   [7:0] select_ln50_5_fu_524_p3;
wire   [7:0] xor_ln99_8_fu_545_p2;
wire   [7:0] grp_fu_306_p2;
wire   [7:0] shl_ln50_6_fu_566_p2;
wire   [0:0] tmp_6_fu_558_p3;
wire   [7:0] xor_ln50_6_fu_572_p2;
wire   [7:0] select_ln50_6_fu_578_p3;
wire   [7:0] xor_ln100_6_fu_586_p2;
wire   [7:0] grp_fu_312_p2;
wire   [7:0] shl_ln50_7_fu_607_p2;
wire   [0:0] tmp_7_fu_599_p3;
wire   [7:0] xor_ln50_7_fu_613_p2;
wire   [7:0] select_ln50_7_fu_619_p3;
wire   [7:0] shl_ln50_8_fu_642_p2;
wire   [0:0] tmp_8_fu_634_p3;
wire   [7:0] xor_ln50_8_fu_648_p2;
wire   [7:0] shl_ln50_9_fu_670_p2;
wire   [0:0] tmp_9_fu_662_p3;
wire   [7:0] xor_ln50_9_fu_676_p2;
wire   [7:0] select_ln50_8_fu_654_p3;
wire   [7:0] xor_ln99_11_fu_690_p2;
wire   [7:0] select_ln50_9_fu_682_p3;
wire   [7:0] xor_ln99_13_fu_703_p2;
wire   [7:0] shl_ln50_10_fu_724_p2;
wire   [0:0] tmp_10_fu_716_p3;
wire   [7:0] xor_ln50_10_fu_730_p2;
wire   [7:0] select_ln50_10_fu_736_p3;
wire   [7:0] xor_ln100_11_fu_744_p2;
wire   [7:0] shl_ln50_11_fu_765_p2;
wire   [0:0] tmp_11_fu_757_p3;
wire   [7:0] xor_ln50_11_fu_771_p2;
wire   [7:0] select_ln50_11_fu_777_p3;
wire   [7:0] shl_ln50_12_fu_800_p2;
wire   [0:0] tmp_12_fu_792_p3;
wire   [7:0] xor_ln50_12_fu_806_p2;
wire   [7:0] shl_ln50_13_fu_828_p2;
wire   [0:0] tmp_13_fu_820_p3;
wire   [7:0] xor_ln50_13_fu_834_p2;
wire   [7:0] select_ln50_12_fu_812_p3;
wire   [7:0] xor_ln99_16_fu_848_p2;
wire   [7:0] select_ln50_13_fu_840_p3;
wire   [7:0] xor_ln99_18_fu_861_p2;
wire   [7:0] shl_ln50_14_fu_882_p2;
wire   [0:0] tmp_14_fu_874_p3;
wire   [7:0] xor_ln50_14_fu_888_p2;
wire   [7:0] select_ln50_14_fu_894_p3;
wire   [7:0] xor_ln100_16_fu_902_p2;
wire   [7:0] shl_ln50_15_fu_923_p2;
wire   [0:0] tmp_15_fu_915_p3;
wire   [7:0] xor_ln50_15_fu_929_p2;
wire   [7:0] select_ln50_15_fu_935_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_214 <= buf_0_q1;
        reg_218 <= buf_1_q1;
        reg_222 <= buf_2_q1;
        reg_226 <= buf_3_q1;
        reg_230 <= buf_0_q0;
        reg_234 <= buf_1_q0;
        reg_238 <= buf_2_q0;
        reg_242 <= buf_3_q0;
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
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_address0_local = buf_0_addr_3_reg_1010;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_address0_local = buf_0_addr_1_reg_970;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_0_address0_local = 64'd1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_address1_local = buf_0_addr_2_reg_990;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_address1_local = buf_0_addr_reg_950;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_0_address1_local = 64'd0;
    end else begin
        buf_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_d0_local = xor_ln99_17_fu_854_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_d0_local = xor_ln99_7_fu_538_p2;
    end else begin
        buf_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_d1_local = xor_ln99_12_fu_696_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_0_d1_local = xor_ln99_1_fu_352_p2;
    end else begin
        buf_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_we1_local = 1'b1;
    end else begin
        buf_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_address0_local = buf_1_addr_3_reg_1015;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_address0_local = buf_1_addr_1_reg_975;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_1_address0_local = 64'd1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_address1_local = buf_1_addr_2_reg_995;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_address1_local = buf_1_addr_reg_955;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_1_address1_local = 64'd0;
    end else begin
        buf_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_d0_local = xor_ln99_19_fu_867_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_d0_local = xor_ln99_9_fu_551_p2;
    end else begin
        buf_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_d1_local = xor_ln99_14_fu_709_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_1_d1_local = xor_ln99_4_fu_393_p2;
    end else begin
        buf_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_1_we1_local = 1'b1;
    end else begin
        buf_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2_address0_local = buf_2_addr_3_reg_1020;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_2_address0_local = buf_2_addr_1_reg_980;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_2_address0_local = 64'd1;
    end else begin
        buf_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2_address1_local = buf_2_addr_2_reg_1000;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_2_address1_local = buf_2_addr_reg_960;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_2_address1_local = 64'd0;
    end else begin
        buf_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2_d0_local = xor_ln100_17_fu_908_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_2_d0_local = xor_ln100_7_fu_592_p2;
    end else begin
        buf_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2_d1_local = xor_ln100_12_fu_750_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_2_d1_local = xor_ln100_2_fu_434_p2;
    end else begin
        buf_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_2_we1_local = 1'b1;
    end else begin
        buf_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_3_address0_local = buf_3_addr_3_reg_1025;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_3_address0_local = buf_3_addr_1_reg_985;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_3_address0_local = 64'd1;
    end else begin
        buf_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_3_address1_local = buf_3_addr_2_reg_1005;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_3_address1_local = buf_3_addr_reg_965;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        buf_3_address1_local = 64'd0;
    end else begin
        buf_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_3_d0_local = xor_ln100_19_fu_943_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_3_d0_local = xor_ln100_9_fu_627_p2;
    end else begin
        buf_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_3_d1_local = xor_ln100_14_fu_785_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_3_d1_local = xor_ln100_4_fu_469_p2;
    end else begin
        buf_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        buf_3_we1_local = 1'b1;
    end else begin
        buf_3_we1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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
assign buf_0_addr_1_reg_970 = 64'd1;
assign buf_0_addr_2_reg_990 = 64'd2;
assign buf_0_addr_3_reg_1010 = 64'd3;
assign buf_0_addr_reg_950 = 64'd0;
assign buf_0_address0 = buf_0_address0_local;
assign buf_0_address1 = buf_0_address1_local;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = buf_0_d0_local;
assign buf_0_d1 = buf_0_d1_local;
assign buf_0_we0 = buf_0_we0_local;
assign buf_0_we1 = buf_0_we1_local;
assign buf_1_addr_1_reg_975 = 64'd1;
assign buf_1_addr_2_reg_995 = 64'd2;
assign buf_1_addr_3_reg_1015 = 64'd3;
assign buf_1_addr_reg_955 = 64'd0;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_address1 = buf_1_address1_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = buf_1_d0_local;
assign buf_1_d1 = buf_1_d1_local;
assign buf_1_we0 = buf_1_we0_local;
assign buf_1_we1 = buf_1_we1_local;
assign buf_2_addr_1_reg_980 = 64'd1;
assign buf_2_addr_2_reg_1000 = 64'd2;
assign buf_2_addr_3_reg_1020 = 64'd3;
assign buf_2_addr_reg_960 = 64'd0;
assign buf_2_address0 = buf_2_address0_local;
assign buf_2_address1 = buf_2_address1_local;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = buf_2_d0_local;
assign buf_2_d1 = buf_2_d1_local;
assign buf_2_we0 = buf_2_we0_local;
assign buf_2_we1 = buf_2_we1_local;
assign buf_3_addr_1_reg_985 = 64'd1;
assign buf_3_addr_2_reg_1005 = 64'd2;
assign buf_3_addr_3_reg_1025 = 64'd3;
assign buf_3_addr_reg_965 = 64'd0;
assign buf_3_address0 = buf_3_address0_local;
assign buf_3_address1 = buf_3_address1_local;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = buf_3_d0_local;
assign buf_3_d1 = buf_3_d1_local;
assign buf_3_we0 = buf_3_we0_local;
assign buf_3_we1 = buf_3_we1_local;
assign grp_fu_246_p2 = (reg_218 ^ reg_214);
assign grp_fu_252_p2 = (reg_222 ^ grp_fu_246_p2);
assign grp_fu_258_p2 = (reg_226 ^ grp_fu_252_p2);
assign grp_fu_264_p2 = (reg_222 ^ reg_218);
assign grp_fu_270_p2 = (reg_226 ^ reg_222);
assign grp_fu_276_p2 = (reg_226 ^ reg_214);
assign grp_fu_282_p2 = (reg_234 ^ reg_230);
assign grp_fu_288_p2 = (reg_238 ^ grp_fu_282_p2);
assign grp_fu_294_p2 = (reg_238 ^ reg_234);
assign grp_fu_300_p2 = (reg_242 ^ grp_fu_288_p2);
assign grp_fu_306_p2 = (reg_242 ^ reg_238);
assign grp_fu_312_p2 = (reg_242 ^ reg_230);
assign select_ln50_10_fu_736_p3 = ((tmp_10_fu_716_p3[0:0] == 1'b1) ? xor_ln50_10_fu_730_p2 : shl_ln50_10_fu_724_p2);
assign select_ln50_11_fu_777_p3 = ((tmp_11_fu_757_p3[0:0] == 1'b1) ? xor_ln50_11_fu_771_p2 : shl_ln50_11_fu_765_p2);
assign select_ln50_12_fu_812_p3 = ((tmp_12_fu_792_p3[0:0] == 1'b1) ? xor_ln50_12_fu_806_p2 : shl_ln50_12_fu_800_p2);
assign select_ln50_13_fu_840_p3 = ((tmp_13_fu_820_p3[0:0] == 1'b1) ? xor_ln50_13_fu_834_p2 : shl_ln50_13_fu_828_p2);
assign select_ln50_14_fu_894_p3 = ((tmp_14_fu_874_p3[0:0] == 1'b1) ? xor_ln50_14_fu_888_p2 : shl_ln50_14_fu_882_p2);
assign select_ln50_15_fu_935_p3 = ((tmp_15_fu_915_p3[0:0] == 1'b1) ? xor_ln50_15_fu_929_p2 : shl_ln50_15_fu_923_p2);
assign select_ln50_1_fu_379_p3 = ((tmp_1_fu_359_p3[0:0] == 1'b1) ? xor_ln50_1_fu_373_p2 : shl_ln50_1_fu_367_p2);
assign select_ln50_2_fu_420_p3 = ((tmp_2_fu_400_p3[0:0] == 1'b1) ? xor_ln50_2_fu_414_p2 : shl_ln50_2_fu_408_p2);
assign select_ln50_3_fu_461_p3 = ((tmp_3_fu_441_p3[0:0] == 1'b1) ? xor_ln50_3_fu_455_p2 : shl_ln50_3_fu_449_p2);
assign select_ln50_4_fu_496_p3 = ((tmp_4_fu_476_p3[0:0] == 1'b1) ? xor_ln50_4_fu_490_p2 : shl_ln50_4_fu_484_p2);
assign select_ln50_5_fu_524_p3 = ((tmp_5_fu_504_p3[0:0] == 1'b1) ? xor_ln50_5_fu_518_p2 : shl_ln50_5_fu_512_p2);
assign select_ln50_6_fu_578_p3 = ((tmp_6_fu_558_p3[0:0] == 1'b1) ? xor_ln50_6_fu_572_p2 : shl_ln50_6_fu_566_p2);
assign select_ln50_7_fu_619_p3 = ((tmp_7_fu_599_p3[0:0] == 1'b1) ? xor_ln50_7_fu_613_p2 : shl_ln50_7_fu_607_p2);
assign select_ln50_8_fu_654_p3 = ((tmp_8_fu_634_p3[0:0] == 1'b1) ? xor_ln50_8_fu_648_p2 : shl_ln50_8_fu_642_p2);
assign select_ln50_9_fu_682_p3 = ((tmp_9_fu_662_p3[0:0] == 1'b1) ? xor_ln50_9_fu_676_p2 : shl_ln50_9_fu_670_p2);
assign select_ln50_fu_338_p3 = ((tmp_fu_318_p3[0:0] == 1'b1) ? xor_ln50_fu_332_p2 : shl_ln50_fu_326_p2);
assign shl_ln50_10_fu_724_p2 = grp_fu_270_p2 << 8'd1;
assign shl_ln50_11_fu_765_p2 = grp_fu_276_p2 << 8'd1;
assign shl_ln50_12_fu_800_p2 = grp_fu_282_p2 << 8'd1;
assign shl_ln50_13_fu_828_p2 = grp_fu_294_p2 << 8'd1;
assign shl_ln50_14_fu_882_p2 = grp_fu_306_p2 << 8'd1;
assign shl_ln50_15_fu_923_p2 = grp_fu_312_p2 << 8'd1;
assign shl_ln50_1_fu_367_p2 = grp_fu_264_p2 << 8'd1;
assign shl_ln50_2_fu_408_p2 = grp_fu_270_p2 << 8'd1;
assign shl_ln50_3_fu_449_p2 = grp_fu_276_p2 << 8'd1;
assign shl_ln50_4_fu_484_p2 = grp_fu_282_p2 << 8'd1;
assign shl_ln50_5_fu_512_p2 = grp_fu_294_p2 << 8'd1;
assign shl_ln50_6_fu_566_p2 = grp_fu_306_p2 << 8'd1;
assign shl_ln50_7_fu_607_p2 = grp_fu_312_p2 << 8'd1;
assign shl_ln50_8_fu_642_p2 = grp_fu_246_p2 << 8'd1;
assign shl_ln50_9_fu_670_p2 = grp_fu_264_p2 << 8'd1;
assign shl_ln50_fu_326_p2 = grp_fu_246_p2 << 8'd1;
assign tmp_10_fu_716_p3 = grp_fu_270_p2[32'd7];
assign tmp_11_fu_757_p3 = grp_fu_276_p2[32'd7];
assign tmp_12_fu_792_p3 = grp_fu_282_p2[32'd7];
assign tmp_13_fu_820_p3 = grp_fu_294_p2[32'd7];
assign tmp_14_fu_874_p3 = grp_fu_306_p2[32'd7];
assign tmp_15_fu_915_p3 = grp_fu_312_p2[32'd7];
assign tmp_1_fu_359_p3 = grp_fu_264_p2[32'd7];
assign tmp_2_fu_400_p3 = grp_fu_270_p2[32'd7];
assign tmp_3_fu_441_p3 = grp_fu_276_p2[32'd7];
assign tmp_4_fu_476_p3 = grp_fu_282_p2[32'd7];
assign tmp_5_fu_504_p3 = grp_fu_294_p2[32'd7];
assign tmp_6_fu_558_p3 = grp_fu_306_p2[32'd7];
assign tmp_7_fu_599_p3 = grp_fu_312_p2[32'd7];
assign tmp_8_fu_634_p3 = grp_fu_246_p2[32'd7];
assign tmp_9_fu_662_p3 = grp_fu_264_p2[32'd7];
assign tmp_fu_318_p3 = grp_fu_246_p2[32'd7];
assign xor_ln100_11_fu_744_p2 = (select_ln50_10_fu_736_p3 ^ grp_fu_246_p2);
assign xor_ln100_12_fu_750_p2 = (xor_ln100_11_fu_744_p2 ^ reg_226);
assign xor_ln100_14_fu_785_p2 = (select_ln50_11_fu_777_p3 ^ grp_fu_252_p2);
assign xor_ln100_16_fu_902_p2 = (select_ln50_14_fu_894_p3 ^ grp_fu_282_p2);
assign xor_ln100_17_fu_908_p2 = (xor_ln100_16_fu_902_p2 ^ reg_242);
assign xor_ln100_19_fu_943_p2 = (select_ln50_15_fu_935_p3 ^ grp_fu_288_p2);
assign xor_ln100_1_fu_428_p2 = (select_ln50_2_fu_420_p3 ^ grp_fu_246_p2);
assign xor_ln100_2_fu_434_p2 = (xor_ln100_1_fu_428_p2 ^ reg_226);
assign xor_ln100_4_fu_469_p2 = (select_ln50_3_fu_461_p3 ^ grp_fu_252_p2);
assign xor_ln100_6_fu_586_p2 = (select_ln50_6_fu_578_p3 ^ grp_fu_282_p2);
assign xor_ln100_7_fu_592_p2 = (xor_ln100_6_fu_586_p2 ^ reg_242);
assign xor_ln100_9_fu_627_p2 = (select_ln50_7_fu_619_p3 ^ grp_fu_288_p2);
assign xor_ln50_10_fu_730_p2 = (shl_ln50_10_fu_724_p2 ^ 8'd27);
assign xor_ln50_11_fu_771_p2 = (shl_ln50_11_fu_765_p2 ^ 8'd27);
assign xor_ln50_12_fu_806_p2 = (shl_ln50_12_fu_800_p2 ^ 8'd27);
assign xor_ln50_13_fu_834_p2 = (shl_ln50_13_fu_828_p2 ^ 8'd27);
assign xor_ln50_14_fu_888_p2 = (shl_ln50_14_fu_882_p2 ^ 8'd27);
assign xor_ln50_15_fu_929_p2 = (shl_ln50_15_fu_923_p2 ^ 8'd27);
assign xor_ln50_1_fu_373_p2 = (shl_ln50_1_fu_367_p2 ^ 8'd27);
assign xor_ln50_2_fu_414_p2 = (shl_ln50_2_fu_408_p2 ^ 8'd27);
assign xor_ln50_3_fu_455_p2 = (shl_ln50_3_fu_449_p2 ^ 8'd27);
assign xor_ln50_4_fu_490_p2 = (shl_ln50_4_fu_484_p2 ^ 8'd27);
assign xor_ln50_5_fu_518_p2 = (shl_ln50_5_fu_512_p2 ^ 8'd27);
assign xor_ln50_6_fu_572_p2 = (shl_ln50_6_fu_566_p2 ^ 8'd27);
assign xor_ln50_7_fu_613_p2 = (shl_ln50_7_fu_607_p2 ^ 8'd27);
assign xor_ln50_8_fu_648_p2 = (shl_ln50_8_fu_642_p2 ^ 8'd27);
assign xor_ln50_9_fu_676_p2 = (shl_ln50_9_fu_670_p2 ^ 8'd27);
assign xor_ln50_fu_332_p2 = (shl_ln50_fu_326_p2 ^ 8'd27);
assign xor_ln99_11_fu_690_p2 = (select_ln50_8_fu_654_p3 ^ grp_fu_258_p2);
assign xor_ln99_12_fu_696_p2 = (xor_ln99_11_fu_690_p2 ^ reg_214);
assign xor_ln99_13_fu_703_p2 = (select_ln50_9_fu_682_p3 ^ grp_fu_258_p2);
assign xor_ln99_14_fu_709_p2 = (xor_ln99_13_fu_703_p2 ^ reg_218);
assign xor_ln99_16_fu_848_p2 = (select_ln50_12_fu_812_p3 ^ grp_fu_300_p2);
assign xor_ln99_17_fu_854_p2 = (xor_ln99_16_fu_848_p2 ^ reg_230);
assign xor_ln99_18_fu_861_p2 = (select_ln50_13_fu_840_p3 ^ grp_fu_300_p2);
assign xor_ln99_19_fu_867_p2 = (xor_ln99_18_fu_861_p2 ^ reg_234);
assign xor_ln99_1_fu_352_p2 = (xor_ln99_fu_346_p2 ^ reg_214);
assign xor_ln99_3_fu_387_p2 = (select_ln50_1_fu_379_p3 ^ grp_fu_258_p2);
assign xor_ln99_4_fu_393_p2 = (xor_ln99_3_fu_387_p2 ^ reg_218);
assign xor_ln99_6_fu_532_p2 = (select_ln50_4_fu_496_p3 ^ grp_fu_300_p2);
assign xor_ln99_7_fu_538_p2 = (xor_ln99_6_fu_532_p2 ^ reg_230);
assign xor_ln99_8_fu_545_p2 = (select_ln50_5_fu_524_p3 ^ grp_fu_300_p2);
assign xor_ln99_9_fu_551_p2 = (xor_ln99_8_fu_545_p2 ^ reg_234);
assign xor_ln99_fu_346_p2 = (select_ln50_fu_338_p3 ^ grp_fu_258_p2);
endmodule 