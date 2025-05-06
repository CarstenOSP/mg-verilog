
module main_graph_main_graph_Pipeline_VITIS_LOOP_755_172_VITIS_LOOP_756_173_VITIS_LOOP_757_174_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v23_address1,v23_ce1,v23_we1,v23_d1,v12_Addr_A,v12_EN_A,v12_WEN_A,v12_Din_A,v12_Dout_A,v24_address0,v24_ce0,v24_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v23_address1;
output   v23_ce1;
output   v23_we1;
output  [7:0] v23_d1;
output  [31:0] v12_Addr_A;
output   v12_EN_A;
output  [0:0] v12_WEN_A;
output  [7:0] v12_Din_A;
input  [7:0] v12_Dout_A;
output  [12:0] v24_address0;
output   v24_ce0;
input  [6:0] v24_q0;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln755_fu_254_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln755_reg_959;
reg   [0:0] icmp_ln755_reg_959_pp0_iter1_reg;
wire   [0:0] icmp_ln756_fu_280_p2;
reg   [0:0] icmp_ln756_reg_963;
reg   [0:0] icmp_ln756_reg_963_pp0_iter2_reg;
wire   [0:0] xor_ln755_fu_286_p2;
reg   [0:0] xor_ln755_reg_970;
wire   [0:0] and_ln755_3_fu_304_p2;
reg   [0:0] and_ln755_3_reg_976;
reg   [0:0] and_ln755_3_reg_976_pp0_iter2_reg;
wire   [0:0] empty_fu_310_p2;
reg   [0:0] empty_reg_981;
wire   [0:0] not_exitcond_flatten2066_mid22145126_fu_322_p2;
reg   [0:0] not_exitcond_flatten2066_mid22145126_reg_987;
wire   [0:0] exitcond_flatten2040_mid22099_fu_334_p2;
reg   [0:0] exitcond_flatten2040_mid22099_reg_993;
wire   [0:0] empty_18_fu_340_p2;
reg   [0:0] empty_18_reg_1001;
wire   [0:0] empty_19_fu_346_p2;
reg   [0:0] empty_19_reg_1006;
reg   [0:0] empty_19_reg_1006_pp0_iter2_reg;
reg   [0:0] empty_19_reg_1006_pp0_iter3_reg;
reg   [0:0] empty_19_reg_1006_pp0_iter4_reg;
reg   [0:0] empty_19_reg_1006_pp0_iter5_reg;
reg   [0:0] empty_19_reg_1006_pp0_iter6_reg;
wire   [1:0] select_ln757_fu_487_p3;
reg   [1:0] select_ln757_reg_1012;
reg   [1:0] select_ln757_reg_1012_pp0_iter3_reg;
wire   [9:0] select_ln759_fu_541_p3;
reg   [9:0] select_ln759_reg_1018;
wire   [8:0] trunc_ln760_fu_549_p1;
reg   [8:0] trunc_ln760_reg_1023;
reg   [8:0] trunc_ln760_reg_1023_pp0_iter3_reg;
wire   [1:0] v378_mid2_fu_575_p3;
reg   [1:0] v378_mid2_reg_1028;
reg   [1:0] v378_mid2_reg_1028_pp0_iter3_reg;
wire   [1:0] select_ln760_fu_583_p3;
reg   [1:0] select_ln760_reg_1034;
wire   [0:0] icmp_ln761_1_fu_597_p2;
reg   [0:0] icmp_ln761_1_reg_1040;
reg   [0:0] icmp_ln761_1_reg_1040_pp0_iter3_reg;
reg   [0:0] icmp_ln761_1_reg_1040_pp0_iter4_reg;
reg   [0:0] icmp_ln761_1_reg_1040_pp0_iter5_reg;
reg   [0:0] icmp_ln761_1_reg_1040_pp0_iter6_reg;
reg   [0:0] icmp_ln761_1_reg_1040_pp0_iter7_reg;
wire   [0:0] icmp_ln760_1_fu_603_p2;
reg   [0:0] icmp_ln760_1_reg_1044;
reg   [0:0] icmp_ln760_1_reg_1044_pp0_iter3_reg;
reg   [0:0] icmp_ln760_1_reg_1044_pp0_iter4_reg;
reg   [0:0] icmp_ln760_1_reg_1044_pp0_iter5_reg;
reg   [0:0] icmp_ln760_1_reg_1044_pp0_iter6_reg;
reg   [0:0] icmp_ln760_1_reg_1044_pp0_iter7_reg;
wire   [0:0] icmp_ln759_1_fu_609_p2;
reg   [0:0] icmp_ln759_1_reg_1048;
reg   [0:0] icmp_ln759_1_reg_1048_pp0_iter3_reg;
reg   [0:0] icmp_ln759_1_reg_1048_pp0_iter4_reg;
reg   [0:0] icmp_ln759_1_reg_1048_pp0_iter5_reg;
reg   [0:0] icmp_ln759_1_reg_1048_pp0_iter6_reg;
reg   [0:0] icmp_ln759_1_reg_1048_pp0_iter7_reg;
wire   [9:0] add_ln758_fu_715_p2;
reg   [9:0] add_ln758_reg_1052;
wire   [20:0] add_ln763_1_fu_755_p2;
reg   [20:0] add_ln763_1_reg_1057;
wire   [19:0] trunc_ln763_1_fu_761_p1;
reg   [19:0] trunc_ln763_1_reg_1062;
wire   [1:0] empty_25_fu_765_p2;
reg   [1:0] empty_25_reg_1067;
wire   [10:0] add_ln758_1_fu_790_p2;
reg   [10:0] add_ln758_1_reg_1072;
reg   [10:0] add_ln758_1_reg_1072_pp0_iter5_reg;
reg   [10:0] add_ln758_1_reg_1072_pp0_iter6_reg;
reg   [10:0] add_ln758_1_reg_1072_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln763_5_fu_821_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln762_fu_838_p1;
wire   [63:0] zext_ln758_3_fu_857_p1;
reg   [7:0] v381_fu_100;
wire   [7:0] grp_fu_865_p3;
reg   [7:0] ap_sig_allocacmp_v381_load;
wire    ap_loop_init;
reg   [1:0] v378_fu_104;
wire   [1:0] add_ln761_fu_591_p2;
reg   [1:0] v377_fu_108;
reg   [3:0] indvar_flatten2023_fu_112;
wire   [3:0] select_ln760_1_fu_621_p3;
reg   [9:0] v376_fu_116;
reg   [13:0] indvar_flatten2038_fu_120;
wire   [13:0] select_ln759_1_fu_358_p3;
reg   [1:0] v375_fu_124;
reg   [14:0] indvar_flatten2064_fu_128;
wire   [14:0] select_ln757_1_fu_372_p3;
reg   [1:0] v374_fu_132;
wire   [1:0] select_ln756_fu_686_p3;
reg   [15:0] indvar_flatten2100_fu_136;
wire   [15:0] select_ln756_1_fu_386_p3;
reg   [9:0] v373_fu_140;
wire   [9:0] select_ln755_1_fu_673_p3;
reg   [23:0] indvar_flatten2146_fu_144;
wire   [23:0] add_ln755_1_fu_260_p2;
reg   [23:0] ap_sig_allocacmp_indvar_flatten2146_load;
reg    v24_ce0_local;
reg    v12_EN_A_local;
wire   [31:0] v12_Addr_A_orig;
reg    v23_we1_local;
reg    v23_ce1_local;
wire   [0:0] icmp_ln757_fu_298_p2;
wire   [0:0] exitcond_flatten2066_not127_fu_316_p2;
wire   [0:0] icmp_ln759_fu_292_p2;
wire   [0:0] and_ln755_2_fu_328_p2;
wire   [13:0] add_ln759_1_fu_352_p2;
wire   [14:0] add_ln757_1_fu_366_p2;
wire   [15:0] add_ln756_1_fu_380_p2;
wire   [0:0] icmp_ln761_fu_424_p2;
wire   [0:0] icmp_ln760_fu_435_p2;
wire   [0:0] and_ln755_fu_430_p2;
wire   [0:0] and_ln755_1_fu_441_p2;
wire   [1:0] v375_mid22071_fu_446_p3;
wire   [0:0] exitcond_flatten2025_mid22095_fu_458_p2;
wire   [0:0] not_exitcond_flatten2040_mid22099_fu_476_p2;
wire   [1:0] add_ln757_fu_463_p2;
wire   [9:0] v376_mid22045_fu_469_p3;
wire   [0:0] exitcond_flatten2025_mid22063_fu_481_p2;
wire   [0:0] empty_20_fu_500_p2;
wire   [0:0] empty_21_fu_505_p2;
wire   [0:0] exitcond_flatten2025_mid22095_not_fu_518_p2;
wire   [0:0] icmp_ln761_mid22091_fu_453_p2;
wire   [0:0] icmp_ln761_mid22059_fu_529_p2;
wire   [0:0] not_exitcond_flatten2025_mid22063_fu_524_p2;
wire   [9:0] add_ln759_fu_494_p2;
wire   [1:0] v377_mid22030_fu_510_p3;
wire   [0:0] icmp_ln761_mid22037_fu_535_p2;
wire   [0:0] empty_22_fu_559_p2;
wire   [0:0] empty_23_fu_564_p2;
wire   [0:0] empty_24_fu_570_p2;
wire   [1:0] add_ln760_fu_553_p2;
wire   [3:0] add_ln760_1_fu_615_p2;
wire   [9:0] add_ln755_fu_660_p2;
wire   [1:0] select_ln755_fu_666_p3;
wire   [1:0] add_ln756_fu_680_p2;
wire   [18:0] tmp_s_fu_693_p3;
wire   [9:0] shl_ln758_fu_705_p2;
wire   [9:0] zext_ln758_1_fu_711_p1;
wire   [19:0] zext_ln758_fu_701_p1;
wire   [19:0] zext_ln763_fu_721_p1;
wire   [19:0] add_ln763_fu_724_p2;
wire   [18:0] trunc_ln763_fu_730_p1;
wire   [20:0] tmp_3_fu_734_p3;
wire   [20:0] zext_ln763_1_fu_742_p1;
wire   [20:0] sub_ln760_fu_746_p2;
wire   [20:0] zext_ln763_2_fu_752_p1;
wire   [10:0] tmp_fu_780_p3;
wire   [10:0] zext_ln758_2_fu_787_p1;
wire   [21:0] tmp_4_fu_796_p3;
wire   [21:0] zext_ln763_3_fu_803_p1;
wire   [21:0] sub_ln763_fu_806_p2;
wire   [21:0] zext_ln763_4_fu_812_p1;
wire   [21:0] add_ln763_2_fu_815_p2;
wire   [1:0] add_ln762_fu_826_p2;
wire   [12:0] tmp_5_fu_830_p4;
wire   [6:0] grp_fu_865_p1;
wire   [7:0] grp_fu_865_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_865_p10;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 v381_fu_100 = 8'd0;
#0 v378_fu_104 = 2'd0;
#0 v377_fu_108 = 2'd0;
#0 indvar_flatten2023_fu_112 = 4'd0;
#0 v376_fu_116 = 10'd0;
#0 indvar_flatten2038_fu_120 = 14'd0;
#0 v375_fu_124 = 2'd0;
#0 indvar_flatten2064_fu_128 = 15'd0;
#0 v374_fu_132 = 2'd0;
#0 indvar_flatten2100_fu_136 = 16'd0;
#0 v373_fu_140 = 10'd0;
#0 indvar_flatten2146_fu_144 = 24'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(v12_Dout_A),.din1(grp_fu_865_p1),.din2(grp_fu_865_p2),.ce(1'b1),.dout(grp_fu_865_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            indvar_flatten2023_fu_112 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd0))) begin
            indvar_flatten2023_fu_112 <= select_ln760_1_fu_621_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2038_fu_120 <= 14'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln755_reg_959 == 1'd0))) begin
            indvar_flatten2038_fu_120 <= select_ln759_1_fu_358_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2064_fu_128 <= 15'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln755_reg_959 == 1'd0))) begin
            indvar_flatten2064_fu_128 <= select_ln757_1_fu_372_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2100_fu_136 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln755_reg_959 == 1'd0))) begin
            indvar_flatten2100_fu_136 <= select_ln756_1_fu_386_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln755_fu_254_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2146_fu_144 <= add_ln755_1_fu_260_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2146_fu_144 <= 24'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v373_fu_140 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v373_fu_140 <= select_ln755_1_fu_673_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v374_fu_132 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v374_fu_132 <= select_ln756_fu_686_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v375_fu_124 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd0))) begin
            v375_fu_124 <= select_ln757_fu_487_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v376_fu_116 <= 10'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd0))) begin
            v376_fu_116 <= select_ln759_fu_541_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v377_fu_108 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd0))) begin
            v377_fu_108 <= select_ln760_fu_583_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v378_fu_104 <= 2'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd0))) begin
            v378_fu_104 <= add_ln761_fu_591_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v381_fu_100 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
            v381_fu_100 <= grp_fu_865_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln758_1_reg_1072 <= add_ln758_1_fu_790_p2;
        add_ln758_1_reg_1072_pp0_iter5_reg <= add_ln758_1_reg_1072;
        add_ln758_1_reg_1072_pp0_iter6_reg <= add_ln758_1_reg_1072_pp0_iter5_reg;
        add_ln758_1_reg_1072_pp0_iter7_reg <= add_ln758_1_reg_1072_pp0_iter6_reg;
        add_ln758_reg_1052 <= add_ln758_fu_715_p2;
        add_ln763_1_reg_1057 <= add_ln763_1_fu_755_p2;
        and_ln755_3_reg_976_pp0_iter2_reg <= and_ln755_3_reg_976;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        empty_19_reg_1006_pp0_iter2_reg <= empty_19_reg_1006;
        empty_19_reg_1006_pp0_iter3_reg <= empty_19_reg_1006_pp0_iter2_reg;
        empty_19_reg_1006_pp0_iter4_reg <= empty_19_reg_1006_pp0_iter3_reg;
        empty_19_reg_1006_pp0_iter5_reg <= empty_19_reg_1006_pp0_iter4_reg;
        empty_19_reg_1006_pp0_iter6_reg <= empty_19_reg_1006_pp0_iter5_reg;
        empty_25_reg_1067 <= empty_25_fu_765_p2;
        icmp_ln756_reg_963_pp0_iter2_reg <= icmp_ln756_reg_963;
        icmp_ln759_1_reg_1048 <= icmp_ln759_1_fu_609_p2;
        icmp_ln759_1_reg_1048_pp0_iter3_reg <= icmp_ln759_1_reg_1048;
        icmp_ln759_1_reg_1048_pp0_iter4_reg <= icmp_ln759_1_reg_1048_pp0_iter3_reg;
        icmp_ln759_1_reg_1048_pp0_iter5_reg <= icmp_ln759_1_reg_1048_pp0_iter4_reg;
        icmp_ln759_1_reg_1048_pp0_iter6_reg <= icmp_ln759_1_reg_1048_pp0_iter5_reg;
        icmp_ln759_1_reg_1048_pp0_iter7_reg <= icmp_ln759_1_reg_1048_pp0_iter6_reg;
        icmp_ln760_1_reg_1044 <= icmp_ln760_1_fu_603_p2;
        icmp_ln760_1_reg_1044_pp0_iter3_reg <= icmp_ln760_1_reg_1044;
        icmp_ln760_1_reg_1044_pp0_iter4_reg <= icmp_ln760_1_reg_1044_pp0_iter3_reg;
        icmp_ln760_1_reg_1044_pp0_iter5_reg <= icmp_ln760_1_reg_1044_pp0_iter4_reg;
        icmp_ln760_1_reg_1044_pp0_iter6_reg <= icmp_ln760_1_reg_1044_pp0_iter5_reg;
        icmp_ln760_1_reg_1044_pp0_iter7_reg <= icmp_ln760_1_reg_1044_pp0_iter6_reg;
        icmp_ln761_1_reg_1040 <= icmp_ln761_1_fu_597_p2;
        icmp_ln761_1_reg_1040_pp0_iter3_reg <= icmp_ln761_1_reg_1040;
        icmp_ln761_1_reg_1040_pp0_iter4_reg <= icmp_ln761_1_reg_1040_pp0_iter3_reg;
        icmp_ln761_1_reg_1040_pp0_iter5_reg <= icmp_ln761_1_reg_1040_pp0_iter4_reg;
        icmp_ln761_1_reg_1040_pp0_iter6_reg <= icmp_ln761_1_reg_1040_pp0_iter5_reg;
        icmp_ln761_1_reg_1040_pp0_iter7_reg <= icmp_ln761_1_reg_1040_pp0_iter6_reg;
        select_ln757_reg_1012 <= select_ln757_fu_487_p3;
        select_ln757_reg_1012_pp0_iter3_reg <= select_ln757_reg_1012;
        select_ln759_reg_1018 <= select_ln759_fu_541_p3;
        select_ln760_reg_1034 <= select_ln760_fu_583_p3;
        trunc_ln760_reg_1023 <= trunc_ln760_fu_549_p1;
        trunc_ln760_reg_1023_pp0_iter3_reg <= trunc_ln760_reg_1023;
        trunc_ln763_1_reg_1062 <= trunc_ln763_1_fu_761_p1;
        v378_mid2_reg_1028 <= v378_mid2_fu_575_p3;
        v378_mid2_reg_1028_pp0_iter3_reg <= v378_mid2_reg_1028;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln755_3_reg_976 <= and_ln755_3_fu_304_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_18_reg_1001 <= empty_18_fu_340_p2;
        empty_19_reg_1006 <= empty_19_fu_346_p2;
        empty_reg_981 <= empty_fu_310_p2;
        exitcond_flatten2040_mid22099_reg_993 <= exitcond_flatten2040_mid22099_fu_334_p2;
        icmp_ln755_reg_959 <= icmp_ln755_fu_254_p2;
        icmp_ln755_reg_959_pp0_iter1_reg <= icmp_ln755_reg_959;
        icmp_ln756_reg_963 <= icmp_ln756_fu_280_p2;
        not_exitcond_flatten2066_mid22145126_reg_987 <= not_exitcond_flatten2066_mid22145126_fu_322_p2;
        xor_ln755_reg_970 <= xor_ln755_fu_286_p2;
    end
