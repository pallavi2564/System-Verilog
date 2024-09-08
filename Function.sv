module average;
  function real average(input int values[$]);
    int sum = 0;
    int num_elements = values.size();
    foreach (values[i])
      sum += values[i];
    if (num_elements > 0)
      return sum / num_elements;
    else
      return 0; 
  endfunction
  initial begin
    int arr[5] = '{10, 20, 30, 40, 50};
    real avg;
    avg = average(arr);
    $display("Average: %0.2f", avg);
  end
endmodule
