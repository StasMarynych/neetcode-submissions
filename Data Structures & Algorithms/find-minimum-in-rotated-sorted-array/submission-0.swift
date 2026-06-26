class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1

        while left < right {
            let middle = left + (right - left) / 2

            if nums[middle] < nums[right] {
                right = middle
            } else {
                left = middle + 1
            }
        }

        return nums[left]
    }
}
