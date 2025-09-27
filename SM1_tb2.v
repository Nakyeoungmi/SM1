module SM1_tb;
    reg clk, rst, x;
    wire y;
    reg [1:0] state;

    SM1 uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y),
        .state(state)
    );

    always #5 clk=~clk;
    initial begin
         $dumpfile(“SM1_tb.vcd”);
         $dumpvars(0, SM1_tb); 

        clk=0; rst=0; x=0;
        #10 rst=1;

        x=1; #10
        x=1; #10

        x=1; #10
        x=0; #10

       

        $finish;
    end
endmodule
