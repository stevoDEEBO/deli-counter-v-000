katz_deli = []

def line (katz_deli_line)
  curr_line = []
  if katz_deli_line.empty?
    puts "The line is currently empty."
  else
    katz_deli_line.each.with_index(1) do |name, index|
      curr_line << "#{index}. #{name}"
    end
    puts "The line is currently: #{curr_line.join(" ")}"
  end
end

def take_a_number (katz_deli_line, name)
  katz_deli_line << name
  number = katz_deli_line.length
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving (katz_deli_line)
  if katz_deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli_line.first
    puts "Currently serving #{name}."
    katz_deli_line.shift
  end
end
