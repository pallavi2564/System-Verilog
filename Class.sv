class packet;
  bit [31:0] addr;
  bit [31:0] data;
  function new(bit [31:0] addr,data);
    this.addr  = addr;
    this.data  = data;
  endfunction
  function void display();
    $display(" addr  = %0h",addr);
    $display(" data  = %0h",data);
  endfunction
endclass
module cls;
  packet pkt;
  initial begin
    pkt = new(32'h50,32'hAF);
    pkt.display();
  end
endmodule
