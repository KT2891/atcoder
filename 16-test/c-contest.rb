INPUT1 = <<~"EOS"
10
1 2 3 4 5 5 6 7 8 8
EOS

INPUT2 = <<~"EOS"
27
3 1 4 1 5 2 6 5 3 5 8 7 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7
EOS

def solve(input)
  data = input.split("\n")
  amount = data.shift.to_i
  problems = data.shift.split.map(&:to_i)

  defs = count_def(problems)

  print(defs.min)
end

def count_def(ary)
  defs = Array.new(8, 0)
  ary.each do |i|
    defs[i - 1] += 1
  end
  return defs
end


solve(INPUT2)