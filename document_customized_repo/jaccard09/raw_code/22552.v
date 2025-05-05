module fft1D_512_fft1D_512_Pipeline_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1); 
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
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
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
wire   [0:0] icmp_ln294_fu_1085_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_3_reg_1451;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_3_reg_1451_pp0_iter1_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter2_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter3_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter4_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter5_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter6_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter7_reg;
reg   [6:0] tid_3_reg_1451_pp0_iter8_reg;
wire   [5:0] offset_fu_1097_p1;
reg   [5:0] offset_reg_1460;
reg   [5:0] offset_reg_1460_pp0_iter1_reg;
reg   [5:0] offset_reg_1460_pp0_iter2_reg;
reg   [5:0] offset_reg_1460_pp0_iter3_reg;
reg   [5:0] offset_reg_1460_pp0_iter4_reg;
reg   [5:0] offset_reg_1460_pp0_iter5_reg;
reg   [5:0] offset_reg_1460_pp0_iter6_reg;
reg   [5:0] offset_reg_1460_pp0_iter7_reg;
reg   [5:0] offset_reg_1460_pp0_iter8_reg;
wire   [8:0] zext_ln172_22_fu_1118_p1;
reg   [8:0] zext_ln172_22_reg_1470;
reg   [2:0] tmp_reg_1476;
reg   [2:0] tmp_reg_1476_pp0_iter8_reg;
reg   [2:0] tmp_reg_1476_pp0_iter9_reg;
reg   [4:0] tmp_71_reg_1481;
reg   [4:0] tmp_71_reg_1481_pp0_iter8_reg;
reg   [4:0] tmp_71_reg_1481_pp0_iter9_reg;
wire   [7:0] add_ln303_fu_1166_p2;
reg   [7:0] add_ln303_reg_1486;
wire   [8:0] add_ln299_fu_1172_p2;
reg   [8:0] add_ln299_reg_1491;
wire   [8:0] add_ln301_fu_1177_p2;
reg   [8:0] add_ln301_reg_1496;
reg   [5:0] tmp_72_reg_1501;
reg   [5:0] tmp_72_reg_1501_pp0_iter9_reg;
wire   [3:0] trunc_ln172_fu_1205_p1;
reg   [3:0] trunc_ln172_reg_1506;
reg   [5:0] tmp_68_reg_1520;
reg   [5:0] tmp_70_reg_1535;
wire   [63:0] zext_ln298_fu_1214_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln300_1_fu_1248_p1;
wire   [63:0] zext_ln172_6_fu_1275_p1;
wire   [63:0] zext_ln299_fu_1289_p1;
wire   [63:0] zext_ln300_fu_1312_p1;
wire   [63:0] zext_ln301_fu_1327_p1;
wire   [63:0] zext_ln302_fu_1341_p1;
wire   [63:0] zext_ln303_fu_1355_p1;
wire   [63:0] zext_ln304_fu_1378_p1;
wire   [63:0] zext_ln305_fu_1402_p1;
reg   [6:0] tid_fu_126;
wire   [6:0] add_ln294_fu_1091_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_3;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
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
wire   [5:0] grp_fu_1101_p0;
wire   [4:0] grp_fu_1101_p1;
wire   [5:0] mul_ln172_fu_1124_p0;
wire   [7:0] mul_ln172_fu_1124_p1;
wire   [12:0] mul_ln172_fu_1124_p2;
wire   [7:0] zext_ln172_21_fu_1115_p1;
wire   [7:0] add_ln302_fu_1140_p2;
wire   [7:0] mul_ln302_fu_1150_p0;
wire   [9:0] mul_ln302_fu_1150_p1;
wire   [16:0] mul_ln302_fu_1150_p2;
wire  signed [8:0] sext_ln303_fu_1182_p1;
wire   [8:0] mul_ln303_fu_1189_p0;
wire   [10:0] mul_ln303_fu_1189_p1;
wire   [18:0] mul_ln303_fu_1189_p2;
wire   [3:0] grp_fu_1101_p2;
wire   [6:0] shl_ln298_fu_1209_p2;
wire   [8:0] mul_ln299_fu_1225_p0;
wire   [10:0] mul_ln299_fu_1225_p1;
wire   [18:0] mul_ln299_fu_1225_p2;
wire   [6:0] or_ln_fu_1241_p3;
wire   [8:0] mul_ln301_fu_1259_p0;
wire   [10:0] mul_ln301_fu_1259_p1;
wire   [18:0] mul_ln301_fu_1259_p2;
wire   [16:0] tmp_69_fu_1303_p1;
wire  signed [16:0] grp_fu_1417_p3;
wire   [4:0] tmp_69_fu_1303_p4;
wire   [18:0] tmp_73_fu_1369_p1;
wire  signed [18:0] grp_fu_1426_p3;
wire   [5:0] tmp_73_fu_1369_p4;
wire   [20:0] tmp_74_fu_1393_p1;
wire  signed [20:0] grp_fu_1435_p3;
wire   [6:0] tmp_74_fu_1393_p4;
wire   [5:0] grp_fu_1417_p0;
wire   [6:0] grp_fu_1417_p1;
wire   [8:0] grp_fu_1417_p2;
wire   [5:0] grp_fu_1426_p0;
wire   [7:0] grp_fu_1426_p1;
wire   [9:0] grp_fu_1426_p2;
wire   [5:0] grp_fu_1435_p0;
wire   [8:0] grp_fu_1435_p1;
wire   [10:0] grp_fu_1435_p2;
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
wire   [8:0] grp_fu_1426_p00;
wire   [9:0] grp_fu_1435_p00;
wire   [12:0] mul_ln172_fu_1124_p00;
wire   [18:0] mul_ln299_fu_1225_p00;
wire   [18:0] mul_ln301_fu_1259_p00;
wire   [16:0] mul_ln302_fu_1150_p00;
wire   [18:0] mul_ln303_fu_1189_p00;
reg    ap_condition_489;
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
#0 tid_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1101_p0),.din1(grp_fu_1101_p1),.ce(1'b1),.dout(grp_fu_1101_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U387(.din0(mul_ln172_fu_1124_p0),.din1(mul_ln172_fu_1124_p1),.dout(mul_ln172_fu_1124_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U388(.din0(mul_ln302_fu_1150_p0),.din1(mul_ln302_fu_1150_p1),.dout(mul_ln302_fu_1150_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U389(.din0(mul_ln303_fu_1189_p0),.din1(mul_ln303_fu_1189_p1),.dout(mul_ln303_fu_1189_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U390(.din0(mul_ln299_fu_1225_p0),.din1(mul_ln299_fu_1225_p1),.dout(mul_ln299_fu_1225_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U391(.din0(mul_ln301_fu_1259_p0),.din1(mul_ln301_fu_1259_p1),.dout(mul_ln301_fu_1259_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U392(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1417_p0),.din1(grp_fu_1417_p1),.din2(grp_fu_1417_p2),.ce(1'b1),.dout(grp_fu_1417_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U393(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1426_p0),.din1(grp_fu_1426_p1),.din2(grp_fu_1426_p2),.ce(1'b1),.dout(grp_fu_1426_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1435_p0),.din1(grp_fu_1435_p1),.din2(grp_fu_1435_p2),.ce(1'b1),.dout(grp_fu_1435_p3));
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
        if (((icmp_ln294_fu_1085_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_126 <= add_ln294_fu_1091_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_126 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln299_reg_1491 <= add_ln299_fu_1172_p2;
        add_ln301_reg_1496 <= add_ln301_fu_1177_p2;
        add_ln303_reg_1486 <= add_ln303_fu_1166_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_reg_1460_pp0_iter2_reg <= offset_reg_1460_pp0_iter1_reg;
        offset_reg_1460_pp0_iter3_reg <= offset_reg_1460_pp0_iter2_reg;
        offset_reg_1460_pp0_iter4_reg <= offset_reg_1460_pp0_iter3_reg;
        offset_reg_1460_pp0_iter5_reg <= offset_reg_1460_pp0_iter4_reg;
        offset_reg_1460_pp0_iter6_reg <= offset_reg_1460_pp0_iter5_reg;
        offset_reg_1460_pp0_iter7_reg <= offset_reg_1460_pp0_iter6_reg;
        offset_reg_1460_pp0_iter8_reg <= offset_reg_1460_pp0_iter7_reg;
        tid_3_reg_1451_pp0_iter2_reg <= tid_3_reg_1451_pp0_iter1_reg;
        tid_3_reg_1451_pp0_iter3_reg <= tid_3_reg_1451_pp0_iter2_reg;
        tid_3_reg_1451_pp0_iter4_reg <= tid_3_reg_1451_pp0_iter3_reg;
        tid_3_reg_1451_pp0_iter5_reg <= tid_3_reg_1451_pp0_iter4_reg;
        tid_3_reg_1451_pp0_iter6_reg <= tid_3_reg_1451_pp0_iter5_reg;
        tid_3_reg_1451_pp0_iter7_reg <= tid_3_reg_1451_pp0_iter6_reg;
        tid_3_reg_1451_pp0_iter8_reg <= tid_3_reg_1451_pp0_iter7_reg;
        tmp_68_reg_1520 <= {{mul_ln299_fu_1225_p2[18:13]}};
        tmp_70_reg_1535 <= {{mul_ln301_fu_1259_p2[18:13]}};
        tmp_71_reg_1481 <= {{mul_ln302_fu_1150_p2[16:12]}};
        tmp_71_reg_1481_pp0_iter8_reg <= tmp_71_reg_1481;
        tmp_71_reg_1481_pp0_iter9_reg <= tmp_71_reg_1481_pp0_iter8_reg;
        tmp_72_reg_1501 <= {{mul_ln303_fu_1189_p2[18:13]}};
        tmp_72_reg_1501_pp0_iter9_reg <= tmp_72_reg_1501;
        tmp_reg_1476 <= {{mul_ln172_fu_1124_p2[12:10]}};
        tmp_reg_1476_pp0_iter8_reg <= tmp_reg_1476;
        tmp_reg_1476_pp0_iter9_reg <= tmp_reg_1476_pp0_iter8_reg;
        trunc_ln172_reg_1506 <= trunc_ln172_fu_1205_p1;
        zext_ln172_22_reg_1470[5 : 0] <= zext_ln172_22_fu_1118_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_reg_1460 <= offset_fu_1097_p1;
        offset_reg_1460_pp0_iter1_reg <= offset_reg_1460;
        tid_3_reg_1451 <= ap_sig_allocacmp_tid_3;
        tid_3_reg_1451_pp0_iter1_reg <= tid_3_reg_1451;
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
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
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
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
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
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln294_fu_1085_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid_3 = tid_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_10_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_10_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_10_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_10_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_10_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_10_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_10_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_10_address0_local = zext_ln302_fu_1341_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_10_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_10_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_10_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_10_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_10_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_10_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_10_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_10_d0_local = DATA_x_2_q1;
        end else begin
            smem_10_d0_local = 'bx;
        end
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_1_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_1_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_1_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_1_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_1_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_1_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_1_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_1_address0_local = zext_ln303_fu_1355_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_1_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_1_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_1_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_1_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_1_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_1_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_1_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_1_d0_local = DATA_x_3_q1;
        end else begin
            smem_1_d0_local = 'bx;
        end
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_2_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_2_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_2_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_2_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_2_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_2_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_2_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_2_address0_local = zext_ln300_fu_1312_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_2_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_2_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_2_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_2_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_2_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_2_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_2_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_2_d0_local = DATA_x_q0;
        end else begin
            smem_2_d0_local = 'bx;
        end
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_3_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_3_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_3_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_3_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_3_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_3_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_3_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_3_address0_local = zext_ln300_fu_1312_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_3_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_3_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_3_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_3_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_3_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_3_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_3_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_3_d0_local = DATA_x_q0;
        end else begin
            smem_3_d0_local = 'bx;
        end
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_4_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_4_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_4_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_4_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_4_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_4_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_4_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_4_address0_local = zext_ln300_fu_1312_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_4_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_4_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_4_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_4_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_4_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_4_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_4_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_4_d0_local = DATA_x_q0;
        end else begin
            smem_4_d0_local = 'bx;
        end
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_5_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_5_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_5_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_5_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_5_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_5_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_5_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_5_address0_local = zext_ln304_fu_1378_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_5_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_5_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_5_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_5_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_5_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_5_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_5_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_5_d0_local = DATA_x_2_q0;
        end else begin
            smem_5_d0_local = 'bx;
        end
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_6_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_6_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_6_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_6_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_6_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_6_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_6_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_6_address0_local = zext_ln301_fu_1327_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_6_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_6_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_6_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_6_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_6_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_6_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_6_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_6_d0_local = DATA_x_1_q0;
        end else begin
            smem_6_d0_local = 'bx;
        end
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_7_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_7_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_7_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_7_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_7_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_7_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_7_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_7_address0_local = zext_ln305_fu_1402_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_7_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_7_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_7_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_7_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_7_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_7_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_7_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_7_d0_local = DATA_x_3_q0;
        end else begin
            smem_7_d0_local = 'bx;
        end
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_8_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_8_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_8_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_8_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_8_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_8_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_8_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_8_address0_local = zext_ln172_6_fu_1275_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_8_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_8_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_8_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_8_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_8_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_8_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_8_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_8_d0_local = DATA_x_q1;
        end else begin
            smem_8_d0_local = 'bx;
        end
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_9_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_9_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_9_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_9_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_9_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_9_address0_local = zext_ln299_fu_1289_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_9_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_9_address0_local = zext_ln172_6_fu_1275_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_9_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd1)) begin
            smem_9_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_9_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_9_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd6)) begin
            smem_9_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd7)) begin
            smem_9_d0_local = DATA_x_1_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_9_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_9_d0_local = DATA_x_q1;
        end else begin
            smem_9_d0_local = 'bx;
        end
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_address0_local = zext_ln302_fu_1341_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_address0_local = zext_ln172_6_fu_1275_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_address0_local = zext_ln305_fu_1402_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_address0_local = zext_ln301_fu_1327_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_address0_local = zext_ln304_fu_1378_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_address0_local = zext_ln300_fu_1312_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_address0_local = zext_ln303_fu_1355_p1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_address0_local = zext_ln299_fu_1289_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        if ((1'b1 == ap_condition_489)) begin
            smem_d0_local = DATA_x_2_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd0)) begin
            smem_d0_local = DATA_x_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd2)) begin
            smem_d0_local = DATA_x_3_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd3)) begin
            smem_d0_local = DATA_x_1_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd4)) begin
            smem_d0_local = DATA_x_2_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd5)) begin
            smem_d0_local = DATA_x_q0;
        end else if ((trunc_ln172_reg_1506 == 4'd8)) begin
            smem_d0_local = DATA_x_3_q1;
        end else if ((trunc_ln172_reg_1506 == 4'd9)) begin
            smem_d0_local = DATA_x_1_q1;
        end else begin
            smem_d0_local = 'bx;
        end
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10== 1'b1) & (trunc_ln172_reg_1506 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln172_reg_1506 == 4'd9)))) begin
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
assign DATA_x_1_address0 = zext_ln300_1_fu_1248_p1;
assign DATA_x_1_address1 = zext_ln298_fu_1214_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln300_1_fu_1248_p1;
assign DATA_x_2_address1 = zext_ln298_fu_1214_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln300_1_fu_1248_p1;
assign DATA_x_3_address1 = zext_ln298_fu_1214_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = zext_ln300_1_fu_1248_p1;
assign DATA_x_address1 = zext_ln298_fu_1214_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln294_fu_1091_p2 = (ap_sig_allocacmp_tid_3 + 7'd1);
assign add_ln299_fu_1172_p2 = ($signed(zext_ln172_22_reg_1470) + $signed(9'd288));
assign add_ln301_fu_1177_p2 = ($signed(zext_ln172_22_reg_1470) + $signed(9'd360));
assign add_ln302_fu_1140_p2 = ($signed(zext_ln172_21_fu_1115_p1) + $signed(8'd144));
assign add_ln303_fu_1166_p2 = ($signed(zext_ln172_21_fu_1115_p1) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_489 = (~(trunc_ln172_reg_1506 == 4'd4) & ~(trunc_ln172_reg_1506 == 4'd5) & ~(trunc_ln172_reg_1506 == 4'd0) & ~(trunc_ln172_reg_1506 == 4'd1) & ~(trunc_ln172_reg_1506 == 4'd2) & ~(trunc_ln172_reg_1506 == 4'd3) & ~(trunc_ln172_reg_1506 == 4'd6) & ~(trunc_ln172_reg_1506 == 4'd7) & ~(trunc_ln172_reg_1506 == 4'd8) & ~(trunc_ln172_reg_1506 == 4'd9));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1101_p0 = ap_sig_allocacmp_tid_3[5:0];
assign grp_fu_1101_p1 = 6'd11;
assign grp_fu_1417_p0 = zext_ln172_21_fu_1115_p1;
assign grp_fu_1417_p1 = 8'd72;
assign grp_fu_1417_p2 = 17'd373;
assign grp_fu_1426_p0 = grp_fu_1426_p00;
assign grp_fu_1426_p00 = offset_reg_1460_pp0_iter6_reg;
assign grp_fu_1426_p1 = 9'd216;
assign grp_fu_1426_p2 = 19'd745;
assign grp_fu_1435_p0 = grp_fu_1435_p00;
assign grp_fu_1435_p00 = offset_reg_1460_pp0_iter6_reg;
assign grp_fu_1435_p1 = 10'd504;
assign grp_fu_1435_p2 = 21'd1490;
assign icmp_ln294_fu_1085_p2 = ((ap_sig_allocacmp_tid_3 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_1124_p0 = mul_ln172_fu_1124_p00;
assign mul_ln172_fu_1124_p00 = offset_reg_1460_pp0_iter6_reg;
assign mul_ln172_fu_1124_p1 = 13'd94;
assign mul_ln299_fu_1225_p0 = mul_ln299_fu_1225_p00;
assign mul_ln299_fu_1225_p00 = add_ln299_reg_1491;
assign mul_ln299_fu_1225_p1 = 19'd745;
assign mul_ln301_fu_1259_p0 = mul_ln301_fu_1259_p00;
assign mul_ln301_fu_1259_p00 = add_ln301_reg_1496;
assign mul_ln301_fu_1259_p1 = 19'd745;
assign mul_ln302_fu_1150_p0 = mul_ln302_fu_1150_p00;
assign mul_ln302_fu_1150_p00 = add_ln302_fu_1140_p2;
assign mul_ln302_fu_1150_p1 = 17'd373;
assign mul_ln303_fu_1189_p0 = mul_ln303_fu_1189_p00;
assign mul_ln303_fu_1189_p00 = $unsigned(sext_ln303_fu_1182_p1);
assign mul_ln303_fu_1189_p1 = 19'd745;
assign offset_fu_1097_p1 = ap_sig_allocacmp_tid_3[5:0];
assign or_ln_fu_1241_p3 = {{offset_reg_1460_pp0_iter8_reg}, {1'd1}};
assign sext_ln303_fu_1182_p1 = $signed(add_ln303_reg_1486);
assign shl_ln298_fu_1209_p2 = tid_3_reg_1451_pp0_iter8_reg << 7'd1;
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
assign tmp_69_fu_1303_p1 = grp_fu_1417_p3;
assign tmp_69_fu_1303_p4 = {{tmp_69_fu_1303_p1[16:12]}};
assign tmp_73_fu_1369_p1 = grp_fu_1426_p3;
assign tmp_73_fu_1369_p4 = {{tmp_73_fu_1369_p1[18:13]}};
assign tmp_74_fu_1393_p1 = grp_fu_1435_p3;
assign tmp_74_fu_1393_p4 = {{tmp_74_fu_1393_p1[20:14]}};
assign trunc_ln172_fu_1205_p1 = grp_fu_1101_p2[3:0];
assign zext_ln172_21_fu_1115_p1 = offset_reg_1460_pp0_iter6_reg;
assign zext_ln172_22_fu_1118_p1 = offset_reg_1460_pp0_iter6_reg;
assign zext_ln172_6_fu_1275_p1 = tmp_reg_1476_pp0_iter9_reg;
assign zext_ln298_fu_1214_p1 = shl_ln298_fu_1209_p2;
assign zext_ln299_fu_1289_p1 = tmp_68_reg_1520;
assign zext_ln300_1_fu_1248_p1 = or_ln_fu_1241_p3;
assign zext_ln300_fu_1312_p1 = tmp_69_fu_1303_p4;
assign zext_ln301_fu_1327_p1 = tmp_70_reg_1535;
assign zext_ln302_fu_1341_p1 = tmp_71_reg_1481_pp0_iter9_reg;
assign zext_ln303_fu_1355_p1 = tmp_72_reg_1501_pp0_iter9_reg;
assign zext_ln304_fu_1378_p1 = tmp_73_fu_1369_p4;
assign zext_ln305_fu_1402_p1 = tmp_74_fu_1393_p4;
always @ (posedge ap_clk) begin
    zext_ln172_22_reg_1470[8:6] <= 3'b000;
end
endmodule 