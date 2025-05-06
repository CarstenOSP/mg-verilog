
module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_3_address1,alignedA_3_ce1,alignedA_3_we1,alignedA_3_d1,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_2_address1,alignedA_2_ce1,alignedA_2_we1,alignedA_2_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_3_address1;
output   alignedA_3_ce1;
output   alignedA_3_we1;
output  [7:0] alignedA_3_d1;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_2_address1;
output   alignedA_2_ce1;
output   alignedA_2_we1;
output  [7:0] alignedA_2_d1;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln83_7_fu_646_p2;
wire   [0:0] icmp_ln83_6_fu_610_p2;
wire   [0:0] icmp_ln83_5_fu_574_p2;
wire   [0:0] icmp_ln83_4_fu_538_p2;
wire   [0:0] icmp_ln83_3_fu_502_p2;
wire   [0:0] icmp_ln83_2_fu_466_p2;
wire   [0:0] icmp_ln83_1_fu_430_p2;
wire   [0:0] icmp_ln83_fu_390_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_6_reg_686;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln83_reg_692;
wire   [1:0] trunc_ln83_fu_396_p1;
reg   [1:0] trunc_ln83_reg_696;
wire   [63:0] zext_ln83_fu_416_p1;
reg   [63:0] zext_ln83_reg_700;
reg   [0:0] icmp_ln83_1_reg_708;
wire   [63:0] zext_ln83_1_fu_452_p1;
reg   [63:0] zext_ln83_1_reg_712;
reg   [0:0] icmp_ln83_2_reg_720;
wire   [63:0] zext_ln83_2_fu_488_p1;
reg   [63:0] zext_ln83_2_reg_724;
reg   [0:0] icmp_ln83_3_reg_732;
wire   [63:0] zext_ln83_3_fu_524_p1;
reg   [63:0] zext_ln83_3_reg_736;
reg   [0:0] icmp_ln83_4_reg_744;
wire   [63:0] zext_ln83_4_fu_560_p1;
reg   [63:0] zext_ln83_4_reg_748;
reg   [0:0] icmp_ln83_5_reg_756;
wire   [63:0] zext_ln83_5_fu_596_p1;
reg   [63:0] zext_ln83_5_reg_760;
reg   [0:0] icmp_ln83_6_reg_768;
wire   [63:0] zext_ln83_6_fu_632_p1;
reg   [63:0] zext_ln83_6_reg_772;
reg   [0:0] icmp_ln83_7_reg_780;
wire   [63:0] zext_ln18_fu_661_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] a_str_idx_fu_62;
wire   [31:0] add_ln83_7_fu_669_p2;
reg   [31:0] ap_sig_allocacmp_a_str_idx_6;
wire    ap_loop_init;
reg    alignedA_2_we1_local;
reg    alignedA_2_ce1_local;
reg   [5:0] alignedA_2_address1_local;
reg    alignedA_2_we0_local;
reg    alignedA_2_ce0_local;
reg   [5:0] alignedA_2_address0_local;
reg    alignedA_1_we1_local;
reg    alignedA_1_ce1_local;
reg   [5:0] alignedA_1_address1_local;
reg    alignedA_1_we0_local;
reg    alignedA_1_ce0_local;
reg   [5:0] alignedA_1_address0_local;
reg    alignedA_0_we1_local;
reg    alignedA_0_ce1_local;
reg   [5:0] alignedA_0_address1_local;
reg    alignedA_0_we0_local;
reg    alignedA_0_ce0_local;
reg   [5:0] alignedA_0_address0_local;
reg    alignedA_3_we1_local;
reg    alignedA_3_ce1_local;
reg   [5:0] alignedA_3_address1_local;
reg    alignedA_3_we0_local;
reg    alignedA_3_ce0_local;
reg   [5:0] alignedA_3_address0_local;
wire   [23:0] tmp_fu_380_p4;
wire   [31:0] add_ln83_fu_400_p2;
wire   [5:0] lshr_ln_fu_406_p4;
wire   [23:0] tmp_8_fu_420_p4;
wire   [31:0] add_ln83_1_fu_436_p2;
wire   [5:0] lshr_ln83_1_fu_442_p4;
wire   [23:0] tmp_9_fu_456_p4;
wire   [31:0] add_ln83_2_fu_472_p2;
wire   [5:0] lshr_ln83_2_fu_478_p4;
wire   [23:0] tmp_10_fu_492_p4;
wire   [31:0] add_ln83_3_fu_508_p2;
wire   [5:0] lshr_ln83_3_fu_514_p4;
wire   [23:0] tmp_11_fu_528_p4;
wire   [31:0] add_ln83_4_fu_544_p2;
wire   [5:0] lshr_ln83_4_fu_550_p4;
wire   [23:0] tmp_12_fu_564_p4;
wire   [31:0] add_ln83_5_fu_580_p2;
wire   [5:0] lshr_ln83_5_fu_586_p4;
wire   [23:0] tmp_13_fu_600_p4;
wire   [31:0] add_ln83_6_fu_616_p2;
wire   [5:0] lshr_ln83_6_fu_622_p4;
wire   [23:0] tmp_14_fu_636_p4;
wire   [5:0] lshr_ln18_1_fu_652_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_622;
reg    ap_condition_632;
reg    ap_condition_637;
reg    ap_condition_629;
reg    ap_condition_644;
reg    ap_condition_649;
reg    ap_condition_625;
reg    ap_condition_655;
reg    ap_condition_658;
reg    ap_condition_662;
reg    ap_condition_665;
reg    ap_condition_669;
reg    ap_condition_672;
reg    ap_condition_676;
reg    ap_condition_679;
reg    ap_condition_683;
reg    ap_condition_686;
reg    ap_condition_690;
reg    ap_condition_693;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_fu_62 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_62 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_622)) begin
            a_str_idx_fu_62 <= add_ln83_7_fu_669_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_6_reg_686 <= ap_sig_allocacmp_a_str_idx_6;
        icmp_ln83_1_reg_708 <= icmp_ln83_1_fu_430_p2;
        icmp_ln83_2_reg_720 <= icmp_ln83_2_fu_466_p2;
        icmp_ln83_3_reg_732 <= icmp_ln83_3_fu_502_p2;
        icmp_ln83_4_reg_744 <= icmp_ln83_4_fu_538_p2;
        icmp_ln83_5_reg_756 <= icmp_ln83_5_fu_574_p2;
        icmp_ln83_6_reg_768 <= icmp_ln83_6_fu_610_p2;
        icmp_ln83_7_reg_780 <= icmp_ln83_7_fu_646_p2;
        icmp_ln83_reg_692 <= icmp_ln83_fu_390_p2;
        trunc_ln83_reg_696 <= trunc_ln83_fu_396_p1;
        zext_ln83_1_reg_712[5 : 0] <= zext_ln83_1_fu_452_p1[5 : 0];
        zext_ln83_2_reg_724[5 : 0] <= zext_ln83_2_fu_488_p1[5 : 0];
        zext_ln83_3_reg_736[5 : 0] <= zext_ln83_3_fu_524_p1[5 : 0];
        zext_ln83_4_reg_748[5 : 0] <= zext_ln83_4_fu_560_p1[5 : 0];
        zext_ln83_5_reg_760[5 : 0] <= zext_ln83_5_fu_596_p1[5 : 0];
        zext_ln83_6_reg_772[5 : 0] <= zext_ln83_6_fu_632_p1[5 : 0];
        zext_ln83_reg_700[5 : 0] <= zext_ln83_fu_416_p1[5 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_629)) begin
        if ((1'b1 == ap_condition_637)) begin
            alignedA_0_address0_local = zext_ln83_6_reg_772;
        end else if ((1'b1 == ap_condition_632)) begin
            alignedA_0_address0_local = zext_ln83_5_reg_760;
        end else if (((icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd3))) begin
            alignedA_0_address0_local = zext_ln83_4_reg_748;
        end else if ((trunc_ln83_reg_696 == 2'd0)) begin
            alignedA_0_address0_local = zext_ln83_3_reg_736;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_625)) begin
        if ((1'b1 == ap_condition_649)) begin
            alignedA_0_address1_local = zext_ln83_2_reg_724;
        end else if ((1'b1 == ap_condition_644)) begin
            alignedA_0_address1_local = zext_ln83_1_reg_712;
        end else if (((icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3))) begin
            alignedA_0_address1_local = zext_ln83_reg_700;
        end else if ((trunc_ln83_reg_696 == 2'd0)) begin
            alignedA_0_address1_local = zext_ln18_fu_661_p1;
        end else begin
            alignedA_0_address1_local = 'bx;
        end
    end else begin
        alignedA_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_0_ce1_local = 1'b1;
    end else begin
        alignedA_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_0_we1_local = 1'b1;
    end else begin
        alignedA_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_629)) begin
        if ((1'b1 == ap_condition_658)) begin
            alignedA_1_address0_local = zext_ln83_6_reg_772;
        end else if ((1'b1 == ap_condition_655)) begin
            alignedA_1_address0_local = zext_ln83_5_reg_760;
        end else if (((icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd0))) begin
            alignedA_1_address0_local = zext_ln83_4_reg_748;
        end else if ((trunc_ln83_reg_696 == 2'd1)) begin
            alignedA_1_address0_local = zext_ln83_3_reg_736;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_625)) begin
        if ((1'b1 == ap_condition_665)) begin
            alignedA_1_address1_local = zext_ln83_2_reg_724;
        end else if ((1'b1 == ap_condition_662)) begin
            alignedA_1_address1_local = zext_ln83_1_reg_712;
        end else if (((icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0))) begin
            alignedA_1_address1_local = zext_ln83_reg_700;
        end else if ((trunc_ln83_reg_696 == 2'd1)) begin
            alignedA_1_address1_local = zext_ln18_fu_661_p1;
        end else begin
            alignedA_1_address1_local = 'bx;
        end
    end else begin
        alignedA_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_1_ce1_local = 1'b1;
    end else begin
        alignedA_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_1_we1_local = 1'b1;
    end else begin
        alignedA_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_629)) begin
        if ((1'b1 == ap_condition_672)) begin
            alignedA_2_address0_local = zext_ln83_6_reg_772;
        end else if ((1'b1 == ap_condition_669)) begin
            alignedA_2_address0_local = zext_ln83_5_reg_760;
        end else if (((icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd1))) begin
            alignedA_2_address0_local = zext_ln83_4_reg_748;
        end else if ((trunc_ln83_reg_696 == 2'd2)) begin
            alignedA_2_address0_local = zext_ln83_3_reg_736;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_625)) begin
        if ((1'b1 == ap_condition_679)) begin
            alignedA_2_address1_local = zext_ln83_2_reg_724;
        end else if ((1'b1 == ap_condition_676)) begin
            alignedA_2_address1_local = zext_ln83_1_reg_712;
        end else if (((icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1))) begin
            alignedA_2_address1_local = zext_ln83_reg_700;
        end else if ((trunc_ln83_reg_696 == 2'd2)) begin
            alignedA_2_address1_local = zext_ln18_fu_661_p1;
        end else begin
            alignedA_2_address1_local = 'bx;
        end
    end else begin
        alignedA_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_2_ce1_local = 1'b1;
    end else begin
        alignedA_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_2_we1_local = 1'b1;
    end else begin
        alignedA_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_629)) begin
        if ((1'b1 == ap_condition_686)) begin
            alignedA_3_address0_local = zext_ln83_6_reg_772;
        end else if ((1'b1 == ap_condition_683)) begin
            alignedA_3_address0_local = zext_ln83_5_reg_760;
        end else if (((icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd2))) begin
            alignedA_3_address0_local = zext_ln83_4_reg_748;
        end else if ((trunc_ln83_reg_696 == 2'd3)) begin
            alignedA_3_address0_local = zext_ln83_3_reg_736;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_625)) begin
        if ((1'b1 == ap_condition_693)) begin
            alignedA_3_address1_local = zext_ln83_2_reg_724;
        end else if ((1'b1 == ap_condition_690)) begin
            alignedA_3_address1_local = zext_ln83_1_reg_712;
        end else if (((icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2))) begin
            alignedA_3_address1_local = zext_ln83_reg_700;
        end else if ((trunc_ln83_reg_696 == 2'd3)) begin
            alignedA_3_address1_local = zext_ln18_fu_661_p1;
        end else begin
            alignedA_3_address1_local = 'bx;
        end
    end else begin
        alignedA_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_3_ce1_local = 1'b1;
    end else begin
        alignedA_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) &(trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2) & (icmp_ln83_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_reg_696 == 2'd3) & (icmp_ln83_reg_692 == 1'd1)))) begin
        alignedA_3_we1_local = 1'b1;
    end else begin
        alignedA_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_fu_390_p2 == 1'd0) | ((icmp_ln83_1_fu_430_p2 == 1'd0) | ((icmp_ln83_2_fu_466_p2 == 1'd0) | ((icmp_ln83_3_fu_502_p2 == 1'd0) | ((icmp_ln83_4_fu_538_p2 == 1'd0) | ((icmp_ln83_5_fu_574_p2 == 1'd0) | ((icmp_ln83_6_fu_610_p2 == 1'd0) | (icmp_ln83_7_fu_646_p2 == 1'd0)))))))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_a_str_idx_6 = b_str_idx_7;
        end else if ((1'b1 == ap_condition_622)) begin
            ap_sig_allocacmp_a_str_idx_6 = add_ln83_7_fu_669_p2;
        end else begin
            ap_sig_allocacmp_a_str_idx_6 = a_str_idx_fu_62;
        end
    end else begin
        ap_sig_allocacmp_a_str_idx_6 = a_str_idx_fu_62;
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
assign add_ln83_1_fu_436_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd2);
assign add_ln83_2_fu_472_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd3);
assign add_ln83_3_fu_508_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd4);
assign add_ln83_4_fu_544_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd5);
assign add_ln83_5_fu_580_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd6);
assign add_ln83_6_fu_616_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd7);
assign add_ln83_7_fu_669_p2 = (a_str_idx_6_reg_686 + 32'd8);
assign add_ln83_fu_400_p2 = (ap_sig_allocacmp_a_str_idx_6 + 32'd1);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_address1 = alignedA_0_address1_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_ce1 = alignedA_0_ce1_local;
assign alignedA_0_d0 = 8'd95;
assign alignedA_0_d1 = 8'd95;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_0_we1 = alignedA_0_we1_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_address1 = alignedA_1_address1_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_ce1 = alignedA_1_ce1_local;
assign alignedA_1_d0 = 8'd95;
assign alignedA_1_d1 = 8'd95;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_1_we1 = alignedA_1_we1_local;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_address1 = alignedA_2_address1_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_ce1 = alignedA_2_ce1_local;
assign alignedA_2_d0 = 8'd95;
assign alignedA_2_d1 = 8'd95;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_2_we1 = alignedA_2_we1_local;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_address1 = alignedA_3_address1_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_ce1 = alignedA_3_ce1_local;
assign alignedA_3_d0 = 8'd95;
assign alignedA_3_d1 = 8'd95;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_3_we1 = alignedA_3_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_622 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (icmp_ln83_reg_692 == 1'd1));
end
always @ (*) begin
    ap_condition_625 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_reg_692 == 1'd1));
end
always @ (*) begin
    ap_condition_629 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_4_reg_744 == 1'd1) & (icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (icmp_ln83_reg_692 == 1'd1));
end
always @ (*) begin
    ap_condition_632 = ((icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd2));
end
always @ (*) begin
    ap_condition_637 = ((icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd1));
end
always @ (*) begin
    ap_condition_644 = ((icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2));
end
always @ (*) begin
    ap_condition_649 = ((icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1));
end
always @ (*) begin
    ap_condition_655 = ((icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd3));
end
always @ (*) begin
    ap_condition_658 = ((icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd2));
end
always @ (*) begin
    ap_condition_662 = ((icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3));
end
always @ (*) begin
    ap_condition_665 = ((icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd2));
end
always @ (*) begin
    ap_condition_669 = ((icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd0));
end
always @ (*) begin
    ap_condition_672 = ((icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd3));
end
always @ (*) begin
    ap_condition_676 = ((icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0));
end
always @ (*) begin
    ap_condition_679 = ((icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd3));
end
always @ (*) begin
    ap_condition_683 = ((icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd1));
end
always @ (*) begin
    ap_condition_686 = ((icmp_ln83_7_reg_780 == 1'd1) & (icmp_ln83_6_reg_768 == 1'd1) & (icmp_ln83_5_reg_756 == 1'd1) & (trunc_ln83_reg_696 == 2'd0));
end
always @ (*) begin
    ap_condition_690 = ((icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd1));
end
always @ (*) begin
    ap_condition_693 = ((icmp_ln83_3_reg_732 == 1'd1) & (icmp_ln83_2_reg_720 == 1'd1) & (icmp_ln83_1_reg_708 == 1'd1) & (trunc_ln83_reg_696 == 2'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_430_p2 = (($signed(tmp_8_fu_420_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_466_p2 = (($signed(tmp_9_fu_456_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_502_p2 = (($signed(tmp_10_fu_492_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_4_fu_538_p2 = (($signed(tmp_11_fu_528_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_5_fu_574_p2 = (($signed(tmp_12_fu_564_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_6_fu_610_p2 = (($signed(tmp_13_fu_600_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_7_fu_646_p2 = (($signed(tmp_14_fu_636_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_390_p2 = (($signed(tmp_fu_380_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_1_fu_652_p4 = {{a_str_idx_6_reg_686[7:2]}};
assign lshr_ln83_1_fu_442_p4 = {{add_ln83_1_fu_436_p2[7:2]}};
assign lshr_ln83_2_fu_478_p4 = {{add_ln83_2_fu_472_p2[7:2]}};
assign lshr_ln83_3_fu_514_p4 = {{add_ln83_3_fu_508_p2[7:2]}};
assign lshr_ln83_4_fu_550_p4 = {{add_ln83_4_fu_544_p2[7:2]}};
assign lshr_ln83_5_fu_586_p4 = {{add_ln83_5_fu_580_p2[7:2]}};
assign lshr_ln83_6_fu_622_p4 = {{add_ln83_6_fu_616_p2[7:2]}};
assign lshr_ln_fu_406_p4 = {{add_ln83_fu_400_p2[7:2]}};
assign tmp_10_fu_492_p4 = {{add_ln83_2_fu_472_p2[31:8]}};
assign tmp_11_fu_528_p4 = {{add_ln83_3_fu_508_p2[31:8]}};
assign tmp_12_fu_564_p4 = {{add_ln83_4_fu_544_p2[31:8]}};
assign tmp_13_fu_600_p4 = {{add_ln83_5_fu_580_p2[31:8]}};
assign tmp_14_fu_636_p4 = {{add_ln83_6_fu_616_p2[31:8]}};
assign tmp_8_fu_420_p4 = {{add_ln83_fu_400_p2[31:8]}};
assign tmp_9_fu_456_p4 = {{add_ln83_1_fu_436_p2[31:8]}};
assign tmp_fu_380_p4 = {{ap_sig_allocacmp_a_str_idx_6[31:8]}};
assign trunc_ln83_fu_396_p1 = ap_sig_allocacmp_a_str_idx_6[1:0];
assign zext_ln18_fu_661_p1 = lshr_ln18_1_fu_652_p4;
assign zext_ln83_1_fu_452_p1 = lshr_ln83_1_fu_442_p4;
assign zext_ln83_2_fu_488_p1 = lshr_ln83_2_fu_478_p4;
assign zext_ln83_3_fu_524_p1 = lshr_ln83_3_fu_514_p4;
assign zext_ln83_4_fu_560_p1 = lshr_ln83_4_fu_550_p4;
assign zext_ln83_5_fu_596_p1 = lshr_ln83_5_fu_586_p4;
assign zext_ln83_6_fu_632_p1 = lshr_ln83_6_fu_622_p4;
assign zext_ln83_fu_416_p1 = lshr_ln_fu_406_p4;
always @ (posedge ap_clk) begin
    zext_ln83_reg_700[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_712[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_724[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_736[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_748[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_760[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_772[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
