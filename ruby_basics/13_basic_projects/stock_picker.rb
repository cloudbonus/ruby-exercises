# frozen_string_literal: true

# @param [Array] prices
def stock_picker(prices)
  result = []
  min_id = 0
  max = prices[0]
  min = prices[0]
  prices.each_with_index do |price, id|
    if min > price
      min = price
      min_id = id
      max = price
    end
    next unless max < price

    max = price
    max_id = id
    result.append({ max - min => [min_id, max_id] })
  end
  max = 0
  val = []
  result.each do |el|
    el.map do |k, v|
      if k > max
        max = k
        val = v
      end
    end
  end
  print val
end

stock_picker([7, 1, 5, 3, 6, 4])
