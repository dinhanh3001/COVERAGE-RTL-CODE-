module ADDER_2BIT(cin,a,b, sum,count) ;
    input cin; 
    input [1:0] a, b;  
    output [1:0] sum; 
    output count; 
    
    assign {count,sum} =cin+ a+ b ; 
    
endmodule 