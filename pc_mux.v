// Determines the next program counter based on control signal

module pc_mux(
    input [31:0] pc,
    input [31:0] target_address,
    input pc_src,
    output reg [31:0] next_pc
);

always @(*) begin
    next_pc = ((pc_src) ? (target_address) : (pc + 4));
end

endmodule