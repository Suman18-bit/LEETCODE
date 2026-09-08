class Solution {
public:
    vector<int> findDuplicates(vector<int>& arr) {
        unordered_map<int,int> freq;
        vector<int> duplicates;

        for(int num : arr) {
            freq[num]++;
        }

        for(auto it : freq) {
            if(it.second > 1) {
                duplicates.push_back(it.first);
            }
        }

        return duplicates;
    }
};
