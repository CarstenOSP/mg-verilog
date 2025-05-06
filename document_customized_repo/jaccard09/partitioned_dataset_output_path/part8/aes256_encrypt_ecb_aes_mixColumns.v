
module aes256_encrypt_ecb_aes_mixColumns (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_i,buf_0_o,buf_0_o_ap_vld,buf_1_i,buf_1_o,buf_1_o_ap_vld,buf_2_i,buf_2_o,buf_2_o_ap_vld,buf_3_i,buf_3_o,buf_3_o_ap_vld,buf_4_i,buf_4_o,buf_4_o_ap_vld,buf_5_i,buf_5_o,buf_5_o_ap_vld,buf_6_i,buf_6_o,buf_6_o_ap_vld,buf_7_i,buf_7_o,buf_7_o_ap_vld,buf_8_i,buf_8_o,buf_8_o_ap_vld,buf_9_i,buf_9_o,buf_9_o_ap_vld,buf_10_i,buf_10_o,buf_10_o_ap_vld,buf_11_i,buf_11_o,buf_11_o_ap_vld,buf_12_i,buf_12_o,buf_12_o_ap_vld,buf_13_i,buf_13_o,buf_13_o_ap_vld,buf_14_i,buf_14_o,buf_14_o_ap_vld,buf_15_i,buf_15_o,buf_15_o_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] buf_0_i;
output  [7:0] buf_0_o;
output   buf_0_o_ap_vld;
input  [7:0] buf_1_i;
output  [7:0] buf_1_o;
output   buf_1_o_ap_vld;
input  [7:0] buf_2_i;
output  [7:0] buf_2_o;
output   buf_2_o_ap_vld;
input  [7:0] buf_3_i;
output  [7:0] buf_3_o;
output   buf_3_o_ap_vld;
input  [7:0] buf_4_i;
output  [7:0] buf_4_o;
output   buf_4_o_ap_vld;
input  [7:0] buf_5_i;
output  [7:0] buf_5_o;
output   buf_5_o_ap_vld;
input  [7:0] buf_6_i;
output  [7:0] buf_6_o;
output   buf_6_o_ap_vld;
input  [7:0] buf_7_i;
output  [7:0] buf_7_o;
output   buf_7_o_ap_vld;
input  [7:0] buf_8_i;
output  [7:0] buf_8_o;
output   buf_8_o_ap_vld;
input  [7:0] buf_9_i;
output  [7:0] buf_9_o;
output   buf_9_o_ap_vld;
input  [7:0] buf_10_i;
output  [7:0] buf_10_o;
output   buf_10_o_ap_vld;
input  [7:0] buf_11_i;
output  [7:0] buf_11_o;
output   buf_11_o_ap_vld;
input  [7:0] buf_12_i;
output  [7:0] buf_12_o;
output   buf_12_o_ap_vld;
input  [7:0] buf_13_i;
output  [7:0] buf_13_o;
output   buf_13_o_ap_vld;
input  [7:0] buf_14_i;
output  [7:0] buf_14_o;
output   buf_14_o_ap_vld;
input  [7:0] buf_15_i;
output  [7:0] buf_15_o;
output   buf_15_o_ap_vld;
reg ap_idle;
reg[7:0] buf_0_o;
reg buf_0_o_ap_vld;
reg[7:0] buf_1_o;
reg buf_1_o_ap_vld;
reg[7:0] buf_2_o;
reg buf_2_o_ap_vld;
reg[7:0] buf_3_o;
reg buf_3_o_ap_vld;
reg[7:0] buf_4_o;
reg buf_4_o_ap_vld;
reg[7:0] buf_5_o;
reg buf_5_o_ap_vld;
reg[7:0] buf_6_o;
reg buf_6_o_ap_vld;
reg[7:0] buf_7_o;
reg buf_7_o_ap_vld;
reg[7:0] buf_8_o;
reg buf_8_o_ap_vld;
reg[7:0] buf_9_o;
reg buf_9_o_ap_vld;
reg[7:0] buf_10_o;
reg buf_10_o_ap_vld;
reg[7:0] buf_11_o;
reg buf_11_o_ap_vld;
reg[7:0] buf_12_o;
reg buf_12_o_ap_vld;
reg[7:0] buf_13_o;
reg buf_13_o_ap_vld;
reg[7:0] buf_14_o;
reg buf_14_o_ap_vld;
reg[7:0] buf_15_o;
reg buf_15_o_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_302_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [7:0] a_fu_316_p3;
reg   [7:0] a_reg_815;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] b_fu_334_p3;
reg   [7:0] b_reg_822;
wire   [7:0] c_fu_342_p3;
reg   [7:0] c_reg_829;
wire   [7:0] d_fu_350_p3;
reg   [7:0] d_reg_836;
wire   [7:0] a_2_fu_374_p3;
reg   [7:0] a_2_reg_844;
wire   [7:0] b_2_fu_382_p3;
reg   [7:0] b_2_reg_851;
wire   [7:0] c_2_fu_390_p3;
reg   [7:0] c_2_reg_858;
wire   [7:0] d_2_fu_398_p3;
reg   [7:0] d_2_reg_865;
wire   [0:0] icmp_ln99_fu_406_p2;
reg   [0:0] icmp_ln99_reg_873;
wire   [0:0] icmp_ln99_1_fu_412_p2;
reg   [0:0] icmp_ln99_1_reg_877;
wire   [0:0] icmp_ln99_2_fu_418_p2;
reg   [0:0] icmp_ln99_2_reg_881;
reg   [4:0] i_fu_82;
wire   [4:0] add_ln95_fu_424_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0;
wire   [7:0] xor_ln99_1_fu_482_p2;
wire    ap_block_pp0_stage0_01001;
wire   [7:0] xor_ln99_4_fu_527_p2;
wire   [7:0] xor_ln100_2_fu_573_p2;
wire   [7:0] xor_ln100_4_fu_612_p2;
wire   [7:0] xor_ln99_7_fu_699_p2;
wire   [7:0] xor_ln99_9_fu_712_p2;
wire   [7:0] xor_ln100_7_fu_758_p2;
wire   [7:0] xor_ln100_9_fu_797_p2;
wire   [0:0] icmp_ln97_fu_310_p2;
wire   [3:0] trunc_ln97_fu_324_p1;
wire   [0:0] icmp_ln97_1_fu_328_p2;
wire   [0:0] tmp_5_fu_358_p3;
wire   [3:0] or_ln_fu_366_p3;
wire   [7:0] xor_ln98_fu_435_p2;
wire   [7:0] xor_ln98_1_fu_439_p2;
wire   [7:0] shl_ln50_fu_457_p2;
wire   [0:0] tmp_1_fu_449_p3;
wire   [7:0] xor_ln50_fu_463_p2;
wire   [7:0] e_fu_444_p2;
wire   [7:0] xor_ln99_fu_477_p2;
wire   [7:0] select_ln50_fu_469_p3;
wire   [7:0] xor_ln99_2_fu_490_p2;
wire   [7:0] shl_ln50_1_fu_502_p2;
wire   [0:0] tmp_2_fu_494_p3;
wire   [7:0] xor_ln50_1_fu_508_p2;
wire   [7:0] xor_ln99_3_fu_522_p2;
wire   [7:0] select_ln50_1_fu_514_p3;
wire   [7:0] xor_ln100_fu_535_p2;
wire   [7:0] shl_ln50_2_fu_547_p2;
wire   [0:0] tmp_3_fu_539_p3;
wire   [7:0] xor_ln50_2_fu_553_p2;
wire   [7:0] select_ln50_2_fu_559_p3;
wire   [7:0] xor_ln100_1_fu_567_p2;
wire   [7:0] xor_ln100_3_fu_580_p2;
wire   [7:0] shl_ln50_3_fu_592_p2;
wire   [0:0] tmp_4_fu_584_p3;
wire   [7:0] xor_ln50_3_fu_598_p2;
wire   [7:0] select_ln50_3_fu_604_p3;
wire   [7:0] xor_ln98_3_fu_620_p2;
wire   [7:0] shl_ln50_4_fu_632_p2;
wire   [0:0] tmp_6_fu_624_p3;
wire   [7:0] xor_ln50_4_fu_638_p2;
wire   [7:0] xor_ln99_5_fu_657_p2;
wire   [7:0] shl_ln50_5_fu_669_p2;
wire   [0:0] tmp_7_fu_661_p3;
wire   [7:0] xor_ln50_5_fu_675_p2;
wire   [7:0] xor_ln98_4_fu_652_p2;
wire   [7:0] e_2_fu_689_p2;
wire   [7:0] xor_ln99_6_fu_694_p2;
wire   [7:0] select_ln50_4_fu_644_p3;
wire   [7:0] xor_ln99_8_fu_707_p2;
wire   [7:0] select_ln50_5_fu_681_p3;
wire   [7:0] xor_ln100_5_fu_720_p2;
wire   [7:0] shl_ln50_6_fu_732_p2;
wire   [0:0] tmp_8_fu_724_p3;
wire   [7:0] xor_ln50_6_fu_738_p2;
wire   [7:0] select_ln50_6_fu_744_p3;
wire   [7:0] xor_ln100_6_fu_752_p2;
wire   [7:0] xor_ln100_8_fu_765_p2;
wire   [7:0] shl_ln50_7_fu_777_p2;
wire   [0:0] tmp_9_fu_769_p3;
wire   [7:0] xor_ln50_7_fu_783_p2;
wire   [7:0] select_ln50_7_fu_789_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 i_fu_82 = 5'd0;
#0 ap_done_reg = 1'b0;
end
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_302_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= add_ln95_fu_424_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_2_reg_844 <= a_2_fu_374_p3;
        a_reg_815 <= a_fu_316_p3;
        b_2_reg_851 <= b_2_fu_382_p3;
        b_reg_822 <= b_fu_334_p3;
        c_2_reg_858 <= c_2_fu_390_p3;
        c_reg_829 <= c_fu_342_p3;
        d_2_reg_865 <= d_2_fu_398_p3;
        d_reg_836 <= d_fu_350_p3;
        icmp_ln99_1_reg_877 <= icmp_ln99_1_fu_412_p2;
        icmp_ln99_2_reg_881 <= icmp_ln99_2_fu_418_p2;
        icmp_ln99_reg_873 <= icmp_ln99_fu_406_p2;
    end
