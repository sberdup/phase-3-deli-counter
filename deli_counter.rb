# Write your code here.
katz_deli = []

def line(array)
    if array.size == 0
        return puts "The line is currently empty."
    end
    queue = "The line is currently: "
    array.each_with_index do |customer, index| 
        queue += "#{index + 1}. #{customer}"
        queue += ' ' unless index == array.size - 1
    end
    puts queue
end

def take_a_number(line, name)
    line << name 
    puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
    return puts 'There is nobody waiting to be served!' if line.size == 0
    puts "Currently serving #{line.shift}."
end