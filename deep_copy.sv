
class packet; 
  int data = 12;
  function packet copy();
    copy = new();
    copy.data = data;
  endfunction
endclass
 
class second_packet;
  int ds = 34;
  packet f1;
  
  function new();
    f1 = new();
  endfunction
  
  function second_packet copy();
    copy = new();
    copy.ds = ds;
    copy.f1 = this.f1.copy;    
  endfunction

endclass
 
module tb;
  second_packet s1, s2;
  initial begin
    s1 = new();
    s2 = new();
    $display("Before changing s1.ds");
    $display("Value of s1 ds : %0d", s1.ds);
    
    s1.ds = 45;
    s2 = s1.copy();
    $display("Value of s1 ds : %0d", s1.ds);
    $display("Value of s2 ds: %0d", s2.ds);

    s2.ds = 78;
    $display("After changing s2.ds");
    $display("Value of s1 ds: %0d", s1.ds);
    $display("Value of s2 ds: %0d", s2.ds);
  end
  endmodule
