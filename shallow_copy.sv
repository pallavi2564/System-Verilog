class address_range;
  bit [7:0] start_address;
  bit [7:0] end_address  ;
  function new();    
    start_address = 10;
    end_address   = 15;
  endfunction
endclass
class packet;
  bit [7:0] addr;
  bit [7:0] data;
  address_range ar;
  function new();
    addr  = 7'h10;
    data  = 7'h15;
    ar = new(); 
  endfunction
  function void display();
    $display(" addr  = %0h",addr);
    $display(" data  = %0h",data);
    $display(" start_address  = %0d",ar.start_address);
    $display(" end_address  = %0d",ar.end_address);
  endfunction
endclass
module class_assignment;
  packet pkt_1;
  packet pkt_2;

  initial begin
    pkt_1 = new();   
    pkt_1.display();
    pkt_2 = new pkt_1;   
    pkt_2.display();
    pkt_2.addr = 7'h08;
    pkt_2.ar.start_address = 4;
    pkt_2.ar.end_address = 10;

    pkt_1.display();
    pkt_2.display(); 
  end
endmodule
