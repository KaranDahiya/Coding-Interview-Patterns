// e.g Minimum Size Subarray Sum

class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var left = 0
        var right = 0
        var sum = nums[0]
        var minLength = nums.count + 1

        while (right < nums.count) {
            if sum < target {
                right += 1
                if right < nums.count { sum += nums[right] }
            }

            if sum >= target {
                minLength = min(minLength, right - left + 1)
                sum -= nums[left]
                left += 1
            }
        }
        
        if minLength > nums.count { return 0 }

        return minLength
    }
}