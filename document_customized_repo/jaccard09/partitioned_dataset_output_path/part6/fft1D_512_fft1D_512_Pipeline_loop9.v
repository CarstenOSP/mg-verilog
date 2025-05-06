
module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [6:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
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
reg   [0:0] icmp_ln325_reg_903;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_550;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln325_fu_567_p2;
wire   [5:0] offset_fu_579_p1;
reg   [5:0] offset_reg_907;
reg   [5:0] offset_reg_907_pp0_iter1_reg;
reg   [5:0] offset_reg_907_pp0_iter2_reg;
reg   [5:0] offset_reg_907_pp0_iter3_reg;
reg   [5:0] offset_reg_907_pp0_iter4_reg;
wire   [7:0] zext_ln172_1_fu_594_p1;
reg   [7:0] zext_ln172_1_reg_920;
reg   [7:0] zext_ln172_1_reg_920_pp0_iter4_reg;
wire   [8:0] zext_ln172_2_fu_597_p1;
reg   [8:0] zext_ln172_2_reg_926;
reg   [3:0] tmp_reg_932;
wire   [8:0] add_ln331_fu_635_p2;
reg   [8:0] add_ln331_reg_947;
wire   [63:0] zext_ln332_1_fu_647_p1;
reg   [63:0] zext_ln332_1_reg_952;
wire   [8:0] add_ln333_fu_652_p2;
reg   [8:0] add_ln333_reg_962;
wire   [2:0] trunc_ln172_fu_657_p1;
reg   [2:0] trunc_ln172_reg_967;
reg   [63:0] DATA_y_load_reg_971;
reg   [6:0] tmp_28_reg_980;
reg   [5:0] tmp_29_reg_985;
reg   [6:0] tmp_30_reg_990;
reg   [5:0] tmp_31_reg_1000;
wire   [7:0] add_ln335_fu_746_p2;
reg   [7:0] add_ln335_reg_1010;
reg   [63:0] DATA_y_load_1_reg_1020;
reg   [6:0] tmp_33_reg_1029;
reg   [6:0] tmp_32_reg_1044;
reg   [63:0] DATA_y_1_load_3_reg_1049;
reg   [7:0] tmp_34_reg_1058;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln330_fu_629_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln334_1_fu_715_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln336_1_fu_758_p1;
wire   [63:0] zext_ln172_4_fu_773_p1;
wire   [63:0] zext_ln331_fu_781_p1;
wire   [63:0] zext_ln332_fu_789_p1;
wire   [63:0] zext_ln334_fu_797_p1;
wire   [63:0] zext_ln336_fu_828_p1;
wire   [63:0] zext_ln333_fu_845_p1;
wire   [63:0] zext_ln335_fu_853_p1;
wire   [63:0] zext_ln337_fu_861_p1;
reg   [6:0] tid_fu_104;
wire   [6:0] add_ln325_fu_573_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
wire   [5:0] grp_fu_583_p0;
wire   [3:0] grp_fu_583_p1;
wire   [5:0] mul_ln172_fu_606_p0;
wire   [7:0] mul_ln172_fu_606_p1;
wire   [12:0] mul_ln172_fu_606_p2;
wire   [7:0] shl_ln8_fu_622_p3;
wire   [7:0] or_ln_fu_640_p3;
wire   [2:0] grp_fu_583_p2;
wire   [8:0] mul_ln331_fu_664_p0;
wire   [10:0] mul_ln331_fu_664_p1;
wire   [18:0] mul_ln331_fu_664_p2;
wire   [16:0] tmp_29_fu_680_p1;
wire  signed [16:0] grp_fu_869_p3;
wire   [8:0] mul_ln333_fu_692_p0;
wire   [10:0] mul_ln333_fu_692_p1;
wire   [18:0] mul_ln333_fu_692_p2;
wire   [7:0] or_ln1_fu_708_p3;
wire   [7:0] add_ln334_fu_721_p2;
wire   [7:0] mul_ln334_fu_730_p0;
wire   [9:0] mul_ln334_fu_730_p1;
wire   [16:0] mul_ln334_fu_730_p2;
wire   [7:0] or_ln2_fu_751_p3;
wire   [18:0] tmp_33_fu_764_p1;
wire  signed [18:0] grp_fu_878_p3;
wire  signed [8:0] sext_ln335_fu_805_p1;
wire   [8:0] mul_ln335_fu_812_p0;
wire   [10:0] mul_ln335_fu_812_p1;
wire   [18:0] mul_ln335_fu_812_p2;
wire   [20:0] tmp_34_fu_836_p1;
wire  signed [20:0] grp_fu_887_p3;
wire   [5:0] grp_fu_869_p0;
wire   [6:0] grp_fu_869_p1;
wire   [8:0] grp_fu_869_p2;
wire   [5:0] grp_fu_878_p0;
wire   [7:0] grp_fu_878_p1;
wire   [9:0] grp_fu_878_p2;
wire   [5:0] grp_fu_887_p0;
wire   [8:0] grp_fu_887_p1;
wire   [10:0] grp_fu_887_p2;
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
wire   [7:0] grp_fu_869_p00;
wire   [8:0] grp_fu_878_p00;
wire   [9:0] grp_fu_887_p00;
wire   [12:0] mul_ln172_fu_606_p00;
wire   [18:0] mul_ln331_fu_664_p00;
wire   [18:0] mul_ln333_fu_692_p00;
wire   [16:0] mul_ln334_fu_730_p00;
wire   [18:0] mul_ln335_fu_812_p00;
reg    ap_condition_633;
reg    ap_condition_636;
reg    ap_condition_639;
reg    ap_condition_642;
reg    ap_condition_646;
reg    ap_condition_649;
reg    ap_condition_652;
reg    ap_condition_656;
reg    ap_condition_659;
reg    ap_condition_662;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_6ns_4ns_3_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_583_p0),.din1(grp_fu_583_p1),.ce(1'b1),.dout(grp_fu_583_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U539(.din0(mul_ln172_fu_606_p0),.din1(mul_ln172_fu_606_p1),.dout(mul_ln172_fu_606_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U540(.din0(mul_ln331_fu_664_p0),.din1(mul_ln331_fu_664_p1),.dout(mul_ln331_fu_664_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U541(.din0(mul_ln333_fu_692_p0),.din1(mul_ln333_fu_692_p1),.dout(mul_ln333_fu_692_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U542(.din0(mul_ln334_fu_730_p0),.din1(mul_ln334_fu_730_p1),.dout(mul_ln334_fu_730_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U543(.din0(mul_ln335_fu_812_p0),.din1(mul_ln335_fu_812_p1),.dout(mul_ln335_fu_812_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U544(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_869_p0),.din1(grp_fu_869_p1),.din2(grp_fu_869_p2),.ce(1'b1),.dout(grp_fu_869_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U545(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_878_p0),.din1(grp_fu_878_p1),.din2(grp_fu_878_p2),.ce(1'b1),.dout(grp_fu_878_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U546(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_887_p0),.din1(grp_fu_887_p1),.din2(grp_fu_887_p2),.ce(1'b1),.dout(grp_fu_887_p3));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln325_fu_567_p2 == 1'd0))) begin
            tid_fu_104 <= add_ln325_fu_573_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_load_3_reg_1049 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_load_1_reg_1020 <= DATA_y_q0;
        DATA_y_load_reg_971 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_947 <= add_ln331_fu_635_p2;
        add_ln333_reg_962 <= add_ln333_fu_652_p2;
        icmp_ln325_reg_903 <= icmp_ln325_fu_567_p2;
        offset_reg_907 <= offset_fu_579_p1;
        offset_reg_907_pp0_iter1_reg <= offset_reg_907;
        offset_reg_907_pp0_iter2_reg <= offset_reg_907_pp0_iter1_reg;
        offset_reg_907_pp0_iter3_reg <= offset_reg_907_pp0_iter2_reg;
        offset_reg_907_pp0_iter4_reg <= offset_reg_907_pp0_iter3_reg;
        tmp_32_reg_1044 <= {{mul_ln335_fu_812_p2[18:12]}};
        tmp_34_reg_1058 <= {{tmp_34_fu_836_p1[20:13]}};
        tmp_reg_932 <= {{mul_ln172_fu_606_p2[12:9]}};
        zext_ln172_1_reg_920[5 : 0] <= zext_ln172_1_fu_594_p1[5 : 0];
        zext_ln172_1_reg_920_pp0_iter4_reg[5 : 0] <= zext_ln172_1_reg_920[5 : 0];
        zext_ln172_2_reg_926[5 : 0] <= zext_ln172_2_fu_597_p1[5 : 0];
        zext_ln332_1_reg_952[7 : 2] <= zext_ln332_1_fu_647_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln335_reg_1010 <= add_ln335_fu_746_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        tmp_28_reg_980 <= {{mul_ln331_fu_664_p2[18:12]}};
        tmp_29_reg_985 <= {{tmp_29_fu_680_p1[16:11]}};
        tmp_30_reg_990 <= {{mul_ln333_fu_692_p2[18:12]}};
        tmp_31_reg_1000 <= {{mul_ln334_fu_730_p2[16:11]}};
        tmp_33_reg_1029 <= {{tmp_33_fu_764_p1[18:12]}};
        trunc_ln172_reg_967 <= trunc_ln172_fu_657_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_550 <= DATA_y_1_q1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln332_1_reg_952;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln336_1_fu_758_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln334_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln330_fu_629_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln336_1_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln332_1_fu_647_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln334_1_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln330_fu_629_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln325_reg_903 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_104;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if ((1'b1 == ap_condition_656)) begin
            smem_1_address0_local = zext_ln335_fu_853_p1;
        end else if ((1'b1 == ap_condition_652)) begin
            smem_1_address0_local = zext_ln333_fu_845_p1;
        end else if ((1'b1 == ap_condition_649)) begin
            smem_1_address0_local = zext_ln337_fu_861_p1;
        end else if ((1'b1 == ap_condition_646)) begin
            smem_1_address0_local = zext_ln332_fu_789_p1;
        end else if ((1'b1 == ap_condition_642)) begin
            smem_1_address0_local = zext_ln336_fu_828_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            smem_1_address0_local = zext_ln172_4_fu_773_p1;
        end else if ((1'b1 == ap_condition_636)) begin
            smem_1_address0_local = zext_ln334_fu_797_p1;
        end else if ((1'b1 == ap_condition_633)) begin
            smem_1_address0_local = zext_ln331_fu_781_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_1_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_1_d0_local = DATA_y_1_load_3_reg_1049;
    end else if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_load_1_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_1_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_1_d0_local = DATA_y_load_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_1_d0_local = DATA_y_q1;
    end else if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_1_d0_local = reg_550;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if ((1'b1 == ap_condition_662)) begin
            smem_2_address0_local = zext_ln335_fu_853_p1;
        end else if ((1'b1 == ap_condition_649)) begin
            smem_2_address0_local = zext_ln333_fu_845_p1;
        end else if ((1'b1 == ap_condition_659)) begin
            smem_2_address0_local = zext_ln337_fu_861_p1;
        end else if ((1'b1 == ap_condition_646)) begin
            smem_2_address0_local = zext_ln331_fu_781_p1;
        end else if ((1'b1 == ap_condition_642)) begin
            smem_2_address0_local = zext_ln332_fu_789_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            smem_2_address0_local = zext_ln336_fu_828_p1;
        end else if ((1'b1 == ap_condition_636)) begin
            smem_2_address0_local = zext_ln172_4_fu_773_p1;
        end else if ((1'b1 == ap_condition_633)) begin
            smem_2_address0_local = zext_ln334_fu_797_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_2_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_2_d0_local = DATA_y_1_load_3_reg_1049;
    end else if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)))) begin
        smem_2_d0_local = reg_550;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_2_d0_local = DATA_y_load_1_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_2_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_2_d0_local = DATA_y_load_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_2_d0_local = DATA_y_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if ((1'b1 == ap_condition_656)) begin
            smem_3_address0_local = zext_ln337_fu_861_p1;
        end else if ((1'b1 == ap_condition_652)) begin
            smem_3_address0_local = zext_ln335_fu_853_p1;
        end else if ((1'b1 == ap_condition_659)) begin
            smem_3_address0_local = zext_ln333_fu_845_p1;
        end else if ((1'b1 == ap_condition_646)) begin
            smem_3_address0_local = zext_ln334_fu_797_p1;
        end else if ((1'b1 == ap_condition_642)) begin
            smem_3_address0_local = zext_ln331_fu_781_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            smem_3_address0_local = zext_ln332_fu_789_p1;
        end else if ((1'b1 == ap_condition_636)) begin
            smem_3_address0_local = zext_ln336_fu_828_p1;
        end else if ((1'b1 == ap_condition_633)) begin
            smem_3_address0_local = zext_ln172_4_fu_773_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_1_load_3_reg_1049;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_3_d0_local = DATA_y_1_q0;
    end else if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)))) begin
        smem_3_d0_local = reg_550;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_3_d0_local = DATA_y_load_1_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_3_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_3_d0_local = DATA_y_load_reg_971;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if ((1'b1 == ap_condition_656)) begin
            smem_4_address0_local = zext_ln333_fu_845_p1;
        end else if ((1'b1 == ap_condition_662)) begin
            smem_4_address0_local = zext_ln337_fu_861_p1;
        end else if ((1'b1 == ap_condition_649)) begin
            smem_4_address0_local = zext_ln335_fu_853_p1;
        end else if ((1'b1 == ap_condition_646)) begin
            smem_4_address0_local = zext_ln172_4_fu_773_p1;
        end else if ((1'b1 == ap_condition_642)) begin
            smem_4_address0_local = zext_ln334_fu_797_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            smem_4_address0_local = zext_ln331_fu_781_p1;
        end else if ((1'b1 == ap_condition_636)) begin
            smem_4_address0_local = zext_ln332_fu_789_p1;
        end else if ((1'b1 == ap_condition_633)) begin
            smem_4_address0_local = zext_ln336_fu_828_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_4_d0_local = DATA_y_1_load_3_reg_1049;
    end else if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_load_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_4_d0_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)))) begin
        smem_4_d0_local = reg_550;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2))) begin
        smem_4_d0_local = DATA_y_load_1_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_4_d0_local = DATA_y_q0;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967== 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if ((1'b1 == ap_condition_662)) begin
            smem_address0_local = zext_ln333_fu_845_p1;
        end else if ((1'b1 == ap_condition_652)) begin
            smem_address0_local = zext_ln337_fu_861_p1;
        end else if ((1'b1 == ap_condition_659)) begin
            smem_address0_local = zext_ln335_fu_853_p1;
        end else if ((1'b1 == ap_condition_646)) begin
            smem_address0_local = zext_ln336_fu_828_p1;
        end else if ((1'b1 == ap_condition_642)) begin
            smem_address0_local = zext_ln172_4_fu_773_p1;
        end else if ((1'b1 == ap_condition_639)) begin
            smem_address0_local = zext_ln334_fu_797_p1;
        end else if ((1'b1 == ap_condition_636)) begin
            smem_address0_local = zext_ln331_fu_781_p1;
        end else if ((1'b1 == ap_condition_633)) begin
            smem_address0_local = zext_ln332_fu_789_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_d0_local = DATA_y_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_d0_local = DATA_y_1_load_3_reg_1049;
    end else if ((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_q0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0))) begin
        smem_d0_local = DATA_y_load_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1))) begin
        smem_d0_local = DATA_y_q1;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)))) begin
        smem_d0_local = reg_550;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3))) begin
        smem_d0_local = DATA_y_load_1_reg_1020;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1== ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3)))) begin
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
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_573_p2 = (ap_sig_allocacmp_tid_1 + 7'd1);
assign add_ln331_fu_635_p2 = ($signed(zext_ln172_2_reg_926) + $signed(9'd288));
assign add_ln333_fu_652_p2 = ($signed(zext_ln172_2_reg_926) + $signed(9'd360));
assign add_ln334_fu_721_p2 = ($signed(zext_ln172_1_reg_920_pp0_iter4_reg) + $signed(8'd144));
assign add_ln335_fu_746_p2 = ($signed(zext_ln172_1_reg_920_pp0_iter4_reg) + $signed(8'd176));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_633 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd3));
end
always @ (*) begin
    ap_condition_636 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd2));
end
always @ (*) begin
    ap_condition_639 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd1));
end
always @ (*) begin
    ap_condition_642 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln172_reg_967 == 3'd0));
end
always @ (*) begin
    ap_condition_646 = (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_649 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd2));
end
always @ (*) begin
    ap_condition_652 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd1));
end
always @ (*) begin
    ap_condition_656 = (~(trunc_ln172_reg_967 == 3'd0) & ~(trunc_ln172_reg_967 == 3'd1) & ~(trunc_ln172_reg_967 == 3'd2) & ~(trunc_ln172_reg_967 == 3'd3) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_659 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd3));
end
always @ (*) begin
    ap_condition_662 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_967 == 3'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_583_p0 = ap_sig_allocacmp_tid_1[5:0];
assign grp_fu_583_p1 = 6'd5;
assign grp_fu_869_p0 = grp_fu_869_p00;
assign grp_fu_869_p00 = offset_reg_907_pp0_iter2_reg;
assign grp_fu_869_p1 = 8'd72;
assign grp_fu_869_p2 = 17'd410;
assign grp_fu_878_p0 = grp_fu_878_p00;
assign grp_fu_878_p00 = offset_reg_907_pp0_iter2_reg;
assign grp_fu_878_p1 = 9'd216;
assign grp_fu_878_p2 = 19'd820;
assign grp_fu_887_p0 = grp_fu_887_p00;
assign grp_fu_887_p00 = offset_reg_907_pp0_iter3_reg;
assign grp_fu_887_p1 = 10'd504;
assign grp_fu_887_p2 = 21'd1639;
assign icmp_ln325_fu_567_p2 = ((ap_sig_allocacmp_tid_1 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln172_fu_606_p0 = mul_ln172_fu_606_p00;
assign mul_ln172_fu_606_p00 = offset_reg_907_pp0_iter3_reg;
assign mul_ln172_fu_606_p1 = 13'd103;
assign mul_ln331_fu_664_p0 = mul_ln331_fu_664_p00;
assign mul_ln331_fu_664_p00 = add_ln331_reg_947;
assign mul_ln331_fu_664_p1 = 19'd820;
assign mul_ln333_fu_692_p0 = mul_ln333_fu_692_p00;
assign mul_ln333_fu_692_p00 = add_ln333_reg_962;
assign mul_ln333_fu_692_p1 = 19'd820;
assign mul_ln334_fu_730_p0 = mul_ln334_fu_730_p00;
assign mul_ln334_fu_730_p00 = add_ln334_fu_721_p2;
assign mul_ln334_fu_730_p1 = 17'd410;
assign mul_ln335_fu_812_p0 = mul_ln335_fu_812_p00;
assign mul_ln335_fu_812_p00 = $unsigned(sext_ln335_fu_805_p1);
assign mul_ln335_fu_812_p1 = 19'd820;
assign offset_fu_579_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_708_p3 = {{offset_reg_907_pp0_iter4_reg}, {2'd1}};
assign or_ln2_fu_751_p3 = {{offset_reg_907_pp0_iter4_reg}, {2'd3}};
assign or_ln_fu_640_p3 = {{offset_reg_907_pp0_iter3_reg}, {2'd2}};
assign sext_ln335_fu_805_p1 = $signed(add_ln335_reg_1010);
assign shl_ln8_fu_622_p3 = {{offset_reg_907_pp0_iter3_reg}, {2'd0}};
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
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_29_fu_680_p1 = grp_fu_869_p3;
assign tmp_33_fu_764_p1 = grp_fu_878_p3;
assign tmp_34_fu_836_p1 = grp_fu_887_p3;
assign trunc_ln172_fu_657_p1 = grp_fu_583_p2[2:0];
assign zext_ln172_1_fu_594_p1 = offset_reg_907_pp0_iter2_reg;
assign zext_ln172_2_fu_597_p1 = offset_reg_907_pp0_iter2_reg;
assign zext_ln172_4_fu_773_p1 = tmp_reg_932;
assign zext_ln330_fu_629_p1 = shl_ln8_fu_622_p3;
assign zext_ln331_fu_781_p1 = tmp_28_reg_980;
assign zext_ln332_1_fu_647_p1 = or_ln_fu_640_p3;
assign zext_ln332_fu_789_p1 = tmp_29_reg_985;
assign zext_ln333_fu_845_p1 = tmp_30_reg_990;
assign zext_ln334_1_fu_715_p1 = or_ln1_fu_708_p3;
assign zext_ln334_fu_797_p1 = tmp_31_reg_1000;
assign zext_ln335_fu_853_p1 = tmp_32_reg_1044;
assign zext_ln336_1_fu_758_p1 = or_ln2_fu_751_p3;
assign zext_ln336_fu_828_p1 = tmp_33_reg_1029;
assign zext_ln337_fu_861_p1 = tmp_34_reg_1058;
always @ (posedge ap_clk) begin
    zext_ln172_1_reg_920[7:6] <= 2'b00;
    zext_ln172_1_reg_920_pp0_iter4_reg[7:6] <= 2'b00;
    zext_ln172_2_reg_926[8:6] <= 3'b000;
    zext_ln332_1_reg_952[1:0] <= 2'b10;
    zext_ln332_1_reg_952[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
