# frozen_string_literal: true

# @param [Array] array
def bubble_sort(array)
  (0..(array.length - 1)).each do |i|
    (0..(array.length - 2 - i)).each do |j|
      next unless array[j] > array[j + 1]

      array[j + 1],  array[j] = array[j], array[j + 1]
    end
  end
  p array
end

bubble_sort([4, 3, 78, 2, 0, 2])
