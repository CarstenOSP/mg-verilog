module main_graph_main_graph_Pipeline_VITIS_LOOP_1095_213 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln1096,v51_address1,v51_ce1,v51_we1,v51_d1,mul_ln1099_1,v52_address0,v52_ce0,v52_q0,mul_ln1099_3,mul_ln1099_2,v556_7,v556_8,v556_2,v556_1,v556_5,v556_3,v556_4,v556_6,v556); 
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
input  [12:0] zext_ln1096;
output  [12:0] v51_address1;
output   v51_ce1;
output   v51_we1;
output  [7:0] v51_d1;
input  [14:0] mul_ln1099_1;
output  [14:0] v52_address0;
output   v52_ce0;
input  [6:0] v52_q0;
input  [14:0] mul_ln1099_3;
input  [14:0] mul_ln1099_2;
input  [7:0] v556_7;
input  [7:0] v556_8;
input  [7:0] v556_2;
input  [7:0] v556_1;
input  [7:0] v556_5;
input  [7:0] v556_3;
input  [7:0] v556_4;
input  [7:0] v556_6;
input  [7:0] v556;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln1095_reg_572;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_248;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] v552_1_reg_565;
reg   [2:0] v552_1_reg_565_pp0_iter1_reg;
wire   [0:0] icmp_ln1095_fu_260_p2;
wire   [14:0] zext_ln1099_16_fu_272_p1;
reg   [14:0] zext_ln1099_16_reg_576;
wire   [14:0] zext_ln1096_1_fu_287_p1;
reg   [14:0] zext_ln1096_1_reg_587;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [6:0] v555_reg_603;
wire   [14:0] add_ln1099_8_fu_309_p2;
reg   [14:0] add_ln1099_8_reg_608;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] v555_3_reg_618;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [6:0] v555_5_reg_628;
wire   [14:0] add_ln1099_5_fu_340_p2;
reg   [14:0] add_ln1099_5_reg_633;
wire   [14:0] add_ln1099_6_fu_345_p2;
reg   [14:0] add_ln1099_6_reg_638;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] mul_ln1106_fu_380_p2;
reg   [7:0] mul_ln1106_reg_663;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] mul_ln1106_3_fu_396_p2;
reg   [7:0] mul_ln1106_3_reg_678;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln1106_2_fu_412_p2;
reg   [7:0] mul_ln1106_2_reg_693;
wire   [7:0] grp_fu_457_p3;
reg   [7:0] add_ln1106_4_reg_698;
wire   [7:0] mul_ln1106_6_fu_425_p2;
reg   [7:0] mul_ln1106_6_reg_708;
wire   [7:0] grp_fu_463_p3;
reg  signed [7:0] add_ln1106_reg_713;
wire   [7:0] grp_fu_469_p3;
reg  signed [7:0] add_ln1106_1_reg_718;
wire   [7:0] grp_fu_475_p3;
reg  signed [7:0] add_ln1106_3_reg_723;
wire   [7:0] v563_fu_438_p2;
reg   [7:0] v563_reg_728;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln1099_19_fu_282_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1099_1_fu_295_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln1099_3_fu_304_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln1099_18_fu_317_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln1099_11_fu_326_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln1099_15_fu_355_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln1099_13_fu_372_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln1099_17_fu_389_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln1099_14_fu_401_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln1096_3_fu_452_p1;
reg   [2:0] v552_fu_72;
wire   [2:0] add_ln1099_fu_331_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_v552_1;
reg    v52_ce0_local;
reg   [14:0] v52_address0_local;
reg    v51_we1_local;
reg    v51_ce1_local;
wire   [2:0] add_ln1099_1_fu_266_p2;
wire   [14:0] add_ln1099_10_fu_276_p2;
wire   [14:0] add_ln1099_2_fu_290_p2;
wire   [14:0] add_ln1099_3_fu_300_p2;
wire   [14:0] add_ln1099_9_fu_313_p2;
wire   [14:0] add_ln1099_4_fu_322_p2;
wire   [14:0] zext_ln1099_12_fu_336_p1;
wire   [14:0] add_ln1099_7_fu_350_p2;
wire   [6:0] mul_ln1106_fu_380_p0;
wire   [6:0] mul_ln1106_3_fu_396_p0;
wire   [6:0] mul_ln1106_2_fu_412_p0;
wire   [6:0] mul_ln1106_6_fu_425_p0;
wire  signed [7:0] add_ln1106_6_fu_434_p0;
wire   [7:0] grp_fu_481_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1106_6_fu_434_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln1106_2_fu_430_p2;
wire   [12:0] zext_ln1096_2_fu_444_p1;
wire   [12:0] add_ln1096_fu_447_p2;
wire   [6:0] grp_fu_457_p1;
wire   [6:0] grp_fu_463_p1;
wire   [6:0] grp_fu_469_p1;
wire   [6:0] grp_fu_475_p1;
wire   [6:0] grp_fu_481_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
wire   [7:0] grp_fu_457_p10;
wire   [7:0] grp_fu_463_p10;
wire   [7:0] grp_fu_469_p10;
wire   [7:0] grp_fu_475_p10;
wire   [7:0] grp_fu_481_p10;
wire   [7:0] mul_ln1106_2_fu_412_p00;
wire   [7:0] mul_ln1106_3_fu_396_p00;
wire   [7:0] mul_ln1106_6_fu_425_p00;
wire   [7:0] mul_ln1106_fu_380_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v552_fu_72 = 3'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U443(.din0(mul_ln1106_fu_380_p0),.din1(v556_7),.dout(mul_ln1106_fu_380_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U444(.din0(mul_ln1106_3_fu_396_p0),.din1(v556_1),.dout(mul_ln1106_3_fu_396_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U445(.din0(mul_ln1106_2_fu_412_p0),.din1(v556_2),.dout(mul_ln1106_2_fu_412_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U446(.din0(mul_ln1106_6_fu_425_p0),.din1(v556_4),.dout(mul_ln1106_6_fu_425_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U447(.clk(ap_clk),.reset(ap_rst),.din0(v556_8),.din1(grp_fu_457_p1),.din2(mul_ln1106_reg_663),.ce(1'b1),.dout(grp_fu_457_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U448(.clk(ap_clk),.reset(ap_rst),.din0(v556),.din1(grp_fu_463_p1),.din2(mul_ln1106_3_reg_678),.ce(1'b1),.dout(grp_fu_463_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U449(.clk(ap_clk),.reset(ap_rst),.din0(v556_3),.din1(grp_fu_469_p1),.din2(mul_ln1106_2_reg_693),.ce(1'b1),.dout(grp_fu_469_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U450(.clk(ap_clk),.reset(ap_rst),.din0(v556_5),.din1(grp_fu_475_p1),.din2(mul_ln1106_6_reg_708),.ce(1'b1),.dout(grp_fu_475_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U451(.clk(ap_clk),.reset(ap_rst),.din0(v556_6),.din1(grp_fu_481_p1),.din2(add_ln1106_4_reg_698),.ce(1'b1),.dout(grp_fu_481_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v552_fu_72 <= 3'd0;
    end else if (((icmp_ln1095_reg_572 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v552_fu_72 <= add_ln1099_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln1099_5_reg_633 <= add_ln1099_5_fu_340_p2;
        add_ln1099_6_reg_638 <= add_ln1099_6_fu_345_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln1099_8_reg_608 <= add_ln1099_8_fu_309_p2;
        v563_reg_728 <= v563_fu_438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln1106_1_reg_718 <= grp_fu_469_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln1106_3_reg_723 <= grp_fu_475_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln1106_4_reg_698 <= grp_fu_457_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1106_reg_713 <= grp_fu_463_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1095_reg_572 <= icmp_ln1095_fu_260_p2;
        mul_ln1106_6_reg_708 <= mul_ln1106_6_fu_425_p2;
        v552_1_reg_565 <= ap_sig_allocacmp_v552_1;
        v552_1_reg_565_pp0_iter1_reg <= v552_1_reg_565;
        zext_ln1099_16_reg_576[2 : 0] <= zext_ln1099_16_fu_272_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln1106_2_reg_693 <= mul_ln1106_2_fu_412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln1106_3_reg_678 <= mul_ln1106_3_fu_396_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln1106_reg_663 <= mul_ln1106_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_248 <= v52_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v555_3_reg_618 <= v52_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v555_5_reg_628 <= v52_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v555_reg_603 <= v52_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln1096_1_reg_587[2 : 0] <= zext_ln1096_1_fu_287_p1[2 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln1095_reg_572 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v552_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_v552_1 = v552_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v51_ce1_local = 1'b1;
    end else begin
        v51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v51_we1_local = 1'b1;
    end else begin
        v51_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v52_address0_local = zext_ln1099_14_fu_401_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v52_address0_local = zext_ln1099_17_fu_389_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v52_address0_local = zext_ln1099_13_fu_372_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v52_address0_local = zext_ln1099_15_fu_355_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v52_address0_local = zext_ln1099_11_fu_326_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v52_address0_local = zext_ln1099_18_fu_317_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v52_address0_local = zext_ln1099_3_fu_304_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v52_address0_local = zext_ln1099_1_fu_295_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v52_address0_local = zext_ln1099_19_fu_282_p1;
        end else begin
            v52_address0_local = 'bx;
        end
    end else begin
        v52_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v52_ce0_local = 1'b1;
    end else begin
        v52_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
assign add_ln1096_fu_447_p2 = (zext_ln1096 + zext_ln1096_2_fu_444_p1);
assign add_ln1099_10_fu_276_p2 = (mul_ln1099_2 + zext_ln1099_16_fu_272_p1);
assign add_ln1099_1_fu_266_p2 = (ap_sig_allocacmp_v552_1 + 3'd2);
assign add_ln1099_2_fu_290_p2 = (mul_ln1099_1 + zext_ln1096_1_fu_287_p1);
assign add_ln1099_3_fu_300_p2 = (mul_ln1099_3 + zext_ln1096_1_reg_587);
assign add_ln1099_4_fu_322_p2 = (mul_ln1099_2 + zext_ln1096_1_reg_587);
assign add_ln1099_5_fu_340_p2 = (mul_ln1099_1 + zext_ln1099_12_fu_336_p1);
assign add_ln1099_6_fu_345_p2 = (mul_ln1099_3 + zext_ln1099_12_fu_336_p1);
assign add_ln1099_7_fu_350_p2 = (mul_ln1099_2 + zext_ln1099_12_fu_336_p1);
assign add_ln1099_8_fu_309_p2 = (mul_ln1099_1 + zext_ln1099_16_reg_576);
assign add_ln1099_9_fu_313_p2 = (mul_ln1099_3 + zext_ln1099_16_reg_576);
assign add_ln1099_fu_331_p2 = (v552_1_reg_565 + 3'd1);
assign add_ln1106_2_fu_430_p2 = ($signed(add_ln1106_1_reg_718) + $signed(add_ln1106_reg_713));
assign add_ln1106_6_fu_434_p0 = grp_fu_481_p3;
assign add_ln1106_6_fu_434_p2 = ($signed(add_ln1106_6_fu_434_p0) + $signed(add_ln1106_3_reg_723));
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign grp_fu_457_p1 = grp_fu_457_p10;
assign grp_fu_457_p10 = reg_248;
assign grp_fu_463_p1 = grp_fu_463_p10;
assign grp_fu_463_p10 = v555_reg_603;
assign grp_fu_469_p1 = grp_fu_469_p10;
assign grp_fu_469_p10 = v555_3_reg_618;
assign grp_fu_475_p1 = grp_fu_475_p10;
assign grp_fu_475_p10 = v555_5_reg_628;
assign grp_fu_481_p1 = grp_fu_481_p10;
assign grp_fu_481_p10 = reg_248;
assign icmp_ln1095_fu_260_p2 = ((ap_sig_allocacmp_v552_1 == 3'd4) ? 1'b1 : 1'b0);
assign mul_ln1106_2_fu_412_p0 = mul_ln1106_2_fu_412_p00;
assign mul_ln1106_2_fu_412_p00 = v52_q0;
assign mul_ln1106_3_fu_396_p0 = mul_ln1106_3_fu_396_p00;
assign mul_ln1106_3_fu_396_p00 = v52_q0;
assign mul_ln1106_6_fu_425_p0 = mul_ln1106_6_fu_425_p00;
assign mul_ln1106_6_fu_425_p00 = v52_q0;
assign mul_ln1106_fu_380_p0 = mul_ln1106_fu_380_p00;
assign mul_ln1106_fu_380_p00 = v52_q0;
assign v51_address1 = zext_ln1096_3_fu_452_p1;
assign v51_ce1 = v51_ce1_local;
assign v51_d1 = v563_reg_728;
assign v51_we1 = v51_we1_local;
assign v52_address0 = v52_address0_local;
assign v52_ce0 = v52_ce0_local;
assign v563_fu_438_p2 = (add_ln1106_6_fu_434_p2 + add_ln1106_2_fu_430_p2);
assign zext_ln1096_1_fu_287_p1 = v552_1_reg_565;
assign zext_ln1096_2_fu_444_p1 = v552_1_reg_565_pp0_iter1_reg;
assign zext_ln1096_3_fu_452_p1 = add_ln1096_fu_447_p2;
assign zext_ln1099_11_fu_326_p1 = add_ln1099_4_fu_322_p2;
assign zext_ln1099_12_fu_336_p1 = add_ln1099_fu_331_p2;
assign zext_ln1099_13_fu_372_p1 = add_ln1099_5_reg_633;
assign zext_ln1099_14_fu_401_p1 = add_ln1099_6_reg_638;
assign zext_ln1099_15_fu_355_p1 = add_ln1099_7_fu_350_p2;
assign zext_ln1099_16_fu_272_p1 = add_ln1099_1_fu_266_p2;
assign zext_ln1099_17_fu_389_p1 = add_ln1099_8_reg_608;
assign zext_ln1099_18_fu_317_p1 = add_ln1099_9_fu_313_p2;
assign zext_ln1099_19_fu_282_p1 = add_ln1099_10_fu_276_p2;
assign zext_ln1099_1_fu_295_p1 = add_ln1099_2_fu_290_p2;
assign zext_ln1099_3_fu_304_p1 = add_ln1099_3_fu_300_p2;
always @ (posedge ap_clk) begin
    zext_ln1099_16_reg_576[14:3] <= 12'b000000000000;
    zext_ln1096_1_reg_587[14:3] <= 12'b000000000000;
end
endmodule 