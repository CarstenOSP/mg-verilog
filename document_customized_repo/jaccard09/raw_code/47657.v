module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_301_p_din0,grp_fu_301_p_din1,grp_fu_301_p_opcode,grp_fu_301_p_dout0,grp_fu_301_p_ce,grp_fu_578_p_din0,grp_fu_578_p_din1,grp_fu_578_p_opcode,grp_fu_578_p_dout0,grp_fu_578_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_301_p_din0;
output  [63:0] grp_fu_301_p_din1;
output  [1:0] grp_fu_301_p_opcode;
input  [63:0] grp_fu_301_p_dout0;
output   grp_fu_301_p_ce;
output  [63:0] grp_fu_578_p_din0;
output  [63:0] grp_fu_578_p_din1;
output  [1:0] grp_fu_578_p_opcode;
input  [63:0] grp_fu_578_p_dout0;
output   grp_fu_578_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_810;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_358;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_362;
reg   [63:0] reg_366;
reg   [63:0] reg_370;
reg   [63:0] reg_374;
reg   [63:0] reg_380;
wire   [11:0] zext_ln13_cast_fu_386_p1;
reg   [11:0] zext_ln13_cast_reg_794;
reg   [6:0] s_1_reg_803;
reg   [0:0] tmp_reg_810_pp0_iter1_reg;
reg   [0:0] tmp_reg_810_pp0_iter2_reg;
wire   [3:0] lshr_ln9_fu_411_p4;
reg   [3:0] lshr_ln9_reg_814;
reg   [3:0] lshr_ln9_reg_814_pp0_iter1_reg;
reg   [3:0] lshr_ln9_reg_814_pp0_iter2_reg;
wire   [63:0] bitcast_ln14_fu_534_p1;
wire   [63:0] bitcast_ln14_1_fu_539_p1;
wire   [63:0] bitcast_ln14_2_fu_544_p1;
wire   [63:0] bitcast_ln14_3_fu_549_p1;
wire   [2:0] tmp_35_fu_554_p4;
reg   [2:0] tmp_35_reg_883;
reg   [2:0] tmp_35_reg_883_pp0_iter1_reg;
reg   [2:0] tmp_35_reg_883_pp0_iter2_reg;
wire   [63:0] bitcast_ln14_4_fu_636_p1;
wire   [63:0] bitcast_ln14_5_fu_641_p1;
wire   [63:0] bitcast_ln14_6_fu_646_p1;
wire   [63:0] bitcast_ln14_7_fu_651_p1;
wire   [63:0] bitcast_ln14_8_fu_724_p1;
wire   [63:0] bitcast_ln14_9_fu_729_p1;
wire   [63:0] bitcast_ln14_10_fu_734_p1;
wire   [63:0] bitcast_ln14_11_fu_739_p1;
wire   [63:0] bitcast_ln14_12_fu_744_p1;
wire   [63:0] bitcast_ln14_13_fu_749_p1;
wire   [63:0] bitcast_ln14_14_fu_754_p1;
wire   [63:0] bitcast_ln14_15_fu_759_p1;
wire   [63:0] zext_ln9_fu_764_p1;
reg   [63:0] zext_ln9_reg_992;
wire   [63:0] zext_ln14_10_fu_776_p1;
reg   [63:0] zext_ln14_10_reg_998;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_1_fu_406_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_429_p1;
wire   [63:0] zext_ln14_1_fu_452_p1;
wire   [63:0] zext_ln14_2_fu_471_p1;
wire   [63:0] zext_ln14_3_fu_483_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_500_p1;
wire   [63:0] zext_ln14_5_fu_512_p1;
wire   [63:0] zext_ln14_6_fu_529_p1;
wire   [63:0] zext_ln14_8_fu_571_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_585_p1;
wire   [63:0] zext_ln14_12_fu_609_p1;
wire   [63:0] zext_ln14_9_fu_631_p1;
wire   [63:0] zext_ln14_14_fu_663_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_680_p1;
wire   [63:0] zext_ln14_15_fu_692_p1;
wire   [63:0] zext_ln14_13_fu_709_p1;
reg   [6:0] s_fu_104;
wire   [6:0] add_ln13_fu_714_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_350_p0;
reg   [63:0] grp_fu_350_p1;
reg   [63:0] grp_fu_354_p0;
reg   [63:0] grp_fu_354_p1;
wire   [11:0] or_ln_fu_421_p3;
wire   [4:0] tmp_s_fu_434_p4;
wire   [5:0] or_ln1_fu_444_p3;
wire   [11:0] shl_ln_fu_457_p3;
wire   [11:0] add_ln14_fu_465_p2;
wire   [5:0] or_ln13_1_fu_476_p3;
wire   [11:0] shl_ln14_1_fu_488_p3;
wire   [11:0] add_ln14_1_fu_495_p2;
wire   [5:0] or_ln13_2_fu_505_p3;
wire   [11:0] shl_ln14_2_fu_517_p3;
wire   [11:0] add_ln14_2_fu_524_p2;
wire   [5:0] or_ln13_3_fu_563_p3;
wire   [11:0] or_ln14_2_fu_576_p4;
wire   [0:0] tmp_32_fu_590_p3;
wire   [5:0] or_ln13_4_fu_597_p5;
wire   [11:0] shl_ln14_3_fu_614_p5;
wire   [11:0] add_ln14_3_fu_626_p2;
wire   [5:0] or_ln13_5_fu_656_p3;
wire   [11:0] shl_ln14_4_fu_668_p3;
wire   [11:0] add_ln14_4_fu_675_p2;
wire   [5:0] or_ln13_6_fu_685_p3;
wire   [11:0] shl_ln14_5_fu_697_p3;
wire   [11:0] add_ln14_5_fu_704_p2;
wire   [3:0] or_ln14_1_fu_769_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_104 <= 7'd0;
    end else if (((tmp_reg_810 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_104 <= add_ln13_fu_714_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln9_reg_814 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_814_pp0_iter1_reg <= lshr_ln9_reg_814;
        lshr_ln9_reg_814_pp0_iter2_reg <= lshr_ln9_reg_814_pp0_iter1_reg;
        s_1_reg_803 <= ap_sig_allocacmp_s_1;
        tmp_reg_810 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_810_pp0_iter1_reg <= tmp_reg_810;
        tmp_reg_810_pp0_iter2_reg <= tmp_reg_810_pp0_iter1_reg;
        zext_ln13_cast_reg_794[7 : 0] <= zext_ln13_cast_fu_386_p1[7 : 0];
        zext_ln14_10_reg_998[3 : 1] <= zext_ln14_10_fu_776_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_358 <= init_q1;
        reg_362 <= emission_q1;
        reg_366 <= init_q0;
        reg_370 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_374 <= grp_fu_301_p_dout0;
        reg_380 <= grp_fu_578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_35_reg_883 <= {{s_1_reg_803[5:3]}};
        tmp_35_reg_883_pp0_iter1_reg <= tmp_35_reg_883;
        tmp_35_reg_883_pp0_iter2_reg <= tmp_35_reg_883_pp0_iter1_reg;
        zext_ln9_reg_992[3 : 0] <= zext_ln9_fu_764_p1[3 : 0];
    end
end
always @ (*) begin
    if (((tmp_reg_810 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_810_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_471_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_680_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_585_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_500_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_429_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p0 = bitcast_ln14_12_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p0 = bitcast_ln14_8_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p0 = bitcast_ln14_4_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p0 = bitcast_ln14_fu_534_p1;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p1 = bitcast_ln14_13_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p1 = bitcast_ln14_9_fu_729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p1 = bitcast_ln14_5_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p1 = bitcast_ln14_1_fu_539_p1;
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p0 = bitcast_ln14_14_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p0 = bitcast_ln14_10_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p0 = bitcast_ln14_6_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p0 = bitcast_ln14_2_fu_544_p1;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p1 = bitcast_ln14_15_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p1 = bitcast_ln14_11_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p1 = bitcast_ln14_7_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p1 = bitcast_ln14_3_fu_549_p1;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_692_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_12_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_452_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_14_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_571_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_406_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_10_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_fu_764_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_10_reg_998;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_992;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_10_reg_998;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_992;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_10_fu_776_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_fu_764_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_714_p2 = (s_1_reg_803 + 7'd8);
assign add_ln14_1_fu_495_p2 = (shl_ln14_1_fu_488_p3 + zext_ln13_cast_reg_794);
assign add_ln14_2_fu_524_p2 = (shl_ln14_2_fu_517_p3 + zext_ln13_cast_reg_794);
assign add_ln14_3_fu_626_p2 = (shl_ln14_3_fu_614_p5 + zext_ln13_cast_reg_794);
assign add_ln14_4_fu_675_p2 = (shl_ln14_4_fu_668_p3 + zext_ln13_cast_reg_794);
assign add_ln14_5_fu_704_p2 = (shl_ln14_5_fu_697_p3 + zext_ln13_cast_reg_794);
assign add_ln14_fu_465_p2 = (shl_ln_fu_457_p3 + zext_ln13_cast_fu_386_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_734_p1 = reg_366;
assign bitcast_ln14_11_fu_739_p1 = reg_370;
assign bitcast_ln14_12_fu_744_p1 = reg_358;
assign bitcast_ln14_13_fu_749_p1 = reg_362;
assign bitcast_ln14_14_fu_754_p1 = reg_366;
assign bitcast_ln14_15_fu_759_p1 = reg_370;
assign bitcast_ln14_1_fu_539_p1 = reg_362;
assign bitcast_ln14_2_fu_544_p1 = reg_366;
assign bitcast_ln14_3_fu_549_p1 = reg_370;
assign bitcast_ln14_4_fu_636_p1 = reg_358;
assign bitcast_ln14_5_fu_641_p1 = reg_362;
assign bitcast_ln14_6_fu_646_p1 = reg_366;
assign bitcast_ln14_7_fu_651_p1 = reg_370;
assign bitcast_ln14_8_fu_724_p1 = reg_358;
assign bitcast_ln14_9_fu_729_p1 = reg_362;
assign bitcast_ln14_fu_534_p1 = reg_358;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_301_p_ce = 1'b1;
assign grp_fu_301_p_din0 = grp_fu_350_p0;
assign grp_fu_301_p_din1 = grp_fu_350_p1;
assign grp_fu_301_p_opcode = 2'd0;
assign grp_fu_578_p_ce = 1'b1;
assign grp_fu_578_p_din0 = grp_fu_354_p0;
assign grp_fu_578_p_din1 = grp_fu_354_p1;
assign grp_fu_578_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_380;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_374;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_380;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_374;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_411_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln13_1_fu_476_p3 = {{lshr_ln9_reg_814}, {2'd2}};
assign or_ln13_2_fu_505_p3 = {{lshr_ln9_reg_814}, {2'd3}};
assign or_ln13_3_fu_563_p3 = {{tmp_35_fu_554_p4}, {3'd4}};
assign or_ln13_4_fu_597_p5 = {{{{tmp_35_fu_554_p4}, {1'd1}}, {tmp_32_fu_590_p3}}, {1'd1}};
assign or_ln13_5_fu_656_p3 = {{tmp_35_reg_883}, {3'd6}};
assign or_ln13_6_fu_685_p3 = {{tmp_35_reg_883}, {3'd7}};
assign or_ln14_1_fu_769_p3 = {{tmp_35_reg_883_pp0_iter2_reg}, {1'd1}};
assign or_ln14_2_fu_576_p4 = {{{tmp_35_fu_554_p4}, {1'd1}}, {obs_load}};
assign or_ln1_fu_444_p3 = {{tmp_s_fu_434_p4}, {1'd1}};
assign or_ln_fu_421_p3 = {{lshr_ln9_fu_411_p4}, {obs_load}};
assign shl_ln14_1_fu_488_p3 = {{lshr_ln9_reg_814}, {8'd128}};
assign shl_ln14_2_fu_517_p3 = {{lshr_ln9_reg_814}, {8'd192}};
assign shl_ln14_3_fu_614_p5 = {{{{tmp_35_fu_554_p4}, {1'd1}}, {tmp_32_fu_590_p3}}, {7'd64}};
assign shl_ln14_4_fu_668_p3 = {{tmp_35_reg_883}, {9'd384}};
assign shl_ln14_5_fu_697_p3 = {{tmp_35_reg_883}, {9'd448}};
assign shl_ln_fu_457_p3 = {{tmp_s_fu_434_p4}, {7'd64}};
assign tmp_32_fu_590_p3 = s_1_reg_803[32'd1];
assign tmp_35_fu_554_p4 = {{s_1_reg_803[5:3]}};
assign tmp_s_fu_434_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_406_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_386_p1 = zext_ln13;
assign zext_ln14_10_fu_776_p1 = or_ln14_1_fu_769_p3;
assign zext_ln14_11_fu_680_p1 = add_ln14_4_fu_675_p2;
assign zext_ln14_12_fu_609_p1 = or_ln13_4_fu_597_p5;
assign zext_ln14_13_fu_709_p1 = add_ln14_5_fu_704_p2;
assign zext_ln14_14_fu_663_p1 = or_ln13_5_fu_656_p3;
assign zext_ln14_15_fu_692_p1 = or_ln13_6_fu_685_p3;
assign zext_ln14_1_fu_452_p1 = or_ln1_fu_444_p3;
assign zext_ln14_2_fu_471_p1 = add_ln14_fu_465_p2;
assign zext_ln14_3_fu_483_p1 = or_ln13_1_fu_476_p3;
assign zext_ln14_4_fu_500_p1 = add_ln14_1_fu_495_p2;
assign zext_ln14_5_fu_512_p1 = or_ln13_2_fu_505_p3;
assign zext_ln14_6_fu_529_p1 = add_ln14_2_fu_524_p2;
assign zext_ln14_7_fu_585_p1 = or_ln14_2_fu_576_p4;
assign zext_ln14_8_fu_571_p1 = or_ln13_3_fu_563_p3;
assign zext_ln14_9_fu_631_p1 = add_ln14_3_fu_626_p2;
assign zext_ln14_fu_429_p1 = or_ln_fu_421_p3;
assign zext_ln9_fu_764_p1 = lshr_ln9_reg_814_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_794[11:8] <= 4'b0000;
    zext_ln9_reg_992[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_10_reg_998[0] <= 1'b1;
    zext_ln14_10_reg_998[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 