end
always @ (*) begin
    if (((icmp_ln755_fu_254_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln755_reg_959_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten2146_load = 24'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2146_load = indvar_flatten2146_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        ap_sig_allocacmp_v381_load = grp_fu_865_p3;
    end else begin
        ap_sig_allocacmp_v381_load = v381_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v12_EN_A_local = 1'b1;
    end else begin
        v12_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v23_ce1_local = 1'b1;
    end else begin
        v23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln759_1_reg_1048_pp0_iter7_reg == 1'd1) & (icmp_ln760_1_reg_1044_pp0_iter7_reg == 1'd1) & (icmp_ln761_1_reg_1040_pp0_iter7_reg == 1'd1))) begin
        v23_we1_local = 1'b1;
    end else begin
        v23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v24_ce0_local = 1'b1;
    end else begin
        v24_ce0_local = 1'b0;
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
assign add_ln755_1_fu_260_p2 = (ap_sig_allocacmp_indvar_flatten2146_load + 24'd1);
assign add_ln755_fu_660_p2 = (v373_fu_140 + 10'd1);
assign add_ln756_1_fu_380_p2 = (indvar_flatten2100_fu_136 + 16'd1);
assign add_ln756_fu_680_p2 = (select_ln755_fu_666_p3 + 2'd1);
assign add_ln757_1_fu_366_p2 = (indvar_flatten2064_fu_128 + 15'd1);
assign add_ln757_fu_463_p2 = (v375_mid22071_fu_446_p3 + 2'd1);
assign add_ln758_1_fu_790_p2 = (tmp_fu_780_p3 + zext_ln758_2_fu_787_p1);
assign add_ln758_fu_715_p2 = (shl_ln758_fu_705_p2 + zext_ln758_1_fu_711_p1);
assign add_ln759_1_fu_352_p2 = (indvar_flatten2038_fu_120 + 14'd1);
assign add_ln759_fu_494_p2 = (v376_mid22045_fu_469_p3 + 10'd1);
assign add_ln760_1_fu_615_p2 = (indvar_flatten2023_fu_112 + 4'd1);
assign add_ln760_fu_553_p2 = (v377_mid22030_fu_510_p3 + 2'd1);
assign add_ln761_fu_591_p2 = (v378_mid2_fu_575_p3 + 2'd1);
assign add_ln762_fu_826_p2 = (v378_mid2_reg_1028_pp0_iter3_reg + select_ln757_reg_1012_pp0_iter3_reg);
assign add_ln763_1_fu_755_p2 = (sub_ln760_fu_746_p2 + zext_ln763_2_fu_752_p1);
assign add_ln763_2_fu_815_p2 = (sub_ln763_fu_806_p2 + zext_ln763_4_fu_812_p1);
assign add_ln763_fu_724_p2 = (zext_ln758_fu_701_p1 + zext_ln763_fu_721_p1);
assign and_ln755_1_fu_441_p2 = (xor_ln755_reg_970 & icmp_ln760_fu_435_p2);
assign and_ln755_2_fu_328_p2 = (xor_ln755_fu_286_p2 & icmp_ln759_fu_292_p2);
assign and_ln755_3_fu_304_p2 = (xor_ln755_fu_286_p2 & icmp_ln757_fu_298_p2);
assign and_ln755_fu_430_p2 = (xor_ln755_reg_970 & icmp_ln761_fu_424_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_18_fu_340_p2 = (exitcond_flatten2040_mid22099_fu_334_p2 | and_ln755_3_fu_304_p2);
assign empty_19_fu_346_p2 = (icmp_ln756_fu_280_p2 | empty_18_fu_340_p2);
assign empty_20_fu_500_p2 = (exitcond_flatten2040_mid22099_reg_993 | exitcond_flatten2025_mid22063_fu_481_p2);
assign empty_21_fu_505_p2 = (empty_reg_981 | empty_20_fu_500_p2);
assign empty_22_fu_559_p2 = (exitcond_flatten2025_mid22063_fu_481_p2 | empty_18_reg_1001);
assign empty_23_fu_564_p2 = (icmp_ln761_mid22037_fu_535_p2 | empty_22_fu_559_p2);
assign empty_24_fu_570_p2 = (icmp_ln756_reg_963 | empty_23_fu_564_p2);
assign empty_25_fu_765_p2 = (select_ln760_reg_1034 + select_ln756_fu_686_p3);
assign empty_fu_310_p2 = (icmp_ln756_fu_280_p2 | and_ln755_3_fu_304_p2);
assign exitcond_flatten2025_mid22063_fu_481_p2 = (not_exitcond_flatten2040_mid22099_fu_476_p2 & exitcond_flatten2025_mid22095_fu_458_p2);
assign exitcond_flatten2025_mid22095_fu_458_p2 = (not_exitcond_flatten2066_mid22145126_reg_987 & and_ln755_1_fu_441_p2);
assign exitcond_flatten2025_mid22095_not_fu_518_p2 = (exitcond_flatten2025_mid22095_fu_458_p2 ^ 1'd1);
assign exitcond_flatten2040_mid22099_fu_334_p2 = (not_exitcond_flatten2066_mid22145126_fu_322_p2 & and_ln755_2_fu_328_p2);
assign exitcond_flatten2066_not127_fu_316_p2 = (icmp_ln757_fu_298_p2 ^ 1'd1);
assign grp_fu_865_p1 = grp_fu_865_p10;
assign grp_fu_865_p10 = v24_q0;
assign grp_fu_865_p2 = ((empty_19_reg_1006_pp0_iter6_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v381_load);
assign icmp_ln755_fu_254_p2 = ((ap_sig_allocacmp_indvar_flatten2146_load == 24'd9437184) ? 1'b1 : 1'b0);
assign icmp_ln756_fu_280_p2 = ((indvar_flatten2100_fu_136 == 16'd18432) ? 1'b1 : 1'b0);
assign icmp_ln757_fu_298_p2 = ((indvar_flatten2064_fu_128 == 15'd9216) ? 1'b1 : 1'b0);
assign icmp_ln759_1_fu_609_p2 = ((select_ln759_fu_541_p3 == 10'd511) ? 1'b1 : 1'b0);
assign icmp_ln759_fu_292_p2 = ((indvar_flatten2038_fu_120 == 14'd4608) ? 1'b1 : 1'b0);
assign icmp_ln760_1_fu_603_p2 = ((select_ln760_fu_583_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln760_fu_435_p2 = ((indvar_flatten2023_fu_112 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln761_1_fu_597_p2 = ((add_ln761_fu_591_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln761_fu_424_p2 = ((v378_fu_104 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln761_mid22037_fu_535_p2 = (not_exitcond_flatten2025_mid22063_fu_524_p2 & icmp_ln761_mid22059_fu_529_p2);
assign icmp_ln761_mid22059_fu_529_p2 = (not_exitcond_flatten2040_mid22099_fu_476_p2 & icmp_ln761_mid22091_fu_453_p2);
assign icmp_ln761_mid22091_fu_453_p2 = (not_exitcond_flatten2066_mid22145126_reg_987 & and_ln755_fu_430_p2);
assign not_exitcond_flatten2025_mid22063_fu_524_p2 = (exitcond_flatten2040_mid22099_reg_993 | exitcond_flatten2025_mid22095_not_fu_518_p2);
assign not_exitcond_flatten2040_mid22099_fu_476_p2 = (exitcond_flatten2040_mid22099_reg_993 ^ 1'd1);
assign not_exitcond_flatten2066_mid22145126_fu_322_p2 = (icmp_ln756_fu_280_p2 | exitcond_flatten2066_not127_fu_316_p2);
assign select_ln755_1_fu_673_p3 = ((icmp_ln756_reg_963_pp0_iter2_reg[0:0] == 1'b1) ? add_ln755_fu_660_p2 : v373_fu_140);
assign select_ln755_fu_666_p3 = ((icmp_ln756_reg_963_pp0_iter2_reg[0:0] == 1'b1) ? 2'd0 : v374_fu_132);
assign select_ln756_1_fu_386_p3 = ((icmp_ln756_fu_280_p2[0:0] == 1'b1) ? 16'd1 : add_ln756_1_fu_380_p2);
assign select_ln756_fu_686_p3 = ((and_ln755_3_reg_976_pp0_iter2_reg[0:0] == 1'b1) ? add_ln756_fu_680_p2 : select_ln755_fu_666_p3);
assign select_ln757_1_fu_372_p3 = ((empty_fu_310_p2[0:0] == 1'b1) ? 15'd1 : add_ln757_1_fu_366_p2);
assign select_ln757_fu_487_p3 = ((exitcond_flatten2040_mid22099_reg_993[0:0] == 1'b1) ? add_ln757_fu_463_p2 : v375_mid22071_fu_446_p3);
assign select_ln759_1_fu_358_p3 = ((empty_19_fu_346_p2[0:0] == 1'b1) ? 14'd1 : add_ln759_1_fu_352_p2);
assign select_ln759_fu_541_p3 = ((exitcond_flatten2025_mid22063_fu_481_p2[0:0] == 1'b1) ? add_ln759_fu_494_p2 : v376_mid22045_fu_469_p3);
assign select_ln760_1_fu_621_p3 = ((empty_21_fu_505_p2[0:0] == 1'b1) ? 4'd1 : add_ln760_1_fu_615_p2);
assign select_ln760_fu_583_p3 = ((icmp_ln761_mid22037_fu_535_p2[0:0] == 1'b1) ? add_ln760_fu_553_p2 : v377_mid22030_fu_510_p3);
assign shl_ln758_fu_705_p2 = select_ln755_1_fu_673_p3 << 10'd1;
assign sub_ln760_fu_746_p2 = (tmp_3_fu_734_p3 - zext_ln763_1_fu_742_p1);
assign sub_ln763_fu_806_p2 = (tmp_4_fu_796_p3 - zext_ln763_3_fu_803_p1);
assign tmp_3_fu_734_p3 = {{trunc_ln763_fu_730_p1}, {2'd0}};
assign tmp_4_fu_796_p3 = {{trunc_ln763_1_reg_1062}, {2'd0}};
assign tmp_5_fu_830_p4 = {{{trunc_ln760_reg_1023_pp0_iter3_reg}, {empty_25_reg_1067}}, {add_ln762_fu_826_p2}};
assign tmp_fu_780_p3 = {{add_ln758_reg_1052}, {1'd0}};
assign tmp_s_fu_693_p3 = {{select_ln755_1_fu_673_p3}, {9'd0}};
assign trunc_ln760_fu_549_p1 = select_ln759_fu_541_p3[8:0];
assign trunc_ln763_1_fu_761_p1 = add_ln763_1_fu_755_p2[19:0];
assign trunc_ln763_fu_730_p1 = add_ln763_fu_724_p2[18:0];
assign v12_Addr_A = v12_Addr_A_orig << 32'd0;
assign v12_Addr_A_orig = zext_ln763_5_fu_821_p1;
assign v12_Din_A = 8'd0;
assign v12_EN_A = v12_EN_A_local;
assign v12_WEN_A = 1'd0;
assign v23_address1 = zext_ln758_3_fu_857_p1;
assign v23_ce1 = v23_ce1_local;
assign v23_d1 = grp_fu_865_p3;
assign v23_we1 = v23_we1_local;
assign v24_address0 = zext_ln762_fu_838_p1;
assign v24_ce0 = v24_ce0_local;
assign v375_mid22071_fu_446_p3 = ((empty_reg_981[0:0] == 1'b1) ? 2'd0 : v375_fu_124);
assign v376_mid22045_fu_469_p3 = ((empty_19_reg_1006[0:0] == 1'b1) ? 10'd0 : v376_fu_116);
assign v377_mid22030_fu_510_p3 = ((empty_21_fu_505_p2[0:0] == 1'b1) ? 2'd0 : v377_fu_108);
assign v378_mid2_fu_575_p3 = ((empty_24_fu_570_p2[0:0] == 1'b1) ? 2'd0 : v378_fu_104);
assign xor_ln755_fu_286_p2 = (icmp_ln756_fu_280_p2 ^ 1'd1);
assign zext_ln758_1_fu_711_p1 = select_ln756_fu_686_p3;
assign zext_ln758_2_fu_787_p1 = select_ln757_reg_1012_pp0_iter3_reg;
assign zext_ln758_3_fu_857_p1 = add_ln758_1_reg_1072_pp0_iter7_reg;
assign zext_ln758_fu_701_p1 = tmp_s_fu_693_p3;
assign zext_ln762_fu_838_p1 = tmp_5_fu_830_p4;
assign zext_ln763_1_fu_742_p1 = add_ln763_fu_724_p2;
assign zext_ln763_2_fu_752_p1 = select_ln760_reg_1034;
assign zext_ln763_3_fu_803_p1 = add_ln763_1_reg_1057;
assign zext_ln763_4_fu_812_p1 = v378_mid2_reg_1028_pp0_iter3_reg;
assign zext_ln763_5_fu_821_p1 = add_ln763_2_fu_815_p2;
assign zext_ln763_fu_721_p1 = select_ln759_reg_1018;
endmodule 
