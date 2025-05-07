module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,and_ln,udiv_ln19902_cast,mul10_i,v15154_address0,v15154_ce0,v15154_we0,v15154_d0,v15154_1_address0,v15154_1_ce0,v15154_1_we0,v15154_1_d0,v15154_2_address0,v15154_2_ce0,v15154_2_we0,v15154_2_d0,v15154_3_address0,v15154_3_ce0,v15154_3_we0,v15154_3_d0,empty,urem_ln19901,mul15_i78,v15430_0_0_address0,v15430_0_0_ce0,v15430_0_0_q0,v15430_0_1_address0,v15430_0_1_ce0,v15430_0_1_q0,v15430_1_0_address0,v15430_1_0_ce0,v15430_1_0_q0,v15430_1_1_address0,v15430_1_1_ce0,v15430_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] and_ln;
input  [1:0] udiv_ln19902_cast;
input  [6:0] mul10_i;
output  [11:0] v15154_address0;
output   v15154_ce0;
output   v15154_we0;
output  [7:0] v15154_d0;
output  [11:0] v15154_1_address0;
output   v15154_1_ce0;
output   v15154_1_we0;
output  [7:0] v15154_1_d0;
output  [11:0] v15154_2_address0;
output   v15154_2_ce0;
output   v15154_2_we0;
output  [7:0] v15154_2_d0;
output  [11:0] v15154_3_address0;
output   v15154_3_ce0;
output   v15154_3_we0;
output  [7:0] v15154_3_d0;
input  [3:0] empty;
input  [1:0] urem_ln19901;
input  [6:0] mul15_i78;
output  [16:0] v15430_0_0_address0;
output   v15430_0_0_ce0;
input  [7:0] v15430_0_0_q0;
output  [16:0] v15430_0_1_address0;
output   v15430_0_1_ce0;
input  [7:0] v15430_0_1_q0;
output  [16:0] v15430_1_0_address0;
output   v15430_1_0_ce0;
input  [7:0] v15430_1_0_q0;
output  [16:0] v15430_1_1_address0;
output   v15430_1_1_ce0;
input  [7:0] v15430_1_1_q0;
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
wire   [0:0] icmp_ln19859_fu_621_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln19860123_reg_406;
reg   [0:0] icmp_ln19861122_reg_417;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] udiv_ln19902_cast_cast_fu_456_p1;
reg   [4:0] udiv_ln19902_cast_cast_reg_1123;
wire   [4:0] v15134_fu_528_p3;
reg   [4:0] v15134_reg_1128;
wire   [4:0] v15136_mid2_fu_542_p3;
reg   [4:0] v15136_mid2_reg_1135;
reg   [3:0] lshr_ln_reg_1140;
wire   [4:0] tmp_fu_568_p2;
reg   [4:0] tmp_reg_1145;
reg   [3:0] lshr_ln14_reg_1150;
wire   [0:0] icmp_ln19861_fu_609_p2;
reg   [0:0] icmp_ln19861_reg_1155;
wire   [0:0] icmp_ln19860_fu_615_p2;
reg   [0:0] icmp_ln19860_reg_1160;
reg   [0:0] icmp_ln19859_reg_1165;
wire   [0:0] empty_201_fu_757_p1;
reg   [0:0] empty_201_reg_1169;
reg   [0:0] empty_201_reg_1169_pp0_iter3_reg;
wire   [10:0] add_ln19868_fu_775_p2;
reg   [10:0] add_ln19868_reg_1177;
wire   [16:0] sub_ln19861_fu_841_p2;
reg   [16:0] sub_ln19861_reg_1183;
wire   [11:0] add_ln19870_1_fu_853_p2;
reg   [11:0] add_ln19870_1_reg_1189;
reg   [11:0] add_ln19870_1_reg_1189_pp0_iter3_reg;
wire   [7:0] add_ln19863_fu_899_p2;
reg   [7:0] add_ln19863_reg_1194;
wire   [0:0] trunc_ln19863_1_fu_905_p1;
reg   [0:0] trunc_ln19863_1_reg_1199;
reg   [0:0] trunc_ln19863_1_reg_1199_pp0_iter3_reg;
reg   [6:0] lshr_ln15_reg_1207;
reg   [0:0] ap_phi_mux_icmp_ln19860123_phi_fu_410_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln19861122_phi_fu_421_p4;
wire   [63:0] zext_ln19866_1_fu_951_p1;
wire   [63:0] zext_ln19870_5_fu_965_p1;
wire   [63:0] zext_ln19864_fu_1001_p1;
wire   [63:0] zext_ln19868_2_fu_1015_p1;
wire   [63:0] zext_ln19870_4_fu_1023_p1;
reg   [11:0] indvar_flatten12117_fu_150;
wire   [11:0] add_ln19859_1_fu_603_p2;
reg   [4:0] v15134118_fu_154;
reg   [7:0] indvar_flatten119_fu_158;
wire   [7:0] select_ln19860_1_fu_595_p3;
reg   [4:0] v15135120_fu_162;
wire   [4:0] v15135_fu_550_p3;
reg   [4:0] v15136121_fu_166;
wire   [4:0] v15136_fu_583_p2;
reg    v15430_0_0_ce0_local;
reg   [16:0] v15430_0_0_address0_local;
reg    v15430_0_1_ce0_local;
reg   [16:0] v15430_0_1_address0_local;
reg    v15430_1_0_ce0_local;
reg   [16:0] v15430_1_0_address0_local;
reg    v15430_1_1_ce0_local;
reg   [16:0] v15430_1_1_address0_local;
reg    v15154_3_we0_local;
wire   [7:0] select_ln19864_2_fu_1030_p3;
reg    v15154_3_ce0_local;
reg    v15154_2_we0_local;
wire   [7:0] select_ln19866_2_fu_1038_p3;
reg    v15154_2_ce0_local;
reg    v15154_1_we0_local;
wire   [7:0] select_ln19868_2_fu_1046_p3;
reg    v15154_1_ce0_local;
reg    v15154_we0_local;
wire   [7:0] select_ln19870_2_fu_1054_p3;
reg    v15154_ce0_local;
wire   [4:0] add_ln19859_fu_500_p2;
wire   [4:0] select_ln19859_fu_506_p3;
wire   [0:0] or_ln19859_fu_522_p2;
wire   [4:0] select_ln19859_1_fu_514_p3;
wire   [4:0] add_ln19860_fu_536_p2;
wire   [7:0] add_ln19860_1_fu_589_p2;
wire   [5:0] tmp_80_fu_659_p3;
wire   [8:0] p_shl42_fu_652_p3;
wire   [8:0] zext_ln19870_fu_666_p1;
wire   [4:0] empty_199_fu_676_p2;
wire   [7:0] tmp_81_fu_688_p3;
wire   [10:0] p_shl40_fu_680_p3;
wire   [10:0] zext_ln19864_1_fu_696_p1;
wire   [10:0] sub_ln19864_fu_700_p2;
wire   [8:0] sub_ln19870_fu_670_p2;
wire   [8:0] zext_ln19870_1_fu_710_p1;
wire   [8:0] add_ln19870_fu_713_p2;
wire   [7:0] trunc_ln19870_fu_719_p1;
wire   [9:0] tmp_82_fu_723_p3;
wire   [11:0] tmp_83_fu_731_p3;
wire   [11:0] zext_ln19870_2_fu_739_p1;
wire   [6:0] tmp_cast_fu_749_p1;
wire   [6:0] empty_200_fu_752_p2;
wire   [5:0] tmp_s_fu_761_p4;
wire   [10:0] zext_ln19868_fu_771_p1;
wire   [7:0] p_cast5_i_fu_781_p1;
wire   [7:0] empty_202_fu_785_p2;
wire   [6:0] p_cast_fu_791_p4;
wire  signed [10:0] sext_ln19864_fu_801_p1;
wire   [11:0] zext_ln19860_fu_706_p1;
wire   [11:0] zext_ln19864_2_fu_805_p1;
wire   [11:0] add_ln19864_fu_815_p2;
wire   [10:0] add_ln19864_2_fu_809_p2;
wire   [14:0] tmp_85_fu_821_p3;
wire   [16:0] tmp_86_fu_829_p3;
wire   [16:0] zext_ln19864_3_fu_837_p1;
wire   [11:0] sub_ln19870_1_fu_743_p2;
wire   [11:0] zext_ln19870_3_fu_850_p1;
wire   [1:0] trunc_ln19863_fu_859_p1;
wire   [2:0] tmp_4_fu_876_p4;
wire   [1:0] tmp_87_fu_867_p4;
wire   [1:0] or_ln19863_fu_862_p2;
wire   [6:0] or_ln_fu_885_p4;
wire   [7:0] zext_ln19863_fu_895_p1;
wire   [7:0] zext_ln19861_fu_847_p1;
wire   [13:0] tmp_84_fu_926_p3;
wire   [16:0] p_shl36_fu_919_p3;
wire   [16:0] zext_ln19868_1_fu_933_p1;
wire   [16:0] zext_ln19866_fu_943_p1;
wire   [16:0] add_ln19866_fu_946_p2;
wire   [16:0] sub_ln19868_fu_937_p2;
wire   [16:0] add_ln19870_2_fu_959_p2;
wire   [8:0] zext_ln19863_1_fu_973_p1;
wire   [8:0] add_ln19863_1_fu_976_p2;
wire   [7:0] trunc_ln_fu_982_p4;
wire  signed [16:0] sext_ln19864_1_fu_992_p1;
wire   [16:0] add_ln19864_1_fu_996_p2;
wire   [16:0] add_ln19868_1_fu_1009_p2;
wire   [7:0] grp_fu_428_p3;
wire   [7:0] grp_fu_435_p3;
wire   [7:0] grp_fu_442_p3;
wire   [7:0] grp_fu_449_p3;
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
#0 indvar_flatten12117_fu_150 = 12'd0;
#0 v15134118_fu_154 = 5'd0;
#0 indvar_flatten119_fu_158 = 8'd0;
#0 v15135120_fu_162 = 5'd0;
#0 v15136121_fu_166 = 5'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19859_reg_1165 == 1'd0))) begin
        icmp_ln19860123_reg_406 <= icmp_ln19860_reg_1160;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19860123_reg_406 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19859_reg_1165 == 1'd0))) begin
        icmp_ln19861122_reg_417 <= icmp_ln19861_reg_1155;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19861122_reg_417 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten119_fu_158 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten119_fu_158 <= select_ln19860_1_fu_595_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12117_fu_150 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten12117_fu_150 <= add_ln19859_1_fu_603_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15134118_fu_154 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15134118_fu_154 <= v15134_fu_528_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15135120_fu_162 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15135120_fu_162 <= v15135_fu_550_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15136121_fu_166 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15136121_fu_166 <= v15136_fu_583_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19863_reg_1194 <= add_ln19863_fu_899_p2;
        add_ln19868_reg_1177 <= add_ln19868_fu_775_p2;
        add_ln19870_1_reg_1189 <= add_ln19870_1_fu_853_p2;
        add_ln19870_1_reg_1189_pp0_iter3_reg <= add_ln19870_1_reg_1189;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        empty_201_reg_1169 <= empty_201_fu_757_p1;
        empty_201_reg_1169_pp0_iter3_reg <= empty_201_reg_1169;
        lshr_ln15_reg_1207 <= {{add_ln19863_fu_899_p2[7:1]}};
        sub_ln19861_reg_1183[16 : 3] <= sub_ln19861_fu_841_p2[16 : 3];
        trunc_ln19863_1_reg_1199 <= trunc_ln19863_1_fu_905_p1;
        trunc_ln19863_1_reg_1199_pp0_iter3_reg <= trunc_ln19863_1_reg_1199;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln19859_reg_1165 <= icmp_ln19859_fu_621_p2;
        lshr_ln14_reg_1150 <= {{v15136_mid2_fu_542_p3[4:1]}};
        lshr_ln_reg_1140 <= {{v15135_fu_550_p3[4:1]}};
        tmp_reg_1145 <= tmp_fu_568_p2;
        udiv_ln19902_cast_cast_reg_1123[1 : 0] <= udiv_ln19902_cast_cast_fu_456_p1[1 : 0];
        v15134_reg_1128 <= v15134_fu_528_p3;
        v15136_mid2_reg_1135 <= v15136_mid2_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19860_reg_1160 <= icmp_ln19860_fu_615_p2;
        icmp_ln19861_reg_1155 <= icmp_ln19861_fu_609_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19859_fu_621_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19859_reg_1165 == 1'd0))) begin
        ap_phi_mux_icmp_ln19860123_phi_fu_410_p4 = icmp_ln19860_reg_1160;
    end else begin
        ap_phi_mux_icmp_ln19860123_phi_fu_410_p4 = icmp_ln19860123_reg_406;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln19859_reg_1165 == 1'd0))) begin
        ap_phi_mux_icmp_ln19861122_phi_fu_421_p4 = icmp_ln19861_reg_1155;
    end else begin
        ap_phi_mux_icmp_ln19861122_phi_fu_421_p4 = icmp_ln19861122_reg_417;
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
        v15154_1_ce0_local = 1'b1;
    end else begin
        v15154_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_1_we0_local = 1'b1;
    end else begin
        v15154_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_2_ce0_local = 1'b1;
    end else begin
        v15154_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_2_we0_local = 1'b1;
    end else begin
        v15154_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_3_ce0_local = 1'b1;
    end else begin
        v15154_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_3_we0_local = 1'b1;
    end else begin
        v15154_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_ce0_local = 1'b1;
    end else begin
        v15154_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15154_we0_local = 1'b1;
    end else begin
        v15154_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_0_0_address0_local = zext_ln19870_5_fu_965_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_0_0_address0_local = zext_ln19868_2_fu_1015_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_0_0_address0_local = zext_ln19866_1_fu_951_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_0_0_address0_local = zext_ln19864_fu_1001_p1;
        end else begin
            v15430_0_0_address0_local = 'bx;
        end
    end else begin
        v15430_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1)))) begin
        v15430_0_0_ce0_local = 1'b1;
    end else begin
        v15430_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_0_1_address0_local = zext_ln19870_5_fu_965_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_0_1_address0_local = zext_ln19868_2_fu_1015_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_0_1_address0_local = zext_ln19866_1_fu_951_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_0_1_address0_local = zext_ln19864_fu_1001_p1;
        end else begin
            v15430_0_1_address0_local = 'bx;
        end
    end else begin
        v15430_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1)))) begin
        v15430_0_1_ce0_local = 1'b1;
    end else begin
        v15430_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_1_0_address0_local = zext_ln19870_5_fu_965_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_1_0_address0_local = zext_ln19868_2_fu_1015_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_1_0_address0_local = zext_ln19866_1_fu_951_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_1_0_address0_local = zext_ln19864_fu_1001_p1;
        end else begin
            v15430_1_0_address0_local = 'bx;
        end
    end else begin
        v15430_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1)))) begin
        v15430_1_0_ce0_local = 1'b1;
    end else begin
        v15430_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_1_1_address0_local = zext_ln19870_5_fu_965_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1))) begin
            v15430_1_1_address0_local = zext_ln19868_2_fu_1015_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_1_1_address0_local = zext_ln19866_1_fu_951_p1;
        end else if (((trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0))) begin
            v15430_1_1_address0_local = zext_ln19864_fu_1001_p1;
        end else begin
            v15430_1_1_address0_local = 'bx;
        end
    end else begin
        v15430_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd1) & (empty_201_reg_1169 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln19863_1_reg_1199 == 1'd0) & (empty_201_reg_1169 == 1'd1)))) begin
        v15430_1_1_ce0_local = 1'b1;
    end else begin
        v15430_1_1_ce0_local = 1'b0;
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
assign add_ln19859_1_fu_603_p2 = (indvar_flatten12117_fu_150 + 12'd1);
assign add_ln19859_fu_500_p2 = (v15134118_fu_154 + 5'd1);
assign add_ln19860_1_fu_589_p2 = (indvar_flatten119_fu_158 + 8'd1);
assign add_ln19860_fu_536_p2 = (select_ln19859_fu_506_p3 + 5'd2);
assign add_ln19863_1_fu_976_p2 = ($signed(zext_ln19863_1_fu_973_p1) + $signed(9'd511));
assign add_ln19863_fu_899_p2 = (zext_ln19863_fu_895_p1 + zext_ln19861_fu_847_p1);
assign add_ln19864_1_fu_996_p2 = ($signed(sub_ln19861_reg_1183) + $signed(sext_ln19864_1_fu_992_p1));
assign add_ln19864_2_fu_809_p2 = ($signed(sub_ln19864_fu_700_p2) + $signed(sext_ln19864_fu_801_p1));
assign add_ln19864_fu_815_p2 = (zext_ln19860_fu_706_p1 + zext_ln19864_2_fu_805_p1);
assign add_ln19866_fu_946_p2 = (sub_ln19861_reg_1183 + zext_ln19866_fu_943_p1);
assign add_ln19868_1_fu_1009_p2 = ($signed(sub_ln19868_fu_937_p2) + $signed(sext_ln19864_1_fu_992_p1));
assign add_ln19868_fu_775_p2 = (sub_ln19864_fu_700_p2 + zext_ln19868_fu_771_p1);
assign add_ln19870_1_fu_853_p2 = (sub_ln19870_1_fu_743_p2 + zext_ln19870_3_fu_850_p1);
assign add_ln19870_2_fu_959_p2 = (sub_ln19868_fu_937_p2 + zext_ln19866_fu_943_p1);
assign add_ln19870_fu_713_p2 = (sub_ln19870_fu_670_p2 + zext_ln19870_1_fu_710_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_199_fu_676_p2 = (v15134_reg_1128 + and_ln);
assign empty_200_fu_752_p2 = (tmp_cast_fu_749_p1 + mul10_i);
assign empty_201_fu_757_p1 = empty_200_fu_752_p2[0:0];
assign empty_202_fu_785_p2 = ($signed(p_cast5_i_fu_781_p1) + $signed(8'd255));
assign grp_fu_428_p3 = ((trunc_ln19863_1_reg_1199_pp0_iter3_reg[0:0] == 1'b1) ? v15430_0_0_q0 : v15430_0_1_q0);
assign grp_fu_435_p3 = ((trunc_ln19863_1_reg_1199_pp0_iter3_reg[0:0] == 1'b1) ? v15430_1_0_q0 : v15430_1_1_q0);
assign grp_fu_442_p3 = ((trunc_ln19863_1_reg_1199_pp0_iter3_reg[0:0] == 1'b1) ? v15430_0_1_q0 : v15430_0_0_q0);
assign grp_fu_449_p3 = ((trunc_ln19863_1_reg_1199_pp0_iter3_reg[0:0] == 1'b1) ? v15430_1_1_q0 : v15430_1_0_q0);
assign icmp_ln19859_fu_621_p2 = ((indvar_flatten12117_fu_150 == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln19860_fu_615_p2 = ((select_ln19860_1_fu_595_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln19861_fu_609_p2 = ((v15136_fu_583_p2 < 5'd28) ? 1'b1 : 1'b0);
assign or_ln19859_fu_522_p2 = (ap_phi_mux_icmp_ln19861122_phi_fu_421_p4 | ap_phi_mux_icmp_ln19860123_phi_fu_410_p4);
assign or_ln19863_fu_862_p2 = (urem_ln19901 | trunc_ln19863_fu_859_p1);
assign or_ln_fu_885_p4 = {{{tmp_4_fu_876_p4}, {tmp_87_fu_867_p4}}, {or_ln19863_fu_862_p2}};
assign p_cast5_i_fu_781_p1 = empty_200_fu_752_p2;
assign p_cast_fu_791_p4 = {{empty_202_fu_785_p2[7:1]}};
assign p_shl36_fu_919_p3 = {{add_ln19868_reg_1177}, {6'd0}};
assign p_shl40_fu_680_p3 = {{empty_199_fu_676_p2}, {6'd0}};
assign p_shl42_fu_652_p3 = {{v15134_reg_1128}, {4'd0}};
assign select_ln19859_1_fu_514_p3 = ((ap_phi_mux_icmp_ln19860123_phi_fu_410_p4[0:0] == 1'b1) ? 5'd0 : v15136121_fu_166);
assign select_ln19859_fu_506_p3 = ((ap_phi_mux_icmp_ln19860123_phi_fu_410_p4[0:0] == 1'b1) ? 5'd0 : v15135120_fu_162);
assign select_ln19860_1_fu_595_p3 = ((ap_phi_mux_icmp_ln19860123_phi_fu_410_p4[0:0] == 1'b1) ? 8'd1 : add_ln19860_1_fu_589_p2);
assign select_ln19864_2_fu_1030_p3 = ((empty_201_reg_1169_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_428_p3 : grp_fu_435_p3);
assign select_ln19866_2_fu_1038_p3 = ((empty_201_reg_1169_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_442_p3 : grp_fu_449_p3);
assign select_ln19868_2_fu_1046_p3 = ((empty_201_reg_1169_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_435_p3 : grp_fu_428_p3);
assign select_ln19870_2_fu_1054_p3 = ((empty_201_reg_1169_pp0_iter3_reg[0:0] == 1'b1) ? grp_fu_449_p3 : grp_fu_442_p3);
assign sext_ln19864_1_fu_992_p1 = $signed(trunc_ln_fu_982_p4);
assign sext_ln19864_fu_801_p1 = $signed(p_cast_fu_791_p4);
assign sub_ln19861_fu_841_p2 = (tmp_86_fu_829_p3 - zext_ln19864_3_fu_837_p1);
assign sub_ln19864_fu_700_p2 = (p_shl40_fu_680_p3 - zext_ln19864_1_fu_696_p1);
assign sub_ln19868_fu_937_p2 = (p_shl36_fu_919_p3 - zext_ln19868_1_fu_933_p1);
assign sub_ln19870_1_fu_743_p2 = (tmp_83_fu_731_p3 - zext_ln19870_2_fu_739_p1);
assign sub_ln19870_fu_670_p2 = (p_shl42_fu_652_p3 - zext_ln19870_fu_666_p1);
assign tmp_4_fu_876_p4 = {{mul15_i78[6:4]}};
assign tmp_80_fu_659_p3 = {{v15134_reg_1128}, {1'd0}};
assign tmp_81_fu_688_p3 = {{empty_199_fu_676_p2}, {3'd0}};
assign tmp_82_fu_723_p3 = {{add_ln19870_fu_713_p2}, {1'd0}};
assign tmp_83_fu_731_p3 = {{trunc_ln19870_fu_719_p1}, {4'd0}};
assign tmp_84_fu_926_p3 = {{add_ln19868_reg_1177}, {3'd0}};
assign tmp_85_fu_821_p3 = {{add_ln19864_fu_815_p2}, {3'd0}};
assign tmp_86_fu_829_p3 = {{add_ln19864_2_fu_809_p2}, {6'd0}};
assign tmp_87_fu_867_p4 = {{empty[3:2]}};
assign tmp_cast_fu_749_p1 = tmp_reg_1145;
assign tmp_fu_568_p2 = (v15135_fu_550_p3 + udiv_ln19902_cast_cast_reg_1123);
assign tmp_s_fu_761_p4 = {{empty_200_fu_752_p2[6:1]}};
assign trunc_ln19863_1_fu_905_p1 = add_ln19863_fu_899_p2[0:0];
assign trunc_ln19863_fu_859_p1 = empty[1:0];
assign trunc_ln19870_fu_719_p1 = add_ln19870_fu_713_p2[7:0];
assign trunc_ln_fu_982_p4 = {{add_ln19863_1_fu_976_p2[8:1]}};
assign udiv_ln19902_cast_cast_fu_456_p1 = udiv_ln19902_cast;
assign v15134_fu_528_p3 = ((ap_phi_mux_icmp_ln19860123_phi_fu_410_p4[0:0] == 1'b1) ? add_ln19859_fu_500_p2 : v15134118_fu_154);
assign v15135_fu_550_p3 = ((or_ln19859_fu_522_p2[0:0] == 1'b1) ? select_ln19859_fu_506_p3 : add_ln19860_fu_536_p2);
assign v15136_fu_583_p2 = (v15136_mid2_fu_542_p3 + 5'd2);
assign v15136_mid2_fu_542_p3 = ((or_ln19859_fu_522_p2[0:0] == 1'b1) ? select_ln19859_1_fu_514_p3 : 5'd0);
assign v15154_1_address0 = zext_ln19870_4_fu_1023_p1;
assign v15154_1_ce0 = v15154_1_ce0_local;
assign v15154_1_d0 = select_ln19868_2_fu_1046_p3;
assign v15154_1_we0 = v15154_1_we0_local;
assign v15154_2_address0 = zext_ln19870_4_fu_1023_p1;
assign v15154_2_ce0 = v15154_2_ce0_local;
assign v15154_2_d0 = select_ln19866_2_fu_1038_p3;
assign v15154_2_we0 = v15154_2_we0_local;
assign v15154_3_address0 = zext_ln19870_4_fu_1023_p1;
assign v15154_3_ce0 = v15154_3_ce0_local;
assign v15154_3_d0 = select_ln19864_2_fu_1030_p3;
assign v15154_3_we0 = v15154_3_we0_local;
assign v15154_address0 = zext_ln19870_4_fu_1023_p1;
assign v15154_ce0 = v15154_ce0_local;
assign v15154_d0 = select_ln19870_2_fu_1054_p3;
assign v15154_we0 = v15154_we0_local;
assign v15430_0_0_address0 = v15430_0_0_address0_local;
assign v15430_0_0_ce0 = v15430_0_0_ce0_local;
assign v15430_0_1_address0 = v15430_0_1_address0_local;
assign v15430_0_1_ce0 = v15430_0_1_ce0_local;
assign v15430_1_0_address0 = v15430_1_0_address0_local;
assign v15430_1_0_ce0 = v15430_1_0_ce0_local;
assign v15430_1_1_address0 = v15430_1_1_address0_local;
assign v15430_1_1_ce0 = v15430_1_1_ce0_local;
assign zext_ln19860_fu_706_p1 = sub_ln19864_fu_700_p2;
assign zext_ln19861_fu_847_p1 = v15136_mid2_reg_1135;
assign zext_ln19863_1_fu_973_p1 = add_ln19863_reg_1194;
assign zext_ln19863_fu_895_p1 = or_ln_fu_885_p4;
assign zext_ln19864_1_fu_696_p1 = tmp_81_fu_688_p3;
assign zext_ln19864_2_fu_805_p1 = $unsigned(sext_ln19864_fu_801_p1);
assign zext_ln19864_3_fu_837_p1 = tmp_85_fu_821_p3;
assign zext_ln19864_fu_1001_p1 = add_ln19864_1_fu_996_p2;
assign zext_ln19866_1_fu_951_p1 = add_ln19866_fu_946_p2;
assign zext_ln19866_fu_943_p1 = lshr_ln15_reg_1207;
assign zext_ln19868_1_fu_933_p1 = tmp_84_fu_926_p3;
assign zext_ln19868_2_fu_1015_p1 = add_ln19868_1_fu_1009_p2;
assign zext_ln19868_fu_771_p1 = tmp_s_fu_761_p4;
assign zext_ln19870_1_fu_710_p1 = lshr_ln_reg_1140;
assign zext_ln19870_2_fu_739_p1 = tmp_82_fu_723_p3;
assign zext_ln19870_3_fu_850_p1 = lshr_ln14_reg_1150;
assign zext_ln19870_4_fu_1023_p1 = add_ln19870_1_reg_1189_pp0_iter3_reg;
assign zext_ln19870_5_fu_965_p1 = add_ln19870_2_fu_959_p2;
assign zext_ln19870_fu_666_p1 = tmp_80_fu_659_p3;
always @ (posedge ap_clk) begin
    udiv_ln19902_cast_cast_reg_1123[4:2] <= 3'b000;
    sub_ln19861_reg_1183[2:0] <= 3'b000;
end
endmodule 