INPUT1 = <<~"EOS"
5*32*2
EOS

INPUT2 = <<~"EOS"
998244354
EOS

input = gets.chomp
CONS = 998244353
nums = input.split("*").map(&:to_i)
result = 1
nums.each do |i|
  result *= i
  result = result % CONS
end
puts(result)

# CONSで割る計算をループに入れることでresultが膨れ上がるのを防ぐ
# 上記動作がない場合、計算時間が超過する