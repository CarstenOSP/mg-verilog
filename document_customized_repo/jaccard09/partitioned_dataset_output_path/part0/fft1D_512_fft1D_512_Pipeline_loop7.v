
module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln294_fu_1093_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_1442;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_1442_pp0_iter1_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter2_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter3_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter4_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter5_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter6_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter7_reg;
reg   [6:0] tid_3_reg_1442_pp0_iter8_reg;
wire   [5:0] offset_fu_1105_p1;
reg   [5:0] offset_reg_1451;
reg   [5:0] offset_reg_1451_pp0_iter1_reg;
reg   [5:0] offset_reg_1451_pp0_iter2_reg;
reg   [5:0] offset_reg_1451_pp0_iter3_reg;
reg   [5:0] offset_reg_1451_pp0_iter4_reg;
reg   [5:0] offset_reg_1451_pp0_iter5_reg;
reg   [5:0] offset_reg_1451_pp0_iter6_reg;
wire   [8:0] zext_ln172_4_fu_1126_p1;
reg   [8:0] zext_ln172_4_reg_1460;
reg   [2:0] tmp_reg_1466;
reg   [2:0] tmp_reg_1466_pp0_iter8_reg;
reg   [2:0] tmp_reg_1466_pp0_iter9_reg;
reg   [4:0] tmp_100_reg_1471;
reg   [4:0] tmp_100_reg_1471_pp0_iter8_reg;
reg   [4:0] tmp_100_reg_1471_pp0_iter9_reg;
wire   [7:0] add_ln303_fu_1174_p2;
reg   [7:0] add_ln303_reg_1476;
wire   [8:0] add_ln299_fu_1180_p2;
reg   [8:0] add_ln299_reg_1481;
wire   [8:0] add_ln301_fu_1185_p2;
reg   [8:0] add_ln301_reg_1486;
reg   [5:0] tmp_101_reg_1491;
reg   [5:0] tmp_101_reg_1491_pp0_iter9_reg;
wire   [3:0] trunc_ln172_fu_1224_p1;
reg   [3:0] trunc_ln172_reg_1496;
reg   [5:0] tmp_97_reg_1510;
reg   [5:0] tmp_99_reg_1525;
wire   [63:0] zext_ln294_fu_1213_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_6_fu_1266_p1;
wire   [63:0] zext_ln299_fu_1280_p1;
wire   [63:0] zext_ln300_fu_1303_p1;
wire   [63:0] zext_ln301_fu_1318_p1;
wire   [63:0] zext_ln302_fu_1332_p1;
wire   [63:0] zext_ln303_fu_1346_p1;
wire   [63:0] zext_ln304_fu_1369_p1;
wire   [63:0] zext_ln305_fu_1393_p1;
reg   [6:0] tid_fu_130;
wire   [6:0] add_ln294_fu_1099_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce0_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
wire   [5:0] grp_fu_1109_p0;
wire   [4:0] grp_fu_1109_p1;
wire   [5:0] mul_ln172_fu_1132_p0;
wire   [7:0] mul_ln172_fu_1132_p1;
wire   [12:0] mul_ln172_fu_1132_p2;
wire   [7:0] zext_ln172_3_fu_1123_p1;
wire   [7:0] add_ln302_fu_1148_p2;
wire   [7:0] mul_ln302_fu_1158_p0;
wire   [9:0] mul_ln302_fu_1158_p1;
wire   [16:0] mul_ln302_fu_1158_p2;
wire  signed [8:0] sext_ln303_fu_1190_p1;
wire   [8:0] mul_ln303_fu_1197_p0;
wire   [10:0] mul_ln303_fu_1197_p1;
wire   [18:0] mul_ln303_fu_1197_p2;
wire   [3:0] grp_fu_1109_p2;
wire   [8:0] mul_ln299_fu_1231_p0;
wire   [10:0] mul_ln299_fu_1231_p1;
wire   [18:0] mul_ln299_fu_1231_p2;
wire   [8:0] mul_ln301_fu_1250_p0;
wire   [10:0] mul_ln301_fu_1250_p1;
wire   [18:0] mul_ln301_fu_1250_p2;
wire   [16:0] tmp_98_fu_1294_p1;
wire  signed [16:0] grp_fu_1408_p3;
wire   [4:0] tmp_98_fu_1294_p4;
wire   [18:0] tmp_102_fu_1360_p1;
wire  signed [18:0] grp_fu_1417_p3;
wire   [5:0] tmp_102_fu_1360_p4;
wire   [20:0] tmp_103_fu_1384_p1;
wire  signed [20:0] grp_fu_1426_p3;
wire   [6:0] tmp_103_fu_1384_p4;
wire   [5:0] grp_fu_1408_p0;
wire   [6:0] grp_fu_1408_p1;
wire   [8:0] grp_fu_1408_p2;
wire   [5:0] grp_fu_1417_p0;
wire   [7:0] grp_fu_1417_p1;
wire   [9:0] grp_fu_1417_p2;
wire   [5:0] grp_fu_1426_p0;
wire   [8:0] grp_fu_1426_p1;
wire   [10:0] grp_fu_1426_p2;
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
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] grp_fu_1417_p00;
wire   [9:0] grp_fu_1426_p00;
wire   [12:0] mul_ln172_fu_1132_p00;
wire   [18:0] mul_ln299_fu_1231_p00;
wire   [18:0] mul_ln301_fu_1250_p00;
wire   [16:0] mul_ln302_fu_1158_p00;
wire   [18:0] mul_ln303_fu_1197_p00;
reg    ap_condition_500;
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
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 tid_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U550(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1109_p0),.din1(grp_fu_1109_p1),.ce(1'b1),.dout(grp_fu_1109_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U551(.din0(mul_ln172_fu_1132_p0),.din1(mul_ln172_fu_1132_p1),.dout(mul_ln172_fu_1132_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U552(.din0(mul_ln302_fu_1158_p0),.din1(mul_ln302_fu_1158_p1),.dout(mul_ln302_fu_1158_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U553(.din0(mul_ln303_fu_1197_p0),.din1(mul_ln303_fu_1197_p1),.dout(mul_ln303_fu_1197_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U554(.din0(mul_ln299_fu_1231_p0),.din1(mul_ln299_fu_1231_p1),.dout(mul_ln299_fu_1231_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U555(.din0(mul_ln301_fu_1250_p0),.din1(mul_ln301_fu_1250_p1),.dout(mul_ln301_fu_1250_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U556(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1408_p0),.din1(grp_fu_1408_p1),.din2(grp_fu_1408_p2),.ce(1'b1),.dout(grp_fu_1408_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U557(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1417_p0),.din1(grp_fu_1417_p1),.din2(grp_fu_1417_p2),.ce(1'b1),.dout(grp_fu_1417_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U558(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1426_p0),.din1(grp_fu_1426_p1),.din2(grp_fu_1426_p2),.ce(1'b1),.dout(grp_fu_1426_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln294_fu_1093_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_130 <= add_ln294_fu_1099_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln299_reg_1481 <= add_ln299_fu_1180_p2;
        add_ln301_reg_1486 <= add_ln301_fu_1185_p2;
        add_ln303_reg_1476 <= add_ln303_fu_1174_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_reg_1451_pp0_iter2_reg <= offset_reg_1451_pp0_iter1_reg;
        offset_reg_1451_pp0_iter3_reg <= offset_reg_1451_pp0_iter2_reg;
        offset_reg_1451_pp0_iter4_reg <= offset_reg_1451_pp0_iter3_reg;
        offset_reg_1451_pp0_iter5_reg <= offset_reg_1451_pp0_iter4_reg;
        offset_reg_1451_pp0_iter6_reg <= offset_reg_1451_pp0_iter5_reg;
        tid_3_reg_1442_pp0_iter2_reg <= tid_3_reg_1442_pp0_iter1_reg;
        tid_3_reg_1442_pp0_iter3_reg <= tid_3_reg_1442_pp0_iter2_reg;
        tid_3_reg_1442_pp0_iter4_reg <= tid_3_reg_1442_pp0_iter3_reg;
        tid_3_reg_1442_pp0_iter5_reg <= tid_3_reg_1442_pp0_iter4_reg;
        tid_3_reg_1442_pp0_iter6_reg <= tid_3_reg_1442_pp0_iter5_reg;
        tid_3_reg_1442_pp0_iter7_reg <= tid_3_reg_1442_pp0_iter6_reg;
        tid_3_reg_1442_pp0_iter8_reg <= tid_3_reg_1442_pp0_iter7_reg;
        tmp_100_reg_1471 <= {{mul_ln302_fu_1158_p2[16:12]}};
        tmp_100_reg_1471_pp0_iter8_reg <= tmp_100_reg_1471;
        tmp_100_reg_1471_pp0_iter9_reg <= tmp_100_reg_1471_pp0_iter8_reg;
        tmp_101_reg_1491 <= {{mul_ln303_fu_1197_p2[18:13]}};
        tmp_101_reg_1491_pp0_iter9_reg <= tmp_101_reg_1491;
        tmp_97_reg_1510 <= {{mul_ln299_fu_1231_p2[18:13]}};
        tmp_99_reg_1525 <= {{mul_ln301_fu_1250_p2[18:13]}};
        tmp_reg_1466 <= {{mul_ln172_fu_1132_p2[12:10]}};
        tmp_reg_1466_pp0_iter8_reg <= tmp_reg_1466;
        tmp_reg_1466_pp0_iter9_reg <= tmp_reg_1466_pp0_iter8_reg;
        trunc_ln172_reg_1496 <= trunc_ln172_fu_1224_p1;
        zext_ln172_4_reg_1460[5 : 0] <= zext_ln172_4_fu_1126_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1451 <= offset_fu_1105_p1;
        offset_reg_1451_pp0_iter1_reg <= offset_reg_1451;
        tid_3_reg_1442 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_1442_pp0_iter1_reg <= tid_3_reg_1442;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln294_fu_1093_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_tid_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_3 = tid_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_10_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_10_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_10_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_10_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_10_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_10_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_10_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_10_address0_local = zext_ln302_fu_1332_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_10_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_10_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_10_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_10_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_10_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_10_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_10_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_10_d0_local = DATA_x_2_q0;
        end else begin
            smem_10_d0_local = 'bx;
        end
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_1_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_1_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_1_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_1_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_1_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_1_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_1_address0_local = zext_ln303_fu_1346_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_1_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_1_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_1_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_1_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_1_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_1_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_1_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_1_d0_local = DATA_x_3_q0;
        end else begin
            smem_1_d0_local = 'bx;
        end
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_2_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_2_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_2_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_2_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_2_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_2_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_2_address0_local = zext_ln300_fu_1303_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_2_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_2_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_2_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_2_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_2_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_2_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_2_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_2_d0_local = DATA_x_4_q0;
        end else begin
            smem_2_d0_local = 'bx;
        end
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_3_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_3_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_3_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_3_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_3_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_3_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_3_address0_local = zext_ln300_fu_1303_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_3_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_3_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_3_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_3_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_3_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_3_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_3_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_3_d0_local = DATA_x_4_q0;
        end else begin
            smem_3_d0_local = 'bx;
        end
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_4_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_4_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_4_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_4_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_4_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_4_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_4_address0_local = zext_ln300_fu_1303_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_4_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_4_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_4_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_4_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_4_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_4_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_4_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_4_d0_local = DATA_x_4_q0;
        end else begin
            smem_4_d0_local = 'bx;
        end
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_5_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_5_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_5_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_5_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_5_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_5_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_5_address0_local = zext_ln304_fu_1369_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_5_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_5_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_5_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_5_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_5_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_5_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_5_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_5_d0_local = DATA_x_6_q0;
        end else begin
            smem_5_d0_local = 'bx;
        end
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_6_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_6_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_6_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_6_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_6_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_6_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_6_address0_local = zext_ln301_fu_1318_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_6_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_6_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_6_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_6_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_6_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_6_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_6_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_6_d0_local = DATA_x_5_q0;
        end else begin
            smem_6_d0_local = 'bx;
        end
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_7_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_7_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_7_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_7_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_7_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_7_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_7_address0_local = zext_ln305_fu_1393_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_7_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_7_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_7_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_7_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_7_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_7_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_7_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_7_d0_local = DATA_x_7_q0;
        end else begin
            smem_7_d0_local = 'bx;
        end
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_8_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_8_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_8_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_8_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_8_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_8_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_8_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_6_fu_1266_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_8_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_8_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_8_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_8_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_8_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_8_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_8_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_8_d0_local = DATA_x_q0;
        end else begin
            smem_8_d0_local = 'bx;
        end
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_9_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_9_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_9_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_9_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_9_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_9_address0_local = zext_ln299_fu_1280_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_9_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_6_fu_1266_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_9_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd1)) begin
            smem_9_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_9_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_9_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd6)) begin
            smem_9_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd7)) begin
            smem_9_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_9_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_9_d0_local = DATA_x_q0;
        end else begin
            smem_9_d0_local = 'bx;
        end
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_address0_local = zext_ln302_fu_1332_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_address0_local = zext_ln172_6_fu_1266_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_address0_local = zext_ln305_fu_1393_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_address0_local = zext_ln301_fu_1318_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_address0_local = zext_ln304_fu_1369_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_address0_local = zext_ln300_fu_1303_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_address0_local = zext_ln303_fu_1346_p1;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_address0_local = zext_ln299_fu_1280_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_500)) begin
            smem_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd0)) begin
            smem_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd2)) begin
            smem_d0_local = DATA_x_7_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd3)) begin
            smem_d0_local = DATA_x_5_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd4)) begin
            smem_d0_local = DATA_x_6_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd5)) begin
            smem_d0_local = DATA_x_4_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd8)) begin
            smem_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1496 == 4'd9)) begin
            smem_d0_local = DATA_x_1_q0;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1496 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1496 == 4'd9)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
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
assign DATA_x_1_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_address0 = zext_ln294_fu_1213_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign add_ln294_fu_1099_p2 = (ap_sig_allocacmp_tid_3 + 7'd1);
assign add_ln299_fu_1180_p2 = ($signed(zext_ln172_4_reg_1460) + $signed(9'd288));
assign add_ln301_fu_1185_p2 = ($signed(zext_ln172_4_reg_1460) + $signed(9'd360));
assign add_ln302_fu_1148_p2 = ($signed(zext_ln172_3_fu_1123_p1) + $signed(8'd144));
assign add_ln303_fu_1174_p2 = ($signed(zext_ln172_3_fu_1123_p1) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_500 = (~(trunc_ln172_reg_1496 == 4'd4) & ~(trunc_ln172_reg_1496 == 4'd5) & ~(trunc_ln172_reg_1496 == 4'd0) & ~(trunc_ln172_reg_1496 == 4'd1) & ~(trunc_ln172_reg_1496 == 4'd2) & ~(trunc_ln172_reg_1496 == 4'd3) & ~(trunc_ln172_reg_1496 == 4'd6) & ~(trunc_ln172_reg_1496 == 4'd7) & ~(trunc_ln172_reg_1496 == 4'd8) & ~(trunc_ln172_reg_1496 == 4'd9));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1109_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_1109_p1 = 6'd11;
assign grp_fu_1408_p0 = zext_ln172_3_fu_1123_p1;
assign grp_fu_1408_p1 = 8'd72;
assign grp_fu_1408_p2 = 17'd373;
assign grp_fu_1417_p0 = grp_fu_1417_p00;
assign grp_fu_1417_p00 = offset_reg_1451_pp0_iter6_reg;
assign grp_fu_1417_p1 = 9'd216;
assign grp_fu_1417_p2 = 19'd745;
assign grp_fu_1426_p0 = grp_fu_1426_p00;
assign grp_fu_1426_p00 = offset_reg_1451_pp0_iter6_reg;
assign grp_fu_1426_p1 = 10'd504;
assign grp_fu_1426_p2 = 21'd1490;
assign icmp_ln294_fu_1093_p2 = ((ap_sig_allocacmp_tid_3 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1132_p0 = mul_ln172_fu_1132_p00;
assign mul_ln172_fu_1132_p00 = offset_reg_1451_pp0_iter6_reg;
assign mul_ln172_fu_1132_p1 = 13'd94;
assign mul_ln299_fu_1231_p0 = mul_ln299_fu_1231_p00;
assign mul_ln299_fu_1231_p00 = add_ln299_reg_1481;
assign mul_ln299_fu_1231_p1 = 19'd745;
assign mul_ln301_fu_1250_p0 = mul_ln301_fu_1250_p00;
assign mul_ln301_fu_1250_p00 = add_ln301_reg_1486;
assign mul_ln301_fu_1250_p1 = 19'd745;
assign mul_ln302_fu_1158_p0 = mul_ln302_fu_1158_p00;
assign mul_ln302_fu_1158_p00 = add_ln302_fu_1148_p2;
assign mul_ln302_fu_1158_p1 = 17'd373;
assign mul_ln303_fu_1197_p0 = mul_ln303_fu_1197_p00;
assign mul_ln303_fu_1197_p00 = $unsigned(sext_ln303_fu_1190_p1);
assign mul_ln303_fu_1197_p1 = 19'd745;
assign offset_fu_1105_p1 = ap_sig_allocacmp_tid_3[5:0];
assign sext_ln303_fu_1190_p1 = $signed(add_ln303_reg_1476);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
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
assign tmp_102_fu_1360_p1 = grp_fu_1417_p3;
assign tmp_102_fu_1360_p4 = {{tmp_102_fu_1360_p1[18:13]}};
assign tmp_103_fu_1384_p1 = grp_fu_1426_p3;
assign tmp_103_fu_1384_p4 = {{tmp_103_fu_1384_p1[20:14]}};
assign tmp_98_fu_1294_p1 = grp_fu_1408_p3;
assign tmp_98_fu_1294_p4 = {{tmp_98_fu_1294_p1[16:12]}};
assign trunc_ln172_fu_1224_p1 = grp_fu_1109_p2[3:0];
assign zext_ln172_3_fu_1123_p1 = offset_reg_1451_pp0_iter6_reg;
assign zext_ln172_4_fu_1126_p1 = offset_reg_1451_pp0_iter6_reg;
assign zext_ln172_6_fu_1266_p1 = tmp_reg_1466_pp0_iter9_reg;
assign zext_ln294_fu_1213_p1 = tid_3_reg_1442_pp0_iter8_reg;
assign zext_ln299_fu_1280_p1 = tmp_97_reg_1510;
assign zext_ln300_fu_1303_p1 = tmp_98_fu_1294_p4;
assign zext_ln301_fu_1318_p1 = tmp_99_reg_1525;
assign zext_ln302_fu_1332_p1 = tmp_100_reg_1471_pp0_iter9_reg;
assign zext_ln303_fu_1346_p1 = tmp_101_reg_1491_pp0_iter9_reg;
assign zext_ln304_fu_1369_p1 = tmp_102_fu_1360_p4;
assign zext_ln305_fu_1393_p1 = tmp_103_fu_1384_p4;
always @ (posedge ap_clk) begin
    zext_ln172_4_reg_1460[8:6] <= 3'b000;
end
endmodule 
