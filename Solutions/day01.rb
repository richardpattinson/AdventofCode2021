input = File.readlines('../Data/day01.txt')
data = input.map { |n| n.chomp('/n').to_i }
def count_times_number_increases(array)
  previous_number = array.first
  count = 0
  array.each do |number|
    if number > previous_number
      count += 1
    end
    previous_number = number
  end
  count
end
count_times_number_increases(data)

def make_three_measurement_window(array)
  array_of_threes = []
  for index in (0..array.length-3)
    sum = array[index] + array[index+1] + array[index+2]
    array_of_threes.append(sum)
  end
  array_of_threes
end
p count_times_number_increases(make_three_measurement_window(data))



