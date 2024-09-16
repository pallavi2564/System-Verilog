module memory ( clk, addr, wr_rd, wdata, rdata);
  input        clk;
  input  [7:0] addr;
  input        wr_rd;
  input  [7:0] wdata;
  output [7:0] rdata;
endmodule

interface mem_intf;
  logic      clk;
  logic [7:0] addr;
  logic       wr_rd;
  logic [7:0] wdata;
  logic [7:0] rdata;
endinterface

program testcase (interface  intf);
  environment env;
  initial begin
    env = new(intf);
  end
endprogram

module tbench_top;`
  mem_intf intf();
  memory dut(
    .clk(intf.clk),
    .addr(intf.addr),
    .wr_rd(intf.wr_rd),
    .wdata(intf.wdata),
    .rdata(intf.rdata)
      );
  testcase test(intf);
endmodule
