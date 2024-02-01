INPUT1 = <<~"EOS"
3 3 3
EOS

INPUT2 = <<~"EOS"
7 7 8
EOS

def solve(input)
  data = input.split.map(&:to_i)
  printf(check_num(data))
end

def check_num(data)
  flag = true
  base_num = data[0]
  data.each do |i|
    if base_num != i
      flag = false
      break
    end
  end

  if flag
    return "Yes"
  else
    return "No"
  end
end

solve(INPUT2)