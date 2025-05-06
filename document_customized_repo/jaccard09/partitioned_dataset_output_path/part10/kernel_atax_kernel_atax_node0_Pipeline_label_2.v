
module kernel_atax_kernel_atax_node0_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v356_address0,v356_ce0,v356_we0,v356_d0,v356_address1,v356_ce1,v356_we1,v356_d1);  
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v356_address0;
output   v356_ce0;
output   v356_we0;
output  [31:0] v356_d0;
output  [8:0] v356_address1;
output   v356_ce1;
output   v356_we1;
output  [31:0] v356_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln433_fu_463_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state21;
reg   [8:0] v348_1_reg_892;
wire   [63:0] zext_ln433_fu_469_p1;
wire   [63:0] zext_ln436_fu_480_p1;
wire   [63:0] zext_ln437_fu_490_p1;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln438_fu_500_p1;
wire   [63:0] zext_ln439_fu_510_p1;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln440_fu_520_p1;
wire   [63:0] zext_ln441_fu_530_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln442_fu_540_p1;
wire   [63:0] zext_ln443_fu_550_p1;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln444_fu_560_p1;
wire   [63:0] zext_ln445_fu_570_p1;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln446_fu_580_p1;
wire   [63:0] zext_ln447_fu_590_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln448_fu_600_p1;
wire   [63:0] zext_ln449_fu_610_p1;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln450_fu_620_p1;
wire   [63:0] zext_ln451_fu_630_p1;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln452_fu_640_p1;
wire   [63:0] zext_ln453_fu_650_p1;
wire    ap_CS_fsm_state10;
wire   [63:0] zext_ln454_fu_660_p1;
wire   [63:0] zext_ln455_fu_670_p1;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln456_fu_680_p1;
wire   [63:0] zext_ln457_fu_690_p1;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln458_fu_700_p1;
wire   [63:0] zext_ln459_fu_710_p1;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln460_fu_720_p1;
wire   [63:0] zext_ln461_fu_730_p1;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln462_fu_740_p1;
wire   [63:0] zext_ln463_fu_750_p1;
wire    ap_CS_fsm_state15;
wire   [63:0] zext_ln464_fu_760_p1;
wire   [63:0] zext_ln465_fu_770_p1;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln466_fu_780_p1;
wire   [63:0] zext_ln467_fu_790_p1;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln468_fu_800_p1;
wire   [63:0] zext_ln469_fu_810_p1;
wire    ap_CS_fsm_state18;
wire   [63:0] zext_ln470_fu_820_p1;
wire   [63:0] zext_ln471_fu_830_p1;
wire    ap_CS_fsm_state19;
wire   [63:0] zext_ln472_fu_840_p1;
wire   [63:0] zext_ln473_fu_850_p1;
wire    ap_CS_fsm_state20;
wire   [63:0] zext_ln474_fu_860_p1;
wire   [63:0] zext_ln434_fu_870_p1;
reg   [8:0] v348_fu_112;
wire   [8:0] add_ln433_fu_875_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_v348_1;
reg    v356_we1_local;
reg    v356_ce1_local;
reg   [8:0] v356_address1_local;
reg    v356_we0_local;
reg    v356_ce0_local;
reg   [8:0] v356_address0_local;
wire   [8:0] add_ln435_fu_474_p2;
wire   [8:0] add_ln436_fu_485_p2;
wire   [8:0] add_ln437_fu_495_p2;
wire   [8:0] add_ln438_fu_505_p2;
wire   [8:0] add_ln439_fu_515_p2;
wire   [8:0] add_ln440_fu_525_p2;
wire   [8:0] add_ln441_fu_535_p2;
wire   [8:0] add_ln442_fu_545_p2;
wire   [8:0] add_ln443_fu_555_p2;
wire   [8:0] add_ln444_fu_565_p2;
wire   [8:0] add_ln445_fu_575_p2;
wire   [8:0] add_ln446_fu_585_p2;
wire   [8:0] add_ln447_fu_595_p2;
wire   [8:0] add_ln448_fu_605_p2;
wire   [8:0] add_ln449_fu_615_p2;
wire   [8:0] add_ln450_fu_625_p2;
wire   [8:0] add_ln451_fu_635_p2;
wire   [8:0] add_ln452_fu_645_p2;
wire   [8:0] add_ln453_fu_655_p2;
wire   [8:0] add_ln454_fu_665_p2;
wire   [8:0] add_ln455_fu_675_p2;
wire   [8:0] add_ln456_fu_685_p2;
wire   [8:0] add_ln457_fu_695_p2;
wire   [8:0] add_ln458_fu_705_p2;
wire   [8:0] add_ln459_fu_715_p2;
wire   [8:0] add_ln460_fu_725_p2;
wire   [8:0] add_ln461_fu_735_p2;
wire   [8:0] add_ln462_fu_745_p2;
wire   [8:0] add_ln463_fu_755_p2;
wire   [8:0] add_ln464_fu_765_p2;
wire   [8:0] add_ln465_fu_775_p2;
wire   [8:0] add_ln466_fu_785_p2;
wire   [8:0] add_ln467_fu_795_p2;
wire   [8:0] add_ln468_fu_805_p2;
wire   [8:0] add_ln469_fu_815_p2;
wire   [8:0] add_ln470_fu_825_p2;
wire   [8:0] add_ln471_fu_835_p2;
wire   [8:0] add_ln472_fu_845_p2;
wire   [8:0] add_ln473_fu_855_p2;
wire   [8:0] add_ln474_fu_865_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [20:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 v348_fu_112 = 9'd0;
#0 ap_done_reg = 1'b0;
end
kernel_atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v348_fu_112 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v348_fu_112 <= add_ln433_fu_875_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v348_1_reg_892 <= ap_sig_allocacmp_v348_1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln433_fu_463_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_v348_1 = 9'd0;
    end else begin
        ap_sig_allocacmp_v348_1 = v348_fu_112;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v356_address0_local = zext_ln434_fu_870_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v356_address0_local = zext_ln474_fu_860_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v356_address0_local = zext_ln472_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v356_address0_local = zext_ln470_fu_820_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v356_address0_local = zext_ln468_fu_800_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v356_address0_local = zext_ln466_fu_780_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v356_address0_local = zext_ln464_fu_760_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v356_address0_local = zext_ln462_fu_740_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v356_address0_local = zext_ln460_fu_720_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v356_address0_local = zext_ln458_fu_700_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v356_address0_local = zext_ln456_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v356_address0_local = zext_ln454_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v356_address0_local = zext_ln452_fu_640_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v356_address0_local = zext_ln450_fu_620_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v356_address0_local = zext_ln448_fu_600_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v356_address0_local = zext_ln446_fu_580_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v356_address0_local = zext_ln444_fu_560_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v356_address0_local = zext_ln442_fu_540_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v356_address0_local = zext_ln440_fu_520_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_address0_local = zext_ln438_fu_500_p1;
    end else if (((icmp_ln433_fu_463_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        v356_address0_local = zext_ln436_fu_480_p1;
    end else begin
        v356_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v356_address1_local = zext_ln473_fu_850_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v356_address1_local = zext_ln471_fu_830_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v356_address1_local = zext_ln469_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v356_address1_local = zext_ln467_fu_790_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v356_address1_local = zext_ln465_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v356_address1_local = zext_ln463_fu_750_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v356_address1_local = zext_ln461_fu_730_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v356_address1_local = zext_ln459_fu_710_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v356_address1_local = zext_ln457_fu_690_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v356_address1_local = zext_ln455_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v356_address1_local = zext_ln453_fu_650_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v356_address1_local = zext_ln451_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v356_address1_local = zext_ln449_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v356_address1_local = zext_ln447_fu_590_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v356_address1_local = zext_ln445_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v356_address1_local = zext_ln443_fu_550_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v356_address1_local = zext_ln441_fu_530_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v356_address1_local = zext_ln439_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v356_address1_local = zext_ln437_fu_490_p1;
    end else if (((icmp_ln433_fu_463_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        v356_address1_local = zext_ln433_fu_469_p1;
    end else begin
        v356_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln433_fu_463_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        v356_ce0_local = 1'b1;
    end else begin
        v356_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln433_fu_463_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        v356_ce1_local = 1'b1;
    end else begin
        v356_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln433_fu_463_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        v356_we0_local = 1'b1;
    end else begin
        v356_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((icmp_ln433_fu_463_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        v356_we1_local = 1'b1;
    end else begin
        v356_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln433_fu_463_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln433_fu_875_p2 = (v348_1_reg_892 + 9'd41);
assign add_ln435_fu_474_p2 = (ap_sig_allocacmp_v348_1 + 9'd1);
assign add_ln436_fu_485_p2 = (v348_1_reg_892 + 9'd2);
assign add_ln437_fu_495_p2 = (v348_1_reg_892 + 9'd3);
assign add_ln438_fu_505_p2 = (v348_1_reg_892 + 9'd4);
assign add_ln439_fu_515_p2 = (v348_1_reg_892 + 9'd5);
assign add_ln440_fu_525_p2 = (v348_1_reg_892 + 9'd6);
assign add_ln441_fu_535_p2 = (v348_1_reg_892 + 9'd7);
assign add_ln442_fu_545_p2 = (v348_1_reg_892 + 9'd8);
assign add_ln443_fu_555_p2 = (v348_1_reg_892 + 9'd9);
assign add_ln444_fu_565_p2 = (v348_1_reg_892 + 9'd10);
assign add_ln445_fu_575_p2 = (v348_1_reg_892 + 9'd11);
assign add_ln446_fu_585_p2 = (v348_1_reg_892 + 9'd12);
assign add_ln447_fu_595_p2 = (v348_1_reg_892 + 9'd13);
assign add_ln448_fu_605_p2 = (v348_1_reg_892 + 9'd14);
assign add_ln449_fu_615_p2 = (v348_1_reg_892 + 9'd15);
assign add_ln450_fu_625_p2 = (v348_1_reg_892 + 9'd16);
assign add_ln451_fu_635_p2 = (v348_1_reg_892 + 9'd17);
assign add_ln452_fu_645_p2 = (v348_1_reg_892 + 9'd18);
assign add_ln453_fu_655_p2 = (v348_1_reg_892 + 9'd19);
assign add_ln454_fu_665_p2 = (v348_1_reg_892 + 9'd20);
assign add_ln455_fu_675_p2 = (v348_1_reg_892 + 9'd21);
assign add_ln456_fu_685_p2 = (v348_1_reg_892 + 9'd22);
assign add_ln457_fu_695_p2 = (v348_1_reg_892 + 9'd23);
assign add_ln458_fu_705_p2 = (v348_1_reg_892 + 9'd24);
assign add_ln459_fu_715_p2 = (v348_1_reg_892 + 9'd25);
assign add_ln460_fu_725_p2 = (v348_1_reg_892 + 9'd26);
assign add_ln461_fu_735_p2 = (v348_1_reg_892 + 9'd27);
assign add_ln462_fu_745_p2 = (v348_1_reg_892 + 9'd28);
assign add_ln463_fu_755_p2 = (v348_1_reg_892 + 9'd29);
assign add_ln464_fu_765_p2 = (v348_1_reg_892 + 9'd30);
assign add_ln465_fu_775_p2 = (v348_1_reg_892 + 9'd31);
assign add_ln466_fu_785_p2 = (v348_1_reg_892 + 9'd32);
assign add_ln467_fu_795_p2 = (v348_1_reg_892 + 9'd33);
assign add_ln468_fu_805_p2 = (v348_1_reg_892 + 9'd34);
assign add_ln469_fu_815_p2 = (v348_1_reg_892 + 9'd35);
assign add_ln470_fu_825_p2 = (v348_1_reg_892 + 9'd36);
assign add_ln471_fu_835_p2 = (v348_1_reg_892 + 9'd37);
assign add_ln472_fu_845_p2 = (v348_1_reg_892 + 9'd38);
assign add_ln473_fu_855_p2 = (v348_1_reg_892 + 9'd39);
assign add_ln474_fu_865_p2 = (v348_1_reg_892 + 9'd40);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln433_fu_463_p2 = ((ap_sig_allocacmp_v348_1 < 9'd410) ? 1'b1 : 1'b0);
assign v356_address0 = v356_address0_local;
assign v356_address1 = v356_address1_local;
assign v356_ce0 = v356_ce0_local;
assign v356_ce1 = v356_ce1_local;
assign v356_d0 = 32'd0;
assign v356_d1 = 32'd0;
assign v356_we0 = v356_we0_local;
assign v356_we1 = v356_we1_local;
assign zext_ln433_fu_469_p1 = ap_sig_allocacmp_v348_1;
assign zext_ln434_fu_870_p1 = add_ln474_fu_865_p2;
assign zext_ln436_fu_480_p1 = add_ln435_fu_474_p2;
assign zext_ln437_fu_490_p1 = add_ln436_fu_485_p2;
assign zext_ln438_fu_500_p1 = add_ln437_fu_495_p2;
assign zext_ln439_fu_510_p1 = add_ln438_fu_505_p2;
assign zext_ln440_fu_520_p1 = add_ln439_fu_515_p2;
assign zext_ln441_fu_530_p1 = add_ln440_fu_525_p2;
assign zext_ln442_fu_540_p1 = add_ln441_fu_535_p2;
assign zext_ln443_fu_550_p1 = add_ln442_fu_545_p2;
assign zext_ln444_fu_560_p1 = add_ln443_fu_555_p2;
assign zext_ln445_fu_570_p1 = add_ln444_fu_565_p2;
assign zext_ln446_fu_580_p1 = add_ln445_fu_575_p2;
assign zext_ln447_fu_590_p1 = add_ln446_fu_585_p2;
assign zext_ln448_fu_600_p1 = add_ln447_fu_595_p2;
assign zext_ln449_fu_610_p1 = add_ln448_fu_605_p2;
assign zext_ln450_fu_620_p1 = add_ln449_fu_615_p2;
assign zext_ln451_fu_630_p1 = add_ln450_fu_625_p2;
assign zext_ln452_fu_640_p1 = add_ln451_fu_635_p2;
assign zext_ln453_fu_650_p1 = add_ln452_fu_645_p2;
assign zext_ln454_fu_660_p1 = add_ln453_fu_655_p2;
assign zext_ln455_fu_670_p1 = add_ln454_fu_665_p2;
assign zext_ln456_fu_680_p1 = add_ln455_fu_675_p2;
assign zext_ln457_fu_690_p1 = add_ln456_fu_685_p2;
assign zext_ln458_fu_700_p1 = add_ln457_fu_695_p2;
assign zext_ln459_fu_710_p1 = add_ln458_fu_705_p2;
assign zext_ln460_fu_720_p1 = add_ln459_fu_715_p2;
assign zext_ln461_fu_730_p1 = add_ln460_fu_725_p2;
assign zext_ln462_fu_740_p1 = add_ln461_fu_735_p2;
assign zext_ln463_fu_750_p1 = add_ln462_fu_745_p2;
assign zext_ln464_fu_760_p1 = add_ln463_fu_755_p2;
assign zext_ln465_fu_770_p1 = add_ln464_fu_765_p2;
assign zext_ln466_fu_780_p1 = add_ln465_fu_775_p2;
assign zext_ln467_fu_790_p1 = add_ln466_fu_785_p2;
assign zext_ln468_fu_800_p1 = add_ln467_fu_795_p2;
assign zext_ln469_fu_810_p1 = add_ln468_fu_805_p2;
assign zext_ln470_fu_820_p1 = add_ln469_fu_815_p2;
assign zext_ln471_fu_830_p1 = add_ln470_fu_825_p2;
assign zext_ln472_fu_840_p1 = add_ln471_fu_835_p2;
assign zext_ln473_fu_850_p1 = add_ln472_fu_845_p2;
assign zext_ln474_fu_860_p1 = add_ln473_fu_855_p2;
endmodule 
