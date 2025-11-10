module fetch_decode_reg(inst_encoding, pc, o_inst_encoding, o_pc, stall_instruction, clk);

    input [31:0] inst_encoding;
    input [31:0] pc;
    input stall_instruction, clk;

    output reg [31:0] o_inst_encoding;
    output reg [31:0] o_pc;

    always @ (posedge clk) begin

        case (stall_instruction)

            1'b0:       o_inst_encoding = inst_encoding;
            default:    o_inst_encoding = o_inst_encoding;

        endcase

    end

endmodule


