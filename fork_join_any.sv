module fork_join;
  initial begin
    fork
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      begin
        $display($time,"\tProcess-2 Started");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_any
    $display($time,"\tOutside Fork-Join");
  end
endmodule
