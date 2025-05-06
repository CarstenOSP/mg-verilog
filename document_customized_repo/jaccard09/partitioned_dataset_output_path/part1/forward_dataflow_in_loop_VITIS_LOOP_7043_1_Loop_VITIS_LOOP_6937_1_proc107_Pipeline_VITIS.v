
module forward_dataflow_in_loop_VITIS_LOOP_7043_1_Loop_VITIS_LOOP_6937_1_proc107_Pipeline_VITIS (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,p_udiv32_cast,zext_ln6977_cast,empty_88,v5714_address0,v5714_ce0,v5714_we0,v5714_d0,v5714_1_address0,v5714_1_ce0,v5714_1_we0,v5714_1_d0,v5714_2_address0,v5714_2_ce0,v5714_2_we0,v5714_2_d0,v5714_3_address0,v5714_3_ce0,v5714_3_we0,v5714_3_d0,v5714_4_address0,v5714_4_ce0,v5714_4_we0,v5714_4_d0,v5714_5_address0,v5714_5_ce0,v5714_5_we0,v5714_5_d0,v5714_6_address0,v5714_6_ce0,v5714_6_we0,v5714_6_d0,v5714_7_address0,v5714_7_ce0,v5714_7_we0,v5714_7_d0,empty_89,empty,v13732_0_0_address0,v13732_0_0_ce0,v13732_0_0_q0,v13732_0_1_address0,v13732_0_1_ce0,v13732_0_1_q0,v13732_1_0_address0,v13732_1_0_ce0,v13732_1_0_q0,v13732_1_1_address0,v13732_1_1_ce0,v13732_1_1_q0,v13732_2_0_address0,v13732_2_0_ce0,v13732_2_0_q0,v13732_2_1_address0,v13732_2_1_ce0,v13732_2_1_q0,v13732_3_0_address0,v13732_3_0_ce0,v13732_3_0_q0,v13732_3_1_address0,v13732_3_1_ce0,v13732_3_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [6:0] p_udiv32_cast;
input  [3:0] zext_ln6977_cast;
input  [1:0] empty_88;
output  [6:0] v5714_address0;
output   v5714_ce0;
output   v5714_we0;
output  [7:0] v5714_d0;
output  [6:0] v5714_1_address0;
output   v5714_1_ce0;
output   v5714_1_we0;
output  [7:0] v5714_1_d0;
output  [6:0] v5714_2_address0;
output   v5714_2_ce0;
output   v5714_2_we0;
output  [7:0] v5714_2_d0;
output  [6:0] v5714_3_address0;
output   v5714_3_ce0;
output   v5714_3_we0;
output  [7:0] v5714_3_d0;
output  [6:0] v5714_4_address0;
output   v5714_4_ce0;
output   v5714_4_we0;
output  [7:0] v5714_4_d0;
output  [6:0] v5714_5_address0;
output   v5714_5_ce0;
output   v5714_5_we0;
output  [7:0] v5714_5_d0;
output  [6:0] v5714_6_address0;
output   v5714_6_ce0;
output   v5714_6_we0;
output  [7:0] v5714_6_d0;
output  [6:0] v5714_7_address0;
output   v5714_7_ce0;
output   v5714_7_we0;
output  [7:0] v5714_7_d0;
input  [0:0] empty_89;
input  [1:0] empty;
output  [12:0] v13732_0_0_address0;
output   v13732_0_0_ce0;
input  [7:0] v13732_0_0_q0;
output  [12:0] v13732_0_1_address0;
output   v13732_0_1_ce0;
input  [7:0] v13732_0_1_q0;
output  [12:0] v13732_1_0_address0;
output   v13732_1_0_ce0;
input  [7:0] v13732_1_0_q0;
output  [12:0] v13732_1_1_address0;
output   v13732_1_1_ce0;
input  [7:0] v13732_1_1_q0;
output  [12:0] v13732_2_0_address0;
output   v13732_2_0_ce0;
input  [7:0] v13732_2_0_q0;
output  [12:0] v13732_2_1_address0;
output   v13732_2_1_ce0;
input  [7:0] v13732_2_1_q0;
output  [12:0] v13732_3_0_address0;
output   v13732_3_0_ce0;
input  [7:0] v13732_3_0_q0;
output  [12:0] v13732_3_1_address0;
output   v13732_3_1_ce0;
input  [7:0] v13732_3_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6937_fu_768_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] p_cast4_fu_508_p1;
reg   [2:0] p_cast4_reg_1244;
wire   [1:0] v5666_mid2_fu_606_p3;
reg   [1:0] v5666_mid2_reg_1249;
wire   [6:0] empty_224_fu_664_p2;
reg   [6:0] empty_224_reg_1255;
reg   [6:0] tmp_189_reg_1261;
wire   [6:0] add_ln6956_fu_698_p2;
reg   [6:0] add_ln6956_reg_1267;
wire   [4:0] empty_225_fu_710_p2;
reg   [4:0] empty_225_reg_1273;
wire   [0:0] empty_226_fu_716_p1;
reg   [0:0] empty_226_reg_1278;
reg   [0:0] empty_226_reg_1278_pp0_iter1_reg;
reg   [0:0] empty_226_reg_1278_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_1290;
wire   [0:0] icmp_ln6939_fu_756_p2;
reg   [0:0] icmp_ln6939_reg_1295;
wire   [0:0] icmp_ln6938_fu_762_p2;
reg   [0:0] icmp_ln6938_reg_1300;
reg   [0:0] icmp_ln6937_reg_1305;
wire   [6:0] add_ln6956_1_fu_1042_p2;
reg   [6:0] add_ln6956_1_reg_1309;
reg   [6:0] add_ln6956_1_reg_1309_pp0_iter2_reg;
wire   [12:0] add_ln6942_1_fu_1077_p2;
reg   [12:0] add_ln6942_1_reg_1314;
wire   [12:0] add_ln6944_1_fu_1083_p2;
reg   [12:0] add_ln6944_1_reg_1319;
wire   [12:0] add_ln6946_1_fu_1089_p2;
reg   [12:0] add_ln6946_1_reg_1324;
wire   [12:0] add_ln6948_1_fu_1095_p2;
reg   [12:0] add_ln6948_1_reg_1329;
reg   [0:0] ap_phi_mux_icmp_ln6938150_phi_fu_491_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6939149_phi_fu_501_p4;
wire   [63:0] zext_ln6942_3_fu_1101_p1;
wire   [63:0] zext_ln6944_2_fu_1106_p1;
wire   [63:0] zext_ln6946_2_fu_1111_p1;
wire   [63:0] zext_ln6948_1_fu_1120_p1;
wire   [63:0] zext_ln6956_3_fu_1129_p1;
reg   [6:0] indvar_flatten12144_fu_160;
wire   [6:0] add_ln6937_1_fu_750_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten12144_load;
reg   [5:0] v5664145_fu_164;
wire   [5:0] v5664_fu_586_p3;
reg   [5:0] ap_sig_allocacmp_v5664145_load;
reg   [4:0] indvar_flatten146_fu_168;
wire   [4:0] select_ln6938_1_fu_742_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten146_load;
reg   [3:0] v5665147_fu_172;
wire   [3:0] v5665_fu_614_p3;
reg   [3:0] ap_sig_allocacmp_v5665147_load;
reg   [1:0] v5666148_fu_176;
wire   [1:0] v5666_fu_730_p2;
reg   [1:0] ap_sig_allocacmp_v5666148_load;
reg    v13732_0_0_ce0_local;
reg   [12:0] v13732_0_0_address0_local;
reg    v13732_0_1_ce0_local;
reg   [12:0] v13732_0_1_address0_local;
reg    v13732_1_0_ce0_local;
reg   [12:0] v13732_1_0_address0_local;
reg    v13732_1_1_ce0_local;
reg   [12:0] v13732_1_1_address0_local;
reg    v13732_2_0_ce0_local;
reg   [12:0] v13732_2_0_address0_local;
reg    v13732_2_1_ce0_local;
reg   [12:0] v13732_2_1_address0_local;
reg    v13732_3_0_ce0_local;
reg   [12:0] v13732_3_0_address0_local;
reg    v13732_3_1_ce0_local;
reg   [12:0] v13732_3_1_address0_local;
reg    v5714_7_we0_local;
wire   [7:0] select_ln6942_fu_1140_p3;
reg    v5714_7_ce0_local;
reg    v5714_6_we0_local;
wire   [7:0] select_ln6944_fu_1148_p3;
reg    v5714_6_ce0_local;
reg    v5714_5_we0_local;
wire   [7:0] select_ln6946_fu_1156_p3;
reg    v5714_5_ce0_local;
reg    v5714_4_we0_local;
wire   [7:0] select_ln6948_fu_1164_p3;
reg    v5714_4_ce0_local;
reg    v5714_3_we0_local;
wire   [7:0] select_ln6950_fu_1172_p3;
reg    v5714_3_ce0_local;
reg    v5714_2_we0_local;
wire   [7:0] select_ln6952_fu_1180_p3;
reg    v5714_2_ce0_local;
reg    v5714_1_we0_local;
wire   [7:0] select_ln6954_fu_1188_p3;
reg    v5714_1_ce0_local;
reg    v5714_we0_local;
wire   [7:0] select_ln6956_fu_1196_p3;
reg    v5714_ce0_local;
wire   [0:0] xor_ln6937_fu_574_p2;
wire   [5:0] add_ln6937_fu_560_p2;
wire   [3:0] select_ln6937_fu_566_p3;
wire   [0:0] and_ln6937_fu_580_p2;
wire   [0:0] empty_222_fu_600_p2;
wire   [3:0] add_ln6938_fu_594_p2;
wire   [3:0] lshr_ln_fu_626_p4;
wire   [5:0] tmp_186_fu_640_p3;
wire   [6:0] zext_ln6956_fu_648_p1;
wire   [6:0] zext_ln6937_1_fu_636_p1;
wire   [8:0] zext_ln6937_fu_622_p1;
wire   [8:0] empty_223_fu_658_p2;
wire   [2:0] lshr_ln6_fu_684_p4;
wire   [6:0] add_ln6956_2_fu_652_p2;
wire   [6:0] zext_ln6956_1_fu_694_p1;
wire   [4:0] zext_ln6977_cast_cast_fu_516_p1;
wire   [4:0] zext_ln6938_1_fu_680_p1;
wire   [4:0] tmp_fu_704_p2;
wire   [4:0] p_cast3_fu_512_p1;
wire   [4:0] add_ln6938_1_fu_736_p2;
wire   [9:0] tmp_187_fu_799_p3;
wire   [7:0] tmp_188_fu_810_p3;
wire   [10:0] zext_ln6942_fu_806_p1;
wire   [10:0] zext_ln6942_1_fu_817_p1;
wire   [10:0] add_ln6942_2_fu_821_p2;
wire   [9:0] tmp_190_fu_831_p3;
wire   [7:0] tmp_191_fu_842_p3;
wire   [10:0] zext_ln6946_fu_838_p1;
wire   [10:0] zext_ln6946_1_fu_849_p1;
wire   [10:0] add_ln6946_2_fu_853_p2;
wire   [6:0] shl_ln6956_fu_863_p2;
wire   [10:0] zext_ln6944_fu_873_p1;
wire   [10:0] add_ln6944_fu_876_p2;
wire   [9:0] trunc_ln6944_fu_882_p1;
wire   [11:0] tmp_192_fu_886_p3;
wire   [12:0] tmp_193_fu_894_p3;
wire   [12:0] zext_ln6944_1_fu_902_p1;
wire   [10:0] add_ln6948_fu_912_p2;
wire   [9:0] trunc_ln6948_fu_918_p1;
wire   [11:0] tmp_194_fu_922_p3;
wire   [12:0] tmp_195_fu_930_p3;
wire   [12:0] zext_ln6948_fu_938_p1;
wire   [5:0] p_cast8_i_fu_948_p1;
wire   [5:0] empty_227_fu_951_p2;
wire   [4:0] p_cast_fu_957_p4;
wire  signed [10:0] sext_ln6942_fu_967_p1;
wire   [11:0] mul_ln6942_cast_fu_827_p1;
wire   [11:0] zext_ln6942_2_fu_971_p1;
wire   [11:0] add_ln6942_fu_975_p2;
wire   [9:0] trunc_ln6942_fu_981_p1;
wire   [12:0] tmp_197_fu_993_p3;
wire   [12:0] tmp_196_fu_985_p3;
wire   [11:0] zext_ln6938_fu_859_p1;
wire   [11:0] add_ln6946_fu_1007_p2;
wire   [9:0] trunc_ln6946_fu_1013_p1;
wire   [12:0] tmp_199_fu_1025_p3;
wire   [12:0] tmp_198_fu_1017_p3;
wire   [6:0] sub_ln6956_fu_868_p2;
wire   [6:0] zext_ln6956_2_fu_1039_p1;
wire   [2:0] zext_ln6939_fu_1048_p1;
wire   [2:0] add_ln6941_fu_1058_p2;
wire   [3:0] zext_ln6941_fu_1063_p1;
wire   [3:0] select_ln6941_fu_1051_p3;
wire   [3:0] add_ln6941_1_fu_1067_p2;
wire   [12:0] sub_ln6946_fu_1001_p2;
wire  signed [12:0] sext_ln6942_1_fu_1073_p1;
wire   [12:0] sub_ln6948_fu_906_p2;
wire   [12:0] sub_ln6939_fu_1033_p2;
wire   [12:0] sub_ln6948_1_fu_942_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_808;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten12144_fu_160 = 7'd0;
#0 v5664145_fu_164 = 6'd0;
#0 indvar_flatten146_fu_168 = 5'd0;
#0 v5665147_fu_172 = 4'd0;
#0 v5666148_fu_176 = 2'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12144_fu_160 <= add_ln6937_1_fu_750_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12144_fu_160 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten146_fu_168 <= select_ln6938_1_fu_742_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten146_fu_168 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v5664145_fu_164 <= v5664_fu_586_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v5664145_fu_164 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v5665147_fu_172 <= v5665_fu_614_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v5665147_fu_172 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v5666148_fu_176 <= v5666_fu_730_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v5666148_fu_176 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6942_1_reg_1314 <= add_ln6942_1_fu_1077_p2;
        add_ln6944_1_reg_1319 <= add_ln6944_1_fu_1083_p2;
        add_ln6946_1_reg_1324 <= add_ln6946_1_fu_1089_p2;
        add_ln6948_1_reg_1329 <= add_ln6948_1_fu_1095_p2;
        add_ln6956_1_reg_1309 <= add_ln6956_1_fu_1042_p2;
        add_ln6956_reg_1267 <= add_ln6956_fu_698_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_224_reg_1255 <= empty_224_fu_664_p2;
        empty_225_reg_1273 <= empty_225_fu_710_p2;
        empty_226_reg_1278 <= empty_226_fu_716_p1;
        empty_226_reg_1278_pp0_iter1_reg <= empty_226_reg_1278;
        icmp_ln6937_reg_1305 <= icmp_ln6937_fu_768_p2;
        p_cast4_reg_1244[1 : 0] <= p_cast4_fu_508_p1[1 : 0];
        tmp_189_reg_1261 <= {{empty_223_fu_658_p2[8:2]}};
        tmp_s_reg_1290 <= {{empty_225_fu_710_p2[4:1]}};
        v5666_mid2_reg_1249 <= v5666_mid2_fu_606_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6956_1_reg_1309_pp0_iter2_reg <= add_ln6956_1_reg_1309;
        empty_226_reg_1278_pp0_iter2_reg <= empty_226_reg_1278_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6938_reg_1300 <= icmp_ln6938_fu_762_p2;
        icmp_ln6939_reg_1295 <= icmp_ln6939_fu_756_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6937_fu_768_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_808)) begin
            ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 = icmp_ln6938_reg_1300;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 = icmp_ln6938_reg_1300;
        end
    end else begin
        ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 = icmp_ln6938_reg_1300;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_808)) begin
            ap_phi_mux_icmp_ln6939149_phi_fu_501_p4 = icmp_ln6939_reg_1295;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6939149_phi_fu_501_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6939149_phi_fu_501_p4 = icmp_ln6939_reg_1295;
        end
    end else begin
        ap_phi_mux_icmp_ln6939149_phi_fu_501_p4 = icmp_ln6939_reg_1295;
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
        ap_sig_allocacmp_indvar_flatten12144_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12144_load = indvar_flatten12144_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten146_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten146_load = indvar_flatten146_fu_168;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5664145_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5664145_load = v5664145_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5665147_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5665147_load = v5665147_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5666148_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v5666148_load = v5666148_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_0_0_address0_local = zext_ln6944_2_fu_1106_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_0_0_address0_local = zext_ln6942_3_fu_1101_p1;
        end else begin
            v13732_0_0_address0_local = 'bx;
        end
    end else begin
        v13732_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_0_0_ce0_local = 1'b1;
    end else begin
        v13732_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_0_1_address0_local = zext_ln6944_2_fu_1106_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_0_1_address0_local = zext_ln6942_3_fu_1101_p1;
        end else begin
            v13732_0_1_address0_local = 'bx;
        end
    end else begin
        v13732_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_0_1_ce0_local = 1'b1;
    end else begin
        v13732_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_1_0_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_1_0_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_1_0_address0_local = 'bx;
        end
    end else begin
        v13732_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_1_0_ce0_local = 1'b1;
    end else begin
        v13732_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_1_1_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_1_1_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_1_1_address0_local = 'bx;
        end
    end else begin
        v13732_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_1_1_ce0_local = 1'b1;
    end else begin
        v13732_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_2_0_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_2_0_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_2_0_address0_local = 'bx;
        end
    end else begin
        v13732_2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_2_0_ce0_local = 1'b1;
    end else begin
        v13732_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_2_1_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_2_1_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_2_1_address0_local = 'bx;
        end
    end else begin
        v13732_2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_2_1_ce0_local = 1'b1;
    end else begin
        v13732_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_3_0_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_3_0_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_3_0_address0_local = 'bx;
        end
    end else begin
        v13732_3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_3_0_ce0_local = 1'b1;
    end else begin
        v13732_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((empty_226_reg_1278_pp0_iter1_reg == 1'd1)) begin
            v13732_3_1_address0_local = zext_ln6948_1_fu_1120_p1;
        end else if ((empty_226_reg_1278_pp0_iter1_reg == 1'd0)) begin
            v13732_3_1_address0_local = zext_ln6946_2_fu_1111_p1;
        end else begin
            v13732_3_1_address0_local = 'bx;
        end
    end else begin
        v13732_3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_226_reg_1278_pp0_iter1_reg == 1'd1)))) begin
        v13732_3_1_ce0_local = 1'b1;
    end else begin
        v13732_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_1_ce0_local = 1'b1;
    end else begin
        v5714_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_1_we0_local = 1'b1;
    end else begin
        v5714_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_2_ce0_local = 1'b1;
    end else begin
        v5714_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_2_we0_local = 1'b1;
    end else begin
        v5714_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_3_ce0_local = 1'b1;
    end else begin
        v5714_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_3_we0_local = 1'b1;
    end else begin
        v5714_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_4_ce0_local = 1'b1;
    end else begin
        v5714_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_4_we0_local = 1'b1;
    end else begin
        v5714_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_5_ce0_local = 1'b1;
    end else begin
        v5714_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_5_we0_local = 1'b1;
    end else begin
        v5714_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_6_ce0_local = 1'b1;
    end else begin
        v5714_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_6_we0_local = 1'b1;
    end else begin
        v5714_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_7_ce0_local = 1'b1;
    end else begin
        v5714_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_7_we0_local = 1'b1;
    end else begin
        v5714_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_ce0_local = 1'b1;
    end else begin
        v5714_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5714_we0_local = 1'b1;
    end else begin
        v5714_we0_local = 1'b0;
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
assign add_ln6937_1_fu_750_p2 = (ap_sig_allocacmp_indvar_flatten12144_load + 7'd1);
assign add_ln6937_fu_560_p2 = (ap_sig_allocacmp_v5664145_load + 6'd4);
assign add_ln6938_1_fu_736_p2 = (ap_sig_allocacmp_indvar_flatten146_load + 5'd1);
assign add_ln6938_fu_594_p2 = (select_ln6937_fu_566_p3 + 4'd2);
assign add_ln6941_1_fu_1067_p2 = (zext_ln6941_fu_1063_p1 + select_ln6941_fu_1051_p3);
assign add_ln6941_fu_1058_p2 = (p_cast4_reg_1244 + zext_ln6939_fu_1048_p1);
assign add_ln6942_1_fu_1077_p2 = ($signed(sub_ln6946_fu_1001_p2) + $signed(sext_ln6942_1_fu_1073_p1));
assign add_ln6942_2_fu_821_p2 = (zext_ln6942_fu_806_p1 + zext_ln6942_1_fu_817_p1);
assign add_ln6942_fu_975_p2 = (mul_ln6942_cast_fu_827_p1 + zext_ln6942_2_fu_971_p1);
assign add_ln6944_1_fu_1083_p2 = ($signed(sub_ln6948_fu_906_p2) + $signed(sext_ln6942_1_fu_1073_p1));
assign add_ln6944_fu_876_p2 = (add_ln6942_2_fu_821_p2 + zext_ln6944_fu_873_p1);
assign add_ln6946_1_fu_1089_p2 = ($signed(sub_ln6939_fu_1033_p2) + $signed(sext_ln6942_1_fu_1073_p1));
assign add_ln6946_2_fu_853_p2 = (zext_ln6946_fu_838_p1 + zext_ln6946_1_fu_849_p1);
assign add_ln6946_fu_1007_p2 = (zext_ln6938_fu_859_p1 + zext_ln6942_2_fu_971_p1);
assign add_ln6948_1_fu_1095_p2 = ($signed(sub_ln6948_1_fu_942_p2) + $signed(sext_ln6942_1_fu_1073_p1));
assign add_ln6948_fu_912_p2 = (add_ln6946_2_fu_853_p2 + zext_ln6944_fu_873_p1);
assign add_ln6956_1_fu_1042_p2 = (sub_ln6956_fu_868_p2 + zext_ln6956_2_fu_1039_p1);
assign add_ln6956_2_fu_652_p2 = (zext_ln6956_fu_648_p1 + zext_ln6937_1_fu_636_p1);
assign add_ln6956_fu_698_p2 = (add_ln6956_2_fu_652_p2 + zext_ln6956_1_fu_694_p1);
assign and_ln6937_fu_580_p2 = (xor_ln6937_fu_574_p2 & ap_phi_mux_icmp_ln6939149_phi_fu_501_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_808 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln6937_reg_1305 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_222_fu_600_p2 = (ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 | and_ln6937_fu_580_p2);
assign empty_223_fu_658_p2 = (mul_i + zext_ln6937_fu_622_p1);
assign empty_224_fu_664_p2 = (p_udiv32_cast + zext_ln6937_1_fu_636_p1);
assign empty_225_fu_710_p2 = (tmp_fu_704_p2 + p_cast3_fu_512_p1);
assign empty_226_fu_716_p1 = empty_225_fu_710_p2[0:0];
assign empty_227_fu_951_p2 = ($signed(p_cast8_i_fu_948_p1) + $signed(6'd63));
assign icmp_ln6937_fu_768_p2 = ((ap_sig_allocacmp_indvar_flatten12144_load == 7'd119) ? 1'b1 : 1'b0);
assign icmp_ln6938_fu_762_p2 = ((select_ln6938_1_fu_742_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln6939_fu_756_p2 = ((v5666_fu_730_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_684_p4 = {{v5665_fu_614_p3[3:1]}};
assign lshr_ln_fu_626_p4 = {{v5664_fu_586_p3[5:2]}};
assign mul_ln6942_cast_fu_827_p1 = add_ln6942_2_fu_821_p2;
assign p_cast3_fu_512_p1 = empty_88;
assign p_cast4_fu_508_p1 = empty;
assign p_cast8_i_fu_948_p1 = empty_225_reg_1273;
assign p_cast_fu_957_p4 = {{empty_227_fu_951_p2[5:1]}};
assign select_ln6937_fu_566_p3 = ((ap_phi_mux_icmp_ln6938150_phi_fu_491_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5665147_load);
assign select_ln6938_1_fu_742_p3 = ((ap_phi_mux_icmp_ln6938150_phi_fu_491_p4[0:0] == 1'b1) ? 5'd1 : add_ln6938_1_fu_736_p2);
assign select_ln6941_fu_1051_p3 = ((empty_89[0:0] == 1'b1) ? 4'd2 : 4'd15);
assign select_ln6942_fu_1140_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_0_0_q0 : v13732_0_1_q0);
assign select_ln6944_fu_1148_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_0_1_q0 : v13732_0_0_q0);
assign select_ln6946_fu_1156_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_1_0_q0 : v13732_1_1_q0);
assign select_ln6948_fu_1164_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_1_1_q0 : v13732_1_0_q0);
assign select_ln6950_fu_1172_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_2_0_q0 : v13732_2_1_q0);
assign select_ln6952_fu_1180_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_2_1_q0 : v13732_2_0_q0);
assign select_ln6954_fu_1188_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_3_0_q0 : v13732_3_1_q0);
assign select_ln6956_fu_1196_p3 = ((empty_226_reg_1278_pp0_iter2_reg[0:0] == 1'b1) ? v13732_3_1_q0 : v13732_3_0_q0);
assign sext_ln6942_1_fu_1073_p1 = $signed(add_ln6941_1_fu_1067_p2);
assign sext_ln6942_fu_967_p1 = $signed(p_cast_fu_957_p4);
assign shl_ln6956_fu_863_p2 = add_ln6956_reg_1267 << 7'd2;
assign sub_ln6939_fu_1033_p2 = (tmp_199_fu_1025_p3 - tmp_198_fu_1017_p3);
assign sub_ln6946_fu_1001_p2 = (tmp_197_fu_993_p3 - tmp_196_fu_985_p3);
assign sub_ln6948_1_fu_942_p2 = (tmp_195_fu_930_p3 - zext_ln6948_fu_938_p1);
assign sub_ln6948_fu_906_p2 = (tmp_193_fu_894_p3 - zext_ln6944_1_fu_902_p1);
assign sub_ln6956_fu_868_p2 = (shl_ln6956_fu_863_p2 - add_ln6956_reg_1267);
assign tmp_186_fu_640_p3 = {{lshr_ln_fu_626_p4}, {2'd0}};
assign tmp_187_fu_799_p3 = {{empty_224_reg_1255}, {3'd0}};
assign tmp_188_fu_810_p3 = {{empty_224_reg_1255}, {1'd0}};
assign tmp_190_fu_831_p3 = {{tmp_189_reg_1261}, {3'd0}};
assign tmp_191_fu_842_p3 = {{tmp_189_reg_1261}, {1'd0}};
assign tmp_192_fu_886_p3 = {{add_ln6944_fu_876_p2}, {1'd0}};
assign tmp_193_fu_894_p3 = {{trunc_ln6944_fu_882_p1}, {3'd0}};
assign tmp_194_fu_922_p3 = {{add_ln6948_fu_912_p2}, {1'd0}};
assign tmp_195_fu_930_p3 = {{trunc_ln6948_fu_918_p1}, {3'd0}};
assign tmp_196_fu_985_p3 = {{add_ln6942_fu_975_p2}, {1'd0}};
assign tmp_197_fu_993_p3 = {{trunc_ln6942_fu_981_p1}, {3'd0}};
assign tmp_198_fu_1017_p3 = {{add_ln6946_fu_1007_p2}, {1'd0}};
assign tmp_199_fu_1025_p3 = {{trunc_ln6946_fu_1013_p1}, {3'd0}};
assign tmp_fu_704_p2 = (zext_ln6977_cast_cast_fu_516_p1 + zext_ln6938_1_fu_680_p1);
assign trunc_ln6942_fu_981_p1 = add_ln6942_fu_975_p2[9:0];
assign trunc_ln6944_fu_882_p1 = add_ln6944_fu_876_p2[9:0];
assign trunc_ln6946_fu_1013_p1 = add_ln6946_fu_1007_p2[9:0];
assign trunc_ln6948_fu_918_p1 = add_ln6948_fu_912_p2[9:0];
assign v13732_0_0_address0 = v13732_0_0_address0_local;
assign v13732_0_0_ce0 = v13732_0_0_ce0_local;
assign v13732_0_1_address0 = v13732_0_1_address0_local;
assign v13732_0_1_ce0 = v13732_0_1_ce0_local;
assign v13732_1_0_address0 = v13732_1_0_address0_local;
assign v13732_1_0_ce0 = v13732_1_0_ce0_local;
assign v13732_1_1_address0 = v13732_1_1_address0_local;
assign v13732_1_1_ce0 = v13732_1_1_ce0_local;
assign v13732_2_0_address0 = v13732_2_0_address0_local;
assign v13732_2_0_ce0 = v13732_2_0_ce0_local;
assign v13732_2_1_address0 = v13732_2_1_address0_local;
assign v13732_2_1_ce0 = v13732_2_1_ce0_local;
assign v13732_3_0_address0 = v13732_3_0_address0_local;
assign v13732_3_0_ce0 = v13732_3_0_ce0_local;
assign v13732_3_1_address0 = v13732_3_1_address0_local;
assign v13732_3_1_ce0 = v13732_3_1_ce0_local;
assign v5664_fu_586_p3 = ((ap_phi_mux_icmp_ln6938150_phi_fu_491_p4[0:0] == 1'b1) ? add_ln6937_fu_560_p2 : ap_sig_allocacmp_v5664145_load);
assign v5665_fu_614_p3 = ((and_ln6937_fu_580_p2[0:0] == 1'b1) ? add_ln6938_fu_594_p2 : select_ln6937_fu_566_p3);
assign v5666_fu_730_p2 = (v5666_mid2_fu_606_p3 + 2'd1);
assign v5666_mid2_fu_606_p3 = ((empty_222_fu_600_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v5666148_load);
assign v5714_1_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_1_ce0 = v5714_1_ce0_local;
assign v5714_1_d0 = select_ln6954_fu_1188_p3;
assign v5714_1_we0 = v5714_1_we0_local;
assign v5714_2_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_2_ce0 = v5714_2_ce0_local;
assign v5714_2_d0 = select_ln6952_fu_1180_p3;
assign v5714_2_we0 = v5714_2_we0_local;
assign v5714_3_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_3_ce0 = v5714_3_ce0_local;
assign v5714_3_d0 = select_ln6950_fu_1172_p3;
assign v5714_3_we0 = v5714_3_we0_local;
assign v5714_4_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_4_ce0 = v5714_4_ce0_local;
assign v5714_4_d0 = select_ln6948_fu_1164_p3;
assign v5714_4_we0 = v5714_4_we0_local;
assign v5714_5_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_5_ce0 = v5714_5_ce0_local;
assign v5714_5_d0 = select_ln6946_fu_1156_p3;
assign v5714_5_we0 = v5714_5_we0_local;
assign v5714_6_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_6_ce0 = v5714_6_ce0_local;
assign v5714_6_d0 = select_ln6944_fu_1148_p3;
assign v5714_6_we0 = v5714_6_we0_local;
assign v5714_7_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_7_ce0 = v5714_7_ce0_local;
assign v5714_7_d0 = select_ln6942_fu_1140_p3;
assign v5714_7_we0 = v5714_7_we0_local;
assign v5714_address0 = zext_ln6956_3_fu_1129_p1;
assign v5714_ce0 = v5714_ce0_local;
assign v5714_d0 = select_ln6956_fu_1196_p3;
assign v5714_we0 = v5714_we0_local;
assign xor_ln6937_fu_574_p2 = (ap_phi_mux_icmp_ln6938150_phi_fu_491_p4 ^ 1'd1);
assign zext_ln6937_1_fu_636_p1 = lshr_ln_fu_626_p4;
assign zext_ln6937_fu_622_p1 = v5664_fu_586_p3;
assign zext_ln6938_1_fu_680_p1 = v5665_fu_614_p3;
assign zext_ln6938_fu_859_p1 = add_ln6946_2_fu_853_p2;
assign zext_ln6939_fu_1048_p1 = v5666_mid2_reg_1249;
assign zext_ln6941_fu_1063_p1 = add_ln6941_fu_1058_p2;
assign zext_ln6942_1_fu_817_p1 = tmp_188_fu_810_p3;
assign zext_ln6942_2_fu_971_p1 = $unsigned(sext_ln6942_fu_967_p1);
assign zext_ln6942_3_fu_1101_p1 = add_ln6942_1_reg_1314;
assign zext_ln6942_fu_806_p1 = tmp_187_fu_799_p3;
assign zext_ln6944_1_fu_902_p1 = tmp_192_fu_886_p3;
assign zext_ln6944_2_fu_1106_p1 = add_ln6944_1_reg_1319;
assign zext_ln6944_fu_873_p1 = tmp_s_reg_1290;
assign zext_ln6946_1_fu_849_p1 = tmp_191_fu_842_p3;
assign zext_ln6946_2_fu_1111_p1 = add_ln6946_1_reg_1324;
assign zext_ln6946_fu_838_p1 = tmp_190_fu_831_p3;
assign zext_ln6948_1_fu_1120_p1 = add_ln6948_1_reg_1329;
assign zext_ln6948_fu_938_p1 = tmp_194_fu_922_p3;
assign zext_ln6956_1_fu_694_p1 = lshr_ln6_fu_684_p4;
assign zext_ln6956_2_fu_1039_p1 = v5666_mid2_reg_1249;
assign zext_ln6956_3_fu_1129_p1 = add_ln6956_1_reg_1309_pp0_iter2_reg;
assign zext_ln6956_fu_648_p1 = tmp_186_fu_640_p3;
assign zext_ln6977_cast_cast_fu_516_p1 = zext_ln6977_cast;
always @ (posedge ap_clk) begin
    p_cast4_reg_1244[2] <= 1'b0;
end
endmodule 
