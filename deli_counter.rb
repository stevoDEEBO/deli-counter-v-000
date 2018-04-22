katz_deli = []

def line (katz_deli_line)
  if katz_deli_line.length == 0
    puts "The line is currently empty."
  else
    currList = []
    i = 0
    while i < katz_deli_line.length
      i++
      currList.push(" #{i}. #{katz_deli_line[i-1]}")
    end
    list = currList.join
    puts "The line is currently: " + list
  end
end

def take_a_number (katz_deli_line, name)
  katz_deli = katz_deli_line.push(name)
  number = katz_deli_line.length
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving (katz_deli_line)
  if katz_deli_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli_line.first
    puts "Currently serving #{name}."
    katz_deli_line.shift
  end
end
