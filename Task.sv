module task_print;
  task message(input string msg, input int delay);
    begin
      $display("Message: %s", msg);
      #delay;
    end
  endtask
  initial begin
    message("System verilog task example", 10);
  end
endmodule
