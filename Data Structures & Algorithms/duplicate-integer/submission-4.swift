class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var dict = Dictionary<Int, Int>()

        for value in nums {
            if dict[value] != nil {
                return true
            }

            dict[value] = value
        }

        return false
    }
}
