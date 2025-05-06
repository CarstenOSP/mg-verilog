
module bicg_bicg_node1_Pipeline_label_218 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_8_address0,v137_8_ce0,v137_8_q0,v137_8_address1,v137_8_ce1,v137_8_q1,v137_24_address0,v137_24_ce0,v137_24_q0,v137_24_address1,v137_24_ce1,v137_24_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,icmp_ln46,v17_16,grp_fu_2154_p_din0,grp_fu_2154_p_din1,grp_fu_2154_p_opcode,grp_fu_2154_p_dout0,grp_fu_2154_p_ce,grp_fu_2158_p_din0,grp_fu_2158_p_din1,grp_fu_2158_p_opcode,grp_fu_2158_p_dout0,grp_fu_2158_p_ce,grp_fu_2162_p_din0,grp_fu_2162_p_din1,grp_fu_2162_p_dout0,grp_fu_2162_p_ce,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_dout0,grp_fu_2166_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v137_8_address0;
output   v137_8_ce0;
input  [31:0] v137_8_q0;
output  [6:0] v137_8_address1;
output   v137_8_ce1;
input  [31:0] v137_8_q1;
output  [6:0] v137_24_address0;
output   v137_24_ce0;
input  [31:0] v137_24_q0;
output  [6:0] v137_24_address1;
output   v137_24_ce1;
input  [31:0] v137_24_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [0:0] icmp_ln46;
input  [31:0] v17_16;
output  [31:0] grp_fu_2154_p_din0;
output  [31:0] grp_fu_2154_p_din1;
output  [1:0] grp_fu_2154_p_opcode;
input  [31:0] grp_fu_2154_p_dout0;
output   grp_fu_2154_p_ce;
output  [31:0] grp_fu_2158_p_din0;
output  [31:0] grp_fu_2158_p_din1;
output  [1:0] grp_fu_2158_p_opcode;
input  [31:0] grp_fu_2158_p_dout0;
output   grp_fu_2158_p_ce;
output  [31:0] grp_fu_2162_p_din0;
output  [31:0] grp_fu_2162_p_din1;
input  [31:0] grp_fu_2162_p_dout0;
output   grp_fu_2162_p_ce;
output  [31:0] grp_fu_2166_p_din0;
output  [31:0] grp_fu_2166_p_din1;
input  [31:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_680;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_352_p3;
reg   [31:0] reg_366;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_359_p3;
reg   [31:0] reg_370;
reg   [31:0] reg_374;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_379;
reg   [6:0] v12_reg_673;
wire   [0:0] tmp_fu_392_p3;
wire   [4:0] lshr_ln42_s_fu_412_p4;
reg   [4:0] lshr_ln42_s_reg_694;
wire   [3:0] tmp_190_fu_447_p4;
reg   [3:0] tmp_190_reg_709;
reg   [2:0] tmp_193_reg_734;
reg   [0:0] tmp_27_reg_744;
wire   [31:0] v16_fu_500_p1;
wire   [31:0] v23_fu_505_p1;
wire   [31:0] v29_fu_539_p1;
wire   [31:0] v35_fu_544_p1;
reg   [4:0] v10_0_addr_reg_810;
reg   [4:0] v10_0_addr_reg_810_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_810_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_815;
reg   [4:0] v10_1_addr_reg_815_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_815_pp0_iter3_reg;
reg   [4:0] v10_0_addr_60_reg_820;
reg   [4:0] v10_0_addr_60_reg_820_pp0_iter2_reg;
reg   [4:0] v10_0_addr_60_reg_820_pp0_iter3_reg;
reg   [4:0] v10_1_addr_60_reg_825;
reg   [4:0] v10_1_addr_60_reg_825_pp0_iter2_reg;
reg   [4:0] v10_1_addr_60_reg_825_pp0_iter3_reg;
wire   [31:0] v41_fu_593_p1;
wire   [31:0] v47_fu_598_p1;
wire   [31:0] select_ln89_fu_603_p3;
reg   [31:0] select_ln89_reg_840;
wire   [31:0] select_ln96_fu_610_p3;
reg   [31:0] select_ln96_reg_845;
reg   [31:0] v14_reg_850;
reg   [31:0] v18_reg_855;
reg   [31:0] v24_reg_860;
reg   [4:0] v10_0_addr_61_reg_865;
reg   [4:0] v10_0_addr_61_reg_865_pp0_iter2_reg;
reg   [4:0] v10_0_addr_61_reg_865_pp0_iter3_reg;
reg   [4:0] v10_1_addr_61_reg_870;
reg   [4:0] v10_1_addr_61_reg_870_pp0_iter2_reg;
reg   [4:0] v10_1_addr_61_reg_870_pp0_iter3_reg;
reg   [4:0] v10_0_addr_62_reg_875;
reg   [4:0] v10_0_addr_62_reg_875_pp0_iter2_reg;
reg   [4:0] v10_0_addr_62_reg_875_pp0_iter3_reg;
reg   [4:0] v10_0_addr_62_reg_875_pp0_iter4_reg;
wire   [31:0] v53_fu_644_p1;
reg   [4:0] v10_1_addr_62_reg_885;
reg   [4:0] v10_1_addr_62_reg_885_pp0_iter2_reg;
reg   [4:0] v10_1_addr_62_reg_885_pp0_iter3_reg;
reg   [4:0] v10_1_addr_62_reg_885_pp0_iter4_reg;
wire   [31:0] v59_fu_648_p1;
reg   [31:0] v21_reg_895;
reg   [31:0] v27_reg_900;
reg   [31:0] v33_reg_905;
reg   [31:0] v30_reg_910;
reg   [31:0] v36_reg_915;
reg   [31:0] v39_reg_920;
reg   [31:0] v45_reg_925;
reg   [31:0] v51_reg_930;
reg   [31:0] v57_reg_935;
reg   [31:0] v42_reg_940;
reg   [31:0] v48_reg_945;
reg   [31:0] v54_reg_950;
reg   [31:0] v60_reg_955;
reg   [31:0] v31_reg_960;
reg   [31:0] v37_reg_965;
reg   [31:0] v55_reg_970;
reg   [31:0] v61_reg_975;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_406_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_430_p1;
wire   [63:0] zext_ln61_fu_464_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_478_p1;
wire   [63:0] zext_ln75_fu_517_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_533_p1;
wire   [63:0] zext_ln89_fu_556_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_569_p1;
wire   [63:0] zext_ln42_fu_575_p1;
wire   [63:0] zext_ln59_fu_587_p1;
wire   [63:0] zext_ln73_fu_625_p1;
wire   [63:0] zext_ln87_fu_638_p1;
reg   [6:0] v12_16_fu_92;
wire   [6:0] add_ln42_fu_436_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12;
reg    v137_8_ce1_local;
reg   [6:0] v137_8_address1_local;
reg    v137_8_ce0_local;
reg   [6:0] v137_8_address0_local;
reg    v137_24_ce1_local;
reg   [6:0] v137_24_address1_local;
reg    v137_24_ce0_local;
reg   [6:0] v137_24_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_348_p0;
wire   [6:0] shl_ln46_fu_400_p2;
wire   [6:0] tmp_s_fu_422_p3;
wire   [6:0] tmp_191_fu_456_p3;
wire   [6:0] tmp_192_fu_470_p3;
wire   [6:0] tmp_194_fu_510_p3;
wire   [6:0] tmp_195_fu_523_p5;
wire   [6:0] tmp_196_fu_549_p3;
wire   [6:0] tmp_197_fu_562_p3;
wire   [4:0] or_ln59_s_fu_580_p3;
wire   [4:0] or_ln73_s_fu_617_p4;
wire   [4:0] or_ln87_s_fu_631_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_16_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_392_p3 == 1'd0))) begin
            v12_16_fu_92 <= add_ln42_fu_436_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_16_fu_92 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln42_s_reg_694 <= {{ap_sig_allocacmp_v12[5:1]}};
        select_ln89_reg_840 <= select_ln89_fu_603_p3;
        select_ln96_reg_845 <= select_ln96_fu_610_p3;
        tmp_reg_680 <= ap_sig_allocacmp_v12[32'd6];
        v10_0_addr_60_reg_820[4 : 1] <= zext_ln59_fu_587_p1[4 : 1];
        v10_0_addr_60_reg_820_pp0_iter2_reg[4 : 1] <= v10_0_addr_60_reg_820[4 : 1];
        v10_0_addr_60_reg_820_pp0_iter3_reg[4 : 1] <= v10_0_addr_60_reg_820_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_810 <= zext_ln42_fu_575_p1;
        v10_0_addr_reg_810_pp0_iter2_reg <= v10_0_addr_reg_810;
        v10_0_addr_reg_810_pp0_iter3_reg <= v10_0_addr_reg_810_pp0_iter2_reg;
        v10_1_addr_60_reg_825[4 : 1] <= zext_ln59_fu_587_p1[4 : 1];
        v10_1_addr_60_reg_825_pp0_iter2_reg[4 : 1] <= v10_1_addr_60_reg_825[4 : 1];
        v10_1_addr_60_reg_825_pp0_iter3_reg[4 : 1] <= v10_1_addr_60_reg_825_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_815 <= zext_ln42_fu_575_p1;
        v10_1_addr_reg_815_pp0_iter2_reg <= v10_1_addr_reg_815;
        v10_1_addr_reg_815_pp0_iter3_reg <= v10_1_addr_reg_815_pp0_iter2_reg;
        v12_reg_673 <= ap_sig_allocacmp_v12;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_366 <= grp_fu_352_p3;
        reg_370 <= grp_fu_359_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_374 <= grp_fu_2154_p_dout0;
        reg_379 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_190_reg_709 <= {{v12_reg_673[5:2]}};
        tmp_193_reg_734 <= {{v12_reg_673[5:3]}};
        tmp_27_reg_744 <= v12_reg_673[32'd1];
        v10_0_addr_61_reg_865[0] <= zext_ln73_fu_625_p1[0];
v10_0_addr_61_reg_865[4 : 2] <= zext_ln73_fu_625_p1[4 : 2];
        v10_0_addr_61_reg_865_pp0_iter2_reg[0] <= v10_0_addr_61_reg_865[0];
v10_0_addr_61_reg_865_pp0_iter2_reg[4 : 2] <= v10_0_addr_61_reg_865[4 : 2];
        v10_0_addr_61_reg_865_pp0_iter3_reg[0] <= v10_0_addr_61_reg_865_pp0_iter2_reg[0];
v10_0_addr_61_reg_865_pp0_iter3_reg[4 : 2] <= v10_0_addr_61_reg_865_pp0_iter2_reg[4 : 2];
        v10_0_addr_62_reg_875[4 : 2] <= zext_ln87_fu_638_p1[4 : 2];
        v10_0_addr_62_reg_875_pp0_iter2_reg[4 : 2] <= v10_0_addr_62_reg_875[4 : 2];
        v10_0_addr_62_reg_875_pp0_iter3_reg[4 : 2] <= v10_0_addr_62_reg_875_pp0_iter2_reg[4 : 2];
        v10_0_addr_62_reg_875_pp0_iter4_reg[4 : 2] <= v10_0_addr_62_reg_875_pp0_iter3_reg[4 : 2];
        v10_1_addr_61_reg_870[0] <= zext_ln73_fu_625_p1[0];
v10_1_addr_61_reg_870[4 : 2] <= zext_ln73_fu_625_p1[4 : 2];
        v10_1_addr_61_reg_870_pp0_iter2_reg[0] <= v10_1_addr_61_reg_870[0];
v10_1_addr_61_reg_870_pp0_iter2_reg[4 : 2] <= v10_1_addr_61_reg_870[4 : 2];
        v10_1_addr_61_reg_870_pp0_iter3_reg[0] <= v10_1_addr_61_reg_870_pp0_iter2_reg[0];
v10_1_addr_61_reg_870_pp0_iter3_reg[4 : 2] <= v10_1_addr_61_reg_870_pp0_iter2_reg[4 : 2];
        v10_1_addr_62_reg_885[4 : 2] <= zext_ln87_fu_638_p1[4 : 2];
        v10_1_addr_62_reg_885_pp0_iter2_reg[4 : 2] <= v10_1_addr_62_reg_885[4 : 2];
        v10_1_addr_62_reg_885_pp0_iter3_reg[4 : 2] <= v10_1_addr_62_reg_885_pp0_iter2_reg[4 : 2];
        v10_1_addr_62_reg_885_pp0_iter4_reg[4 : 2] <= v10_1_addr_62_reg_885_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_850 <= v10_0_q1;
        v18_reg_855 <= grp_fu_2162_p_dout0;
        v21_reg_895 <= v10_1_q1;
        v24_reg_860 <= grp_fu_2166_p_dout0;
        v27_reg_900 <= v10_0_q0;
        v33_reg_905 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_910 <= grp_fu_2162_p_dout0;
        v36_reg_915 <= grp_fu_2166_p_dout0;
        v39_reg_920 <= v10_0_q1;
        v45_reg_925 <= v10_1_q1;
        v51_reg_930 <= v10_0_q0;
        v57_reg_935 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_960 <= grp_fu_2154_p_dout0;
        v37_reg_965 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_940 <= grp_fu_2162_p_dout0;
        v48_reg_945 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_950 <= grp_fu_2162_p_dout0;
        v60_reg_955 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_970 <= grp_fu_2154_p_dout0;
        v61_reg_975 <= grp_fu_2158_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_680 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12 = v12_16_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p0 = v51_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p0 = v39_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_336_p0 = v27_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p0 = v14_reg_850;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p1 = v54_reg_950;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p1 = v42_reg_940;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_336_p1 = v30_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p1 = v18_reg_855;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p0 = v57_reg_935;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p0 = v45_reg_925;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_340_p0 = v33_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_340_p0 = v21_reg_895;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p1 = v60_reg_955;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p1 = v48_reg_945;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_340_p1 = v36_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_340_p1 = v24_reg_860;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p0 = v53_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p0 = v41_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_344_p0 = v29_fu_539_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_344_p0 = v16_fu_500_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p0 = v59_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p0 = v47_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_348_p0 = v35_fu_544_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_348_p0 = v23_fu_505_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_62_reg_875_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_60_reg_820_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_587_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_61_reg_865_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_810_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_575_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_960;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_62_reg_885_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_60_reg_825_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_587_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_61_reg_870_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_575_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_965;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_24_address0_local = zext_ln96_fu_569_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_24_address0_local = zext_ln82_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_24_address0_local = zext_ln68_fu_478_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_24_address0_local = zext_ln54_fu_430_p1;
        end else begin
            v137_24_address0_local = 'bx;
        end
    end else begin
        v137_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_24_address1_local = zext_ln89_fu_556_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_24_address1_local = zext_ln75_fu_517_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_24_address1_local = zext_ln61_fu_464_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_24_address1_local = zext_ln46_fu_406_p1;
        end else begin
            v137_24_address1_local = 'bx;
        end
    end else begin
        v137_24_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_24_ce0_local = 1'b1;
    end else begin
        v137_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_24_ce1_local = 1'b1;
    end else begin
        v137_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_8_address0_local = zext_ln96_fu_569_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_8_address0_local = zext_ln82_fu_533_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_8_address0_local = zext_ln68_fu_478_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_8_address0_local = zext_ln54_fu_430_p1;
        end else begin
            v137_8_address0_local = 'bx;
        end
    end else begin
        v137_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_8_address1_local = zext_ln89_fu_556_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_8_address1_local = zext_ln75_fu_517_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_8_address1_local = zext_ln61_fu_464_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_8_address1_local = zext_ln46_fu_406_p1;
        end else begin
            v137_8_address1_local = 'bx;
        end
    end else begin
        v137_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_8_ce0_local = 1'b1;
    end else begin
        v137_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_8_ce1_local = 1'b1;
    end else begin
        v137_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln42_fu_436_p2 = (ap_sig_allocacmp_v12 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2154_p_ce = 1'b1;
assign grp_fu_2154_p_din0 = grp_fu_336_p0;
assign grp_fu_2154_p_din1 = grp_fu_336_p1;
assign grp_fu_2154_p_opcode = 2'd0;
assign grp_fu_2158_p_ce = 1'b1;
assign grp_fu_2158_p_din0 = grp_fu_340_p0;
assign grp_fu_2158_p_din1 = grp_fu_340_p1;
assign grp_fu_2158_p_opcode = 2'd0;
assign grp_fu_2162_p_ce = 1'b1;
assign grp_fu_2162_p_din0 = grp_fu_344_p0;
assign grp_fu_2162_p_din1 = v17_16;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = grp_fu_348_p0;
assign grp_fu_2166_p_din1 = v17_16;
assign grp_fu_352_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_24_q1 : v137_8_q1);
assign grp_fu_359_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_24_q0 : v137_8_q0);
assign lshr_ln42_s_fu_412_p4 = {{ap_sig_allocacmp_v12[5:1]}};
assign or_ln59_s_fu_580_p3 = {{tmp_190_reg_709}, {1'd1}};
assign or_ln73_s_fu_617_p4 = {{{tmp_193_reg_734}, {1'd1}}, {tmp_27_reg_744}};
assign or_ln87_s_fu_631_p3 = {{tmp_193_reg_734}, {2'd3}};
assign select_ln89_fu_603_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_24_q1 : v137_8_q1);
assign select_ln96_fu_610_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_24_q0 : v137_8_q0);
assign shl_ln46_fu_400_p2 = ap_sig_allocacmp_v12 << 7'd1;
assign tmp_190_fu_447_p4 = {{v12_reg_673[5:2]}};
assign tmp_191_fu_456_p3 = {{tmp_190_fu_447_p4}, {3'd4}};
assign tmp_192_fu_470_p3 = {{tmp_190_fu_447_p4}, {3'd6}};
assign tmp_194_fu_510_p3 = {{tmp_193_reg_734}, {4'd8}};
assign tmp_195_fu_523_p5 = {{{{tmp_193_reg_734}, {1'd1}}, {tmp_27_reg_744}}, {2'd2}};
assign tmp_196_fu_549_p3 = {{tmp_193_reg_734}, {4'd12}};
assign tmp_197_fu_562_p3 = {{tmp_193_reg_734}, {4'd14}};
assign tmp_fu_392_p3 = ap_sig_allocacmp_v12[32'd6];
assign tmp_s_fu_422_p3 = {{lshr_ln42_s_fu_412_p4}, {2'd2}};
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_374;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_379;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_24_address0 = v137_24_address0_local;
assign v137_24_address1 = v137_24_address1_local;
assign v137_24_ce0 = v137_24_ce0_local;
assign v137_24_ce1 = v137_24_ce1_local;
assign v137_8_address0 = v137_8_address0_local;
assign v137_8_address1 = v137_8_address1_local;
assign v137_8_ce0 = v137_8_ce0_local;
assign v137_8_ce1 = v137_8_ce1_local;
assign v16_fu_500_p1 = reg_366;
assign v23_fu_505_p1 = reg_370;
assign v29_fu_539_p1 = reg_366;
assign v35_fu_544_p1 = reg_370;
assign v41_fu_593_p1 = reg_366;
assign v47_fu_598_p1 = reg_370;
assign v53_fu_644_p1 = select_ln89_reg_840;
assign v59_fu_648_p1 = select_ln96_reg_845;
assign zext_ln42_fu_575_p1 = lshr_ln42_s_reg_694;
assign zext_ln46_fu_406_p1 = shl_ln46_fu_400_p2;
assign zext_ln54_fu_430_p1 = tmp_s_fu_422_p3;
assign zext_ln59_fu_587_p1 = or_ln59_s_fu_580_p3;
assign zext_ln61_fu_464_p1 = tmp_191_fu_456_p3;
assign zext_ln68_fu_478_p1 = tmp_192_fu_470_p3;
assign zext_ln73_fu_625_p1 = or_ln73_s_fu_617_p4;
assign zext_ln75_fu_517_p1 = tmp_194_fu_510_p3;
assign zext_ln82_fu_533_p1 = tmp_195_fu_523_p5;
assign zext_ln87_fu_638_p1 = or_ln87_s_fu_631_p3;
assign zext_ln89_fu_556_p1 = tmp_196_fu_549_p3;
assign zext_ln96_fu_569_p1 = tmp_197_fu_562_p3;
always @ (posedge ap_clk) begin
    v10_0_addr_60_reg_820[0] <= 1'b1;
    v10_0_addr_60_reg_820_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_60_reg_820_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_60_reg_825[0] <= 1'b1;
    v10_1_addr_60_reg_825_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_60_reg_825_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_61_reg_865[1] <= 1'b1;
    v10_0_addr_61_reg_865_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_61_reg_865_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_61_reg_870[1] <= 1'b1;
    v10_1_addr_61_reg_870_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_61_reg_870_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_62_reg_875[1:0] <= 2'b11;
    v10_0_addr_62_reg_875_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_62_reg_875_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_62_reg_875_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_62_reg_885[1:0] <= 2'b11;
    v10_1_addr_62_reg_885_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_62_reg_885_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_62_reg_885_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
