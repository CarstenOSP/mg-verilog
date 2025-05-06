
module backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,norm_8);  
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
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
input  [63:0] norm_8;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln166_reg_378;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_131;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_127_p2;
reg   [63:0] reg_135;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln166_fu_157_p2;
reg   [0:0] icmp_ln166_reg_378_pp0_iter1_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter2_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter3_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter4_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter5_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter6_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter7_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter8_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter9_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter10_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter11_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter12_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter13_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter14_reg;
reg   [0:0] icmp_ln166_reg_378_pp0_iter15_reg;
reg   [6:0] i_6_load_reg_382;
wire   [6:0] add_ln166_1_fu_172_p2;
reg   [6:0] add_ln166_1_reg_387;
wire   [6:0] select_ln121_fu_194_p3;
reg   [6:0] select_ln121_reg_392;
wire   [5:0] empty_fu_208_p1;
reg   [5:0] empty_reg_397;
reg   [11:0] weights2_addr_reg_403;
reg   [11:0] weights2_addr_reg_403_pp0_iter1_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter2_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter3_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter4_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter5_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter6_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter7_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter8_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter9_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter10_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter11_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter12_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter13_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter14_reg;
reg   [11:0] weights2_addr_reg_403_pp0_iter15_reg;
reg   [11:0] weights2_addr_1_reg_408;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter1_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter2_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter3_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter4_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter5_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter6_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter7_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter8_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter9_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter10_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter11_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter12_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter13_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter14_reg;
reg   [11:0] weights2_addr_1_reg_408_pp0_iter15_reg;
reg   [3:0] tmp_23_reg_413;
wire   [0:0] trunc_ln168_fu_270_p1;
reg   [0:0] trunc_ln168_reg_419;
reg   [63:0] weights2_load_1_reg_424;
reg   [11:0] weights2_addr_2_reg_429;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter1_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter2_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter3_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter4_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter5_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter6_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter7_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter8_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter9_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter10_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter11_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter12_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter13_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter14_reg;
reg   [11:0] weights2_addr_2_reg_429_pp0_iter15_reg;
reg   [11:0] weights2_addr_3_reg_434;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter1_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter2_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter3_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter4_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter5_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter6_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter7_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter8_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter9_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter10_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter11_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter12_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter13_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter14_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter15_reg;
reg   [11:0] weights2_addr_3_reg_434_pp0_iter16_reg;
wire   [63:0] bitcast_ln168_fu_306_p1;
reg   [63:0] weights2_load_3_reg_444;
wire   [63:0] bitcast_ln168_2_fu_311_p1;
wire   [63:0] bitcast_ln168_4_fu_325_p1;
wire   [63:0] bitcast_ln168_6_fu_330_p1;
reg   [63:0] div131_1_reg_464;
reg   [63:0] div131_3_reg_469;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln168_fu_230_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_1_fu_255_p1;
wire   [63:0] zext_ln168_2_fu_288_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_3_fu_301_p1;
reg   [6:0] j_fu_68;
wire   [6:0] add_ln167_fu_315_p2;
wire    ap_loop_init;
reg   [6:0] i_6_fu_72;
wire   [6:0] select_ln166_fu_202_p3;
reg   [6:0] ap_sig_allocacmp_i_6_load;
wire    ap_block_pp0_stage0;
reg   [10:0] indvar_flatten20_fu_76;
wire   [10:0] add_ln166_fu_163_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we1_local;
reg   [63:0] weights2_d1_local;
wire   [63:0] bitcast_ln168_1_fu_334_p1;
wire    ap_block_pp0_stage3;
reg    weights2_we0_local;
reg   [63:0] weights2_d0_local;
wire   [63:0] bitcast_ln168_3_fu_339_p1;
wire   [63:0] bitcast_ln168_5_fu_343_p1;
wire   [63:0] bitcast_ln168_7_fu_348_p1;
reg   [63:0] grp_fu_127_p0;
wire   [0:0] tmp_fu_186_p3;
wire   [11:0] zext_ln167_fu_220_p1;
wire   [11:0] tmp_s_fu_212_p3;
wire   [11:0] add_ln168_fu_224_p2;
wire   [4:0] tmp_22_fu_235_p4;
wire   [11:0] add_ln168_1_fu_245_p4;
wire   [11:0] add_ln168_2_fu_279_p5;
wire   [11:0] add_ln168_3_fu_293_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter16_stage0;
reg    ap_idle_pp0_0to15;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to17;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_68 = 7'd0;
#0 i_6_fu_72 = 7'd0;
#0 indvar_flatten20_fu_76 = 11'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U1512(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_127_p0),.din1(norm_8),.ce(1'b1),.dout(grp_fu_127_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter17 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_fu_72 <= 7'd0;
    end else if (((icmp_ln166_reg_378 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_6_fu_72 <= select_ln166_fu_202_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_157_p2 == 1'd0))) begin
            indvar_flatten20_fu_76 <= add_ln166_fu_163_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_76 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_68 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_68 <= add_ln167_fu_315_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln166_1_reg_387 <= add_ln166_1_fu_172_p2;
        i_6_load_reg_382 <= ap_sig_allocacmp_i_6_load;
        icmp_ln166_reg_378 <= icmp_ln166_fu_157_p2;
        icmp_ln166_reg_378_pp0_iter10_reg <= icmp_ln166_reg_378_pp0_iter9_reg;
        icmp_ln166_reg_378_pp0_iter11_reg <= icmp_ln166_reg_378_pp0_iter10_reg;
        icmp_ln166_reg_378_pp0_iter12_reg <= icmp_ln166_reg_378_pp0_iter11_reg;
        icmp_ln166_reg_378_pp0_iter13_reg <= icmp_ln166_reg_378_pp0_iter12_reg;
        icmp_ln166_reg_378_pp0_iter14_reg <= icmp_ln166_reg_378_pp0_iter13_reg;
        icmp_ln166_reg_378_pp0_iter15_reg <= icmp_ln166_reg_378_pp0_iter14_reg;
        icmp_ln166_reg_378_pp0_iter1_reg <= icmp_ln166_reg_378;
        icmp_ln166_reg_378_pp0_iter2_reg <= icmp_ln166_reg_378_pp0_iter1_reg;
        icmp_ln166_reg_378_pp0_iter3_reg <= icmp_ln166_reg_378_pp0_iter2_reg;
        icmp_ln166_reg_378_pp0_iter4_reg <= icmp_ln166_reg_378_pp0_iter3_reg;
        icmp_ln166_reg_378_pp0_iter5_reg <= icmp_ln166_reg_378_pp0_iter4_reg;
        icmp_ln166_reg_378_pp0_iter6_reg <= icmp_ln166_reg_378_pp0_iter5_reg;
        icmp_ln166_reg_378_pp0_iter7_reg <= icmp_ln166_reg_378_pp0_iter6_reg;
        icmp_ln166_reg_378_pp0_iter8_reg <= icmp_ln166_reg_378_pp0_iter7_reg;
        icmp_ln166_reg_378_pp0_iter9_reg <= icmp_ln166_reg_378_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div131_1_reg_464 <= grp_fu_127_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div131_3_reg_469 <= grp_fu_127_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_397 <= empty_fu_208_p1;
        select_ln121_reg_392 <= select_ln121_fu_194_p3;
        tmp_23_reg_413 <= {{select_ln121_fu_194_p3[5:2]}};
        trunc_ln168_reg_419 <= trunc_ln168_fu_270_p1;
        weights2_addr_1_reg_408[11 : 1] <= zext_ln168_1_fu_255_p1[11 : 1];
        weights2_addr_1_reg_408_pp0_iter10_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter9_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter11_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter10_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter12_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter11_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter13_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter12_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter14_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter13_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter15_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter14_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter1_reg[11 : 1] <= weights2_addr_1_reg_408[11 : 1];
        weights2_addr_1_reg_408_pp0_iter2_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter1_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter3_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter2_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter4_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter3_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter5_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter4_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter6_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter5_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter7_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter6_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter8_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter7_reg[11 : 1];
        weights2_addr_1_reg_408_pp0_iter9_reg[11 : 1] <= weights2_addr_1_reg_408_pp0_iter8_reg[11 : 1];
        weights2_addr_reg_403 <= zext_ln168_fu_230_p1;
        weights2_addr_reg_403_pp0_iter10_reg <= weights2_addr_reg_403_pp0_iter9_reg;
        weights2_addr_reg_403_pp0_iter11_reg <= weights2_addr_reg_403_pp0_iter10_reg;
        weights2_addr_reg_403_pp0_iter12_reg <= weights2_addr_reg_403_pp0_iter11_reg;
        weights2_addr_reg_403_pp0_iter13_reg <= weights2_addr_reg_403_pp0_iter12_reg;
        weights2_addr_reg_403_pp0_iter14_reg <= weights2_addr_reg_403_pp0_iter13_reg;
        weights2_addr_reg_403_pp0_iter15_reg <= weights2_addr_reg_403_pp0_iter14_reg;
        weights2_addr_reg_403_pp0_iter1_reg <= weights2_addr_reg_403;
        weights2_addr_reg_403_pp0_iter2_reg <= weights2_addr_reg_403_pp0_iter1_reg;
        weights2_addr_reg_403_pp0_iter3_reg <= weights2_addr_reg_403_pp0_iter2_reg;
        weights2_addr_reg_403_pp0_iter4_reg <= weights2_addr_reg_403_pp0_iter3_reg;
        weights2_addr_reg_403_pp0_iter5_reg <= weights2_addr_reg_403_pp0_iter4_reg;
        weights2_addr_reg_403_pp0_iter6_reg <= weights2_addr_reg_403_pp0_iter5_reg;
        weights2_addr_reg_403_pp0_iter7_reg <= weights2_addr_reg_403_pp0_iter6_reg;
        weights2_addr_reg_403_pp0_iter8_reg <= weights2_addr_reg_403_pp0_iter7_reg;
        weights2_addr_reg_403_pp0_iter9_reg <= weights2_addr_reg_403_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_131 <= weights2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_135 <= grp_fu_127_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_addr_2_reg_429[0] <= zext_ln168_2_fu_288_p1[0];
weights2_addr_2_reg_429[11 : 2] <= zext_ln168_2_fu_288_p1[11 : 2];
        weights2_addr_2_reg_429_pp0_iter10_reg[0] <= weights2_addr_2_reg_429_pp0_iter9_reg[0];
weights2_addr_2_reg_429_pp0_iter10_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter9_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter11_reg[0] <= weights2_addr_2_reg_429_pp0_iter10_reg[0];
weights2_addr_2_reg_429_pp0_iter11_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter10_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter12_reg[0] <= weights2_addr_2_reg_429_pp0_iter11_reg[0];
weights2_addr_2_reg_429_pp0_iter12_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter11_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter13_reg[0] <= weights2_addr_2_reg_429_pp0_iter12_reg[0];
weights2_addr_2_reg_429_pp0_iter13_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter12_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter14_reg[0] <= weights2_addr_2_reg_429_pp0_iter13_reg[0];
weights2_addr_2_reg_429_pp0_iter14_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter13_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter15_reg[0] <= weights2_addr_2_reg_429_pp0_iter14_reg[0];
weights2_addr_2_reg_429_pp0_iter15_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter14_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter1_reg[0] <= weights2_addr_2_reg_429[0];
weights2_addr_2_reg_429_pp0_iter1_reg[11 : 2] <= weights2_addr_2_reg_429[11 : 2];
        weights2_addr_2_reg_429_pp0_iter2_reg[0] <= weights2_addr_2_reg_429_pp0_iter1_reg[0];
weights2_addr_2_reg_429_pp0_iter2_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter1_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter3_reg[0] <= weights2_addr_2_reg_429_pp0_iter2_reg[0];
weights2_addr_2_reg_429_pp0_iter3_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter2_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter4_reg[0] <= weights2_addr_2_reg_429_pp0_iter3_reg[0];
weights2_addr_2_reg_429_pp0_iter4_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter3_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter5_reg[0] <= weights2_addr_2_reg_429_pp0_iter4_reg[0];
weights2_addr_2_reg_429_pp0_iter5_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter4_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter6_reg[0] <= weights2_addr_2_reg_429_pp0_iter5_reg[0];
weights2_addr_2_reg_429_pp0_iter6_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter5_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter7_reg[0] <= weights2_addr_2_reg_429_pp0_iter6_reg[0];
weights2_addr_2_reg_429_pp0_iter7_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter6_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter8_reg[0] <= weights2_addr_2_reg_429_pp0_iter7_reg[0];
weights2_addr_2_reg_429_pp0_iter8_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter7_reg[11 : 2];
        weights2_addr_2_reg_429_pp0_iter9_reg[0] <= weights2_addr_2_reg_429_pp0_iter8_reg[0];
weights2_addr_2_reg_429_pp0_iter9_reg[11 : 2] <= weights2_addr_2_reg_429_pp0_iter8_reg[11 : 2];
        weights2_addr_3_reg_434[11 : 2] <= zext_ln168_3_fu_301_p1[11 : 2];
        weights2_addr_3_reg_434_pp0_iter10_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter9_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter11_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter10_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter12_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter11_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter13_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter12_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter14_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter13_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter15_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter14_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter16_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter15_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter1_reg[11 : 2] <= weights2_addr_3_reg_434[11 : 2];
        weights2_addr_3_reg_434_pp0_iter2_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter1_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter3_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter2_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter4_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter3_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter5_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter4_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter6_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter5_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter7_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter6_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter8_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter7_reg[11 : 2];
        weights2_addr_3_reg_434_pp0_iter9_reg[11 : 2] <= weights2_addr_3_reg_434_pp0_iter8_reg[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_load_1_reg_424 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_load_3_reg_444 <= weights2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_378 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln166_reg_378_pp0_iter15_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to15 = 1'b1;
    end else begin
        ap_idle_pp0_0to15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
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
        ap_sig_allocacmp_i_6_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6_load = i_6_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_127_p0 = bitcast_ln168_6_fu_330_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_127_p0 = bitcast_ln168_4_fu_325_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_127_p0 = bitcast_ln168_2_fu_311_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_127_p0 = bitcast_ln168_fu_306_p1;
    end else begin
        grp_fu_127_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address0_local = weights2_addr_3_reg_434_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address0_local = weights2_addr_1_reg_408_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address0_local = zext_ln168_3_fu_301_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address0_local = zext_ln168_1_fu_255_p1;
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address1_local = weights2_addr_2_reg_429_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address1_local = weights2_addr_reg_403_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address1_local = zext_ln168_2_fu_288_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address1_local = zext_ln168_fu_230_p1;
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d0_local = bitcast_ln168_7_fu_348_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_d0_local = bitcast_ln168_3_fu_339_p1;
    end else begin
        weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d1_local = bitcast_ln168_5_fu_343_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_d1_local = bitcast_ln168_1_fu_334_p1;
    end else begin
        weights2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln166_1_fu_172_p2 = (ap_sig_allocacmp_i_6_load + 7'd1);
assign add_ln166_fu_163_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 11'd1);
assign add_ln167_fu_315_p2 = (select_ln121_reg_392 + 7'd4);
assign add_ln168_1_fu_245_p4 = {{{empty_fu_208_p1}, {tmp_22_fu_235_p4}}, {1'd1}};
assign add_ln168_2_fu_279_p5 = {{{{empty_reg_397}, {tmp_23_reg_413}}, {1'd1}}, {trunc_ln168_reg_419}};
assign add_ln168_3_fu_293_p4 = {{{empty_reg_397}, {tmp_23_reg_413}}, {2'd3}};
assign add_ln168_fu_224_p2 = (zext_ln167_fu_220_p1 + tmp_s_fu_212_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_1_fu_334_p1 = reg_135;
assign bitcast_ln168_2_fu_311_p1 = weights2_load_1_reg_424;
assign bitcast_ln168_3_fu_339_p1 = div131_1_reg_464;
assign bitcast_ln168_4_fu_325_p1 = reg_131;
assign bitcast_ln168_5_fu_343_p1 = reg_135;
assign bitcast_ln168_6_fu_330_p1 = weights2_load_3_reg_444;
assign bitcast_ln168_7_fu_348_p1 = div131_3_reg_469;
assign bitcast_ln168_fu_306_p1 = reg_131;
assign empty_fu_208_p1 = select_ln166_fu_202_p3[5:0];
assign icmp_ln166_fu_157_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 11'd1024) ? 1'b1 : 1'b0);
assign select_ln121_fu_194_p3 = ((tmp_fu_186_p3[0:0] == 1'b1) ? 7'd0 : j_fu_68);
assign select_ln166_fu_202_p3 = ((tmp_fu_186_p3[0:0] == 1'b1) ? add_ln166_1_reg_387 : i_6_load_reg_382);
assign tmp_22_fu_235_p4 = {{select_ln121_fu_194_p3[5:1]}};
assign tmp_fu_186_p3 = j_fu_68[32'd6];
assign tmp_s_fu_212_p3 = {{empty_fu_208_p1}, {6'd0}};
assign trunc_ln168_fu_270_p1 = select_ln121_fu_194_p3[0:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = weights2_d0_local;
assign weights2_d1 = weights2_d1_local;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln167_fu_220_p1 = select_ln121_fu_194_p3;
assign zext_ln168_1_fu_255_p1 = add_ln168_1_fu_245_p4;
assign zext_ln168_2_fu_288_p1 = add_ln168_2_fu_279_p5;
assign zext_ln168_3_fu_301_p1 = add_ln168_3_fu_293_p4;
assign zext_ln168_fu_230_p1 = add_ln168_fu_224_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_408[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter5_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter6_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter7_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter8_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter9_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter10_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter11_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter12_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter13_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter14_reg[0] <= 1'b1;
    weights2_addr_1_reg_408_pp0_iter15_reg[0] <= 1'b1;
    weights2_addr_2_reg_429[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter3_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter4_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter5_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter6_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter7_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter8_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter9_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter10_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter11_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter12_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter13_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter14_reg[1] <= 1'b1;
    weights2_addr_2_reg_429_pp0_iter15_reg[1] <= 1'b1;
    weights2_addr_3_reg_434[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter3_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter4_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter5_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter6_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter7_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter8_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter9_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter10_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter11_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter12_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter13_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter14_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter15_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_434_pp0_iter16_reg[1:0] <= 2'b11;
end
endmodule 
