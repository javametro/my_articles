#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

class Solution{
public:
	vector<int> twoSum(vector<int>& nums, int target){
		sort(nums.begin(), nums.end());
		vector<int> resultset;
		int index = 0;
		for(i=0; i<nums.size(); i++){
			if(nums[i] >= target){
				index = i;
				break;
			}
		}

		for(i=0; i<index; i++){
			for(int j=i; j<index; j++){
				int a = nums[j];
				int b = target - nums[j];
				int *result = find(nums[j], nums[index], b);
				if(result == index){
					continue;
				}else{
					resultset.push_back(a);
					resultset.push_back(b);	
					break;
				}
			}
		}

		return resultset;	
	}
};

int main(){
	vector<int> test;
	test.push_back(1);
	test.push_back(4);
	test.push_back(7);
	test.push_back(12);
	test.push_back(3);
	test.push_back(9);
	test.push_back(18);
	test.push_back(21);
	test.push_back(66);
	test.push_back(18);
	test.push_back(31);
	test.push_back(5);
	test.push_back(27);
	
	vector<int> output;

	Solution *s1 = new Solution();
	output = s1->twoSum(test, 27);

	for(int i=0; i<output.size(); i++){
		cout << output[i] << endl;
	}

	return 0;
}
