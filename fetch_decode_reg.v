module fetch_decode_reg(inst_encoding, pc, o_inst_encoding, o_pc, stall, flush, clk);

    input [31:0] inst_encoding;
    input [31:0] pc;
    input stall, flush, clk;

    output reg [31:0] o_inst_encoding;
    output reg [31:0] o_pc;

    always @ (posedge clk) begin

        case (stall)

            1'b0: begin
                if (flush == 1'b0)
                    o_inst_encoding = inst_encoding;
                    o_pc = pc;
                if (flush == 1'b1)
                    o_inst_encoding = 32'b0;
                    o_pc = pc;
            end
            default: begin
                o_inst_encoding = o_inst_encoding;
                o_pc = o_pc;
            end

        endcase

    end

endmodule
