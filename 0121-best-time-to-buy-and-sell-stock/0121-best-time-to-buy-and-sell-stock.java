class Solution {
    public int maxProfit(int[] prices) {
        int start = 0; 
        int end = 1;
        int MaxProfit = 0;

        while(end<prices.length){
            if(prices[start]<prices[end]){
                int profit = prices[end] - prices[start];
                MaxProfit = Math.max(MaxProfit,profit);
            }
            else{
                start = end;
            }
            end ++;
        }
        return MaxProfit;
        
    }
}