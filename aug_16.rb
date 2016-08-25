def check_palindromic(variable)
  if variable.reverse == variable #Check if string same when reversed
    puts "#{ variable } is a palindrome."
  else # If string is not the same when reversed
    puts "#{ variable } is not a palindrome."
  end
end
check_palindromic("brandon")
