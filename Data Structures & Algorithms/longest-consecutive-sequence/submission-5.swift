class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else {
        return 0
    }

    let sorted = nums.sorted()

    var lastValue: Int?
    var streak = 1
    var highestStreak = streak

    for number in sorted {
        if let last = lastValue {
            if number != last {
                if number - last == 1 {
                    streak += 1
                    highestStreak = max(streak, highestStreak)
                } else {
                    highestStreak = max(streak, highestStreak)
                    streak = 1
                }
            }
        }

        lastValue = number
    }

    return highestStreak
}
}
