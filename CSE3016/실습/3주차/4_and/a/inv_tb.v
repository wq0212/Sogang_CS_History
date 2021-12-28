`timescale 1ns / 1ps

module inv_tb;

reg a,b,c,d;

wire e_and;

inv u_inv (
.a (a ),
.b (b ),
.c (c ),
.d (d ),
.e_and (e_and)
 );

initial a = 1'b0;
initial b = 1'b0;
initial c = 1'b0;
initial d = 1'b0;

always a = #200 ~a;
always b = #100 ~b;
always c = #50 ~c;
always d = #25 ~d;

initial begin
    #1000
    $finish;
end

endmodule