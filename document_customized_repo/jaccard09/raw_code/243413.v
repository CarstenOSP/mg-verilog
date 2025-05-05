module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_address1,v116_0_ce1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_address1,v116_1_ce1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_address1,v116_2_ce1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_address1,v116_3_ce1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [4:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
output  [2:0] v116_0_address1;
output   v116_0_ce1;
input  [31:0] v116_0_q1;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
output  [2:0] v116_1_address1;
output   v116_1_ce1;
input  [31:0] v116_1_q1;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
output  [2:0] v116_2_address1;
output   v116_2_ce1;
input  [31:0] v116_2_q1;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
output  [2:0] v116_3_address1;
output   v116_3_ce1;
input  [31:0] v116_3_q1;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
input  [31:0] v116_4_q0;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
output  [1:0] grp_fu_140_p_opcode;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln27_fu_410_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_360;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_364;
reg   [31:0] reg_368;
reg   [31:0] reg_372;
reg   [31:0] reg_376;
reg   [31:0] reg_380;
reg   [31:0] reg_384;
reg   [31:0] reg_388;
wire   [6:0] select_ln26_fu_442_p3;
reg   [6:0] select_ln26_reg_781;
wire   [5:0] trunc_ln27_fu_458_p1;
reg   [5:0] trunc_ln27_reg_787;
wire   [0:0] trunc_ln27_1_fu_462_p1;
reg   [0:0] trunc_ln27_1_reg_793;
reg   [2:0] lshr_ln29_1_reg_818;
reg   [2:0] lshr_ln29_1_reg_818_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_835;
wire   [31:0] v3_fu_575_p3;
reg   [31:0] v3_reg_840;
wire   [31:0] v10_fu_627_p1;
wire   [31:0] v16_fu_632_p1;
wire   [31:0] v22_fu_637_p1;
wire   [31:0] v28_fu_642_p1;
reg   [2:0] v116_0_addr_reg_888;
reg   [2:0] v116_0_addr_reg_888_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_888_pp0_iter4_reg;
reg   [2:0] v116_0_addr_reg_888_pp0_iter5_reg;
reg   [2:0] v116_0_addr_reg_888_pp0_iter6_reg;
wire   [31:0] v34_fu_658_p1;
wire   [31:0] v40_fu_663_p1;
wire   [31:0] v46_fu_668_p1;
wire   [31:0] v52_fu_673_p1;
reg   [2:0] v116_1_addr_reg_914;
reg   [2:0] v116_1_addr_reg_914_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_914_pp0_iter4_reg;
reg   [2:0] v116_1_addr_reg_914_pp0_iter5_reg;
reg   [2:0] v116_1_addr_reg_914_pp0_iter6_reg;
reg   [2:0] v116_2_addr_reg_920;
reg   [2:0] v116_2_addr_reg_920_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_920_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_920_pp0_iter5_reg;
reg   [2:0] v116_2_addr_reg_920_pp0_iter6_reg;
reg   [2:0] v116_3_addr_reg_926;
reg   [2:0] v116_3_addr_reg_926_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_926_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_926_pp0_iter5_reg;
reg   [2:0] v116_3_addr_reg_926_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_932;
reg   [2:0] v116_4_addr_reg_932_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_932_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_932_pp0_iter5_reg;
reg   [2:0] v116_4_addr_reg_932_pp0_iter6_reg;
reg   [2:0] v116_4_addr_reg_932_pp0_iter7_reg;
reg   [2:0] v116_5_addr_reg_937;
reg   [2:0] v116_5_addr_reg_937_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_937_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_937_pp0_iter5_reg;
reg   [2:0] v116_5_addr_reg_937_pp0_iter6_reg;
reg   [2:0] v116_5_addr_reg_937_pp0_iter7_reg;
reg   [2:0] v116_6_addr_reg_942;
reg   [2:0] v116_6_addr_reg_942_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_942_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_942_pp0_iter5_reg;
reg   [2:0] v116_6_addr_reg_942_pp0_iter6_reg;
reg   [2:0] v116_6_addr_reg_942_pp0_iter7_reg;
reg   [2:0] v116_7_addr_reg_947;
reg   [2:0] v116_7_addr_reg_947_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_947_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_947_pp0_iter5_reg;
reg   [2:0] v116_7_addr_reg_947_pp0_iter6_reg;
reg   [2:0] v116_7_addr_reg_947_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_952;
reg   [31:0] v116_1_load_reg_957;
reg   [31:0] v116_2_load_reg_962;
reg   [31:0] v116_3_load_reg_967;
reg   [31:0] v11_reg_972;
reg   [31:0] v17_reg_977;
reg   [31:0] v23_reg_982;
reg   [31:0] v29_reg_987;
wire   [31:0] v9_fu_678_p1;
reg   [31:0] v35_reg_997;
reg   [31:0] v41_reg_1002;
reg   [31:0] v47_reg_1007;
reg   [31:0] v53_reg_1012;
wire   [31:0] v15_fu_682_p1;
wire   [31:0] v21_fu_686_p1;
wire   [31:0] v27_fu_690_p1;
reg   [31:0] v116_4_load_reg_1032;
reg   [31:0] v116_5_load_reg_1037;
reg   [31:0] v116_6_load_reg_1042;
reg   [31:0] v116_7_load_reg_1047;
wire   [31:0] v33_fu_694_p1;
wire   [31:0] v39_fu_698_p1;
wire   [31:0] v45_fu_702_p1;
wire   [31:0] v51_fu_706_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_476_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_500_p1;
wire   [63:0] zext_ln47_fu_536_p1;
wire   [63:0] zext_ln61_fu_592_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_606_p1;
wire   [63:0] zext_ln29_fu_647_p1;
reg   [31:0] v3_1_fu_88;
reg   [6:0] v49_fu_92;
wire   [6:0] add_ln28_fu_612_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_96;
wire   [6:0] select_ln27_fu_450_p3;
reg   [9:0] indvar_flatten_fu_100;
wire   [9:0] add_ln27_1_fu_416_p2;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce1_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_710_p1;
reg    v116_0_ce0_local;
reg    v116_1_ce1_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_715_p1;
reg    v116_1_ce0_local;
reg    v116_2_ce1_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_720_p1;
reg    v116_2_ce0_local;
reg    v116_3_ce1_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_725_p1;
reg    v116_3_ce0_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_730_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_735_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_740_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_745_p1;
reg   [31:0] grp_fu_328_p0;
reg   [31:0] grp_fu_328_p1;
reg   [31:0] grp_fu_332_p0;
reg   [31:0] grp_fu_332_p1;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_356_p0;
wire   [0:0] tmp_1_fu_434_p3;
wire   [6:0] add_ln27_fu_428_p2;
wire   [4:0] lshr_ln1_fu_466_p4;
wire   [4:0] lshr_ln2_fu_482_p4;
wire   [10:0] tmp_fu_492_p3;
wire   [3:0] tmp_s_fu_516_p4;
wire   [10:0] tmp_2_fu_526_p4;
wire   [0:0] icmp_ln31_fu_570_p2;
wire   [31:0] v6_fu_563_p3;
wire   [10:0] tmp_4_fu_583_p5;
wire   [10:0] tmp_5_fu_598_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_88 = 32'd0;
#0 v49_fu_92 = 7'd0;
#0 v4_fu_96 = 7'd0;
#0 indvar_flatten_fu_100 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_100 <= 10'd0;
    end else if (((icmp_ln27_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_100 <= add_ln27_1_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_92 <= add_ln28_fu_612_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_96 <= 7'd0;
    end else if (((icmp_ln27_fu_410_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_96 <= select_ln27_fu_450_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        lshr_ln29_1_reg_818 <= {{select_ln26_fu_442_p3[5:3]}};
        lshr_ln29_1_reg_818_pp0_iter1_reg <= lshr_ln29_1_reg_818;
        select_ln26_reg_781 <= select_ln26_fu_442_p3;
        tmp_3_reg_835 <= select_ln26_fu_442_p3[32'd1];
        trunc_ln27_1_reg_793 <= trunc_ln27_1_fu_462_p1;
        trunc_ln27_reg_787 <= trunc_ln27_fu_458_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_360 <= v113_0_q1;
        reg_364 <= v113_1_q1;
        reg_368 <= v113_0_q0;
        reg_372 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_376 <= grp_fu_136_p_dout0;
        reg_380 <= grp_fu_140_p_dout0;
        reg_384 <= grp_fu_144_p_dout0;
        reg_388 <= grp_fu_148_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_reg_888 <= zext_ln29_fu_647_p1;
        v116_0_addr_reg_888_pp0_iter3_reg <= v116_0_addr_reg_888;
        v116_0_addr_reg_888_pp0_iter4_reg <= v116_0_addr_reg_888_pp0_iter3_reg;
        v116_0_addr_reg_888_pp0_iter5_reg <= v116_0_addr_reg_888_pp0_iter4_reg;
        v116_0_addr_reg_888_pp0_iter6_reg <= v116_0_addr_reg_888_pp0_iter5_reg;
        v116_1_addr_reg_914 <= zext_ln29_fu_647_p1;
        v116_1_addr_reg_914_pp0_iter3_reg <= v116_1_addr_reg_914;
        v116_1_addr_reg_914_pp0_iter4_reg <= v116_1_addr_reg_914_pp0_iter3_reg;
        v116_1_addr_reg_914_pp0_iter5_reg <= v116_1_addr_reg_914_pp0_iter4_reg;
        v116_1_addr_reg_914_pp0_iter6_reg <= v116_1_addr_reg_914_pp0_iter5_reg;
        v116_2_addr_reg_920 <= zext_ln29_fu_647_p1;
        v116_2_addr_reg_920_pp0_iter3_reg <= v116_2_addr_reg_920;
        v116_2_addr_reg_920_pp0_iter4_reg <= v116_2_addr_reg_920_pp0_iter3_reg;
        v116_2_addr_reg_920_pp0_iter5_reg <= v116_2_addr_reg_920_pp0_iter4_reg;
        v116_2_addr_reg_920_pp0_iter6_reg <= v116_2_addr_reg_920_pp0_iter5_reg;
        v116_3_addr_reg_926 <= zext_ln29_fu_647_p1;
        v116_3_addr_reg_926_pp0_iter3_reg <= v116_3_addr_reg_926;
        v116_3_addr_reg_926_pp0_iter4_reg <= v116_3_addr_reg_926_pp0_iter3_reg;
        v116_3_addr_reg_926_pp0_iter5_reg <= v116_3_addr_reg_926_pp0_iter4_reg;
        v116_3_addr_reg_926_pp0_iter6_reg <= v116_3_addr_reg_926_pp0_iter5_reg;
        v116_4_addr_reg_932 <= zext_ln29_fu_647_p1;
        v116_4_addr_reg_932_pp0_iter3_reg <= v116_4_addr_reg_932;
        v116_4_addr_reg_932_pp0_iter4_reg <= v116_4_addr_reg_932_pp0_iter3_reg;
        v116_4_addr_reg_932_pp0_iter5_reg <= v116_4_addr_reg_932_pp0_iter4_reg;
        v116_4_addr_reg_932_pp0_iter6_reg <= v116_4_addr_reg_932_pp0_iter5_reg;
        v116_4_addr_reg_932_pp0_iter7_reg <= v116_4_addr_reg_932_pp0_iter6_reg;
        v116_5_addr_reg_937 <= zext_ln29_fu_647_p1;
        v116_5_addr_reg_937_pp0_iter3_reg <= v116_5_addr_reg_937;
        v116_5_addr_reg_937_pp0_iter4_reg <= v116_5_addr_reg_937_pp0_iter3_reg;
        v116_5_addr_reg_937_pp0_iter5_reg <= v116_5_addr_reg_937_pp0_iter4_reg;
        v116_5_addr_reg_937_pp0_iter6_reg <= v116_5_addr_reg_937_pp0_iter5_reg;
        v116_5_addr_reg_937_pp0_iter7_reg <= v116_5_addr_reg_937_pp0_iter6_reg;
        v116_6_addr_reg_942 <= zext_ln29_fu_647_p1;
        v116_6_addr_reg_942_pp0_iter3_reg <= v116_6_addr_reg_942;
        v116_6_addr_reg_942_pp0_iter4_reg <= v116_6_addr_reg_942_pp0_iter3_reg;
        v116_6_addr_reg_942_pp0_iter5_reg <= v116_6_addr_reg_942_pp0_iter4_reg;
        v116_6_addr_reg_942_pp0_iter6_reg <= v116_6_addr_reg_942_pp0_iter5_reg;
        v116_6_addr_reg_942_pp0_iter7_reg <= v116_6_addr_reg_942_pp0_iter6_reg;
        v116_7_addr_reg_947 <= zext_ln29_fu_647_p1;
        v116_7_addr_reg_947_pp0_iter3_reg <= v116_7_addr_reg_947;
        v116_7_addr_reg_947_pp0_iter4_reg <= v116_7_addr_reg_947_pp0_iter3_reg;
        v116_7_addr_reg_947_pp0_iter5_reg <= v116_7_addr_reg_947_pp0_iter4_reg;
        v116_7_addr_reg_947_pp0_iter6_reg <= v116_7_addr_reg_947_pp0_iter5_reg;
        v116_7_addr_reg_947_pp0_iter7_reg <= v116_7_addr_reg_947_pp0_iter6_reg;
        v3_reg_840 <= v3_fu_575_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_952 <= v116_0_q1;
        v116_1_load_reg_957 <= v116_1_q1;
        v116_2_load_reg_962 <= v116_2_q1;
        v116_3_load_reg_967 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_load_reg_1032 <= v116_4_q0;
        v116_5_load_reg_1037 <= v116_5_q0;
        v116_6_load_reg_1042 <= v116_6_q0;
        v116_7_load_reg_1047 <= v116_7_q0;
        v35_reg_997 <= grp_fu_152_p_dout0;
        v41_reg_1002 <= grp_fu_156_p_dout0;
        v47_reg_1007 <= grp_fu_160_p_dout0;
        v53_reg_1012 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_972 <= grp_fu_152_p_dout0;
        v17_reg_977 <= grp_fu_156_p_dout0;
        v23_reg_982 <= grp_fu_160_p_dout0;
        v29_reg_987 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_fu_88 <= v3_fu_575_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_fu_410_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_328_p0 = v33_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_328_p0 = v9_fu_678_p1;
    end else begin
        grp_fu_328_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_328_p1 = v35_reg_997;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_328_p1 = v11_reg_972;
    end else begin
        grp_fu_328_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_332_p0 = v39_fu_698_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_332_p0 = v15_fu_682_p1;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_332_p1 = v41_reg_1002;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_332_p1 = v17_reg_977;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p0 = v45_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p0 = v21_fu_686_p1;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p1 = v47_reg_1007;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_336_p1 = v23_reg_982;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p0 = v51_fu_706_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p0 = v27_fu_690_p1;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_340_p1 = v53_reg_1012;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_340_p1 = v29_reg_987;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_344_p0 = v34_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_344_p0 = v10_fu_627_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_348_p0 = v40_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_348_p0 = v16_fu_632_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p0 = v46_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p0 = v22_fu_637_p1;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_356_p0 = v52_fu_673_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_356_p0 = v28_fu_642_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_address0_local = zext_ln75_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_address0_local = zext_ln47_fu_536_p1;
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_address1_local = zext_ln61_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_address1_local = zext_ln33_fu_500_p1;
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_address0_local = zext_ln75_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_address0_local = zext_ln47_fu_536_p1;
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_address1_local = zext_ln61_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_address1_local = zext_ln33_fu_500_p1;
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_address0_local = v116_4_addr_reg_932_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = v116_4_addr_reg_932;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_address0_local = v116_5_addr_reg_937_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = v116_5_addr_reg_937;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_942_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_942;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_947_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_947;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_416_p2 = (indvar_flatten_fu_100 + 10'd1);
assign add_ln27_fu_428_p2 = (v4_fu_96 + 7'd1);
assign add_ln28_fu_612_p2 = (select_ln26_reg_781 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_710_p1 = reg_376;
assign bitcast_ln43_fu_715_p1 = reg_380;
assign bitcast_ln50_fu_720_p1 = reg_384;
assign bitcast_ln57_fu_725_p1 = reg_388;
assign bitcast_ln64_fu_730_p1 = reg_376;
assign bitcast_ln71_fu_735_p1 = reg_380;
assign bitcast_ln78_fu_740_p1 = reg_384;
assign bitcast_ln86_fu_745_p1 = reg_388;
assign grp_fu_136_p_ce = 1'b1;
assign grp_fu_136_p_din0 = grp_fu_328_p0;
assign grp_fu_136_p_din1 = grp_fu_328_p1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = 1'b1;
assign grp_fu_140_p_din0 = grp_fu_332_p0;
assign grp_fu_140_p_din1 = grp_fu_332_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = 1'b1;
assign grp_fu_144_p_din0 = grp_fu_336_p0;
assign grp_fu_144_p_din1 = grp_fu_336_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = 1'b1;
assign grp_fu_148_p_din0 = grp_fu_340_p0;
assign grp_fu_148_p_din1 = grp_fu_340_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = 1'b1;
assign grp_fu_152_p_din0 = grp_fu_344_p0;
assign grp_fu_152_p_din1 = v3_reg_840;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = grp_fu_348_p0;
assign grp_fu_156_p_din1 = v3_reg_840;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = grp_fu_352_p0;
assign grp_fu_160_p_din1 = v3_reg_840;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = grp_fu_356_p0;
assign grp_fu_164_p_din1 = v3_reg_840;
assign icmp_ln27_fu_410_p2 = ((indvar_flatten_fu_100 == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_570_p2 = ((select_ln26_reg_781 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_466_p4 = {{select_ln27_fu_450_p3[5:1]}};
assign lshr_ln2_fu_482_p4 = {{select_ln26_fu_442_p3[5:1]}};
assign select_ln26_fu_442_p3 = ((tmp_1_fu_434_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_92);
assign select_ln27_fu_450_p3 = ((tmp_1_fu_434_p3[0:0] == 1'b1) ? add_ln27_fu_428_p2 : v4_fu_96);
assign tmp_1_fu_434_p3 = v49_fu_92[32'd6];
assign tmp_2_fu_526_p4 = {{{trunc_ln27_fu_458_p1}, {tmp_s_fu_516_p4}}, {1'd1}};
assign tmp_4_fu_583_p5 = {{{{trunc_ln27_reg_787}, {lshr_ln29_1_reg_818}}, {1'd1}}, {tmp_3_reg_835}};
assign tmp_5_fu_598_p4 = {{{trunc_ln27_reg_787}, {lshr_ln29_1_reg_818}}, {2'd3}};
assign tmp_fu_492_p3 = {{trunc_ln27_fu_458_p1}, {lshr_ln2_fu_482_p4}};
assign tmp_s_fu_516_p4 = {{select_ln26_fu_442_p3[5:2]}};
assign trunc_ln27_1_fu_462_p1 = select_ln27_fu_450_p3[0:0];
assign trunc_ln27_fu_458_p1 = select_ln27_fu_450_p3[5:0];
assign v10_fu_627_p1 = reg_360;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v116_0_address0 = v116_0_addr_reg_888_pp0_iter6_reg;
assign v116_0_address1 = zext_ln29_fu_647_p1;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_fu_710_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_addr_reg_914_pp0_iter6_reg;
assign v116_1_address1 = zext_ln29_fu_647_p1;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_fu_715_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_addr_reg_920_pp0_iter6_reg;
assign v116_2_address1 = zext_ln29_fu_647_p1;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_fu_720_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_addr_reg_926_pp0_iter6_reg;
assign v116_3_address1 = zext_ln29_fu_647_p1;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_fu_725_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = bitcast_ln64_fu_730_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = bitcast_ln71_fu_735_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_740_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_745_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_1_address0 = zext_ln26_fu_476_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_address0 = zext_ln26_fu_476_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_682_p1 = v116_1_load_reg_957;
assign v16_fu_632_p1 = reg_364;
assign v21_fu_686_p1 = v116_2_load_reg_962;
assign v22_fu_637_p1 = reg_368;
assign v27_fu_690_p1 = v116_3_load_reg_967;
assign v28_fu_642_p1 = reg_372;
assign v33_fu_694_p1 = v116_4_load_reg_1032;
assign v34_fu_658_p1 = reg_360;
assign v39_fu_698_p1 = v116_5_load_reg_1037;
assign v3_fu_575_p3 = ((icmp_ln31_fu_570_p2[0:0] == 1'b1) ? v6_fu_563_p3 : v3_1_fu_88);
assign v40_fu_663_p1 = reg_364;
assign v45_fu_702_p1 = v116_6_load_reg_1042;
assign v46_fu_668_p1 = reg_368;
assign v51_fu_706_p1 = v116_7_load_reg_1047;
assign v52_fu_673_p1 = reg_372;
assign v6_fu_563_p3 = ((trunc_ln27_1_reg_793[0:0] == 1'b1) ? v124_1_q0 : v124_q0);
assign v9_fu_678_p1 = v116_0_load_reg_952;
assign zext_ln26_fu_476_p1 = lshr_ln1_fu_466_p4;
assign zext_ln29_fu_647_p1 = lshr_ln29_1_reg_818_pp0_iter1_reg;
assign zext_ln33_fu_500_p1 = tmp_fu_492_p3;
assign zext_ln47_fu_536_p1 = tmp_2_fu_526_p4;
assign zext_ln61_fu_592_p1 = tmp_4_fu_583_p5;
assign zext_ln75_fu_606_p1 = tmp_5_fu_598_p4;
endmodule 