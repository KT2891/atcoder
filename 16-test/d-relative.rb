INPUT1 = <<~"EOS"
3
200 600 300
EOS

INPUT2 = <<~"EOS"
10
55580908 183811851 247188750 266233976 335843599 344138315 389659771 389921297 698238479 720357617
EOS

def solve(input)
  data = input.split("\n")
  amount = data.shift.to_i
  scores = data.shift.split.map(&:to_f)
  max_score = scores.max
  multiplier = 1000000000

  scores.each do |score|
    printf("#{((score * multiplier) / max_score).round} ") 
  end
end

solve(INPUT2)