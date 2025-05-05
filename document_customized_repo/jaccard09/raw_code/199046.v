module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_address0,v262_ce0,v262_q0,v262_address1,v262_ce1,v262_q1,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v279_din,v279_full_n,v279_write,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1); 
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [15:0] v262_address1;
output   v262_ce1;
input  [31:0] v262_q1;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln277_fu_201_p2;
reg   [15:0] phi_mul_load_reg_449;
wire   [15:0] add_ln277_1_fu_195_p2;
reg   [15:0] add_ln277_1_reg_454;
wire   [7:0] add_ln277_fu_207_p2;
reg   [7:0] add_ln277_reg_462;
wire   [15:0] zext_ln277_fu_213_p1;
reg   [15:0] zext_ln277_reg_467;
wire   [0:0] cmp11_fu_217_p2;
reg   [0:0] cmp11_reg_477;
wire   [15:0] v197_cast_fu_229_p1;
reg   [15:0] v197_cast_reg_485;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_1_cast_fu_251_p1;
reg   [15:0] tmp_1_cast_reg_491;
wire   [7:0] add_ln278_fu_255_p2;
reg   [7:0] add_ln278_reg_497;
wire   [15:0] p_cast705_fu_275_p1;
reg   [15:0] p_cast705_reg_502;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast706_fu_285_p1;
reg   [15:0] p_cast706_reg_508;
wire   [15:0] p_cast707_fu_295_p1;
reg   [15:0] p_cast707_reg_514;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast708_fu_305_p1;
reg   [15:0] p_cast708_reg_520;
wire    ap_CS_fsm_state6;
reg   [31:0] v262_load_reg_536;
wire    ap_CS_fsm_state7;
reg   [31:0] v262_load_1_reg_541;
reg   [31:0] v262_load_2_reg_556;
wire    ap_CS_fsm_state8;
reg   [31:0] v262_load_3_reg_561;
wire   [15:0] mul_ln280_fu_333_p2;
reg   [15:0] mul_ln280_reg_576;
wire    ap_CS_fsm_state9;
wire   [15:0] mul_ln293_fu_338_p2;
reg   [15:0] mul_ln293_reg_581;
wire   [15:0] mul_ln304_fu_343_p2;
reg   [15:0] mul_ln304_reg_586;
wire   [15:0] mul_ln315_fu_348_p2;
reg   [15:0] mul_ln315_reg_591;
wire   [15:0] mul_ln326_fu_353_p2;
reg   [15:0] mul_ln326_reg_596;
reg   [31:0] v262_load_4_reg_601;
wire   [15:0] mul_ln337_fu_358_p2;
reg   [15:0] mul_ln337_reg_606;
reg   [31:0] v262_load_5_reg_611;
wire   [31:0] v201_fu_363_p1;
reg   [31:0] v201_reg_616;
wire    ap_CS_fsm_state10;
wire   [31:0] v212_fu_367_p1;
reg   [31:0] v212_reg_621;
wire   [31:0] v221_fu_371_p1;
reg   [31:0] v221_reg_626;
wire   [31:0] v230_fu_375_p1;
reg   [31:0] v230_reg_631;
wire   [31:0] v239_fu_379_p1;
reg   [31:0] v239_reg_636;
wire   [31:0] v248_fu_383_p1;
reg   [31:0] v248_reg_641;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce1;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d1;
reg   [7:0] v197_reg_145;
reg    ap_block_state2;
wire    ap_CS_fsm_state11;
reg    grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg;
wire   [63:0] p_cast709_fu_309_p1;
wire   [63:0] p_cast_fu_313_p1;
wire   [63:0] p_cast710_fu_317_p1;
wire   [63:0] p_cast711_fu_321_p1;
wire   [63:0] p_cast712_fu_325_p1;
wire   [63:0] p_cast713_fu_329_p1;
reg   [15:0] phi_mul_fu_72;
wire   [0:0] icmp_ln278_fu_223_p2;
reg   [7:0] v196_fu_76;
reg    v279_write_local;
reg    v262_ce1_local;
reg   [15:0] v262_address1_local;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
wire   [6:0] tmp_fu_233_p4;
wire   [7:0] tmp_1_fu_243_p3;
wire   [7:0] empty_16_fu_269_p2;
wire   [7:0] empty_19_fu_279_p2;
wire   [7:0] empty_22_fu_289_p2;
wire   [7:0] empty_25_fu_299_p2;
wire   [15:0] grp_fu_387_p3;
wire   [15:0] grp_fu_395_p3;
wire   [15:0] grp_fu_403_p3;
wire   [15:0] grp_fu_411_p3;
wire   [15:0] grp_fu_419_p3;
wire   [15:0] grp_fu_427_p3;
wire   [7:0] mul_ln280_fu_333_p0;
wire   [8:0] mul_ln280_fu_333_p1;
wire   [7:0] mul_ln293_fu_338_p0;
wire   [8:0] mul_ln293_fu_338_p1;
wire   [7:0] mul_ln304_fu_343_p0;
wire   [8:0] mul_ln304_fu_343_p1;
wire   [7:0] mul_ln315_fu_348_p0;
wire   [8:0] mul_ln315_fu_348_p1;
wire   [7:0] mul_ln326_fu_353_p0;
wire   [8:0] mul_ln326_fu_353_p1;
wire   [7:0] mul_ln337_fu_358_p0;
wire   [8:0] mul_ln337_fu_358_p1;
wire   [7:0] grp_fu_387_p0;
wire   [7:0] grp_fu_387_p1;
wire   [7:0] grp_fu_387_p2;
wire   [7:0] grp_fu_395_p0;
wire   [7:0] grp_fu_395_p1;
wire   [7:0] grp_fu_395_p2;
wire   [7:0] grp_fu_403_p0;
wire   [7:0] grp_fu_403_p1;
wire   [7:0] grp_fu_403_p2;
wire   [7:0] grp_fu_411_p0;
wire   [7:0] grp_fu_411_p1;
wire   [7:0] grp_fu_411_p2;
wire   [7:0] grp_fu_419_p0;
wire   [7:0] grp_fu_419_p1;
wire   [7:0] grp_fu_419_p2;
wire   [7:0] grp_fu_427_p0;
wire   [7:0] grp_fu_427_p1;
wire   [7:0] grp_fu_427_p2;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire   [15:0] grp_fu_387_p00;
wire   [15:0] grp_fu_395_p00;
wire   [15:0] grp_fu_403_p00;
wire   [15:0] grp_fu_411_p00;
wire   [15:0] grp_fu_419_p00;
wire   [15:0] grp_fu_427_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg = 1'b0;
#0 phi_mul_fu_72 = 16'd0;
#0 v196_fu_76 = 8'd0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_8 grp_kernel_3mm_node2_Pipeline_label_8_fu_157(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_ready),.phi_mul(phi_mul_load_reg_449),.v263_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address0),.v263_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce0),.v263_q0(v263_q0),.v263_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address1),.v263_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce1),.v263_q1(v263_q1),.mul_ln280(mul_ln280_reg_576),.v261_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address0),.v261_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce0),.v261_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we0),.v261_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d0),.v261_q0(v261_q0),.v261_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address1),.v261_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce1),.v261_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we1),.v261_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d1),.v261_q1(v261_q1),.mul_ln293(mul_ln293_reg_581),.mul_ln304(mul_ln304_reg_586),.mul_ln315(mul_ln315_reg_591),.mul_ln326(mul_ln326_reg_596),.mul_ln337(mul_ln337_reg_606),.cmp11(cmp11_reg_477),.v201(v201_reg_616),.v212(v212_reg_621),.v221(v221_reg_626),.v230(v230_reg_631),.v239(v239_reg_636),.v248(v248_reg_641));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U21(.din0(mul_ln280_fu_333_p0),.din1(mul_ln280_fu_333_p1),.dout(mul_ln280_fu_333_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U22(.din0(mul_ln293_fu_338_p0),.din1(mul_ln293_fu_338_p1),.dout(mul_ln293_fu_338_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U23(.din0(mul_ln304_fu_343_p0),.din1(mul_ln304_fu_343_p1),.dout(mul_ln304_fu_343_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U24(.din0(mul_ln315_fu_348_p0),.din1(mul_ln315_fu_348_p1),.dout(mul_ln315_fu_348_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U25(.din0(mul_ln326_fu_353_p0),.din1(mul_ln326_fu_353_p1),.dout(mul_ln326_fu_353_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U26(.din0(mul_ln337_fu_358_p0),.din1(mul_ln337_fu_358_p1),.dout(mul_ln337_fu_358_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_387_p0),.din1(grp_fu_387_p1),.din2(grp_fu_387_p2),.ce(1'b1),.dout(grp_fu_387_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_395_p0),.din1(grp_fu_395_p1),.din2(grp_fu_395_p2),.ce(1'b1),.dout(grp_fu_395_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_403_p0),.din1(grp_fu_403_p1),.din2(grp_fu_403_p2),.ce(1'b1),.dout(grp_fu_403_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_411_p0),.din1(grp_fu_411_p1),.din2(grp_fu_411_p2),.ce(1'b1),.dout(grp_fu_411_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_419_p0),.din1(grp_fu_419_p1),.din2(grp_fu_419_p2),.ce(1'b1),.dout(grp_fu_419_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_427_p0),.din1(grp_fu_427_p1),.din2(grp_fu_427_p2),.ce(1'b1),.dout(grp_fu_427_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul_fu_72 <= 16'd0;
    end else if (((icmp_ln278_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_72 <= add_ln277_1_reg_454;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v196_fu_76 <= 8'd0;
    end else if (((icmp_ln278_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v196_fu_76 <= add_ln277_reg_462;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_done == 1'b1))) begin
        v197_reg_145 <= add_ln278_reg_497;
    end else if (((icmp_ln277_fu_201_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v197_reg_145 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln277_1_reg_454 <= add_ln277_1_fu_195_p2;
        add_ln277_reg_462 <= add_ln277_fu_207_p2;
        cmp11_reg_477 <= cmp11_fu_217_p2;
        phi_mul_load_reg_449 <= phi_mul_fu_72;
        zext_ln277_reg_467[7 : 0] <= zext_ln277_fu_213_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln278_reg_497 <= add_ln278_fu_255_p2;
        tmp_1_cast_reg_491[7 : 1] <= tmp_1_cast_fu_251_p1[7 : 1];
        v197_cast_reg_485[7 : 0] <= v197_cast_fu_229_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_ln280_reg_576 <= mul_ln280_fu_333_p2;
        mul_ln293_reg_581 <= mul_ln293_fu_338_p2;
        mul_ln304_reg_586 <= mul_ln304_fu_343_p2;
        mul_ln315_reg_591 <= mul_ln315_fu_348_p2;
        mul_ln326_reg_596 <= mul_ln326_fu_353_p2;
        mul_ln337_reg_606 <= mul_ln337_fu_358_p2;
        v262_load_4_reg_601 <= v262_q1;
        v262_load_5_reg_611 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast705_reg_502[7 : 0] <= p_cast705_fu_275_p1[7 : 0];
        p_cast706_reg_508[7 : 0] <= p_cast706_fu_285_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast707_reg_514[7 : 0] <= p_cast707_fu_295_p1[7 : 0];
        p_cast708_reg_520[7 : 0] <= p_cast708_fu_305_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v201_reg_616 <= v201_fu_363_p1;
        v212_reg_621 <= v212_fu_367_p1;
        v221_reg_626 <= v221_fu_371_p1;
        v230_reg_631 <= v230_fu_375_p1;
        v239_reg_636 <= v239_fu_379_p1;
        v248_reg_641 <= v248_fu_383_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_load_1_reg_541 <= v262_q0;
        v262_load_reg_536 <= v262_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_load_2_reg_556 <= v262_q1;
        v262_load_3_reg_561 <= v262_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln277_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln277_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_address0_local = p_cast713_fu_329_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_address0_local = p_cast711_fu_321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v262_address0_local = p_cast_fu_313_p1;
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_address1_local = p_cast712_fu_325_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_address1_local = p_cast710_fu_317_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v262_address1_local = p_cast709_fu_309_p1;
    end else begin
        v262_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v262_ce1_local = 1'b1;
    end else begin
        v262_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln277_fu_201_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln277_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
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
            if (((icmp_ln277_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln277_fu_201_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln278_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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
            if (((1'b1 == ap_CS_fsm_state11) & (grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln277_1_fu_195_p2 = (phi_mul_fu_72 + 16'd190);
assign add_ln277_fu_207_p2 = (v196_fu_76 + 8'd1);
assign add_ln278_fu_255_p2 = (v197_reg_145 + 8'd6);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln277_fu_201_p2 == 1'd1) & (v279_full_n == 1'b0));
end
assign cmp11_fu_217_p2 = ((v196_fu_76 == 8'd0) ? 1'b1 : 1'b0);
assign empty_16_fu_269_p2 = (v197_reg_145 + 8'd2);
assign empty_19_fu_279_p2 = (v197_reg_145 + 8'd3);
assign empty_22_fu_289_p2 = (v197_reg_145 + 8'd4);
assign empty_25_fu_299_p2 = (v197_reg_145 + 8'd5);
assign grp_fu_387_p0 = grp_fu_387_p00;
assign grp_fu_387_p00 = v197_reg_145;
assign grp_fu_387_p1 = 16'd200;
assign grp_fu_387_p2 = zext_ln277_reg_467;
assign grp_fu_395_p0 = grp_fu_395_p00;
assign grp_fu_395_p00 = tmp_1_fu_243_p3;
assign grp_fu_395_p1 = 16'd200;
assign grp_fu_395_p2 = zext_ln277_reg_467;
assign grp_fu_403_p0 = grp_fu_403_p00;
assign grp_fu_403_p00 = empty_16_fu_269_p2;
assign grp_fu_403_p1 = 16'd200;
assign grp_fu_403_p2 = zext_ln277_reg_467;
assign grp_fu_411_p0 = grp_fu_411_p00;
assign grp_fu_411_p00 = empty_19_fu_279_p2;
assign grp_fu_411_p1 = 16'd200;
assign grp_fu_411_p2 = zext_ln277_reg_467;
assign grp_fu_419_p0 = grp_fu_419_p00;
assign grp_fu_419_p00 = empty_22_fu_289_p2;
assign grp_fu_419_p1 = 16'd200;
assign grp_fu_419_p2 = zext_ln277_reg_467;
assign grp_fu_427_p0 = grp_fu_427_p00;
assign grp_fu_427_p00 = empty_25_fu_299_p2;
assign grp_fu_427_p1 = 16'd200;
assign grp_fu_427_p2 = zext_ln277_reg_467;
assign grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_ap_start_reg;
assign icmp_ln277_fu_201_p2 = ((v196_fu_76 == 8'd200) ? 1'b1 : 1'b0);
assign icmp_ln278_fu_223_p2 = ((v197_reg_145 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln280_fu_333_p0 = v197_cast_reg_485;
assign mul_ln280_fu_333_p1 = 16'd190;
assign mul_ln293_fu_338_p0 = tmp_1_cast_reg_491;
assign mul_ln293_fu_338_p1 = 16'd190;
assign mul_ln304_fu_343_p0 = p_cast705_reg_502;
assign mul_ln304_fu_343_p1 = 16'd190;
assign mul_ln315_fu_348_p0 = p_cast706_reg_508;
assign mul_ln315_fu_348_p1 = 16'd190;
assign mul_ln326_fu_353_p0 = p_cast707_reg_514;
assign mul_ln326_fu_353_p1 = 16'd190;
assign mul_ln337_fu_358_p0 = p_cast708_reg_520;
assign mul_ln337_fu_358_p1 = 16'd190;
assign p_cast705_fu_275_p1 = empty_16_fu_269_p2;
assign p_cast706_fu_285_p1 = empty_19_fu_279_p2;
assign p_cast707_fu_295_p1 = empty_22_fu_289_p2;
assign p_cast708_fu_305_p1 = empty_25_fu_299_p2;
assign p_cast709_fu_309_p1 = grp_fu_387_p3;
assign p_cast710_fu_317_p1 = grp_fu_403_p3;
assign p_cast711_fu_321_p1 = grp_fu_411_p3;
assign p_cast712_fu_325_p1 = grp_fu_419_p3;
assign p_cast713_fu_329_p1 = grp_fu_427_p3;
assign p_cast_fu_313_p1 = grp_fu_395_p3;
assign tmp_1_cast_fu_251_p1 = tmp_1_fu_243_p3;
assign tmp_1_fu_243_p3 = {{tmp_fu_233_p4}, {1'd1}};
assign tmp_fu_233_p4 = {{v197_reg_145[7:1]}};
assign v197_cast_fu_229_p1 = v197_reg_145;
assign v201_fu_363_p1 = v262_load_reg_536;
assign v212_fu_367_p1 = v262_load_1_reg_541;
assign v221_fu_371_p1 = v262_load_2_reg_556;
assign v230_fu_375_p1 = v262_load_3_reg_561;
assign v239_fu_379_p1 = v262_load_4_reg_601;
assign v248_fu_383_p1 = v262_load_5_reg_611;
assign v261_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address0;
assign v261_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_address1;
assign v261_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce0;
assign v261_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_ce1;
assign v261_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d0;
assign v261_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_d1;
assign v261_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we0;
assign v261_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v261_we1;
assign v262_address0 = v262_address0_local;
assign v262_address1 = v262_address1_local;
assign v262_ce0 = v262_ce0_local;
assign v262_ce1 = v262_ce1_local;
assign v263_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address0;
assign v263_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_address1;
assign v263_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce0;
assign v263_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_157_v263_ce1;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
assign zext_ln277_fu_213_p1 = v196_fu_76;
always @ (posedge ap_clk) begin
    zext_ln277_reg_467[15:8] <= 8'b00000000;
    v197_cast_reg_485[15:8] <= 8'b00000000;
    tmp_1_cast_reg_491[0] <= 1'b1;
    tmp_1_cast_reg_491[15:8] <= 8'b00000000;
    p_cast705_reg_502[15:8] <= 8'b00000000;
    p_cast706_reg_508[15:8] <= 8'b00000000;
    p_cast707_reg_514[15:8] <= 8'b00000000;
    p_cast708_reg_520[15:8] <= 8'b00000000;
end
endmodule 