module main_graph_main_graph_Pipeline_VITIS_LOOP_707_157_VITIS_LOOP_708_158_VITIS_LOOP_709_159_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v26_address1,v26_ce1,v26_we1,v26_d1,v11_Addr_A,v11_EN_A,v11_WEN_A,v11_Din_A,v11_Dout_A,v27_address0,v27_ce0,v27_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v26_address1;
output   v26_ce1;
output   v26_we1;
output  [7:0] v26_d1;
output  [31:0] v11_Addr_A;
output   v11_EN_A;
output  [0:0] v11_WEN_A;
output  [7:0] v11_Din_A;
input  [7:0] v11_Dout_A;
output  [12:0] v27_address0;
output   v27_ce0;
input  [6:0] v27_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln707_fu_254_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln707_reg_959;
reg   [0:0] icmp_ln707_reg_959_pp0_iter1_reg;
wire   [0:0] icmp_ln708_fu_280_p2;
reg   [0:0] icmp_ln708_reg_963;
reg   [0:0] icmp_ln708_reg_963_pp0_iter2_reg;
wire   [0:0] xor_ln707_fu_286_p2;
reg   [0:0] xor_ln707_reg_970;
wire   [0:0] and_ln707_3_fu_304_p2;
reg   [0:0] and_ln707_3_reg_976;
reg   [0:0] and_ln707_3_reg_976_pp0_iter2_reg;
wire   [0:0] empty_fu_310_p2;
reg   [0:0] empty_reg_981;
wire   [0:0] not_exitcond_flatten1874_mid21953114_fu_322_p2;
reg   [0:0] not_exitcond_flatten1874_mid21953114_reg_987;
wire   [0:0] exitcond_flatten1848_mid21907_fu_334_p2;
reg   [0:0] exitcond_flatten1848_mid21907_reg_993;
wire   [0:0] empty_28_fu_340_p2;
reg   [0:0] empty_28_reg_1001;
wire   [0:0] empty_29_fu_346_p2;
reg   [0:0] empty_29_reg_1006;
reg   [0:0] empty_29_reg_1006_pp0_iter2_reg;
reg   [0:0] empty_29_reg_1006_pp0_iter3_reg;
reg   [0:0] empty_29_reg_1006_pp0_iter4_reg;
reg   [0:0] empty_29_reg_1006_pp0_iter5_reg;
reg   [0:0] empty_29_reg_1006_pp0_iter6_reg;
wire   [1:0] select_ln709_fu_487_p3;
reg   [1:0] select_ln709_reg_1012;
reg   [1:0] select_ln709_reg_1012_pp0_iter3_reg;
wire   [9:0] select_ln711_fu_541_p3;
reg   [9:0] select_ln711_reg_1018;
wire   [8:0] trunc_ln712_fu_549_p1;
reg   [8:0] trunc_ln712_reg_1023;
reg   [8:0] trunc_ln712_reg_1023_pp0_iter3_reg;
wire   [1:0] v350_mid2_fu_575_p3;
reg   [1:0] v350_mid2_reg_1028;
reg   [1:0] v350_mid2_reg_1028_pp0_iter3_reg;
wire   [1:0] select_ln712_fu_583_p3;
reg   [1:0] select_ln712_reg_1034;
wire   [0:0] icmp_ln713_1_fu_597_p2;
reg   [0:0] icmp_ln713_1_reg_1040;
reg   [0:0] icmp_ln713_1_reg_1040_pp0_iter3_reg;
reg   [0:0] icmp_ln713_1_reg_1040_pp0_iter4_reg;
reg   [0:0] icmp_ln713_1_reg_1040_pp0_iter5_reg;
reg   [0:0] icmp_ln713_1_reg_1040_pp0_iter6_reg;
reg   [0:0] icmp_ln713_1_reg_1040_pp0_iter7_reg;
wire   [0:0] icmp_ln712_1_fu_603_p2;
reg   [0:0] icmp_ln712_1_reg_1044;
reg   [0:0] icmp_ln712_1_reg_1044_pp0_iter3_reg;
reg   [0:0] icmp_ln712_1_reg_1044_pp0_iter4_reg;
reg   [0:0] icmp_ln712_1_reg_1044_pp0_iter5_reg;
reg   [0:0] icmp_ln712_1_reg_1044_pp0_iter6_reg;
reg   [0:0] icmp_ln712_1_reg_1044_pp0_iter7_reg;
wire   [0:0] icmp_ln711_1_fu_609_p2;
reg   [0:0] icmp_ln711_1_reg_1048;
reg   [0:0] icmp_ln711_1_reg_1048_pp0_iter3_reg;
reg   [0:0] icmp_ln711_1_reg_1048_pp0_iter4_reg;
reg   [0:0] icmp_ln711_1_reg_1048_pp0_iter5_reg;
reg   [0:0] icmp_ln711_1_reg_1048_pp0_iter6_reg;
reg   [0:0] icmp_ln711_1_reg_1048_pp0_iter7_reg;
wire   [9:0] add_ln710_fu_715_p2;
reg   [9:0] add_ln710_reg_1052;
wire   [20:0] add_ln715_1_fu_755_p2;
reg   [20:0] add_ln715_1_reg_1057;
wire   [19:0] trunc_ln715_1_fu_761_p1;
reg   [19:0] trunc_ln715_1_reg_1062;
wire   [1:0] empty_35_fu_765_p2;
reg   [1:0] empty_35_reg_1067;
wire   [10:0] add_ln710_1_fu_790_p2;
reg   [10:0] add_ln710_1_reg_1072;
reg   [10:0] add_ln710_1_reg_1072_pp0_iter5_reg;
reg   [10:0] add_ln710_1_reg_1072_pp0_iter6_reg;
reg   [10:0] add_ln710_1_reg_1072_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln715_5_fu_821_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln714_fu_838_p1;
wire   [63:0] zext_ln710_3_fu_857_p1;
reg   [7:0] v353_fu_100;
wire   [7:0] grp_fu_865_p3;
reg   [7:0] ap_sig_allocacmp_v353_load;
wire    ap_loop_init;
reg   [1:0] v350_fu_104;
wire   [1:0] add_ln713_fu_591_p2;
reg   [1:0] v349_fu_108;
reg   [3:0] indvar_flatten1831_fu_112;
wire   [3:0] select_ln712_1_fu_621_p3;
reg   [9:0] v348_fu_116;
reg   [13:0] indvar_flatten1846_fu_120;
wire   [13:0] select_ln711_1_fu_358_p3;
reg   [1:0] v347_fu_124;
reg   [14:0] indvar_flatten1872_fu_128;
wire   [14:0] select_ln709_1_fu_372_p3;
reg   [1:0] v346_fu_132;
wire   [1:0] select_ln708_fu_686_p3;
reg   [15:0] indvar_flatten1908_fu_136;
wire   [15:0] select_ln708_1_fu_386_p3;
reg   [9:0] v345_fu_140;
wire   [9:0] select_ln707_1_fu_673_p3;
reg   [23:0] indvar_flatten1954_fu_144;
wire   [23:0] add_ln707_1_fu_260_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten1954_load;
reg    v27_ce0_local;
reg    v11_EN_A_local;
wire   [31:0] v11_Addr_A_orig;
reg    v26_we1_local;
reg    v26_ce1_local;
wire   [0:0] icmp_ln709_fu_298_p2;
wire   [0:0] exitcond_flatten1874_not115_fu_316_p2;
wire   [0:0] icmp_ln711_fu_292_p2;
wire   [0:0] and_ln707_2_fu_328_p2;
wire   [13:0] add_ln711_1_fu_352_p2;
wire   [14:0] add_ln709_1_fu_366_p2;
wire   [15:0] add_ln708_1_fu_380_p2;
wire   [0:0] icmp_ln713_fu_424_p2;
wire   [0:0] icmp_ln712_fu_435_p2;
wire   [0:0] and_ln707_fu_430_p2;
wire   [0:0] and_ln707_1_fu_441_p2;
wire   [1:0] v347_mid21879_fu_446_p3;
wire   [0:0] exitcond_flatten1833_mid21903_fu_458_p2;
wire   [0:0] not_exitcond_flatten1848_mid21907_fu_476_p2;
wire   [1:0] add_ln709_fu_463_p2;
wire   [9:0] v348_mid21853_fu_469_p3;
wire   [0:0] exitcond_flatten1833_mid21871_fu_481_p2;
wire   [0:0] empty_30_fu_500_p2;
wire   [0:0] empty_31_fu_505_p2;
wire   [0:0] exitcond_flatten1833_mid21903_not_fu_518_p2;
wire   [0:0] icmp_ln713_mid21899_fu_453_p2;
wire   [0:0] icmp_ln713_mid21867_fu_529_p2;
wire   [0:0] not_exitcond_flatten1833_mid21871_fu_524_p2;
wire   [9:0] add_ln711_fu_494_p2;
wire   [1:0] v349_mid21838_fu_510_p3;
wire   [0:0] icmp_ln713_mid21845_fu_535_p2;
wire   [0:0] empty_32_fu_559_p2;
wire   [0:0] empty_33_fu_564_p2;
wire   [0:0] empty_34_fu_570_p2;
wire   [1:0] add_ln712_fu_553_p2;
wire   [3:0] add_ln712_1_fu_615_p2;
wire   [9:0] add_ln707_fu_660_p2;
wire   [1:0] select_ln707_fu_666_p3;
wire   [1:0] add_ln708_fu_680_p2;
wire   [18:0] tmp_s_fu_693_p3;
wire   [9:0] shl_ln710_fu_705_p2;
wire   [9:0] zext_ln710_1_fu_711_p1;
wire   [19:0] zext_ln710_fu_701_p1;
wire   [19:0] zext_ln715_fu_721_p1;
wire   [19:0] add_ln715_fu_724_p2;
wire   [18:0] trunc_ln715_fu_730_p1;
wire   [20:0] tmp_6_fu_734_p3;
wire   [20:0] zext_ln715_1_fu_742_p1;
wire   [20:0] sub_ln712_fu_746_p2;
wire   [20:0] zext_ln715_2_fu_752_p1;
wire   [10:0] tmp_fu_780_p3;
wire   [10:0] zext_ln710_2_fu_787_p1;
wire   [21:0] tmp_7_fu_796_p3;
wire   [21:0] zext_ln715_3_fu_803_p1;
wire   [21:0] sub_ln715_fu_806_p2;
wire   [21:0] zext_ln715_4_fu_812_p1;
wire   [21:0] add_ln715_2_fu_815_p2;
wire   [1:0] add_ln714_fu_826_p2;
wire   [12:0] tmp_8_fu_830_p4;
wire   [6:0] grp_fu_865_p1;
wire   [7:0] grp_fu_865_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_865_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 v353_fu_100 = 8'd0;
#0 v350_fu_104 = 2'd0;
#0 v349_fu_108 = 2'd0;
#0 indvar_flatten1831_fu_112 = 4'd0;
#0 v348_fu_116 = 10'd0;
#0 indvar_flatten1846_fu_120 = 14'd0;
#0 v347_fu_124 = 2'd0;
#0 indvar_flatten1872_fu_128 = 15'd0;
#0 v346_fu_132 = 2'd0;
#0 indvar_flatten1908_fu_136 = 16'd0;
#0 v345_fu_140 = 10'd0;
#0 indvar_flatten1954_fu_144 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(v11_Dout_A),.din1(grp_fu_865_p1),.din2(grp_fu_865_p2),.ce(1'b1),.dout(grp_fu_865_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten1831_fu_112 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten1831_fu_112 <= select_ln712_1_fu_621_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1846_fu_120 <= 14'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln707_reg_959 == 1'd0))) begin
            indvar_flatten1846_fu_120 <= select_ln711_1_fu_358_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1872_fu_128 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln707_reg_959 == 1'd0))) begin
            indvar_flatten1872_fu_128 <= select_ln709_1_fu_372_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1908_fu_136 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln707_reg_959 == 1'd0))) begin
            indvar_flatten1908_fu_136 <= select_ln708_1_fu_386_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln707_fu_254_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1954_fu_144 <= add_ln707_1_fu_260_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1954_fu_144 <= 24'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v345_fu_140 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v345_fu_140 <= select_ln707_1_fu_673_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v346_fu_132 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v346_fu_132 <= select_ln708_fu_686_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v347_fu_124 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd0))) begin
            v347_fu_124 <= select_ln709_fu_487_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v348_fu_116 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd0))) begin
            v348_fu_116 <= select_ln711_fu_541_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v349_fu_108 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd0))) begin
            v349_fu_108 <= select_ln712_fu_583_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v350_fu_104 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd0))) begin
            v350_fu_104 <= add_ln713_fu_591_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v353_fu_100 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v353_fu_100 <= grp_fu_865_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln710_1_reg_1072 <= add_ln710_1_fu_790_p2;
        add_ln710_1_reg_1072_pp0_iter5_reg <= add_ln710_1_reg_1072;
        add_ln710_1_reg_1072_pp0_iter6_reg <= add_ln710_1_reg_1072_pp0_iter5_reg;
        add_ln710_1_reg_1072_pp0_iter7_reg <= add_ln710_1_reg_1072_pp0_iter6_reg;
        add_ln710_reg_1052 <= add_ln710_fu_715_p2;
        add_ln715_1_reg_1057 <= add_ln715_1_fu_755_p2;
        and_ln707_3_reg_976_pp0_iter2_reg <= and_ln707_3_reg_976;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_29_reg_1006_pp0_iter2_reg <= empty_29_reg_1006;
        empty_29_reg_1006_pp0_iter3_reg <= empty_29_reg_1006_pp0_iter2_reg;
        empty_29_reg_1006_pp0_iter4_reg <= empty_29_reg_1006_pp0_iter3_reg;
        empty_29_reg_1006_pp0_iter5_reg <= empty_29_reg_1006_pp0_iter4_reg;
        empty_29_reg_1006_pp0_iter6_reg <= empty_29_reg_1006_pp0_iter5_reg;
        empty_35_reg_1067 <= empty_35_fu_765_p2;
        icmp_ln708_reg_963_pp0_iter2_reg <= icmp_ln708_reg_963;
        icmp_ln711_1_reg_1048 <= icmp_ln711_1_fu_609_p2;
        icmp_ln711_1_reg_1048_pp0_iter3_reg <= icmp_ln711_1_reg_1048;
        icmp_ln711_1_reg_1048_pp0_iter4_reg <= icmp_ln711_1_reg_1048_pp0_iter3_reg;
        icmp_ln711_1_reg_1048_pp0_iter5_reg <= icmp_ln711_1_reg_1048_pp0_iter4_reg;
        icmp_ln711_1_reg_1048_pp0_iter6_reg <= icmp_ln711_1_reg_1048_pp0_iter5_reg;
        icmp_ln711_1_reg_1048_pp0_iter7_reg <= icmp_ln711_1_reg_1048_pp0_iter6_reg;
        icmp_ln712_1_reg_1044 <= icmp_ln712_1_fu_603_p2;
        icmp_ln712_1_reg_1044_pp0_iter3_reg <= icmp_ln712_1_reg_1044;
        icmp_ln712_1_reg_1044_pp0_iter4_reg <= icmp_ln712_1_reg_1044_pp0_iter3_reg;
        icmp_ln712_1_reg_1044_pp0_iter5_reg <= icmp_ln712_1_reg_1044_pp0_iter4_reg;
        icmp_ln712_1_reg_1044_pp0_iter6_reg <= icmp_ln712_1_reg_1044_pp0_iter5_reg;
        icmp_ln712_1_reg_1044_pp0_iter7_reg <= icmp_ln712_1_reg_1044_pp0_iter6_reg;
        icmp_ln713_1_reg_1040 <= icmp_ln713_1_fu_597_p2;
        icmp_ln713_1_reg_1040_pp0_iter3_reg <= icmp_ln713_1_reg_1040;
        icmp_ln713_1_reg_1040_pp0_iter4_reg <= icmp_ln713_1_reg_1040_pp0_iter3_reg;
        icmp_ln713_1_reg_1040_pp0_iter5_reg <= icmp_ln713_1_reg_1040_pp0_iter4_reg;
        icmp_ln713_1_reg_1040_pp0_iter6_reg <= icmp_ln713_1_reg_1040_pp0_iter5_reg;
        icmp_ln713_1_reg_1040_pp0_iter7_reg <= icmp_ln713_1_reg_1040_pp0_iter6_reg;
        select_ln709_reg_1012 <= select_ln709_fu_487_p3;
        select_ln709_reg_1012_pp0_iter3_reg <= select_ln709_reg_1012;
        select_ln711_reg_1018 <= select_ln711_fu_541_p3;
        select_ln712_reg_1034 <= select_ln712_fu_583_p3;
        trunc_ln712_reg_1023 <= trunc_ln712_fu_549_p1;
        trunc_ln712_reg_1023_pp0_iter3_reg <= trunc_ln712_reg_1023;
        trunc_ln715_1_reg_1062 <= trunc_ln715_1_fu_761_p1;
        v350_mid2_reg_1028 <= v350_mid2_fu_575_p3;
        v350_mid2_reg_1028_pp0_iter3_reg <= v350_mid2_reg_1028;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln707_3_reg_976 <= and_ln707_3_fu_304_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_28_reg_1001 <= empty_28_fu_340_p2;
        empty_29_reg_1006 <= empty_29_fu_346_p2;
        empty_reg_981 <= empty_fu_310_p2;
        exitcond_flatten1848_mid21907_reg_993 <= exitcond_flatten1848_mid21907_fu_334_p2;
        icmp_ln707_reg_959 <= icmp_ln707_fu_254_p2;
        icmp_ln707_reg_959_pp0_iter1_reg <= icmp_ln707_reg_959;
        icmp_ln708_reg_963 <= icmp_ln708_fu_280_p2;
        not_exitcond_flatten1874_mid21953114_reg_987 <= not_exitcond_flatten1874_mid21953114_fu_322_p2;
        xor_ln707_reg_970 <= xor_ln707_fu_286_p2;
    end
