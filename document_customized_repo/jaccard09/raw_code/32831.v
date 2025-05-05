module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [6:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [6:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [6:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [6:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln294_reg_1075;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_702;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln294_fu_722_p2;
wire   [5:0] offset_fu_734_p1;
reg   [5:0] offset_reg_1079;
reg   [5:0] offset_reg_1079_pp0_iter1_reg;
reg   [5:0] offset_reg_1079_pp0_iter2_reg;
reg   [5:0] offset_reg_1079_pp0_iter3_reg;
reg   [5:0] offset_reg_1079_pp0_iter4_reg;
wire   [7:0] zext_ln172_6_fu_749_p1;
reg   [7:0] zext_ln172_6_reg_1092;
reg   [7:0] zext_ln172_6_reg_1092_pp0_iter4_reg;
wire   [8:0] zext_ln172_7_fu_752_p1;
reg   [8:0] zext_ln172_7_reg_1098;
wire   [7:0] add_ln303_fu_758_p2;
reg   [7:0] add_ln303_reg_1104;
reg   [3:0] tmp_reg_1109;
wire   [8:0] add_ln299_fu_795_p2;
reg   [8:0] add_ln299_reg_1124;
wire   [8:0] add_ln301_fu_813_p2;
reg   [8:0] add_ln301_reg_1139;
reg   [6:0] tmp_32_reg_1144;
wire   [2:0] trunc_ln172_fu_841_p1;
reg   [2:0] trunc_ln172_reg_1149;
reg   [63:0] DATA_x_load_reg_1153;
reg   [6:0] tmp_28_reg_1164;
reg   [5:0] tmp_29_reg_1169;
reg   [6:0] tmp_30_reg_1174;
reg   [5:0] tmp_31_reg_1184;
reg   [63:0] DATA_x_load_1_reg_1199;
reg   [6:0] tmp_33_reg_1210;
reg   [63:0] DATA_x_1_load_1_reg_1220;
reg   [7:0] tmp_34_reg_1231;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln298_fu_789_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln300_1_fu_807_p1;
wire   [63:0] zext_ln302_1_fu_899_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln304_1_fu_937_p1;
wire   [63:0] zext_ln172_3_fu_952_p1;
wire   [63:0] zext_ln299_fu_962_p1;
wire   [63:0] zext_ln300_fu_972_p1;
wire   [63:0] zext_ln301_fu_982_p1;
wire   [63:0] zext_ln302_fu_992_p1;
wire   [63:0] zext_ln303_fu_1002_p1;
wire   [63:0] zext_ln304_fu_1012_p1;
wire   [63:0] zext_ln305_fu_1031_p1;
reg   [6:0] tid_fu_112;
wire   [6:0] add_ln294_fu_728_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [6:0] smem_11_address0_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [6:0] smem_12_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [6:0] smem_7_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [6:0] smem_8_address0_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [6:0] smem_9_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [6:0] smem_10_address0_local;
wire   [5:0] grp_fu_738_p0;
wire   [3:0] grp_fu_738_p1;
wire   [5:0] mul_ln172_fu_766_p0;
wire   [7:0] mul_ln172_fu_766_p1;
wire   [12:0] mul_ln172_fu_766_p2;
wire   [7:0] shl_ln6_fu_782_p3;
wire   [7:0] or_ln_fu_800_p3;
wire  signed [8:0] sext_ln303_fu_818_p1;
wire   [8:0] mul_ln303_fu_825_p0;
wire   [10:0] mul_ln303_fu_825_p1;
wire   [18:0] mul_ln303_fu_825_p2;
wire   [2:0] grp_fu_738_p2;
wire   [8:0] mul_ln299_fu_848_p0;
wire   [10:0] mul_ln299_fu_848_p1;
wire   [18:0] mul_ln299_fu_848_p2;
wire   [16:0] tmp_29_fu_864_p1;
wire  signed [16:0] grp_fu_1041_p3;
wire   [8:0] mul_ln301_fu_876_p0;
wire   [10:0] mul_ln301_fu_876_p1;
wire   [18:0] mul_ln301_fu_876_p2;
wire   [7:0] or_ln5_fu_892_p3;
wire   [7:0] add_ln302_fu_905_p2;
wire   [7:0] mul_ln302_fu_914_p0;
wire   [9:0] mul_ln302_fu_914_p1;
wire   [16:0] mul_ln302_fu_914_p2;
wire   [7:0] or_ln6_fu_930_p3;
wire   [18:0] tmp_33_fu_943_p1;
wire  signed [18:0] grp_fu_1050_p3;
wire   [20:0] tmp_34_fu_1022_p1;
wire  signed [20:0] grp_fu_1059_p3;
wire   [5:0] grp_fu_1041_p0;
wire   [6:0] grp_fu_1041_p1;
wire   [8:0] grp_fu_1041_p2;
wire   [5:0] grp_fu_1050_p0;
wire   [7:0] grp_fu_1050_p1;
wire   [9:0] grp_fu_1050_p2;
wire   [5:0] grp_fu_1059_p0;
wire   [8:0] grp_fu_1059_p1;
wire   [10:0] grp_fu_1059_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_1041_p00;
wire   [8:0] grp_fu_1050_p00;
wire   [9:0] grp_fu_1059_p00;
wire   [12:0] mul_ln172_fu_766_p00;
wire   [18:0] mul_ln299_fu_848_p00;
wire   [18:0] mul_ln301_fu_876_p00;
wire   [16:0] mul_ln302_fu_914_p00;
wire   [18:0] mul_ln303_fu_825_p00;
reg    ap_condition_671;
reg    ap_condition_674;
reg    ap_condition_677;
reg    ap_condition_680;
reg    ap_condition_683;
reg    ap_condition_686;
reg    ap_condition_689;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U170(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_738_p0),.din1(grp_fu_738_p1),.ce(1'b1),.dout(grp_fu_738_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U171(.din0(mul_ln172_fu_766_p0),.din1(mul_ln172_fu_766_p1),.dout(mul_ln172_fu_766_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U172(.din0(mul_ln303_fu_825_p0),.din1(mul_ln303_fu_825_p1),.dout(mul_ln303_fu_825_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U173(.din0(mul_ln299_fu_848_p0),.din1(mul_ln299_fu_848_p1),.dout(mul_ln299_fu_848_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U174(.din0(mul_ln301_fu_876_p0),.din1(mul_ln301_fu_876_p1),.dout(mul_ln301_fu_876_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U175(.din0(mul_ln302_fu_914_p0),.din1(mul_ln302_fu_914_p1),.dout(mul_ln302_fu_914_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U176(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1041_p0),.din1(grp_fu_1041_p1),.din2(grp_fu_1041_p2),.ce(1'b1),.dout(grp_fu_1041_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1050_p0),.din1(grp_fu_1050_p1),.din2(grp_fu_1050_p2),.ce(1'b1),.dout(grp_fu_1050_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U178(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1059_p0),.din1(grp_fu_1059_p1),.din2(grp_fu_1059_p2),.ce(1'b1),.dout(grp_fu_1059_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_702 <= DATA_x_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_702 <= DATA_x_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln294_fu_722_p2 == 1'd0))) begin
            tid_fu_112 <= add_ln294_fu_728_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_112 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_1_reg_1220 <= DATA_x_1_q0;
        DATA_x_load_1_reg_1199 <= DATA_x_q0;
        DATA_x_load_reg_1153 <= DATA_x_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln299_reg_1124 <= add_ln299_fu_795_p2;
        add_ln301_reg_1139 <= add_ln301_fu_813_p2;
        icmp_ln294_reg_1075 <= icmp_ln294_fu_722_p2;
        offset_reg_1079 <= offset_fu_734_p1;
        offset_reg_1079_pp0_iter1_reg <= offset_reg_1079;
        offset_reg_1079_pp0_iter2_reg <= offset_reg_1079_pp0_iter1_reg;
        offset_reg_1079_pp0_iter3_reg <= offset_reg_1079_pp0_iter2_reg;
        offset_reg_1079_pp0_iter4_reg <= offset_reg_1079_pp0_iter3_reg;
        tmp_32_reg_1144 <= {{mul_ln303_fu_825_p2[18:12]}};
        tmp_34_reg_1231 <= {{tmp_34_fu_1022_p1[20:13]}};
        tmp_reg_1109 <= {{mul_ln172_fu_766_p2[12:9]}};
        zext_ln172_6_reg_1092[5 : 0] <= zext_ln172_6_fu_749_p1[5 : 0];
        zext_ln172_6_reg_1092_pp0_iter4_reg[5 : 0] <= zext_ln172_6_reg_1092[5 : 0];
        zext_ln172_7_reg_1098[5 : 0] <= zext_ln172_7_fu_752_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln303_reg_1104 <= add_ln303_fu_758_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        tmp_28_reg_1164 <= {{mul_ln299_fu_848_p2[18:12]}};
        tmp_29_reg_1169 <= {{tmp_29_fu_864_p1[16:11]}};
        tmp_30_reg_1174 <= {{mul_ln301_fu_876_p2[18:12]}};
        tmp_31_reg_1184 <= {{mul_ln302_fu_914_p2[16:11]}};
        tmp_33_reg_1210 <= {{tmp_33_fu_943_p1[18:12]}};
        trunc_ln172_reg_1149 <= trunc_ln172_fu_841_p1;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln304_1_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln300_1_fu_807_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln302_1_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln298_fu_789_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln304_1_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln300_1_fu_807_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln302_1_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln298_fu_789_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln294_reg_1075 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_112;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_10_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_10_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_10_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_10_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_10_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_10_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_10_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_10_address0_local = zext_ln304_fu_1012_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_10_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_10_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_10_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_10_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)))) begin
        smem_10_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_10_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_10_d0_local = DATA_x_q0;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd4)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_11_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_11_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_11_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_11_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_11_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_11_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_11_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_11_address0_local = zext_ln172_3_fu_952_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_11_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_11_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_11_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_11_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_11_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)))) begin
        smem_11_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_11_d0_local = DATA_x_load_reg_1153;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd5)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_12_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_12_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_12_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_12_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_12_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_12_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_12_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_12_address0_local = zext_ln299_fu_962_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_12_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_12_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_12_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_12_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_12_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_12_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5)))) begin
        smem_12_d0_local = reg_702;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_7_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_7_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_7_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_7_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_7_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_7_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_7_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_7_address0_local = zext_ln301_fu_982_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_7_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)))) begin
        smem_7_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_7_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_7_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_7_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_7_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_7_d0_local = DATA_x_1_load_1_reg_1220;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_8_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_8_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_8_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_8_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_8_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_8_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_8_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_8_address0_local = zext_ln302_fu_992_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_8_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_8_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)))) begin
        smem_8_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_8_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_8_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_8_d0_local = DATA_x_q1;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd2)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_9_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_9_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_9_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_9_address0_local = zext_ln300_fu_972_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_9_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_9_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_9_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_9_address0_local = zext_ln303_fu_1002_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)))) begin
        smem_9_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_9_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_9_d0_local = DATA_x_load_1_reg_1199;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)))) begin
        smem_9_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_9_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_9_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_9_d0_local = DATA_x_1_q1;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd3)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            smem_address0_local = zext_ln305_fu_1031_p1;
        end else if ((1'b1 == ap_condition_689)) begin
            smem_address0_local = zext_ln299_fu_962_p1;
        end else if ((1'b1 == ap_condition_686)) begin
            smem_address0_local = zext_ln172_3_fu_952_p1;
        end else if ((1'b1 == ap_condition_683)) begin
            smem_address0_local = zext_ln304_fu_1012_p1;
        end else if ((1'b1 == ap_condition_680)) begin
            smem_address0_local = zext_ln303_fu_1002_p1;
        end else if ((1'b1 == ap_condition_677)) begin
            smem_address0_local = zext_ln302_fu_992_p1;
        end else if ((1'b1 == ap_condition_674)) begin
            smem_address0_local = zext_ln301_fu_982_p1;
        end else if ((1'b1 == ap_condition_671)) begin
            smem_address0_local = zext_ln300_fu_972_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))))) begin
        smem_d0_local = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0))) begin
        smem_d0_local = DATA_x_load_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1))) begin
        smem_d0_local = DATA_x_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3))) begin
        smem_d0_local = DATA_x_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4))) begin
        smem_d0_local = DATA_x_1_load_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))) begin
        smem_d0_local = DATA_x_load_1_reg_1199;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_1149 == 3'd0)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_728_p2 = (ap_sig_allocacmp_tid_3 + 7'd1);
