module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;
  integer      i;
  
  bin2bcd uut (
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

  initial begin
    $display("Time   binary  |  bcd   |   carry   ");
    for (i = 0; i < 16; i = i + 1) begin
      binary = i[3:0];   // assign 4-bit version of i
      #10;               // wait 10 time units
      $display("%4t     %0d    |  %b    |    %0b     ", $time, binary, bcd, carry);
    end

    $stop;
  end
  // complete your tb
endmodule
