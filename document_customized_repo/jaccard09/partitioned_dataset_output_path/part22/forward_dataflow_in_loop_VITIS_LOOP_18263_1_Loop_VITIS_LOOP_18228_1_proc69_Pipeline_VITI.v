
module forward_dataflow_in_loop_VITIS_LOOP_18263_1_Loop_VITIS_LOOP_18228_1_proc69_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln18269_cast,select_ln18268,v14174_address0,v14174_ce0,v14174_we0,v14174_d0,v14174_1_address0,v14174_1_ce0,v14174_1_we0,v14174_1_d0,v14174_2_address0,v14174_2_ce0,v14174_2_we0,v14174_2_d0,v14174_3_address0,v14174_3_ce0,v14174_3_we0,v14174_3_d0,empty,mul15_i85,urem_ln18268,v15442_0_0_address0,v15442_0_0_ce0,v15442_0_0_q0,v15442_0_1_address0,v15442_0_1_ce0,v15442_0_1_q0,v15442_1_0_address0,v15442_1_0_ce0,v15442_1_0_q0,v15442_1_1_address0,v15442_1_1_ce0,v15442_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i;
input  [1:0] udiv_ln18269_cast;
input  [2:0] select_ln18268;
output  [12:0] v14174_address0;
output   v14174_ce0;
output   v14174_we0;
output  [7:0] v14174_d0;
output  [12:0] v14174_1_address0;
output   v14174_1_ce0;
output   v14174_1_we0;
output  [7:0] v14174_1_d0;
output  [12:0] v14174_2_address0;
output   v14174_2_ce0;
output   v14174_2_we0;
output  [7:0] v14174_2_d0;
output  [12:0] v14174_3_address0;
output   v14174_3_ce0;
output   v14174_3_we0;
output  [7:0] v14174_3_d0;
input  [1:0] empty;
input  [2:0] mul15_i85;
input  [0:0] urem_ln18268;
output  [16:0] v15442_0_0_address0;
output   v15442_0_0_ce0;
input  [7:0] v15442_0_0_q0;
output  [16:0] v15442_0_1_address0;
output   v15442_0_1_ce0;
input  [7:0] v15442_0_1_q0;
output  [16:0] v15442_1_0_address0;
output   v15442_1_0_ce0;
input  [7:0] v15442_1_0_q0;
output  [16:0] v15442_1_1_address0;
output   v15442_1_1_ce0;
input  [7:0] v15442_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18228_fu_641_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln18229123_reg_396;
reg   [0:0] icmp_ln18230122_reg_407;
wire   [0:0] urem_ln18268_read_reg_1106;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] select_ln18268_cast_cast_fu_450_p1;
reg   [5:0] select_ln18268_cast_cast_reg_1132;
wire   [4:0] udiv_ln18269_cast_cast_fu_454_p1;
reg   [4:0] udiv_ln18269_cast_cast_reg_1137;
wire   [5:0] v14153_fu_526_p3;
reg   [5:0] v14153_reg_1142;
wire   [4:0] v14155_mid2_fu_540_p3;
reg   [4:0] v14155_mid2_reg_1149;
reg   [4:0] v14155_mid2_reg_1149_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_1154;
wire   [4:0] tmp_fu_566_p2;
reg   [4:0] tmp_reg_1159;
wire   [0:0] empty_267_fu_571_p1;
reg   [0:0] empty_267_reg_1164;
wire   [0:0] empty_268_fu_575_p1;
reg   [0:0] empty_268_reg_1168;
wire   [0:0] empty_270_fu_578_p2;
reg   [0:0] empty_270_reg_1172;
reg   [0:0] empty_270_reg_1172_pp0_iter2_reg;
reg   [0:0] empty_270_reg_1172_pp0_iter3_reg;
reg   [3:0] lshr_ln34_reg_1180;
wire   [0:0] trunc_ln18232_1_fu_594_p1;
reg   [0:0] trunc_ln18232_1_reg_1185;
wire   [0:0] xor_ln18232_fu_598_p2;
reg   [0:0] xor_ln18232_reg_1189;
reg   [0:0] xor_ln18232_reg_1189_pp0_iter2_reg;
reg   [0:0] xor_ln18232_reg_1189_pp0_iter3_reg;
wire   [0:0] icmp_ln18230_fu_629_p2;
reg   [0:0] icmp_ln18230_reg_1197;
wire   [0:0] icmp_ln18229_fu_635_p2;
reg   [0:0] icmp_ln18229_reg_1202;
reg   [0:0] icmp_ln18228_reg_1207;
wire   [11:0] add_ln18237_fu_795_p2;
reg   [11:0] add_ln18237_reg_1211;
wire   [16:0] sub_ln18230_fu_861_p2;
reg   [16:0] sub_ln18230_reg_1217;
wire   [12:0] add_ln18239_1_fu_870_p2;
reg   [12:0] add_ln18239_1_reg_1223;
reg   [12:0] add_ln18239_1_reg_1223_pp0_iter3_reg;
reg   [0:0] ap_phi_mux_icmp_ln18229123_phi_fu_400_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln18230122_phi_fu_411_p4;
wire   [63:0] zext_ln18235_1_fu_959_p1;
wire   [63:0] zext_ln18239_5_fu_973_p1;
wire   [63:0] zext_ln18233_fu_1010_p1;
wire   [63:0] zext_ln18237_2_fu_1024_p1;
wire   [63:0] zext_ln18239_4_fu_1032_p1;
reg   [12:0] indvar_flatten12117_fu_140;
wire   [12:0] add_ln18228_1_fu_623_p2;
reg   [5:0] v14153118_fu_144;
reg   [7:0] indvar_flatten119_fu_148;
wire   [7:0] select_ln18229_1_fu_615_p3;
reg   [4:0] v14154120_fu_152;
wire   [4:0] v14154_fu_548_p3;
reg   [4:0] v14155121_fu_156;
wire   [4:0] v14155_fu_603_p2;
reg    v15442_0_0_ce0_local;
reg    ap_predicate_pred333_state4;
reg   [16:0] v15442_0_0_address0_local;
reg    ap_predicate_pred353_state4;
reg    ap_predicate_pred376_state4;
reg    ap_predicate_pred394_state4;
reg    v15442_0_1_ce0_local;
reg   [16:0] v15442_0_1_address0_local;
reg    v15442_1_0_ce0_local;
reg   [16:0] v15442_1_0_address0_local;
reg    v15442_1_1_ce0_local;
reg   [16:0] v15442_1_1_address0_local;
reg    v14174_3_we0_local;
wire   [7:0] select_ln18233_2_fu_1039_p3;
reg    v14174_3_ce0_local;
reg    v14174_2_we0_local;
wire   [7:0] select_ln18235_2_fu_1047_p3;
reg    v14174_2_ce0_local;
reg    v14174_1_we0_local;
wire   [7:0] select_ln18237_2_fu_1055_p3;
reg    v14174_1_ce0_local;
reg    v14174_we0_local;
wire   [7:0] select_ln18239_2_fu_1063_p3;
reg    v14174_ce0_local;
wire  signed [2:0] select_ln18268_cast_fu_446_p0;
wire  signed [4:0] select_ln18268_cast_fu_446_p1;
wire   [5:0] add_ln18228_fu_498_p2;
wire   [4:0] select_ln18228_fu_504_p3;
wire   [0:0] or_ln18228_fu_520_p2;
wire   [4:0] select_ln18228_1_fu_512_p3;
wire   [4:0] add_ln18229_fu_534_p2;
wire  signed [2:0] empty_268_fu_575_p0;
wire   [7:0] add_ln18229_1_fu_609_p2;
wire   [6:0] tmp_204_fu_682_p3;
wire   [9:0] p_shl40_fu_675_p3;
wire   [9:0] zext_ln18239_fu_689_p1;
wire   [6:0] zext_ln18228_fu_672_p1;
wire   [6:0] empty_266_fu_699_p2;
wire   [8:0] tmp_205_fu_712_p3;
wire   [11:0] p_shl38_fu_704_p3;
wire   [11:0] zext_ln18233_1_fu_720_p1;
wire   [11:0] sub_ln18233_fu_724_p2;
wire   [9:0] sub_ln18239_fu_693_p2;
wire   [9:0] zext_ln18239_1_fu_734_p1;
wire   [9:0] add_ln18239_fu_737_p2;
wire   [8:0] trunc_ln18239_fu_743_p1;
wire   [10:0] tmp_206_fu_747_p3;
wire   [12:0] tmp_207_fu_755_p3;
wire   [12:0] zext_ln18239_2_fu_763_p1;
wire   [5:0] tmp_cast_fu_773_p1;
wire   [5:0] empty_269_fu_776_p2;
wire   [4:0] tmp_s_fu_781_p4;
wire   [11:0] zext_ln18237_fu_791_p1;
wire   [6:0] p_cast6_i_fu_801_p1;
wire   [6:0] empty_271_fu_805_p2;
wire   [5:0] p_cast_fu_811_p4;
wire  signed [11:0] sext_ln18233_fu_821_p1;
wire   [12:0] zext_ln18229_fu_730_p1;
wire   [12:0] zext_ln18233_2_fu_825_p1;
wire   [12:0] add_ln18233_fu_835_p2;
wire   [11:0] add_ln18233_2_fu_829_p2;
wire   [14:0] tmp_209_fu_841_p3;
wire   [16:0] tmp_210_fu_849_p3;
wire   [16:0] zext_ln18233_3_fu_857_p1;
wire   [12:0] sub_ln18239_1_fu_767_p2;
wire   [12:0] zext_ln18239_3_fu_867_p1;
wire   [13:0] tmp_208_fu_883_p3;
wire   [16:0] p_shl34_fu_876_p3;
wire   [16:0] zext_ln18237_1_fu_890_p1;
wire   [1:0] trunc_ln18232_fu_903_p1;
wire   [0:0] tmp_211_fu_911_p3;
wire   [1:0] or_ln18232_1_fu_906_p2;
wire   [2:0] or_ln_fu_918_p3;
wire  signed [4:0] sext_ln18232_fu_926_p1;
wire   [5:0] zext_ln18230_fu_900_p1;
wire   [5:0] zext_ln18232_fu_930_p1;
wire   [5:0] add_ln18232_fu_934_p2;
wire   [4:0] lshr_ln35_fu_940_p4;
wire   [16:0] zext_ln18235_fu_950_p1;
wire   [16:0] add_ln18235_fu_954_p2;
wire   [16:0] sub_ln18237_fu_894_p2;
wire   [16:0] add_ln18239_2_fu_967_p2;
wire   [6:0] zext_ln18232_1_fu_981_p1;
wire   [6:0] add_ln18232_1_fu_985_p2;
wire   [5:0] trunc_ln_fu_991_p4;
wire  signed [16:0] sext_ln18233_1_fu_1001_p1;
wire   [16:0] add_ln18233_1_fu_1005_p2;
wire   [16:0] add_ln18237_1_fu_1018_p2;
wire   [7:0] grp_fu_418_p3;
wire   [7:0] grp_fu_425_p3;
wire   [7:0] grp_fu_432_p3;
wire   [7:0] grp_fu_439_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten12117_fu_140 = 13'd0;
#0 v14153118_fu_144 = 6'd0;
#0 indvar_flatten119_fu_148 = 8'd0;
#0 v14154120_fu_152 = 5'd0;
#0 v14155121_fu_156 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18228_reg_1207 == 1'd0))) begin
        icmp_ln18229123_reg_396 <= icmp_ln18229_reg_1202;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18229123_reg_396 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18228_reg_1207 == 1'd0))) begin
        icmp_ln18230122_reg_407 <= icmp_ln18230_reg_1197;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18230122_reg_407 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten119_fu_148 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten119_fu_148 <= select_ln18229_1_fu_615_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12117_fu_140 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten12117_fu_140 <= add_ln18228_1_fu_623_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14153118_fu_144 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14153118_fu_144 <= v14153_fu_526_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14154120_fu_152 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14154120_fu_152 <= v14154_fu_548_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14155121_fu_156 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14155121_fu_156 <= v14155_fu_603_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18237_reg_1211 <= add_ln18237_fu_795_p2;
        add_ln18239_1_reg_1223 <= add_ln18239_1_fu_870_p2;
        add_ln18239_1_reg_1223_pp0_iter3_reg <= add_ln18239_1_reg_1223;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_predicate_pred333_state4 <= (((((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd1)) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd0))) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd0))) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd1)));
        ap_predicate_pred353_state4 <= (((((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd0)) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd1))) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd1))) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd1) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd0)));
        ap_predicate_pred376_state4 <= (((((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd1)) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd0))) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd0))) | ((xor_ln18232_reg_1189 == 1'd1) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd1)));
        ap_predicate_pred394_state4 <= (((((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd0)) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd1) & (empty_267_reg_1164 == 1'd1) & (urem_ln18268_read_reg_1106 == 1'd1))) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd1) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd1))) | ((xor_ln18232_reg_1189 == 1'd0) & (trunc_ln18232_1_reg_1185 == 1'd0) & (empty_270_reg_1172 == 1'd0) & (empty_268_reg_1168 == 1'd0) & (empty_267_reg_1164 == 1'd0) & (urem_ln18268_read_reg_1106 == 1'd0)));
        empty_270_reg_1172_pp0_iter2_reg <= empty_270_reg_1172;
        empty_270_reg_1172_pp0_iter3_reg <= empty_270_reg_1172_pp0_iter2_reg;
        sub_ln18230_reg_1217[16 : 2] <= sub_ln18230_fu_861_p2[16 : 2];
        v14155_mid2_reg_1149_pp0_iter2_reg <= v14155_mid2_reg_1149;
        xor_ln18232_reg_1189_pp0_iter2_reg <= xor_ln18232_reg_1189;
        xor_ln18232_reg_1189_pp0_iter3_reg <= xor_ln18232_reg_1189_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        empty_267_reg_1164 <= empty_267_fu_571_p1;
        empty_268_reg_1168 <= empty_268_fu_575_p1;
        empty_270_reg_1172 <= empty_270_fu_578_p2;
        icmp_ln18228_reg_1207 <= icmp_ln18228_fu_641_p2;
        lshr_ln34_reg_1180 <= {{v14155_mid2_fu_540_p3[4:1]}};
        lshr_ln_reg_1154 <= {{v14154_fu_548_p3[4:1]}};
        select_ln18268_cast_cast_reg_1132[4 : 0] <= select_ln18268_cast_cast_fu_450_p1[4 : 0];
        tmp_reg_1159 <= tmp_fu_566_p2;
        trunc_ln18232_1_reg_1185 <= trunc_ln18232_1_fu_594_p1;
        udiv_ln18269_cast_cast_reg_1137[1 : 0] <= udiv_ln18269_cast_cast_fu_454_p1[1 : 0];
        v14153_reg_1142 <= v14153_fu_526_p3;
        v14155_mid2_reg_1149 <= v14155_mid2_fu_540_p3;
        xor_ln18232_reg_1189 <= xor_ln18232_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18229_reg_1202 <= icmp_ln18229_fu_635_p2;
        icmp_ln18230_reg_1197 <= icmp_ln18230_fu_629_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18228_fu_641_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18228_reg_1207 == 1'd0))) begin
        ap_phi_mux_icmp_ln18229123_phi_fu_400_p4 = icmp_ln18229_reg_1202;
    end else begin
        ap_phi_mux_icmp_ln18229123_phi_fu_400_p4 = icmp_ln18229123_reg_396;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln18228_reg_1207 == 1'd0))) begin
        ap_phi_mux_icmp_ln18230122_phi_fu_411_p4 = icmp_ln18230_reg_1197;
    end else begin
        ap_phi_mux_icmp_ln18230122_phi_fu_411_p4 = icmp_ln18230122_reg_407;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_1_ce0_local = 1'b1;
    end else begin
        v14174_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_1_we0_local = 1'b1;
    end else begin
        v14174_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_2_ce0_local = 1'b1;
    end else begin
        v14174_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_2_we0_local = 1'b1;
    end else begin
        v14174_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_3_ce0_local = 1'b1;
    end else begin
        v14174_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_3_we0_local = 1'b1;
    end else begin
        v14174_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_ce0_local = 1'b1;
    end else begin
        v14174_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v14174_we0_local = 1'b1;
    end else begin
        v14174_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred394_state4 == 1'b1)) begin
            v15442_0_0_address0_local = zext_ln18239_5_fu_973_p1;
        end else if ((ap_predicate_pred376_state4 == 1'b1)) begin
            v15442_0_0_address0_local = zext_ln18237_2_fu_1024_p1;
        end else if ((ap_predicate_pred353_state4 == 1'b1)) begin
            v15442_0_0_address0_local = zext_ln18235_1_fu_959_p1;
        end else if ((ap_predicate_pred333_state4 == 1'b1)) begin
            v15442_0_0_address0_local = zext_ln18233_fu_1010_p1;
        end else begin
            v15442_0_0_address0_local = 'bx;
        end
    end else begin
        v15442_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred394_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred376_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred353_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred333_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        v15442_0_0_ce0_local = 1'b1;
    end else begin
        v15442_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred376_state4 == 1'b1)) begin
            v15442_0_1_address0_local = zext_ln18239_5_fu_973_p1;
        end else if ((ap_predicate_pred394_state4 == 1'b1)) begin
            v15442_0_1_address0_local = zext_ln18237_2_fu_1024_p1;
        end else if ((ap_predicate_pred333_state4 == 1'b1)) begin
            v15442_0_1_address0_local = zext_ln18235_1_fu_959_p1;
        end else if ((ap_predicate_pred353_state4 == 1'b1)) begin
            v15442_0_1_address0_local = zext_ln18233_fu_1010_p1;
        end else begin
            v15442_0_1_address0_local = 'bx;
        end
    end else begin
        v15442_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred394_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred376_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred353_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred333_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        v15442_0_1_ce0_local = 1'b1;
    end else begin
        v15442_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred353_state4 == 1'b1)) begin
            v15442_1_0_address0_local = zext_ln18239_5_fu_973_p1;
        end else if ((ap_predicate_pred333_state4 == 1'b1)) begin
            v15442_1_0_address0_local = zext_ln18237_2_fu_1024_p1;
        end else if ((ap_predicate_pred394_state4 == 1'b1)) begin
            v15442_1_0_address0_local = zext_ln18235_1_fu_959_p1;
        end else if ((ap_predicate_pred376_state4 == 1'b1)) begin
            v15442_1_0_address0_local = zext_ln18233_fu_1010_p1;
        end else begin
            v15442_1_0_address0_local = 'bx;
        end
    end else begin
        v15442_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred394_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred376_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred353_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred333_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        v15442_1_0_ce0_local = 1'b1;
    end else begin
        v15442_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred333_state4 == 1'b1)) begin
            v15442_1_1_address0_local = zext_ln18239_5_fu_973_p1;
        end else if ((ap_predicate_pred353_state4 == 1'b1)) begin
            v15442_1_1_address0_local = zext_ln18237_2_fu_1024_p1;
        end else if ((ap_predicate_pred376_state4 == 1'b1)) begin
            v15442_1_1_address0_local = zext_ln18235_1_fu_959_p1;
        end else if ((ap_predicate_pred394_state4 == 1'b1)) begin
            v15442_1_1_address0_local = zext_ln18233_fu_1010_p1;
        end else begin
            v15442_1_1_address0_local = 'bx;
        end
    end else begin
        v15442_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred394_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred376_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred353_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred333_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        v15442_1_1_ce0_local = 1'b1;
    end else begin
        v15442_1_1_ce0_local = 1'b0;
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
assign add_ln18228_1_fu_623_p2 = (indvar_flatten12117_fu_140 + 13'd1);
assign add_ln18228_fu_498_p2 = (v14153118_fu_144 + 6'd1);
assign add_ln18229_1_fu_609_p2 = (indvar_flatten119_fu_148 + 8'd1);
assign add_ln18229_fu_534_p2 = (select_ln18228_fu_504_p3 + 5'd2);
assign add_ln18232_1_fu_985_p2 = ($signed(zext_ln18232_1_fu_981_p1) + $signed(7'd127));
assign add_ln18232_fu_934_p2 = (zext_ln18230_fu_900_p1 + zext_ln18232_fu_930_p1);
assign add_ln18233_1_fu_1005_p2 = ($signed(sub_ln18230_reg_1217) + $signed(sext_ln18233_1_fu_1001_p1));
assign add_ln18233_2_fu_829_p2 = ($signed(sub_ln18233_fu_724_p2) + $signed(sext_ln18233_fu_821_p1));
assign add_ln18233_fu_835_p2 = (zext_ln18229_fu_730_p1 + zext_ln18233_2_fu_825_p1);
assign add_ln18235_fu_954_p2 = (sub_ln18230_reg_1217 + zext_ln18235_fu_950_p1);
assign add_ln18237_1_fu_1018_p2 = ($signed(sub_ln18237_fu_894_p2) + $signed(sext_ln18233_1_fu_1001_p1));
assign add_ln18237_fu_795_p2 = (sub_ln18233_fu_724_p2 + zext_ln18237_fu_791_p1);
assign add_ln18239_1_fu_870_p2 = (sub_ln18239_1_fu_767_p2 + zext_ln18239_3_fu_867_p1);
assign add_ln18239_2_fu_967_p2 = (sub_ln18237_fu_894_p2 + zext_ln18235_fu_950_p1);
assign add_ln18239_fu_737_p2 = (sub_ln18239_fu_693_p2 + zext_ln18239_1_fu_734_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_266_fu_699_p2 = (mul_i + zext_ln18228_fu_672_p1);
assign empty_267_fu_571_p1 = tmp_fu_566_p2[0:0];
assign empty_268_fu_575_p0 = select_ln18268;
assign empty_268_fu_575_p1 = empty_268_fu_575_p0[0:0];
assign empty_269_fu_776_p2 = (tmp_cast_fu_773_p1 + select_ln18268_cast_cast_reg_1132);
assign empty_270_fu_578_p2 = (empty_268_fu_575_p1 ^ empty_267_fu_571_p1);
assign empty_271_fu_805_p2 = ($signed(p_cast6_i_fu_801_p1) + $signed(7'd127));
assign grp_fu_418_p3 = ((xor_ln18232_reg_1189_pp0_iter3_reg[0:0] == 1'b1) ? v15442_0_0_q0 : v15442_0_1_q0);
assign grp_fu_425_p3 = ((xor_ln18232_reg_1189_pp0_iter3_reg[0:0] == 1'b1) ? v15442_1_0_q0 : v15442_1_1_q0);
assign grp_fu_432_p3 = ((xor_ln18232_reg_1189_pp0_iter3_reg[0:0] == 1'b1) ? v15442_0_1_q0 : v15442_0_0_q0);
assign grp_fu_439_p3 = ((xor_ln18232_reg_1189_pp0_iter3_reg[0:0] == 1'b1) ? v15442_1_1_q0 : v15442_1_0_q0);
assign icmp_ln18228_fu_641_p2 = ((indvar_flatten12117_fu_140 == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln18229_fu_635_p2 = ((select_ln18229_1_fu_615_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln18230_fu_629_p2 = ((v14155_fu_603_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln35_fu_940_p4 = {{add_ln18232_fu_934_p2[5:1]}};
assign or_ln18228_fu_520_p2 = (ap_phi_mux_icmp_ln18230122_phi_fu_411_p4 | ap_phi_mux_icmp_ln18229123_phi_fu_400_p4);
assign or_ln18232_1_fu_906_p2 = (trunc_ln18232_fu_903_p1 | empty);
assign or_ln_fu_918_p3 = {{tmp_211_fu_911_p3}, {or_ln18232_1_fu_906_p2}};
assign p_cast6_i_fu_801_p1 = empty_269_fu_776_p2;
assign p_cast_fu_811_p4 = {{empty_271_fu_805_p2[6:1]}};
assign p_shl34_fu_876_p3 = {{add_ln18237_reg_1211}, {5'd0}};
assign p_shl38_fu_704_p3 = {{empty_266_fu_699_p2}, {5'd0}};
assign p_shl40_fu_675_p3 = {{v14153_reg_1142}, {4'd0}};
assign select_ln18228_1_fu_512_p3 = ((ap_phi_mux_icmp_ln18229123_phi_fu_400_p4[0:0] == 1'b1) ? 5'd0 : v14155121_fu_156);
assign select_ln18228_fu_504_p3 = ((ap_phi_mux_icmp_ln18229123_phi_fu_400_p4[0:0] == 1'b1) ? 5'd0 : v14154120_fu_152);
assign select_ln18229_1_fu_615_p3 = ((ap_phi_mux_icmp_ln18229123_phi_fu_400_p4[0:0] == 1'b1) ? 8'd1 : add_ln18229_1_fu_609_p2);
assign select_ln18233_2_fu_1039_p3 = ((empty_270_reg_1172_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_418_p3 : grp_fu_425_p3);
assign select_ln18235_2_fu_1047_p3 = ((empty_270_reg_1172_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_432_p3 : grp_fu_439_p3);
assign select_ln18237_2_fu_1055_p3 = ((empty_270_reg_1172_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_425_p3 : grp_fu_418_p3);
assign select_ln18239_2_fu_1063_p3 = ((empty_270_reg_1172_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_439_p3 : grp_fu_432_p3);
assign select_ln18268_cast_cast_fu_450_p1 = $unsigned(select_ln18268_cast_fu_446_p1);
assign select_ln18268_cast_fu_446_p0 = select_ln18268;
assign select_ln18268_cast_fu_446_p1 = select_ln18268_cast_fu_446_p0;
assign sext_ln18232_fu_926_p1 = $signed(or_ln_fu_918_p3);
assign sext_ln18233_1_fu_1001_p1 = $signed(trunc_ln_fu_991_p4);
assign sext_ln18233_fu_821_p1 = $signed(p_cast_fu_811_p4);
assign sub_ln18230_fu_861_p2 = (tmp_210_fu_849_p3 - zext_ln18233_3_fu_857_p1);
assign sub_ln18233_fu_724_p2 = (p_shl38_fu_704_p3 - zext_ln18233_1_fu_720_p1);
assign sub_ln18237_fu_894_p2 = (p_shl34_fu_876_p3 - zext_ln18237_1_fu_890_p1);
assign sub_ln18239_1_fu_767_p2 = (tmp_207_fu_755_p3 - zext_ln18239_2_fu_763_p1);
assign sub_ln18239_fu_693_p2 = (p_shl40_fu_675_p3 - zext_ln18239_fu_689_p1);
assign tmp_204_fu_682_p3 = {{v14153_reg_1142}, {1'd0}};
assign tmp_205_fu_712_p3 = {{empty_266_fu_699_p2}, {2'd0}};
assign tmp_206_fu_747_p3 = {{add_ln18239_fu_737_p2}, {1'd0}};
assign tmp_207_fu_755_p3 = {{trunc_ln18239_fu_743_p1}, {4'd0}};
assign tmp_208_fu_883_p3 = {{add_ln18237_reg_1211}, {2'd0}};
assign tmp_209_fu_841_p3 = {{add_ln18233_fu_835_p2}, {2'd0}};
assign tmp_210_fu_849_p3 = {{add_ln18233_2_fu_829_p2}, {5'd0}};
assign tmp_211_fu_911_p3 = mul15_i85[32'd2];
assign tmp_cast_fu_773_p1 = tmp_reg_1159;
assign tmp_fu_566_p2 = (v14154_fu_548_p3 + udiv_ln18269_cast_cast_reg_1137);
assign tmp_s_fu_781_p4 = {{empty_269_fu_776_p2[5:1]}};
assign trunc_ln18232_1_fu_594_p1 = v14155_mid2_fu_540_p3[0:0];
assign trunc_ln18232_fu_903_p1 = mul15_i85[1:0];
assign trunc_ln18239_fu_743_p1 = add_ln18239_fu_737_p2[8:0];
assign trunc_ln_fu_991_p4 = {{add_ln18232_1_fu_985_p2[6:1]}};
assign udiv_ln18269_cast_cast_fu_454_p1 = udiv_ln18269_cast;
assign urem_ln18268_read_reg_1106 = urem_ln18268;
assign v14153_fu_526_p3 = ((ap_phi_mux_icmp_ln18229123_phi_fu_400_p4[0:0] == 1'b1) ? add_ln18228_fu_498_p2 : v14153118_fu_144);
assign v14154_fu_548_p3 = ((or_ln18228_fu_520_p2[0:0] == 1'b1) ? select_ln18228_fu_504_p3 : add_ln18229_fu_534_p2);
assign v14155_fu_603_p2 = (v14155_mid2_fu_540_p3 + 5'd2);
assign v14155_mid2_fu_540_p3 = ((or_ln18228_fu_520_p2[0:0] == 1'b1) ? select_ln18228_1_fu_512_p3 : 5'd0);
assign v14174_1_address0 = zext_ln18239_4_fu_1032_p1;
assign v14174_1_ce0 = v14174_1_ce0_local;
assign v14174_1_d0 = select_ln18237_2_fu_1055_p3;
assign v14174_1_we0 = v14174_1_we0_local;
assign v14174_2_address0 = zext_ln18239_4_fu_1032_p1;
assign v14174_2_ce0 = v14174_2_ce0_local;
assign v14174_2_d0 = select_ln18235_2_fu_1047_p3;
assign v14174_2_we0 = v14174_2_we0_local;
assign v14174_3_address0 = zext_ln18239_4_fu_1032_p1;
assign v14174_3_ce0 = v14174_3_ce0_local;
assign v14174_3_d0 = select_ln18233_2_fu_1039_p3;
assign v14174_3_we0 = v14174_3_we0_local;
assign v14174_address0 = zext_ln18239_4_fu_1032_p1;
assign v14174_ce0 = v14174_ce0_local;
assign v14174_d0 = select_ln18239_2_fu_1063_p3;
assign v14174_we0 = v14174_we0_local;
assign v15442_0_0_address0 = v15442_0_0_address0_local;
assign v15442_0_0_ce0 = v15442_0_0_ce0_local;
assign v15442_0_1_address0 = v15442_0_1_address0_local;
assign v15442_0_1_ce0 = v15442_0_1_ce0_local;
assign v15442_1_0_address0 = v15442_1_0_address0_local;
assign v15442_1_0_ce0 = v15442_1_0_ce0_local;
assign v15442_1_1_address0 = v15442_1_1_address0_local;
assign v15442_1_1_ce0 = v15442_1_1_ce0_local;
assign xor_ln18232_fu_598_p2 = (urem_ln18268 ^ trunc_ln18232_1_fu_594_p1);
assign zext_ln18228_fu_672_p1 = v14153_reg_1142;
assign zext_ln18229_fu_730_p1 = sub_ln18233_fu_724_p2;
assign zext_ln18230_fu_900_p1 = v14155_mid2_reg_1149_pp0_iter2_reg;
assign zext_ln18232_1_fu_981_p1 = add_ln18232_fu_934_p2;
assign zext_ln18232_fu_930_p1 = $unsigned(sext_ln18232_fu_926_p1);
assign zext_ln18233_1_fu_720_p1 = tmp_205_fu_712_p3;
assign zext_ln18233_2_fu_825_p1 = $unsigned(sext_ln18233_fu_821_p1);
assign zext_ln18233_3_fu_857_p1 = tmp_209_fu_841_p3;
assign zext_ln18233_fu_1010_p1 = add_ln18233_1_fu_1005_p2;
assign zext_ln18235_1_fu_959_p1 = add_ln18235_fu_954_p2;
assign zext_ln18235_fu_950_p1 = lshr_ln35_fu_940_p4;
assign zext_ln18237_1_fu_890_p1 = tmp_208_fu_883_p3;
assign zext_ln18237_2_fu_1024_p1 = add_ln18237_1_fu_1018_p2;
assign zext_ln18237_fu_791_p1 = tmp_s_fu_781_p4;
assign zext_ln18239_1_fu_734_p1 = lshr_ln_reg_1154;
assign zext_ln18239_2_fu_763_p1 = tmp_206_fu_747_p3;
assign zext_ln18239_3_fu_867_p1 = lshr_ln34_reg_1180;
assign zext_ln18239_4_fu_1032_p1 = add_ln18239_1_reg_1223_pp0_iter3_reg;
assign zext_ln18239_5_fu_973_p1 = add_ln18239_2_fu_967_p2;
assign zext_ln18239_fu_689_p1 = tmp_204_fu_682_p3;
always @ (posedge ap_clk) begin
    select_ln18268_cast_cast_reg_1132[5] <= 1'b0;
    udiv_ln18269_cast_cast_reg_1137[4:2] <= 3'b000;
    sub_ln18230_reg_1217[1:0] <= 2'b00;
end
endmodule 
