
def stock_picker(daily_prices,start_day,end_day)
  
  chosen_days = daily_prices[start_day..end_day]
  min_price = chosen_days.min
  p chosen_days
  best_day_to_buy = chosen_days.index(min_price)
  max_price = chosen_days[best_day_to_buy..end_day].max
  best_day_to_sell = chosen_days.index(max_price)
  while min_price == max_price
    chosen_days.delete(min_price)
    min_price = chosen_days[start_day..end_day].min
    best_day_to_buy = chosen_days.index(min_price)
    max_price = chosen_days[best_day_to_buy..end_day].max
    best_day_to_sell = chosen_days.index(max_price)
    p"meow"
    p chosen_days
    if chosen_days.empty?
       break
    end
    
  end
  if !best_day_to_buy
    best_day_to_buy = "All days are unlucky"
    best_day_to_sell = "All days are unlucky"
  end

  "best day to buy: #{best_day_to_buy}, price: #{min_price}, best day to sell: #{best_day_to_sell}, price:#{max_price} >> #{daily_prices}"
end
 p stock_picker([17,3,6,9,15,8,6,1,10],0,20)
  