module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_address1,buff_A1_ce1,buff_A1_q1,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,grp_fu_122_p_din0,grp_fu_122_p_din1,grp_fu_122_p_opcode,grp_fu_122_p_dout0,grp_fu_122_p_ce,grp_fu_126_p_din0,grp_fu_126_p_din1,grp_fu_126_p_dout0,grp_fu_126_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [11:0] buff_A0_address1;
output   buff_A0_ce1;
input  [31:0] buff_A0_q1;
output  [11:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [11:0] buff_A1_address1;
output   buff_A1_ce1;
input  [31:0] buff_A1_q1;
input  [31:0] alpha;
output  [11:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [31:0] grp_fu_122_p_din0;
output  [31:0] grp_fu_122_p_din1;
output  [1:0] grp_fu_122_p_opcode;
input  [31:0] grp_fu_122_p_dout0;
output   grp_fu_122_p_ce;
output  [31:0] grp_fu_126_p_din0;
output  [31:0] grp_fu_126_p_din1;
input  [31:0] grp_fu_126_p_dout0;
output   grp_fu_126_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln20_reg_522;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_165;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_171;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_208_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln5_fu_241_p3;
reg   [6:0] select_ln5_reg_526;
wire   [0:0] or_ln5_fu_271_p2;
reg   [0:0] or_ln5_reg_531;
wire   [5:0] trunc_ln21_fu_285_p1;
reg   [5:0] trunc_ln21_reg_536;
wire   [6:0] add_ln21_fu_289_p2;
reg   [6:0] add_ln21_reg_542;
wire   [6:0] k_mid2_fu_295_p3;
reg   [6:0] k_mid2_reg_547;
wire   [0:0] first_iter_1_fu_341_p2;
reg   [0:0] first_iter_1_reg_555;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [11:0] buff_C_out_addr_reg_559;
reg   [11:0] buff_C_out_addr_reg_559_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_584;
reg   [0:0] tmp_6_reg_584_pp0_iter1_reg;
reg   [31:0] buff_C_out_load_reg_588;
reg   [31:0] buff_A0_load_reg_593;
reg   [31:0] buff_A1_load_reg_598;
reg   [31:0] buff_A0_load_1_reg_603;
reg   [31:0] buff_A1_load_1_reg_608;
reg   [31:0] mul_1_reg_613;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] mul50_1_reg_623;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast_fu_371_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_4_fu_385_p1;
wire   [63:0] zext_ln24_5_fu_396_p1;
wire   [63:0] zext_ln24_2_fu_419_p1;
wire   [63:0] zext_ln24_3_fu_434_p1;
reg   [6:0] k_fu_64;
wire   [6:0] add_ln23_fu_439_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_68;
wire   [6:0] select_ln21_fu_332_p3;
reg   [12:0] indvar_flatten7_fu_72;
wire   [12:0] select_ln21_1_fu_309_p3;
reg   [6:0] i_fu_76;
wire   [6:0] select_ln20_fu_277_p3;
reg   [17:0] indvar_flatten21_fu_80;
wire   [17:0] add_ln20_1_fu_214_p2;
reg   [31:0] empty_fu_84;
wire    ap_block_pp0_stage12;
reg    buff_C_out_ce0_local;
reg   [11:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage11;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
reg    buff_A1_ce1_local;
reg    buff_A1_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_157_p0;
reg   [31:0] grp_fu_157_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_161_p0;
reg   [31:0] grp_fu_161_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9;
wire   [0:0] icmp_ln21_fu_235_p2;
wire   [0:0] tmp_fu_257_p3;
wire   [0:0] xor_ln23_fu_265_p2;
wire   [6:0] add_ln20_fu_229_p2;
wire   [6:0] select_ln5_1_fu_249_p3;
wire   [12:0] add_ln21_1_fu_303_p2;
wire   [5:0] empty_10_fu_337_p1;
wire   [11:0] tmp_1_fu_346_p3;
wire   [11:0] zext_ln24_fu_353_p1;
wire   [11:0] empty_11_fu_365_p2;
wire   [11:0] zext_ln24_1_fu_376_p1;
wire   [11:0] add_ln24_fu_379_p2;
wire   [11:0] tmp_2_fu_357_p3;
wire   [11:0] add_ln24_1_fu_390_p2;
wire   [4:0] tmp_3_fu_401_p4;
wire   [11:0] tmp_4_fu_410_p4;
wire   [11:0] tmp_5_fu_424_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_622;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_64 = 7'd0;
#0 j_fu_68 = 7'd0;
#0 indvar_flatten7_fu_72 = 13'd0;
#0 i_fu_76 = 7'd0;
#0 indvar_flatten21_fu_80 = 18'd0;
#0 empty_fu_84 = 32'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_622)) begin
            empty_fu_84 <= buff_C_out_load_reg_588;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_84 <= reg_171;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_76 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_208_p2 == 1'd0))) begin
        i_fu_76 <= select_ln20_fu_277_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_80 <= 18'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_208_p2 == 1'd0))) begin
        indvar_flatten21_fu_80 <= add_ln20_1_fu_214_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_72 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_208_p2 == 1'd0))) begin
        indvar_flatten7_fu_72 <= select_ln21_1_fu_309_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_68 <= 7'd0;
    end else if (((icmp_ln20_reg_522 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_68 <= select_ln21_fu_332_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_64 <= 7'd0;
    end else if (((icmp_ln20_reg_522 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_64 <= add_ln23_fu_439_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_542 <= add_ln21_fu_289_p2;
        icmp_ln20_reg_522 <= icmp_ln20_fu_208_p2;
        k_mid2_reg_547 <= k_mid2_fu_295_p3;
        or_ln5_reg_531 <= or_ln5_fu_271_p2;
        select_ln5_reg_526 <= select_ln5_fu_241_p3;
        trunc_ln21_reg_536 <= trunc_ln21_fu_285_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_1_reg_603 <= buff_A0_q0;
        buff_A0_load_reg_593 <= buff_A0_q1;
        buff_A1_load_1_reg_608 <= buff_A1_q0;
        buff_A1_load_reg_598 <= buff_A1_q1;
        buff_C_out_load_reg_588 <= buff_C_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_addr_reg_559 <= p_cast_fu_371_p1;
        buff_C_out_addr_reg_559_pp0_iter1_reg <= buff_C_out_addr_reg_559;
        first_iter_1_reg_555 <= first_iter_1_fu_341_p2;
        tmp_6_reg_584 <= add_ln23_fu_439_p2[32'd6];
        tmp_6_reg_584_pp0_iter1_reg <= tmp_6_reg_584;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul50_1_reg_623 <= grp_fu_126_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_1_reg_613 <= grp_fu_126_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_165 <= grp_fu_126_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_171 <= grp_fu_122_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_522 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce1_local = 1'b1;
    end else begin
        buff_A0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce1_local = 1'b1;
    end else begin
        buff_A1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_559_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = p_cast_fu_371_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_6_reg_584_pp0_iter1_reg == 1'd1))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_157_p0 = reg_171;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_157_p0 = empty_fu_84;
    end else begin
        grp_fu_157_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_157_p1 = mul50_1_reg_623;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_157_p1 = reg_165;
    end else begin
        grp_fu_157_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_161_p0 = mul_1_reg_613;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_161_p0 = reg_165;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_161_p0 = buff_A0_load_1_reg_603;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_161_p0 = buff_A0_load_reg_593;
        end else begin
            grp_fu_161_p0 = 'bx;
        end
    end else begin
        grp_fu_161_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_161_p1 = buff_A1_load_1_reg_608;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_161_p1 = buff_A1_load_reg_598;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_161_p1 = alpha;
    end else begin
        grp_fu_161_p1 = 'bx;
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
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_214_p2 = (indvar_flatten21_fu_80 + 18'd1);
assign add_ln20_fu_229_p2 = (i_fu_76 + 7'd1);
assign add_ln21_1_fu_303_p2 = (indvar_flatten7_fu_72 + 13'd1);
assign add_ln21_fu_289_p2 = (select_ln5_fu_241_p3 + 7'd1);
assign add_ln23_fu_439_p2 = (k_mid2_reg_547 + 7'd2);
assign add_ln24_1_fu_390_p2 = (tmp_2_fu_357_p3 + zext_ln24_1_fu_376_p1);
assign add_ln24_fu_379_p2 = (tmp_1_fu_346_p3 + zext_ln24_1_fu_376_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_622 = ((icmp_ln20_reg_522 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_555 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln24_2_fu_419_p1;
assign buff_A0_address1 = zext_ln24_4_fu_385_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_A1_address0 = zext_ln24_3_fu_434_p1;
assign buff_A1_address1 = zext_ln24_5_fu_396_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_ce1 = buff_A1_ce1_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = reg_171;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_337_p1 = select_ln21_fu_332_p3[5:0];
assign empty_11_fu_365_p2 = (tmp_1_fu_346_p3 + zext_ln24_fu_353_p1);
assign first_iter_1_fu_341_p2 = ((k_mid2_reg_547 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_122_p_ce = 1'b1;
assign grp_fu_122_p_din0 = grp_fu_157_p0;
assign grp_fu_122_p_din1 = grp_fu_157_p1;
assign grp_fu_122_p_opcode = 2'd0;
assign grp_fu_126_p_ce = 1'b1;
assign grp_fu_126_p_din0 = grp_fu_161_p0;
assign grp_fu_126_p_din1 = grp_fu_161_p1;
assign icmp_ln20_fu_208_p2 = ((indvar_flatten21_fu_80 == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_235_p2 = ((indvar_flatten7_fu_72 == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_295_p3 = ((or_ln5_fu_271_p2[0:0] == 1'b1) ? select_ln5_1_fu_249_p3 : 7'd0);
assign or_ln5_fu_271_p2 = (xor_ln23_fu_265_p2 | icmp_ln21_fu_235_p2);
assign p_cast_fu_371_p1 = empty_11_fu_365_p2;
assign select_ln20_fu_277_p3 = ((icmp_ln21_fu_235_p2[0:0] == 1'b1) ? add_ln20_fu_229_p2 : i_fu_76);
assign select_ln21_1_fu_309_p3 = ((icmp_ln21_fu_235_p2[0:0] == 1'b1) ? 13'd1 : add_ln21_1_fu_303_p2);
assign select_ln21_fu_332_p3 = ((or_ln5_reg_531[0:0] == 1'b1) ? select_ln5_reg_526 : add_ln21_reg_542);
assign select_ln5_1_fu_249_p3 = ((icmp_ln21_fu_235_p2[0:0] == 1'b1) ? 7'd0 : k_fu_64);
assign select_ln5_fu_241_p3 = ((icmp_ln21_fu_235_p2[0:0] == 1'b1) ? 7'd0 : j_fu_68);
assign tmp_1_fu_346_p3 = {{trunc_ln21_reg_536}, {6'd0}};
assign tmp_2_fu_357_p3 = {{empty_10_fu_337_p1}, {6'd0}};
assign tmp_3_fu_401_p4 = {{k_mid2_reg_547[5:1]}};
assign tmp_4_fu_410_p4 = {{{trunc_ln21_reg_536}, {tmp_3_fu_401_p4}}, {1'd1}};
assign tmp_5_fu_424_p4 = {{{empty_10_fu_337_p1}, {tmp_3_fu_401_p4}}, {1'd1}};
assign tmp_fu_257_p3 = k_fu_64[32'd6];
assign trunc_ln21_fu_285_p1 = select_ln20_fu_277_p3[5:0];
assign xor_ln23_fu_265_p2 = (tmp_fu_257_p3 ^ 1'd1);
assign zext_ln24_1_fu_376_p1 = k_mid2_reg_547;
assign zext_ln24_2_fu_419_p1 = tmp_4_fu_410_p4;
assign zext_ln24_3_fu_434_p1 = tmp_5_fu_424_p4;
assign zext_ln24_4_fu_385_p1 = add_ln24_fu_379_p2;
assign zext_ln24_5_fu_396_p1 = add_ln24_1_fu_390_p2;
assign zext_ln24_fu_353_p1 = select_ln21_fu_332_p3;
endmodule 