end
always @ (*) begin
    if (((icmp_ln707_fu_254_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln707_reg_959_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1954_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1954_load = indvar_flatten1954_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v353_load = grp_fu_865_p3;
    end else begin
        ap_sig_allocacmp_v353_load = v353_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v11_EN_A_local = 1'b1;
    end else begin
        v11_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v26_ce1_local = 1'b1;
    end else begin
        v26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln711_1_reg_1048_pp0_iter7_reg == 1'd1) & (icmp_ln712_1_reg_1044_pp0_iter7_reg == 1'd1) & (icmp_ln713_1_reg_1040_pp0_iter7_reg == 1'd1))) begin
        v26_we1_local = 1'b1;
    end else begin
        v26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v27_ce0_local = 1'b1;
    end else begin
        v27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln707_1_fu_260_p2 = (ap_sig_allocacmp_indvar_flatten1954_load + 24'd1);
assign add_ln707_fu_660_p2 = (v345_fu_140 + 10'd1);
assign add_ln708_1_fu_380_p2 = (indvar_flatten1908_fu_136 + 16'd1);
assign add_ln708_fu_680_p2 = (select_ln707_fu_666_p3 + 2'd1);
assign add_ln709_1_fu_366_p2 = (indvar_flatten1872_fu_128 + 15'd1);
assign add_ln709_fu_463_p2 = (v347_mid21879_fu_446_p3 + 2'd1);
assign add_ln710_1_fu_790_p2 = (tmp_fu_780_p3 + zext_ln710_2_fu_787_p1);
assign add_ln710_fu_715_p2 = (shl_ln710_fu_705_p2 + zext_ln710_1_fu_711_p1);
assign add_ln711_1_fu_352_p2 = (indvar_flatten1846_fu_120 + 14'd1);
assign add_ln711_fu_494_p2 = (v348_mid21853_fu_469_p3 + 10'd1);
assign add_ln712_1_fu_615_p2 = (indvar_flatten1831_fu_112 + 4'd1);
assign add_ln712_fu_553_p2 = (v349_mid21838_fu_510_p3 + 2'd1);
assign add_ln713_fu_591_p2 = (v350_mid2_fu_575_p3 + 2'd1);
assign add_ln714_fu_826_p2 = (v350_mid2_reg_1028_pp0_iter3_reg + select_ln709_reg_1012_pp0_iter3_reg);
assign add_ln715_1_fu_755_p2 = (sub_ln712_fu_746_p2 + zext_ln715_2_fu_752_p1);
assign add_ln715_2_fu_815_p2 = (sub_ln715_fu_806_p2 + zext_ln715_4_fu_812_p1);
assign add_ln715_fu_724_p2 = (zext_ln710_fu_701_p1 + zext_ln715_fu_721_p1);
assign and_ln707_1_fu_441_p2 = (xor_ln707_reg_970 & icmp_ln712_fu_435_p2);
assign and_ln707_2_fu_328_p2 = (xor_ln707_fu_286_p2 & icmp_ln711_fu_292_p2);
assign and_ln707_3_fu_304_p2 = (xor_ln707_fu_286_p2 & icmp_ln709_fu_298_p2);
assign and_ln707_fu_430_p2 = (xor_ln707_reg_970 & icmp_ln713_fu_424_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_28_fu_340_p2 = (exitcond_flatten1848_mid21907_fu_334_p2 | and_ln707_3_fu_304_p2);
assign empty_29_fu_346_p2 = (icmp_ln708_fu_280_p2 | empty_28_fu_340_p2);
assign empty_30_fu_500_p2 = (exitcond_flatten1848_mid21907_reg_993 | exitcond_flatten1833_mid21871_fu_481_p2);
assign empty_31_fu_505_p2 = (empty_reg_981 | empty_30_fu_500_p2);
assign empty_32_fu_559_p2 = (exitcond_flatten1833_mid21871_fu_481_p2 | empty_28_reg_1001);
assign empty_33_fu_564_p2 = (icmp_ln713_mid21845_fu_535_p2 | empty_32_fu_559_p2);
assign empty_34_fu_570_p2 = (icmp_ln708_reg_963 | empty_33_fu_564_p2);
assign empty_35_fu_765_p2 = (select_ln712_reg_1034 + select_ln708_fu_686_p3);
assign empty_fu_310_p2 = (icmp_ln708_fu_280_p2 | and_ln707_3_fu_304_p2);
assign exitcond_flatten1833_mid21871_fu_481_p2 = (not_exitcond_flatten1848_mid21907_fu_476_p2 & exitcond_flatten1833_mid21903_fu_458_p2);
assign exitcond_flatten1833_mid21903_fu_458_p2 = (not_exitcond_flatten1874_mid21953114_reg_987 & and_ln707_1_fu_441_p2);
assign exitcond_flatten1833_mid21903_not_fu_518_p2 = (exitcond_flatten1833_mid21903_fu_458_p2 ^ 1'd1);
assign exitcond_flatten1848_mid21907_fu_334_p2 = (not_exitcond_flatten1874_mid21953114_fu_322_p2 & and_ln707_2_fu_328_p2);
assign exitcond_flatten1874_not115_fu_316_p2 = (icmp_ln709_fu_298_p2 ^ 1'd1);
assign grp_fu_865_p1 = grp_fu_865_p10;
assign grp_fu_865_p10 = v27_q0;
assign grp_fu_865_p2 = ((empty_29_reg_1006_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v353_load);
assign icmp_ln707_fu_254_p2 = ((ap_sig_allocacmp_indvar_flatten1954_load == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln708_fu_280_p2 = ((indvar_flatten1908_fu_136 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln709_fu_298_p2 = ((indvar_flatten1872_fu_128 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln711_1_fu_609_p2 = ((select_ln711_fu_541_p3 == 10'd511) ? 1'b1 : 1'b0);
assign icmp_ln711_fu_292_p2 = ((indvar_flatten1846_fu_120 == 14'd4608) ? 1'b1 : 1'b0);
assign icmp_ln712_1_fu_603_p2 = ((select_ln712_fu_583_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln712_fu_435_p2 = ((indvar_flatten1831_fu_112 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln713_1_fu_597_p2 = ((add_ln713_fu_591_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln713_fu_424_p2 = ((v350_fu_104 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln713_mid21845_fu_535_p2 = (not_exitcond_flatten1833_mid21871_fu_524_p2 & icmp_ln713_mid21867_fu_529_p2);
assign icmp_ln713_mid21867_fu_529_p2 = (not_exitcond_flatten1848_mid21907_fu_476_p2 & icmp_ln713_mid21899_fu_453_p2);
assign icmp_ln713_mid21899_fu_453_p2 = (not_exitcond_flatten1874_mid21953114_reg_987 & and_ln707_fu_430_p2);
assign not_exitcond_flatten1833_mid21871_fu_524_p2 = (exitcond_flatten1848_mid21907_reg_993 | exitcond_flatten1833_mid21903_not_fu_518_p2);
assign not_exitcond_flatten1848_mid21907_fu_476_p2 = (exitcond_flatten1848_mid21907_reg_993 ^ 1'd1);
assign not_exitcond_flatten1874_mid21953114_fu_322_p2 = (icmp_ln708_fu_280_p2 | exitcond_flatten1874_not115_fu_316_p2);
assign select_ln707_1_fu_673_p3 = ((icmp_ln708_reg_963_pp0_iter2_reg[0:0] == 1'b1) ? add_ln707_fu_660_p2 : v345_fu_140);
assign select_ln707_fu_666_p3 = ((icmp_ln708_reg_963_pp0_iter2_reg[0:0] == 1'b1) ? 2'd0 : v346_fu_132);
assign select_ln708_1_fu_386_p3 = ((icmp_ln708_fu_280_p2[0:0] == 1'b1) ? 16'd1 : add_ln708_1_fu_380_p2);
assign select_ln708_fu_686_p3 = ((and_ln707_3_reg_976_pp0_iter2_reg[0:0] == 1'b1) ? add_ln708_fu_680_p2 : select_ln707_fu_666_p3);
assign select_ln709_1_fu_372_p3 = ((empty_fu_310_p2[0:0] == 1'b1) ? 15'd1 : add_ln709_1_fu_366_p2);
assign select_ln709_fu_487_p3 = ((exitcond_flatten1848_mid21907_reg_993[0:0] == 1'b1) ? add_ln709_fu_463_p2 : v347_mid21879_fu_446_p3);
assign select_ln711_1_fu_358_p3 = ((empty_29_fu_346_p2[0:0] == 1'b1) ? 14'd1 : add_ln711_1_fu_352_p2);
assign select_ln711_fu_541_p3 = ((exitcond_flatten1833_mid21871_fu_481_p2[0:0] == 1'b1) ? add_ln711_fu_494_p2 : v348_mid21853_fu_469_p3);
assign select_ln712_1_fu_621_p3 = ((empty_31_fu_505_p2[0:0] == 1'b1) ? 4'd1 : add_ln712_1_fu_615_p2);
assign select_ln712_fu_583_p3 = ((icmp_ln713_mid21845_fu_535_p2[0:0] == 1'b1) ? add_ln712_fu_553_p2 : v349_mid21838_fu_510_p3);
assign shl_ln710_fu_705_p2 = select_ln707_1_fu_673_p3 << 10'd1;
assign sub_ln712_fu_746_p2 = (tmp_6_fu_734_p3 - zext_ln715_1_fu_742_p1);
assign sub_ln715_fu_806_p2 = (tmp_7_fu_796_p3 - zext_ln715_3_fu_803_p1);
assign tmp_6_fu_734_p3 = {{trunc_ln715_fu_730_p1}, {2'd0}};
assign tmp_7_fu_796_p3 = {{trunc_ln715_1_reg_1062}, {2'd0}};
assign tmp_8_fu_830_p4 = {{{trunc_ln712_reg_1023_pp0_iter3_reg}, {empty_35_reg_1067}}, {add_ln714_fu_826_p2}};
assign tmp_fu_780_p3 = {{add_ln710_reg_1052}, {1'd0}};
assign tmp_s_fu_693_p3 = {{select_ln707_1_fu_673_p3}, {9'd0}};
assign trunc_ln712_fu_549_p1 = select_ln711_fu_541_p3[8:0];
assign trunc_ln715_1_fu_761_p1 = add_ln715_1_fu_755_p2[19:0];
assign trunc_ln715_fu_730_p1 = add_ln715_fu_724_p2[18:0];
assign v11_Addr_A = v11_Addr_A_orig << 32'd0;
assign v11_Addr_A_orig = zext_ln715_5_fu_821_p1;
assign v11_Din_A = 8'd0;
assign v11_EN_A = v11_EN_A_local;
assign v11_WEN_A = 1'd0;
assign v26_address1 = zext_ln710_3_fu_857_p1;
assign v26_ce1 = v26_ce1_local;
assign v26_d1 = grp_fu_865_p3;
assign v26_we1 = v26_we1_local;
assign v27_address0 = zext_ln714_fu_838_p1;
assign v27_ce0 = v27_ce0_local;
assign v347_mid21879_fu_446_p3 = ((empty_reg_981[0:0] == 1'b1) ? 2'd0 : v347_fu_124);
assign v348_mid21853_fu_469_p3 = ((empty_29_reg_1006[0:0] == 1'b1) ? 10'd0 : v348_fu_116);
assign v349_mid21838_fu_510_p3 = ((empty_31_fu_505_p2[0:0] == 1'b1) ? 2'd0 : v349_fu_108);
assign v350_mid2_fu_575_p3 = ((empty_34_fu_570_p2[0:0] == 1'b1) ? 2'd0 : v350_fu_104);
assign xor_ln707_fu_286_p2 = (icmp_ln708_fu_280_p2 ^ 1'd1);
assign zext_ln710_1_fu_711_p1 = select_ln708_fu_686_p3;
assign zext_ln710_2_fu_787_p1 = select_ln709_reg_1012_pp0_iter3_reg;
assign zext_ln710_3_fu_857_p1 = add_ln710_1_reg_1072_pp0_iter7_reg;
assign zext_ln710_fu_701_p1 = tmp_s_fu_693_p3;
assign zext_ln714_fu_838_p1 = tmp_8_fu_830_p4;
assign zext_ln715_1_fu_742_p1 = add_ln715_fu_724_p2;
assign zext_ln715_2_fu_752_p1 = select_ln712_reg_1034;
assign zext_ln715_3_fu_803_p1 = add_ln715_1_reg_1057;
assign zext_ln715_4_fu_812_p1 = v350_mid2_reg_1028_pp0_iter3_reg;
assign zext_ln715_5_fu_821_p1 = add_ln715_2_fu_815_p2;
assign zext_ln715_fu_721_p1 = select_ln711_reg_1018;
endmodule 