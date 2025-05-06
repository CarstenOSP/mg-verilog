
module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ctx_load,k_address0,k_ce0,k_q0,p_partset113_out,p_partset113_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [767:0] ctx_load;
output  [4:0] k_address0;
output   k_ce0;
input  [7:0] k_q0;
output  [767:0] p_partset113_out;
output   p_partset113_out_ap_vld;
reg ap_idle;
reg p_partset113_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln134_fu_115_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln134_reg_336;
wire   [4:0] trunc_ln135_fu_132_p1;
reg   [4:0] trunc_ln135_reg_345;
reg   [4:0] trunc_ln135_reg_345_pp0_iter1_reg;
reg   [7:0] k_load_reg_351;
wire   [63:0] zext_ln134_fu_127_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] i_fu_68;
wire   [5:0] add_ln134_fu_121_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_8;
reg   [767:0] p_partset113_fu_72;
wire   [767:0] or_ln135_1_fu_304_p3;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage0_01001;
reg    k_ce0_local;
wire   [7:0] shl_ln_fu_144_p3;
wire   [8:0] zext_ln135_fu_151_p1;
wire   [9:0] zext_ln135_cast_fu_155_p3;
wire   [767:0] zext_ln135_2_fu_163_p1;
wire   [767:0] zext_ln135_1_fu_173_p1;
wire   [8:0] zext_ln135_4_cast_fu_185_p4;
wire   [511:0] zext_ln135_4_fu_194_p1;
wire   [511:0] shl_ln135_2_fu_198_p2;
wire   [511:0] zext_ln135_3_fu_176_p1;
wire   [767:0] shl_ln135_fu_167_p2;
wire   [511:0] trunc_ln135_1_fu_214_p1;
wire   [767:0] xor_ln135_fu_218_p2;
wire   [512:0] zext_ln135_5_fu_204_p1;
wire  signed [512:0] xor_ln135_1_fu_240_p2;
wire   [511:0] trunc_ln135_2_fu_230_p1;
wire   [511:0] xor_ln135_2_fu_224_p2;
wire   [767:0] shl_ln135_1_fu_179_p2;
wire   [767:0] and_ln135_fu_234_p2;
wire   [511:0] trunc_ln135_3_fu_256_p1;
wire   [511:0] and_ln135_2_fu_250_p2;
wire   [767:0] or_ln135_fu_260_p2;
wire  signed [767:0] sext_ln135_fu_246_p1;
wire   [511:0] or_ln135_2_fu_270_p2;
wire   [511:0] trunc_ln135_4_fu_266_p1;
wire   [511:0] and_ln135_3_fu_282_p2;
wire   [511:0] shl_ln135_3_fu_208_p2;
wire   [767:0] and_ln135_1_fu_276_p2;
wire   [255:0] tmp_s_fu_294_p4;
wire   [511:0] or_ln135_3_fu_288_p2;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_68 = 6'd0;
#0 p_partset113_fu_72 = 768'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln134_fu_115_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_68 <= add_ln134_fu_121_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            p_partset113_fu_72 <= ctx_load;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            p_partset113_fu_72 <= or_ln135_1_fu_304_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln134_reg_336 <= icmp_ln134_fu_115_p2;
        k_load_reg_351 <= k_q0;
        trunc_ln135_reg_345 <= trunc_ln135_fu_132_p1;
        trunc_ln135_reg_345_pp0_iter1_reg <= trunc_ln135_reg_345;
    end
