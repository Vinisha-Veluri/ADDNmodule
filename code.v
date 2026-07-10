`timescale 1ns / 1ps

module ADDN #(parameter N=16)
(
input [N-1:0]A,B,
output [N:0] sum
    );
    wire [N-1:0] carry;
    genvar i;
    fa in(A[0],B[0],0,sum[0],carry[0]);
    generate
       for(i=1;i<N;i=i+1)
        begin:FA
            fa D(A[i],B[i],carry[i-1],sum[i],carry[i]);
        end
    endgenerate
    assign sum[N]=carry[N-1];
endmodule
