module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 22'd1;
parameter    ap_ST_fsm_pp0_stage1 = 22'd2;
parameter    ap_ST_fsm_pp0_stage2 = 22'd4;
parameter    ap_ST_fsm_pp0_stage3 = 22'd8;
parameter    ap_ST_fsm_pp0_stage4 = 22'd16;
parameter    ap_ST_fsm_pp0_stage5 = 22'd32;
parameter    ap_ST_fsm_pp0_stage6 = 22'd64;
parameter    ap_ST_fsm_pp0_stage7 = 22'd128;
parameter    ap_ST_fsm_pp0_stage8 = 22'd256;
parameter    ap_ST_fsm_pp0_stage9 = 22'd512;
parameter    ap_ST_fsm_pp0_stage10 = 22'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 22'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 22'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 22'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 22'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 22'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 22'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 22'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 22'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 22'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 22'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 22'd2097152;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_subdone;
wire   [0:0] icmp_ln15_fu_789_p2;
reg    ap_condition_exit_pp0_iter0_stage21;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1685_reg_195;
reg   [63:0] reg_244;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] grp_fu_236_p2;
reg   [63:0] reg_248;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln11_1_fu_314_p2;
reg   [0:0] and_ln11_1_reg_890;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_flatten_mid234_fu_344_p2;
reg   [0:0] exitcond_flatten_mid234_reg_897;
wire   [0:0] icmp_ln22_mid211_fu_350_p2;
reg   [0:0] icmp_ln22_mid211_reg_903;
wire   [0:0] empty_fu_393_p2;
reg   [0:0] empty_reg_909;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] empty_11_fu_423_p2;
reg   [0:0] empty_11_reg_914;
wire   [11:0] zext_ln15_fu_457_p1;
reg   [11:0] zext_ln15_reg_920;
wire   [5:0] empty_12_fu_465_p1;
reg   [5:0] empty_12_reg_925;
wire   [5:0] add_ln21_fu_497_p2;
reg   [5:0] add_ln21_reg_931;
wire   [11:0] add_ln23_fu_503_p2;
reg   [11:0] add_ln23_reg_936;
reg   [8:0] tmp_2_reg_941;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [11:0] add_ln24_1_fu_607_p2;
reg   [11:0] add_ln24_1_reg_956;
wire   [1:0] tmp_6_fu_613_p4;
reg   [1:0] tmp_6_reg_961;
reg   [8:0] tmp_3_reg_971;
wire   [0:0] xor_ln22_fu_674_p2;
reg   [0:0] xor_ln22_reg_976;
wire   [0:0] icmp_ln18_fu_680_p2;
reg   [0:0] icmp_ln18_reg_981;
reg   [63:0] m1_load_reg_986;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] m2_load_reg_991;
reg   [63:0] m2_load_1_reg_996;
wire   [63:0] temp_x_fu_696_p1;
reg   [63:0] temp_x_reg_1001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_fu_700_p1;
wire   [63:0] bitcast_ln23_1_fu_704_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [11:0] prod_addr_reg_1016;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_240_p2;
reg   [63:0] mul_reg_1021;
wire   [63:0] bitcast_ln24_fu_712_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul_1_reg_1031;
reg   [11:0] prod_addr_1_reg_1036;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [0:0] icmp_ln17_fu_777_p2;
reg   [0:0] icmp_ln17_reg_1041;
wire   [0:0] icmp_ln16_fu_783_p2;
reg   [0:0] icmp_ln16_reg_1046;
reg   [0:0] icmp_ln15_reg_1051;
wire   [63:0] bitcast_ln24_2_fu_810_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_198_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_209_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_219_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_229_p4;
wire   [63:0] zext_ln21_fu_583_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln23_fu_597_p1;
wire   [63:0] zext_ln23_1_fu_632_p1;
wire   [63:0] zext_ln24_fu_708_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln24_1_fu_730_p1;
wire    ap_block_pp0_stage20;
reg   [16:0] indvar_flatten6873_fu_96;
wire   [16:0] add_ln15_1_fu_771_p2;
wire    ap_block_pp0_stage21;
reg   [6:0] jj74_fu_100;
wire   [6:0] jj_fu_379_p3;
wire    ap_block_pp0_stage1;
reg   [15:0] indvar_flatten3575_fu_104;
wire   [15:0] select_ln16_1_fu_763_p3;
reg   [6:0] kk76_fu_108;
wire   [6:0] kk_fu_406_p3;
reg   [12:0] indvar_flatten1277_fu_112;
wire   [12:0] select_ln17_1_fu_750_p3;
reg   [6:0] i78_fu_116;
wire   [6:0] i_fu_437_p3;
reg   [6:0] indvar_flatten79_fu_120;
wire   [6:0] select_ln18_1_fu_659_p3;
reg   [3:0] k80_fu_124;
wire   [3:0] k_fu_450_p3;
reg   [3:0] j81_fu_128;
wire   [3:0] j_fu_647_p2;
reg   [6:0] add_ln1586_fu_132;
wire   [6:0] add_ln15_fu_519_p2;
reg    m1_ce0_local;
reg    m2_ce1_local;
reg    m2_ce0_local;
reg    prod_ce0_local;
reg   [11:0] prod_address0_local;
reg    prod_we0_local;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] prod_d0_local;
wire   [63:0] bitcast_ln24_1_fu_717_p1;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln24_3_fu_815_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_236_p0;
reg   [63:0] grp_fu_236_p1;
wire    ap_block_pp0_stage11;
reg   [63:0] grp_fu_240_p0;
reg   [63:0] grp_fu_240_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [0:0] xor_ln11_fu_308_p2;
wire   [0:0] or_ln11_fu_302_p2;
wire   [0:0] exitcond_flatten14_not_fu_326_p2;
wire   [0:0] and_ln11_fu_338_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_332_p2;
wire   [0:0] icmp_ln22_mid230_fu_320_p2;
wire   [6:0] select_ln11_fu_371_p3;
wire   [6:0] add_ln16_fu_387_p2;
wire   [6:0] i_mid219_fu_398_p3;
wire   [0:0] empty_10_fu_419_p2;
wire   [6:0] add_ln17_fu_413_p2;
wire   [3:0] k_mid26_fu_429_p3;
wire   [3:0] add_ln18_fu_444_p2;
wire   [2:0] tmp_1_fu_477_p4;
wire   [2:0] trunc_ln20_fu_473_p1;
wire   [5:0] trunc_ln16_fu_461_p1;
wire   [5:0] zext_ln18_fu_469_p1;
wire   [11:0] shl_ln_fu_487_p4;
wire   [3:0] j_mid27_fu_556_p3;
wire   [11:0] add_ln21_1_fu_577_p3;
wire   [3:0] j_mid2_fu_563_p3;
wire   [11:0] zext_ln22_fu_588_p1;
wire   [11:0] add_ln23_1_fu_592_p2;
wire   [11:0] tmp_5_fu_570_p3;
wire   [11:0] add_ln24_fu_602_p2;
wire   [11:0] add_ln23_2_fu_623_p4;
wire   [6:0] add_ln18_1_fu_653_p2;
wire   [0:0] tmp_fu_666_p3;
wire   [11:0] add_ln24_2_fu_722_p4;
wire   [12:0] add_ln17_1_fu_744_p2;
wire   [15:0] add_ln16_1_fu_757_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [21:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage13_11001;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_886;
reg    ap_condition_890;
reg    ap_condition_897;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 22'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6873_fu_96 = 17'd0;
#0 jj74_fu_100 = 7'd0;
#0 indvar_flatten3575_fu_104 = 16'd0;
#0 kk76_fu_108 = 7'd0;
#0 indvar_flatten1277_fu_112 = 13'd0;
#0 i78_fu_116 = 7'd0;
#0 indvar_flatten79_fu_120 = 7'd0;
#0 k80_fu_124 = 4'd0;
#0 j81_fu_128 = 4'd0;
#0 add_ln1586_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_236_p0),.din1(grp_fu_236_p1),.ce(1'b1),.dout(grp_fu_236_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_240_p0),.din1(grp_fu_240_p1),.ce(1'b1),.dout(grp_fu_240_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage21),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage21_subdone) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            add_ln1586_fu_132 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_132 <= add_ln15_fu_519_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            i78_fu_116 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_116 <= i_fu_437_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_897)) begin
            icmp_ln1685_reg_195 <= icmp_ln16_reg_1046;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_195 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            indvar_flatten1277_fu_112 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            indvar_flatten1277_fu_112 <= select_ln17_1_fu_750_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            indvar_flatten3575_fu_104 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            indvar_flatten3575_fu_104 <= select_ln16_1_fu_763_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            indvar_flatten6873_fu_96 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            indvar_flatten6873_fu_96 <= add_ln15_1_fu_771_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            indvar_flatten79_fu_120 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten79_fu_120 <= select_ln18_1_fu_659_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            j81_fu_128 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            j81_fu_128 <= j_fu_647_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            jj74_fu_100 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_100 <= jj_fu_379_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            k80_fu_124 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_124 <= k_fu_450_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_886)) begin
            kk76_fu_108 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            kk76_fu_108 <= kk_fu_406_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_931 <= add_ln21_fu_497_p2;
        add_ln23_reg_936 <= add_ln23_fu_503_p2;
        empty_11_reg_914 <= empty_11_fu_423_p2;
        empty_12_reg_925 <= empty_12_fu_465_p1;
        empty_reg_909 <= empty_fu_393_p2;
        tmp_2_reg_941 <= {{add_ln23_fu_503_p2[11:3]}};
        zext_ln15_reg_920[6 : 0] <= zext_ln15_fu_457_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln24_1_reg_956 <= add_ln24_1_fu_607_p2;
        tmp_3_reg_971 <= {{add_ln24_fu_602_p2[11:3]}};
        tmp_6_reg_961 <= {{j_mid2_fu_563_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_1_reg_890 <= and_ln11_1_fu_314_p2;
        exitcond_flatten_mid234_reg_897 <= exitcond_flatten_mid234_fu_344_p2;
        icmp_ln22_mid211_reg_903 <= icmp_ln22_mid211_fu_350_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        icmp_ln15_reg_1051 <= icmp_ln15_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        icmp_ln16_reg_1046 <= icmp_ln16_fu_783_p2;
        icmp_ln17_reg_1041 <= icmp_ln17_fu_777_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln18_reg_981 <= icmp_ln18_fu_680_p2;
        xor_ln22_reg_976 <= xor_ln22_fu_674_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m1_load_reg_986 <= m1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_load_1_reg_996 <= m2_q0;
        m2_load_reg_991 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_1_reg_1031 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_reg_1021 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_addr_1_reg_1036[11 : 1] <= zext_ln24_1_fu_730_p1[11 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_addr_reg_1016 <= zext_ln24_fu_708_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_244 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_248 <= grp_fu_236_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_x_reg_1001 <= temp_x_fu_696_p1;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_789_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage21_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_condition_exit_pp0_iter0_stage21 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage21 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1051 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_890)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_198_p4 = icmp_ln16_reg_1046;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_198_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_198_p4 = icmp_ln16_reg_1046;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_198_p4 = icmp_ln16_reg_1046;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_890)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_209_p4 = icmp_ln17_reg_1041;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_209_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_209_p4 = icmp_ln17_reg_1041;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_209_p4 = icmp_ln17_reg_1041;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_890)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_219_p4 = icmp_ln18_reg_981;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_219_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_219_p4 = icmp_ln18_reg_981;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_219_p4 = icmp_ln18_reg_981;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_890)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_229_p4 = xor_ln22_reg_976;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_229_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_229_p4 = xor_ln22_reg_976;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_229_p4 = xor_ln22_reg_976;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_236_p0 = bitcast_ln24_2_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_236_p0 = bitcast_ln24_fu_712_p1;
    end else begin
        grp_fu_236_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_236_p1 = mul_1_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_236_p1 = mul_reg_1021;
    end else begin
        grp_fu_236_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_240_p0 = temp_x_reg_1001;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_240_p0 = temp_x_fu_696_p1;
        end else begin
            grp_fu_240_p0 = 'bx;
        end
    end else begin
        grp_fu_240_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_240_p1 = bitcast_ln23_1_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_240_p1 = bitcast_ln23_fu_700_p1;
        end else begin
            grp_fu_240_p1 = 'bx;
        end
    end else begin
        grp_fu_240_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_address0_local = prod_addr_1_reg_1036;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_address0_local = zext_ln24_1_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_address0_local = prod_addr_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_address0_local = zext_ln24_fu_708_p1;
    end else begin
        prod_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_d0_local = bitcast_ln24_3_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_d0_local = bitcast_ln24_1_fu_717_p1;
    end else begin
        prod_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_771_p2 = (indvar_flatten6873_fu_96 + 17'd1);
assign add_ln15_fu_519_p2 = (jj_fu_379_p3 + 7'd8);
assign add_ln16_1_fu_757_p2 = (indvar_flatten3575_fu_104 + 16'd1);
assign add_ln16_fu_387_p2 = (select_ln11_fu_371_p3 + 7'd8);
assign add_ln17_1_fu_744_p2 = (indvar_flatten1277_fu_112 + 13'd1);
assign add_ln17_fu_413_p2 = (i_mid219_fu_398_p3 + 7'd1);
assign add_ln18_1_fu_653_p2 = (indvar_flatten79_fu_120 + 7'd1);
assign add_ln18_fu_444_p2 = (k_mid26_fu_429_p3 + 4'd1);
assign add_ln21_1_fu_577_p3 = {{empty_12_reg_925}, {add_ln21_reg_931}};
assign add_ln21_fu_497_p2 = (trunc_ln16_fu_461_p1 + zext_ln18_fu_469_p1);
assign add_ln23_1_fu_592_p2 = (zext_ln22_fu_588_p1 + add_ln23_reg_936);
assign add_ln23_2_fu_623_p4 = {{{tmp_2_reg_941}, {tmp_6_fu_613_p4}}, {1'd1}};
assign add_ln23_fu_503_p2 = (shl_ln_fu_487_p4 + zext_ln15_fu_457_p1);
assign add_ln24_1_fu_607_p2 = (zext_ln22_fu_588_p1 + add_ln24_fu_602_p2);
assign add_ln24_2_fu_722_p4 = {{{tmp_3_reg_971}, {tmp_6_reg_961}}, {1'd1}};
assign add_ln24_fu_602_p2 = (tmp_5_fu_570_p3 + zext_ln15_reg_920);
assign and_ln11_1_fu_314_p2 = (xor_ln11_fu_308_p2 & ap_phi_mux_icmp_ln1784_phi_fu_209_p4);
assign and_ln11_fu_338_p2 = (xor_ln11_fu_308_p2 & ap_phi_mux_icmp_ln1883_phi_fu_219_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_886 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_890 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1051 == 1'd0));
end
always @ (*) begin
    ap_condition_897 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1051 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage21;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_704_p1 = m2_load_1_reg_996;
assign bitcast_ln23_fu_700_p1 = m2_load_reg_991;
assign bitcast_ln24_1_fu_717_p1 = reg_248;
assign bitcast_ln24_2_fu_810_p1 = reg_244;
assign bitcast_ln24_3_fu_815_p1 = reg_248;
assign bitcast_ln24_fu_712_p1 = reg_244;
assign empty_10_fu_419_p2 = (exitcond_flatten_mid234_reg_897 | and_ln11_1_reg_890);
assign empty_11_fu_423_p2 = (icmp_ln1685_reg_195 | empty_10_fu_419_p2);
assign empty_12_fu_465_p1 = i_fu_437_p3[5:0];
assign empty_fu_393_p2 = (icmp_ln1685_reg_195 | and_ln11_1_reg_890);
assign exitcond_flatten14_not_fu_326_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_209_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_344_p2 = (not_exitcond_flatten14_mid267_fu_332_p2 & and_ln11_fu_338_p2);
assign i_fu_437_p3 = ((exitcond_flatten_mid234_reg_897[0:0] == 1'b1) ? add_ln17_fu_413_p2 : i_mid219_fu_398_p3);
assign i_mid219_fu_398_p3 = ((empty_fu_393_p2[0:0] == 1'b1) ? 7'd0 : i78_fu_116);
assign icmp_ln15_fu_789_p2 = ((indvar_flatten6873_fu_96 == 17'd131071) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_783_p2 = ((select_ln16_1_fu_763_p3 == 16'd16384) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_777_p2 = ((select_ln17_1_fu_750_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_680_p2 = ((select_ln18_1_fu_659_p3 == 7'd32) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_350_p2 = (icmp_ln22_mid230_fu_320_p2 | exitcond_flatten_mid234_fu_344_p2);
assign icmp_ln22_mid230_fu_320_p2 = (or_ln11_fu_302_p2 | and_ln11_1_fu_314_p2);
assign j_fu_647_p2 = (j_mid2_fu_563_p3 + 4'd2);
assign j_mid27_fu_556_p3 = ((empty_11_reg_914[0:0] == 1'b1) ? 4'd0 : j81_fu_128);
assign j_mid2_fu_563_p3 = ((icmp_ln22_mid211_reg_903[0:0] == 1'b1) ? j_mid27_fu_556_p3 : 4'd0);
assign jj_fu_379_p3 = ((icmp_ln1685_reg_195[0:0] == 1'b1) ? add_ln1586_fu_132 : jj74_fu_100);
assign k_fu_450_p3 = ((icmp_ln22_mid211_reg_903[0:0] == 1'b1) ? k_mid26_fu_429_p3 : add_ln18_fu_444_p2);
assign k_mid26_fu_429_p3 = ((empty_11_fu_423_p2[0:0] == 1'b1) ? 4'd0 : k80_fu_124);
assign kk_fu_406_p3 = ((and_ln11_1_reg_890[0:0] == 1'b1) ? add_ln16_fu_387_p2 : select_ln11_fu_371_p3);
assign m1_address0 = zext_ln21_fu_583_p1;
assign m1_ce0 = m1_ce0_local;
assign m2_address0 = zext_ln23_1_fu_632_p1;
assign m2_address1 = zext_ln23_fu_597_p1;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign not_exitcond_flatten14_mid267_fu_332_p2 = (exitcond_flatten14_not_fu_326_p2 | ap_phi_mux_icmp_ln1685_phi_fu_198_p4);
assign or_ln11_fu_302_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_229_p4 | ap_phi_mux_icmp_ln1685_phi_fu_198_p4);
assign prod_address0 = prod_address0_local;
assign prod_ce0 = prod_ce0_local;
assign prod_d0 = prod_d0_local;
assign prod_we0 = prod_we0_local;
assign select_ln11_fu_371_p3 = ((icmp_ln1685_reg_195[0:0] == 1'b1) ? 7'd0 : kk76_fu_108);
assign select_ln16_1_fu_763_p3 = ((icmp_ln1685_reg_195[0:0] == 1'b1) ? 16'd1 : add_ln16_1_fu_757_p2);
assign select_ln17_1_fu_750_p3 = ((empty_reg_909[0:0] == 1'b1) ? 13'd1 : add_ln17_1_fu_744_p2);
assign select_ln18_1_fu_659_p3 = ((empty_11_reg_914[0:0] == 1'b1) ? 7'd1 : add_ln18_1_fu_653_p2);
assign shl_ln_fu_487_p4 = {{{tmp_1_fu_477_p4}, {trunc_ln20_fu_473_p1}}, {6'd0}};
assign temp_x_fu_696_p1 = m1_load_reg_986;
assign tmp_1_fu_477_p4 = {{kk_fu_406_p3[5:3]}};
assign tmp_5_fu_570_p3 = {{empty_12_reg_925}, {6'd0}};
assign tmp_6_fu_613_p4 = {{j_mid2_fu_563_p3[2:1]}};
assign tmp_fu_666_p3 = j_fu_647_p2[32'd3];
assign trunc_ln16_fu_461_p1 = kk_fu_406_p3[5:0];
assign trunc_ln20_fu_473_p1 = k_fu_450_p3[2:0];
assign xor_ln11_fu_308_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_198_p4 ^ 1'd1);
assign xor_ln22_fu_674_p2 = (tmp_fu_666_p3 ^ 1'd1);
assign zext_ln15_fu_457_p1 = jj_fu_379_p3;
assign zext_ln18_fu_469_p1 = k_fu_450_p3;
assign zext_ln21_fu_583_p1 = add_ln21_1_fu_577_p3;
assign zext_ln22_fu_588_p1 = j_mid2_fu_563_p3;
assign zext_ln23_1_fu_632_p1 = add_ln23_2_fu_623_p4;
assign zext_ln23_fu_597_p1 = add_ln23_1_fu_592_p2;
assign zext_ln24_1_fu_730_p1 = add_ln24_2_fu_722_p4;
assign zext_ln24_fu_708_p1 = add_ln24_1_reg_956;
always @ (posedge ap_clk) begin
    zext_ln15_reg_920[11:7] <= 5'b00000;
    prod_addr_1_reg_1036[0] <= 1'b1;
end
endmodule 