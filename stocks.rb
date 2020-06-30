def stock_picker(prices)
    buy_and_sell = ["buy day", "sell day"] #to be replaced with ints
    #i = 0
    j = 0
    lowest = 0
    #lowest value is the profit
    for i in (0...prices.size)
        j = i.clone 
        while j < prices.length
            if prices[i] - prices[j] < lowest
                lowest = prices[i] - prices[j]
                buy_and_sell[0] = i
                buy_and_sell[1] = j
            end
            j += 1
        end
    end       
    print buy_and_sell 
    return buy_and_sell
end
stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1,1,2,1,6])
stock_picker([10,1,6,8,15,9,6,3,17])
stock_picker([21,50, 60, 62, 93, 38, 26, 36, 73])