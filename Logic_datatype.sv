module logic;
	logic [3:0]  data; 		
	initial begin
		data = 8'hfa; 									
    $display ("data=0x%0h ", data); 	
  end
endmodule
