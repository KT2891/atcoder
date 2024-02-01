def solve(input)
  data = input
  result = data.length
  if data[0] == "1"
    flag = true
    for i in 1..(result - 1) do
      if data[i] != "0"
        flag = false
        break
      end
    end
  end
  result -= 1 if flag
  puts(result)
end

data = gets.chomp
solve(data)