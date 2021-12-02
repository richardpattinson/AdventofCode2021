input = File.readlines('../Data/day02.txt')

def clean_data(data)
  array = []
  data.each do |i|
    seperated = i.split(' ')
    array << seperated
  end
  array
end

data = clean_data(input.map { |n| n.chomp })

def calculate_position(data)
  horizontal_position = 0
  depth = 0
  data.each do |x|
    if x[0] == 'forward'
      horizontal_position += x[1].to_i
    elsif x[0] == 'up'
      depth -= x[1].to_i
    elsif x[0] == 'down'
      depth += x[1].to_i
    end
  end
  horizontal_position * depth
end



def calculate_position_with_aim(data)
  horizontal_position = 0
  aim = 0
  depth = 0
  data.each do |x|
    if x[0] == 'forward'
      horizontal_position += x[1].to_i
      depth += x[1].to_i * aim
    elsif x[0] == 'up'
      aim -= x[1].to_i
    elsif x[0] == 'down'
      aim += x[1].to_i
    end
  end
  horizontal_position * depth
end
p calculate_position_with_aim(data)


