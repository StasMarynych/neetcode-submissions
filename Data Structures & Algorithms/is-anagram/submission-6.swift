class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        let array1 = quicksort(Array(s))
        let array2 = quicksort(Array(t))

        return array1.hashValue == array2.hashValue
    }

    private func quicksort<T: Comparable>(_ array: [T]) -> [T] {
        guard array.count > 1 else { return array }
        
        let pivot = array[array.count / 2]
        let less = array.filter { $0 < pivot }
        let equal = array.filter { $0 == pivot }
        let greater = array.filter { $0 > pivot }
        
        return quicksort(less) + equal + quicksort(greater)
    }
}
