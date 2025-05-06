
module bicg_bicg_node1_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,cmp7,v17,zext_ln41,grp_fu_2063_p_din0,grp_fu_2063_p_din1,grp_fu_2063_p_opcode,grp_fu_2063_p_dout0,grp_fu_2063_p_ce,grp_fu_2067_p_din0,grp_fu_2067_p_din1,grp_fu_2067_p_opcode,grp_fu_2067_p_dout0,grp_fu_2067_p_ce,grp_fu_2071_p_din0,grp_fu_2071_p_din1,grp_fu_2071_p_dout0,grp_fu_2071_p_ce,grp_fu_2075_p_din0,grp_fu_2075_p_din1,grp_fu_2075_p_dout0,grp_fu_2075_p_ce);  
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
input  [5:0] v11;
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
input  [0:0] cmp7;
input  [31:0] v17;
input  [5:0] zext_ln41;
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
reg   [0:0] tmp_reg_674;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_293;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_297;
reg   [31:0] reg_301;
reg   [31:0] reg_306;
wire   [6:0] v11_cast_fu_311_p1;
reg   [6:0] v11_cast_reg_660;
reg   [6:0] v12_19_reg_667;
wire   [0:0] tmp_fu_323_p3;
wire   [4:0] tmp_130_cast_fu_331_p4;
reg   [4:0] tmp_130_cast_reg_678;
wire   [3:0] tmp_134_fu_380_p4;
reg   [3:0] tmp_134_reg_693;
reg   [2:0] tmp_141_reg_708;
reg   [0:0] tmp_193_reg_718;
wire   [31:0] v16_fu_433_p1;
wire   [31:0] v23_fu_438_p1;
wire   [31:0] v29_fu_473_p1;
wire   [31:0] v35_fu_478_p1;
reg   [4:0] v10_0_addr_reg_765;
reg   [4:0] v10_0_addr_reg_765_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_765_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_770;
reg   [4:0] v10_1_addr_reg_770_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_770_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_775;
reg   [4:0] v10_0_addr_1_reg_775_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_775_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_780;
reg   [4:0] v10_1_addr_1_reg_780_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_780_pp0_iter3_reg;
wire   [31:0] v41_fu_527_p1;
wire   [31:0] v47_fu_532_p1;
reg   [31:0] v14_reg_795;
reg   [31:0] v18_reg_800;
reg   [31:0] v24_reg_805;
reg   [4:0] v10_0_addr_2_reg_810;
reg   [4:0] v10_0_addr_2_reg_810_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_810_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_815;
reg   [4:0] v10_1_addr_2_reg_815_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_815_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_820;
reg   [4:0] v10_0_addr_3_reg_820_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_820_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_820_pp0_iter4_reg;
wire   [31:0] v53_fu_564_p1;
reg   [4:0] v10_1_addr_3_reg_830;
reg   [4:0] v10_1_addr_3_reg_830_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_830_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_830_pp0_iter4_reg;
wire   [31:0] v59_fu_569_p1;
reg   [31:0] v21_reg_840;
reg   [31:0] v27_reg_845;
reg   [31:0] v33_reg_850;
wire   [31:0] v15_fu_574_p3;
reg   [31:0] v30_reg_860;
reg   [31:0] v36_reg_865;
wire   [31:0] v22_fu_581_p3;
wire   [31:0] v28_fu_588_p3;
reg   [31:0] v28_reg_875;
wire   [31:0] v34_fu_594_p3;
reg   [31:0] v34_reg_880;
wire   [31:0] v40_fu_600_p3;
reg   [31:0] v40_reg_885;
wire   [31:0] v46_fu_607_p3;
reg   [31:0] v46_reg_890;
wire   [31:0] v52_fu_614_p3;
reg   [31:0] v52_reg_895;
wire   [31:0] v58_fu_621_p3;
reg   [31:0] v58_reg_900;
reg   [31:0] v42_reg_905;
reg   [31:0] v48_reg_910;
reg   [31:0] v54_reg_915;
reg   [31:0] v60_reg_920;
reg   [31:0] v31_reg_925;
reg   [31:0] v37_reg_930;
reg   [31:0] v55_reg_935;
reg   [31:0] v61_reg_940;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_349_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_364_p1;
wire   [63:0] zext_ln61_fu_398_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_412_p1;
wire   [63:0] zext_ln75_fu_452_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_468_p1;
wire   [63:0] zext_ln89_fu_491_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_504_p1;
wire   [63:0] zext_ln42_fu_509_p1;
wire   [63:0] zext_ln59_fu_521_p1;
wire   [63:0] zext_ln73_fu_545_p1;
wire   [63:0] zext_ln87_fu_558_p1;
reg   [6:0] v12_fu_94;
wire   [6:0] add_ln42_fu_369_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_19;
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
reg   [31:0] grp_fu_277_p0;
reg   [31:0] grp_fu_277_p1;
reg   [31:0] grp_fu_281_p0;
reg   [31:0] grp_fu_281_p1;
reg   [31:0] grp_fu_285_p0;
reg   [31:0] grp_fu_289_p0;
wire   [11:0] tmp_131_fu_341_p3;
wire   [11:0] add_ln_fu_354_p4;
wire   [11:0] tmp_137_fu_389_p4;
wire   [11:0] add_ln1_fu_403_p4;
wire   [11:0] tmp_145_fu_443_p5;
wire   [11:0] add_ln2_fu_457_p6;
wire   [11:0] tmp_154_fu_483_p4;
wire   [11:0] add_ln3_fu_496_p4;
wire   [4:0] or_ln58_1_fu_514_p3;
wire   [4:0] or_ln72_1_fu_537_p4;
wire   [4:0] or_ln86_1_fu_551_p3;
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
#0 v12_fu_94 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_323_p3 == 1'd0))) begin
            v12_fu_94 <= add_ln42_fu_369_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_94 <= 7'd0;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_293 <= v137_q1;
        reg_297 <= v137_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_301 <= grp_fu_2063_p_dout0;
        reg_306 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_130_cast_reg_678 <= {{ap_sig_allocacmp_v12_19[5:1]}};
        tmp_reg_674 <= ap_sig_allocacmp_v12_19[32'd6];
        v10_0_addr_1_reg_775[4 : 1] <= zext_ln59_fu_521_p1[4 : 1];
        v10_0_addr_1_reg_775_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_775[4 : 1];
        v10_0_addr_1_reg_775_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_775_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_765 <= zext_ln42_fu_509_p1;
        v10_0_addr_reg_765_pp0_iter2_reg <= v10_0_addr_reg_765;
        v10_0_addr_reg_765_pp0_iter3_reg <= v10_0_addr_reg_765_pp0_iter2_reg;
        v10_1_addr_1_reg_780[4 : 1] <= zext_ln59_fu_521_p1[4 : 1];
        v10_1_addr_1_reg_780_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_780[4 : 1];
        v10_1_addr_1_reg_780_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_780_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_770 <= zext_ln42_fu_509_p1;
        v10_1_addr_reg_770_pp0_iter2_reg <= v10_1_addr_reg_770;
        v10_1_addr_reg_770_pp0_iter3_reg <= v10_1_addr_reg_770_pp0_iter2_reg;
        v11_cast_reg_660[5 : 0] <= v11_cast_fu_311_p1[5 : 0];
        v12_19_reg_667 <= ap_sig_allocacmp_v12_19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_134_reg_693 <= {{v12_19_reg_667[5:2]}};
        tmp_141_reg_708 <= {{v12_19_reg_667[5:3]}};
        tmp_193_reg_718 <= v12_19_reg_667[32'd1];
        v10_0_addr_2_reg_810[0] <= zext_ln73_fu_545_p1[0];
v10_0_addr_2_reg_810[4 : 2] <= zext_ln73_fu_545_p1[4 : 2];
        v10_0_addr_2_reg_810_pp0_iter2_reg[0] <= v10_0_addr_2_reg_810[0];
v10_0_addr_2_reg_810_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_810[4 : 2];
        v10_0_addr_2_reg_810_pp0_iter3_reg[0] <= v10_0_addr_2_reg_810_pp0_iter2_reg[0];
v10_0_addr_2_reg_810_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_810_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_820[4 : 2] <= zext_ln87_fu_558_p1[4 : 2];
        v10_0_addr_3_reg_820_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_820[4 : 2];
        v10_0_addr_3_reg_820_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_820_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_820_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_820_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_815[0] <= zext_ln73_fu_545_p1[0];
v10_1_addr_2_reg_815[4 : 2] <= zext_ln73_fu_545_p1[4 : 2];
        v10_1_addr_2_reg_815_pp0_iter2_reg[0] <= v10_1_addr_2_reg_815[0];
v10_1_addr_2_reg_815_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_815[4 : 2];
        v10_1_addr_2_reg_815_pp0_iter3_reg[0] <= v10_1_addr_2_reg_815_pp0_iter2_reg[0];
v10_1_addr_2_reg_815_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_815_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_830[4 : 2] <= zext_ln87_fu_558_p1[4 : 2];
        v10_1_addr_3_reg_830_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_830[4 : 2];
        v10_1_addr_3_reg_830_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_830_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_830_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_830_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_795 <= v10_0_q1;
        v18_reg_800 <= grp_fu_2071_p_dout0;
        v21_reg_840 <= v10_1_q1;
        v24_reg_805 <= grp_fu_2075_p_dout0;
        v27_reg_845 <= v10_0_q0;
        v33_reg_850 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v28_reg_875 <= v28_fu_588_p3;
        v34_reg_880 <= v34_fu_594_p3;
        v40_reg_885 <= v40_fu_600_p3;
        v46_reg_890 <= v46_fu_607_p3;
        v52_reg_895 <= v52_fu_614_p3;
        v58_reg_900 <= v58_fu_621_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_860 <= grp_fu_2071_p_dout0;
        v36_reg_865 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_925 <= grp_fu_2063_p_dout0;
        v37_reg_930 <= grp_fu_2067_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_905 <= grp_fu_2071_p_dout0;
        v48_reg_910 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_915 <= grp_fu_2071_p_dout0;
        v60_reg_920 <= grp_fu_2075_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_935 <= grp_fu_2063_p_dout0;
        v61_reg_940 <= grp_fu_2067_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_674 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_19 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_19 = v12_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p0 = v52_reg_895;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p0 = v40_reg_885;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v28_reg_875;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v15_fu_574_p3;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_277_p1 = v54_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_277_p1 = v42_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p1 = v30_reg_860;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p1 = v18_reg_800;
    end else begin
        grp_fu_277_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p0 = v58_reg_900;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p0 = v46_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p0 = v34_reg_880;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p0 = v22_fu_581_p3;
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p1 = v60_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p1 = v48_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p1 = v36_reg_865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p1 = v24_reg_805;
    end else begin
        grp_fu_281_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_285_p0 = v53_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p0 = v41_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = v29_fu_473_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_285_p0 = v16_fu_433_p1;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p0 = v59_fu_569_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p0 = v47_fu_532_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p0 = v35_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p0 = v23_fu_438_p1;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_820_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_1_reg_775_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_521_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_2_reg_810_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_765_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_509_p1;
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
        v10_0_d0_local = v55_reg_935;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_925;
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
        v10_1_address0_local = v10_1_addr_3_reg_830_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_1_reg_780_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_521_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_2_reg_815_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_770_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_545_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_509_p1;
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
        v10_1_d0_local = v61_reg_940;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_930;
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
            v137_address0_local = zext_ln96_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address0_local = zext_ln82_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address0_local = zext_ln68_fu_412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address0_local = zext_ln54_fu_364_p1;
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
            v137_address1_local = zext_ln89_fu_491_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_address1_local = zext_ln75_fu_452_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_address1_local = zext_ln61_fu_398_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_address1_local = zext_ln46_fu_349_p1;
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
assign add_ln1_fu_403_p4 = {{{tmp_134_fu_380_p4}, {2'd3}}, {zext_ln41}};
assign add_ln2_fu_457_p6 = {{{{{tmp_141_reg_708}, {1'd1}}, {tmp_193_reg_718}}, {1'd1}}, {zext_ln41}};
assign add_ln3_fu_496_p4 = {{{tmp_141_reg_708}, {3'd7}}, {zext_ln41}};
assign add_ln42_fu_369_p2 = (ap_sig_allocacmp_v12_19 + 7'd8);
assign add_ln_fu_354_p4 = {{{tmp_130_cast_fu_331_p4}, {1'd1}}, {zext_ln41}};
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
assign grp_fu_2063_p_din0 = grp_fu_277_p0;
assign grp_fu_2063_p_din1 = grp_fu_277_p1;
assign grp_fu_2063_p_opcode = 2'd0;
assign grp_fu_2067_p_ce = 1'b1;
assign grp_fu_2067_p_din0 = grp_fu_281_p0;
assign grp_fu_2067_p_din1 = grp_fu_281_p1;
assign grp_fu_2067_p_opcode = 2'd0;
assign grp_fu_2071_p_ce = 1'b1;
assign grp_fu_2071_p_din0 = grp_fu_285_p0;
assign grp_fu_2071_p_din1 = v17;
assign grp_fu_2075_p_ce = 1'b1;
assign grp_fu_2075_p_din0 = grp_fu_289_p0;
assign grp_fu_2075_p_din1 = v17;
assign or_ln58_1_fu_514_p3 = {{tmp_134_reg_693}, {1'd1}};
assign or_ln72_1_fu_537_p4 = {{{tmp_141_reg_708}, {1'd1}}, {tmp_193_reg_718}};
assign or_ln86_1_fu_551_p3 = {{tmp_141_reg_708}, {2'd3}};
assign tmp_130_cast_fu_331_p4 = {{ap_sig_allocacmp_v12_19[5:1]}};
assign tmp_131_fu_341_p3 = {{tmp_130_cast_fu_331_p4}, {v11_cast_fu_311_p1}};
assign tmp_134_fu_380_p4 = {{v12_19_reg_667[5:2]}};
assign tmp_137_fu_389_p4 = {{{tmp_134_fu_380_p4}, {1'd1}}, {v11_cast_reg_660}};
assign tmp_145_fu_443_p5 = {{{{tmp_141_reg_708}, {1'd1}}, {tmp_193_reg_718}}, {v11_cast_reg_660}};
assign tmp_154_fu_483_p4 = {{{tmp_141_reg_708}, {2'd3}}, {v11_cast_reg_660}};
assign tmp_fu_323_p3 = ap_sig_allocacmp_v12_19[32'd6];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_301;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_306;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v11_cast_fu_311_p1 = v11;
assign v137_address0 = v137_address0_local;
assign v137_address1 = v137_address1_local;
assign v137_ce0 = v137_ce0_local;
assign v137_ce1 = v137_ce1_local;
assign v15_fu_574_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v14_reg_795);
assign v16_fu_433_p1 = reg_293;
assign v22_fu_581_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v21_reg_840);
assign v23_fu_438_p1 = reg_297;
assign v28_fu_588_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v27_reg_845);
assign v29_fu_473_p1 = reg_293;
assign v34_fu_594_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v33_reg_850);
assign v35_fu_478_p1 = reg_297;
assign v40_fu_600_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign v41_fu_527_p1 = reg_293;
assign v46_fu_607_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign v47_fu_532_p1 = reg_297;
assign v52_fu_614_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign v53_fu_564_p1 = reg_293;
assign v58_fu_621_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign v59_fu_569_p1 = reg_297;
assign zext_ln42_fu_509_p1 = tmp_130_cast_reg_678;
assign zext_ln46_fu_349_p1 = tmp_131_fu_341_p3;
assign zext_ln54_fu_364_p1 = add_ln_fu_354_p4;
assign zext_ln59_fu_521_p1 = or_ln58_1_fu_514_p3;
assign zext_ln61_fu_398_p1 = tmp_137_fu_389_p4;
assign zext_ln68_fu_412_p1 = add_ln1_fu_403_p4;
assign zext_ln73_fu_545_p1 = or_ln72_1_fu_537_p4;
assign zext_ln75_fu_452_p1 = tmp_145_fu_443_p5;
assign zext_ln82_fu_468_p1 = add_ln2_fu_457_p6;
assign zext_ln87_fu_558_p1 = or_ln86_1_fu_551_p3;
assign zext_ln89_fu_491_p1 = tmp_154_fu_483_p4;
assign zext_ln96_fu_504_p1 = add_ln3_fu_496_p4;
always @ (posedge ap_clk) begin
    v11_cast_reg_660[6] <= 1'b0;
    v10_0_addr_1_reg_775[0] <= 1'b1;
    v10_0_addr_1_reg_775_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_775_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_780[0] <= 1'b1;
    v10_1_addr_1_reg_780_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_780_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_810[1] <= 1'b1;
    v10_0_addr_2_reg_810_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_810_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_815[1] <= 1'b1;
    v10_1_addr_2_reg_815_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_815_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_3_reg_820[1:0] <= 2'b11;
    v10_0_addr_3_reg_820_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_820_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_820_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_830[1:0] <= 2'b11;
    v10_1_addr_3_reg_830_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_830_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_830_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
