module bicg_bicg_node1_Pipeline_label_223 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty_18,empty_19,empty,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,v17_21,grp_fu_2063_p_din0,grp_fu_2063_p_din1,grp_fu_2063_p_opcode,grp_fu_2063_p_dout0,grp_fu_2063_p_ce,grp_fu_2067_p_din0,grp_fu_2067_p_din1,grp_fu_2067_p_opcode,grp_fu_2067_p_dout0,grp_fu_2067_p_ce,grp_fu_2071_p_din0,grp_fu_2071_p_din1,grp_fu_2071_p_dout0,grp_fu_2071_p_ce,grp_fu_2075_p_din0,grp_fu_2075_p_din1,grp_fu_2075_p_dout0,grp_fu_2075_p_ce); 
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
input  [0:0] empty_18;
input  [0:0] empty_19;
input  [0:0] empty;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [31:0] v17_21;
output  [31:0] grp_fu_2063_p_din0;
output  [31:0] grp_fu_2063_p_din1;
output  [1:0] grp_fu_2063_p_opcode;
input  [31:0] grp_fu_2063_p_dout0;
output   grp_fu_2063_p_ce;
output  [31:0] grp_fu_2067_p_din0;
output  [31:0] grp_fu_2067_p_din1;
output  [1:0] grp_fu_2067_p_opcode;
input  [31:0] grp_fu_2067_p_dout0;
output   grp_fu_2067_p_ce;
output  [31:0] grp_fu_2071_p_din0;
output  [31:0] grp_fu_2071_p_din1;
input  [31:0] grp_fu_2071_p_dout0;
output   grp_fu_2071_p_ce;
output  [31:0] grp_fu_2075_p_din0;
output  [31:0] grp_fu_2075_p_din1;
input  [31:0] grp_fu_2075_p_dout0;
output   grp_fu_2075_p_ce;
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
reg   [0:0] tmp_169_reg_687;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_289;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_293;
reg   [31:0] reg_297;
reg   [31:0] reg_302;
reg   [6:0] v12_15_reg_680;
wire   [0:0] tmp_169_fu_315_p3;
wire   [4:0] lshr_ln42_s_fu_350_p4;
reg   [4:0] lshr_ln42_s_reg_696;
wire   [3:0] tmp_275_fu_396_p4;
reg   [3:0] tmp_275_reg_706;
reg   [2:0] tmp_278_reg_721;
reg   [0:0] tmp_170_reg_731;
wire   [31:0] v16_fu_465_p1;
wire   [31:0] v23_fu_470_p1;
wire   [31:0] v29_fu_520_p1;
wire   [31:0] v35_fu_525_p1;
reg   [4:0] v10_0_addr_reg_777;
reg   [4:0] v10_0_addr_reg_777_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_777_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_782;
reg   [4:0] v10_1_addr_reg_782_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_782_pp0_iter3_reg;
reg   [4:0] v10_0_addr_45_reg_787;
reg   [4:0] v10_0_addr_45_reg_787_pp0_iter2_reg;
reg   [4:0] v10_0_addr_45_reg_787_pp0_iter3_reg;
reg   [4:0] v10_1_addr_45_reg_792;
reg   [4:0] v10_1_addr_45_reg_792_pp0_iter2_reg;
reg   [4:0] v10_1_addr_45_reg_792_pp0_iter3_reg;
wire   [31:0] v41_fu_590_p1;
wire   [31:0] v47_fu_595_p1;
reg   [31:0] v14_reg_807;
reg   [31:0] v18_reg_812;
reg   [31:0] v24_reg_817;
reg   [4:0] v10_0_addr_46_reg_822;
reg   [4:0] v10_0_addr_46_reg_822_pp0_iter2_reg;
reg   [4:0] v10_0_addr_46_reg_822_pp0_iter3_reg;
reg   [4:0] v10_1_addr_46_reg_827;
reg   [4:0] v10_1_addr_46_reg_827_pp0_iter2_reg;
reg   [4:0] v10_1_addr_46_reg_827_pp0_iter3_reg;
reg   [4:0] v10_0_addr_47_reg_832;
reg   [4:0] v10_0_addr_47_reg_832_pp0_iter2_reg;
reg   [4:0] v10_0_addr_47_reg_832_pp0_iter3_reg;
reg   [4:0] v10_0_addr_47_reg_832_pp0_iter4_reg;
wire   [31:0] v53_fu_627_p1;
reg   [4:0] v10_1_addr_47_reg_842;
reg   [4:0] v10_1_addr_47_reg_842_pp0_iter2_reg;
reg   [4:0] v10_1_addr_47_reg_842_pp0_iter3_reg;
reg   [4:0] v10_1_addr_47_reg_842_pp0_iter4_reg;
wire   [31:0] v59_fu_632_p1;
reg   [31:0] v21_reg_852;
reg   [31:0] v27_reg_857;
reg   [31:0] v33_reg_862;
reg   [31:0] v30_reg_867;
reg   [31:0] v36_reg_872;
reg   [31:0] v39_reg_877;
reg   [31:0] v45_reg_882;
reg   [31:0] v51_reg_887;
reg   [31:0] v57_reg_892;
reg   [31:0] v42_reg_897;
reg   [31:0] v48_reg_902;
reg   [31:0] v54_reg_907;
reg   [31:0] v60_reg_912;
reg   [31:0] v31_reg_917;
reg   [31:0] v37_reg_922;
reg   [31:0] v55_reg_927;
reg   [31:0] v61_reg_932;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_345_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_380_p1;
wire   [63:0] zext_ln61_fu_422_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_444_p1;
wire   [63:0] zext_ln75_fu_491_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_515_p1;
wire   [63:0] zext_ln89_fu_546_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_567_p1;
wire   [63:0] zext_ln42_fu_572_p1;
wire   [63:0] zext_ln59_fu_584_p1;
wire   [63:0] zext_ln73_fu_608_p1;
wire   [63:0] zext_ln87_fu_621_p1;
reg   [6:0] v12_fu_90;
wire   [6:0] add_ln42_fu_385_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_15;
reg    v137_ce1_local;
reg   [11:0] v137_address1_local;
reg    v137_ce0_local;
reg   [11:0] v137_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_273_p0;
reg   [31:0] grp_fu_273_p1;
reg   [31:0] grp_fu_277_p0;
reg   [31:0] grp_fu_277_p1;
reg   [31:0] grp_fu_281_p0;
reg   [31:0] grp_fu_285_p0;
wire   [5:0] trunc_ln42_fu_323_p1;
wire   [11:0] tmp_s_fu_327_p8;
wire   [11:0] tmp_274_fu_360_p9;
wire   [11:0] tmp_276_fu_405_p9;
wire   [11:0] tmp_277_fu_427_p9;
wire   [11:0] tmp_279_fu_475_p9;
wire   [11:0] tmp_280_fu_496_p11;
wire   [11:0] tmp_281_fu_530_p9;
wire   [11:0] tmp_282_fu_551_p9;
wire   [4:0] or_ln59_s_fu_577_p3;
wire   [4:0] or_ln73_s_fu_600_p4;
wire   [4:0] or_ln87_s_fu_614_p3;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_169_fu_315_p3 == 1'd0))) begin
            v12_fu_90 <= add_ln42_fu_385_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_90 <= 7'd0;
        end
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln42_s_reg_696 <= {{ap_sig_allocacmp_v12_15[5:1]}};
        tmp_169_reg_687 <= ap_sig_allocacmp_v12_15[32'd6];
        v10_0_addr_45_reg_787[4 : 1] <= zext_ln59_fu_584_p1[4 : 1];
        v10_0_addr_45_reg_787_pp0_iter2_reg[4 : 1] <= v10_0_addr_45_reg_787[4 : 1];
        v10_0_addr_45_reg_787_pp0_iter3_reg[4 : 1] <= v10_0_addr_45_reg_787_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_777 <= zext_ln42_fu_572_p1;
        v10_0_addr_reg_777_pp0_iter2_reg <= v10_0_addr_reg_777;
        v10_0_addr_reg_777_pp0_iter3_reg <= v10_0_addr_reg_777_pp0_iter2_reg;
        v10_1_addr_45_reg_792[4 : 1] <= zext_ln59_fu_584_p1[4 : 1];
        v10_1_addr_45_reg_792_pp0_iter2_reg[4 : 1] <= v10_1_addr_45_reg_792[4 : 1];
        v10_1_addr_45_reg_792_pp0_iter3_reg[4 : 1] <= v10_1_addr_45_reg_792_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_782 <= zext_ln42_fu_572_p1;
        v10_1_addr_reg_782_pp0_iter2_reg <= v10_1_addr_reg_782;
        v10_1_addr_reg_782_pp0_iter3_reg <= v10_1_addr_reg_782_pp0_iter2_reg;
        v12_15_reg_680 <= ap_sig_allocacmp_v12_15;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_289 <= v137_q1;
        reg_293 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_297 <= grp_fu_2063_p_dout0;
        reg_302 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_170_reg_731 <= v12_15_reg_680[32'd1];
        tmp_275_reg_706 <= {{v12_15_reg_680[5:2]}};
        tmp_278_reg_721 <= {{v12_15_reg_680[5:3]}};
        v10_0_addr_46_reg_822[0] <= zext_ln73_fu_608_p1[0];
v10_0_addr_46_reg_822[4 : 2] <= zext_ln73_fu_608_p1[4 : 2];
        v10_0_addr_46_reg_822_pp0_iter2_reg[0] <= v10_0_addr_46_reg_822[0];
v10_0_addr_46_reg_822_pp0_iter2_reg[4 : 2] <= v10_0_addr_46_reg_822[4 : 2];
        v10_0_addr_46_reg_822_pp0_iter3_reg[0] <= v10_0_addr_46_reg_822_pp0_iter2_reg[0];
v10_0_addr_46_reg_822_pp0_iter3_reg[4 : 2] <= v10_0_addr_46_reg_822_pp0_iter2_reg[4 : 2];
        v10_0_addr_47_reg_832[4 : 2] <= zext_ln87_fu_621_p1[4 : 2];
        v10_0_addr_47_reg_832_pp0_iter2_reg[4 : 2] <= v10_0_addr_47_reg_832[4 : 2];
        v10_0_addr_47_reg_832_pp0_iter3_reg[4 : 2] <= v10_0_addr_47_reg_832_pp0_iter2_reg[4 : 2];
        v10_0_addr_47_reg_832_pp0_iter4_reg[4 : 2] <= v10_0_addr_47_reg_832_pp0_iter3_reg[4 : 2];
        v10_1_addr_46_reg_827[0] <= zext_ln73_fu_608_p1[0];
v10_1_addr_46_reg_827[4 : 2] <= zext_ln73_fu_608_p1[4 : 2];
        v10_1_addr_46_reg_827_pp0_iter2_reg[0] <= v10_1_addr_46_reg_827[0];
v10_1_addr_46_reg_827_pp0_iter2_reg[4 : 2] <= v10_1_addr_46_reg_827[4 : 2];
        v10_1_addr_46_reg_827_pp0_iter3_reg[0] <= v10_1_addr_46_reg_827_pp0_iter2_reg[0];
v10_1_addr_46_reg_827_pp0_iter3_reg[4 : 2] <= v10_1_addr_46_reg_827_pp0_iter2_reg[4 : 2];
        v10_1_addr_47_reg_842[4 : 2] <= zext_ln87_fu_621_p1[4 : 2];
        v10_1_addr_47_reg_842_pp0_iter2_reg[4 : 2] <= v10_1_addr_47_reg_842[4 : 2];
        v10_1_addr_47_reg_842_pp0_iter3_reg[4 : 2] <= v10_1_addr_47_reg_842_pp0_iter2_reg[4 : 2];
        v10_1_addr_47_reg_842_pp0_iter4_reg[4 : 2] <= v10_1_addr_47_reg_842_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_807 <= v10_0_q1;
        v18_reg_812 <= grp_fu_2071_p_dout0;
        v21_reg_852 <= v10_1_q1;
        v24_reg_817 <= grp_fu_2075_p_dout0;
        v27_reg_857 <= v10_0_q0;
        v33_reg_862 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_867 <= grp_fu_2071_p_dout0;
        v36_reg_872 <= grp_fu_2075_p_dout0;
        v39_reg_877 <= v10_0_q1;
        v45_reg_882 <= v10_1_q1;
        v51_reg_887 <= v10_0_q0;
        v57_reg_892 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_917 <= grp_fu_2063_p_dout0;
        v37_reg_922 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_897 <= grp_fu_2071_p_dout0;
        v48_reg_902 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_907 <= grp_fu_2071_p_dout0;
        v60_reg_912 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_927 <= grp_fu_2063_p_dout0;
        v61_reg_932 <= grp_fu_2067_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_169_reg_687 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_15 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_15 = v12_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p0 = v51_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p0 = v39_reg_877;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p0 = v27_reg_857;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p0 = v14_reg_807;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_273_p1 = v54_reg_907;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p1 = v42_reg_897;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p1 = v30_reg_867;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p1 = v18_reg_812;
    end else begin
        grp_fu_273_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = v57_reg_892;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p0 = v45_reg_882;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v33_reg_862;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v21_reg_852;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p1 = v60_reg_912;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p1 = v48_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p1 = v36_reg_872;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p1 = v24_reg_817;
    end else begin
        grp_fu_277_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p0 = v53_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p0 = v41_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p0 = v29_fu_520_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p0 = v16_fu_465_p1;
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_285_p0 = v59_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p0 = v47_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = v35_fu_525_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_285_p0 = v23_fu_470_p1;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_47_reg_832_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_45_reg_787_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_584_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_46_reg_822_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_777_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_572_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_927;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_917;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_47_reg_842_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_45_reg_792_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_584_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_46_reg_827_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_782_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_572_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_922;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_address0_local = zext_ln96_fu_567_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address0_local = zext_ln82_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address0_local = zext_ln68_fu_444_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address0_local = zext_ln54_fu_380_p1;
        end else begin
            v137_address0_local = 'bx;
        end
    end else begin
        v137_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_address1_local = zext_ln89_fu_546_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address1_local = zext_ln75_fu_491_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address1_local = zext_ln61_fu_422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address1_local = zext_ln46_fu_345_p1;
        end else begin
            v137_address1_local = 'bx;
        end
    end else begin
        v137_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce0_local = 1'b1;
    end else begin
        v137_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_ce1_local = 1'b1;
    end else begin
        v137_ce1_local = 1'b0;
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
assign add_ln42_fu_385_p2 = (ap_sig_allocacmp_v12_15 + 7'd8);
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
assign grp_fu_2063_p_ce = 1'b1;
assign grp_fu_2063_p_din0 = grp_fu_273_p0;
assign grp_fu_2063_p_din1 = grp_fu_273_p1;
assign grp_fu_2063_p_opcode = 2'd0;
assign grp_fu_2067_p_ce = 1'b1;
assign grp_fu_2067_p_din0 = grp_fu_277_p0;
assign grp_fu_2067_p_din1 = grp_fu_277_p1;
assign grp_fu_2067_p_opcode = 2'd0;
assign grp_fu_2071_p_ce = 1'b1;
assign grp_fu_2071_p_din0 = grp_fu_281_p0;
assign grp_fu_2071_p_din1 = v17_21;
assign grp_fu_2075_p_ce = 1'b1;
assign grp_fu_2075_p_din0 = grp_fu_285_p0;
assign grp_fu_2075_p_din1 = v17_21;
assign lshr_ln42_s_fu_350_p4 = {{ap_sig_allocacmp_v12_15[5:1]}};
assign or_ln59_s_fu_577_p3 = {{tmp_275_reg_706}, {1'd1}};
assign or_ln73_s_fu_600_p4 = {{{tmp_278_reg_721}, {1'd1}}, {tmp_170_reg_731}};
assign or_ln87_s_fu_614_p3 = {{tmp_278_reg_721}, {2'd3}};
assign tmp_169_fu_315_p3 = ap_sig_allocacmp_v12_15[32'd6];
assign tmp_274_fu_360_p9 = {{{{{{{{lshr_ln42_s_fu_350_p4}, {1'd1}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_275_fu_396_p4 = {{v12_15_reg_680[5:2]}};
assign tmp_276_fu_405_p9 = {{{{{{{{tmp_275_fu_396_p4}, {2'd2}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_277_fu_427_p9 = {{{{{{{{tmp_275_fu_396_p4}, {2'd3}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_279_fu_475_p9 = {{{{{{{{tmp_278_reg_721}, {3'd4}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_280_fu_496_p11 = {{{{{{{{{{tmp_278_reg_721}, {1'd1}}, {tmp_170_reg_731}}, {1'd1}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_281_fu_530_p9 = {{{{{{{{tmp_278_reg_721}, {3'd6}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_282_fu_551_p9 = {{{{{{{{tmp_278_reg_721}, {3'd7}}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_s_fu_327_p8 = {{{{{{{trunc_ln42_fu_323_p1}, {empty_18}}, {1'd1}}, {empty_19}}, {1'd1}}, {empty}}, {1'd1}};
assign trunc_ln42_fu_323_p1 = ap_sig_allocacmp_v12_15[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_297;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_302;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v16_fu_465_p1 = reg_289;
assign v23_fu_470_p1 = reg_293;
assign v29_fu_520_p1 = reg_289;
assign v35_fu_525_p1 = reg_293;
assign v41_fu_590_p1 = reg_289;
assign v47_fu_595_p1 = reg_293;
assign v53_fu_627_p1 = reg_289;
assign v59_fu_632_p1 = reg_293;
assign zext_ln42_fu_572_p1 = lshr_ln42_s_reg_696;
assign zext_ln46_fu_345_p1 = tmp_s_fu_327_p8;
assign zext_ln54_fu_380_p1 = tmp_274_fu_360_p9;
assign zext_ln59_fu_584_p1 = or_ln59_s_fu_577_p3;
assign zext_ln61_fu_422_p1 = tmp_276_fu_405_p9;
assign zext_ln68_fu_444_p1 = tmp_277_fu_427_p9;
assign zext_ln73_fu_608_p1 = or_ln73_s_fu_600_p4;
assign zext_ln75_fu_491_p1 = tmp_279_fu_475_p9;
assign zext_ln82_fu_515_p1 = tmp_280_fu_496_p11;
assign zext_ln87_fu_621_p1 = or_ln87_s_fu_614_p3;
assign zext_ln89_fu_546_p1 = tmp_281_fu_530_p9;
assign zext_ln96_fu_567_p1 = tmp_282_fu_551_p9;
always @ (posedge ap_clk) begin
    v10_0_addr_45_reg_787[0] <= 1'b1;
    v10_0_addr_45_reg_787_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_45_reg_787_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_45_reg_792[0] <= 1'b1;
    v10_1_addr_45_reg_792_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_45_reg_792_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_46_reg_822[1] <= 1'b1;
    v10_0_addr_46_reg_822_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_46_reg_822_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_46_reg_827[1] <= 1'b1;
    v10_1_addr_46_reg_827_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_46_reg_827_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_47_reg_832[1:0] <= 2'b11;
    v10_0_addr_47_reg_832_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_47_reg_832_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_47_reg_832_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_47_reg_842[1:0] <= 2'b11;
    v10_1_addr_47_reg_842_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_47_reg_842_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_47_reg_842_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 