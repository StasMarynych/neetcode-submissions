class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let array1 = quicksort(Array(s))
        let array2 = quicksort(Array(t))

        if array1.count != array2.count {
            return false
        }

        return array1 == array2
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