end
always @ (*) begin
    if (((tmp_fu_302_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd1))) begin
        buf_0_o = xor_ln99_1_fu_482_p2;
    end else begin
        buf_0_o = buf_0_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd1))) begin
        buf_0_o_ap_vld = 1'b1;
    end else begin
        buf_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_10_o = xor_ln100_2_fu_573_p2;
    end else begin
        buf_10_o = buf_10_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_10_o_ap_vld = 1'b1;
    end else begin
        buf_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_11_o = xor_ln100_4_fu_612_p2;
    end else begin
        buf_11_o = buf_11_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_11_o_ap_vld = 1'b1;
    end else begin
        buf_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd0))) begin
        buf_12_o = xor_ln99_7_fu_699_p2;
    end else begin
        buf_12_o = buf_12_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd0))) begin
        buf_12_o_ap_vld = 1'b1;
    end else begin
        buf_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_13_o = xor_ln99_9_fu_712_p2;
    end else begin
        buf_13_o = buf_13_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_13_o_ap_vld = 1'b1;
    end else begin
        buf_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_14_o = xor_ln100_7_fu_758_p2;
    end else begin
        buf_14_o = buf_14_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_14_o_ap_vld = 1'b1;
    end else begin
        buf_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_15_o = xor_ln100_9_fu_797_p2;
    end else begin
        buf_15_o = buf_15_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd0))) begin
        buf_15_o_ap_vld = 1'b1;
    end else begin
        buf_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_1_o = xor_ln99_4_fu_527_p2;
    end else begin
        buf_1_o = buf_1_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_1_o_ap_vld = 1'b1;
    end else begin
        buf_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_2_o = xor_ln100_2_fu_573_p2;
    end else begin
        buf_2_o = buf_2_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_2_o_ap_vld = 1'b1;
    end else begin
        buf_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_3_o = xor_ln100_4_fu_612_p2;
    end else begin
        buf_3_o = buf_3_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd1))) begin
        buf_3_o_ap_vld = 1'b1;
    end else begin
        buf_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd1))) begin
        buf_4_o = xor_ln99_7_fu_699_p2;
    end else begin
        buf_4_o = buf_4_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd1))) begin
        buf_4_o_ap_vld = 1'b1;
    end else begin
        buf_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_5_o = xor_ln99_9_fu_712_p2;
    end else begin
        buf_5_o = buf_5_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_5_o_ap_vld = 1'b1;
    end else begin
        buf_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_6_o = xor_ln100_7_fu_758_p2;
    end else begin
        buf_6_o = buf_6_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_6_o_ap_vld = 1'b1;
    end else begin
        buf_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_7_o = xor_ln100_9_fu_797_p2;
    end else begin
        buf_7_o = buf_7_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_2_reg_881 == 1'd1))) begin
        buf_7_o_ap_vld = 1'b1;
    end else begin
        buf_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd0))) begin
        buf_8_o = xor_ln99_1_fu_482_p2;
    end else begin
        buf_8_o = buf_8_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_reg_873 == 1'd0))) begin
        buf_8_o_ap_vld = 1'b1;
    end else begin
        buf_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_9_o = xor_ln99_4_fu_527_p2;
    end else begin
        buf_9_o = buf_9_i;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln99_1_reg_877 == 1'd0))) begin
        buf_9_o_ap_vld = 1'b1;
    end else begin
        buf_9_o_ap_vld = 1'b0;
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
assign a_2_fu_374_p3 = ((icmp_ln97_fu_310_p2[0:0] == 1'b1) ? buf_12_i : buf_4_i);
assign a_fu_316_p3 = ((icmp_ln97_fu_310_p2[0:0] == 1'b1) ? buf_8_i : buf_0_i);
assign add_ln95_fu_424_p2 = (ap_sig_allocacmp_i_1 + 5'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign b_2_fu_382_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_13_i : buf_5_i);
assign b_fu_334_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_9_i : buf_1_i);
assign c_2_fu_390_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_14_i : buf_6_i);
assign c_fu_342_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_10_i : buf_2_i);
assign d_2_fu_398_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_15_i : buf_7_i);
assign d_fu_350_p3 = ((icmp_ln97_1_fu_328_p2[0:0] == 1'b1) ? buf_11_i : buf_3_i);
assign e_2_fu_689_p2 = (xor_ln98_4_fu_652_p2 ^ d_2_reg_865);
assign e_fu_444_p2 = (xor_ln98_1_fu_439_p2 ^ d_reg_836);
assign icmp_ln97_1_fu_328_p2 = ((trunc_ln97_fu_324_p1 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln97_fu_310_p2 = ((ap_sig_allocacmp_i_1 == 5'd8) ? 1'b1 : 1'b0);
assign icmp_ln99_1_fu_412_p2 = ((trunc_ln97_fu_324_p1 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln99_2_fu_418_p2 = ((or_ln_fu_366_p3 == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln99_fu_406_p2 = ((ap_sig_allocacmp_i_1 == 5'd0) ? 1'b1 : 1'b0);
assign or_ln_fu_366_p3 = {{tmp_5_fu_358_p3}, {3'd4}};
assign select_ln50_1_fu_514_p3 = ((tmp_2_fu_494_p3[0:0] == 1'b1) ? xor_ln50_1_fu_508_p2 : shl_ln50_1_fu_502_p2);
assign select_ln50_2_fu_559_p3 = ((tmp_3_fu_539_p3[0:0] == 1'b1) ? xor_ln50_2_fu_553_p2 : shl_ln50_2_fu_547_p2);
assign select_ln50_3_fu_604_p3 = ((tmp_4_fu_584_p3[0:0] == 1'b1) ? xor_ln50_3_fu_598_p2 : shl_ln50_3_fu_592_p2);
assign select_ln50_4_fu_644_p3 = ((tmp_6_fu_624_p3[0:0] == 1'b1) ? xor_ln50_4_fu_638_p2 : shl_ln50_4_fu_632_p2);
assign select_ln50_5_fu_681_p3 = ((tmp_7_fu_661_p3[0:0] == 1'b1) ? xor_ln50_5_fu_675_p2 : shl_ln50_5_fu_669_p2);
assign select_ln50_6_fu_744_p3 = ((tmp_8_fu_724_p3[0:0] == 1'b1) ? xor_ln50_6_fu_738_p2 : shl_ln50_6_fu_732_p2);
assign select_ln50_7_fu_789_p3 = ((tmp_9_fu_769_p3[0:0] == 1'b1) ? xor_ln50_7_fu_783_p2 : shl_ln50_7_fu_777_p2);
assign select_ln50_fu_469_p3 = ((tmp_1_fu_449_p3[0:0] == 1'b1) ? xor_ln50_fu_463_p2 : shl_ln50_fu_457_p2);
assign shl_ln50_1_fu_502_p2 = xor_ln99_2_fu_490_p2 << 8'd1;
assign shl_ln50_2_fu_547_p2 = xor_ln100_fu_535_p2 << 8'd1;
assign shl_ln50_3_fu_592_p2 = xor_ln100_3_fu_580_p2 << 8'd1;
assign shl_ln50_4_fu_632_p2 = xor_ln98_3_fu_620_p2 << 8'd1;
assign shl_ln50_5_fu_669_p2 = xor_ln99_5_fu_657_p2 << 8'd1;
assign shl_ln50_6_fu_732_p2 = xor_ln100_5_fu_720_p2 << 8'd1;
assign shl_ln50_7_fu_777_p2 = xor_ln100_8_fu_765_p2 << 8'd1;
assign shl_ln50_fu_457_p2 = xor_ln98_fu_435_p2 << 8'd1;
assign tmp_1_fu_449_p3 = xor_ln98_fu_435_p2[32'd7];
assign tmp_2_fu_494_p3 = xor_ln99_2_fu_490_p2[32'd7];
assign tmp_3_fu_539_p3 = xor_ln100_fu_535_p2[32'd7];
assign tmp_4_fu_584_p3 = xor_ln100_3_fu_580_p2[32'd7];
assign tmp_5_fu_358_p3 = ap_sig_allocacmp_i_1[32'd3];
assign tmp_6_fu_624_p3 = xor_ln98_3_fu_620_p2[32'd7];
assign tmp_7_fu_661_p3 = xor_ln99_5_fu_657_p2[32'd7];
assign tmp_8_fu_724_p3 = xor_ln100_5_fu_720_p2[32'd7];
assign tmp_9_fu_769_p3 = xor_ln100_8_fu_765_p2[32'd7];
assign tmp_fu_302_p3 = ap_sig_allocacmp_i_1[32'd4];
assign trunc_ln97_fu_324_p1 = ap_sig_allocacmp_i_1[3:0];
assign xor_ln100_1_fu_567_p2 = (xor_ln98_fu_435_p2 ^ select_ln50_2_fu_559_p3);
assign xor_ln100_2_fu_573_p2 = (xor_ln100_1_fu_567_p2 ^ d_reg_836);
assign xor_ln100_3_fu_580_p2 = (d_reg_836 ^ a_reg_815);
assign xor_ln100_4_fu_612_p2 = (xor_ln98_1_fu_439_p2 ^ select_ln50_3_fu_604_p3);
assign xor_ln100_5_fu_720_p2 = (d_2_reg_865 ^ c_2_reg_858);
assign xor_ln100_6_fu_752_p2 = (xor_ln98_3_fu_620_p2 ^ select_ln50_6_fu_744_p3);
assign xor_ln100_7_fu_758_p2 = (xor_ln100_6_fu_752_p2 ^ d_2_reg_865);
assign xor_ln100_8_fu_765_p2 = (d_2_reg_865 ^ a_2_reg_844);
assign xor_ln100_9_fu_797_p2 = (xor_ln98_4_fu_652_p2 ^ select_ln50_7_fu_789_p3);
assign xor_ln100_fu_535_p2 = (d_reg_836 ^ c_reg_829);
assign xor_ln50_1_fu_508_p2 = (shl_ln50_1_fu_502_p2 ^ 8'd27);
assign xor_ln50_2_fu_553_p2 = (shl_ln50_2_fu_547_p2 ^ 8'd27);
assign xor_ln50_3_fu_598_p2 = (shl_ln50_3_fu_592_p2 ^ 8'd27);
assign xor_ln50_4_fu_638_p2 = (shl_ln50_4_fu_632_p2 ^ 8'd27);
assign xor_ln50_5_fu_675_p2 = (shl_ln50_5_fu_669_p2 ^ 8'd27);
assign xor_ln50_6_fu_738_p2 = (shl_ln50_6_fu_732_p2 ^ 8'd27);
assign xor_ln50_7_fu_783_p2 = (shl_ln50_7_fu_777_p2 ^ 8'd27);
assign xor_ln50_fu_463_p2 = (shl_ln50_fu_457_p2 ^ 8'd27);
assign xor_ln98_1_fu_439_p2 = (xor_ln98_fu_435_p2 ^ c_reg_829);
assign xor_ln98_3_fu_620_p2 = (b_2_reg_851 ^ a_2_reg_844);
assign xor_ln98_4_fu_652_p2 = (xor_ln98_3_fu_620_p2 ^ c_2_reg_858);
assign xor_ln98_fu_435_p2 = (b_reg_822 ^ a_reg_815);
assign xor_ln99_1_fu_482_p2 = (xor_ln99_fu_477_p2 ^ select_ln50_fu_469_p3);
assign xor_ln99_2_fu_490_p2 = (c_reg_829 ^ b_reg_822);
assign xor_ln99_3_fu_522_p2 = (e_fu_444_p2 ^ b_reg_822);
assign xor_ln99_4_fu_527_p2 = (xor_ln99_3_fu_522_p2 ^ select_ln50_1_fu_514_p3);
assign xor_ln99_5_fu_657_p2 = (c_2_reg_858 ^ b_2_reg_851);
assign xor_ln99_6_fu_694_p2 = (e_2_fu_689_p2 ^ a_2_reg_844);
assign xor_ln99_7_fu_699_p2 = (xor_ln99_6_fu_694_p2 ^ select_ln50_4_fu_644_p3);
assign xor_ln99_8_fu_707_p2 = (e_2_fu_689_p2 ^ b_2_reg_851);
assign xor_ln99_9_fu_712_p2 = (xor_ln99_8_fu_707_p2 ^ select_ln50_5_fu_681_p3);
assign xor_ln99_fu_477_p2 = (e_fu_444_p2 ^ a_reg_815);
endmodule 
