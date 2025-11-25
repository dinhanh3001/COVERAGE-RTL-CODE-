module CORNER_TEST; 
   reg [1:0] a, b ; 
   reg cin; 
   wire [1:0] sum; 
   wire count; 
   
   ADDER_2BIT UUT(.cin(cin),.a(a),.b(b),.sum(sum),.count(count)) ;
   initial begin
    // ==================== NHOM 1: KIEM TRA MOT HOAC CA HAI TOAN HANG BANG 0=============================
    // CIN NGAU NHIEN 
    a = 2'b00; b = 2'b00; cin  = 1'b0; 
    #5;
    
    a = 2'b00; b = 2'b01; cin  = 1'b0; 
    #5; 
     
    a = 2'b00; b = 2'b10; cin  = 1'b0; 
    #5; 
    
    a = 2'b01; b = 2'b10; cin  = 1'b0; 
    #5;   
    a = 2'b00; b = 2'b01; cin  = 1'b1; 
    #5; 
      
    // ======================NHOM 2: KIEM TRA TRAN, CIN NGAU NHIEN =============================
    a = 2'b01; b = 2'b11; cin  = 1'b0; 
    #5; 
    
    a = 2'b11; b = 2'b10; cin  = 1'b0; 
    #5;
    
    a = 2'b10; b = 2'b1; cin  = 1'b1; 
    #5; 
    
    a = 2'b10; b = 2'b10; cin  = 1'b0; 
    #5; 
    
    a = 2'b11; b = 2'b11; cin  = 1'b0; 
    #5; 
    
    a = 2'b11; b = 2'b01; cin  = 1'b1; 
    #5; 
    // =====================NHOM 3: KIEM TRA BIT NHO ===========================================
    a = 2'b01; b = 2'b10; cin  = 1'b1; 
    #5;
    a = 2'b10; b = 2'b01; cin  = 1'b1; 
    #5;  
     
     
     // ====================NHOM 4: CAC TRUONG HOP CON LAI ===================================
    a = 2'b01; b = 2'b01; cin  = 1'b0; 
    #5;
    
    a = 2'b01; b = 2'b0; cin  = 1'b1; 
    #5; 
        
    a = 2'b10; b = 2'b01; cin  = 1'b0; 
    #5; 
     $stop;  
end 
initial begin 
  $display("BAT DAU MO PHONG "); 
  $monitor("a=%0b,\tb=%0b,\tcin=%0b,\tsum=%0b,\tcount=%0b", a, b, cin, sum, count);
 end  
endmodule 
