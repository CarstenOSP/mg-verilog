module md_kernel_md_kernel_Pipeline_loop_j (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_2,NL_address0,NL_ce0,NL_q0,NL_address1,NL_ce1,NL_q1,position_x_address0,position_x_ce0,position_x_q0,position_x_address1,position_x_ce1,position_x_q1,position_y_address0,position_y_ce0,position_y_q0,position_y_address1,position_y_ce1,position_y_q1,position_z_address0,position_z_ce0,position_z_q0,position_z_address1,position_z_ce1,position_z_q1,i_x,i_y,i_z,empty,fz_out,fz_out_ap_vld,fy_out,fy_out_ap_vld,fx_out,fx_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] tmp_2;
output  [11:0] NL_address0;
output   NL_ce0;
input  [31:0] NL_q0;
output  [11:0] NL_address1;
output   NL_ce1;
input  [31:0] NL_q1;
output  [7:0] position_x_address0;
output   position_x_ce0;
input  [63:0] position_x_q0;
output  [7:0] position_x_address1;
output   position_x_ce1;
input  [63:0] position_x_q1;
output  [7:0] position_y_address0;
output   position_y_ce0;
input  [63:0] position_y_q0;
output  [7:0] position_y_address1;
output   position_y_ce1;
input  [63:0] position_y_q1;
output  [7:0] position_z_address0;
output   position_z_ce0;
input  [63:0] position_z_q0;
output  [7:0] position_z_address1;
output   position_z_ce1;
input  [63:0] position_z_q1;
input  [63:0] i_x;
input  [63:0] i_y;
input  [63:0] i_z;
input  [7:0] empty;
output  [63:0] fz_out;
output   fz_out_ap_vld;
output  [63:0] fy_out;
output   fy_out_ap_vld;
output  [63:0] fx_out;
output   fx_out_ap_vld;
reg ap_idle;
reg fz_out_ap_vld;
reg fy_out_ap_vld;
reg fx_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_1_reg_484;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] j_1_reg_479;
reg   [0:0] tmp_1_reg_484_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter4_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter5_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter6_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter7_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter8_reg;
reg   [0:0] tmp_1_reg_484_pp0_iter9_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] position_x_load_reg_528;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] position_y_load_reg_533;
reg   [63:0] position_z_load_reg_538;
reg   [63:0] position_x_load_1_reg_543;
reg   [63:0] position_y_load_1_reg_548;
reg   [63:0] position_z_load_1_reg_553;
wire   [63:0] j_x_fu_357_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] j_y_fu_361_p1;
wire   [63:0] j_z_fu_365_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] j_x_1_fu_369_p1;
wire   [63:0] j_y_1_fu_373_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] j_z_1_fu_377_p1;
wire   [63:0] grp_fu_247_p2;
reg   [63:0] delx_reg_588;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] delx_reg_588_pp0_iter1_reg;
reg   [63:0] delx_reg_588_pp0_iter2_reg;
reg   [63:0] delx_reg_588_pp0_iter3_reg;
reg   [63:0] delx_reg_588_pp0_iter4_reg;
reg   [63:0] delx_reg_588_pp0_iter5_reg;
reg   [63:0] delx_reg_588_pp0_iter6_reg;
reg   [63:0] delx_reg_588_pp0_iter7_reg;
reg   [63:0] delx_reg_588_pp0_iter8_reg;
wire   [63:0] grp_fu_251_p2;
reg   [63:0] dely_reg_595;
reg   [63:0] dely_reg_595_pp0_iter1_reg;
reg   [63:0] dely_reg_595_pp0_iter2_reg;
reg   [63:0] dely_reg_595_pp0_iter3_reg;
reg   [63:0] dely_reg_595_pp0_iter4_reg;
reg   [63:0] dely_reg_595_pp0_iter5_reg;
reg   [63:0] dely_reg_595_pp0_iter6_reg;
reg   [63:0] dely_reg_595_pp0_iter7_reg;
reg   [63:0] dely_reg_595_pp0_iter8_reg;
reg   [63:0] delz_reg_601;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] delz_reg_601_pp0_iter1_reg;
reg   [63:0] delz_reg_601_pp0_iter2_reg;
reg   [63:0] delz_reg_601_pp0_iter3_reg;
reg   [63:0] delz_reg_601_pp0_iter4_reg;
reg   [63:0] delz_reg_601_pp0_iter5_reg;
reg   [63:0] delz_reg_601_pp0_iter6_reg;
reg   [63:0] delz_reg_601_pp0_iter7_reg;
reg   [63:0] delz_reg_601_pp0_iter8_reg;
reg   [63:0] delx_1_reg_607;
reg   [63:0] delx_1_reg_607_pp0_iter1_reg;
reg   [63:0] delx_1_reg_607_pp0_iter2_reg;
reg   [63:0] delx_1_reg_607_pp0_iter3_reg;
reg   [63:0] delx_1_reg_607_pp0_iter4_reg;
reg   [63:0] delx_1_reg_607_pp0_iter5_reg;
reg   [63:0] delx_1_reg_607_pp0_iter6_reg;
reg   [63:0] delx_1_reg_607_pp0_iter7_reg;
reg   [63:0] delx_1_reg_607_pp0_iter8_reg;
reg   [63:0] dely_1_reg_613;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] dely_1_reg_613_pp0_iter1_reg;
reg   [63:0] dely_1_reg_613_pp0_iter2_reg;
reg   [63:0] dely_1_reg_613_pp0_iter3_reg;
reg   [63:0] dely_1_reg_613_pp0_iter4_reg;
reg   [63:0] dely_1_reg_613_pp0_iter5_reg;
reg   [63:0] dely_1_reg_613_pp0_iter6_reg;
reg   [63:0] dely_1_reg_613_pp0_iter7_reg;
reg   [63:0] dely_1_reg_613_pp0_iter8_reg;
reg   [63:0] delz_1_reg_619;
reg   [63:0] delz_1_reg_619_pp0_iter1_reg;
reg   [63:0] delz_1_reg_619_pp0_iter2_reg;
reg   [63:0] delz_1_reg_619_pp0_iter3_reg;
reg   [63:0] delz_1_reg_619_pp0_iter4_reg;
reg   [63:0] delz_1_reg_619_pp0_iter5_reg;
reg   [63:0] delz_1_reg_619_pp0_iter6_reg;
reg   [63:0] delz_1_reg_619_pp0_iter7_reg;
reg   [63:0] delz_1_reg_619_pp0_iter8_reg;
wire   [63:0] grp_fu_257_p2;
reg   [63:0] mul_reg_625;
wire   [63:0] grp_fu_261_p2;
reg   [63:0] mul1_reg_630;
reg   [63:0] mul2_reg_635;
reg   [63:0] mul18_1_reg_640;
reg   [63:0] mul19_1_reg_645;
reg   [63:0] mul21_1_reg_650;
reg   [63:0] add_reg_655;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] add20_1_reg_660;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] add1_reg_665;
reg   [63:0] add22_1_reg_670;
wire   [63:0] grp_fu_267_p2;
reg   [63:0] r2inv_reg_675;
reg   [63:0] r2inv_reg_675_pp0_iter6_reg;
reg   [63:0] r2inv_reg_675_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_681;
reg   [63:0] r2inv_1_reg_681_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_681_pp0_iter8_reg;
reg   [63:0] mul3_reg_687;
reg   [63:0] mul23_1_reg_692;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] r6inv_reg_697;
reg   [63:0] r6inv_reg_697_pp0_iter7_reg;
reg   [63:0] r6inv_1_reg_702;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] r6inv_1_reg_702_pp0_iter7_reg;
reg   [63:0] mul5_reg_707;
reg   [63:0] mul25_1_reg_712;
reg   [63:0] sub_reg_717;
reg   [63:0] sub26_1_reg_722;
reg   [63:0] potential_reg_727;
reg   [63:0] potential_1_reg_732;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] force_reg_737;
reg   [63:0] force_1_reg_743;
reg   [63:0] mul8_reg_749;
reg   [63:0] mul9_reg_759;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul4_reg_769;
reg   [63:0] mul29_1_reg_774;
reg   [63:0] mul31_1_reg_784;
reg   [63:0] mul33_1_reg_789;
reg   [63:0] fx_1_reg_794;
reg   [63:0] fy_1_reg_799;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] fz_1_reg_804;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln27_fu_313_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_338_p1;
wire   [63:0] zext_ln29_fu_343_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln29_1_fu_350_p1;
reg   [63:0] fx_fu_80;
wire    ap_loop_init;
wire    ap_block_pp0_stage7;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter9_stage8;
reg    ap_idle_pp0_0to8;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
wire    ap_block_pp0_stage8;
reg   [63:0] fy_fu_84;
reg   [63:0] fz_fu_88;
wire    ap_block_pp0_stage9;
reg   [4:0] j_fu_92;
wire   [4:0] add_ln25_fu_381_p2;
reg   [4:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage8_01001;
reg    NL_ce1_local;
reg    NL_ce0_local;
reg    position_x_ce1_local;
reg    position_x_ce0_local;
reg    position_y_ce1_local;
reg    position_y_ce0_local;
reg    position_z_ce1_local;
reg    position_z_ce0_local;
reg   [63:0] grp_fu_247_p0;
reg   [63:0] grp_fu_247_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_251_p0;
reg   [63:0] grp_fu_251_p1;
reg   [63:0] grp_fu_257_p0;
reg   [63:0] grp_fu_257_p1;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
reg   [63:0] grp_fu_261_p0;
reg   [63:0] grp_fu_261_p1;
reg   [63:0] grp_fu_267_p1;
wire   [11:0] zext_ln25_fu_303_p1;
wire   [11:0] add_ln27_fu_307_p2;
wire   [2:0] tmp_3_fu_318_p4;
wire   [11:0] add_ln27_1_fu_328_p4;
reg   [1:0] grp_fu_247_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg   [1:0] grp_fu_251_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to10;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 fx_fu_80 = 64'd0;
#0 fy_fu_84 = 64'd0;
#0 fz_fu_88 = 64'd0;
#0 j_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_247_p0),.din1(grp_fu_247_p1),.opcode(grp_fu_247_opcode),.ce(1'b1),.dout(grp_fu_247_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_251_p0),.din1(grp_fu_251_p1),.opcode(grp_fu_251_opcode),.ce(1'b1),.dout(grp_fu_251_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_257_p0),.din1(grp_fu_257_p1),.ce(1'b1),.dout(grp_fu_257_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_261_p0),.din1(grp_fu_261_p1),.ce(1'b1),.dout(grp_fu_261_p2));
md_kernel_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_267_p1),.ce(1'b1),.dout(grp_fu_267_p2));
md_kernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fx_fu_80 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        fx_fu_80 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fy_fu_84 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        fy_fu_84 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fz_fu_88 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        fz_fu_88 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_92 <= 5'd0;
    end else if (((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j_fu_92 <= add_ln25_fu_381_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_665 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add20_1_reg_660 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add22_1_reg_670 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_reg_655 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_1_reg_607 <= grp_fu_251_p2;
        delz_reg_601 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_1_reg_607_pp0_iter1_reg <= delx_1_reg_607;
        delx_1_reg_607_pp0_iter2_reg <= delx_1_reg_607_pp0_iter1_reg;
        delx_1_reg_607_pp0_iter3_reg <= delx_1_reg_607_pp0_iter2_reg;
        delx_1_reg_607_pp0_iter4_reg <= delx_1_reg_607_pp0_iter3_reg;
        delx_1_reg_607_pp0_iter5_reg <= delx_1_reg_607_pp0_iter4_reg;
        delx_1_reg_607_pp0_iter6_reg <= delx_1_reg_607_pp0_iter5_reg;
        delx_1_reg_607_pp0_iter7_reg <= delx_1_reg_607_pp0_iter6_reg;
        delx_1_reg_607_pp0_iter8_reg <= delx_1_reg_607_pp0_iter7_reg;
        delz_reg_601_pp0_iter1_reg <= delz_reg_601;
        delz_reg_601_pp0_iter2_reg <= delz_reg_601_pp0_iter1_reg;
        delz_reg_601_pp0_iter3_reg <= delz_reg_601_pp0_iter2_reg;
        delz_reg_601_pp0_iter4_reg <= delz_reg_601_pp0_iter3_reg;
        delz_reg_601_pp0_iter5_reg <= delz_reg_601_pp0_iter4_reg;
        delz_reg_601_pp0_iter6_reg <= delz_reg_601_pp0_iter5_reg;
        delz_reg_601_pp0_iter7_reg <= delz_reg_601_pp0_iter6_reg;
        delz_reg_601_pp0_iter8_reg <= delz_reg_601_pp0_iter7_reg;
        r6inv_reg_697_pp0_iter7_reg <= r6inv_reg_697;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_reg_588 <= grp_fu_247_p2;
        dely_reg_595 <= grp_fu_251_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_reg_588_pp0_iter1_reg <= delx_reg_588;
        delx_reg_588_pp0_iter2_reg <= delx_reg_588_pp0_iter1_reg;
        delx_reg_588_pp0_iter3_reg <= delx_reg_588_pp0_iter2_reg;
        delx_reg_588_pp0_iter4_reg <= delx_reg_588_pp0_iter3_reg;
        delx_reg_588_pp0_iter5_reg <= delx_reg_588_pp0_iter4_reg;
        delx_reg_588_pp0_iter6_reg <= delx_reg_588_pp0_iter5_reg;
        delx_reg_588_pp0_iter7_reg <= delx_reg_588_pp0_iter6_reg;
        delx_reg_588_pp0_iter8_reg <= delx_reg_588_pp0_iter7_reg;
        dely_reg_595_pp0_iter1_reg <= dely_reg_595;
        dely_reg_595_pp0_iter2_reg <= dely_reg_595_pp0_iter1_reg;
        dely_reg_595_pp0_iter3_reg <= dely_reg_595_pp0_iter2_reg;
        dely_reg_595_pp0_iter4_reg <= dely_reg_595_pp0_iter3_reg;
        dely_reg_595_pp0_iter5_reg <= dely_reg_595_pp0_iter4_reg;
        dely_reg_595_pp0_iter6_reg <= dely_reg_595_pp0_iter5_reg;
        dely_reg_595_pp0_iter7_reg <= dely_reg_595_pp0_iter6_reg;
        dely_reg_595_pp0_iter8_reg <= dely_reg_595_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        dely_1_reg_613 <= grp_fu_247_p2;
        delz_1_reg_619 <= grp_fu_251_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        dely_1_reg_613_pp0_iter1_reg <= dely_1_reg_613;
        dely_1_reg_613_pp0_iter2_reg <= dely_1_reg_613_pp0_iter1_reg;
        dely_1_reg_613_pp0_iter3_reg <= dely_1_reg_613_pp0_iter2_reg;
        dely_1_reg_613_pp0_iter4_reg <= dely_1_reg_613_pp0_iter3_reg;
        dely_1_reg_613_pp0_iter5_reg <= dely_1_reg_613_pp0_iter4_reg;
        dely_1_reg_613_pp0_iter6_reg <= dely_1_reg_613_pp0_iter5_reg;
        dely_1_reg_613_pp0_iter7_reg <= dely_1_reg_613_pp0_iter6_reg;
        dely_1_reg_613_pp0_iter8_reg <= dely_1_reg_613_pp0_iter7_reg;
        delz_1_reg_619_pp0_iter1_reg <= delz_1_reg_619;
        delz_1_reg_619_pp0_iter2_reg <= delz_1_reg_619_pp0_iter1_reg;
        delz_1_reg_619_pp0_iter3_reg <= delz_1_reg_619_pp0_iter2_reg;
        delz_1_reg_619_pp0_iter4_reg <= delz_1_reg_619_pp0_iter3_reg;
        delz_1_reg_619_pp0_iter5_reg <= delz_1_reg_619_pp0_iter4_reg;
        delz_1_reg_619_pp0_iter6_reg <= delz_1_reg_619_pp0_iter5_reg;
        delz_1_reg_619_pp0_iter7_reg <= delz_1_reg_619_pp0_iter6_reg;
        delz_1_reg_619_pp0_iter8_reg <= delz_1_reg_619_pp0_iter7_reg;
        r2inv_reg_675_pp0_iter6_reg <= r2inv_reg_675;
        r2inv_reg_675_pp0_iter7_reg <= r2inv_reg_675_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        force_1_reg_743 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        force_reg_737 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        fx_1_reg_794 <= grp_fu_251_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        fy_1_reg_799 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fz_1_reg_804 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_479 <= ap_sig_allocacmp_j_1;
        r2inv_1_reg_681_pp0_iter7_reg <= r2inv_1_reg_681;
        r2inv_1_reg_681_pp0_iter8_reg <= r2inv_1_reg_681_pp0_iter7_reg;
        tmp_1_reg_484 <= ap_sig_allocacmp_j_1[32'd4];
        tmp_1_reg_484_pp0_iter1_reg <= tmp_1_reg_484;
        tmp_1_reg_484_pp0_iter2_reg <= tmp_1_reg_484_pp0_iter1_reg;
        tmp_1_reg_484_pp0_iter3_reg <= tmp_1_reg_484_pp0_iter2_reg;
        tmp_1_reg_484_pp0_iter4_reg <= tmp_1_reg_484_pp0_iter3_reg;
        tmp_1_reg_484_pp0_iter5_reg <= tmp_1_reg_484_pp0_iter4_reg;
        tmp_1_reg_484_pp0_iter6_reg <= tmp_1_reg_484_pp0_iter5_reg;
        tmp_1_reg_484_pp0_iter7_reg <= tmp_1_reg_484_pp0_iter6_reg;
        tmp_1_reg_484_pp0_iter8_reg <= tmp_1_reg_484_pp0_iter7_reg;
        tmp_1_reg_484_pp0_iter9_reg <= tmp_1_reg_484_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul18_1_reg_640 <= grp_fu_261_p2;
        mul2_reg_635 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul19_1_reg_645 <= grp_fu_257_p2;
        mul21_1_reg_650 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul1_reg_630 <= grp_fu_261_p2;
        mul_reg_625 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul23_1_reg_692 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul25_1_reg_712 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul29_1_reg_774 <= grp_fu_261_p2;
        mul4_reg_769 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul31_1_reg_784 <= grp_fu_257_p2;
        mul33_1_reg_789 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul3_reg_687 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul5_reg_707 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_reg_749 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul9_reg_759 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_load_1_reg_543 <= position_x_q0;
        position_x_load_reg_528 <= position_x_q1;
        position_y_load_1_reg_548 <= position_y_q0;
        position_y_load_reg_533 <= position_y_q1;
        position_z_load_1_reg_553 <= position_z_q0;
        position_z_load_reg_538 <= position_z_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        potential_1_reg_732 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        potential_reg_727 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r2inv_1_reg_681 <= grp_fu_267_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r2inv_reg_675 <= grp_fu_267_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        r6inv_1_reg_702 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        r6inv_1_reg_702_pp0_iter7_reg <= r6inv_1_reg_702;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        r6inv_reg_697 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        sub26_1_reg_722 <= grp_fu_247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        sub_reg_717 <= grp_fu_251_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_ce0_local = 1'b1;
    end else begin
        NL_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_ce1_local = 1'b1;
    end else begin
        NL_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_484 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_1_reg_484_pp0_iter9_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter9_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter9_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to8 = 1'b1;
    end else begin
        ap_idle_pp0_0to8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to10 = 1'b1;
    end else begin
        ap_idle_pp0_1to10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_1_reg_484_pp0_iter9_reg == 1'd1))) begin
        fx_out_ap_vld = 1'b1;
    end else begin
        fx_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_1_reg_484_pp0_iter9_reg == 1'd1))) begin
        fy_out_ap_vld = 1'b1;
    end else begin
        fy_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_1_reg_484_pp0_iter9_reg == 1'd1))) begin
        fz_out_ap_vld = 1'b1;
    end else begin
        fz_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_247_opcode = 2'd1;
end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_00001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_247_opcode = 2'd0;
    end else begin
        grp_fu_247_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_247_p0 = fz_1_reg_804;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_247_p0 = fy_1_reg_799;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_247_p0 = fx_1_reg_794;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_247_p0 = fz_fu_88;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_247_p0 = fy_fu_84;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_247_p0 = mul25_1_reg_712;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_247_p0 = add20_1_reg_660;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_247_p0 = add_reg_655;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_247_p0 = mul18_1_reg_640;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_247_p0 = mul_reg_625;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_247_p0 = i_y;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_247_p0 = i_z;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_247_p0 = i_x;
    end else begin
        grp_fu_247_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_247_p1 = mul33_1_reg_789;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_247_p1 = mul31_1_reg_784;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_247_p1 = mul29_1_reg_774;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_247_p1 = mul4_reg_769;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_247_p1 = mul9_reg_759;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_247_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_247_p1 = mul21_1_reg_650;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_247_p1 = mul2_reg_635;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_247_p1 = mul19_1_reg_645;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_247_p1 = mul1_reg_630;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_247_p1 = j_y_1_fu_373_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_247_p1 = j_z_fu_365_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_247_p1 = j_x_fu_357_p1;
    end else begin
        grp_fu_247_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_reg_484 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_251_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_251_opcode = 2'd0;
    end else begin
        grp_fu_251_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_251_p0 = fx_fu_80;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_251_p0 = mul5_reg_707;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_251_p0 = i_z;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_251_p0 = i_x;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_251_p0 = i_y;
    end else begin
        grp_fu_251_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_251_p1 = mul8_reg_749;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_251_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_251_p1 = j_z_1_fu_377_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_251_p1 = j_x_1_fu_369_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_251_p1 = j_y_fu_361_p1;
    end else begin
        grp_fu_251_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p0 = dely_1_reg_613_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p0 = delz_reg_601_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_257_p0 = r2inv_1_reg_681_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_257_p0 = r2inv_reg_675_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p0 = r6inv_1_reg_702_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_257_p0 = r6inv_1_reg_702;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_257_p0 = mul23_1_reg_692;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_257_p0 = mul3_reg_687;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_257_p0 = r2inv_1_reg_681;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_257_p0 = r2inv_reg_675;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_257_p0 = dely_1_reg_613;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_257_p0 = delz_reg_601;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_257_p0 = delx_reg_588;
    end else begin
        grp_fu_257_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_257_p1 = force_1_reg_743;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_257_p1 = force_reg_737;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_257_p1 = potential_1_reg_732;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_257_p1 = potential_reg_727;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_257_p1 = sub26_1_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_257_p1 = 64'd4609434218613702656;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_257_p1 = r2inv_1_reg_681;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_257_p1 = r2inv_reg_675;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_257_p1 = dely_1_reg_613;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_257_p1 = delz_reg_601;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_257_p1 = delx_reg_588;
    end else begin
        grp_fu_257_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_261_p0 = delz_1_reg_619_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_261_p0 = delx_1_reg_607_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_261_p0 = dely_reg_595_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_261_p0 = delx_reg_588_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_261_p0 = r6inv_reg_697_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_261_p0 = r6inv_reg_697;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_261_p0 = delz_1_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_261_p0 = delx_1_reg_607;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_261_p0 = dely_reg_595;
    end else begin
        grp_fu_261_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_261_p1 = force_1_reg_743;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_261_p1 = force_reg_737;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_261_p1 = sub_reg_717;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_261_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_261_p1 = delz_1_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_261_p1 = delx_1_reg_607;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_261_p1 = dely_reg_595;
    end else begin
        grp_fu_261_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_267_p1 = add22_1_reg_670;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_267_p1 = add1_reg_665;
        end else begin
            grp_fu_267_p1 = 'bx;
        end
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_x_ce0_local = 1'b1;
    end else begin
        position_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_x_ce1_local = 1'b1;
    end else begin
        position_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_y_ce0_local = 1'b1;
    end else begin
        position_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_y_ce1_local = 1'b1;
    end else begin
        position_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_z_ce0_local = 1'b1;
    end else begin
        position_z_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        position_z_ce1_local = 1'b1;
    end else begin
        position_z_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to10 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign NL_address0 = zext_ln27_1_fu_338_p1;
assign NL_address1 = zext_ln27_fu_313_p1;
assign NL_ce0 = NL_ce0_local;
assign NL_ce1 = NL_ce1_local;
assign add_ln25_fu_381_p2 = (j_1_reg_479 + 5'd2);
assign add_ln27_1_fu_328_p4 = {{{empty}, {tmp_3_fu_318_p4}}, {1'd1}};
assign add_ln27_fu_307_p2 = (zext_ln25_fu_303_p1 + tmp_2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign fx_out = fx_fu_80;
assign fy_out = fy_fu_84;
assign fz_out = fz_fu_88;
assign j_x_1_fu_369_p1 = position_x_load_1_reg_543;
assign j_x_fu_357_p1 = position_x_load_reg_528;
assign j_y_1_fu_373_p1 = position_y_load_1_reg_548;
assign j_y_fu_361_p1 = position_y_load_reg_533;
assign j_z_1_fu_377_p1 = position_z_load_1_reg_553;
assign j_z_fu_365_p1 = position_z_load_reg_538;
assign position_x_address0 = zext_ln29_1_fu_350_p1;
assign position_x_address1 = zext_ln29_fu_343_p1;
assign position_x_ce0 = position_x_ce0_local;
assign position_x_ce1 = position_x_ce1_local;
assign position_y_address0 = zext_ln29_1_fu_350_p1;
assign position_y_address1 = zext_ln29_fu_343_p1;
assign position_y_ce0 = position_y_ce0_local;
assign position_y_ce1 = position_y_ce1_local;
assign position_z_address0 = zext_ln29_1_fu_350_p1;
assign position_z_address1 = zext_ln29_fu_343_p1;
assign position_z_ce0 = position_z_ce0_local;
assign position_z_ce1 = position_z_ce1_local;
assign tmp_3_fu_318_p4 = {{ap_sig_allocacmp_j_1[3:1]}};
assign zext_ln25_fu_303_p1 = ap_sig_allocacmp_j_1;
assign zext_ln27_1_fu_338_p1 = add_ln27_1_fu_328_p4;
assign zext_ln27_fu_313_p1 = add_ln27_fu_307_p2;
assign zext_ln29_1_fu_350_p1 = NL_q0;
assign zext_ln29_fu_343_p1 = NL_q1;
endmodule 