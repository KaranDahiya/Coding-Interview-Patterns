// e.g. Missing Number

class Solution {
    fun missingNumber(nums: IntArray): Int {
        var i = 0

        // cyclic sort
        while (i < nums.size) {
            if (nums[i] != i && nums[i] != nums.size) {
                val temp = nums[nums[i]]
                nums[nums[i]] = nums[i]
                nums[i] = temp
            } else {
                i = i + 1
            }
        }

        // find missing number
        for (i in 0..nums.size - 1) {
            if (nums[i] != i) { return i }
        }

        return nums.size
    }
}