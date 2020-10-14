class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        let m = matrix.count
        let n = matrix[0].count
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                
                let benchmark = (i > j) ? matrix[i - j][0] : matrix[0][j - i]
                
                if matrix[i][j] != benchmark {
                    return false
                }
            }
        }
        
        return true
    }
}
