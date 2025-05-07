module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_address1,buff_A1_ce1,buff_A1_q1,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,grp_fu_131_p_din0,grp_fu_131_p_din1,grp_fu_131_p_opcode,grp_fu_131_p_dout0,grp_fu_131_p_ce,grp_fu_135_p_din0,grp_fu_135_p_din1,grp_fu_135_p_dout0,grp_fu_135_p_ce); 
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
output  [10:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [10:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [31:0] grp_fu_131_p_din0;
output  [31:0] grp_fu_131_p_din1;
output  [1:0] grp_fu_131_p_opcode;
input  [31:0] grp_fu_131_p_dout0;
output   grp_fu_131_p_ce;
output  [31:0] grp_fu_135_p_din0;
output  [31:0] grp_fu_135_p_din1;
input  [31:0] grp_fu_135_p_dout0;
output   grp_fu_135_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln20_reg_559;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_182;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_188;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_226_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln5_fu_259_p3;
reg   [6:0] select_ln5_reg_563;
wire   [0:0] or_ln5_fu_289_p2;
reg   [0:0] or_ln5_reg_568;
wire   [5:0] trunc_ln21_fu_303_p1;
reg   [5:0] trunc_ln21_reg_573;
wire   [6:0] add_ln21_fu_307_p2;
reg   [6:0] add_ln21_reg_580;
wire   [6:0] k_mid2_fu_313_p3;
reg   [6:0] k_mid2_reg_585;
wire   [0:0] first_iter_1_fu_359_p2;
reg   [0:0] first_iter_1_reg_593;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] trunc_ln21_1_fu_371_p1;
reg   [0:0] trunc_ln21_1_reg_597;
reg   [0:0] trunc_ln21_1_reg_597_pp0_iter1_reg;
reg   [10:0] buff_C_out_addr_reg_602;
reg   [10:0] buff_C_out_addr_reg_602_pp0_iter1_reg;
reg   [10:0] buff_C_out_1_addr_reg_607;
reg   [10:0] buff_C_out_1_addr_reg_607_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_632;
reg   [0:0] tmp_1_reg_632_pp0_iter1_reg;
wire   [31:0] select_ln24_fu_492_p3;
reg   [31:0] select_ln24_reg_636;
reg   [31:0] buff_A0_load_reg_641;
reg   [31:0] buff_A1_load_reg_646;
reg   [31:0] buff_A0_load_1_reg_651;
reg   [31:0] buff_A1_load_1_reg_656;
reg   [31:0] mul_1_reg_661;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] mul50_1_reg_671;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_3_cast_fu_392_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_1_fu_415_p1;
wire   [63:0] zext_ln24_4_fu_426_p1;
wire   [63:0] zext_ln24_2_fu_449_p1;
wire   [63:0] zext_ln24_3_fu_464_p1;
reg   [6:0] k_fu_68;
wire   [6:0] add_ln23_fu_469_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_72;
wire   [6:0] select_ln21_fu_350_p3;
reg   [12:0] indvar_flatten7_fu_76;
wire   [12:0] select_ln21_1_fu_327_p3;
reg   [6:0] i_fu_80;
wire   [6:0] select_ln20_fu_295_p3;
reg   [17:0] indvar_flatten21_fu_84;
wire   [17:0] add_ln20_1_fu_232_p2;
reg   [31:0] empty_fu_88;
wire    ap_block_pp0_stage12;
reg    buff_C_out_ce0_local;
reg   [10:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage11;
reg    buff_C_out_1_ce0_local;
reg   [10:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
reg    buff_A1_ce1_local;
reg    buff_A1_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_174_p0;
reg   [31:0] grp_fu_174_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_178_p0;
reg   [31:0] grp_fu_178_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9;
wire   [0:0] icmp_ln21_fu_253_p2;
wire   [0:0] tmp_fu_275_p3;
wire   [0:0] xor_ln23_fu_283_p2;
wire   [6:0] add_ln20_fu_247_p2;
wire   [6:0] select_ln5_1_fu_267_p3;
wire   [12:0] add_ln21_1_fu_321_p2;
wire   [4:0] lshr_ln5_1_fu_375_p4;
wire   [10:0] tmp_3_fu_385_p3;
wire   [5:0] empty_10_fu_355_p1;
wire   [11:0] tmp_2_fu_364_p3;
wire   [11:0] zext_ln24_fu_406_p1;
wire   [11:0] add_ln24_fu_409_p2;
wire   [11:0] tmp_4_fu_398_p3;
wire   [11:0] add_ln24_1_fu_420_p2;
wire   [4:0] tmp_5_fu_431_p4;
wire   [11:0] tmp_6_fu_440_p4;
wire   [11:0] tmp_7_fu_454_p4;
wire    ap_block_pp0_stage3;
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
reg    ap_condition_660;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_68 = 7'd0;
#0 j_fu_72 = 7'd0;
#0 indvar_flatten7_fu_76 = 13'd0;
#0 i_fu_80 = 7'd0;
#0 indvar_flatten21_fu_84 = 18'd0;
#0 empty_fu_88 = 32'd0;
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
        if ((1'b1 == ap_condition_660)) begin
            empty_fu_88 <= select_ln24_reg_636;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_88 <= reg_188;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_226_p2 == 1'd0))) begin
        i_fu_80 <= select_ln20_fu_295_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_84 <= 18'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_226_p2 == 1'd0))) begin
        indvar_flatten21_fu_84 <= add_ln20_1_fu_232_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_76 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_fu_226_p2 == 1'd0))) begin
        indvar_flatten7_fu_76 <= select_ln21_1_fu_327_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_72 <= 7'd0;
    end else if (((icmp_ln20_reg_559 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_72 <= select_ln21_fu_350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_68 <= 7'd0;
    end else if (((icmp_ln20_reg_559 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_68 <= add_ln23_fu_469_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_580 <= add_ln21_fu_307_p2;
        icmp_ln20_reg_559 <= icmp_ln20_fu_226_p2;
        k_mid2_reg_585 <= k_mid2_fu_313_p3;
        or_ln5_reg_568 <= or_ln5_fu_289_p2;
        select_ln5_reg_563 <= select_ln5_fu_259_p3;
        trunc_ln21_reg_573 <= trunc_ln21_fu_303_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_1_reg_651 <= buff_A0_q0;
        buff_A0_load_reg_641 <= buff_A0_q1;
        buff_A1_load_1_reg_656 <= buff_A1_q0;
        buff_A1_load_reg_646 <= buff_A1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_addr_reg_607 <= tmp_3_cast_fu_392_p1;
        buff_C_out_1_addr_reg_607_pp0_iter1_reg <= buff_C_out_1_addr_reg_607;
        buff_C_out_addr_reg_602 <= tmp_3_cast_fu_392_p1;
        buff_C_out_addr_reg_602_pp0_iter1_reg <= buff_C_out_addr_reg_602;
        first_iter_1_reg_593 <= first_iter_1_fu_359_p2;
        tmp_1_reg_632 <= add_ln23_fu_469_p2[32'd6];
        tmp_1_reg_632_pp0_iter1_reg <= tmp_1_reg_632;
        trunc_ln21_1_reg_597 <= trunc_ln21_1_fu_371_p1;
        trunc_ln21_1_reg_597_pp0_iter1_reg <= trunc_ln21_1_reg_597;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul50_1_reg_671 <= grp_fu_135_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_1_reg_661 <= grp_fu_135_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_182 <= grp_fu_135_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_188 <= grp_fu_131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln24_reg_636 <= select_ln24_fu_492_p3;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_559 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_607_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_3_cast_fu_392_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_632_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (trunc_ln21_1_reg_597_pp0_iter1_reg == 1'd1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_602_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_3_cast_fu_392_p1;
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
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_632_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (trunc_ln21_1_reg_597_pp0_iter1_reg == 1'd0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p0 = reg_188;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_174_p0 = empty_fu_88;
    end else begin
        grp_fu_174_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p1 = mul50_1_reg_671;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_174_p1 = reg_182;
    end else begin
        grp_fu_174_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_178_p0 = mul_1_reg_661;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_178_p0 = reg_182;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_178_p0 = buff_A0_load_1_reg_651;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_178_p0 = buff_A0_load_reg_641;
        end else begin
            grp_fu_178_p0 = 'bx;
        end
    end else begin
        grp_fu_178_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_178_p1 = buff_A1_load_1_reg_656;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_178_p1 = buff_A1_load_reg_646;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_178_p1 = alpha;
    end else begin
        grp_fu_178_p1 = 'bx;
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
assign add_ln20_1_fu_232_p2 = (indvar_flatten21_fu_84 + 18'd1);
assign add_ln20_fu_247_p2 = (i_fu_80 + 7'd1);
assign add_ln21_1_fu_321_p2 = (indvar_flatten7_fu_76 + 13'd1);
assign add_ln21_fu_307_p2 = (select_ln5_fu_259_p3 + 7'd1);
assign add_ln23_fu_469_p2 = (k_mid2_reg_585 + 7'd2);
assign add_ln24_1_fu_420_p2 = (tmp_4_fu_398_p3 + zext_ln24_fu_406_p1);
assign add_ln24_fu_409_p2 = (tmp_2_fu_364_p3 + zext_ln24_fu_406_p1);
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
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
    ap_condition_660 = ((icmp_ln20_reg_559 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_593 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln24_2_fu_449_p1;
assign buff_A0_address1 = zext_ln24_1_fu_415_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_A1_address0 = zext_ln24_3_fu_464_p1;
assign buff_A1_address1 = zext_ln24_4_fu_426_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_ce1 = buff_A1_ce1_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = reg_188;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = reg_188;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_355_p1 = select_ln21_fu_350_p3[5:0];
assign first_iter_1_fu_359_p2 = ((k_mid2_reg_585 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_131_p_ce = 1'b1;
assign grp_fu_131_p_din0 = grp_fu_174_p0;
assign grp_fu_131_p_din1 = grp_fu_174_p1;
assign grp_fu_131_p_opcode = 2'd0;
assign grp_fu_135_p_ce = 1'b1;
assign grp_fu_135_p_din0 = grp_fu_178_p0;
assign grp_fu_135_p_din1 = grp_fu_178_p1;
assign icmp_ln20_fu_226_p2 = ((indvar_flatten21_fu_84 == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_253_p2 = ((indvar_flatten7_fu_76 == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_313_p3 = ((or_ln5_fu_289_p2[0:0] == 1'b1) ? select_ln5_1_fu_267_p3 : 7'd0);
assign lshr_ln5_1_fu_375_p4 = {{select_ln21_fu_350_p3[5:1]}};
assign or_ln5_fu_289_p2 = (xor_ln23_fu_283_p2 | icmp_ln21_fu_253_p2);
assign select_ln20_fu_295_p3 = ((icmp_ln21_fu_253_p2[0:0] == 1'b1) ? add_ln20_fu_247_p2 : i_fu_80);
assign select_ln21_1_fu_327_p3 = ((icmp_ln21_fu_253_p2[0:0] == 1'b1) ? 13'd1 : add_ln21_1_fu_321_p2);
assign select_ln21_fu_350_p3 = ((or_ln5_reg_568[0:0] == 1'b1) ? select_ln5_reg_563 : add_ln21_reg_580);
assign select_ln24_fu_492_p3 = ((trunc_ln21_1_reg_597[0:0] == 1'b1) ? buff_C_out_1_q0 : buff_C_out_q0);
assign select_ln5_1_fu_267_p3 = ((icmp_ln21_fu_253_p2[0:0] == 1'b1) ? 7'd0 : k_fu_68);
assign select_ln5_fu_259_p3 = ((icmp_ln21_fu_253_p2[0:0] == 1'b1) ? 7'd0 : j_fu_72);
assign tmp_2_fu_364_p3 = {{trunc_ln21_reg_573}, {6'd0}};
assign tmp_3_cast_fu_392_p1 = tmp_3_fu_385_p3;
assign tmp_3_fu_385_p3 = {{trunc_ln21_reg_573}, {lshr_ln5_1_fu_375_p4}};
assign tmp_4_fu_398_p3 = {{empty_10_fu_355_p1}, {6'd0}};
assign tmp_5_fu_431_p4 = {{k_mid2_reg_585[5:1]}};
assign tmp_6_fu_440_p4 = {{{trunc_ln21_reg_573}, {tmp_5_fu_431_p4}}, {1'd1}};
assign tmp_7_fu_454_p4 = {{{empty_10_fu_355_p1}, {tmp_5_fu_431_p4}}, {1'd1}};
assign tmp_fu_275_p3 = k_fu_68[32'd6];
assign trunc_ln21_1_fu_371_p1 = select_ln21_fu_350_p3[0:0];
assign trunc_ln21_fu_303_p1 = select_ln20_fu_295_p3[5:0];
assign xor_ln23_fu_283_p2 = (tmp_fu_275_p3 ^ 1'd1);
assign zext_ln24_1_fu_415_p1 = add_ln24_fu_409_p2;
assign zext_ln24_2_fu_449_p1 = tmp_6_fu_440_p4;
assign zext_ln24_3_fu_464_p1 = tmp_7_fu_454_p4;
assign zext_ln24_4_fu_426_p1 = add_ln24_1_fu_420_p2;
assign zext_ln24_fu_406_p1 = k_mid2_reg_585;
endmodule 