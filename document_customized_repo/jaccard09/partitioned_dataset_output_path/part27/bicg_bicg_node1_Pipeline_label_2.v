
module bicg_bicg_node1_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_16_address0,v137_16_ce0,v137_16_q0,v137_16_address1,v137_16_ce1,v137_16_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,cmp7,icmp_ln46,v17,grp_fu_2154_p_din0,grp_fu_2154_p_din1,grp_fu_2154_p_opcode,grp_fu_2154_p_dout0,grp_fu_2154_p_ce,grp_fu_2158_p_din0,grp_fu_2158_p_din1,grp_fu_2158_p_opcode,grp_fu_2158_p_dout0,grp_fu_2158_p_ce,grp_fu_2162_p_din0,grp_fu_2162_p_din1,grp_fu_2162_p_dout0,grp_fu_2162_p_ce,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_dout0,grp_fu_2166_p_ce);  
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
output  [6:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [6:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [6:0] v137_16_address0;
output   v137_16_ce0;
input  [31:0] v137_16_q0;
output  [6:0] v137_16_address1;
output   v137_16_ce1;
input  [31:0] v137_16_q1;
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
input  [0:0] icmp_ln46;
input  [31:0] v17;
output  [31:0] grp_fu_2154_p_din0;
output  [31:0] grp_fu_2154_p_din1;
output  [1:0] grp_fu_2154_p_opcode;
input  [31:0] grp_fu_2154_p_dout0;
output   grp_fu_2154_p_ce;
output  [31:0] grp_fu_2158_p_din0;
output  [31:0] grp_fu_2158_p_din1;
output  [1:0] grp_fu_2158_p_opcode;
input  [31:0] grp_fu_2158_p_dout0;
output   grp_fu_2158_p_ce;
output  [31:0] grp_fu_2162_p_din0;
output  [31:0] grp_fu_2162_p_din1;
input  [31:0] grp_fu_2162_p_dout0;
output   grp_fu_2162_p_ce;
output  [31:0] grp_fu_2166_p_din0;
output  [31:0] grp_fu_2166_p_din1;
input  [31:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
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
reg   [0:0] tmp_reg_756;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_362_p3;
reg   [31:0] reg_376;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_369_p3;
reg   [31:0] reg_380;
reg   [31:0] reg_384;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_389;
reg   [6:0] v12_19_reg_749;
wire   [0:0] tmp_fu_402_p3;
wire   [4:0] lshr_ln_fu_422_p4;
reg   [4:0] lshr_ln_reg_770;
wire   [3:0] tmp_25_fu_457_p4;
reg   [3:0] tmp_25_reg_785;
reg   [2:0] tmp_31_reg_810;
reg   [0:0] tmp_36_reg_820;
wire   [31:0] v16_fu_510_p1;
wire   [31:0] v23_fu_515_p1;
wire   [31:0] v29_fu_549_p1;
wire   [31:0] v35_fu_554_p1;
reg   [4:0] v10_0_addr_reg_886;
reg   [4:0] v10_0_addr_reg_886_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_886_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_891;
reg   [4:0] v10_1_addr_reg_891_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_891_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_896;
reg   [4:0] v10_0_addr_1_reg_896_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_896_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_901;
reg   [4:0] v10_1_addr_1_reg_901_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_901_pp0_iter3_reg;
wire   [31:0] v41_fu_603_p1;
wire   [31:0] v47_fu_608_p1;
wire   [31:0] select_ln89_fu_613_p3;
reg   [31:0] select_ln89_reg_916;
wire   [31:0] select_ln96_fu_620_p3;
reg   [31:0] select_ln96_reg_921;
reg   [31:0] v14_reg_926;
reg   [31:0] v18_reg_931;
reg   [31:0] v24_reg_936;
reg   [4:0] v10_0_addr_2_reg_941;
reg   [4:0] v10_0_addr_2_reg_941_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_941_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_946;
reg   [4:0] v10_1_addr_2_reg_946_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_946_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_951;
reg   [4:0] v10_0_addr_3_reg_951_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_951_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_951_pp0_iter4_reg;
wire   [31:0] v53_fu_654_p1;
reg   [4:0] v10_1_addr_3_reg_961;
reg   [4:0] v10_1_addr_3_reg_961_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_961_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_961_pp0_iter4_reg;
wire   [31:0] v59_fu_658_p1;
reg   [31:0] v21_reg_971;
reg   [31:0] v27_reg_976;
reg   [31:0] v33_reg_981;
wire   [31:0] v15_fu_662_p3;
reg   [31:0] v30_reg_991;
reg   [31:0] v36_reg_996;
wire   [31:0] v22_fu_669_p3;
wire   [31:0] v28_fu_676_p3;
reg   [31:0] v28_reg_1006;
wire   [31:0] v34_fu_682_p3;
reg   [31:0] v34_reg_1011;
wire   [31:0] v40_fu_688_p3;
reg   [31:0] v40_reg_1016;
wire   [31:0] v46_fu_695_p3;
reg   [31:0] v46_reg_1021;
wire   [31:0] v52_fu_702_p3;
reg   [31:0] v52_reg_1026;
wire   [31:0] v58_fu_709_p3;
reg   [31:0] v58_reg_1031;
reg   [31:0] v42_reg_1036;
reg   [31:0] v48_reg_1041;
reg   [31:0] v54_reg_1046;
reg   [31:0] v60_reg_1051;
reg   [31:0] v31_reg_1056;
reg   [31:0] v37_reg_1061;
reg   [31:0] v55_reg_1066;
reg   [31:0] v61_reg_1071;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_416_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_440_p1;
wire   [63:0] zext_ln61_fu_474_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_488_p1;
wire   [63:0] zext_ln75_fu_527_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_543_p1;
wire   [63:0] zext_ln89_fu_566_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_579_p1;
wire   [63:0] zext_ln42_fu_585_p1;
wire   [63:0] zext_ln59_fu_597_p1;
wire   [63:0] zext_ln73_fu_635_p1;
wire   [63:0] zext_ln87_fu_648_p1;
reg   [6:0] v12_fu_96;
wire   [6:0] add_ln42_fu_446_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_19;
reg    v137_0_ce1_local;
reg   [6:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [6:0] v137_0_address0_local;
reg    v137_16_ce1_local;
reg   [6:0] v137_16_address1_local;
reg    v137_16_ce0_local;
reg   [6:0] v137_16_address0_local;
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
reg   [31:0] grp_fu_346_p0;
reg   [31:0] grp_fu_346_p1;
reg   [31:0] grp_fu_350_p0;
reg   [31:0] grp_fu_350_p1;
reg   [31:0] grp_fu_354_p0;
reg   [31:0] grp_fu_358_p0;
wire   [6:0] shl_ln46_fu_410_p2;
wire   [6:0] tmp_24_fu_432_p3;
wire   [6:0] tmp_27_fu_466_p3;
wire   [6:0] tmp_30_fu_480_p3;
wire   [6:0] tmp_33_fu_520_p3;
wire   [6:0] tmp_38_fu_533_p5;
wire   [6:0] tmp_41_fu_559_p3;
wire   [6:0] tmp_44_fu_572_p3;
wire   [4:0] or_ln58_1_fu_590_p3;
wire   [4:0] or_ln72_1_fu_627_p4;
wire   [4:0] or_ln86_1_fu_641_p3;
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
#0 v12_fu_96 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_402_p3 == 1'd0))) begin
            v12_fu_96 <= add_ln42_fu_446_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_96 <= 7'd0;
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
        lshr_ln_reg_770 <= {{ap_sig_allocacmp_v12_19[5:1]}};
        select_ln89_reg_916 <= select_ln89_fu_613_p3;
        select_ln96_reg_921 <= select_ln96_fu_620_p3;
        tmp_reg_756 <= ap_sig_allocacmp_v12_19[32'd6];
        v10_0_addr_1_reg_896[4 : 1] <= zext_ln59_fu_597_p1[4 : 1];
        v10_0_addr_1_reg_896_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_896[4 : 1];
        v10_0_addr_1_reg_896_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_896_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_886 <= zext_ln42_fu_585_p1;
        v10_0_addr_reg_886_pp0_iter2_reg <= v10_0_addr_reg_886;
        v10_0_addr_reg_886_pp0_iter3_reg <= v10_0_addr_reg_886_pp0_iter2_reg;
        v10_1_addr_1_reg_901[4 : 1] <= zext_ln59_fu_597_p1[4 : 1];
        v10_1_addr_1_reg_901_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_901[4 : 1];
        v10_1_addr_1_reg_901_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_901_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_891 <= zext_ln42_fu_585_p1;
        v10_1_addr_reg_891_pp0_iter2_reg <= v10_1_addr_reg_891;
        v10_1_addr_reg_891_pp0_iter3_reg <= v10_1_addr_reg_891_pp0_iter2_reg;
        v12_19_reg_749 <= ap_sig_allocacmp_v12_19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_376 <= grp_fu_362_p3;
        reg_380 <= grp_fu_369_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_384 <= grp_fu_2154_p_dout0;
        reg_389 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_25_reg_785 <= {{v12_19_reg_749[5:2]}};
        tmp_31_reg_810 <= {{v12_19_reg_749[5:3]}};
        tmp_36_reg_820 <= v12_19_reg_749[32'd1];
        v10_0_addr_2_reg_941[0] <= zext_ln73_fu_635_p1[0];
v10_0_addr_2_reg_941[4 : 2] <= zext_ln73_fu_635_p1[4 : 2];
        v10_0_addr_2_reg_941_pp0_iter2_reg[0] <= v10_0_addr_2_reg_941[0];
v10_0_addr_2_reg_941_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_941[4 : 2];
        v10_0_addr_2_reg_941_pp0_iter3_reg[0] <= v10_0_addr_2_reg_941_pp0_iter2_reg[0];
v10_0_addr_2_reg_941_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_941_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_951[4 : 2] <= zext_ln87_fu_648_p1[4 : 2];
        v10_0_addr_3_reg_951_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_951[4 : 2];
        v10_0_addr_3_reg_951_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_951_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_951_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_951_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_946[0] <= zext_ln73_fu_635_p1[0];
v10_1_addr_2_reg_946[4 : 2] <= zext_ln73_fu_635_p1[4 : 2];
        v10_1_addr_2_reg_946_pp0_iter2_reg[0] <= v10_1_addr_2_reg_946[0];
v10_1_addr_2_reg_946_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_946[4 : 2];
        v10_1_addr_2_reg_946_pp0_iter3_reg[0] <= v10_1_addr_2_reg_946_pp0_iter2_reg[0];
v10_1_addr_2_reg_946_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_946_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_961[4 : 2] <= zext_ln87_fu_648_p1[4 : 2];
        v10_1_addr_3_reg_961_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_961[4 : 2];
        v10_1_addr_3_reg_961_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_961_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_961_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_961_pp0_iter3_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_926 <= v10_0_q1;
        v18_reg_931 <= grp_fu_2162_p_dout0;
        v21_reg_971 <= v10_1_q1;
        v24_reg_936 <= grp_fu_2166_p_dout0;
        v27_reg_976 <= v10_0_q0;
        v33_reg_981 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v28_reg_1006 <= v28_fu_676_p3;
        v34_reg_1011 <= v34_fu_682_p3;
        v40_reg_1016 <= v40_fu_688_p3;
        v46_reg_1021 <= v46_fu_695_p3;
        v52_reg_1026 <= v52_fu_702_p3;
        v58_reg_1031 <= v58_fu_709_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_991 <= grp_fu_2162_p_dout0;
        v36_reg_996 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_1056 <= grp_fu_2154_p_dout0;
        v37_reg_1061 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_1036 <= grp_fu_2162_p_dout0;
        v48_reg_1041 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_1046 <= grp_fu_2162_p_dout0;
        v60_reg_1051 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_1066 <= grp_fu_2154_p_dout0;
        v61_reg_1071 <= grp_fu_2158_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_756 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_19 = v12_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p0 = v52_reg_1026;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p0 = v40_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_346_p0 = v28_reg_1006;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_346_p0 = v15_fu_662_p3;
    end else begin
        grp_fu_346_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_346_p1 = v54_reg_1046;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_346_p1 = v42_reg_1036;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_346_p1 = v30_reg_991;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_346_p1 = v18_reg_931;
    end else begin
        grp_fu_346_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p0 = v58_reg_1031;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p0 = v46_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p0 = v34_reg_1011;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p0 = v22_fu_669_p3;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_350_p1 = v60_reg_1051;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_350_p1 = v48_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_350_p1 = v36_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_350_p1 = v24_reg_936;
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p0 = v53_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_354_p0 = v41_fu_603_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p0 = v29_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p0 = v16_fu_510_p1;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_358_p0 = v59_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p0 = v47_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_358_p0 = v35_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_358_p0 = v23_fu_515_p1;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_951_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_1_reg_896_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_597_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_2_reg_941_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_886_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_585_p1;
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
        v10_0_d0_local = v55_reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_1056;
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
        v10_1_address0_local = v10_1_addr_3_reg_961_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_1_reg_901_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_597_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_2_reg_946_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_891_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_585_p1;
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
        v10_1_d0_local = v61_reg_1071;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_1061;
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
            v137_0_address0_local = zext_ln96_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address0_local = zext_ln82_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address0_local = zext_ln68_fu_488_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address0_local = zext_ln54_fu_440_p1;
        end else begin
            v137_0_address0_local = 'bx;
        end
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address1_local = zext_ln89_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address1_local = zext_ln75_fu_527_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address1_local = zext_ln61_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address1_local = zext_ln46_fu_416_p1;
        end else begin
            v137_0_address1_local = 'bx;
        end
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_16_address0_local = zext_ln96_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_16_address0_local = zext_ln82_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_16_address0_local = zext_ln68_fu_488_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_16_address0_local = zext_ln54_fu_440_p1;
        end else begin
            v137_16_address0_local = 'bx;
        end
    end else begin
        v137_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_16_address1_local = zext_ln89_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_16_address1_local = zext_ln75_fu_527_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_16_address1_local = zext_ln61_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_16_address1_local = zext_ln46_fu_416_p1;
        end else begin
            v137_16_address1_local = 'bx;
        end
    end else begin
        v137_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_16_ce0_local = 1'b1;
    end else begin
        v137_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_16_ce1_local = 1'b1;
    end else begin
        v137_16_ce1_local = 1'b0;
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
assign add_ln42_fu_446_p2 = (ap_sig_allocacmp_v12_19 + 7'd8);
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
assign grp_fu_2154_p_ce = 1'b1;
assign grp_fu_2154_p_din0 = grp_fu_346_p0;
assign grp_fu_2154_p_din1 = grp_fu_346_p1;
assign grp_fu_2154_p_opcode = 2'd0;
assign grp_fu_2158_p_ce = 1'b1;
assign grp_fu_2158_p_din0 = grp_fu_350_p0;
assign grp_fu_2158_p_din1 = grp_fu_350_p1;
assign grp_fu_2158_p_opcode = 2'd0;
assign grp_fu_2162_p_ce = 1'b1;
assign grp_fu_2162_p_din0 = grp_fu_354_p0;
assign grp_fu_2162_p_din1 = v17;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = grp_fu_358_p0;
assign grp_fu_2166_p_din1 = v17;
assign grp_fu_362_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_16_q1 : v137_0_q1);
assign grp_fu_369_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_16_q0 : v137_0_q0);
assign lshr_ln_fu_422_p4 = {{ap_sig_allocacmp_v12_19[5:1]}};
assign or_ln58_1_fu_590_p3 = {{tmp_25_reg_785}, {1'd1}};
assign or_ln72_1_fu_627_p4 = {{{tmp_31_reg_810}, {1'd1}}, {tmp_36_reg_820}};
assign or_ln86_1_fu_641_p3 = {{tmp_31_reg_810}, {2'd3}};
assign select_ln89_fu_613_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_16_q1 : v137_0_q1);
assign select_ln96_fu_620_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_16_q0 : v137_0_q0);
assign shl_ln46_fu_410_p2 = ap_sig_allocacmp_v12_19 << 7'd1;
assign tmp_24_fu_432_p3 = {{lshr_ln_fu_422_p4}, {2'd2}};
assign tmp_25_fu_457_p4 = {{v12_19_reg_749[5:2]}};
assign tmp_27_fu_466_p3 = {{tmp_25_fu_457_p4}, {3'd4}};
assign tmp_30_fu_480_p3 = {{tmp_25_fu_457_p4}, {3'd6}};
assign tmp_33_fu_520_p3 = {{tmp_31_reg_810}, {4'd8}};
assign tmp_38_fu_533_p5 = {{{{tmp_31_reg_810}, {1'd1}}, {tmp_36_reg_820}}, {2'd2}};
assign tmp_41_fu_559_p3 = {{tmp_31_reg_810}, {4'd12}};
assign tmp_44_fu_572_p3 = {{tmp_31_reg_810}, {4'd14}};
assign tmp_fu_402_p3 = ap_sig_allocacmp_v12_19[32'd6];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_384;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_389;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v137_16_address0 = v137_16_address0_local;
assign v137_16_address1 = v137_16_address1_local;
assign v137_16_ce0 = v137_16_ce0_local;
assign v137_16_ce1 = v137_16_ce1_local;
assign v15_fu_662_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v14_reg_926);
assign v16_fu_510_p1 = reg_376;
assign v22_fu_669_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v21_reg_971);
assign v23_fu_515_p1 = reg_380;
assign v28_fu_676_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v27_reg_976);
assign v29_fu_549_p1 = reg_376;
assign v34_fu_682_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v33_reg_981);
assign v35_fu_554_p1 = reg_380;
assign v40_fu_688_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q1);
assign v41_fu_603_p1 = reg_376;
assign v46_fu_695_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q1);
assign v47_fu_608_p1 = reg_380;
assign v52_fu_702_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_0_q0);
assign v53_fu_654_p1 = select_ln89_reg_916;
assign v58_fu_709_p3 = ((cmp7[0:0] == 1'b1) ? 32'd0 : v10_1_q0);
assign v59_fu_658_p1 = select_ln96_reg_921;
assign zext_ln42_fu_585_p1 = lshr_ln_reg_770;
assign zext_ln46_fu_416_p1 = shl_ln46_fu_410_p2;
assign zext_ln54_fu_440_p1 = tmp_24_fu_432_p3;
assign zext_ln59_fu_597_p1 = or_ln58_1_fu_590_p3;
assign zext_ln61_fu_474_p1 = tmp_27_fu_466_p3;
assign zext_ln68_fu_488_p1 = tmp_30_fu_480_p3;
assign zext_ln73_fu_635_p1 = or_ln72_1_fu_627_p4;
assign zext_ln75_fu_527_p1 = tmp_33_fu_520_p3;
assign zext_ln82_fu_543_p1 = tmp_38_fu_533_p5;
assign zext_ln87_fu_648_p1 = or_ln86_1_fu_641_p3;
assign zext_ln89_fu_566_p1 = tmp_41_fu_559_p3;
assign zext_ln96_fu_579_p1 = tmp_44_fu_572_p3;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_896[0] <= 1'b1;
    v10_0_addr_1_reg_896_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_896_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_901[0] <= 1'b1;
    v10_1_addr_1_reg_901_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_901_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_941[1] <= 1'b1;
    v10_0_addr_2_reg_941_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_941_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_946[1] <= 1'b1;
    v10_1_addr_2_reg_946_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_946_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_3_reg_951[1:0] <= 2'b11;
    v10_0_addr_3_reg_951_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_951_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_951_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_961[1:0] <= 2'b11;
    v10_1_addr_3_reg_961_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_961_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_961_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
