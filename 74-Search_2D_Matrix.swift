class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty { return false }
        if matrix[0].isEmpty { return false }
        
        let m = matrix.count
        let n = matrix[0].count
        let count = m * n
        
        // binary search
        
        var left = 0
        var right = count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            
            print(mid)
            
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
    
    subscript(index: Int) -> Int {
        let n = self[0].count
        let i = index / n
        let j = index % n
        return self[i][j]
    }
}
