class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()

        for value in nums {
            if !set.insert(value).inserted {
                return true
            }
        }

        return false
    }
}
