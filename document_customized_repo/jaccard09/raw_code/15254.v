module ss_sort_sum_scan (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_0_address0,sum_0_ce0,sum_0_we0,sum_0_d0,sum_0_q0,sum_1_address0,sum_1_ce0,sum_1_we0,sum_1_d0,bucket_1_address0,bucket_1_ce0,bucket_1_q0,bucket_1_address1,bucket_1_ce1,bucket_1_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] sum_0_address0;
output   sum_0_ce0;
output   sum_0_we0;
output  [31:0] sum_0_d0;
input  [31:0] sum_0_q0;
output  [5:0] sum_1_address0;
output   sum_1_ce0;
output   sum_1_we0;
output  [31:0] sum_1_d0;
output  [9:0] bucket_1_address0;
output   bucket_1_ce0;
input  [31:0] bucket_1_q0;
output  [9:0] bucket_1_address1;
output   bucket_1_ce1;
input  [31:0] bucket_1_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] sum_0_address0;
reg sum_0_ce0;
reg sum_0_we0;
reg[31:0] sum_0_d0;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_ap_start;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_ap_done;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_ap_idle;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_ap_ready;
wire   [5:0] grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_address0;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_ce0;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_we0;
wire   [31:0] grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_d0;
wire   [5:0] grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_address0;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_ce0;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_we0;
wire   [31:0] grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_d0;
wire   [9:0] grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address0;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce0;
wire   [9:0] grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address1;
wire    grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce1;
reg    grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    sum_0_we0_local;
reg    sum_0_ce0_local;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg = 1'b0;
end
ss_sort_sum_scan_Pipeline_sum_1 grp_sum_scan_Pipeline_sum_1_fu_35(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sum_scan_Pipeline_sum_1_fu_35_ap_start),.ap_done(grp_sum_scan_Pipeline_sum_1_fu_35_ap_done),.ap_idle(grp_sum_scan_Pipeline_sum_1_fu_35_ap_idle),.ap_ready(grp_sum_scan_Pipeline_sum_1_fu_35_ap_ready),.sum_1_address0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_address0),.sum_1_ce0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_ce0),.sum_1_we0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_we0),.sum_1_d0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_d0),.sum_0_address0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_address0),.sum_0_ce0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_ce0),.sum_0_we0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_we0),.sum_0_d0(grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_d0),.sum_0_q0(sum_0_q0),.bucket_1_address0(grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address0),.bucket_1_ce0(grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce0),.bucket_1_q0(bucket_1_q0),.bucket_1_address1(grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address1),.bucket_1_ce1(grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce1),.bucket_1_q1(bucket_1_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg <= 1'b1;
        end else if ((grp_sum_scan_Pipeline_sum_1_fu_35_ap_ready == 1'b1)) begin
            grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_sum_scan_Pipeline_sum_1_fu_35_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_sum_scan_Pipeline_sum_1_fu_35_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_sum_scan_Pipeline_sum_1_fu_35_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_address0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_address0;
    end else begin
        sum_0_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_ce0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_ce0;
    end else begin
        sum_0_ce0 = sum_0_ce0_local;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_ce0_local = 1'b1;
    end else begin
        sum_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_d0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_d0;
    end else begin
        sum_0_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_0_we0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_0_we0;
    end else begin
        sum_0_we0 = sum_0_we0_local;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_0_we0_local = 1'b1;
    end else begin
        sum_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_sum_scan_Pipeline_sum_1_fu_35_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign bucket_1_address0 = grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address0;
assign bucket_1_address1 = grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_address1;
assign bucket_1_ce0 = grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce0;
assign bucket_1_ce1 = grp_sum_scan_Pipeline_sum_1_fu_35_bucket_1_ce1;
assign grp_sum_scan_Pipeline_sum_1_fu_35_ap_start = grp_sum_scan_Pipeline_sum_1_fu_35_ap_start_reg;
assign sum_1_address0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_address0;
assign sum_1_ce0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_ce0;
assign sum_1_d0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_d0;
assign sum_1_we0 = grp_sum_scan_Pipeline_sum_1_fu_35_sum_1_we0;
endmodule 