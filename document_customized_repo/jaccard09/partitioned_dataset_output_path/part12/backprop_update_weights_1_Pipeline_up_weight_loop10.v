
module backprop_update_weights_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,norm_25);  
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
input  [63:0] norm_25;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_reg_538;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_193;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_197;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_202;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_189_p2;
reg   [63:0] reg_207;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_211;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_215;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [6:0] i_4_reg_533;
reg   [7:0] weights3_addr_reg_542;
reg   [7:0] weights3_addr_reg_542_pp0_iter1_reg;
reg   [7:0] weights3_addr_reg_542_pp0_iter2_reg;
reg   [7:0] weights3_addr_reg_542_pp0_iter3_reg;
reg   [7:0] weights3_addr_reg_542_pp0_iter4_reg;
reg   [7:0] weights3_addr_reg_542_pp0_iter5_reg;
reg   [7:0] weights3_addr_12_reg_547;
reg   [7:0] weights3_addr_12_reg_547_pp0_iter1_reg;
reg   [7:0] weights3_addr_12_reg_547_pp0_iter2_reg;
reg   [7:0] weights3_addr_12_reg_547_pp0_iter3_reg;
reg   [7:0] weights3_addr_12_reg_547_pp0_iter4_reg;
reg   [7:0] weights3_addr_12_reg_547_pp0_iter5_reg;
reg   [5:0] tmp_20_reg_552;
reg   [7:0] weights3_addr_13_reg_558;
reg   [7:0] weights3_addr_13_reg_558_pp0_iter1_reg;
reg   [7:0] weights3_addr_13_reg_558_pp0_iter2_reg;
reg   [7:0] weights3_addr_13_reg_558_pp0_iter3_reg;
reg   [7:0] weights3_addr_13_reg_558_pp0_iter4_reg;
reg   [7:0] weights3_addr_13_reg_558_pp0_iter5_reg;
wire   [7:0] tmp_21_fu_307_p3;
reg   [7:0] tmp_21_reg_563;
reg   [7:0] weights3_addr_14_reg_575;
reg   [7:0] weights3_addr_14_reg_575_pp0_iter1_reg;
reg   [7:0] weights3_addr_14_reg_575_pp0_iter2_reg;
reg   [7:0] weights3_addr_14_reg_575_pp0_iter3_reg;
reg   [7:0] weights3_addr_14_reg_575_pp0_iter4_reg;
reg   [7:0] weights3_addr_14_reg_575_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_fu_319_p1;
reg   [7:0] weights3_addr_15_reg_585;
reg   [7:0] weights3_addr_15_reg_585_pp0_iter1_reg;
reg   [7:0] weights3_addr_15_reg_585_pp0_iter2_reg;
reg   [7:0] weights3_addr_15_reg_585_pp0_iter3_reg;
reg   [7:0] weights3_addr_15_reg_585_pp0_iter4_reg;
reg   [7:0] weights3_addr_15_reg_585_pp0_iter5_reg;
reg   [7:0] weights3_addr_16_reg_590;
reg   [7:0] weights3_addr_16_reg_590_pp0_iter1_reg;
reg   [7:0] weights3_addr_16_reg_590_pp0_iter2_reg;
reg   [7:0] weights3_addr_16_reg_590_pp0_iter3_reg;
reg   [7:0] weights3_addr_16_reg_590_pp0_iter4_reg;
reg   [7:0] weights3_addr_16_reg_590_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_2_fu_344_p1;
reg   [63:0] weights3_load_16_reg_600;
reg   [7:0] weights3_addr_17_reg_605;
reg   [7:0] weights3_addr_17_reg_605_pp0_iter1_reg;
reg   [7:0] weights3_addr_17_reg_605_pp0_iter2_reg;
reg   [7:0] weights3_addr_17_reg_605_pp0_iter3_reg;
reg   [7:0] weights3_addr_17_reg_605_pp0_iter4_reg;
reg   [7:0] weights3_addr_17_reg_605_pp0_iter5_reg;
reg   [7:0] weights3_addr_18_reg_610;
reg   [7:0] weights3_addr_18_reg_610_pp0_iter1_reg;
reg   [7:0] weights3_addr_18_reg_610_pp0_iter2_reg;
reg   [7:0] weights3_addr_18_reg_610_pp0_iter3_reg;
reg   [7:0] weights3_addr_18_reg_610_pp0_iter4_reg;
reg   [7:0] weights3_addr_18_reg_610_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_4_fu_369_p1;
reg   [63:0] weights3_load_18_reg_620;
reg   [7:0] weights3_addr_19_reg_625;
reg   [7:0] weights3_addr_19_reg_625_pp0_iter1_reg;
reg   [7:0] weights3_addr_19_reg_625_pp0_iter2_reg;
reg   [7:0] weights3_addr_19_reg_625_pp0_iter3_reg;
reg   [7:0] weights3_addr_19_reg_625_pp0_iter4_reg;
reg   [7:0] weights3_addr_19_reg_625_pp0_iter5_reg;
reg   [7:0] weights3_addr_20_reg_630;
reg   [7:0] weights3_addr_20_reg_630_pp0_iter1_reg;
reg   [7:0] weights3_addr_20_reg_630_pp0_iter2_reg;
reg   [7:0] weights3_addr_20_reg_630_pp0_iter3_reg;
reg   [7:0] weights3_addr_20_reg_630_pp0_iter4_reg;
reg   [7:0] weights3_addr_20_reg_630_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_6_fu_394_p1;
reg   [63:0] weights3_load_20_reg_640;
reg   [7:0] weights3_addr_21_reg_645;
reg   [7:0] weights3_addr_21_reg_645_pp0_iter1_reg;
reg   [7:0] weights3_addr_21_reg_645_pp0_iter2_reg;
reg   [7:0] weights3_addr_21_reg_645_pp0_iter3_reg;
reg   [7:0] weights3_addr_21_reg_645_pp0_iter4_reg;
reg   [7:0] weights3_addr_21_reg_645_pp0_iter5_reg;
reg   [7:0] weights3_addr_22_reg_650;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter1_reg;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter2_reg;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter3_reg;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter4_reg;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter5_reg;
reg   [7:0] weights3_addr_22_reg_650_pp0_iter6_reg;
wire   [63:0] bitcast_ln194_8_fu_419_p1;
reg   [63:0] weights3_load_22_reg_660;
wire   [63:0] bitcast_ln194_10_fu_424_p1;
wire   [63:0] bitcast_ln194_12_fu_428_p1;
wire   [63:0] bitcast_ln194_14_fu_433_p1;
wire   [63:0] bitcast_ln194_16_fu_437_p1;
wire   [63:0] bitcast_ln194_18_fu_442_p1;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] bitcast_ln194_20_fu_456_p1;
wire   [63:0] bitcast_ln194_22_fu_461_p1;
reg   [63:0] div213_1_reg_700;
reg   [63:0] div213_1_1_reg_705;
reg   [63:0] div213_1_2_reg_710;
reg   [63:0] div213_3_2_reg_715;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_257_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_280_p1;
wire   [63:0] zext_ln194_2_fu_302_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_314_p1;
wire   [63:0] zext_ln194_4_fu_329_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_339_p1;
wire   [63:0] zext_ln194_6_fu_354_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_7_fu_364_p1;
wire   [63:0] zext_ln194_8_fu_379_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_9_fu_389_p1;
wire   [63:0] zext_ln194_10_fu_404_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_11_fu_414_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln192_fu_446_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln194_1_fu_465_p1;
wire    ap_block_pp0_stage6;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln194_3_fu_470_p1;
wire   [63:0] bitcast_ln194_5_fu_475_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln194_7_fu_480_p1;
wire   [63:0] bitcast_ln194_9_fu_484_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln194_11_fu_488_p1;
wire   [63:0] bitcast_ln194_13_fu_492_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln194_15_fu_497_p1;
wire   [63:0] bitcast_ln194_17_fu_502_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln194_19_fu_507_p1;
wire   [63:0] bitcast_ln194_21_fu_512_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln194_23_fu_517_p1;
reg   [63:0] grp_fu_189_p0;
wire   [5:0] empty_fu_239_p1;
wire   [7:0] p_shl_fu_243_p3;
wire   [7:0] zext_ln21_fu_235_p1;
wire   [7:0] empty_42_fu_251_p2;
wire   [6:0] tmp_s_fu_262_p4;
wire   [7:0] or_ln6_fu_272_p3;
wire   [7:0] or_ln194_1_fu_295_p3;
wire   [7:0] add_ln194_fu_324_p2;
wire   [7:0] add_ln194_1_fu_334_p2;
wire   [7:0] empty_43_fu_349_p2;
wire   [7:0] add_ln194_2_fu_359_p2;
wire   [7:0] add_ln194_3_fu_374_p2;
wire   [7:0] empty_44_fu_384_p2;
wire   [7:0] add_ln194_4_fu_399_p2;
wire   [7:0] add_ln194_5_fu_409_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U1736(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_189_p0),.din1(norm_25),.ce(1'b1),.dout(grp_fu_189_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd0;
    end else if (((tmp_reg_538 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_74 <= add_ln192_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_197 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_197 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_202 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_202 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_1_1_reg_705 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_1_2_reg_710 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_1_reg_700 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_3_2_reg_715 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_533 <= ap_sig_allocacmp_i_4;
        tmp_20_reg_552 <= {{empty_42_fu_251_p2[7:2]}};
        tmp_reg_538 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_addr_12_reg_547[7 : 1] <= zext_ln194_1_fu_280_p1[7 : 1];
        weights3_addr_12_reg_547_pp0_iter1_reg[7 : 1] <= weights3_addr_12_reg_547[7 : 1];
        weights3_addr_12_reg_547_pp0_iter2_reg[7 : 1] <= weights3_addr_12_reg_547_pp0_iter1_reg[7 : 1];
        weights3_addr_12_reg_547_pp0_iter3_reg[7 : 1] <= weights3_addr_12_reg_547_pp0_iter2_reg[7 : 1];
        weights3_addr_12_reg_547_pp0_iter4_reg[7 : 1] <= weights3_addr_12_reg_547_pp0_iter3_reg[7 : 1];
        weights3_addr_12_reg_547_pp0_iter5_reg[7 : 1] <= weights3_addr_12_reg_547_pp0_iter4_reg[7 : 1];
        weights3_addr_reg_542 <= zext_ln194_fu_257_p1;
        weights3_addr_reg_542_pp0_iter1_reg <= weights3_addr_reg_542;
        weights3_addr_reg_542_pp0_iter2_reg <= weights3_addr_reg_542_pp0_iter1_reg;
        weights3_addr_reg_542_pp0_iter3_reg <= weights3_addr_reg_542_pp0_iter2_reg;
        weights3_addr_reg_542_pp0_iter4_reg <= weights3_addr_reg_542_pp0_iter3_reg;
        weights3_addr_reg_542_pp0_iter5_reg <= weights3_addr_reg_542_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_193 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_207 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_211 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_215 <= grp_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_21_reg_563[7 : 2] <= tmp_21_fu_307_p3[7 : 2];
        weights3_addr_13_reg_558[7 : 2] <= zext_ln194_2_fu_302_p1[7 : 2];
        weights3_addr_13_reg_558_pp0_iter1_reg[7 : 2] <= weights3_addr_13_reg_558[7 : 2];
        weights3_addr_13_reg_558_pp0_iter2_reg[7 : 2] <= weights3_addr_13_reg_558_pp0_iter1_reg[7 : 2];
        weights3_addr_13_reg_558_pp0_iter3_reg[7 : 2] <= weights3_addr_13_reg_558_pp0_iter2_reg[7 : 2];
        weights3_addr_13_reg_558_pp0_iter4_reg[7 : 2] <= weights3_addr_13_reg_558_pp0_iter3_reg[7 : 2];
        weights3_addr_13_reg_558_pp0_iter5_reg[7 : 2] <= weights3_addr_13_reg_558_pp0_iter4_reg[7 : 2];
        weights3_addr_14_reg_575[7 : 2] <= zext_ln194_3_fu_314_p1[7 : 2];
        weights3_addr_14_reg_575_pp0_iter1_reg[7 : 2] <= weights3_addr_14_reg_575[7 : 2];
        weights3_addr_14_reg_575_pp0_iter2_reg[7 : 2] <= weights3_addr_14_reg_575_pp0_iter1_reg[7 : 2];
        weights3_addr_14_reg_575_pp0_iter3_reg[7 : 2] <= weights3_addr_14_reg_575_pp0_iter2_reg[7 : 2];
        weights3_addr_14_reg_575_pp0_iter4_reg[7 : 2] <= weights3_addr_14_reg_575_pp0_iter3_reg[7 : 2];
        weights3_addr_14_reg_575_pp0_iter5_reg[7 : 2] <= weights3_addr_14_reg_575_pp0_iter4_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_addr_15_reg_585[7 : 2] <= zext_ln194_4_fu_329_p1[7 : 2];
        weights3_addr_15_reg_585_pp0_iter1_reg[7 : 2] <= weights3_addr_15_reg_585[7 : 2];
        weights3_addr_15_reg_585_pp0_iter2_reg[7 : 2] <= weights3_addr_15_reg_585_pp0_iter1_reg[7 : 2];
        weights3_addr_15_reg_585_pp0_iter3_reg[7 : 2] <= weights3_addr_15_reg_585_pp0_iter2_reg[7 : 2];
        weights3_addr_15_reg_585_pp0_iter4_reg[7 : 2] <= weights3_addr_15_reg_585_pp0_iter3_reg[7 : 2];
        weights3_addr_15_reg_585_pp0_iter5_reg[7 : 2] <= weights3_addr_15_reg_585_pp0_iter4_reg[7 : 2];
        weights3_addr_16_reg_590[7 : 2] <= zext_ln194_5_fu_339_p1[7 : 2];
        weights3_addr_16_reg_590_pp0_iter1_reg[7 : 2] <= weights3_addr_16_reg_590[7 : 2];
        weights3_addr_16_reg_590_pp0_iter2_reg[7 : 2] <= weights3_addr_16_reg_590_pp0_iter1_reg[7 : 2];
        weights3_addr_16_reg_590_pp0_iter3_reg[7 : 2] <= weights3_addr_16_reg_590_pp0_iter2_reg[7 : 2];
        weights3_addr_16_reg_590_pp0_iter4_reg[7 : 2] <= weights3_addr_16_reg_590_pp0_iter3_reg[7 : 2];
        weights3_addr_16_reg_590_pp0_iter5_reg[7 : 2] <= weights3_addr_16_reg_590_pp0_iter4_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_addr_17_reg_605[7 : 2] <= zext_ln194_6_fu_354_p1[7 : 2];
        weights3_addr_17_reg_605_pp0_iter1_reg[7 : 2] <= weights3_addr_17_reg_605[7 : 2];
        weights3_addr_17_reg_605_pp0_iter2_reg[7 : 2] <= weights3_addr_17_reg_605_pp0_iter1_reg[7 : 2];
        weights3_addr_17_reg_605_pp0_iter3_reg[7 : 2] <= weights3_addr_17_reg_605_pp0_iter2_reg[7 : 2];
        weights3_addr_17_reg_605_pp0_iter4_reg[7 : 2] <= weights3_addr_17_reg_605_pp0_iter3_reg[7 : 2];
        weights3_addr_17_reg_605_pp0_iter5_reg[7 : 2] <= weights3_addr_17_reg_605_pp0_iter4_reg[7 : 2];
        weights3_addr_18_reg_610[7 : 2] <= zext_ln194_7_fu_364_p1[7 : 2];
        weights3_addr_18_reg_610_pp0_iter1_reg[7 : 2] <= weights3_addr_18_reg_610[7 : 2];
        weights3_addr_18_reg_610_pp0_iter2_reg[7 : 2] <= weights3_addr_18_reg_610_pp0_iter1_reg[7 : 2];
        weights3_addr_18_reg_610_pp0_iter3_reg[7 : 2] <= weights3_addr_18_reg_610_pp0_iter2_reg[7 : 2];
        weights3_addr_18_reg_610_pp0_iter4_reg[7 : 2] <= weights3_addr_18_reg_610_pp0_iter3_reg[7 : 2];
        weights3_addr_18_reg_610_pp0_iter5_reg[7 : 2] <= weights3_addr_18_reg_610_pp0_iter4_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_addr_19_reg_625[7 : 2] <= zext_ln194_8_fu_379_p1[7 : 2];
        weights3_addr_19_reg_625_pp0_iter1_reg[7 : 2] <= weights3_addr_19_reg_625[7 : 2];
        weights3_addr_19_reg_625_pp0_iter2_reg[7 : 2] <= weights3_addr_19_reg_625_pp0_iter1_reg[7 : 2];
        weights3_addr_19_reg_625_pp0_iter3_reg[7 : 2] <= weights3_addr_19_reg_625_pp0_iter2_reg[7 : 2];
        weights3_addr_19_reg_625_pp0_iter4_reg[7 : 2] <= weights3_addr_19_reg_625_pp0_iter3_reg[7 : 2];
        weights3_addr_19_reg_625_pp0_iter5_reg[7 : 2] <= weights3_addr_19_reg_625_pp0_iter4_reg[7 : 2];
        weights3_addr_20_reg_630[7 : 2] <= zext_ln194_9_fu_389_p1[7 : 2];
        weights3_addr_20_reg_630_pp0_iter1_reg[7 : 2] <= weights3_addr_20_reg_630[7 : 2];
        weights3_addr_20_reg_630_pp0_iter2_reg[7 : 2] <= weights3_addr_20_reg_630_pp0_iter1_reg[7 : 2];
        weights3_addr_20_reg_630_pp0_iter3_reg[7 : 2] <= weights3_addr_20_reg_630_pp0_iter2_reg[7 : 2];
        weights3_addr_20_reg_630_pp0_iter4_reg[7 : 2] <= weights3_addr_20_reg_630_pp0_iter3_reg[7 : 2];
        weights3_addr_20_reg_630_pp0_iter5_reg[7 : 2] <= weights3_addr_20_reg_630_pp0_iter4_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_addr_21_reg_645[7 : 2] <= zext_ln194_10_fu_404_p1[7 : 2];
        weights3_addr_21_reg_645_pp0_iter1_reg[7 : 2] <= weights3_addr_21_reg_645[7 : 2];
        weights3_addr_21_reg_645_pp0_iter2_reg[7 : 2] <= weights3_addr_21_reg_645_pp0_iter1_reg[7 : 2];
        weights3_addr_21_reg_645_pp0_iter3_reg[7 : 2] <= weights3_addr_21_reg_645_pp0_iter2_reg[7 : 2];
        weights3_addr_21_reg_645_pp0_iter4_reg[7 : 2] <= weights3_addr_21_reg_645_pp0_iter3_reg[7 : 2];
        weights3_addr_21_reg_645_pp0_iter5_reg[7 : 2] <= weights3_addr_21_reg_645_pp0_iter4_reg[7 : 2];
        weights3_addr_22_reg_650[7 : 2] <= zext_ln194_11_fu_414_p1[7 : 2];
        weights3_addr_22_reg_650_pp0_iter1_reg[7 : 2] <= weights3_addr_22_reg_650[7 : 2];
        weights3_addr_22_reg_650_pp0_iter2_reg[7 : 2] <= weights3_addr_22_reg_650_pp0_iter1_reg[7 : 2];
        weights3_addr_22_reg_650_pp0_iter3_reg[7 : 2] <= weights3_addr_22_reg_650_pp0_iter2_reg[7 : 2];
        weights3_addr_22_reg_650_pp0_iter4_reg[7 : 2] <= weights3_addr_22_reg_650_pp0_iter3_reg[7 : 2];
        weights3_addr_22_reg_650_pp0_iter5_reg[7 : 2] <= weights3_addr_22_reg_650_pp0_iter4_reg[7 : 2];
        weights3_addr_22_reg_650_pp0_iter6_reg[7 : 2] <= weights3_addr_22_reg_650_pp0_iter5_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_load_16_reg_600 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_load_18_reg_620 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_load_20_reg_640 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_load_22_reg_660 <= weights3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_538 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_189_p0 = bitcast_ln194_22_fu_461_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_189_p0 = bitcast_ln194_20_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_189_p0 = bitcast_ln194_18_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_189_p0 = bitcast_ln194_16_fu_437_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_189_p0 = bitcast_ln194_14_fu_433_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_189_p0 = bitcast_ln194_12_fu_428_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_189_p0 = bitcast_ln194_10_fu_424_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_189_p0 = bitcast_ln194_8_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_189_p0 = bitcast_ln194_6_fu_394_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_189_p0 = bitcast_ln194_4_fu_369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_189_p0 = bitcast_ln194_2_fu_344_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_189_p0 = bitcast_ln194_fu_319_p1;
    end else begin
        grp_fu_189_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address0_local = weights3_addr_22_reg_650_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address0_local = weights3_addr_20_reg_630_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address0_local = weights3_addr_18_reg_610_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address0_local = weights3_addr_16_reg_590_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address0_local = weights3_addr_14_reg_575_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address0_local = weights3_addr_12_reg_547_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address0_local = zext_ln194_11_fu_414_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address0_local = zext_ln194_9_fu_389_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address0_local = zext_ln194_7_fu_364_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address0_local = zext_ln194_5_fu_339_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address0_local = zext_ln194_3_fu_314_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address0_local = zext_ln194_1_fu_280_p1;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address1_local = weights3_addr_21_reg_645_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address1_local = weights3_addr_19_reg_625_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address1_local = weights3_addr_17_reg_605_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address1_local = weights3_addr_15_reg_585_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address1_local = weights3_addr_13_reg_558_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address1_local = weights3_addr_reg_542_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address1_local = zext_ln194_10_fu_404_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address1_local = zext_ln194_8_fu_379_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address1_local = zext_ln194_6_fu_354_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address1_local = zext_ln194_4_fu_329_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address1_local = zext_ln194_2_fu_302_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address1_local = zext_ln194_fu_257_p1;
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_d0_local = bitcast_ln194_23_fu_517_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_d0_local = bitcast_ln194_19_fu_507_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_d0_local = bitcast_ln194_15_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_d0_local = bitcast_ln194_11_fu_488_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_d0_local = bitcast_ln194_7_fu_480_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_d0_local = bitcast_ln194_3_fu_470_p1;
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_d1_local = bitcast_ln194_21_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_d1_local = bitcast_ln194_17_fu_502_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_d1_local = bitcast_ln194_13_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_d1_local = bitcast_ln194_9_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_d1_local = bitcast_ln194_5_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_d1_local = bitcast_ln194_1_fu_465_p1;
        end else begin
            weights3_d1_local = 'bx;
        end
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_we1_local = 1'b1;
    end else begin
        weights3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_446_p2 = (i_4_reg_533 + 7'd4);
assign add_ln194_1_fu_334_p2 = (tmp_21_reg_563 + 8'd2);
assign add_ln194_2_fu_359_p2 = (tmp_21_reg_563 + 8'd4);
assign add_ln194_3_fu_374_p2 = (tmp_21_reg_563 + 8'd5);
assign add_ln194_4_fu_399_p2 = (tmp_21_reg_563 + 8'd7);
assign add_ln194_5_fu_409_p2 = (tmp_21_reg_563 + 8'd8);
assign add_ln194_fu_324_p2 = (tmp_21_reg_563 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_424_p1 = weights3_load_16_reg_600;
assign bitcast_ln194_11_fu_488_p1 = div213_1_2_reg_710;
assign bitcast_ln194_12_fu_428_p1 = reg_193;
assign bitcast_ln194_13_fu_492_p1 = reg_207;
assign bitcast_ln194_14_fu_433_p1 = weights3_load_18_reg_620;
assign bitcast_ln194_15_fu_497_p1 = reg_211;
assign bitcast_ln194_16_fu_437_p1 = reg_202;
assign bitcast_ln194_17_fu_502_p1 = reg_215;
assign bitcast_ln194_18_fu_442_p1 = weights3_load_20_reg_640;
assign bitcast_ln194_19_fu_507_p1 = reg_207;
assign bitcast_ln194_1_fu_465_p1 = reg_207;
assign bitcast_ln194_20_fu_456_p1 = reg_197;
assign bitcast_ln194_21_fu_512_p1 = reg_207;
assign bitcast_ln194_22_fu_461_p1 = weights3_load_22_reg_660;
assign bitcast_ln194_23_fu_517_p1 = div213_3_2_reg_715;
assign bitcast_ln194_2_fu_344_p1 = reg_197;
assign bitcast_ln194_3_fu_470_p1 = reg_211;
assign bitcast_ln194_4_fu_369_p1 = reg_193;
assign bitcast_ln194_5_fu_475_p1 = reg_215;
assign bitcast_ln194_6_fu_394_p1 = reg_202;
assign bitcast_ln194_7_fu_480_p1 = div213_1_reg_700;
assign bitcast_ln194_8_fu_419_p1 = reg_197;
assign bitcast_ln194_9_fu_484_p1 = div213_1_1_reg_705;
assign bitcast_ln194_fu_319_p1 = reg_193;
assign empty_42_fu_251_p2 = (p_shl_fu_243_p3 - zext_ln21_fu_235_p1);
assign empty_43_fu_349_p2 = (tmp_21_reg_563 + 8'd3);
assign empty_44_fu_384_p2 = (tmp_21_reg_563 + 8'd6);
assign empty_fu_239_p1 = ap_sig_allocacmp_i_4[5:0];
assign or_ln194_1_fu_295_p3 = {{tmp_20_reg_552}, {2'd2}};
assign or_ln6_fu_272_p3 = {{tmp_s_fu_262_p4}, {1'd1}};
assign p_shl_fu_243_p3 = {{empty_fu_239_p1}, {2'd0}};
assign tmp_21_fu_307_p3 = {{tmp_20_reg_552}, {2'd3}};
assign tmp_s_fu_262_p4 = {{empty_42_fu_251_p2[7:1]}};
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln194_10_fu_404_p1 = add_ln194_4_fu_399_p2;
assign zext_ln194_11_fu_414_p1 = add_ln194_5_fu_409_p2;
assign zext_ln194_1_fu_280_p1 = or_ln6_fu_272_p3;
assign zext_ln194_2_fu_302_p1 = or_ln194_1_fu_295_p3;
assign zext_ln194_3_fu_314_p1 = tmp_21_fu_307_p3;
assign zext_ln194_4_fu_329_p1 = add_ln194_fu_324_p2;
assign zext_ln194_5_fu_339_p1 = add_ln194_1_fu_334_p2;
assign zext_ln194_6_fu_354_p1 = empty_43_fu_349_p2;
assign zext_ln194_7_fu_364_p1 = add_ln194_2_fu_359_p2;
assign zext_ln194_8_fu_379_p1 = add_ln194_3_fu_374_p2;
assign zext_ln194_9_fu_389_p1 = empty_44_fu_384_p2;
assign zext_ln194_fu_257_p1 = empty_42_fu_251_p2;
assign zext_ln21_fu_235_p1 = ap_sig_allocacmp_i_4;
always @ (posedge ap_clk) begin
    weights3_addr_12_reg_547[0] <= 1'b1;
    weights3_addr_12_reg_547_pp0_iter1_reg[0] <= 1'b1;
    weights3_addr_12_reg_547_pp0_iter2_reg[0] <= 1'b1;
    weights3_addr_12_reg_547_pp0_iter3_reg[0] <= 1'b1;
    weights3_addr_12_reg_547_pp0_iter4_reg[0] <= 1'b1;
    weights3_addr_12_reg_547_pp0_iter5_reg[0] <= 1'b1;
    weights3_addr_13_reg_558[1:0] <= 2'b10;
    weights3_addr_13_reg_558_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_13_reg_558_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_13_reg_558_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_13_reg_558_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_addr_13_reg_558_pp0_iter5_reg[1:0] <= 2'b10;
    tmp_21_reg_563[1:0] <= 2'b11;
    weights3_addr_14_reg_575[1:0] <= 2'b11;
    weights3_addr_14_reg_575_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_14_reg_575_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_14_reg_575_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_14_reg_575_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_addr_14_reg_575_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_addr_15_reg_585[1:0] <= 2'b00;
    weights3_addr_15_reg_585_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_15_reg_585_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_15_reg_585_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_addr_15_reg_585_pp0_iter4_reg[1:0] <= 2'b00;
    weights3_addr_15_reg_585_pp0_iter5_reg[1:0] <= 2'b00;
    weights3_addr_16_reg_590[1:0] <= 2'b01;
    weights3_addr_16_reg_590_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_16_reg_590_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_16_reg_590_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_addr_16_reg_590_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_addr_16_reg_590_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_addr_17_reg_605[1:0] <= 2'b10;
    weights3_addr_17_reg_605_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_17_reg_605_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_17_reg_605_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_17_reg_605_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_addr_17_reg_605_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_addr_18_reg_610[1:0] <= 2'b11;
    weights3_addr_18_reg_610_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_18_reg_610_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_18_reg_610_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_18_reg_610_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_addr_18_reg_610_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_addr_19_reg_625[1:0] <= 2'b00;
    weights3_addr_19_reg_625_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_19_reg_625_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_19_reg_625_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_addr_19_reg_625_pp0_iter4_reg[1:0] <= 2'b00;
    weights3_addr_19_reg_625_pp0_iter5_reg[1:0] <= 2'b00;
    weights3_addr_20_reg_630[1:0] <= 2'b01;
    weights3_addr_20_reg_630_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_20_reg_630_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_20_reg_630_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_addr_20_reg_630_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_addr_20_reg_630_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_addr_21_reg_645[1:0] <= 2'b10;
    weights3_addr_21_reg_645_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_21_reg_645_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_21_reg_645_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_21_reg_645_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_addr_21_reg_645_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_addr_22_reg_650[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_addr_22_reg_650_pp0_iter6_reg[1:0] <= 2'b11;
end
endmodule 
