
module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_39_reload,B_37_reload,C_42_reload,D_39_reload,E_37_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,C_34_out,C_34_out_ap_vld,temp_5_out,temp_5_out_ap_vld,C_35_out,C_35_out_ap_vld,temp_6_out,temp_6_out_ap_vld,C_36_out,C_36_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 14'd1;
parameter    ap_ST_fsm_pp0_stage1 = 14'd2;
parameter    ap_ST_fsm_pp0_stage2 = 14'd4;
parameter    ap_ST_fsm_pp0_stage3 = 14'd8;
parameter    ap_ST_fsm_pp0_stage4 = 14'd16;
parameter    ap_ST_fsm_pp0_stage5 = 14'd32;
parameter    ap_ST_fsm_pp0_stage6 = 14'd64;
parameter    ap_ST_fsm_pp0_stage7 = 14'd128;
parameter    ap_ST_fsm_pp0_stage8 = 14'd256;
parameter    ap_ST_fsm_pp0_stage9 = 14'd512;
parameter    ap_ST_fsm_pp0_stage10 = 14'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 14'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 14'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_39_reload;
input  [31:0] B_37_reload;
input  [31:0] C_42_reload;
input  [31:0] D_39_reload;
input  [31:0] E_37_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [31:0] C_34_out;
output   C_34_out_ap_vld;
output  [31:0] temp_5_out;
output   temp_5_out_ap_vld;
output  [31:0] C_35_out;
output   C_35_out_ap_vld;
output  [31:0] temp_6_out;
output   temp_6_out_ap_vld;
output  [31:0] C_36_out;
output   C_36_out_ap_vld;
reg ap_idle;
reg C_34_out_ap_vld;
reg temp_5_out_ap_vld;
reg C_35_out_ap_vld;
reg temp_6_out_ap_vld;
reg C_36_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln128_reg_1105;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [31:0] reg_257;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] i_1_reg_1040;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] lshr_ln100_3_fu_294_p4;
reg   [5:0] lshr_ln100_3_reg_1046;
reg   [31:0] A_reg_1072;
wire   [31:0] add_ln130_2_fu_368_p2;
reg   [31:0] add_ln130_2_reg_1077;
reg   [31:0] W_1_load_reg_1082;
wire   [31:0] C_4_fu_388_p3;
reg   [31:0] C_4_reg_1087;
reg   [31:0] W_load_1_reg_1095;
reg   [31:0] W_1_load_1_reg_1100;
wire   [0:0] icmp_ln128_fu_401_p2;
reg   [31:0] D_reg_1129;
reg   [31:0] C_reg_1134;
wire   [31:0] C_3_fu_475_p3;
reg   [31:0] C_3_reg_1140;
wire   [26:0] trunc_ln130_2_fu_483_p1;
reg   [26:0] trunc_ln130_2_reg_1146;
reg   [4:0] lshr_ln130_2_reg_1151;
wire   [31:0] xor_ln130_5_fu_502_p2;
reg   [31:0] xor_ln130_5_reg_1156;
wire   [1:0] trunc_ln130_5_fu_508_p1;
reg   [1:0] trunc_ln130_5_reg_1161;
reg   [29:0] lshr_ln130_5_reg_1166;
reg   [31:0] W_1_load_2_reg_1171;
reg   [31:0] W_load_3_reg_1176;
reg   [31:0] W_1_load_3_reg_1181;
wire   [31:0] add_ln130_6_fu_534_p2;
reg   [31:0] add_ln130_6_reg_1186;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] temp_1_fu_553_p2;
reg   [31:0] temp_1_reg_1191;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln130_4_fu_558_p1;
reg   [26:0] trunc_ln130_4_reg_1196;
reg   [4:0] lshr_ln130_4_reg_1201;
wire   [1:0] trunc_ln130_7_fu_572_p1;
reg   [1:0] trunc_ln130_7_reg_1206;
reg   [29:0] lshr_ln130_7_reg_1211;
wire   [31:0] add_ln130_10_fu_598_p2;
reg   [31:0] add_ln130_10_reg_1216;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_5_fu_603_p3;
reg   [31:0] C_5_reg_1221;
wire   [31:0] xor_ln130_7_fu_613_p2;
reg   [31:0] xor_ln130_7_reg_1228;
wire   [31:0] temp_2_fu_623_p2;
reg   [31:0] temp_2_reg_1233;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln130_6_fu_628_p1;
reg   [26:0] trunc_ln130_6_reg_1241;
reg   [4:0] lshr_ln130_6_reg_1246;
wire   [31:0] add_ln130_14_fu_654_p2;
reg   [31:0] add_ln130_14_reg_1251;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] temp_3_fu_663_p2;
reg   [31:0] temp_3_reg_1256;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_6_fu_669_p3;
reg   [31:0] C_6_reg_1265;
wire   [31:0] temp_4_fu_722_p2;
reg   [31:0] temp_4_reg_1272;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln130_10_fu_728_p1;
reg   [26:0] trunc_ln130_10_reg_1277;
reg   [4:0] lshr_ln130_s_reg_1282;
wire   [1:0] trunc_ln130_13_fu_742_p1;
reg   [1:0] trunc_ln130_13_reg_1287;
reg   [29:0] lshr_ln130_12_reg_1292;
wire   [31:0] add_ln130_22_fu_778_p2;
reg   [31:0] add_ln130_22_reg_1297;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_7_fu_795_p3;
reg   [31:0] C_7_reg_1302;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_5_fu_818_p2;
reg   [31:0] temp_5_reg_1308;
wire   [26:0] trunc_ln130_12_fu_823_p1;
reg   [26:0] trunc_ln130_12_reg_1313;
reg   [4:0] lshr_ln130_11_reg_1318;
wire   [31:0] xor_ln130_13_fu_888_p2;
reg   [31:0] xor_ln130_13_reg_1323;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] add_ln130_26_fu_906_p2;
reg   [31:0] add_ln130_26_reg_1328;
wire   [31:0] xor_ln130_15_fu_922_p2;
reg   [31:0] xor_ln130_15_reg_1333;
wire   [31:0] add_ln130_28_fu_928_p2;
reg   [31:0] add_ln130_28_reg_1338;
wire   [31:0] add_ln130_29_fu_973_p2;
reg   [31:0] add_ln130_29_reg_1343;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_304_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_328_p1;
wire   [63:0] zext_ln100_2_fu_412_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_3_fu_423_p1;
reg   [31:0] E_fu_86;
wire   [31:0] C_8_fu_876_p3;
wire    ap_loop_init;
reg   [31:0] B_fu_90;
wire   [31:0] temp_6_fu_946_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_1_fu_94;
wire   [31:0] C_9_fu_911_p3;
reg   [31:0] B_1_fu_98;
wire   [31:0] temp_7_fu_988_p2;
reg   [31:0] E_2_fu_102;
wire   [31:0] C_2_fu_851_p3;
reg   [6:0] i_fu_106;
wire   [6:0] add_ln128_1_fu_756_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
wire   [4:0] tmp_s_fu_310_p4;
wire   [5:0] or_ln100_7_fu_320_p3;
wire   [26:0] trunc_ln130_fu_340_p1;
wire   [4:0] lshr_ln6_fu_344_p4;
wire   [31:0] or_ln5_fu_354_p3;
wire   [31:0] add_ln130_1_fu_362_p2;
wire   [1:0] trunc_ln130_3_fu_374_p1;
wire   [29:0] lshr_ln130_3_fu_378_p4;
wire   [6:0] add_ln128_fu_396_p2;
wire   [5:0] add_ln100_fu_407_p2;
wire   [5:0] add_ln100_1_fu_418_p2;
wire   [31:0] xor_ln130_fu_438_p2;
wire   [31:0] xor_ln130_1_fu_444_p2;
wire   [31:0] add_ln130_fu_450_p2;
wire   [1:0] trunc_ln130_1_fu_461_p1;
wire   [29:0] lshr_ln130_1_fu_465_p4;
wire   [31:0] temp_fu_456_p2;
wire   [31:0] xor_ln130_4_fu_497_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln130_2_fu_522_p3;
wire   [31:0] add_ln130_5_fu_528_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln130_2_fu_539_p2;
wire   [31:0] xor_ln130_3_fu_543_p2;
wire   [31:0] add_ln130_4_fu_548_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln130_4_fu_586_p3;
wire   [31:0] add_ln130_9_fu_592_p2;
wire   [31:0] xor_ln130_6_fu_609_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln130_8_fu_619_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln130_6_fu_642_p3;
wire   [31:0] add_ln130_13_fu_648_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln130_12_fu_659_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln130_8_fu_688_p2;
wire   [26:0] trunc_ln130_8_fu_676_p1;
wire   [4:0] lshr_ln130_8_fu_679_p4;
wire   [31:0] add_ln130_17_fu_705_p2;
wire   [31:0] xor_ln130_9_fu_692_p2;
wire   [31:0] or_ln130_8_fu_697_p3;
wire   [31:0] add_ln130_16_fu_716_p2;
wire   [31:0] add_ln130_18_fu_710_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln130_s_fu_766_p3;
wire   [31:0] add_ln130_21_fu_772_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln130_9_fu_783_p1;
wire   [29:0] lshr_ln130_9_fu_786_p4;
wire   [31:0] xor_ln130_10_fu_803_p2;
wire   [31:0] xor_ln130_11_fu_807_p2;
wire   [31:0] add_ln130_20_fu_813_p2;
wire   [1:0] trunc_ln130_15_fu_837_p1;
wire   [29:0] lshr_ln130_14_fu_841_p4;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln130_11_fu_864_p1;
wire   [29:0] lshr_ln130_10_fu_867_p4;
wire   [31:0] xor_ln130_12_fu_884_p2;
wire   [31:0] or_ln130_1_fu_894_p3;
wire   [31:0] add_ln130_25_fu_900_p2;
wire   [31:0] xor_ln130_14_fu_917_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] add_ln130_24_fu_942_p2;
wire   [26:0] trunc_ln130_14_fu_951_p1;
wire   [4:0] lshr_ln130_13_fu_955_p4;
wire   [31:0] or_ln130_3_fu_965_p3;
wire   [31:0] add_ln130_30_fu_984_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_86 = 32'd0;
#0 B_fu_90 = 32'd0;
#0 E_1_fu_94 = 32'd0;
#0 B_1_fu_98 = 32'd0;
#0 E_2_fu_102 = 32'd0;
#0 i_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_98 <= A_39_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_98 <= temp_7_fu_988_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_90 <= B_37_reload;
    end else if (((icmp_ln128_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        B_fu_90 <= temp_6_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_94 <= D_39_reload;
    end else if (((icmp_ln128_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_1_fu_94 <= C_9_fu_911_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_102 <= C_42_reload;
    end else if (((icmp_ln128_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        E_2_fu_102 <= C_2_fu_851_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_86 <= E_37_reload;
    end else if (((icmp_ln128_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_86 <= C_8_fu_876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_106 <= 7'd60;
    end else if (((icmp_ln128_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_fu_106 <= add_ln128_1_fu_756_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1072 <= B_1_fu_98;
        add_ln130_2_reg_1077 <= add_ln130_2_fu_368_p2;
        icmp_ln128_reg_1105 <= icmp_ln128_fu_401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_3_reg_1140 <= C_3_fu_475_p3;
        C_reg_1134 <= E_2_fu_102;
        D_reg_1129 <= E_1_fu_94;
        lshr_ln130_2_reg_1151 <= {{temp_fu_456_p2[31:27]}};
        lshr_ln130_5_reg_1166 <= {{temp_fu_456_p2[31:2]}};
        trunc_ln130_2_reg_1146 <= trunc_ln130_2_fu_483_p1;
        trunc_ln130_5_reg_1161 <= trunc_ln130_5_fu_508_p1;
        xor_ln130_5_reg_1156 <= xor_ln130_5_fu_502_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_4_reg_1087 <= C_4_fu_388_p3;
        W_1_load_1_reg_1100 <= W_1_q0;
        W_1_load_reg_1082 <= W_1_q1;
        W_load_1_reg_1095 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_5_reg_1221 <= C_5_fu_603_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_6_reg_1265 <= C_6_fu_669_p3;
        temp_3_reg_1256 <= temp_3_fu_663_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_7_reg_1302 <= C_7_fu_795_p3;
        lshr_ln130_11_reg_1318 <= {{temp_5_fu_818_p2[31:27]}};
        temp_5_reg_1308 <= temp_5_fu_818_p2;
        trunc_ln130_12_reg_1313 <= trunc_ln130_12_fu_823_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_2_reg_1171 <= W_1_q1;
        W_1_load_3_reg_1181 <= W_1_q0;
        W_load_3_reg_1176 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln130_10_reg_1216 <= add_ln130_10_fu_598_p2;
        xor_ln130_7_reg_1228 <= xor_ln130_7_fu_613_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln130_14_reg_1251 <= add_ln130_14_fu_654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln130_22_reg_1297 <= add_ln130_22_fu_778_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln130_26_reg_1328 <= add_ln130_26_fu_906_p2;
        add_ln130_28_reg_1338 <= add_ln130_28_fu_928_p2;
        xor_ln130_13_reg_1323 <= xor_ln130_13_fu_888_p2;
        xor_ln130_15_reg_1333 <= xor_ln130_15_fu_922_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln130_29_reg_1343 <= add_ln130_29_fu_973_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln130_6_reg_1186 <= add_ln130_6_fu_534_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_1040 <= ap_sig_allocacmp_i_1;
        lshr_ln100_3_reg_1046 <= {{ap_sig_allocacmp_i_1[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln130_12_reg_1292 <= {{temp_4_fu_722_p2[31:2]}};
        lshr_ln130_s_reg_1282 <= {{temp_4_fu_722_p2[31:27]}};
        temp_4_reg_1272 <= temp_4_fu_722_p2;
        trunc_ln130_10_reg_1277 <= trunc_ln130_10_fu_728_p1;
        trunc_ln130_13_reg_1287 <= trunc_ln130_13_fu_742_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_4_reg_1201 <= {{temp_1_fu_553_p2[31:27]}};
        lshr_ln130_7_reg_1211 <= {{temp_1_fu_553_p2[31:2]}};
        temp_1_reg_1191 <= temp_1_fu_553_p2;
        trunc_ln130_4_reg_1196 <= trunc_ln130_4_fu_558_p1;
        trunc_ln130_7_reg_1206 <= trunc_ln130_7_fu_572_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln130_6_reg_1246 <= {{temp_2_fu_623_p2[31:27]}};
        trunc_ln130_6_reg_1241 <= trunc_ln130_6_fu_628_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_257 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_2_reg_1233 <= temp_2_fu_623_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_34_out_ap_vld = 1'b1;
    end else begin
        C_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_35_out_ap_vld = 1'b1;
    end else begin
        C_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_36_out_ap_vld = 1'b1;
    end else begin
        C_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address0_local = zext_ln100_3_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address0_local = zext_ln100_1_fu_328_p1;
        end else begin
            W_1_address0_local = 'bx;
        end
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address1_local = zext_ln100_2_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln100_fu_304_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address0_local = zext_ln100_3_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address0_local = zext_ln100_1_fu_328_p1;
        end else begin
            W_address0_local = 'bx;
        end
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address1_local = zext_ln100_2_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln100_fu_304_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_106;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_5_out_ap_vld = 1'b1;
    end else begin
        temp_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_6_out_ap_vld = 1'b1;
    end else begin
        temp_6_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_2_fu_851_p3 = {{trunc_ln130_15_fu_837_p1}, {lshr_ln130_14_fu_841_p4}};
assign C_34_out = C_4_reg_1087;
assign C_35_out = C_5_reg_1221;
assign C_36_out = {{trunc_ln130_7_reg_1206}, {lshr_ln130_7_reg_1211}};
assign C_3_fu_475_p3 = {{trunc_ln130_1_fu_461_p1}, {lshr_ln130_1_fu_465_p4}};
assign C_4_fu_388_p3 = {{trunc_ln130_3_fu_374_p1}, {lshr_ln130_3_fu_378_p4}};
assign C_5_fu_603_p3 = {{trunc_ln130_5_reg_1161}, {lshr_ln130_5_reg_1166}};
assign C_6_fu_669_p3 = {{trunc_ln130_7_reg_1206}, {lshr_ln130_7_reg_1211}};
assign C_7_fu_795_p3 = {{trunc_ln130_9_fu_783_p1}, {lshr_ln130_9_fu_786_p4}};
assign C_8_fu_876_p3 = {{trunc_ln130_11_fu_864_p1}, {lshr_ln130_10_fu_867_p4}};
assign C_9_fu_911_p3 = {{trunc_ln130_13_reg_1287}, {lshr_ln130_12_reg_1292}};
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln100_1_fu_418_p2 = (lshr_ln100_3_reg_1046 + 6'd3);
assign add_ln100_fu_407_p2 = (lshr_ln100_3_reg_1046 + 6'd2);
assign add_ln128_1_fu_756_p2 = (i_1_reg_1040 + 7'd8);
assign add_ln128_fu_396_p2 = (i_1_reg_1040 + 7'd4);
assign add_ln130_10_fu_598_p2 = (add_ln130_9_fu_592_p2 + C_reg_1134);
assign add_ln130_12_fu_659_p2 = (W_1_load_1_reg_1100 + xor_ln130_7_reg_1228);
assign add_ln130_13_fu_648_p2 = ($signed(or_ln130_6_fu_642_p3) + $signed(32'd3395469782));
assign add_ln130_14_fu_654_p2 = (add_ln130_13_fu_648_p2 + C_3_reg_1140);
assign add_ln130_16_fu_716_p2 = (or_ln130_8_fu_697_p3 + reg_257);
assign add_ln130_17_fu_705_p2 = ($signed(C_4_reg_1087) + $signed(32'd3395469782));
assign add_ln130_18_fu_710_p2 = (add_ln130_17_fu_705_p2 + xor_ln130_9_fu_692_p2);
assign add_ln130_1_fu_362_p2 = ($signed(or_ln5_fu_354_p3) + $signed(32'd3395469782));
assign add_ln130_20_fu_813_p2 = (W_1_load_2_reg_1171 + xor_ln130_11_fu_807_p2);
assign add_ln130_21_fu_772_p2 = ($signed(or_ln130_s_fu_766_p3) + $signed(32'd3395469782));
assign add_ln130_22_fu_778_p2 = (add_ln130_21_fu_772_p2 + C_5_reg_1221);
assign add_ln130_24_fu_942_p2 = (W_load_3_reg_1176 + xor_ln130_13_reg_1323);
assign add_ln130_25_fu_900_p2 = ($signed(or_ln130_1_fu_894_p3) + $signed(32'd3395469782));
assign add_ln130_26_fu_906_p2 = (add_ln130_25_fu_900_p2 + C_6_reg_1265);
assign add_ln130_28_fu_928_p2 = (W_1_load_3_reg_1181 + C_7_reg_1302);
assign add_ln130_29_fu_973_p2 = ($signed(or_ln130_3_fu_965_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_368_p2 = (add_ln130_1_fu_362_p2 + E_fu_86);
assign add_ln130_30_fu_984_p2 = (add_ln130_28_reg_1338 + xor_ln130_15_reg_1333);
assign add_ln130_4_fu_548_p2 = (W_1_load_reg_1082 + xor_ln130_3_fu_543_p2);
assign add_ln130_5_fu_528_p2 = ($signed(or_ln130_2_fu_522_p3) + $signed(32'd3395469782));
assign add_ln130_6_fu_534_p2 = (add_ln130_5_fu_528_p2 + D_reg_1129);
assign add_ln130_8_fu_619_p2 = (W_load_1_reg_1095 + xor_ln130_5_reg_1156);
assign add_ln130_9_fu_592_p2 = ($signed(or_ln130_4_fu_586_p3) + $signed(32'd3395469782));
assign add_ln130_fu_450_p2 = (reg_257 + xor_ln130_1_fu_444_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_401_p2 = ((add_ln128_fu_396_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_3_fu_294_p4 = {{ap_sig_allocacmp_i_1[6:1]}};
assign lshr_ln130_10_fu_867_p4 = {{temp_3_reg_1256[31:2]}};
assign lshr_ln130_13_fu_955_p4 = {{temp_6_fu_946_p2[31:27]}};
assign lshr_ln130_14_fu_841_p4 = {{temp_5_fu_818_p2[31:2]}};
assign lshr_ln130_1_fu_465_p4 = {{B_fu_90[31:2]}};
assign lshr_ln130_3_fu_378_p4 = {{B_1_fu_98[31:2]}};
assign lshr_ln130_8_fu_679_p4 = {{temp_3_reg_1256[31:27]}};
assign lshr_ln130_9_fu_786_p4 = {{temp_2_reg_1233[31:2]}};
assign lshr_ln6_fu_344_p4 = {{B_1_fu_98[31:27]}};
assign or_ln100_7_fu_320_p3 = {{tmp_s_fu_310_p4}, {1'd1}};
assign or_ln130_1_fu_894_p3 = {{trunc_ln130_12_reg_1313}, {lshr_ln130_11_reg_1318}};
assign or_ln130_2_fu_522_p3 = {{trunc_ln130_2_reg_1146}, {lshr_ln130_2_reg_1151}};
assign or_ln130_3_fu_965_p3 = {{trunc_ln130_14_fu_951_p1}, {lshr_ln130_13_fu_955_p4}};
assign or_ln130_4_fu_586_p3 = {{trunc_ln130_4_reg_1196}, {lshr_ln130_4_reg_1201}};
assign or_ln130_6_fu_642_p3 = {{trunc_ln130_6_reg_1241}, {lshr_ln130_6_reg_1246}};
assign or_ln130_8_fu_697_p3 = {{trunc_ln130_8_fu_676_p1}, {lshr_ln130_8_fu_679_p4}};
assign or_ln130_s_fu_766_p3 = {{trunc_ln130_10_reg_1277}, {lshr_ln130_s_reg_1282}};
assign or_ln5_fu_354_p3 = {{trunc_ln130_fu_340_p1}, {lshr_ln6_fu_344_p4}};
assign temp_1_fu_553_p2 = (add_ln130_6_reg_1186 + add_ln130_4_fu_548_p2);
assign temp_2_fu_623_p2 = (add_ln130_10_reg_1216 + add_ln130_8_fu_619_p2);
assign temp_3_fu_663_p2 = (add_ln130_14_reg_1251 + add_ln130_12_fu_659_p2);
assign temp_4_fu_722_p2 = (add_ln130_16_fu_716_p2 + add_ln130_18_fu_710_p2);
assign temp_5_fu_818_p2 = (add_ln130_22_reg_1297 + add_ln130_20_fu_813_p2);
assign temp_5_out = temp_2_reg_1233;
assign temp_6_fu_946_p2 = (add_ln130_26_reg_1328 + add_ln130_24_fu_942_p2);
assign temp_6_out = (add_ln130_14_reg_1251 + add_ln130_12_fu_659_p2);
assign temp_7_fu_988_p2 = (add_ln130_29_reg_1343 + add_ln130_30_fu_984_p2);
assign temp_fu_456_p2 = (add_ln130_2_reg_1077 + add_ln130_fu_450_p2);
assign tmp_s_fu_310_p4 = {{ap_sig_allocacmp_i_1[6:2]}};
assign trunc_ln130_10_fu_728_p1 = temp_4_fu_722_p2[26:0];
assign trunc_ln130_11_fu_864_p1 = temp_3_reg_1256[1:0];
assign trunc_ln130_12_fu_823_p1 = temp_5_fu_818_p2[26:0];
assign trunc_ln130_13_fu_742_p1 = temp_4_fu_722_p2[1:0];
assign trunc_ln130_14_fu_951_p1 = temp_6_fu_946_p2[26:0];
assign trunc_ln130_15_fu_837_p1 = temp_5_fu_818_p2[1:0];
assign trunc_ln130_1_fu_461_p1 = B_fu_90[1:0];
assign trunc_ln130_2_fu_483_p1 = temp_fu_456_p2[26:0];
assign trunc_ln130_3_fu_374_p1 = B_1_fu_98[1:0];
assign trunc_ln130_4_fu_558_p1 = temp_1_fu_553_p2[26:0];
assign trunc_ln130_5_fu_508_p1 = temp_fu_456_p2[1:0];
assign trunc_ln130_6_fu_628_p1 = temp_2_fu_623_p2[26:0];
assign trunc_ln130_7_fu_572_p1 = temp_1_fu_553_p2[1:0];
assign trunc_ln130_8_fu_676_p1 = temp_3_reg_1256[26:0];
assign trunc_ln130_9_fu_783_p1 = temp_2_reg_1233[1:0];
assign trunc_ln130_fu_340_p1 = B_1_fu_98[26:0];
assign xor_ln130_10_fu_803_p2 = (temp_3_reg_1256 ^ C_6_reg_1265);
assign xor_ln130_11_fu_807_p2 = (xor_ln130_10_fu_803_p2 ^ C_7_fu_795_p3);
assign xor_ln130_12_fu_884_p2 = (temp_4_reg_1272 ^ C_7_reg_1302);
assign xor_ln130_13_fu_888_p2 = (xor_ln130_12_fu_884_p2 ^ C_8_fu_876_p3);
assign xor_ln130_14_fu_917_p2 = (temp_5_reg_1308 ^ C_8_fu_876_p3);
assign xor_ln130_15_fu_922_p2 = (xor_ln130_14_fu_917_p2 ^ C_9_fu_911_p3);
assign xor_ln130_1_fu_444_p2 = (xor_ln130_fu_438_p2 ^ E_2_fu_102);
assign xor_ln130_2_fu_539_p2 = (C_3_reg_1140 ^ A_reg_1072);
assign xor_ln130_3_fu_543_p2 = (xor_ln130_2_fu_539_p2 ^ C_reg_1134);
assign xor_ln130_4_fu_497_p2 = (temp_fu_456_p2 ^ C_4_reg_1087);
assign xor_ln130_5_fu_502_p2 = (xor_ln130_4_fu_497_p2 ^ C_3_fu_475_p3);
assign xor_ln130_6_fu_609_p2 = (temp_1_reg_1191 ^ C_4_reg_1087);
assign xor_ln130_7_fu_613_p2 = (xor_ln130_6_fu_609_p2 ^ C_5_fu_603_p3);
assign xor_ln130_8_fu_688_p2 = (temp_2_reg_1233 ^ C_5_reg_1221);
assign xor_ln130_9_fu_692_p2 = (xor_ln130_8_fu_688_p2 ^ C_6_reg_1265);
assign xor_ln130_fu_438_p2 = (E_1_fu_94 ^ B_fu_90);
assign zext_ln100_1_fu_328_p1 = or_ln100_7_fu_320_p3;
assign zext_ln100_2_fu_412_p1 = add_ln100_fu_407_p2;
assign zext_ln100_3_fu_423_p1 = add_ln100_1_fu_418_p2;
assign zext_ln100_fu_304_p1 = lshr_ln100_3_fu_294_p4;
endmodule 
