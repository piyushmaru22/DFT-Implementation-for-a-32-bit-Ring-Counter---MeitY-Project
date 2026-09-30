module ring_counter_32 (
    input clk,                // Clock signal
    input reset,              // Reset signal
    output reg [31:0] q       // 32-bit output for the ring counter
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 32'b00000000000000000000000000000001; // Initialize the ring counter to 1 on reset
        end else begin
            q <= {q[30:0], q[31]}; // Rotate left
        end
    end
endmodule

