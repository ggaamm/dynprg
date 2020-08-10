//
//  Catalan+numbers.swift
//  
//
//  Created by ggaamm on 8/9/20.
//
// Catalan numbers
// C(n+1) = sum_{0}^{n} C(i) * C(n-i)

var n=500
var C = Array(repeating: 0.0, count: 2)
C[0] = 1.0; C[1] = 1.0; var sum = 0.0

for i in (2...n) {
    sum = 0.0
    for j in (0..<i/2) {
        sum += (C[j] * C[i-j-1])
    }
    sum *= 2
    if i % 2 == 1 {
        sum += (C[i/2] * C[i/2])
    }
    C.append(sum)
}

print(C.last!)
//prints: 5.394974869170411e+296
