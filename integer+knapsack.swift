//
//  integer+knapsack.swift
//
//
//  Created by ggaamm on 8/24/20.
//
// integer knapsack
// V, value
// W, weight
// arr, memory
// arr[i][j]= max(arr[i – 1][j], V[i] + arr[i – 1][j – W[i]]
//

var w = [2,1,3,2]
var v = [12,10,20,15]
var W = 5

var arr = Array(repeating: Array(repeating: 0, count: W+1), count: v.count+1)

for i in (1...v.count) {
    for j in (0...W) {
        if w[i-1] > j {
            arr[i][j] = arr[i-1][j]
        } else {
            arr[i][j] = max(arr[i-1][j], v[i-1] + arr[i-1][j-w[i-1]])
        }
    }
}

var i = v.count
var j = W
while i > 0 {
    while j > 0 {
        if arr[i][j-1] == arr[i][j] {
            j=j-1
        }
        else if arr[i-1][j] < arr[i][j] {
            print(v[i-1], w[i-1])
            j = j - w[i-1]
            i = i-1
        }
        else {
           i = i-1
        }
    }
}
// prints:
// 15 2
// 10 1
// 12 2
