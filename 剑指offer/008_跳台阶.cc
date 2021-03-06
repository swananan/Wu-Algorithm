//一只青蛙一次可以跳上1级台阶，也可以跳上2级。求该青蛙跳上一个n级的台阶总共有多少种跳法。

class Solution {
public:
    int jumpFloor(int number) {
        if (number <= 0)
            return 0;
		int num1 = 1;
        int num2 = 2;
        if (number == 1)
            return num1;
        if (number == 2)
            return num2;
        while (number > 2) {
            int temp = num2;
            num2 = num1 + num2;
            num1 = temp;
    		number--;
        }
        return num2;
    }
};