
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,indvars_iv_next93,tmp_3,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,sol_address0,sol_ce0,sol_we0,sol_d0,sol_address1,sol_ce1,sol_we1,sol_d1,tmp_5);  
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
output  [12:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [12:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [6:0] indvars_iv_next93;
input  [6:0] tmp_3;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [12:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
output  [12:0] sol_address1;
output   sol_ce1;
output   sol_we1;
output  [31:0] sol_d1;
input  [12:0] tmp_5;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln8_reg_1106;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_386;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage8_11001;
reg  signed [31:0] reg_395;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg  signed [31:0] reg_404;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [31:0] reg_413;
wire   [31:0] grp_fu_370_p2;
reg   [31:0] reg_420;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] grp_fu_374_p2;
reg   [31:0] reg_424;
wire   [31:0] grp_fu_378_p2;
reg   [31:0] reg_428;
reg   [31:0] reg_432;
reg   [31:0] reg_436;
reg   [31:0] reg_440;
wire   [31:0] grp_fu_382_p2;
reg   [31:0] reg_444;
reg   [31:0] reg_448;
reg  signed [31:0] reg_452;
reg   [31:0] reg_460;
reg   [5:0] c_1_reg_1029;
wire   [4:0] tmp_6_fu_478_p4;
reg   [4:0] tmp_6_reg_1036;
reg   [3:0] tmp_7_reg_1042;
wire   [12:0] or_ln12_5_fu_526_p4;
reg   [12:0] or_ln12_5_reg_1064;
wire   [12:0] or_ln12_6_fu_539_p4;
reg   [12:0] or_ln12_6_reg_1074;
wire   [63:0] zext_ln12_9_fu_547_p1;
reg   [63:0] zext_ln12_9_reg_1079;
reg   [63:0] zext_ln12_9_reg_1079_pp0_iter1_reg;
reg  signed [31:0] orig_load_10_reg_1099;
wire   [0:0] icmp_ln8_fu_585_p2;
reg   [0:0] icmp_ln8_reg_1106_pp0_iter1_reg;
wire   [5:0] or_ln8_1_fu_601_p3;
reg   [5:0] or_ln8_1_reg_1115;
wire   [12:0] add_ln12_5_fu_632_p2;
reg   [12:0] add_ln12_5_reg_1125;
wire   [12:0] or_ln12_3_fu_675_p4;
reg   [12:0] or_ln12_3_reg_1145;
wire   [31:0] add_ln13_5_fu_688_p2;
reg   [31:0] add_ln13_5_reg_1155;
reg   [31:0] mul_ln13_24_reg_1160;
reg  signed [31:0] orig_load_17_reg_1165;
wire   [63:0] zext_ln12_fu_700_p1;
reg   [63:0] zext_ln12_reg_1170;
wire   [31:0] add_ln13_13_fu_711_p2;
reg   [31:0] add_ln13_13_reg_1180;
reg   [31:0] mul_ln13_32_reg_1190;
wire   [63:0] zext_ln12_1_fu_735_p1;
reg   [63:0] zext_ln12_1_reg_1195;
wire   [12:0] or_ln12_1_fu_740_p4;
reg   [12:0] or_ln12_1_reg_1205;
wire   [63:0] zext_ln12_2_fu_748_p1;
reg   [63:0] zext_ln12_2_reg_1210;
wire   [31:0] add_ln13_14_fu_759_p2;
reg   [31:0] add_ln13_14_reg_1220;
wire   [31:0] add_ln13_21_fu_770_p2;
reg   [31:0] add_ln13_21_reg_1225;
wire   [31:0] add_ln13_29_fu_803_p2;
reg   [31:0] add_ln13_29_reg_1240;
wire   [31:0] add_ln13_6_fu_819_p2;
reg   [31:0] add_ln13_6_reg_1245;
wire   [31:0] add_ln13_9_fu_824_p2;
reg   [31:0] add_ln13_9_reg_1250;
wire   [31:0] add_ln13_30_fu_835_p2;
reg   [31:0] add_ln13_30_reg_1255;
reg   [31:0] mul_ln13_reg_1260;
wire   [31:0] add_ln13_22_fu_845_p2;
reg   [31:0] add_ln13_22_reg_1265;
wire   [31:0] add_ln13_fu_850_p2;
reg   [31:0] add_ln13_reg_1270;
wire   [31:0] temp_1_fu_867_p2;
reg   [31:0] temp_1_reg_1275;
wire   [31:0] temp_fu_882_p2;
reg   [31:0] temp_reg_1280;
wire   [31:0] temp_2_fu_905_p2;
reg   [31:0] temp_2_reg_1285;
wire   [31:0] add_ln13_24_fu_910_p2;
reg   [31:0] add_ln13_24_reg_1290;
wire   [31:0] temp_3_fu_927_p2;
reg   [31:0] temp_3_reg_1295;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
reg    ap_condition_exit_pp0_iter1_stage4;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln12_6_fu_506_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_7_fu_521_p1;
wire   [63:0] zext_ln12_8_fu_534_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_10_fu_560_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_11_fu_573_p1;
wire   [63:0] zext_ln12_14_fu_596_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_15_fu_617_p1;
wire   [63:0] zext_ln12_16_fu_653_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln12_18_fu_658_p1;
wire   [63:0] zext_ln12_4_fu_670_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln12_5_fu_683_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln12_13_fu_722_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln12_3_fu_782_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln12_12_fu_792_p1;
reg   [5:0] c_fu_94;
wire   [5:0] add_ln8_fu_809_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_ce1_local;
reg   [12:0] orig_address1_local;
reg    orig_ce0_local;
reg   [12:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
reg    sol_ce0_local;
reg   [12:0] sol_address0_local;
reg    sol_we1_local;
reg   [31:0] sol_d1_local;
reg    sol_ce1_local;
reg   [12:0] sol_address1_local;
reg  signed [31:0] grp_fu_370_p0;
reg  signed [31:0] grp_fu_370_p1;
reg  signed [31:0] grp_fu_374_p0;
reg  signed [31:0] grp_fu_374_p1;
reg  signed [31:0] grp_fu_378_p0;
reg  signed [31:0] grp_fu_378_p1;
reg  signed [31:0] grp_fu_382_p0;
reg  signed [31:0] grp_fu_382_p1;
wire   [12:0] tmp_4_fu_498_p3;
wire   [12:0] or_ln12_4_fu_511_p4;
wire   [12:0] or_ln12_7_fu_552_p4;
wire   [12:0] or_ln12_8_fu_565_p4;
wire   [5:0] or_ln8_fu_578_p3;
wire   [12:0] add_ln12_2_fu_591_p2;
wire   [12:0] add_ln12_3_fu_612_p2;
wire   [7:0] or_ln8_2_cast30_fu_608_p1;
wire   [7:0] add_ln12_6_fu_622_p2;
wire   [12:0] zext_ln12_17_fu_628_p1;
wire   [12:0] or_ln8_2_cast_fu_637_p1;
wire   [12:0] tmp_s_fu_640_p3;
wire   [12:0] add_ln12_4_fu_647_p2;
wire   [12:0] or_ln12_2_fu_662_p4;
wire   [31:0] grp_fu_464_p2;
wire   [12:0] tmp_1_fu_694_p3;
wire   [31:0] add_ln13_12_fu_705_p2;
wire   [12:0] add_ln12_1_fu_717_p2;
wire   [12:0] or_ln_fu_727_p4;
wire   [31:0] add_ln13_11_fu_753_p2;
wire   [31:0] add_ln13_20_fu_764_p2;
wire   [12:0] tmp_2_fu_776_p3;
wire   [12:0] add_ln12_fu_787_p2;
wire   [31:0] add_ln13_28_fu_797_p2;
wire   [31:0] add_ln13_27_fu_830_p2;
wire   [31:0] add_ln13_19_fu_840_p2;
wire   [31:0] add_ln13_8_fu_856_p2;
wire   [31:0] add_ln13_10_fu_862_p2;
wire   [31:0] add_ln13_1_fu_872_p2;
wire   [31:0] add_ln13_2_fu_877_p2;
wire   [31:0] add_ln13_17_fu_893_p2;
wire   [31:0] add_ln13_16_fu_887_p2;
wire   [31:0] add_ln13_18_fu_899_p2;
wire   [31:0] add_ln13_25_fu_916_p2;
wire   [31:0] add_ln13_26_fu_922_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_94 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_370_p0),.din1(grp_fu_370_p1),.ce(1'b1),.dout(grp_fu_370_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_374_p0),.din1(grp_fu_374_p1),.ce(1'b1),.dout(grp_fu_374_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_378_p0),.din1(grp_fu_378_p1),.ce(1'b1),.dout(grp_fu_378_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_382_p0),.din1(grp_fu_382_p1),.ce(1'b1),.dout(grp_fu_382_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage4) | ((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_94 <= 6'd0;
    end else if (((icmp_ln8_reg_1106 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        c_fu_94 <= add_ln8_fu_809_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_386 <= orig_q0;
    end else if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_386 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_395 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_395 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_404 <= orig_q0;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_404 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_452 <= orig_q0;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_452 <= orig_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln12_5_reg_1125 <= add_ln12_5_fu_632_p2;
        add_ln13_24_reg_1290 <= add_ln13_24_fu_910_p2;
        icmp_ln8_reg_1106 <= icmp_ln8_fu_585_p2;
        icmp_ln8_reg_1106_pp0_iter1_reg <= icmp_ln8_reg_1106;
        or_ln8_1_reg_1115[5 : 2] <= or_ln8_1_fu_601_p3[5 : 2];
        temp_2_reg_1285 <= temp_2_fu_905_p2;
        temp_reg_1280 <= temp_fu_882_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln13_13_reg_1180 <= add_ln13_13_fu_711_p2;
        zext_ln12_reg_1170[12 : 0] <= zext_ln12_fu_700_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln13_14_reg_1220 <= add_ln13_14_fu_759_p2;
        add_ln13_21_reg_1225 <= add_ln13_21_fu_770_p2;
        or_ln12_1_reg_1205[12 : 2] <= or_ln12_1_fu_740_p4[12 : 2];
        zext_ln12_1_reg_1195[12 : 1] <= zext_ln12_1_fu_735_p1[12 : 1];
        zext_ln12_2_reg_1210[12 : 2] <= zext_ln12_2_fu_748_p1[12 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_22_reg_1265 <= add_ln13_22_fu_845_p2;
        or_ln12_5_reg_1064[12 : 2] <= or_ln12_5_fu_526_p4[12 : 2];
        or_ln12_6_reg_1074[12 : 2] <= or_ln12_6_fu_539_p4[12 : 2];
        zext_ln12_9_reg_1079[12 : 2] <= zext_ln12_9_fu_547_p1[12 : 2];
        zext_ln12_9_reg_1079_pp0_iter1_reg[12 : 2] <= zext_ln12_9_reg_1079[12 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln13_29_reg_1240 <= add_ln13_29_fu_803_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_30_reg_1255 <= add_ln13_30_fu_835_p2;
        add_ln13_6_reg_1245 <= add_ln13_6_fu_819_p2;
        add_ln13_9_reg_1250 <= add_ln13_9_fu_824_p2;
        c_1_reg_1029 <= ap_sig_allocacmp_c_1;
        tmp_6_reg_1036 <= {{ap_sig_allocacmp_c_1[5:1]}};
        tmp_7_reg_1042 <= {{ap_sig_allocacmp_c_1[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln13_5_reg_1155 <= add_ln13_5_fu_688_p2;
        or_ln12_3_reg_1145[12 : 2] <= or_ln12_3_fu_675_p4[12 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_reg_1270 <= add_ln13_fu_850_p2;
        temp_1_reg_1275 <= temp_1_fu_867_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln13_24_reg_1160 <= grp_fu_378_p2;
        orig_load_17_reg_1165 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln13_32_reg_1190 <= grp_fu_378_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_reg_1260 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_load_10_reg_1099 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_413 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_420 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_424 <= grp_fu_374_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_428 <= grp_fu_378_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_432 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_436 <= grp_fu_374_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_440 <= grp_fu_378_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_444 <= grp_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_448 <= grp_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_460 <= grp_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        temp_3_reg_1295 <= temp_3_fu_927_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1106 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1106_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = reg_452;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_370_p0 = reg_413;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_370_p0 = reg_395;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p0 = orig_load_10_reg_1099;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_370_p0 = reg_404;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p0 = reg_386;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_370_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_370_p1 = filter_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_370_p1 = filter_load_5;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_370_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p1 = filter_load_6;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_374_p0 = reg_452;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p0 = reg_404;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_374_p0 = reg_386;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_374_p0 = reg_413;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p0 = reg_395;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_374_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_374_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_374_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p1 = filter_load_7;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_378_p0 = reg_452;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_378_p0 = orig_load_17_reg_1165;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_378_p0 = reg_386;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p0 = orig_load_10_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_378_p0 = reg_404;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_378_p0 = reg_395;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_378_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_378_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_378_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_378_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_378_p1 = filter_load_6;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p0 = orig_load_10_reg_1099;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_382_p0 = reg_413;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_382_p0 = reg_395;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_382_p0 = reg_386;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p0 = reg_404;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_382_p1 = filter_load_4;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_382_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_382_p1 = filter_load;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_382_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p1 = filter_load_6;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address0_local = zext_ln12_12_fu_792_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address0_local = zext_ln12_2_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address0_local = zext_ln12_13_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address0_local = zext_ln12_5_fu_683_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address0_local = zext_ln12_18_fu_658_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address0_local = zext_ln12_15_fu_617_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln12_11_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln12_9_fu_547_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln12_7_fu_521_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address1_local = zext_ln12_3_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address1_local = zext_ln12_1_fu_735_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address1_local = zext_ln12_fu_700_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address1_local = zext_ln12_4_fu_670_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address1_local = zext_ln12_16_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln12_14_fu_596_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln12_10_fu_560_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln12_8_fu_534_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln12_6_fu_506_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_address0_local = zext_ln12_2_reg_1210;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_address0_local = zext_ln12_1_reg_1195;
        end else begin
            sol_address0_local = 'bx;
        end
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_address1_local = zext_ln12_9_reg_1079_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_address1_local = zext_ln12_reg_1170;
        end else begin
            sol_address1_local = 'bx;
        end
    end else begin
        sol_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_ce1_local = 1'b1;
    end else begin
        sol_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_d0_local = temp_2_reg_1285;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_d0_local = temp_1_reg_1275;
        end else begin
            sol_d0_local = 'bx;
        end
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_d1_local = temp_3_reg_1295;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            sol_d1_local = temp_reg_1280;
        end else begin
            sol_d1_local = 'bx;
        end
    end else begin
        sol_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1106_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1106_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_we1_local = 1'b1;
    end else begin
        sol_we1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_717_p2 = (or_ln12_3_reg_1145 + 13'd2);
assign add_ln12_2_fu_591_p2 = (or_ln12_5_reg_1064 + 13'd2);
assign add_ln12_3_fu_612_p2 = (or_ln12_6_reg_1074 + 13'd2);
assign add_ln12_4_fu_647_p2 = (or_ln8_2_cast_fu_637_p1 + tmp_s_fu_640_p3);
assign add_ln12_5_fu_632_p2 = (zext_ln12_17_fu_628_p1 + tmp_5);
assign add_ln12_6_fu_622_p2 = ($signed(or_ln8_2_cast30_fu_608_p1) + $signed(8'd130));
assign add_ln12_fu_787_p2 = (or_ln12_1_reg_1205 + 13'd2);
assign add_ln13_10_fu_862_p2 = (add_ln13_9_reg_1250 + add_ln13_8_fu_856_p2);
assign add_ln13_11_fu_753_p2 = (reg_428 + reg_440);
assign add_ln13_12_fu_705_p2 = (reg_420 + reg_424);
assign add_ln13_13_fu_711_p2 = (add_ln13_12_fu_705_p2 + reg_436);
assign add_ln13_14_fu_759_p2 = (add_ln13_13_reg_1180 + add_ln13_11_fu_753_p2);
assign add_ln13_16_fu_887_p2 = (reg_420 + reg_440);
assign add_ln13_17_fu_893_p2 = (reg_424 + reg_428);
assign add_ln13_18_fu_899_p2 = (add_ln13_17_fu_893_p2 + add_ln13_16_fu_887_p2);
assign add_ln13_19_fu_840_p2 = (mul_ln13_24_reg_1160 + reg_424);
assign add_ln13_1_fu_872_p2 = (mul_ln13_reg_1260 + reg_432);
assign add_ln13_20_fu_764_p2 = (reg_448 + reg_420);
assign add_ln13_21_fu_770_p2 = (add_ln13_20_fu_764_p2 + reg_444);
assign add_ln13_22_fu_845_p2 = (add_ln13_21_reg_1225 + add_ln13_19_fu_840_p2);
assign add_ln13_24_fu_910_p2 = (reg_460 + reg_444);
assign add_ln13_25_fu_916_p2 = (reg_444 + reg_448);
assign add_ln13_26_fu_922_p2 = (add_ln13_25_fu_916_p2 + add_ln13_24_reg_1290);
assign add_ln13_27_fu_830_p2 = (mul_ln13_32_reg_1190 + reg_460);
assign add_ln13_28_fu_797_p2 = (reg_436 + reg_428);
assign add_ln13_29_fu_803_p2 = (add_ln13_28_fu_797_p2 + reg_424);
assign add_ln13_2_fu_877_p2 = (add_ln13_1_fu_872_p2 + add_ln13_reg_1270);
assign add_ln13_30_fu_835_p2 = (add_ln13_29_reg_1240 + add_ln13_27_fu_830_p2);
assign add_ln13_5_fu_688_p2 = (grp_fu_464_p2 + reg_420);
assign add_ln13_6_fu_819_p2 = (add_ln13_5_reg_1155 + grp_fu_464_p2);
assign add_ln13_8_fu_856_p2 = (reg_440 + reg_460);
assign add_ln13_9_fu_824_p2 = (reg_448 + reg_428);
assign add_ln13_fu_850_p2 = (reg_424 + reg_432);
assign add_ln8_fu_809_p2 = (c_1_reg_1029 + 6'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_464_p2 = (reg_424 + reg_432);
assign icmp_ln8_fu_585_p2 = ((or_ln8_fu_578_p3 == 6'd62) ? 1'b1 : 1'b0);
assign or_ln12_1_fu_740_p4 = {{{r}, {tmp_7_reg_1042}}, {2'd2}};
assign or_ln12_2_fu_662_p4 = {{{indvars_iv_next93}, {tmp_6_reg_1036}}, {1'd1}};
assign or_ln12_3_fu_675_p4 = {{{indvars_iv_next93}, {tmp_7_reg_1042}}, {2'd2}};
assign or_ln12_4_fu_511_p4 = {{{tmp_3}, {tmp_6_fu_478_p4}}, {1'd1}};
assign or_ln12_5_fu_526_p4 = {{{tmp_3}, {tmp_7_reg_1042}}, {2'd2}};
assign or_ln12_6_fu_539_p4 = {{{r}, {tmp_7_reg_1042}}, {2'd3}};
assign or_ln12_7_fu_552_p4 = {{{indvars_iv_next93}, {tmp_7_reg_1042}}, {2'd3}};
assign or_ln12_8_fu_565_p4 = {{{tmp_3}, {tmp_7_reg_1042}}, {2'd3}};
assign or_ln8_1_fu_601_p3 = {{tmp_7_reg_1042}, {2'd3}};
assign or_ln8_2_cast30_fu_608_p1 = or_ln8_1_fu_601_p3;
assign or_ln8_2_cast_fu_637_p1 = or_ln8_1_reg_1115;
assign or_ln8_fu_578_p3 = {{tmp_7_reg_1042}, {2'd2}};
assign or_ln_fu_727_p4 = {{{r}, {tmp_6_reg_1036}}, {1'd1}};
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign sol_address0 = sol_address0_local;
assign sol_address1 = sol_address1_local;
assign sol_ce0 = sol_ce0_local;
assign sol_ce1 = sol_ce1_local;
assign sol_d0 = sol_d0_local;
assign sol_d1 = sol_d1_local;
assign sol_we0 = sol_we0_local;
assign sol_we1 = sol_we1_local;
assign temp_1_fu_867_p2 = (add_ln13_14_reg_1220 + add_ln13_10_fu_862_p2);
assign temp_2_fu_905_p2 = (add_ln13_22_reg_1265 + add_ln13_18_fu_899_p2);
assign temp_3_fu_927_p2 = (add_ln13_30_reg_1255 + add_ln13_26_fu_922_p2);
assign temp_fu_882_p2 = (add_ln13_6_reg_1245 + add_ln13_2_fu_877_p2);
assign tmp_1_fu_694_p3 = {{r}, {c_1_reg_1029}};
assign tmp_2_fu_776_p3 = {{indvars_iv_next93}, {c_1_reg_1029}};
assign tmp_4_fu_498_p3 = {{tmp_3}, {ap_sig_allocacmp_c_1}};
assign tmp_6_fu_478_p4 = {{ap_sig_allocacmp_c_1[5:1]}};
assign tmp_s_fu_640_p3 = {{indvars_iv_next93}, {6'd2}};
assign zext_ln12_10_fu_560_p1 = or_ln12_7_fu_552_p4;
assign zext_ln12_11_fu_573_p1 = or_ln12_8_fu_565_p4;
assign zext_ln12_12_fu_792_p1 = add_ln12_fu_787_p2;
assign zext_ln12_13_fu_722_p1 = add_ln12_1_fu_717_p2;
assign zext_ln12_14_fu_596_p1 = add_ln12_2_fu_591_p2;
assign zext_ln12_15_fu_617_p1 = add_ln12_3_fu_612_p2;
assign zext_ln12_16_fu_653_p1 = add_ln12_4_fu_647_p2;
assign zext_ln12_17_fu_628_p1 = add_ln12_6_fu_622_p2;
assign zext_ln12_18_fu_658_p1 = add_ln12_5_reg_1125;
assign zext_ln12_1_fu_735_p1 = or_ln_fu_727_p4;
assign zext_ln12_2_fu_748_p1 = or_ln12_1_fu_740_p4;
assign zext_ln12_3_fu_782_p1 = tmp_2_fu_776_p3;
assign zext_ln12_4_fu_670_p1 = or_ln12_2_fu_662_p4;
assign zext_ln12_5_fu_683_p1 = or_ln12_3_fu_675_p4;
assign zext_ln12_6_fu_506_p1 = tmp_4_fu_498_p3;
assign zext_ln12_7_fu_521_p1 = or_ln12_4_fu_511_p4;
assign zext_ln12_8_fu_534_p1 = or_ln12_5_fu_526_p4;
assign zext_ln12_9_fu_547_p1 = or_ln12_6_fu_539_p4;
assign zext_ln12_fu_700_p1 = tmp_1_fu_694_p3;
always @ (posedge ap_clk) begin
    or_ln12_5_reg_1064[1:0] <= 2'b10;
    or_ln12_6_reg_1074[1:0] <= 2'b11;
    zext_ln12_9_reg_1079[1:0] <= 2'b11;
    zext_ln12_9_reg_1079[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_9_reg_1079_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln12_9_reg_1079_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    or_ln8_1_reg_1115[1:0] <= 2'b11;
    or_ln12_3_reg_1145[1:0] <= 2'b10;
    zext_ln12_reg_1170[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_1195[0] <= 1'b1;
    zext_ln12_1_reg_1195[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    or_ln12_1_reg_1205[1:0] <= 2'b10;
    zext_ln12_2_reg_1210[1:0] <= 2'b10;
    zext_ln12_2_reg_1210[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
