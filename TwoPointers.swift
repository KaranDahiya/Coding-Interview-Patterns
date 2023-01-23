// e.g. Two Sum

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.sorted()
        var left = 0
        var right = nums.count - 1

        while (right > left) {
            let sum = sortedNums[left] + sortedNums[right]
           
            if sum == target { 
                return [
                    nums.firstIndex(of: sortedNums[left])!, 
                    nums.lastIndex(of: sortedNums[right])!
                ] 
            } 
            
            else if sum < target { left = left + 1 }
            else if sum > target { right = right - 1 }
        }

        return []
    }
}