assign add_ln299_fu_795_p2 = ($signed(zext_ln172_7_reg_1098) + $signed(9'd288));
assign add_ln301_fu_813_p2 = ($signed(zext_ln172_7_reg_1098) + $signed(9'd360));
assign add_ln302_fu_905_p2 = ($signed(zext_ln172_6_reg_1092_pp0_iter4_reg) + $signed(8'd144));
assign add_ln303_fu_758_p2 = ($signed(zext_ln172_6_reg_1092) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_671 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd5));
end
always @ (*) begin
    ap_condition_674 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd4));
end
always @ (*) begin
    ap_condition_677 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd3));
end
always @ (*) begin
    ap_condition_680 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd2));
end
always @ (*) begin
    ap_condition_683 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd1));
end
always @ (*) begin
    ap_condition_686 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_1149 == 3'd0));
end
always @ (*) begin
    ap_condition_689 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((trunc_ln172_reg_1149 == 3'd6) | (trunc_ln172_reg_1149 == 3'd7)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_1041_p0 = grp_fu_1041_p00;
assign grp_fu_1041_p00 = offset_reg_1079_pp0_iter2_reg;
assign grp_fu_1041_p1 = 8'd72;
assign grp_fu_1041_p2 = 17'd293;
assign grp_fu_1050_p0 = grp_fu_1050_p00;
assign grp_fu_1050_p00 = offset_reg_1079_pp0_iter2_reg;
assign grp_fu_1050_p1 = 9'd216;
assign grp_fu_1050_p2 = 19'd586;
assign grp_fu_1059_p0 = grp_fu_1059_p00;
assign grp_fu_1059_p00 = offset_reg_1079_pp0_iter3_reg;
assign grp_fu_1059_p1 = 10'd504;
assign grp_fu_1059_p2 = 21'd1171;
assign grp_fu_738_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_738_p1 = 6'd7;
assign icmp_ln294_fu_722_p2 = ((ap_sig_allocacmp_tid_3 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_766_p0 = mul_ln172_fu_766_p00;
assign mul_ln172_fu_766_p00 = offset_reg_1079_pp0_iter3_reg;
assign mul_ln172_fu_766_p1 = 13'd74;
assign mul_ln299_fu_848_p0 = mul_ln299_fu_848_p00;
assign mul_ln299_fu_848_p00 = add_ln299_reg_1124;
assign mul_ln299_fu_848_p1 = 19'd586;
assign mul_ln301_fu_876_p0 = mul_ln301_fu_876_p00;
assign mul_ln301_fu_876_p00 = add_ln301_reg_1139;
assign mul_ln301_fu_876_p1 = 19'd586;
assign mul_ln302_fu_914_p0 = mul_ln302_fu_914_p00;
assign mul_ln302_fu_914_p00 = add_ln302_fu_905_p2;
assign mul_ln302_fu_914_p1 = 17'd293;
assign mul_ln303_fu_825_p0 = mul_ln303_fu_825_p00;
assign mul_ln303_fu_825_p00 = $unsigned(sext_ln303_fu_818_p1);
assign mul_ln303_fu_825_p1 = 19'd586;
assign offset_fu_734_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln5_fu_892_p3 = {{offset_reg_1079_pp0_iter4_reg}, {2'd1}};
assign or_ln6_fu_930_p3 = {{offset_reg_1079_pp0_iter4_reg}, {2'd3}};
assign or_ln_fu_800_p3 = {{offset_reg_1079_pp0_iter3_reg}, {2'd2}};
assign sext_ln303_fu_818_p1 = $signed(add_ln303_reg_1104);
assign shl_ln6_fu_782_p3 = {{offset_reg_1079_pp0_iter3_reg}, {2'd0}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_29_fu_864_p1 = grp_fu_1041_p3;
assign tmp_33_fu_943_p1 = grp_fu_1050_p3;
assign tmp_34_fu_1022_p1 = grp_fu_1059_p3;
assign trunc_ln172_fu_841_p1 = grp_fu_738_p2[2:0];
assign zext_ln172_3_fu_952_p1 = tmp_reg_1109;
assign zext_ln172_6_fu_749_p1 = offset_reg_1079_pp0_iter2_reg;
assign zext_ln172_7_fu_752_p1 = offset_reg_1079_pp0_iter2_reg;
assign zext_ln298_fu_789_p1 = shl_ln6_fu_782_p3;
assign zext_ln299_fu_962_p1 = tmp_28_reg_1164;
assign zext_ln300_1_fu_807_p1 = or_ln_fu_800_p3;
assign zext_ln300_fu_972_p1 = tmp_29_reg_1169;
assign zext_ln301_fu_982_p1 = tmp_30_reg_1174;
assign zext_ln302_1_fu_899_p1 = or_ln5_fu_892_p3;
assign zext_ln302_fu_992_p1 = tmp_31_reg_1184;
assign zext_ln303_fu_1002_p1 = tmp_32_reg_1144;
assign zext_ln304_1_fu_937_p1 = or_ln6_fu_930_p3;
assign zext_ln304_fu_1012_p1 = tmp_33_reg_1210;
assign zext_ln305_fu_1031_p1 = tmp_34_reg_1231;
always @ (posedge ap_clk) begin
    zext_ln172_6_reg_1092[7:6] <= 2'b00;
    zext_ln172_6_reg_1092_pp0_iter4_reg[7:6] <= 2'b00;
    zext_ln172_7_reg_1098[8:6] <= 3'b000;
end
endmodule 