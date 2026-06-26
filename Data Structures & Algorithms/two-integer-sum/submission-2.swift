class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 2 {
            return [0, 1]
        }

        let endIndex = nums.endIndex
        let lastIndex = nums.endIndex - 1

        for i in 0..<endIndex {
            let lhsIndex = i
            let rhsIndex = lastIndex - i

            let lhsValue = nums[lhsIndex]
            let rhsValue = nums[rhsIndex]

            for j in 0..<endIndex {
                let number = nums[j]

                if lhsIndex != j, lhsValue + number == target {
                    return [lhsIndex, j].sorted()
                }

                if rhsIndex != j, rhsValue + number == target {
                    return [rhsIndex, j].sorted()
                }
            }
        }

        return []
    }
}
