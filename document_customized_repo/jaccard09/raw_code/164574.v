module main_graph_main_graph_Pipeline_VITIS_LOOP_1274_261_VITIS_LOOP_1275_262_VITIS_LOOP_1276_263_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v39_address1,v39_ce1,v39_we1,v39_d1,v25_Addr_A,v25_EN_A,v25_WEN_A,v25_Din_A,v25_Dout_A,v40_address0,v40_ce0,v40_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v39_address1;
output   v39_ce1;
output   v39_we1;
output  [7:0] v39_d1;
output  [31:0] v25_Addr_A;
output   v25_EN_A;
output  [0:0] v25_WEN_A;
output  [7:0] v25_Din_A;
input  [7:0] v25_Dout_A;
output  [10:0] v40_address0;
output   v40_ce0;
input  [6:0] v40_q0;
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
wire   [0:0] icmp_ln1274_fu_205_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1274_reg_621;
wire   [0:0] icmp_ln1275_fu_217_p2;
reg   [0:0] icmp_ln1275_reg_625;
reg   [0:0] icmp_ln1275_reg_625_pp0_iter2_reg;
wire   [1:0] select_ln1275_fu_331_p3;
reg   [1:0] select_ln1275_reg_635;
wire   [0:0] empty_128_fu_351_p2;
reg   [0:0] empty_128_reg_641;
reg   [0:0] empty_128_reg_641_pp0_iter3_reg;
reg   [0:0] empty_128_reg_641_pp0_iter4_reg;
reg   [0:0] empty_128_reg_641_pp0_iter5_reg;
wire   [9:0] v665_mid2_fu_356_p3;
reg   [9:0] v665_mid2_reg_646;
wire   [1:0] select_ln1276_fu_364_p3;
reg   [1:0] select_ln1276_reg_652;
wire   [0:0] icmp_ln1278_1_fu_378_p2;
reg   [0:0] icmp_ln1278_1_reg_658;
reg   [0:0] icmp_ln1278_1_reg_658_pp0_iter3_reg;
reg   [0:0] icmp_ln1278_1_reg_658_pp0_iter4_reg;
reg   [0:0] icmp_ln1278_1_reg_658_pp0_iter5_reg;
reg   [0:0] icmp_ln1278_1_reg_658_pp0_iter6_reg;
wire   [11:0] add_ln1277_1_fu_478_p2;
reg   [11:0] add_ln1277_1_reg_662;
reg   [11:0] add_ln1277_1_reg_662_pp0_iter4_reg;
reg   [11:0] add_ln1277_1_reg_662_pp0_iter5_reg;
reg   [11:0] add_ln1277_1_reg_662_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1280_1_fu_493_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1279_1_fu_523_p1;
wire   [63:0] zext_ln1277_4_fu_547_p1;
reg   [7:0] v668_fu_84;
wire   [7:0] grp_fu_555_p3;
reg   [7:0] ap_sig_allocacmp_v668_load;
wire    ap_loop_init;
reg   [9:0] v665_fu_88;
wire   [9:0] add_ln1278_fu_372_p2;
reg   [1:0] v664_fu_92;
reg   [11:0] indvar_flatten1550_fu_96;
wire   [11:0] select_ln1276_1_fu_390_p3;
reg   [1:0] v663_fu_100;
reg   [12:0] indvar_flatten1564_fu_104;
wire   [12:0] select_ln1275_1_fu_229_p3;
reg   [10:0] v662_fu_108;
wire   [10:0] select_ln1274_1_fu_427_p3;
reg   [21:0] indvar_flatten1588_fu_112;
wire   [21:0] add_ln1274_1_fu_211_p2;
reg    v40_ce0_local;
reg    v25_EN_A_local;
wire   [31:0] v25_Addr_A_orig;
reg    v39_we1_local;
reg    v39_ce1_local;
wire   [12:0] add_ln1275_1_fu_223_p2;
wire   [0:0] icmp_ln1276_fu_277_p2;
wire   [0:0] xor_ln1274_fu_266_p2;
wire   [1:0] select_ln1274_fu_259_p3;
wire   [0:0] and_ln1274_1_fu_283_p2;
wire   [0:0] empty_fu_295_p2;
wire   [0:0] exitcond_flatten1552_not_fu_308_p2;
wire   [0:0] icmp_ln1278_fu_271_p2;
wire   [0:0] and_ln1274_fu_319_p2;
wire   [0:0] not_exitcond_flatten1552_mid21587_fu_314_p2;
wire   [1:0] add_ln1275_fu_289_p2;
wire   [1:0] v664_mid21557_fu_300_p3;
wire   [0:0] icmp_ln1278_mid21563_fu_325_p2;
wire   [0:0] empty_127_fu_345_p2;
wire   [1:0] add_ln1276_fu_339_p2;
wire   [11:0] add_ln1276_1_fu_384_p2;
wire   [10:0] add_ln1274_fu_421_p2;
wire   [9:0] trunc_ln1275_fu_434_p1;
wire   [10:0] shl_ln1277_fu_446_p2;
wire   [10:0] zext_ln1277_1_fu_455_p1;
wire   [10:0] add_ln1277_fu_458_p2;
wire   [11:0] tmp_fu_464_p3;
wire   [11:0] zext_ln1277_3_fu_475_p1;
wire   [18:0] tmp_s_fu_438_p3;
wire   [18:0] zext_ln1280_fu_484_p1;
wire   [18:0] add_ln1280_fu_487_p2;
wire   [9:0] shl_ln1279_fu_498_p2;
wire   [9:0] zext_ln1277_fu_452_p1;
wire   [9:0] add_ln1279_fu_503_p2;
wire   [10:0] tmp_92_fu_509_p3;
wire   [10:0] zext_ln1277_2_fu_472_p1;
wire   [10:0] add_ln1279_1_fu_517_p2;
wire   [6:0] grp_fu_555_p1;
wire   [7:0] grp_fu_555_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
wire   [7:0] grp_fu_555_p10;
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
#0 v668_fu_84 = 8'd0;
#0 v665_fu_88 = 10'd0;
#0 v664_fu_92 = 2'd0;
#0 indvar_flatten1550_fu_96 = 12'd0;
#0 v663_fu_100 = 2'd0;
#0 indvar_flatten1564_fu_104 = 13'd0;
#0 v662_fu_108 = 11'd0;
#0 indvar_flatten1588_fu_112 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U524(.clk(ap_clk),.reset(ap_rst),.din0(v25_Dout_A),.din1(grp_fu_555_p1),.din2(grp_fu_555_p2),.ce(1'b1),.dout(grp_fu_555_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvar_flatten1550_fu_96 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1274_reg_621 == 1'd0))) begin
            indvar_flatten1550_fu_96 <= select_ln1276_1_fu_390_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1564_fu_104 <= 13'd0;
        end else if (((icmp_ln1274_fu_205_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1564_fu_104 <= select_ln1275_1_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1588_fu_112 <= 22'd0;
        end else if (((icmp_ln1274_fu_205_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1588_fu_112 <= add_ln1274_1_fu_211_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v662_fu_108 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v662_fu_108 <= select_ln1274_1_fu_427_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v663_fu_100 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1274_reg_621 == 1'd0))) begin
            v663_fu_100 <= select_ln1275_fu_331_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v664_fu_92 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1274_reg_621 == 1'd0))) begin
            v664_fu_92 <= select_ln1276_fu_364_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v665_fu_88 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1274_reg_621 == 1'd0))) begin
            v665_fu_88 <= add_ln1278_fu_372_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v668_fu_84 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v668_fu_84 <= grp_fu_555_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1277_1_reg_662 <= add_ln1277_1_fu_478_p2;
        add_ln1277_1_reg_662_pp0_iter4_reg <= add_ln1277_1_reg_662;
        add_ln1277_1_reg_662_pp0_iter5_reg <= add_ln1277_1_reg_662_pp0_iter4_reg;
        add_ln1277_1_reg_662_pp0_iter6_reg <= add_ln1277_1_reg_662_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_128_reg_641 <= empty_128_fu_351_p2;
        empty_128_reg_641_pp0_iter3_reg <= empty_128_reg_641;
        empty_128_reg_641_pp0_iter4_reg <= empty_128_reg_641_pp0_iter3_reg;
        empty_128_reg_641_pp0_iter5_reg <= empty_128_reg_641_pp0_iter4_reg;
        icmp_ln1275_reg_625_pp0_iter2_reg <= icmp_ln1275_reg_625;
        icmp_ln1278_1_reg_658 <= icmp_ln1278_1_fu_378_p2;
        icmp_ln1278_1_reg_658_pp0_iter3_reg <= icmp_ln1278_1_reg_658;
        icmp_ln1278_1_reg_658_pp0_iter4_reg <= icmp_ln1278_1_reg_658_pp0_iter3_reg;
        icmp_ln1278_1_reg_658_pp0_iter5_reg <= icmp_ln1278_1_reg_658_pp0_iter4_reg;
        icmp_ln1278_1_reg_658_pp0_iter6_reg <= icmp_ln1278_1_reg_658_pp0_iter5_reg;
        select_ln1275_reg_635 <= select_ln1275_fu_331_p3;
        select_ln1276_reg_652 <= select_ln1276_fu_364_p3;
        v665_mid2_reg_646 <= v665_mid2_fu_356_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln1274_reg_621 <= icmp_ln1274_fu_205_p2;
        icmp_ln1275_reg_625 <= icmp_ln1275_fu_217_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1274_fu_205_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1274_reg_621 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v668_load = grp_fu_555_p3;
    end else begin
        ap_sig_allocacmp_v668_load = v668_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v25_EN_A_local = 1'b1;
    end else begin
        v25_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v39_ce1_local = 1'b1;
    end else begin
        v39_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln1278_1_reg_658_pp0_iter6_reg == 1'd1))) begin
        v39_we1_local = 1'b1;
    end else begin
        v39_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v40_ce0_local = 1'b1;
    end else begin
        v40_ce0_local = 1'b0;
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
assign add_ln1274_1_fu_211_p2 = (indvar_flatten1588_fu_112 + 22'd1);
assign add_ln1274_fu_421_p2 = (v662_fu_108 + 11'd1);
assign add_ln1275_1_fu_223_p2 = (indvar_flatten1564_fu_104 + 13'd1);
assign add_ln1275_fu_289_p2 = (select_ln1274_fu_259_p3 + 2'd1);
assign add_ln1276_1_fu_384_p2 = (indvar_flatten1550_fu_96 + 12'd1);
assign add_ln1276_fu_339_p2 = (v664_mid21557_fu_300_p3 + 2'd1);
assign add_ln1277_1_fu_478_p2 = (tmp_fu_464_p3 + zext_ln1277_3_fu_475_p1);
assign add_ln1277_fu_458_p2 = (shl_ln1277_fu_446_p2 + zext_ln1277_1_fu_455_p1);
assign add_ln1278_fu_372_p2 = (v665_mid2_fu_356_p3 + 10'd1);
assign add_ln1279_1_fu_517_p2 = (tmp_92_fu_509_p3 + zext_ln1277_2_fu_472_p1);
assign add_ln1279_fu_503_p2 = (shl_ln1279_fu_498_p2 + zext_ln1277_fu_452_p1);
assign add_ln1280_fu_487_p2 = (tmp_s_fu_438_p3 + zext_ln1280_fu_484_p1);
assign and_ln1274_1_fu_283_p2 = (xor_ln1274_fu_266_p2 & icmp_ln1276_fu_277_p2);
assign and_ln1274_fu_319_p2 = (xor_ln1274_fu_266_p2 & icmp_ln1278_fu_271_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_127_fu_345_p2 = (icmp_ln1278_mid21563_fu_325_p2 | and_ln1274_1_fu_283_p2);
assign empty_128_fu_351_p2 = (icmp_ln1275_reg_625 | empty_127_fu_345_p2);
assign empty_fu_295_p2 = (icmp_ln1275_reg_625 | and_ln1274_1_fu_283_p2);
assign exitcond_flatten1552_not_fu_308_p2 = (icmp_ln1276_fu_277_p2 ^ 1'd1);
assign grp_fu_555_p1 = grp_fu_555_p10;
assign grp_fu_555_p10 = v40_q0;
assign grp_fu_555_p2 = ((empty_128_reg_641_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v668_load);
assign icmp_ln1274_fu_205_p2 = ((indvar_flatten1588_fu_112 == 22'd2097152) ? 1'b1 : 1'b0);
assign icmp_ln1275_fu_217_p2 = ((indvar_flatten1564_fu_104 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln1276_fu_277_p2 = ((indvar_flatten1550_fu_96 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln1278_1_fu_378_p2 = ((add_ln1278_fu_372_p2 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln1278_fu_271_p2 = ((v665_fu_88 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln1278_mid21563_fu_325_p2 = (not_exitcond_flatten1552_mid21587_fu_314_p2 & and_ln1274_fu_319_p2);
assign not_exitcond_flatten1552_mid21587_fu_314_p2 = (icmp_ln1275_reg_625 | exitcond_flatten1552_not_fu_308_p2);
assign select_ln1274_1_fu_427_p3 = ((icmp_ln1275_reg_625_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1274_fu_421_p2 : v662_fu_108);
assign select_ln1274_fu_259_p3 = ((icmp_ln1275_reg_625[0:0] == 1'b1) ? 2'd0 : v663_fu_100);
assign select_ln1275_1_fu_229_p3 = ((icmp_ln1275_fu_217_p2[0:0] == 1'b1) ? 13'd1 : add_ln1275_1_fu_223_p2);
assign select_ln1275_fu_331_p3 = ((and_ln1274_1_fu_283_p2[0:0] == 1'b1) ? add_ln1275_fu_289_p2 : select_ln1274_fu_259_p3);
assign select_ln1276_1_fu_390_p3 = ((empty_fu_295_p2[0:0] == 1'b1) ? 12'd1 : add_ln1276_1_fu_384_p2);
assign select_ln1276_fu_364_p3 = ((icmp_ln1278_mid21563_fu_325_p2[0:0] == 1'b1) ? add_ln1276_fu_339_p2 : v664_mid21557_fu_300_p3);
assign shl_ln1277_fu_446_p2 = select_ln1274_1_fu_427_p3 << 11'd1;
assign shl_ln1279_fu_498_p2 = v665_mid2_reg_646 << 10'd1;
assign tmp_92_fu_509_p3 = {{add_ln1279_fu_503_p2}, {1'd0}};
assign tmp_fu_464_p3 = {{add_ln1277_fu_458_p2}, {1'd0}};
assign tmp_s_fu_438_p3 = {{trunc_ln1275_fu_434_p1}, {9'd0}};
assign trunc_ln1275_fu_434_p1 = select_ln1274_1_fu_427_p3[9:0];
assign v25_Addr_A = v25_Addr_A_orig << 32'd0;
assign v25_Addr_A_orig = zext_ln1280_1_fu_493_p1;
assign v25_Din_A = 8'd0;
assign v25_EN_A = v25_EN_A_local;
assign v25_WEN_A = 1'd0;
assign v39_address1 = zext_ln1277_4_fu_547_p1;
assign v39_ce1 = v39_ce1_local;
assign v39_d1 = grp_fu_555_p3;
assign v39_we1 = v39_we1_local;
assign v40_address0 = zext_ln1279_1_fu_523_p1;
assign v40_ce0 = v40_ce0_local;
assign v664_mid21557_fu_300_p3 = ((empty_fu_295_p2[0:0] == 1'b1) ? 2'd0 : v664_fu_92);
assign v665_mid2_fu_356_p3 = ((empty_128_fu_351_p2[0:0] == 1'b1) ? 10'd0 : v665_fu_88);
assign xor_ln1274_fu_266_p2 = (icmp_ln1275_reg_625 ^ 1'd1);
assign zext_ln1277_1_fu_455_p1 = select_ln1275_reg_635;
assign zext_ln1277_2_fu_472_p1 = select_ln1276_reg_652;
assign zext_ln1277_3_fu_475_p1 = select_ln1276_reg_652;
assign zext_ln1277_4_fu_547_p1 = add_ln1277_1_reg_662_pp0_iter6_reg;
assign zext_ln1277_fu_452_p1 = select_ln1275_reg_635;
assign zext_ln1279_1_fu_523_p1 = add_ln1279_1_fu_517_p2;
assign zext_ln1280_1_fu_493_p1 = add_ln1280_fu_487_p2;
assign zext_ln1280_fu_484_p1 = v665_mid2_reg_646;
endmodule 