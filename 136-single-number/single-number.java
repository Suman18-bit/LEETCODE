class Solution {
    public int singleNumber(int[] nums) {
         int rec = 0;
        for(int num:nums){
            rec = rec^num;
        }
        return rec;
    }
}