
module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);
logic carry0, carry1,carry2;
logic [3:0] sum_1, sum_0,sum_low;
  adder_4 u1(
     .A(a[3:0]),
     .B(b[3:0]),
     .sum(sum_low),
     .carry(carry0)
  );
  // when carry=0 
   adder_4 u2(
     .A(a[7:4]),
     .B(b[7:4]),
     .sum(sum_0),
     .carry(carry1)
  );

// when carry=1 
  adder_4 u3(
     .A(a[7:4]+1),
     .B(b[7:4]),
     .sum(sum_1),
     .carry(carry2)
  );
 always_comb begin
   if (carry0==1'b0) begin
    carry=carry1;
    sum={sum_0,sum_low};
  end
  else begin
    carry=carry2;
    sum={sum_1,sum_low};
  end
 end
 
endmodule

 
