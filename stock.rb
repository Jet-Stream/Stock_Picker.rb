def stock_picker
stocks = [17,3,6,9,15,8,6,1,10]
# for buy, need lowest value at lowest index
# for sell, need highest value at highest index
#optimal pair returns biggest difference between sell and buy
#if buy price is 1 at index 8, only index 9 can be sell date
listed = stocks.each_index{ |index| "#{index} #{stocks[index]}"}
buy_day =[]
stocks.each_with_index{|element, index| buy_day.push(element + index)}#gives a "weighted" value for reach day
sell_days = buy_day.select{|element| element != buy_day[0]}
optimal = []
optimal.push("Buy on Day #{buy_day.index(buy_day.min)+1} Sell on Day #{buy_day.index(sell_days.max)+1}")
p optimal
end
stock_picker
