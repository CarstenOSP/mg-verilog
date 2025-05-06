
module bicg_bicg_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v140_address0,v140_ce0,v140_q0,v138_address0,v138_ce0,v138_q0,v138_address1,v138_ce1,v138_q1,v65_0_address0,v65_0_ce0,v65_0_we0,v65_0_d0,v65_0_q0,v65_0_address1,v65_0_ce1,v65_0_we1,v65_0_d1,v65_0_q1,v65_1_address0,v65_1_ce0,v65_1_we0,v65_1_d0,v65_1_q0,v65_1_address1,v65_1_ce1,v65_1_we1,v65_1_d1,v65_1_q1);  
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
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [11:0] v138_address0;
output   v138_ce0;
input  [31:0] v138_q0;
output  [11:0] v138_address1;
output   v138_ce1;
input  [31:0] v138_q1;
output  [4:0] v65_0_address0;
output   v65_0_ce0;
output   v65_0_we0;
output  [31:0] v65_0_d0;
input  [31:0] v65_0_q0;
output  [4:0] v65_0_address1;
output   v65_0_ce1;
output   v65_0_we1;
output  [31:0] v65_0_d1;
input  [31:0] v65_0_q1;
output  [4:0] v65_1_address0;
output   v65_1_ce0;
output   v65_1_we0;
output  [31:0] v65_1_d0;
input  [31:0] v65_1_q0;
output  [4:0] v65_1_address1;
output   v65_1_ce1;
output   v65_1_we1;
output  [31:0] v65_1_d1;
input  [31:0] v65_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln111_reg_766;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_292;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_296;
wire   [31:0] grp_fu_276_p2;
reg   [31:0] reg_300;
wire   [31:0] grp_fu_280_p2;
reg   [31:0] reg_305;
wire   [0:0] icmp_ln111_fu_328_p2;
reg   [6:0] v67_load_reg_770;
wire   [6:0] add_ln111_fu_343_p2;
reg   [6:0] add_ln111_reg_775;
wire   [6:0] select_ln110_fu_365_p3;
reg   [6:0] select_ln110_reg_780;
wire   [5:0] trunc_ln111_fu_379_p1;
reg   [5:0] trunc_ln111_reg_786;
wire   [0:0] cmp10_fu_396_p2;
reg   [0:0] cmp10_reg_801;
reg   [0:0] cmp10_reg_801_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_417_p4;
reg   [4:0] lshr_ln_reg_818;
reg   [3:0] tmp_3_reg_828;
wire   [0:0] trunc_ln134_fu_452_p1;
reg   [0:0] trunc_ln134_reg_835;
reg   [2:0] tmp_9_reg_841;
wire   [1:0] trunc_ln152_fu_466_p1;
reg   [1:0] trunc_ln152_reg_851;
reg   [0:0] tmp_4_reg_856;
wire   [31:0] v66_fu_495_p3;
reg   [31:0] v66_reg_862;
wire   [31:0] v75_fu_535_p1;
wire   [31:0] v83_fu_540_p1;
reg   [4:0] v65_0_addr_reg_898;
reg   [4:0] v65_0_addr_reg_898_pp0_iter2_reg;
reg   [4:0] v65_0_addr_reg_898_pp0_iter3_reg;
reg   [4:0] v65_1_addr_reg_903;
reg   [4:0] v65_1_addr_reg_903_pp0_iter2_reg;
reg   [4:0] v65_1_addr_reg_903_pp0_iter3_reg;
reg   [4:0] v65_0_addr_1_reg_908;
reg   [4:0] v65_0_addr_1_reg_908_pp0_iter2_reg;
reg   [4:0] v65_0_addr_1_reg_908_pp0_iter3_reg;
wire   [31:0] v91_fu_593_p1;
reg   [4:0] v65_1_addr_1_reg_919;
reg   [4:0] v65_1_addr_1_reg_919_pp0_iter2_reg;
reg   [4:0] v65_1_addr_1_reg_919_pp0_iter3_reg;
wire   [31:0] v99_fu_598_p1;
reg   [31:0] v73_reg_940;
reg   [4:0] v65_0_addr_2_reg_945;
reg   [4:0] v65_0_addr_2_reg_945_pp0_iter2_reg;
reg   [4:0] v65_0_addr_2_reg_945_pp0_iter3_reg;
reg   [4:0] v65_0_addr_2_reg_945_pp0_iter4_reg;
wire   [31:0] v107_fu_654_p1;
reg   [4:0] v65_1_addr_2_reg_956;
reg   [4:0] v65_1_addr_2_reg_956_pp0_iter2_reg;
reg   [4:0] v65_1_addr_2_reg_956_pp0_iter3_reg;
reg   [4:0] v65_1_addr_2_reg_956_pp0_iter4_reg;
wire   [31:0] v115_fu_659_p1;
reg   [4:0] v65_0_addr_3_reg_967;
reg   [4:0] v65_0_addr_3_reg_967_pp0_iter2_reg;
reg   [4:0] v65_0_addr_3_reg_967_pp0_iter3_reg;
reg   [4:0] v65_0_addr_3_reg_967_pp0_iter4_reg;
reg   [4:0] v65_1_addr_3_reg_972;
reg   [4:0] v65_1_addr_3_reg_972_pp0_iter2_reg;
reg   [4:0] v65_1_addr_3_reg_972_pp0_iter3_reg;
reg   [4:0] v65_1_addr_3_reg_972_pp0_iter4_reg;
reg   [31:0] v81_reg_977;
reg   [31:0] v89_reg_982;
reg   [31:0] v97_reg_987;
wire   [31:0] v74_fu_677_p3;
reg   [31:0] v74_reg_992;
wire   [31:0] grp_fu_284_p2;
reg   [31:0] v76_reg_997;
wire   [31:0] grp_fu_288_p2;
reg   [31:0] v84_reg_1002;
wire   [31:0] v123_fu_683_p1;
wire   [31:0] v131_fu_688_p1;
wire   [31:0] v82_fu_693_p3;
reg   [31:0] v82_reg_1017;
wire   [31:0] v90_fu_699_p3;
reg   [31:0] v90_reg_1022;
wire   [31:0] v98_fu_705_p3;
reg   [31:0] v98_reg_1027;
wire   [31:0] v106_fu_711_p3;
reg   [31:0] v106_reg_1032;
wire   [31:0] v114_fu_718_p3;
reg   [31:0] v114_reg_1037;
wire   [31:0] v122_fu_725_p3;
reg   [31:0] v122_reg_1042;
wire   [31:0] v130_fu_732_p3;
reg   [31:0] v130_reg_1047;
reg   [31:0] v92_reg_1052;
reg   [31:0] v100_reg_1057;
reg   [31:0] v108_reg_1062;
reg   [31:0] v116_reg_1067;
reg   [31:0] v124_reg_1072;
reg   [31:0] v132_reg_1077;
reg   [31:0] v109_reg_1082;
reg   [31:0] v117_reg_1087;
reg   [31:0] v125_reg_1092;
reg   [31:0] v133_reg_1097;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln111_fu_383_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln119_1_fu_412_p1;
wire   [63:0] zext_ln128_fu_437_p1;
wire   [63:0] zext_ln137_fu_512_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln146_fu_525_p1;
wire   [63:0] zext_ln155_fu_554_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln164_fu_570_p1;
wire   [63:0] zext_ln113_fu_575_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln135_fu_587_p1;
wire   [63:0] zext_ln173_fu_612_p1;
wire   [63:0] zext_ln183_fu_625_p1;
wire   [63:0] zext_ln153_fu_648_p1;
wire   [63:0] zext_ln171_fu_671_p1;
reg   [31:0] v66_1_fu_92;
reg   [6:0] v126_fu_96;
wire   [6:0] add_ln112_fu_630_p2;
wire    ap_loop_init;
reg   [6:0] v67_fu_100;
wire   [6:0] select_ln111_fu_373_p3;
reg   [6:0] ap_sig_allocacmp_v67_load;
reg   [9:0] indvar_flatten_fu_104;
wire   [9:0] add_ln111_1_fu_334_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v140_ce0_local;
reg    v138_ce1_local;
reg   [11:0] v138_address1_local;
reg    v138_ce0_local;
reg   [11:0] v138_address0_local;
reg    v65_0_ce1_local;
reg   [4:0] v65_0_address1_local;
reg    v65_0_ce0_local;
reg   [4:0] v65_0_address0_local;
reg    v65_0_we1_local;
reg    v65_0_we0_local;
reg   [31:0] v65_0_d0_local;
reg    v65_1_ce1_local;
reg   [4:0] v65_1_address1_local;
reg    v65_1_ce0_local;
reg   [4:0] v65_1_address0_local;
reg    v65_1_we1_local;
reg    v65_1_we0_local;
reg   [31:0] v65_1_d0_local;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_288_p0;
wire   [0:0] tmp_1_fu_357_p3;
wire   [11:0] tmp_fu_388_p3;
wire   [11:0] zext_ln119_fu_402_p1;
wire   [11:0] add_ln119_fu_406_p2;
wire   [11:0] tmp_2_fu_427_p4;
wire   [0:0] icmp_ln115_fu_490_p2;
wire   [31:0] v69_fu_486_p1;
wire   [11:0] tmp_5_fu_503_p5;
wire   [11:0] tmp_8_fu_517_p4;
wire   [11:0] tmp_s_fu_545_p5;
wire   [11:0] tmp_6_fu_559_p6;
wire   [4:0] or_ln134_1_fu_580_p3;
wire   [11:0] tmp_7_fu_603_p5;
wire   [11:0] tmp_10_fu_617_p4;
wire   [4:0] or_ln152_1_fu_640_p4;
wire   [4:0] or_ln170_1_fu_664_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_1_fu_92 = 32'd0;
#0 v126_fu_96 = 7'd0;
#0 v67_fu_100 = 7'd0;
#0 indvar_flatten_fu_104 = 10'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(1'b1),.dout(grp_fu_276_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_280_p0),.din1(grp_fu_280_p1),.ce(1'b1),.dout(grp_fu_280_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_284_p0),.din1(v66_reg_862),.ce(1'b1),.dout(grp_fu_284_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_288_p0),.din1(v66_reg_862),.ce(1'b1),.dout(grp_fu_288_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln111_fu_328_p2 == 1'd0))) begin
            indvar_flatten_fu_104 <= add_ln111_1_fu_334_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_104 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v126_fu_96 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v126_fu_96 <= add_ln112_fu_630_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v67_fu_100 <= 7'd0;
    end else if (((icmp_ln111_reg_766 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v67_fu_100 <= select_ln111_fu_373_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln111_reg_775 <= add_ln111_fu_343_p2;
        icmp_ln111_reg_766 <= icmp_ln111_fu_328_p2;
        v65_0_addr_1_reg_908[4 : 1] <= zext_ln135_fu_587_p1[4 : 1];
        v65_0_addr_1_reg_908_pp0_iter2_reg[4 : 1] <= v65_0_addr_1_reg_908[4 : 1];
        v65_0_addr_1_reg_908_pp0_iter3_reg[4 : 1] <= v65_0_addr_1_reg_908_pp0_iter2_reg[4 : 1];
        v65_0_addr_reg_898 <= zext_ln113_fu_575_p1;
        v65_0_addr_reg_898_pp0_iter2_reg <= v65_0_addr_reg_898;
        v65_0_addr_reg_898_pp0_iter3_reg <= v65_0_addr_reg_898_pp0_iter2_reg;
        v65_1_addr_1_reg_919[4 : 1] <= zext_ln135_fu_587_p1[4 : 1];
        v65_1_addr_1_reg_919_pp0_iter2_reg[4 : 1] <= v65_1_addr_1_reg_919[4 : 1];
        v65_1_addr_1_reg_919_pp0_iter3_reg[4 : 1] <= v65_1_addr_1_reg_919_pp0_iter2_reg[4 : 1];
        v65_1_addr_reg_903 <= zext_ln113_fu_575_p1;
        v65_1_addr_reg_903_pp0_iter2_reg <= v65_1_addr_reg_903;
        v65_1_addr_reg_903_pp0_iter3_reg <= v65_1_addr_reg_903_pp0_iter2_reg;
        v67_load_reg_770 <= ap_sig_allocacmp_v67_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp10_reg_801 <= cmp10_fu_396_p2;
        cmp10_reg_801_pp0_iter1_reg <= cmp10_reg_801;
        lshr_ln_reg_818 <= {{select_ln110_fu_365_p3[5:1]}};
        select_ln110_reg_780 <= select_ln110_fu_365_p3;
        tmp_3_reg_828 <= {{select_ln110_fu_365_p3[5:2]}};
        tmp_4_reg_856 <= select_ln110_fu_365_p3[32'd1];
        tmp_9_reg_841 <= {{select_ln110_fu_365_p3[5:3]}};
        trunc_ln111_reg_786 <= trunc_ln111_fu_379_p1;
        trunc_ln134_reg_835 <= trunc_ln134_fu_452_p1;
        trunc_ln152_reg_851 <= trunc_ln152_fu_466_p1;
        v65_0_addr_2_reg_945[0] <= zext_ln153_fu_648_p1[0];
v65_0_addr_2_reg_945[4 : 2] <= zext_ln153_fu_648_p1[4 : 2];
        v65_0_addr_2_reg_945_pp0_iter2_reg[0] <= v65_0_addr_2_reg_945[0];
v65_0_addr_2_reg_945_pp0_iter2_reg[4 : 2] <= v65_0_addr_2_reg_945[4 : 2];
        v65_0_addr_2_reg_945_pp0_iter3_reg[0] <= v65_0_addr_2_reg_945_pp0_iter2_reg[0];
v65_0_addr_2_reg_945_pp0_iter3_reg[4 : 2] <= v65_0_addr_2_reg_945_pp0_iter2_reg[4 : 2];
        v65_0_addr_2_reg_945_pp0_iter4_reg[0] <= v65_0_addr_2_reg_945_pp0_iter3_reg[0];
v65_0_addr_2_reg_945_pp0_iter4_reg[4 : 2] <= v65_0_addr_2_reg_945_pp0_iter3_reg[4 : 2];
        v65_0_addr_3_reg_967[4 : 2] <= zext_ln171_fu_671_p1[4 : 2];
        v65_0_addr_3_reg_967_pp0_iter2_reg[4 : 2] <= v65_0_addr_3_reg_967[4 : 2];
        v65_0_addr_3_reg_967_pp0_iter3_reg[4 : 2] <= v65_0_addr_3_reg_967_pp0_iter2_reg[4 : 2];
        v65_0_addr_3_reg_967_pp0_iter4_reg[4 : 2] <= v65_0_addr_3_reg_967_pp0_iter3_reg[4 : 2];
        v65_1_addr_2_reg_956[0] <= zext_ln153_fu_648_p1[0];
v65_1_addr_2_reg_956[4 : 2] <= zext_ln153_fu_648_p1[4 : 2];
        v65_1_addr_2_reg_956_pp0_iter2_reg[0] <= v65_1_addr_2_reg_956[0];
v65_1_addr_2_reg_956_pp0_iter2_reg[4 : 2] <= v65_1_addr_2_reg_956[4 : 2];
        v65_1_addr_2_reg_956_pp0_iter3_reg[0] <= v65_1_addr_2_reg_956_pp0_iter2_reg[0];
v65_1_addr_2_reg_956_pp0_iter3_reg[4 : 2] <= v65_1_addr_2_reg_956_pp0_iter2_reg[4 : 2];
        v65_1_addr_2_reg_956_pp0_iter4_reg[0] <= v65_1_addr_2_reg_956_pp0_iter3_reg[0];
v65_1_addr_2_reg_956_pp0_iter4_reg[4 : 2] <= v65_1_addr_2_reg_956_pp0_iter3_reg[4 : 2];
        v65_1_addr_3_reg_972[4 : 2] <= zext_ln171_fu_671_p1[4 : 2];
        v65_1_addr_3_reg_972_pp0_iter2_reg[4 : 2] <= v65_1_addr_3_reg_972[4 : 2];
        v65_1_addr_3_reg_972_pp0_iter3_reg[4 : 2] <= v65_1_addr_3_reg_972_pp0_iter2_reg[4 : 2];
        v65_1_addr_3_reg_972_pp0_iter4_reg[4 : 2] <= v65_1_addr_3_reg_972_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_292 <= v138_q1;
        reg_296 <= v138_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_300 <= grp_fu_276_p2;
        reg_305 <= grp_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v100_reg_1057 <= grp_fu_288_p2;
        v92_reg_1052 <= grp_fu_284_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v106_reg_1032 <= v106_fu_711_p3;
        v114_reg_1037 <= v114_fu_718_p3;
        v122_reg_1042 <= v122_fu_725_p3;
        v130_reg_1047 <= v130_fu_732_p3;
        v66_reg_862 <= v66_fu_495_p3;
        v74_reg_992 <= v74_fu_677_p3;
        v82_reg_1017 <= v82_fu_693_p3;
        v90_reg_1022 <= v90_fu_699_p3;
        v98_reg_1027 <= v98_fu_705_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v108_reg_1062 <= grp_fu_284_p2;
        v116_reg_1067 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v109_reg_1082 <= grp_fu_276_p2;
        v117_reg_1087 <= grp_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_reg_1072 <= grp_fu_284_p2;
        v132_reg_1077 <= grp_fu_288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v125_reg_1092 <= grp_fu_276_p2;
        v133_reg_1097 <= grp_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln111_reg_766 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_1_fu_92 <= v66_fu_495_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v73_reg_940 <= v65_0_q1;
        v81_reg_977 <= v65_1_q1;
        v89_reg_982 <= v65_0_q0;
        v97_reg_987 <= v65_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v76_reg_997 <= grp_fu_284_p2;
        v84_reg_1002 <= grp_fu_288_p2;
    end
end
always @ (*) begin
    if (((icmp_ln111_reg_766 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v67_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v67_load = v67_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p0 = v122_reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_276_p0 = v106_reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_276_p0 = v90_reg_1022;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p0 = v74_reg_992;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p1 = v124_reg_1072;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_276_p1 = v108_reg_1062;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_276_p1 = v92_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p1 = v76_reg_997;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p0 = v130_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p0 = v114_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p0 = v98_reg_1027;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p0 = v82_reg_1017;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_280_p1 = v132_reg_1077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p1 = v116_reg_1067;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p1 = v100_reg_1057;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_280_p1 = v84_reg_1002;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_284_p0 = v123_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_284_p0 = v107_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_284_p0 = v91_fu_593_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_284_p0 = v75_fu_535_p1;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_288_p0 = v131_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p0 = v115_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p0 = v99_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_288_p0 = v83_fu_540_p1;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v138_address0_local = zext_ln183_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v138_address0_local = zext_ln164_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v138_address0_local = zext_ln146_fu_525_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_address0_local = zext_ln128_fu_437_p1;
    end else begin
        v138_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v138_address1_local = zext_ln173_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v138_address1_local = zext_ln155_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v138_address1_local = zext_ln137_fu_512_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v138_address1_local = zext_ln119_1_fu_412_p1;
    end else begin
        v138_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_ce0_local = 1'b1;
    end else begin
        v138_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v138_ce1_local = 1'b1;
    end else begin
        v138_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v140_ce0_local = 1'b1;
    end else begin
        v140_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address0_local = v65_0_addr_3_reg_967_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address0_local = v65_0_addr_2_reg_945_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address0_local = zext_ln171_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address0_local = zext_ln135_fu_587_p1;
    end else begin
        v65_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_0_address1_local = v65_0_addr_1_reg_908_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_0_address1_local = v65_0_addr_reg_898_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_0_address1_local = zext_ln153_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_0_address1_local = zext_ln113_fu_575_p1;
    end else begin
        v65_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce0_local = 1'b1;
    end else begin
        v65_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_ce1_local = 1'b1;
    end else begin
        v65_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v65_0_d0_local = v125_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v65_0_d0_local = v109_reg_1082;
        end else begin
            v65_0_d0_local = 'bx;
        end
    end else begin
        v65_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we0_local = 1'b1;
    end else begin
        v65_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_0_we1_local = 1'b1;
    end else begin
        v65_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address0_local = v65_1_addr_3_reg_972_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address0_local = v65_1_addr_2_reg_956_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address0_local = zext_ln171_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address0_local = zext_ln135_fu_587_p1;
    end else begin
        v65_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v65_1_address1_local = v65_1_addr_1_reg_919_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v65_1_address1_local = v65_1_addr_reg_903_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v65_1_address1_local = zext_ln153_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v65_1_address1_local = zext_ln113_fu_575_p1;
    end else begin
        v65_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce0_local = 1'b1;
    end else begin
        v65_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_ce1_local = 1'b1;
    end else begin
        v65_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v65_1_d0_local = v133_reg_1097;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v65_1_d0_local = v117_reg_1087;
        end else begin
            v65_1_d0_local = 'bx;
        end
    end else begin
        v65_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we0_local = 1'b1;
    end else begin
        v65_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v65_1_we1_local = 1'b1;
    end else begin
        v65_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln111_1_fu_334_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln111_fu_343_p2 = (ap_sig_allocacmp_v67_load + 7'd1);
assign add_ln112_fu_630_p2 = (select_ln110_reg_780 + 7'd8);
assign add_ln119_fu_406_p2 = (tmp_fu_388_p3 + zext_ln119_fu_402_p1);
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
assign cmp10_fu_396_p2 = ((select_ln111_fu_373_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln111_fu_328_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_490_p2 = ((select_ln110_reg_780 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_417_p4 = {{select_ln110_fu_365_p3[5:1]}};
assign or_ln134_1_fu_580_p3 = {{tmp_3_reg_828}, {1'd1}};
assign or_ln152_1_fu_640_p4 = {{{tmp_9_reg_841}, {1'd1}}, {tmp_4_reg_856}};
assign or_ln170_1_fu_664_p3 = {{tmp_9_reg_841}, {2'd3}};
assign select_ln110_fu_365_p3 = ((tmp_1_fu_357_p3[0:0] == 1'b1) ? 7'd0 : v126_fu_96);
assign select_ln111_fu_373_p3 = ((tmp_1_fu_357_p3[0:0] == 1'b1) ? add_ln111_reg_775 : v67_load_reg_770);
assign tmp_10_fu_617_p4 = {{{trunc_ln111_reg_786}, {tmp_9_reg_841}}, {3'd7}};
assign tmp_1_fu_357_p3 = v126_fu_96[32'd6];
assign tmp_2_fu_427_p4 = {{{trunc_ln111_fu_379_p1}, {lshr_ln_fu_417_p4}}, {1'd1}};
assign tmp_5_fu_503_p5 = {{{{trunc_ln111_reg_786}, {tmp_3_reg_828}}, {1'd1}}, {trunc_ln134_reg_835}};
assign tmp_6_fu_559_p6 = {{{{{trunc_ln111_reg_786}, {tmp_9_reg_841}}, {1'd1}}, {tmp_4_reg_856}}, {1'd1}};
assign tmp_7_fu_603_p5 = {{{{trunc_ln111_reg_786}, {tmp_9_reg_841}}, {2'd3}}, {trunc_ln134_reg_835}};
assign tmp_8_fu_517_p4 = {{{trunc_ln111_reg_786}, {tmp_3_reg_828}}, {2'd3}};
assign tmp_fu_388_p3 = {{trunc_ln111_fu_379_p1}, {6'd0}};
assign tmp_s_fu_545_p5 = {{{{trunc_ln111_reg_786}, {tmp_9_reg_841}}, {1'd1}}, {trunc_ln152_reg_851}};
assign trunc_ln111_fu_379_p1 = select_ln111_fu_373_p3[5:0];
assign trunc_ln134_fu_452_p1 = select_ln110_fu_365_p3[0:0];
assign trunc_ln152_fu_466_p1 = select_ln110_fu_365_p3[1:0];
assign v106_fu_711_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_0_q1);
assign v107_fu_654_p1 = reg_292;
assign v114_fu_718_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_1_q1);
assign v115_fu_659_p1 = reg_296;
assign v122_fu_725_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_0_q0);
assign v123_fu_683_p1 = reg_292;
assign v130_fu_732_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v65_1_q0);
assign v131_fu_688_p1 = reg_296;
assign v138_address0 = v138_address0_local;
assign v138_address1 = v138_address1_local;
assign v138_ce0 = v138_ce0_local;
assign v138_ce1 = v138_ce1_local;
assign v140_address0 = zext_ln111_fu_383_p1;
assign v140_ce0 = v140_ce0_local;
assign v65_0_address0 = v65_0_address0_local;
assign v65_0_address1 = v65_0_address1_local;
assign v65_0_ce0 = v65_0_ce0_local;
assign v65_0_ce1 = v65_0_ce1_local;
assign v65_0_d0 = v65_0_d0_local;
assign v65_0_d1 = reg_300;
assign v65_0_we0 = v65_0_we0_local;
assign v65_0_we1 = v65_0_we1_local;
assign v65_1_address0 = v65_1_address0_local;
assign v65_1_address1 = v65_1_address1_local;
assign v65_1_ce0 = v65_1_ce0_local;
assign v65_1_ce1 = v65_1_ce1_local;
assign v65_1_d0 = v65_1_d0_local;
assign v65_1_d1 = reg_305;
assign v65_1_we0 = v65_1_we0_local;
assign v65_1_we1 = v65_1_we1_local;
assign v66_fu_495_p3 = ((icmp_ln115_fu_490_p2[0:0] == 1'b1) ? v69_fu_486_p1 : v66_1_fu_92);
assign v69_fu_486_p1 = v140_q0;
assign v74_fu_677_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v73_reg_940);
assign v75_fu_535_p1 = reg_292;
assign v82_fu_693_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v81_reg_977);
assign v83_fu_540_p1 = reg_296;
assign v90_fu_699_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v89_reg_982);
assign v91_fu_593_p1 = reg_292;
assign v98_fu_705_p3 = ((cmp10_reg_801_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : v97_reg_987);
assign v99_fu_598_p1 = reg_296;
assign zext_ln111_fu_383_p1 = select_ln111_fu_373_p3;
assign zext_ln113_fu_575_p1 = lshr_ln_reg_818;
assign zext_ln119_1_fu_412_p1 = add_ln119_fu_406_p2;
assign zext_ln119_fu_402_p1 = select_ln110_fu_365_p3;
assign zext_ln128_fu_437_p1 = tmp_2_fu_427_p4;
assign zext_ln135_fu_587_p1 = or_ln134_1_fu_580_p3;
assign zext_ln137_fu_512_p1 = tmp_5_fu_503_p5;
assign zext_ln146_fu_525_p1 = tmp_8_fu_517_p4;
assign zext_ln153_fu_648_p1 = or_ln152_1_fu_640_p4;
assign zext_ln155_fu_554_p1 = tmp_s_fu_545_p5;
assign zext_ln164_fu_570_p1 = tmp_6_fu_559_p6;
assign zext_ln171_fu_671_p1 = or_ln170_1_fu_664_p3;
assign zext_ln173_fu_612_p1 = tmp_7_fu_603_p5;
assign zext_ln183_fu_625_p1 = tmp_10_fu_617_p4;
always @ (posedge ap_clk) begin
    v65_0_addr_1_reg_908[0] <= 1'b1;
    v65_0_addr_1_reg_908_pp0_iter2_reg[0] <= 1'b1;
    v65_0_addr_1_reg_908_pp0_iter3_reg[0] <= 1'b1;
    v65_1_addr_1_reg_919[0] <= 1'b1;
    v65_1_addr_1_reg_919_pp0_iter2_reg[0] <= 1'b1;
    v65_1_addr_1_reg_919_pp0_iter3_reg[0] <= 1'b1;
    v65_0_addr_2_reg_945[1] <= 1'b1;
    v65_0_addr_2_reg_945_pp0_iter2_reg[1] <= 1'b1;
    v65_0_addr_2_reg_945_pp0_iter3_reg[1] <= 1'b1;
    v65_0_addr_2_reg_945_pp0_iter4_reg[1] <= 1'b1;
    v65_1_addr_2_reg_956[1] <= 1'b1;
    v65_1_addr_2_reg_956_pp0_iter2_reg[1] <= 1'b1;
    v65_1_addr_2_reg_956_pp0_iter3_reg[1] <= 1'b1;
    v65_1_addr_2_reg_956_pp0_iter4_reg[1] <= 1'b1;
    v65_0_addr_3_reg_967[1:0] <= 2'b11;
    v65_0_addr_3_reg_967_pp0_iter2_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_967_pp0_iter3_reg[1:0] <= 2'b11;
    v65_0_addr_3_reg_967_pp0_iter4_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_972[1:0] <= 2'b11;
    v65_1_addr_3_reg_972_pp0_iter2_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_972_pp0_iter3_reg[1:0] <= 2'b11;
    v65_1_addr_3_reg_972_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
