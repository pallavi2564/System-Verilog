module example;
  semaphore sema; 
  initial begin
    sema=new(4); //creating sema with '4' keys
    fork
      display(); //process-1
      display(); //process-2
    join
  end
 
  task automatic display();
    sema.get(4); //getting '4' keys from sema
    $display($time,"Curent Simulation Time");
    #30;
    sema.put(4); //putting '4' keys to sema
  endtask
endmodule
