module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

  // complete
  csa_8 uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $display("Doing CSA of a+b");
      // Carry = 1 10111111 (no midle Ci)
      a = 8'b11010101;
      b = 8'b11101010;
      #10; // 11111111 (no midle Ci)
      a = 8'b01010101;
      b = 8'b10101010;
      #10; // 10111111 (no midle Ci)
      a = 8'b01010101;
      b = 8'b01101010;
      #10; // Carry = 1 10010111 (with midle Ci)
      a = 8'b11001101;
      b = 8'b11001010;
      #10;
    $stop;
  end


endmodule
