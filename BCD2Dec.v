module BCD2Dec (
           in,              // I 4 bit : BCD input
           Preset,          // I 1 bit : preset
           Reset_n,         // I 1 bit : reset in negative
           out              // O 10 bit : decimal output
       );

//Declare inputs,outputs and internal variables.
input [3:0] in;
input Preset,Reset_n;
output [9:0] out;
reg [9:0]out;

//always block for converting bcd digit into decimal
always @(*)
begin
    if (Reset_n==0)                     //higest priority
    begin
        out=10'd0;
    end
    else   if(Preset==1)
    begin
        out=10'b00_0000_1111;
    end
    else
    begin                               //lowest priority
        case (in)                       //case statement
            4'd0:
                out=10'b11_1111_1110;
            4'd1:
                out=10'b11_1111_1101;
            4'd2:
                out=10'b11_1111_1011;
            4'd3:
                out=10'b11_1111_0111;
            4'd4:
                out=10'b11_1110_1111;
            4'd5:
                out=10'b11_1101_1111;
            4'd6:
                out=10'b11_1011_1111;
            4'd7:
                out=10'b11_0111_1111;
            4'd8:
                out=10'b10_1111_1111;
            4'd9:
                out=10'b01_1111_1111;
            default :                   //The output values will all be 10'b11_1111_1111  when the bcd digit is not a decimal number.
                out=10'b11_1111_1111;
        endcase
    end
end

endmodule
