`timescale 1us/100ns
// Single 32-bit register
module register32(din,write_enable, dout, clk, rst);

input [31:0] din;
inputwrite_enable, clk, rst;
output [31:0] dout;

genvar i;

generate

    for(i = 0; i < 32; i = i + 1) begin
        dff U (.q(dout[i]), .d(we ? din[i] : dout[i]), .clk(clk), .rst(rst));
    end

endgenerate

endmodule
