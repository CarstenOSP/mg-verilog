
module fft1D_512_loady8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_ce,x_0_address0,x_0_ce0,x_0_q0,x_0_address1,x_0_ce1,x_0_q1,x_1_address0,x_1_ce0,x_1_q0,x_1_address1,x_1_ce1,x_1_q1,offset,ap_return_0,ap_return_1,ap_return_2,ap_return_3,ap_return_4,ap_return_5,ap_return_6,ap_return_7);  
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
input   ap_ce;
output  [8:0] x_0_address0;
output   x_0_ce0;
input  [63:0] x_0_q0;
output  [8:0] x_0_address1;
output   x_0_ce1;
input  [63:0] x_0_q1;
output  [8:0] x_1_address0;
output   x_1_ce0;
input  [63:0] x_1_q0;
output  [8:0] x_1_address1;
output   x_1_ce1;
input  [63:0] x_1_q1;
input  [8:0] offset;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;
output  [63:0] ap_return_2;
output  [63:0] ap_return_3;
output  [63:0] ap_return_4;
output  [63:0] ap_return_5;
output  [63:0] ap_return_6;
output  [63:0] ap_return_7;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_block_pp0_stage3_subdone;
wire   [0:0] trunc_ln102_fu_202_p1;
reg   [0:0] trunc_ln102_reg_430;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln102_1_fu_206_p1;
reg   [9:0] zext_ln102_1_reg_438;
wire   [63:0] grp_fu_188_p3;
reg   [63:0] select_ln103_reg_468;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_195_p3;
reg   [63:0] select_ln104_reg_473;
reg   [63:0] select_ln105_reg_498;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] select_ln106_reg_503;
reg   [63:0] select_ln107_reg_528;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] select_ln108_reg_533;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln102_fu_220_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_fu_242_p1;
wire   [63:0] zext_ln105_fu_263_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln106_fu_284_p1;
wire   [63:0] zext_ln107_fu_305_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln108_fu_326_p1;
wire   [63:0] zext_ln109_fu_347_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln110_fu_368_p1;
reg    x_0_ce1_local;
reg   [8:0] x_0_address1_local;
reg    x_0_ce0_local;
reg   [8:0] x_0_address0_local;
reg    x_1_ce1_local;
reg   [8:0] x_1_address1_local;
reg    x_1_ce0_local;
reg   [8:0] x_1_address0_local;
wire   [7:0] lshr_ln_fu_210_p4;
wire   [9:0] add_ln104_fu_226_p2;
wire   [8:0] lshr_ln1_fu_232_p4;
wire   [9:0] add_ln105_fu_248_p2;
wire   [8:0] lshr_ln2_fu_253_p4;
wire   [9:0] add_ln106_fu_269_p2;
wire   [8:0] lshr_ln3_fu_274_p4;
wire   [9:0] add_ln107_fu_290_p2;
wire   [8:0] lshr_ln4_fu_295_p4;
wire   [9:0] add_ln108_fu_311_p2;
wire   [8:0] lshr_ln5_fu_316_p4;
wire   [9:0] add_ln109_fu_332_p2;
wire   [8:0] lshr_ln6_fu_337_p4;
wire   [9:0] add_ln110_fu_353_p2;
wire   [8:0] lshr_ln7_fu_358_p4;
wire   [63:0] select_ln109_fu_374_p3;
wire   [63:0] select_ln110_fu_381_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_ce))) begin
        select_ln103_reg_468 <= grp_fu_188_p3;
        select_ln104_reg_473 <= grp_fu_195_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln105_reg_498 <= grp_fu_188_p3;
        select_ln106_reg_503 <= grp_fu_195_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln107_reg_528 <= grp_fu_188_p3;
        select_ln108_reg_533 <= grp_fu_195_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln102_reg_430 <= trunc_ln102_fu_202_p1;
        zext_ln102_1_reg_438[8 : 0] <= zext_ln102_1_fu_206_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_0_address0_local = zext_ln110_fu_368_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_0_address0_local = zext_ln108_fu_326_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_0_address0_local = zext_ln106_fu_284_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_0_address0_local = zext_ln104_fu_242_p1;
        end else begin
            x_0_address0_local = 'bx;
        end
    end else begin
        x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_0_address1_local = zext_ln109_fu_347_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_0_address1_local = zext_ln107_fu_305_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_0_address1_local = zext_ln105_fu_263_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_0_address1_local = zext_ln102_fu_220_p1;
        end else begin
            x_0_address1_local = 'bx;
        end
    end else begin
        x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_ce)))) begin
        x_0_ce0_local = 1'b1;
    end else begin
        x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_ce)))) begin
        x_0_ce1_local = 1'b1;
    end else begin
        x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_1_address0_local = zext_ln110_fu_368_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_1_address0_local = zext_ln108_fu_326_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_1_address0_local = zext_ln106_fu_284_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_1_address0_local = zext_ln104_fu_242_p1;
        end else begin
            x_1_address0_local = 'bx;
        end
    end else begin
        x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            x_1_address1_local = zext_ln109_fu_347_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            x_1_address1_local = zext_ln107_fu_305_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_1_address1_local = zext_ln105_fu_263_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_1_address1_local = zext_ln102_fu_220_p1;
        end else begin
            x_1_address1_local = 'bx;
        end
    end else begin
        x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_ce)))) begin
        x_1_ce0_local = 1'b1;
    end else begin
        x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_ce)))) begin
        x_1_ce1_local = 1'b1;
    end else begin
        x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & ~((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((ap_reset_start_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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
assign add_ln104_fu_226_p2 = (zext_ln102_1_fu_206_p1 + 10'd8);
assign add_ln105_fu_248_p2 = (zext_ln102_1_reg_438 + 10'd16);
assign add_ln106_fu_269_p2 = (zext_ln102_1_reg_438 + 10'd24);
assign add_ln107_fu_290_p2 = (zext_ln102_1_reg_438 + 10'd32);
assign add_ln108_fu_311_p2 = (zext_ln102_1_reg_438 + 10'd40);
assign add_ln109_fu_332_p2 = (zext_ln102_1_reg_438 + 10'd48);
assign add_ln110_fu_353_p2 = (zext_ln102_1_reg_438 + 10'd56);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return_0 = select_ln103_reg_468;
assign ap_return_1 = select_ln104_reg_473;
assign ap_return_2 = select_ln105_reg_498;
assign ap_return_3 = select_ln106_reg_503;
assign ap_return_4 = select_ln107_reg_528;
assign ap_return_5 = select_ln108_reg_533;
assign ap_return_6 = select_ln109_fu_374_p3;
assign ap_return_7 = select_ln110_fu_381_p3;
assign grp_fu_188_p3 = ((trunc_ln102_reg_430[0:0] == 1'b1) ? x_1_q1 : x_0_q1);
assign grp_fu_195_p3 = ((trunc_ln102_reg_430[0:0] == 1'b1) ? x_1_q0 : x_0_q0);
assign lshr_ln1_fu_232_p4 = {{add_ln104_fu_226_p2[9:1]}};
assign lshr_ln2_fu_253_p4 = {{add_ln105_fu_248_p2[9:1]}};
assign lshr_ln3_fu_274_p4 = {{add_ln106_fu_269_p2[9:1]}};
assign lshr_ln4_fu_295_p4 = {{add_ln107_fu_290_p2[9:1]}};
assign lshr_ln5_fu_316_p4 = {{add_ln108_fu_311_p2[9:1]}};
assign lshr_ln6_fu_337_p4 = {{add_ln109_fu_332_p2[9:1]}};
assign lshr_ln7_fu_358_p4 = {{add_ln110_fu_353_p2[9:1]}};
assign lshr_ln_fu_210_p4 = {{offset[8:1]}};
assign select_ln109_fu_374_p3 = ((trunc_ln102_reg_430[0:0] == 1'b1) ? x_1_q1 : x_0_q1);
assign select_ln110_fu_381_p3 = ((trunc_ln102_reg_430[0:0] == 1'b1) ? x_1_q0 : x_0_q0);
assign trunc_ln102_fu_202_p1 = offset[0:0];
assign x_0_address0 = x_0_address0_local;
assign x_0_address1 = x_0_address1_local;
assign x_0_ce0 = x_0_ce0_local;
assign x_0_ce1 = x_0_ce1_local;
assign x_1_address0 = x_1_address0_local;
assign x_1_address1 = x_1_address1_local;
assign x_1_ce0 = x_1_ce0_local;
assign x_1_ce1 = x_1_ce1_local;
assign zext_ln102_1_fu_206_p1 = offset;
assign zext_ln102_fu_220_p1 = lshr_ln_fu_210_p4;
assign zext_ln104_fu_242_p1 = lshr_ln1_fu_232_p4;
assign zext_ln105_fu_263_p1 = lshr_ln2_fu_253_p4;
assign zext_ln106_fu_284_p1 = lshr_ln3_fu_274_p4;
assign zext_ln107_fu_305_p1 = lshr_ln4_fu_295_p4;
assign zext_ln108_fu_326_p1 = lshr_ln5_fu_316_p4;
assign zext_ln109_fu_347_p1 = lshr_ln6_fu_337_p4;
assign zext_ln110_fu_368_p1 = lshr_ln7_fu_358_p4;
always @ (posedge ap_clk) begin
    zext_ln102_1_reg_438[9] <= 1'b0;
end
endmodule 
