module csa_8 #(
  parameter int SIZE = 2
)(
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);
  // …
  // Add your description here
  // …

  logic [2:0] carry_co;
  logic [3:0] sum_ci0;
  logic [3:0] sum_ci1;

  adder_4 adder0 (
    .A(a[3:0]),
    .B(b[3:0]),
    .ci(1'b0),
    .sum(sum[3:0]),
    .carry(carry_co[0])
  );

  adder_4 adder1_ci0 ( // Assume carry in as 0
    .A(a[7:4]),
    .B(b[7:4]),
    .ci(1'b0),
    .sum(sum_ci0[3:0]),
    .carry(carry_co[1])
  );

  adder_4 adder1_ci1 ( // Assume carry in as 1
    .A(a[7:4]),
    .B(b[7:4]),
    .ci(1'b1),
    .sum(sum_ci1[3:0]),
    .carry(carry_co[2])
  );

  always_comb begin : csa
    case (carry_co[0])
      1'b0: sum[7:4] = sum_ci0[3:0];
      1'b1: sum[7:4] = sum_ci1[3:0];
      default: sum[7:4] = 4'b0000;
    endcase
  end

  always_comb begin : csa_co
    case (carry_co[0])
      1'b0: carry = carry_co[1];
      1'b1: carry = carry_co[2];
      default: carry = 1'b0;
    endcase
  end



endmodule
