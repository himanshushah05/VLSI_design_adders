module cla_adder_df_tb();
  reg [3:0] a,b; 
  reg cin;
  reg[4:0] check;
  wire [4:0] sum;

  rca_4bit_20bei0013 uut (a,b,cin, sum);
  initial repeat (10) begin
    a = $random;
    b = $random;
    cin = $random;
    check=a+b+cin;
    #10 $display ($time, "%d+%d+%d = %d (%d)", a, b, cin, sum, check);
  end
endmodule
