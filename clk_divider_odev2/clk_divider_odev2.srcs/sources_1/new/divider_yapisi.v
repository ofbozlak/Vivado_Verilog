 module dff ( 
   input      clk,
   input      reset,
   input      d,
   output     qb,
   reg        q
   );
   assign qb = ~q;

    always @(posedge clk or posedge reset)
    begin
      if (reset) begin
        q <= 0;
    end else begin      
        q <= d;
    end
   end
  endmodule
  