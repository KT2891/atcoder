INPUT1 = <<~"EOS"
4
EOS

INPUT2 = <<~"EOS"
12
EOS

def solve(input)
  count = input.to_i
  printf(check_watch(count))
end

def check_watch(i)
  if i >= 4 && i <= 9
    return "Yes"
  else
    return "No"
  end
end

solve(9)