module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // …
  // Add your description here
  // …

   always_comb begin
    case (binary)
        4'b0000: bcd = 4'b0000;
        4'b0001: bcd = 4'b0001;
        4'b0010: bcd = 4'b0010;
        4'b0011: bcd = 4'b0011;
        4'b0100: bcd = 4'b0100;
        4'b0101: bcd = 4'b0101;
        4'b0110: bcd = 4'b0110;
        4'b0111: bcd = 4'b0111;
        4'b1000: bcd = 4'b1000;
        4'b1001: bcd = 4'b1001;
        4'b1010: bcd = 4'b0000;
        4'b1011: bcd = 4'b0001;
        4'b1100: bcd = 4'b0010;
        4'b1101: bcd = 4'b0011;
        4'b1110: bcd = 4'b0100;
        4'b1111: bcd = 4'b0101;
        default: bcd = 4'b0000;
    endcase
  end


  always_comb begin
    casex (binary)
        4'b11xx: carry = 1'b1;
        4'b101x: carry = 1'b1;
        default: carry = 1'b0;
    endcase
  end

/**
  always_comb begin
    if (binary == 4'b0000) bcd = 4'b0000;
    else if (binary == 4'b0001) bcd = 4'b0001;
    else if (binary == 4'b0010) bcd = 4'b0010;
    else if (binary == 4'b0011) bcd = 4'b0011;
    else if (binary == 4'b0100) bcd = 4'b0100;
    else if (binary == 4'b0101) bcd = 4'b0101;
    else if (binary == 4'b0110) bcd = 4'b0110;
    else if (binary == 4'b0111) bcd = 4'b0111;
    else if (binary == 4'b1000) bcd = 4'b1000;
    else if (binary == 4'b1001) bcd = 4'b1001;
    else if (binary == 4'b1010) bcd = 4'b0000;
    else if (binary == 4'b1011) bcd = 4'b0001;
    else if (binary == 4'b1100) bcd = 4'b0010;
    else if (binary == 4'b1101) bcd = 4'b0011;
    else if (binary == 4'b1110) bcd = 4'b0100;
    else if (binary == 4'b1111) bcd = 4'b0101;
    else bcd = 4'b0000; // default case
  end
**/

  // assign bcd[3] = (binary[3] & ~binary[2] & ~binary[1]);
  // assign bcd[2] = ((binary[2] & ~binary[3]) | (binary[3] & binary[2] & binary[1]));
  // assign bcd[1] = ((binary[1] & ~binary[3]) | (~binary[1] & binary[3] & binary[2]));
  // assign bcd[0] = binary[0];
  // assign carry  = ((binary[3] & binary[2]) | (binary[3] & binary[1]));

endmodule
