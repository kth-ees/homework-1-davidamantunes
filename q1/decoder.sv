`timescale 1ns/1ns
module decoder (
  input logic [3:0] binary,
  input logic	    en,
  output logic [15:0] one_hot
);
  // …
  // Add your description here
  // …

    always_comb begin
        one_hot = '0;
        if (en) one_hot[binary] = 1'b1;
    end


endmodule
