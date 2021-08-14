def stock_picker(prices)
    maxprofitindices = []
    maxprofit = []
    for i in 0..prices.length-1 do
        max = 0
        maxprofitindices.push()
        for j in i+1..prices.length-1 do
            if (prices[j]-prices[i]>max)
                max = prices[j]-prices[i]
                maxprofitindices[i] = j
            end
        end
        maxprofit.push(max)
    end
    max = maxprofit[i]
    buyIndex = 0
    sellIndex = 0
    for i in 1..maxprofit.length-1 do
        if (maxprofit[i]>max)
            max = maxprofit[i]
            buyIndex = i
            sellIndex = maxprofitindices[i]
        end
    end

    output = []
    output.push(buyIndex)
    output.push(sellIndex)
    return output
end

puts(stock_picker([17,3,6,9,15,8,6,10,1]))