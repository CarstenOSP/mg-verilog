module main_graph_main_graph_Pipeline_VITIS_LOOP_803_187_VITIS_LOOP_805_188_VITIS_LOOP_806_189_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address1,v20_ce1,v20_we1,v20_d1,v13_Addr_A,v13_EN_A,v13_WEN_A,v13_Din_A,v13_Dout_A,v21_address0,v21_ce0,v21_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v20_address1;
output   v20_ce1;
output   v20_we1;
output  [7:0] v20_d1;
output  [31:0] v13_Addr_A;
output   v13_EN_A;
output  [0:0] v13_WEN_A;
output  [7:0] v13_Din_A;
input  [7:0] v13_Dout_A;
output  [12:0] v21_address0;
output   v21_ce0;
input  [6:0] v21_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln803_fu_201_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln803_reg_644;
wire   [0:0] icmp_ln805_fu_230_p2;
reg   [0:0] icmp_ln805_reg_648;
reg   [0:0] icmp_ln805_reg_648_pp0_iter2_reg;
reg   [0:0] icmp_ln805_reg_648_pp0_iter3_reg;
reg   [0:0] icmp_ln805_reg_648_pp0_iter4_reg;
reg   [0:0] icmp_ln805_reg_648_pp0_iter5_reg;
wire   [0:0] empty_fu_274_p2;
reg   [0:0] empty_reg_654;
wire   [0:0] icmp_ln807_mid22229_fu_298_p2;
reg   [0:0] icmp_ln807_mid22229_reg_659;
wire   [9:0] select_ln805_fu_304_p3;
reg   [9:0] select_ln805_reg_664;
wire   [8:0] trunc_ln806_fu_312_p1;
reg   [8:0] trunc_ln806_reg_670;
reg   [8:0] trunc_ln806_reg_670_pp0_iter2_reg;
wire   [1:0] v404_mid2_fu_328_p3;
reg   [1:0] v404_mid2_reg_675;
reg   [1:0] v404_mid2_reg_675_pp0_iter2_reg;
wire   [0:0] icmp_ln807_1_fu_342_p2;
reg   [0:0] icmp_ln807_1_reg_681;
reg   [0:0] icmp_ln807_1_reg_681_pp0_iter2_reg;
reg   [0:0] icmp_ln807_1_reg_681_pp0_iter3_reg;
reg   [0:0] icmp_ln807_1_reg_681_pp0_iter4_reg;
reg   [0:0] icmp_ln807_1_reg_681_pp0_iter5_reg;
reg   [0:0] icmp_ln807_1_reg_681_pp0_iter6_reg;
wire   [1:0] select_ln806_fu_428_p3;
reg   [1:0] select_ln806_reg_685;
reg   [8:0] v20_addr_reg_690;
reg   [8:0] v20_addr_reg_690_pp0_iter3_reg;
reg   [8:0] v20_addr_reg_690_pp0_iter4_reg;
reg   [8:0] v20_addr_reg_690_pp0_iter5_reg;
reg   [8:0] v20_addr_reg_690_pp0_iter6_reg;
wire   [20:0] add_ln809_1_fu_487_p2;
reg   [20:0] add_ln809_1_reg_695;
wire   [19:0] trunc_ln809_1_fu_493_p1;
reg   [19:0] trunc_ln809_1_reg_700;
wire   [0:0] icmp_ln806_1_fu_497_p2;
reg   [0:0] icmp_ln806_1_reg_705;
reg   [0:0] icmp_ln806_1_reg_705_pp0_iter3_reg;
reg   [0:0] icmp_ln806_1_reg_705_pp0_iter4_reg;
reg   [0:0] icmp_ln806_1_reg_705_pp0_iter5_reg;
reg   [0:0] icmp_ln806_1_reg_705_pp0_iter6_reg;
wire   [0:0] icmp_ln805_1_fu_503_p2;
reg   [0:0] icmp_ln805_1_reg_709;
reg   [0:0] icmp_ln805_1_reg_709_pp0_iter3_reg;
reg   [0:0] icmp_ln805_1_reg_709_pp0_iter4_reg;
reg   [0:0] icmp_ln805_1_reg_709_pp0_iter5_reg;
reg   [0:0] icmp_ln805_1_reg_709_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln803_fu_435_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln809_5_fu_543_p1;
wire   [63:0] zext_ln808_1_fu_555_p1;
reg   [7:0] v407_fu_84;
wire   [7:0] grp_fu_578_p3;
reg   [7:0] ap_sig_allocacmp_v407_load;
wire    ap_loop_init;
reg   [1:0] v404_fu_88;
wire   [1:0] add_ln807_fu_336_p2;
reg   [1:0] v403_fu_92;
reg   [3:0] indvar_flatten2215_fu_96;
wire   [3:0] select_ln806_1_fu_354_p3;
reg   [9:0] v402_fu_100;
reg   [13:0] indvar_flatten2230_fu_104;
wire   [13:0] select_ln805_1_fu_368_p3;
reg   [9:0] v401_fu_108;
wire   [9:0] select_ln803_2_fu_408_p3;
reg   [21:0] indvar_flatten2256_fu_112;
wire   [21:0] add_ln803_1_fu_207_p2;
reg   [21:0] ap_sig_allocacmp_indvar_flatten2256_load;
reg    v21_ce0_local;
reg    v13_EN_A_local;
wire   [31:0] v13_Addr_A_orig;
reg    v20_we1_local;
reg    v20_ce1_local;
wire   [0:0] icmp_ln806_fu_256_p2;
wire   [0:0] xor_ln803_fu_244_p2;
wire   [9:0] select_ln803_fu_236_p3;
wire   [0:0] and_ln803_1_fu_262_p2;
wire   [0:0] exitcond_flatten2217_not_fu_280_p2;
wire   [0:0] icmp_ln807_fu_250_p2;
wire   [0:0] and_ln803_fu_292_p2;
wire   [0:0] not_exitcond_flatten2217_mid22255_fu_286_p2;
wire   [9:0] add_ln805_fu_268_p2;
wire   [0:0] empty_14_fu_316_p2;
wire   [0:0] empty_15_fu_322_p2;
wire   [3:0] add_ln806_1_fu_348_p2;
wire   [13:0] add_ln805_1_fu_362_p2;
wire   [9:0] add_ln803_fu_402_p2;
wire   [1:0] v403_mid22222_fu_415_p3;
wire   [1:0] add_ln806_fu_422_p2;
wire   [18:0] tmp_s_fu_440_p3;
wire   [19:0] zext_ln804_fu_448_p1;
wire   [19:0] zext_ln809_fu_452_p1;
wire   [19:0] add_ln809_fu_455_p2;
wire   [18:0] trunc_ln809_fu_461_p1;
wire   [20:0] tmp_fu_465_p3;
wire   [20:0] zext_ln809_1_fu_473_p1;
wire   [20:0] sub_ln806_fu_477_p2;
wire   [20:0] zext_ln809_2_fu_483_p1;
wire   [21:0] tmp_1_fu_518_p3;
wire   [21:0] zext_ln809_3_fu_525_p1;
wire   [21:0] sub_ln807_fu_528_p2;
wire   [21:0] zext_ln809_4_fu_534_p1;
wire   [21:0] add_ln809_2_fu_537_p2;
wire   [12:0] tmp_2_fu_548_p4;
wire   [6:0] grp_fu_578_p1;
wire   [7:0] grp_fu_578_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_578_p10;
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
#0 v407_fu_84 = 8'd0;
#0 v404_fu_88 = 2'd0;
#0 v403_fu_92 = 2'd0;
#0 indvar_flatten2215_fu_96 = 4'd0;
#0 v402_fu_100 = 10'd0;
#0 indvar_flatten2230_fu_104 = 14'd0;
#0 v401_fu_108 = 10'd0;
#0 indvar_flatten2256_fu_112 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(v13_Dout_A),.din1(grp_fu_578_p1),.din2(grp_fu_578_p2),.ce(1'b1),.dout(grp_fu_578_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2215_fu_96 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln803_reg_644 == 1'd0))) begin
            indvar_flatten2215_fu_96 <= select_ln806_1_fu_354_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2230_fu_104 <= 14'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln803_reg_644 == 1'd0))) begin
            indvar_flatten2230_fu_104 <= select_ln805_1_fu_368_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln803_fu_201_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2256_fu_112 <= add_ln803_1_fu_207_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2256_fu_112 <= 22'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v401_fu_108 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v401_fu_108 <= select_ln803_2_fu_408_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v402_fu_100 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln803_reg_644 == 1'd0))) begin
            v402_fu_100 <= select_ln805_fu_304_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v403_fu_92 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v403_fu_92 <= select_ln806_fu_428_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v404_fu_88 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln803_reg_644 == 1'd0))) begin
            v404_fu_88 <= add_ln807_fu_336_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v407_fu_84 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v407_fu_84 <= grp_fu_578_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln809_1_reg_695 <= add_ln809_1_fu_487_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        icmp_ln805_1_reg_709 <= icmp_ln805_1_fu_503_p2;
        icmp_ln805_1_reg_709_pp0_iter3_reg <= icmp_ln805_1_reg_709;
        icmp_ln805_1_reg_709_pp0_iter4_reg <= icmp_ln805_1_reg_709_pp0_iter3_reg;
        icmp_ln805_1_reg_709_pp0_iter5_reg <= icmp_ln805_1_reg_709_pp0_iter4_reg;
        icmp_ln805_1_reg_709_pp0_iter6_reg <= icmp_ln805_1_reg_709_pp0_iter5_reg;
        icmp_ln805_reg_648_pp0_iter2_reg <= icmp_ln805_reg_648;
        icmp_ln805_reg_648_pp0_iter3_reg <= icmp_ln805_reg_648_pp0_iter2_reg;
        icmp_ln805_reg_648_pp0_iter4_reg <= icmp_ln805_reg_648_pp0_iter3_reg;
        icmp_ln805_reg_648_pp0_iter5_reg <= icmp_ln805_reg_648_pp0_iter4_reg;
        icmp_ln806_1_reg_705 <= icmp_ln806_1_fu_497_p2;
        icmp_ln806_1_reg_705_pp0_iter3_reg <= icmp_ln806_1_reg_705;
        icmp_ln806_1_reg_705_pp0_iter4_reg <= icmp_ln806_1_reg_705_pp0_iter3_reg;
        icmp_ln806_1_reg_705_pp0_iter5_reg <= icmp_ln806_1_reg_705_pp0_iter4_reg;
        icmp_ln806_1_reg_705_pp0_iter6_reg <= icmp_ln806_1_reg_705_pp0_iter5_reg;
        icmp_ln807_1_reg_681_pp0_iter2_reg <= icmp_ln807_1_reg_681;
        icmp_ln807_1_reg_681_pp0_iter3_reg <= icmp_ln807_1_reg_681_pp0_iter2_reg;
        icmp_ln807_1_reg_681_pp0_iter4_reg <= icmp_ln807_1_reg_681_pp0_iter3_reg;
        icmp_ln807_1_reg_681_pp0_iter5_reg <= icmp_ln807_1_reg_681_pp0_iter4_reg;
        icmp_ln807_1_reg_681_pp0_iter6_reg <= icmp_ln807_1_reg_681_pp0_iter5_reg;
        select_ln806_reg_685 <= select_ln806_fu_428_p3;
        trunc_ln806_reg_670_pp0_iter2_reg <= trunc_ln806_reg_670;
        trunc_ln809_1_reg_700 <= trunc_ln809_1_fu_493_p1;
        v20_addr_reg_690 <= zext_ln803_fu_435_p1;
        v20_addr_reg_690_pp0_iter3_reg <= v20_addr_reg_690;
        v20_addr_reg_690_pp0_iter4_reg <= v20_addr_reg_690_pp0_iter3_reg;
        v20_addr_reg_690_pp0_iter5_reg <= v20_addr_reg_690_pp0_iter4_reg;
        v20_addr_reg_690_pp0_iter6_reg <= v20_addr_reg_690_pp0_iter5_reg;
        v404_mid2_reg_675_pp0_iter2_reg <= v404_mid2_reg_675;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_654 <= empty_fu_274_p2;
        icmp_ln803_reg_644 <= icmp_ln803_fu_201_p2;
        icmp_ln805_reg_648 <= icmp_ln805_fu_230_p2;
        icmp_ln807_1_reg_681 <= icmp_ln807_1_fu_342_p2;
        icmp_ln807_mid22229_reg_659 <= icmp_ln807_mid22229_fu_298_p2;
        select_ln805_reg_664 <= select_ln805_fu_304_p3;
        trunc_ln806_reg_670 <= trunc_ln806_fu_312_p1;
        v404_mid2_reg_675 <= v404_mid2_fu_328_p3;
    end
