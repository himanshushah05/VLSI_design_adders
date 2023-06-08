module cla_adder_df_20bei0013(input [3:0]a, b, input cin, output [4:0]s); 
  wire [3:0] p, g, c;  
  assign g= a&b; 
  assign p= a^b; 
  assign c[0]= cin; 
  assign c[1] = (p[0]&c[0]) | g[0]; 
  assign c[2] = (p[1]&p[0]&c[0]) | (p[1]&g[0]) | g[1]; 
  assign c[3]= (p[2]&p[1]&p[0]&c[0]) | (p[2]&p[1]&g[0]) | (p[2]&g[1]) | g[2]; 
  assign s[3:0]=p^c; 
  assign s[4]= (p[3]&p[2]&p[1]&p[0]&c[0]) | (p[3]&p[2]&p[1]&g[0]) |
                         (p[3]&p[2]&g[1]) | (p[3]&g[2]) | g[3]; 
endmodule