end
always @ (*) begin
    if (((icmp_ln134_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_8 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_ce0_local = 1'b1;
    end else begin
        k_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln134_reg_336 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        p_partset113_out_ap_vld = 1'b1;
    end else begin
        p_partset113_out_ap_vld = 1'b0;
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
assign add_ln134_fu_121_p2 = (ap_sig_allocacmp_i_8 + 6'd1);
assign and_ln135_1_fu_276_p2 = (sext_ln135_fu_246_p1 & or_ln135_fu_260_p2);
assign and_ln135_2_fu_250_p2 = (xor_ln135_2_fu_224_p2 & trunc_ln135_2_fu_230_p1);
assign and_ln135_3_fu_282_p2 = (trunc_ln135_4_fu_266_p1 & or_ln135_2_fu_270_p2);
assign and_ln135_fu_234_p2 = (xor_ln135_fu_218_p2 & p_partset113_fu_72);
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
assign icmp_ln134_fu_115_p2 = ((ap_sig_allocacmp_i_8 == 6'd32) ? 1'b1 : 1'b0);
assign k_address0 = zext_ln134_fu_127_p1;
assign k_ce0 = k_ce0_local;
assign or_ln135_1_fu_304_p3 = {{tmp_s_fu_294_p4}, {or_ln135_3_fu_288_p2}};
assign or_ln135_2_fu_270_p2 = (trunc_ln135_3_fu_256_p1 | and_ln135_2_fu_250_p2);
assign or_ln135_3_fu_288_p2 = (shl_ln135_3_fu_208_p2 | and_ln135_3_fu_282_p2);
assign or_ln135_fu_260_p2 = (shl_ln135_1_fu_179_p2 | and_ln135_fu_234_p2);
assign p_partset113_out = p_partset113_fu_72;
assign sext_ln135_fu_246_p1 = xor_ln135_1_fu_240_p2;
assign shl_ln135_1_fu_179_p2 = zext_ln135_1_fu_173_p1 << zext_ln135_2_fu_163_p1;
assign shl_ln135_2_fu_198_p2 = 512'd255 << zext_ln135_4_fu_194_p1;
assign shl_ln135_3_fu_208_p2 = zext_ln135_3_fu_176_p1 << zext_ln135_4_fu_194_p1;
assign shl_ln135_fu_167_p2 = 768'd255 << zext_ln135_2_fu_163_p1;
assign shl_ln_fu_144_p3 = {{trunc_ln135_reg_345_pp0_iter1_reg}, {3'd0}};
assign tmp_s_fu_294_p4 = {{and_ln135_1_fu_276_p2[767:512]}};
assign trunc_ln135_1_fu_214_p1 = shl_ln135_fu_167_p2[511:0];
assign trunc_ln135_2_fu_230_p1 = p_partset113_fu_72[511:0];
assign trunc_ln135_3_fu_256_p1 = shl_ln135_1_fu_179_p2[511:0];
assign trunc_ln135_4_fu_266_p1 = xor_ln135_1_fu_240_p2[511:0];
assign trunc_ln135_fu_132_p1 = ap_sig_allocacmp_i_8[4:0];
assign xor_ln135_1_fu_240_p2 = (zext_ln135_5_fu_204_p1 ^ 513'd26815615859885194199148049996411692254958731641184786755447122887443528060147093953603748596333806855380063716372972101707507765623893139892867298012168191);
assign xor_ln135_2_fu_224_p2 = (trunc_ln135_1_fu_214_p1 ^ 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095);
assign xor_ln135_fu_218_p2 = (shl_ln135_fu_167_p2 ^ 768'd1552518092300708935148979488462502555256886017116696611139052038026050952686376886330878408828646477950487730697131073206171580044114814391444287275041181139204454976020849905550265285631598444825262999193716468750892846853816057855);
assign zext_ln134_fu_127_p1 = ap_sig_allocacmp_i_8;
assign zext_ln135_1_fu_173_p1 = k_load_reg_351;
assign zext_ln135_2_fu_163_p1 = zext_ln135_cast_fu_155_p3;
assign zext_ln135_3_fu_176_p1 = k_load_reg_351;
assign zext_ln135_4_cast_fu_185_p4 = {{{{1'd1}, {trunc_ln135_reg_345_pp0_iter1_reg}}}, {3'd0}};
assign zext_ln135_4_fu_194_p1 = zext_ln135_4_cast_fu_185_p4;
assign zext_ln135_5_fu_204_p1 = shl_ln135_2_fu_198_p2;
assign zext_ln135_cast_fu_155_p3 = {{1'd1}, {zext_ln135_fu_151_p1}};
assign zext_ln135_fu_151_p1 = shl_ln_fu_144_p3;
endmodule 
