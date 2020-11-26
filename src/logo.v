`default_nettype none
module logo_test(
    input clk,
    input a,
    input b,
    output reg c);

    (* keep *) LOGO logo ();

    always @(posedge clk)
        c <= a & b;

endmodule

(* blackbox *)
module LOGO();
endmodule

