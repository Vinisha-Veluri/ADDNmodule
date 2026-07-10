`timescale 1ns / 1ps

module tb();
parameter N=16;
reg [N-1:0] A,B;
wire [N:0] sum;

ADDN #(.N(N)) dut(A,B,sum);
initial begin
    A=$random;
    B=$random;
    #10;
    A=$random;
    B=$random;
    #10;
    $finish;
    end
endmodule