end
always @ (*) begin
    if (((icmp_ln803_fu_201_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln803_reg_644 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten2256_load = 22'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2256_load = indvar_flatten2256_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v407_load = grp_fu_578_p3;
    end else begin
        ap_sig_allocacmp_v407_load = v407_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13_EN_A_local = 1'b1;
    end else begin
        v13_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln805_1_reg_709_pp0_iter6_reg == 1'd1) & (icmp_ln806_1_reg_705_pp0_iter6_reg == 1'd1) & (icmp_ln807_1_reg_681_pp0_iter6_reg == 1'd1))) begin
        v20_we1_local = 1'b1;
    end else begin
        v20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v21_ce0_local = 1'b1;
    end else begin
        v21_ce0_local = 1'b0;
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
assign add_ln803_1_fu_207_p2 = (ap_sig_allocacmp_indvar_flatten2256_load + 22'd1);
assign add_ln803_fu_402_p2 = (v401_fu_108 + 10'd1);
assign add_ln805_1_fu_362_p2 = (indvar_flatten2230_fu_104 + 14'd1);
assign add_ln805_fu_268_p2 = (select_ln803_fu_236_p3 + 10'd1);
assign add_ln806_1_fu_348_p2 = (indvar_flatten2215_fu_96 + 4'd1);
assign add_ln806_fu_422_p2 = (v403_mid22222_fu_415_p3 + 2'd1);
assign add_ln807_fu_336_p2 = (v404_mid2_fu_328_p3 + 2'd1);
assign add_ln809_1_fu_487_p2 = (sub_ln806_fu_477_p2 + zext_ln809_2_fu_483_p1);
assign add_ln809_2_fu_537_p2 = (sub_ln807_fu_528_p2 + zext_ln809_4_fu_534_p1);
assign add_ln809_fu_455_p2 = (zext_ln804_fu_448_p1 + zext_ln809_fu_452_p1);
assign and_ln803_1_fu_262_p2 = (xor_ln803_fu_244_p2 & icmp_ln806_fu_256_p2);
assign and_ln803_fu_292_p2 = (xor_ln803_fu_244_p2 & icmp_ln807_fu_250_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_14_fu_316_p2 = (icmp_ln807_mid22229_fu_298_p2 | and_ln803_1_fu_262_p2);
assign empty_15_fu_322_p2 = (icmp_ln805_fu_230_p2 | empty_14_fu_316_p2);
assign empty_fu_274_p2 = (icmp_ln805_fu_230_p2 | and_ln803_1_fu_262_p2);
assign exitcond_flatten2217_not_fu_280_p2 = (icmp_ln806_fu_256_p2 ^ 1'd1);
assign grp_fu_578_p1 = grp_fu_578_p10;
assign grp_fu_578_p10 = v21_q0;
assign grp_fu_578_p2 = ((icmp_ln805_reg_648_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v407_load);
assign icmp_ln803_fu_201_p2 = ((ap_sig_allocacmp_indvar_flatten2256_load == 22'd2359296) ? 1'b1 : 1'b0);
assign icmp_ln805_1_fu_503_p2 = ((select_ln805_reg_664 == 10'd511) ? 1'b1 : 1'b0);
assign icmp_ln805_fu_230_p2 = ((indvar_flatten2230_fu_104 == 14'd4608) ? 1'b1 : 1'b0);
assign icmp_ln806_1_fu_497_p2 = ((select_ln806_fu_428_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln806_fu_256_p2 = ((indvar_flatten2215_fu_96 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln807_1_fu_342_p2 = ((add_ln807_fu_336_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln807_fu_250_p2 = ((v404_fu_88 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln807_mid22229_fu_298_p2 = (not_exitcond_flatten2217_mid22255_fu_286_p2 & and_ln803_fu_292_p2);
assign not_exitcond_flatten2217_mid22255_fu_286_p2 = (icmp_ln805_fu_230_p2 | exitcond_flatten2217_not_fu_280_p2);
assign select_ln803_2_fu_408_p3 = ((icmp_ln805_reg_648[0:0] == 1'b1) ? add_ln803_fu_402_p2 : v401_fu_108);
assign select_ln803_fu_236_p3 = ((icmp_ln805_fu_230_p2[0:0] == 1'b1) ? 10'd0 : v402_fu_100);
assign select_ln805_1_fu_368_p3 = ((icmp_ln805_fu_230_p2[0:0] == 1'b1) ? 14'd1 : add_ln805_1_fu_362_p2);
assign select_ln805_fu_304_p3 = ((and_ln803_1_fu_262_p2[0:0] == 1'b1) ? add_ln805_fu_268_p2 : select_ln803_fu_236_p3);
assign select_ln806_1_fu_354_p3 = ((empty_fu_274_p2[0:0] == 1'b1) ? 4'd1 : add_ln806_1_fu_348_p2);
assign select_ln806_fu_428_p3 = ((icmp_ln807_mid22229_reg_659[0:0] == 1'b1) ? add_ln806_fu_422_p2 : v403_mid22222_fu_415_p3);
assign sub_ln806_fu_477_p2 = (tmp_fu_465_p3 - zext_ln809_1_fu_473_p1);
assign sub_ln807_fu_528_p2 = (tmp_1_fu_518_p3 - zext_ln809_3_fu_525_p1);
assign tmp_1_fu_518_p3 = {{trunc_ln809_1_reg_700}, {2'd0}};
assign tmp_2_fu_548_p4 = {{{trunc_ln806_reg_670_pp0_iter2_reg}, {select_ln806_reg_685}}, {v404_mid2_reg_675_pp0_iter2_reg}};
assign tmp_fu_465_p3 = {{trunc_ln809_fu_461_p1}, {2'd0}};
assign tmp_s_fu_440_p3 = {{select_ln803_2_fu_408_p3}, {9'd0}};
assign trunc_ln806_fu_312_p1 = select_ln805_fu_304_p3[8:0];
assign trunc_ln809_1_fu_493_p1 = add_ln809_1_fu_487_p2[19:0];
assign trunc_ln809_fu_461_p1 = add_ln809_fu_455_p2[18:0];
assign v13_Addr_A = v13_Addr_A_orig << 32'd0;
assign v13_Addr_A_orig = zext_ln809_5_fu_543_p1;
assign v13_Din_A = 8'd0;
assign v13_EN_A = v13_EN_A_local;
assign v13_WEN_A = 1'd0;
assign v20_address1 = v20_addr_reg_690_pp0_iter6_reg;
assign v20_ce1 = v20_ce1_local;
assign v20_d1 = grp_fu_578_p3;
assign v20_we1 = v20_we1_local;
assign v21_address0 = zext_ln808_1_fu_555_p1;
assign v21_ce0 = v21_ce0_local;
assign v403_mid22222_fu_415_p3 = ((empty_reg_654[0:0] == 1'b1) ? 2'd0 : v403_fu_92);
assign v404_mid2_fu_328_p3 = ((empty_15_fu_322_p2[0:0] == 1'b1) ? 2'd0 : v404_fu_88);
assign xor_ln803_fu_244_p2 = (icmp_ln805_fu_230_p2 ^ 1'd1);
assign zext_ln803_fu_435_p1 = select_ln803_2_fu_408_p3;
assign zext_ln804_fu_448_p1 = tmp_s_fu_440_p3;
assign zext_ln808_1_fu_555_p1 = tmp_2_fu_548_p4;
assign zext_ln809_1_fu_473_p1 = add_ln809_fu_455_p2;
assign zext_ln809_2_fu_483_p1 = select_ln806_fu_428_p3;
assign zext_ln809_3_fu_525_p1 = add_ln809_1_reg_695;
assign zext_ln809_4_fu_534_p1 = v404_mid2_reg_675_pp0_iter2_reg;
assign zext_ln809_5_fu_543_p1 = add_ln809_2_fu_537_p2;
assign zext_ln809_fu_452_p1 = select_ln805_reg_664;
endmodule 