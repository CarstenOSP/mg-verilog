module SgdLR_sw_SgdLR_sw_Pipeline_label_49 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,grp_fu_331_p_din0,grp_fu_331_p_din1,grp_fu_331_p_opcode,grp_fu_331_p_dout0,grp_fu_331_p_ce,grp_fu_994_p_din0,grp_fu_994_p_din1,grp_fu_994_p_dout0,grp_fu_994_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
output  [8:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [8:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [31:0] grp_fu_331_p_din0;
output  [31:0] grp_fu_331_p_din1;
output  [0:0] grp_fu_331_p_opcode;
input  [31:0] grp_fu_331_p_dout0;
output   grp_fu_331_p_ce;
output  [31:0] grp_fu_994_p_din0;
output  [31:0] grp_fu_994_p_din1;
input  [31:0] grp_fu_994_p_dout0;
output   grp_fu_994_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_740;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_330;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] v25_1_reg_729;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] v2_addr_reg_754;
reg   [9:0] v2_addr_reg_754_pp0_iter1_reg;
reg   [9:0] v2_addr_1_reg_769;
reg   [9:0] v2_addr_1_reg_769_pp0_iter1_reg;
wire   [0:0] tmp_1_fu_412_p3;
reg   [0:0] tmp_1_reg_775;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_fu_419_p3;
reg   [31:0] v26_reg_781;
reg   [31:0] v2_load_reg_786;
wire   [31:0] v26_1_fu_427_p3;
reg   [31:0] v26_1_reg_791;
reg   [31:0] v2_load_1_reg_796;
reg   [9:0] v2_addr_2_reg_811;
reg   [9:0] v2_addr_2_reg_811_pp0_iter1_reg;
reg   [9:0] v2_addr_3_reg_826;
reg   [9:0] v2_addr_3_reg_826_pp0_iter1_reg;
reg   [9:0] v2_addr_3_reg_826_pp0_iter2_reg;
wire   [31:0] grp_fu_316_p3;
reg   [31:0] v26_2_reg_832;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v2_load_2_reg_837;
wire   [31:0] grp_fu_323_p3;
reg   [31:0] v26_3_reg_842;
reg   [31:0] v2_load_3_reg_847;
wire   [6:0] tmp_5_fu_507_p4;
reg   [6:0] tmp_5_reg_852;
reg   [6:0] tmp_5_reg_852_pp0_iter1_reg;
wire   [5:0] tmp_6_fu_529_p4;
reg   [5:0] tmp_6_reg_858;
reg   [9:0] v2_addr_4_reg_874;
reg   [9:0] v2_addr_4_reg_874_pp0_iter1_reg;
reg   [9:0] v2_addr_4_reg_874_pp0_iter2_reg;
reg   [9:0] v2_addr_5_reg_890;
reg   [9:0] v2_addr_5_reg_890_pp0_iter1_reg;
reg   [9:0] v2_addr_5_reg_890_pp0_iter2_reg;
reg   [31:0] v26_4_reg_895;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v2_load_4_reg_900;
reg   [31:0] v26_5_reg_905;
reg   [31:0] v2_load_5_reg_910;
reg   [9:0] v2_addr_6_reg_925;
reg   [9:0] v2_addr_6_reg_925_pp0_iter1_reg;
reg   [9:0] v2_addr_6_reg_925_pp0_iter2_reg;
reg   [31:0] v26_6_reg_941;
reg   [31:0] v2_load_6_reg_946;
reg   [31:0] v26_7_reg_951;
reg   [31:0] v27_reg_956;
wire   [31:0] v28_fu_632_p1;
reg   [31:0] v27_1_reg_966;
wire   [31:0] v28_1_fu_636_p1;
reg   [31:0] v27_2_reg_976;
wire   [31:0] v28_2_fu_650_p1;
reg   [31:0] v27_3_reg_986;
wire   [31:0] v28_3_fu_654_p1;
reg   [31:0] v27_4_reg_996;
wire   [31:0] v28_4_fu_658_p1;
reg   [31:0] v27_5_reg_1006;
wire   [31:0] v28_5_fu_662_p1;
reg   [31:0] v27_6_reg_1016;
reg   [9:0] v2_addr_7_reg_1021;
reg   [9:0] v2_addr_7_reg_1021_pp0_iter2_reg;
wire   [31:0] v28_6_fu_678_p1;
reg   [31:0] v27_7_reg_1031;
reg   [31:0] v2_load_7_reg_1036;
wire   [31:0] v28_7_fu_687_p1;
reg   [31:0] v29_4_reg_1046;
reg   [31:0] v29_5_reg_1051;
reg   [31:0] v29_6_reg_1056;
reg   [31:0] v29_7_reg_1061;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_1_fu_359_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_350_p1;
wire   [63:0] zext_ln56_1_fu_406_p1;
wire   [63:0] zext_ln56_fu_383_p1;
wire   [63:0] zext_ln56_3_fu_474_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_2_fu_452_p1;
wire   [63:0] zext_ln56_5_fu_501_p1;
wire   [63:0] zext_ln56_4_fu_488_p1;
wire   [63:0] zext_ln56_7_fu_546_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_6_fu_524_p1;
wire   [63:0] zext_ln56_9_fu_588_p1;
wire   [63:0] zext_ln56_8_fu_571_p1;
wire   [63:0] zext_ln56_11_fu_613_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_10_fu_601_p1;
wire   [63:0] zext_ln56_13_fu_626_p1;
wire   [63:0] zext_ln56_12_fu_673_p1;
reg   [10:0] v25_fu_84;
wire   [10:0] add_ln55_fu_640_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce1_local;
reg   [8:0] v3_address1_local;
reg    v3_ce0_local;
reg   [8:0] v3_address0_local;
reg    v3_1_ce1_local;
reg   [8:0] v3_1_address1_local;
reg    v3_1_ce0_local;
reg   [8:0] v3_1_address0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
reg   [31:0] v2_d1_local;
wire   [31:0] bitcast_ln60_fu_682_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln60_1_fu_691_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln60_2_fu_696_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln60_3_fu_701_p1;
wire    ap_block_pp0_stage4;
reg    v2_we0_local;
reg   [31:0] v2_d0_local;
wire   [31:0] bitcast_ln60_4_fu_706_p1;
wire   [31:0] bitcast_ln60_5_fu_710_p1;
wire   [31:0] bitcast_ln60_6_fu_714_p1;
wire   [31:0] bitcast_ln60_7_fu_718_p1;
reg   [31:0] grp_fu_307_p0;
reg   [31:0] grp_fu_307_p1;
reg   [31:0] grp_fu_311_p0;
wire   [8:0] trunc_ln55_fu_355_p1;
wire   [8:0] tmp_s_fu_365_p4;
wire   [9:0] or_ln55_s_fu_375_p3;
wire   [7:0] tmp_2_fu_388_p4;
wire   [8:0] or_ln56_s_fu_398_p3;
wire   [7:0] tmp_3_fu_435_p4;
wire   [9:0] or_ln55_1_fu_444_p3;
wire   [6:0] tmp_4_fu_457_p4;
wire   [8:0] or_ln56_1_fu_466_p3;
wire   [9:0] or_ln55_2_fu_480_p3;
wire   [8:0] or_ln56_2_fu_493_p3;
wire   [9:0] or_ln55_3_fu_516_p3;
wire   [8:0] or_ln56_3_fu_538_p3;
wire   [0:0] tmp_7_fu_552_p3;
wire   [9:0] or_ln55_4_fu_559_p5;
wire   [8:0] or_ln56_4_fu_576_p5;
wire   [9:0] or_ln55_5_fu_594_p3;
wire   [8:0] or_ln56_5_fu_606_p3;
wire   [8:0] or_ln56_6_fu_619_p3;
wire   [9:0] or_ln55_6_fu_666_p3;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_84 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_84 <= 11'd0;
    end else if (((tmp_reg_740 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v25_fu_84 <= add_ln55_fu_640_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_330 <= grp_fu_331_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_775 <= v25_1_reg_729[32'd9];
        v26_1_reg_791 <= v26_1_fu_427_p3;
        v26_reg_781 <= v26_fu_419_p3;
        v2_addr_2_reg_811[9 : 2] <= zext_ln56_2_fu_452_p1[9 : 2];
        v2_addr_2_reg_811_pp0_iter1_reg[9 : 2] <= v2_addr_2_reg_811[9 : 2];
        v2_addr_3_reg_826[9 : 2] <= zext_ln56_4_fu_488_p1[9 : 2];
        v2_addr_3_reg_826_pp0_iter1_reg[9 : 2] <= v2_addr_3_reg_826[9 : 2];
        v2_addr_3_reg_826_pp0_iter2_reg[9 : 2] <= v2_addr_3_reg_826_pp0_iter1_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_5_reg_852 <= {{v25_1_reg_729[9:3]}};
        tmp_5_reg_852_pp0_iter1_reg <= tmp_5_reg_852;
        tmp_6_reg_858 <= {{v25_1_reg_729[8:3]}};
        v2_addr_4_reg_874[9 : 3] <= zext_ln56_6_fu_524_p1[9 : 3];
        v2_addr_4_reg_874_pp0_iter1_reg[9 : 3] <= v2_addr_4_reg_874[9 : 3];
        v2_addr_4_reg_874_pp0_iter2_reg[9 : 3] <= v2_addr_4_reg_874_pp0_iter1_reg[9 : 3];
        v2_addr_5_reg_890[1] <= zext_ln56_8_fu_571_p1[1];
v2_addr_5_reg_890[9 : 3] <= zext_ln56_8_fu_571_p1[9 : 3];
        v2_addr_5_reg_890_pp0_iter1_reg[1] <= v2_addr_5_reg_890[1];
v2_addr_5_reg_890_pp0_iter1_reg[9 : 3] <= v2_addr_5_reg_890[9 : 3];
        v2_addr_5_reg_890_pp0_iter2_reg[1] <= v2_addr_5_reg_890_pp0_iter1_reg[1];
v2_addr_5_reg_890_pp0_iter2_reg[9 : 3] <= v2_addr_5_reg_890_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_740 <= ap_sig_allocacmp_v25_1[32'd10];
        v25_1_reg_729 <= ap_sig_allocacmp_v25_1;
        v2_addr_1_reg_769[9 : 1] <= zext_ln56_fu_383_p1[9 : 1];
        v2_addr_1_reg_769_pp0_iter1_reg[9 : 1] <= v2_addr_1_reg_769[9 : 1];
        v2_addr_reg_754 <= zext_ln55_fu_350_p1;
        v2_addr_reg_754_pp0_iter1_reg <= v2_addr_reg_754;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_2_reg_832 <= grp_fu_316_p3;
        v26_3_reg_842 <= grp_fu_323_p3;
        v2_load_2_reg_837 <= v2_q1;
        v2_load_3_reg_847 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v26_4_reg_895 <= grp_fu_316_p3;
        v26_5_reg_905 <= grp_fu_323_p3;
        v2_load_4_reg_900 <= v2_q1;
        v2_load_5_reg_910 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v26_6_reg_941 <= grp_fu_316_p3;
        v26_7_reg_951 <= grp_fu_323_p3;
        v2_load_6_reg_946 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_1_reg_966 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_2_reg_976 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_3_reg_986 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_4_reg_996 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_1006 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_1016 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_7_reg_1031 <= grp_fu_994_p_dout0;
        v2_load_7_reg_1036 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_956 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_4_reg_1046 <= grp_fu_331_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_5_reg_1051 <= grp_fu_331_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_6_reg_1056 <= grp_fu_331_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_7_reg_1061 <= grp_fu_331_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_addr_6_reg_925[9 : 3] <= zext_ln56_10_fu_601_p1[9 : 3];
        v2_addr_6_reg_925_pp0_iter1_reg[9 : 3] <= v2_addr_6_reg_925[9 : 3];
        v2_addr_6_reg_925_pp0_iter2_reg[9 : 3] <= v2_addr_6_reg_925_pp0_iter1_reg[9 : 3];
        v2_addr_7_reg_1021[9 : 3] <= zext_ln56_12_fu_673_p1[9 : 3];
        v2_addr_7_reg_1021_pp0_iter2_reg[9 : 3] <= v2_addr_7_reg_1021[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_1_reg_796 <= v2_q0;
        v2_load_reg_786 <= v2_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_740 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_307_p0 = v28_7_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_307_p0 = v28_6_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_307_p0 = v28_5_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_307_p0 = v28_4_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_307_p0 = v28_3_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p0 = v28_2_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_307_p0 = v28_1_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_307_p0 = v28_fu_632_p1;
    end else begin
        grp_fu_307_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_307_p1 = v27_7_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_307_p1 = v27_6_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_307_p1 = v27_5_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_307_p1 = v27_4_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_307_p1 = v27_3_reg_986;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p1 = v27_2_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_307_p1 = v27_1_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_307_p1 = v27_reg_956;
    end else begin
        grp_fu_307_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_311_p0 = v26_7_reg_951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p0 = v26_6_reg_941;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_311_p0 = v26_5_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_311_p0 = v26_4_reg_895;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_311_p0 = v26_3_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_311_p0 = v26_2_reg_832;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p0 = v26_1_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p0 = v26_reg_781;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address0_local = v2_addr_7_reg_1021_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address0_local = v2_addr_6_reg_925_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address0_local = v2_addr_5_reg_890_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address0_local = v2_addr_4_reg_874_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address0_local = zext_ln56_12_fu_673_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address0_local = zext_ln56_8_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = zext_ln56_4_fu_488_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_fu_383_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address1_local = v2_addr_3_reg_826_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address1_local = v2_addr_2_reg_811_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address1_local = v2_addr_1_reg_769_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address1_local = v2_addr_reg_754_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address1_local = zext_ln56_10_fu_601_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address1_local = zext_ln56_6_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = zext_ln56_2_fu_452_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_fu_350_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_d0_local = bitcast_ln60_7_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_d0_local = bitcast_ln60_6_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_d0_local = bitcast_ln60_5_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_d0_local = bitcast_ln60_4_fu_706_p1;
        end else begin
            v2_d0_local = 'bx;
        end
    end else begin
        v2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_d1_local = bitcast_ln60_3_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_d1_local = bitcast_ln60_2_fu_696_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_d1_local = bitcast_ln60_1_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_d1_local = bitcast_ln60_fu_682_p1;
    end else begin
        v2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address0_local = zext_ln56_13_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address0_local = zext_ln56_9_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln56_5_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln56_1_fu_406_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address1_local = zext_ln56_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address1_local = zext_ln56_7_fu_546_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln56_3_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln55_1_fu_359_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln56_13_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln56_9_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_5_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_1_fu_406_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln56_11_fu_613_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln56_7_fu_546_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_3_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_1_fu_359_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_640_p2 = (v25_1_reg_729 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_691_p1 = reg_330;
assign bitcast_ln60_2_fu_696_p1 = reg_330;
assign bitcast_ln60_3_fu_701_p1 = reg_330;
assign bitcast_ln60_4_fu_706_p1 = v29_4_reg_1046;
assign bitcast_ln60_5_fu_710_p1 = v29_5_reg_1051;
assign bitcast_ln60_6_fu_714_p1 = v29_6_reg_1056;
assign bitcast_ln60_7_fu_718_p1 = v29_7_reg_1061;
assign bitcast_ln60_fu_682_p1 = reg_330;
assign grp_fu_316_p3 = ((tmp_1_reg_775[0:0] == 1'b1) ? v3_1_q1 : v3_q1);
assign grp_fu_323_p3 = ((tmp_1_reg_775[0:0] == 1'b1) ? v3_1_q0 : v3_q0);
assign grp_fu_331_p_ce = 1'b1;
assign grp_fu_331_p_din0 = grp_fu_307_p0;
assign grp_fu_331_p_din1 = grp_fu_307_p1;
assign grp_fu_331_p_opcode = 2'd0;
assign grp_fu_994_p_ce = 1'b1;
assign grp_fu_994_p_din0 = grp_fu_311_p0;
assign grp_fu_994_p_din1 = 32'd3345637376;
assign or_ln55_1_fu_444_p3 = {{tmp_3_fu_435_p4}, {2'd2}};
assign or_ln55_2_fu_480_p3 = {{tmp_3_fu_435_p4}, {2'd3}};
assign or_ln55_3_fu_516_p3 = {{tmp_5_fu_507_p4}, {3'd4}};
assign or_ln55_4_fu_559_p5 = {{{{tmp_5_fu_507_p4}, {1'd1}}, {tmp_7_fu_552_p3}}, {1'd1}};
assign or_ln55_5_fu_594_p3 = {{tmp_5_reg_852}, {3'd6}};
assign or_ln55_6_fu_666_p3 = {{tmp_5_reg_852_pp0_iter1_reg}, {3'd7}};
assign or_ln55_s_fu_375_p3 = {{tmp_s_fu_365_p4}, {1'd1}};
assign or_ln56_1_fu_466_p3 = {{tmp_4_fu_457_p4}, {2'd2}};
assign or_ln56_2_fu_493_p3 = {{tmp_4_fu_457_p4}, {2'd3}};
assign or_ln56_3_fu_538_p3 = {{tmp_6_fu_529_p4}, {3'd4}};
assign or_ln56_4_fu_576_p5 = {{{{tmp_6_fu_529_p4}, {1'd1}}, {tmp_7_fu_552_p3}}, {1'd1}};
assign or_ln56_5_fu_606_p3 = {{tmp_6_reg_858}, {3'd6}};
assign or_ln56_6_fu_619_p3 = {{tmp_6_reg_858}, {3'd7}};
assign or_ln56_s_fu_398_p3 = {{tmp_2_fu_388_p4}, {1'd1}};
assign tmp_1_fu_412_p3 = v25_1_reg_729[32'd9];
assign tmp_2_fu_388_p4 = {{ap_sig_allocacmp_v25_1[8:1]}};
assign tmp_3_fu_435_p4 = {{v25_1_reg_729[9:2]}};
assign tmp_4_fu_457_p4 = {{v25_1_reg_729[8:2]}};
assign tmp_5_fu_507_p4 = {{v25_1_reg_729[9:3]}};
assign tmp_6_fu_529_p4 = {{v25_1_reg_729[8:3]}};
assign tmp_7_fu_552_p3 = v25_1_reg_729[32'd1];
assign tmp_s_fu_365_p4 = {{ap_sig_allocacmp_v25_1[9:1]}};
assign trunc_ln55_fu_355_p1 = ap_sig_allocacmp_v25_1[8:0];
assign v26_1_fu_427_p3 = ((tmp_1_fu_412_p3[0:0] == 1'b1) ? v3_1_q0 : v3_q0);
assign v26_fu_419_p3 = ((tmp_1_fu_412_p3[0:0] == 1'b1) ? v3_1_q1 : v3_q1);
assign v28_1_fu_636_p1 = v2_load_1_reg_796;
assign v28_2_fu_650_p1 = v2_load_2_reg_837;
assign v28_3_fu_654_p1 = v2_load_3_reg_847;
assign v28_4_fu_658_p1 = v2_load_4_reg_900;
assign v28_5_fu_662_p1 = v2_load_5_reg_910;
assign v28_6_fu_678_p1 = v2_load_6_reg_946;
assign v28_7_fu_687_p1 = v2_load_7_reg_1036;
assign v28_fu_632_p1 = v2_load_reg_786;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v2_d0 = v2_d0_local;
assign v2_d1 = v2_d1_local;
assign v2_we0 = v2_we0_local;
assign v2_we1 = v2_we1_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_359_p1 = trunc_ln55_fu_355_p1;
assign zext_ln55_fu_350_p1 = ap_sig_allocacmp_v25_1;
assign zext_ln56_10_fu_601_p1 = or_ln55_5_fu_594_p3;
assign zext_ln56_11_fu_613_p1 = or_ln56_5_fu_606_p3;
assign zext_ln56_12_fu_673_p1 = or_ln55_6_fu_666_p3;
assign zext_ln56_13_fu_626_p1 = or_ln56_6_fu_619_p3;
assign zext_ln56_1_fu_406_p1 = or_ln56_s_fu_398_p3;
assign zext_ln56_2_fu_452_p1 = or_ln55_1_fu_444_p3;
assign zext_ln56_3_fu_474_p1 = or_ln56_1_fu_466_p3;
assign zext_ln56_4_fu_488_p1 = or_ln55_2_fu_480_p3;
assign zext_ln56_5_fu_501_p1 = or_ln56_2_fu_493_p3;
assign zext_ln56_6_fu_524_p1 = or_ln55_3_fu_516_p3;
assign zext_ln56_7_fu_546_p1 = or_ln56_3_fu_538_p3;
assign zext_ln56_8_fu_571_p1 = or_ln55_4_fu_559_p5;
assign zext_ln56_9_fu_588_p1 = or_ln56_4_fu_576_p5;
assign zext_ln56_fu_383_p1 = or_ln55_s_fu_375_p3;
always @ (posedge ap_clk) begin
    v2_addr_1_reg_769[0] <= 1'b1;
    v2_addr_1_reg_769_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_2_reg_811[1:0] <= 2'b10;
    v2_addr_2_reg_811_pp0_iter1_reg[1:0] <= 2'b10;
    v2_addr_3_reg_826[1:0] <= 2'b11;
    v2_addr_3_reg_826_pp0_iter1_reg[1:0] <= 2'b11;
    v2_addr_3_reg_826_pp0_iter2_reg[1:0] <= 2'b11;
    v2_addr_4_reg_874[2:0] <= 3'b100;
    v2_addr_4_reg_874_pp0_iter1_reg[2:0] <= 3'b100;
    v2_addr_4_reg_874_pp0_iter2_reg[2:0] <= 3'b100;
    v2_addr_5_reg_890[0] <= 1'b1;
    v2_addr_5_reg_890[2] <= 1'b1;
    v2_addr_5_reg_890_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_5_reg_890_pp0_iter1_reg[2] <= 1'b1;
    v2_addr_5_reg_890_pp0_iter2_reg[0] <= 1'b1;
    v2_addr_5_reg_890_pp0_iter2_reg[2] <= 1'b1;
    v2_addr_6_reg_925[2:0] <= 3'b110;
    v2_addr_6_reg_925_pp0_iter1_reg[2:0] <= 3'b110;
    v2_addr_6_reg_925_pp0_iter2_reg[2:0] <= 3'b110;
    v2_addr_7_reg_1021[2:0] <= 3'b111;
    v2_addr_7_reg_1021_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 