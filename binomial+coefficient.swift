/*
 Binomial coefficient
 The rule is:
    (n,k) = (n-1, k-1) + (n-1, k)
    (n,0) = 1
 */
var n = 100
var k = 50
k = min(k, n-k) // choose the left side of the pascal's triangle
var arr = Array(repeating: 0.0, count: k+1)
arr[0] = 1
(1..<n).map { i in
    (1...min(i,k)).reversed().map { j -> [Double] in
        arr[j] = arr[j] + arr[j-1]
        return arr
    }
}

print(arr.suffix(2).reduce(0, +))
// prints: 1.0089134454556424e+29
