module BCD2Dec_tb;

reg [3:0] in;
reg  Preset;
reg Reset_n;
wire [9:0] out;



initial
begin

    $dumpfile("test.vcd");
    $dumpvars(0, UUT);

    $monitor("Reset_n=%b | Preset=%b | in=%b | out=%b ",Reset_n,Preset,in,out);

    Reset_n=1'd0;
    Preset=1'd0;
    in=4'd0;

    #20 Reset_n=1'd1;
    in=4'd0;

    #20 in=4'd1;

    #20 in=4'd2;

    #20 in=4'd3;

    #20 in=4'd4;

    #20 in=4'd5;

    #20 in=4'd6;

    #20 in=4'd7;

    #20 in=4'd8;

    #20 in=4'd9;

    #20 in=4'd10;

    #20 in=4'd11;

    #20 in=4'd12;

    #20 in=4'd13;

    #20 in=4'd14;

    #20 in=4'd15;

    #20 Preset=1'd1;

    #20 Reset_n=1'd0;

    #50 $finish;



    $finish;
end

// Instantiate the Unit Under Test (UUT)
BCD2Dec UUT (
            .in(in),
            .Preset(Preset),
            .Reset_n(Reset_n),
            .out(out)
        );
endmodule
