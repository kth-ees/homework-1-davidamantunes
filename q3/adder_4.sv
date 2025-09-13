module adder_4 (
  input logic [3:0] A, B,
  input logic ci,
  output logic [3:0] sum,
  output logic carry
);
  assign {carry, sum} = A+B+ci;
endmodule
