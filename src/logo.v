module logo_test(
    input a,
    input b,
    output c);

    logo logo_0 ();
    hackaday logo_1 ();
    assign c = a & b;
endmodule

(* blackbox *)
module logo();
endmodule

(* blackbox *)
module hackaday();
endmodule
