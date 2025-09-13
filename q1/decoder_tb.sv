`timescale 1ns/1ns
module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic        en;
  logic [15:0] one_hot;
  integer      i;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .en(en),
    .one_hot(one_hot)
  );

  // Complete your testbench here
  initial begin
    // Test Case 1: Enable = 0, check if the correct bit is 0
    $display("Time   en   binary  |  one_hot");
    en = 1;
    binary = 4'd3;  
    #10;
    $display("%4t   %0b  %0d  |  %b", $time, en, binary, one_hot);
    
    // Test Case 2: Enable = 1, check if all bits are 1
    en = 0;
    #10;
    $display("%4t   %0b  %0d  |  %b", $time, en, binary, one_hot);

    // Test Case 3: Enable = 0, check another bit is 0
    en = 1;
    for (i = 0; i < 16; i = i + 1) begin
      binary = i[3:0];   // assign 4-bit version of i
      #10;               // wait 10 time units
      $display("%4t   %0b  %0d  |  %b", $time, en, binary, one_hot);
    end

    $stop;
  end

endmodule
