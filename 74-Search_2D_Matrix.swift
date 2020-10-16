class Solution {
    //
    // 0(log m*n) time
    // 0(1) space
    //
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty { return false }
        if matrix[0].isEmpty { return false }
        
        let m = matrix.count
        let n = matrix[0].count
        let count = m * n
        
        // binary search
        // custom subscript in extension:
        // index -> (i, j): i = index / n; j = index % n
        // (i , j) -> index: index = i * n + j
        //
        
        var left = 0
        var right = count - 1
        
        while left <= right {
            let mid = (left + right) / 2
                        
            if matrix[mid] == target {
                return true
            }
            if matrix[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
        
    }
}

extension Array where Element == Array<Int> {
    //
    // index -> (i, j): i = index / n; j = index % n
    // (i , j) -> index: index = i * n + j
    //
    // where n = self[0].count 
    // or number of elements in each array
    // or number of "columns"
    //
    subscript(index: Int) -> Int {
        let n = self[0].count
        let i = index / n
        let j = index % n
        return self[i][j]
    }
}
