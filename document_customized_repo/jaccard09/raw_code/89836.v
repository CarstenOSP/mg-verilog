module gesummv_gesummv_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,beta,buff_x_address0,buff_x_ce0,buff_x_q0,buff_x_2_address0,buff_x_2_ce0,buff_x_2_q0,buff_x_1_address0,buff_x_1_ce0,buff_x_1_q0,buff_x_3_address0,buff_x_3_ce0,buff_x_3_q0,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_we0,tmp2_1_d0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_we0,tmp2_2_d0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_we0,tmp2_3_d0,tmp2_3_q0,grp_fu_624_p_din0,grp_fu_624_p_din1,grp_fu_624_p_opcode,grp_fu_624_p_dout0,grp_fu_624_p_ce,grp_fu_628_p_din0,grp_fu_628_p_din1,grp_fu_628_p_dout0,grp_fu_628_p_ce); 
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
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
input  [31:0] beta;
output  [3:0] buff_x_address0;
output   buff_x_ce0;
input  [31:0] buff_x_q0;
output  [3:0] buff_x_2_address0;
output   buff_x_2_ce0;
input  [31:0] buff_x_2_q0;
output  [3:0] buff_x_1_address0;
output   buff_x_1_ce0;
input  [31:0] buff_x_1_q0;
output  [3:0] buff_x_3_address0;
output   buff_x_3_ce0;
input  [31:0] buff_x_3_q0;
output  [3:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
input  [31:0] tmp2_q0;
output  [3:0] tmp2_1_address0;
output   tmp2_1_ce0;
output   tmp2_1_we0;
output  [31:0] tmp2_1_d0;
input  [31:0] tmp2_1_q0;
output  [3:0] tmp2_2_address0;
output   tmp2_2_ce0;
output   tmp2_2_we0;
output  [31:0] tmp2_2_d0;
input  [31:0] tmp2_2_q0;
output  [3:0] tmp2_3_address0;
output   tmp2_3_ce0;
output   tmp2_3_we0;
output  [31:0] tmp2_3_d0;
input  [31:0] tmp2_3_q0;
output  [31:0] grp_fu_624_p_din0;
output  [31:0] grp_fu_624_p_din1;
output  [1:0] grp_fu_624_p_opcode;
input  [31:0] grp_fu_624_p_dout0;
output   grp_fu_624_p_ce;
output  [31:0] grp_fu_628_p_din0;
output  [31:0] grp_fu_628_p_din1;
input  [31:0] grp_fu_628_p_dout0;
output   grp_fu_628_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln31_reg_551;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_270;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_276;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln31_fu_303_p2;
wire   [6:0] select_ln6_fu_335_p3;
reg   [6:0] select_ln6_reg_555;
wire   [5:0] empty_fu_351_p1;
reg   [5:0] empty_reg_561;
wire   [0:0] first_iter_1_fu_355_p2;
reg   [0:0] first_iter_1_reg_566;
wire   [1:0] trunc_ln31_fu_361_p1;
reg   [1:0] trunc_ln31_reg_570;
reg   [1:0] trunc_ln31_reg_570_pp0_iter1_reg;
reg   [3:0] tmp2_addr_reg_575;
reg   [3:0] tmp2_addr_reg_575_pp0_iter1_reg;
reg   [3:0] tmp2_1_addr_reg_580;
reg   [3:0] tmp2_1_addr_reg_580_pp0_iter1_reg;
reg   [3:0] tmp2_2_addr_reg_585;
reg   [3:0] tmp2_2_addr_reg_585_pp0_iter1_reg;
reg   [3:0] tmp2_3_addr_reg_590;
reg   [3:0] tmp2_3_addr_reg_590_pp0_iter1_reg;
wire   [3:0] lshr_ln6_6_fu_383_p4;
reg   [3:0] lshr_ln6_6_reg_595;
wire   [31:0] tmp_1_fu_411_p11;
reg   [31:0] tmp_1_reg_620;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln33_1_fu_451_p2;
reg   [0:0] icmp_ln33_1_reg_645;
wire   [31:0] select_ln33_1_fu_457_p3;
reg   [31:0] select_ln33_1_reg_651;
wire   [31:0] select_ln33_3_fu_465_p3;
reg   [31:0] select_ln33_3_reg_656;
wire   [31:0] select_ln33_fu_473_p3;
reg   [31:0] select_ln33_reg_661;
wire   [31:0] select_ln33_2_fu_480_p3;
reg   [31:0] select_ln33_2_reg_666;
reg   [31:0] mul62_1_reg_671;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul65_1_reg_681;
reg   [0:0] tmp_2_reg_686;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_fu_375_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_393_p1;
wire   [63:0] zext_ln33_fu_443_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_84;
wire   [6:0] add_ln32_fu_495_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_2_fu_88;
wire   [6:0] select_ln31_fu_343_p3;
reg   [6:0] ap_sig_allocacmp_i_2_load;
reg   [11:0] indvar_flatten10_fu_92;
wire   [11:0] add_ln31_1_fu_309_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten10_load;
reg   [31:0] add6815_fu_96;
wire    ap_block_pp0_stage11;
reg    tmp2_ce0_local;
reg   [3:0] tmp2_address0_local;
reg    tmp2_we0_local;
wire    ap_block_pp0_stage10;
reg    tmp2_1_ce0_local;
reg   [3:0] tmp2_1_address0_local;
reg    tmp2_1_we0_local;
reg    tmp2_2_ce0_local;
reg   [3:0] tmp2_2_address0_local;
reg    tmp2_2_we0_local;
reg    tmp2_3_ce0_local;
reg   [3:0] tmp2_3_address0_local;
reg    tmp2_3_we0_local;
reg    buff_x_ce0_local;
reg    buff_x_2_ce0_local;
reg    buff_x_1_ce0_local;
reg    buff_x_3_ce0_local;
reg    buff_B_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_3_ce0_local;
reg   [31:0] grp_fu_262_p0;
reg   [31:0] grp_fu_262_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_266_p0;
reg   [31:0] grp_fu_266_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [0:0] tmp_fu_327_p3;
wire   [6:0] add_ln31_fu_321_p2;
wire   [3:0] lshr_ln6_2_fu_365_p4;
wire   [31:0] tmp_1_fu_411_p9;
wire   [9:0] tmp_7_fu_437_p3;
wire   [1:0] trunc_ln32_fu_434_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage14;
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
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_690;
wire   [1:0] tmp_1_fu_411_p1;
wire   [1:0] tmp_1_fu_411_p3;
wire  signed [1:0] tmp_1_fu_411_p5;
wire  signed [1:0] tmp_1_fu_411_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_84 = 7'd0;
#0 i_2_fu_88 = 7'd0;
#0 indvar_flatten10_fu_92 = 12'd0;
#0 add6815_fu_96 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U37(.din0(tmp2_q0),.din1(tmp2_1_q0),.din2(tmp2_2_q0),.din3(tmp2_3_q0),.def(tmp_1_fu_411_p9),.sel(trunc_ln31_reg_570),.dout(tmp_1_fu_411_p11));
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_690)) begin
            add6815_fu_96 <= tmp_1_reg_620;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            add6815_fu_96 <= reg_276;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln31_fu_303_p2 == 1'd0))) begin
            i_2_fu_88 <= select_ln31_fu_343_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln31_fu_303_p2 == 1'd0))) begin
            indvar_flatten10_fu_92 <= add_ln31_1_fu_309_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten10_fu_92 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_84 <= 7'd0;
    end else if (((icmp_ln31_reg_551 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_fu_84 <= add_ln32_fu_495_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_561 <= empty_fu_351_p1;
        first_iter_1_reg_566 <= first_iter_1_fu_355_p2;
        icmp_ln31_reg_551 <= icmp_ln31_fu_303_p2;
        lshr_ln6_6_reg_595 <= {{select_ln6_fu_335_p3[5:2]}};
        select_ln6_reg_555 <= select_ln6_fu_335_p3;
        tmp2_1_addr_reg_580 <= zext_ln6_fu_375_p1;
        tmp2_1_addr_reg_580_pp0_iter1_reg <= tmp2_1_addr_reg_580;
        tmp2_2_addr_reg_585 <= zext_ln6_fu_375_p1;
        tmp2_2_addr_reg_585_pp0_iter1_reg <= tmp2_2_addr_reg_585;
        tmp2_3_addr_reg_590 <= zext_ln6_fu_375_p1;
        tmp2_3_addr_reg_590_pp0_iter1_reg <= tmp2_3_addr_reg_590;
        tmp2_addr_reg_575 <= zext_ln6_fu_375_p1;
        tmp2_addr_reg_575_pp0_iter1_reg <= tmp2_addr_reg_575;
        trunc_ln31_reg_570 <= trunc_ln31_fu_361_p1;
        trunc_ln31_reg_570_pp0_iter1_reg <= trunc_ln31_reg_570;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln33_1_reg_645 <= icmp_ln33_1_fu_451_p2;
        select_ln33_1_reg_651 <= select_ln33_1_fu_457_p3;
        select_ln33_3_reg_656 <= select_ln33_3_fu_465_p3;
        tmp_1_reg_620 <= tmp_1_fu_411_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul62_1_reg_671 <= grp_fu_628_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul65_1_reg_681 <= grp_fu_628_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_270 <= grp_fu_628_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_276 <= grp_fu_624_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln33_2_reg_666 <= select_ln33_2_fu_480_p3;
        select_ln33_reg_661 <= select_ln33_fu_473_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_2_reg_686 <= add_ln32_fu_495_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln31_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2_load = i_2_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten10_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten10_load = indvar_flatten10_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_262_p0 = reg_276;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_262_p0 = add6815_fu_96;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_262_p1 = mul65_1_reg_681;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_262_p1 = reg_270;
    end else begin
        grp_fu_262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_266_p0 = mul62_1_reg_671;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_266_p0 = reg_270;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_266_p0 = select_ln33_2_reg_666;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_266_p0 = select_ln33_reg_661;
        end else begin
            grp_fu_266_p0 = 'bx;
        end
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_266_p1 = select_ln33_3_reg_656;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_266_p1 = select_ln33_1_reg_651;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_266_p1 = beta;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_1_address0_local = tmp2_1_addr_reg_580_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_address0_local = zext_ln6_fu_375_p1;
    end else begin
        tmp2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_686 == 1'd1) & (trunc_ln31_reg_570_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_2_address0_local = tmp2_2_addr_reg_585_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_address0_local = zext_ln6_fu_375_p1;
    end else begin
        tmp2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_686 == 1'd1) & (trunc_ln31_reg_570_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_2_we0_local = 1'b1;
    end else begin
        tmp2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_3_address0_local = tmp2_3_addr_reg_590_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_address0_local = zext_ln6_fu_375_p1;
    end else begin
        tmp2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_686 == 1'd1) & (trunc_ln31_reg_570_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_3_we0_local = 1'b1;
    end else begin
        tmp2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_address0_local = tmp2_addr_reg_575_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_address0_local = zext_ln6_fu_375_p1;
    end else begin
        tmp2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_686 == 1'd1) & (trunc_ln31_reg_570_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
assign add_ln31_1_fu_309_p2 = (ap_sig_allocacmp_indvar_flatten10_load + 12'd1);
assign add_ln31_fu_321_p2 = (ap_sig_allocacmp_i_2_load + 7'd1);
assign add_ln32_fu_495_p2 = (select_ln6_reg_555 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_690 = ((icmp_ln31_reg_551 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_566 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_B_1_address0 = zext_ln33_fu_443_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln33_fu_443_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln33_fu_443_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_address0 = zext_ln33_fu_443_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_x_1_address0 = zext_ln6_1_fu_393_p1;
assign buff_x_1_ce0 = buff_x_1_ce0_local;
assign buff_x_2_address0 = zext_ln6_1_fu_393_p1;
assign buff_x_2_ce0 = buff_x_2_ce0_local;
assign buff_x_3_address0 = zext_ln6_1_fu_393_p1;
assign buff_x_3_ce0 = buff_x_3_ce0_local;
assign buff_x_address0 = zext_ln6_1_fu_393_p1;
assign buff_x_ce0 = buff_x_ce0_local;
assign empty_fu_351_p1 = select_ln31_fu_343_p3[5:0];
assign first_iter_1_fu_355_p2 = ((select_ln6_fu_335_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_624_p_ce = 1'b1;
assign grp_fu_624_p_din0 = grp_fu_262_p0;
assign grp_fu_624_p_din1 = grp_fu_262_p1;
assign grp_fu_624_p_opcode = 2'd0;
assign grp_fu_628_p_ce = 1'b1;
assign grp_fu_628_p_din0 = grp_fu_266_p0;
assign grp_fu_628_p_din1 = grp_fu_266_p1;
assign icmp_ln31_fu_303_p2 = ((ap_sig_allocacmp_indvar_flatten10_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln33_1_fu_451_p2 = ((trunc_ln32_fu_434_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_2_fu_365_p4 = {{select_ln31_fu_343_p3[5:2]}};
assign lshr_ln6_6_fu_383_p4 = {{select_ln6_fu_335_p3[5:2]}};
assign select_ln31_fu_343_p3 = ((tmp_fu_327_p3[0:0] == 1'b1) ? add_ln31_fu_321_p2 : ap_sig_allocacmp_i_2_load);
assign select_ln33_1_fu_457_p3 = ((icmp_ln33_1_fu_451_p2[0:0] == 1'b1) ? buff_x_2_q0 : buff_x_q0);
assign select_ln33_2_fu_480_p3 = ((icmp_ln33_1_reg_645[0:0] == 1'b1) ? buff_B_3_q0 : buff_B_1_q0);
assign select_ln33_3_fu_465_p3 = ((icmp_ln33_1_fu_451_p2[0:0] == 1'b1) ? buff_x_3_q0 : buff_x_1_q0);
assign select_ln33_fu_473_p3 = ((icmp_ln33_1_reg_645[0:0] == 1'b1) ? buff_B_2_q0 : buff_B_q0);
assign select_ln6_fu_335_p3 = ((tmp_fu_327_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp2_1_address0 = tmp2_1_address0_local;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_d0 = reg_276;
assign tmp2_1_we0 = tmp2_1_we0_local;
assign tmp2_2_address0 = tmp2_2_address0_local;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_d0 = reg_276;
assign tmp2_2_we0 = tmp2_2_we0_local;
assign tmp2_3_address0 = tmp2_3_address0_local;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_d0 = reg_276;
assign tmp2_3_we0 = tmp2_3_we0_local;
assign tmp2_address0 = tmp2_address0_local;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = reg_276;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_1_fu_411_p9 = 'bx;
assign tmp_7_fu_437_p3 = {{empty_reg_561}, {lshr_ln6_6_reg_595}};
assign tmp_fu_327_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln31_fu_361_p1 = select_ln31_fu_343_p3[1:0];
assign trunc_ln32_fu_434_p1 = select_ln6_reg_555[1:0];
assign zext_ln33_fu_443_p1 = tmp_7_fu_437_p3;
assign zext_ln6_1_fu_393_p1 = lshr_ln6_6_fu_383_p4;
assign zext_ln6_fu_375_p1 = lshr_ln6_2_fu_365_p4;
endmodule 