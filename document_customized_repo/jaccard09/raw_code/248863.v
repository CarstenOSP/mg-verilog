module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce); 
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
output  [4:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [4:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
output  [2:0] v116_4_address1;
output   v116_4_ce1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
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
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
output  [1:0] grp_fu_156_p_opcode;
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
reg   [0:0] icmp_ln27_reg_809;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_339;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_343;
reg   [31:0] reg_347;
reg   [31:0] reg_351;
wire   [0:0] icmp_ln27_fu_373_p2;
reg   [0:0] icmp_ln27_reg_809_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_809_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_809_pp0_iter3_reg;
reg   [6:0] v4_load_reg_813;
wire   [6:0] add_ln27_fu_388_p2;
reg   [6:0] add_ln27_reg_818;
wire   [6:0] select_ln26_fu_410_p3;
reg   [6:0] select_ln26_reg_823;
wire   [5:0] trunc_ln33_fu_424_p1;
reg   [5:0] trunc_ln33_reg_829;
wire   [0:0] trunc_ln27_fu_436_p1;
reg   [0:0] trunc_ln27_reg_839;
reg   [2:0] lshr_ln2_reg_859;
reg   [3:0] tmp_12_reg_873;
wire   [0:0] trunc_ln46_fu_516_p1;
reg   [0:0] trunc_ln46_reg_879;
wire   [1:0] trunc_ln60_fu_520_p1;
reg   [1:0] trunc_ln60_reg_885;
reg   [0:0] tmp_6_reg_890;
wire   [31:0] v3_fu_552_p3;
reg   [31:0] v3_reg_895;
wire   [31:0] v10_fu_592_p1;
wire   [31:0] v16_fu_597_p1;
reg   [2:0] v116_0_addr_reg_931;
reg   [2:0] v116_0_addr_reg_931_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_931_pp0_iter3_reg;
wire   [31:0] v22_fu_643_p1;
wire   [31:0] v28_fu_648_p1;
reg   [2:0] v116_1_addr_reg_956;
reg   [2:0] v116_1_addr_reg_956_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_956_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_961;
reg   [2:0] v116_2_addr_reg_961_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_961_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_966;
reg   [2:0] v116_3_addr_reg_966_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_966_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_971;
reg   [2:0] v116_4_addr_reg_971_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_971_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_977;
reg   [2:0] v116_5_addr_reg_977_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_977_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_983;
reg   [2:0] v116_6_addr_reg_983_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_983_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_983_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_988;
reg   [2:0] v116_7_addr_reg_988_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_988_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_988_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_993;
wire   [31:0] v34_fu_690_p1;
wire   [31:0] v40_fu_695_p1;
reg   [31:0] v116_1_load_reg_1008;
reg   [31:0] v116_2_load_reg_1013;
reg   [31:0] v116_3_load_reg_1018;
reg   [31:0] v116_4_load_reg_1023;
reg   [31:0] v116_5_load_reg_1028;
reg   [31:0] v11_reg_1033;
reg   [31:0] v17_reg_1038;
wire   [31:0] v46_fu_700_p1;
wire   [31:0] v52_fu_705_p1;
wire   [31:0] v9_fu_710_p1;
reg   [31:0] v23_reg_1058;
reg   [31:0] v29_reg_1063;
wire   [31:0] v15_1_fu_714_p1;
reg   [31:0] v35_reg_1073;
reg   [31:0] v41_reg_1078;
wire   [31:0] v21_fu_718_p1;
wire   [31:0] v27_fu_722_p1;
reg   [31:0] v47_reg_1093;
reg   [31:0] v53_reg_1098;
wire   [31:0] v33_fu_726_p1;
wire   [31:0] v39_fu_730_p1;
reg   [31:0] v116_6_load_reg_1113;
reg   [31:0] v116_7_load_reg_1118;
wire   [31:0] v45_fu_734_p1;
wire   [31:0] v51_fu_738_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln26_fu_450_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_1_fu_466_p1;
wire   [63:0] zext_ln40_fu_501_p1;
wire   [63:0] zext_ln47_fu_569_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_582_p1;
wire   [63:0] zext_ln61_fu_611_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_627_p1;
wire   [63:0] zext_ln29_fu_632_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_662_p1;
wire   [63:0] zext_ln83_fu_675_p1;
reg   [31:0] v3_1_fu_98;
reg   [6:0] v49_fu_102;
wire   [6:0] add_ln28_fu_680_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_106;
wire   [6:0] select_ln27_fu_418_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_110;
wire   [9:0] add_ln27_1_fu_379_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_fu_742_p1;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_fu_747_p1;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_fu_752_p1;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_fu_757_p1;
reg    v116_4_ce1_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_762_p1;
reg    v116_4_ce0_local;
reg    v116_5_ce1_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_767_p1;
reg    v116_5_ce0_local;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_772_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_777_p1;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
reg   [31:0] grp_fu_331_p0;
reg   [31:0] grp_fu_335_p0;
wire   [0:0] tmp_fu_402_p3;
wire   [4:0] lshr_ln1_fu_440_p4;
wire   [11:0] tmp_s_fu_428_p3;
wire   [11:0] zext_ln33_fu_456_p1;
wire   [11:0] add_ln33_fu_460_p2;
wire   [4:0] tmp_10_fu_481_p4;
wire   [11:0] tmp_11_fu_491_p4;
wire   [0:0] icmp_ln31_fu_547_p2;
wire   [31:0] v6_fu_540_p3;
wire   [11:0] tmp_13_fu_560_p5;
wire   [11:0] tmp_14_fu_574_p4;
wire   [11:0] tmp_15_fu_602_p5;
wire   [11:0] tmp_16_fu_616_p6;
wire   [11:0] tmp_17_fu_653_p5;
wire   [11:0] tmp_18_fu_667_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_98 = 32'd0;
#0 v49_fu_102 = 7'd0;
#0 v4_fu_106 = 7'd0;
#0 indvar_flatten_fu_110 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_373_p2 == 1'd0))) begin
            indvar_flatten_fu_110 <= add_ln27_1_fu_379_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_110 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_102 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_102 <= add_ln28_fu_680_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_106 <= 7'd0;
    end else if (((icmp_ln27_reg_809 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_106 <= select_ln27_fu_418_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln27_reg_818 <= add_ln27_fu_388_p2;
        icmp_ln27_reg_809 <= icmp_ln27_fu_373_p2;
        icmp_ln27_reg_809_pp0_iter1_reg <= icmp_ln27_reg_809;
        icmp_ln27_reg_809_pp0_iter2_reg <= icmp_ln27_reg_809_pp0_iter1_reg;
        icmp_ln27_reg_809_pp0_iter3_reg <= icmp_ln27_reg_809_pp0_iter2_reg;
        v116_0_addr_reg_931 <= zext_ln29_fu_632_p1;
        v116_0_addr_reg_931_pp0_iter2_reg <= v116_0_addr_reg_931;
        v116_0_addr_reg_931_pp0_iter3_reg <= v116_0_addr_reg_931_pp0_iter2_reg;
        v116_1_addr_reg_956 <= zext_ln29_fu_632_p1;
        v116_1_addr_reg_956_pp0_iter2_reg <= v116_1_addr_reg_956;
        v116_1_addr_reg_956_pp0_iter3_reg <= v116_1_addr_reg_956_pp0_iter2_reg;
        v116_2_addr_reg_961 <= zext_ln29_fu_632_p1;
        v116_2_addr_reg_961_pp0_iter2_reg <= v116_2_addr_reg_961;
        v116_2_addr_reg_961_pp0_iter3_reg <= v116_2_addr_reg_961_pp0_iter2_reg;
        v116_3_addr_reg_966 <= zext_ln29_fu_632_p1;
        v116_3_addr_reg_966_pp0_iter2_reg <= v116_3_addr_reg_966;
        v116_3_addr_reg_966_pp0_iter3_reg <= v116_3_addr_reg_966_pp0_iter2_reg;
        v116_4_addr_reg_971 <= zext_ln29_fu_632_p1;
        v116_4_addr_reg_971_pp0_iter2_reg <= v116_4_addr_reg_971;
        v116_4_addr_reg_971_pp0_iter3_reg <= v116_4_addr_reg_971_pp0_iter2_reg;
        v116_5_addr_reg_977 <= zext_ln29_fu_632_p1;
        v116_5_addr_reg_977_pp0_iter2_reg <= v116_5_addr_reg_977;
        v116_5_addr_reg_977_pp0_iter3_reg <= v116_5_addr_reg_977_pp0_iter2_reg;
        v116_6_addr_reg_983 <= zext_ln29_fu_632_p1;
        v116_6_addr_reg_983_pp0_iter2_reg <= v116_6_addr_reg_983;
        v116_6_addr_reg_983_pp0_iter3_reg <= v116_6_addr_reg_983_pp0_iter2_reg;
        v116_6_addr_reg_983_pp0_iter4_reg <= v116_6_addr_reg_983_pp0_iter3_reg;
        v116_7_addr_reg_988 <= zext_ln29_fu_632_p1;
        v116_7_addr_reg_988_pp0_iter2_reg <= v116_7_addr_reg_988;
        v116_7_addr_reg_988_pp0_iter3_reg <= v116_7_addr_reg_988_pp0_iter2_reg;
        v116_7_addr_reg_988_pp0_iter4_reg <= v116_7_addr_reg_988_pp0_iter3_reg;
        v4_load_reg_813 <= ap_sig_allocacmp_v4_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln2_reg_859 <= {{select_ln26_fu_410_p3[5:3]}};
        select_ln26_reg_823 <= select_ln26_fu_410_p3;
        tmp_12_reg_873 <= {{select_ln26_fu_410_p3[5:2]}};
        tmp_6_reg_890 <= select_ln26_fu_410_p3[32'd1];
        trunc_ln27_reg_839 <= trunc_ln27_fu_436_p1;
        trunc_ln33_reg_829 <= trunc_ln33_fu_424_p1;
        trunc_ln46_reg_879 <= trunc_ln46_fu_516_p1;
        trunc_ln60_reg_885 <= trunc_ln60_fu_520_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_339 <= v113_q1;
        reg_343 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_347 <= grp_fu_152_p_dout0;
        reg_351 <= grp_fu_156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_993 <= v116_0_q0;
        v116_1_load_reg_1008 <= v116_1_q0;
        v116_2_load_reg_1013 <= v116_2_q0;
        v116_3_load_reg_1018 <= v116_3_q0;
        v116_4_load_reg_1023 <= v116_4_q1;
        v116_5_load_reg_1028 <= v116_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_load_reg_1113 <= v116_6_q0;
        v116_7_load_reg_1118 <= v116_7_q0;
        v47_reg_1093 <= grp_fu_160_p_dout0;
        v53_reg_1098 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_reg_1033 <= grp_fu_160_p_dout0;
        v17_reg_1038 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_reg_1058 <= grp_fu_160_p_dout0;
        v29_reg_1063 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1073 <= grp_fu_160_p_dout0;
        v41_reg_1078 <= grp_fu_164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_809 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_98 <= v3_fu_552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_895 <= v3_fu_552_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_809 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln27_reg_809_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p0 = v45_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p0 = v33_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p0 = v21_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_323_p0 = v9_fu_710_p1;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_323_p1 = v47_reg_1093;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_323_p1 = v35_reg_1073;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_323_p1 = v23_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_323_p1 = v11_reg_1033;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_327_p0 = v51_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p0 = v39_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p0 = v27_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_327_p0 = v15_1_fu_714_p1;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_327_p1 = v53_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_327_p1 = v41_reg_1078;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_327_p1 = v29_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_327_p1 = v17_reg_1038;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_331_p0 = v46_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_331_p0 = v34_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_331_p0 = v22_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_331_p0 = v10_fu_592_p1;
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_335_p0 = v52_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_335_p0 = v40_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_335_p0 = v28_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_335_p0 = v16_fu_597_p1;
    end else begin
        grp_fu_335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_501_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_611_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_1_fu_466_p1;
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_reg_931_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln29_fu_632_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_reg_956_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln29_fu_632_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address0_local = v116_2_addr_reg_961_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln29_fu_632_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address0_local = v116_3_addr_reg_966_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln29_fu_632_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_983_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = v116_6_addr_reg_983;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_988_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = v116_7_addr_reg_988;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage1))) begin
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
assign add_ln27_1_fu_379_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_388_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_680_p2 = (select_ln26_reg_823 + 7'd8);
assign add_ln33_fu_460_p2 = (tmp_s_fu_428_p3 + zext_ln33_fu_456_p1);
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
assign bitcast_ln36_fu_742_p1 = reg_347;
assign bitcast_ln43_fu_747_p1 = reg_351;
assign bitcast_ln50_fu_752_p1 = reg_347;
assign bitcast_ln57_fu_757_p1 = reg_351;
assign bitcast_ln64_fu_762_p1 = reg_347;
assign bitcast_ln71_fu_767_p1 = reg_351;
assign bitcast_ln78_fu_772_p1 = reg_347;
assign bitcast_ln86_fu_777_p1 = reg_351;
assign grp_fu_152_p_ce = 1'b1;
assign grp_fu_152_p_din0 = grp_fu_323_p0;
assign grp_fu_152_p_din1 = grp_fu_323_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = grp_fu_327_p0;
assign grp_fu_156_p_din1 = grp_fu_327_p1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = grp_fu_331_p0;
assign grp_fu_160_p_din1 = v3_reg_895;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = grp_fu_335_p0;
assign grp_fu_164_p_din1 = v3_reg_895;
assign icmp_ln27_fu_373_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_547_p2 = ((select_ln26_reg_823 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_440_p4 = {{select_ln27_fu_418_p3[5:1]}};
assign select_ln26_fu_410_p3 = ((tmp_fu_402_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_102);
assign select_ln27_fu_418_p3 = ((tmp_fu_402_p3[0:0] == 1'b1) ? add_ln27_reg_818 : v4_load_reg_813);
assign tmp_10_fu_481_p4 = {{select_ln26_fu_410_p3[5:1]}};
assign tmp_11_fu_491_p4 = {{{trunc_ln33_fu_424_p1}, {tmp_10_fu_481_p4}}, {1'd1}};
assign tmp_13_fu_560_p5 = {{{{trunc_ln33_reg_829}, {tmp_12_reg_873}}, {1'd1}}, {trunc_ln46_reg_879}};
assign tmp_14_fu_574_p4 = {{{trunc_ln33_reg_829}, {tmp_12_reg_873}}, {2'd3}};
assign tmp_15_fu_602_p5 = {{{{trunc_ln33_reg_829}, {lshr_ln2_reg_859}}, {1'd1}}, {trunc_ln60_reg_885}};
assign tmp_16_fu_616_p6 = {{{{{trunc_ln33_reg_829}, {lshr_ln2_reg_859}}, {1'd1}}, {tmp_6_reg_890}}, {1'd1}};
assign tmp_17_fu_653_p5 = {{{{trunc_ln33_reg_829}, {lshr_ln2_reg_859}}, {2'd3}}, {trunc_ln46_reg_879}};
assign tmp_18_fu_667_p4 = {{{trunc_ln33_reg_829}, {lshr_ln2_reg_859}}, {3'd7}};
assign tmp_fu_402_p3 = v49_fu_102[32'd6];
assign tmp_s_fu_428_p3 = {{trunc_ln33_fu_424_p1}, {6'd0}};
assign trunc_ln27_fu_436_p1 = select_ln27_fu_418_p3[0:0];
assign trunc_ln33_fu_424_p1 = select_ln27_fu_418_p3[5:0];
assign trunc_ln46_fu_516_p1 = select_ln26_fu_410_p3[0:0];
assign trunc_ln60_fu_520_p1 = select_ln26_fu_410_p3[1:0];
assign v10_fu_592_p1 = reg_339;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_d0 = bitcast_ln36_fu_742_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_d0 = bitcast_ln43_fu_747_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_d0 = bitcast_ln50_fu_752_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_d0 = bitcast_ln57_fu_757_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_4_address0 = v116_4_addr_reg_971_pp0_iter3_reg;
assign v116_4_address1 = zext_ln29_fu_632_p1;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_762_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_addr_reg_977_pp0_iter3_reg;
assign v116_5_address1 = zext_ln29_fu_632_p1;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_767_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = bitcast_ln78_fu_772_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = bitcast_ln86_fu_777_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v124_1_address0 = zext_ln26_fu_450_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_address0 = zext_ln26_fu_450_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_1_fu_714_p1 = v116_1_load_reg_1008;
assign v16_fu_597_p1 = reg_343;
assign v21_fu_718_p1 = v116_2_load_reg_1013;
assign v22_fu_643_p1 = reg_339;
assign v27_fu_722_p1 = v116_3_load_reg_1018;
assign v28_fu_648_p1 = reg_343;
assign v33_fu_726_p1 = v116_4_load_reg_1023;
assign v34_fu_690_p1 = reg_339;
assign v39_fu_730_p1 = v116_5_load_reg_1028;
assign v3_fu_552_p3 = ((icmp_ln31_fu_547_p2[0:0] == 1'b1) ? v6_fu_540_p3 : v3_1_fu_98);
assign v40_fu_695_p1 = reg_343;
assign v45_fu_734_p1 = v116_6_load_reg_1113;
assign v46_fu_700_p1 = reg_339;
assign v51_fu_738_p1 = v116_7_load_reg_1118;
assign v52_fu_705_p1 = reg_343;
assign v6_fu_540_p3 = ((trunc_ln27_reg_839[0:0] == 1'b1) ? v124_1_q0 : v124_q0);
assign v9_fu_710_p1 = v116_0_load_reg_993;
assign zext_ln26_fu_450_p1 = lshr_ln1_fu_440_p4;
assign zext_ln29_fu_632_p1 = lshr_ln2_reg_859;
assign zext_ln33_1_fu_466_p1 = add_ln33_fu_460_p2;
assign zext_ln33_fu_456_p1 = select_ln26_fu_410_p3;
assign zext_ln40_fu_501_p1 = tmp_11_fu_491_p4;
assign zext_ln47_fu_569_p1 = tmp_13_fu_560_p5;
assign zext_ln54_fu_582_p1 = tmp_14_fu_574_p4;
assign zext_ln61_fu_611_p1 = tmp_15_fu_602_p5;
assign zext_ln68_fu_627_p1 = tmp_16_fu_616_p6;
assign zext_ln75_fu_662_p1 = tmp_17_fu_653_p5;
assign zext_ln83_fu_675_p1 = tmp_18_fu_667_p4;
endmodule 