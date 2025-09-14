module bin2bcd (
input logic [3:0] binary,
output logic [3:0] bcd,
output logic carry
);

always_comb begin
    case (binary)
    4'd0: bcd=4'b0000; 
    4'd1: bcd=4'b0001;
    4'd2: bcd=4'b0010;
    4'd3: bcd=4'b0011;
    4'd4: bcd=4'b0100;
    4'd5: bcd=4'b0101;
    4'd6: bcd=4'b0110;
    4'd7: bcd=4'b0111;
    4'd8: bcd=4'b1000;
    4'd9: bcd=4'b1001;
    4'd10: bcd=4'b0000;
    4'd11: bcd=4'b0001;
    4'd12: bcd=4'b0010;
    4'd13: bcd=4'b0011;
    4'd14: bcd=4'b0100;
    4'd15: bcd=4'b0101;
    endcase
end

always_comb begin
    case (binary)
       4'd0, 4'd1, 4'd2, 4'd4, 4'd5, 4'd6, 4'd7, 4'd8, 4'd9 :carry=1'd0; 
        default: carry=1'd1;
    endcase

end
endmodule
