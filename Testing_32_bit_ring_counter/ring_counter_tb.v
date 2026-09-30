module tb_ring_counter;

    // Inputs
    reg clk;
    reg reset;

    // Outputs
    wire [31:0] q;

    // Instantiate the Unit Under Test (UUT)
    ring_counter_32 uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;  // Clock with 10 units period (50% duty cycle)

    // Initial block to apply stimulus
    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;  // Start by resetting the counter

        // Wait for some time and then release reset
        #15 reset = 0;

        // Let the simulation run for a few clock cycles
        #100;

        // Reset the counter again to check reset functionality
        reset = 1;
        #10 reset = 0;

        // Let the simulation run for more time
        #50;

        // Finish the simulation
        $finish();
    end

    // Monitor the output to display the values in the console
    initial begin
        $monitor("At time %0t, q = %b", $time, q);
    end

endmodule
