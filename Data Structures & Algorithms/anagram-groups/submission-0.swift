class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = Dictionary<String, Array<String>>()

        for str in strs {
            let str = String(str)
            var key = String(str.sorted())
            dict[key, default: Array<String>()].append(str)
        }

        return Array(dict.values)
    }
}
