def calc(expr)
  arr = expr.split(' ')
  if arr.length == 0
    puts 0
    return 0
  end
  if arr[-1] == '+'
    sum = 0
    arr.pop
    arr.each do |i|
      sum += i.to_f
    end
    puts sum
    return sum
  end
  if arr[-1] == '-'
    diff = arr[0].to_f
    arr.pop
    arr.shift
    arr.each do |i|
      diff -= i.to_f
    end
    puts diff
    return diff
  end
  if arr[-1] == '*'
    prod = 1
    arr.pop
    arr.each do |i|
      prod *= i.to_f
    end
    puts prod
    return prod
  end
  if arr[-1] == '/'
    div = arr[0].to_f
    arr.pop
    arr.shift
    arr.each do |i|
      div /= i.to_f
    end
    puts div
    return div
  end
end

calc('5 10 -')
