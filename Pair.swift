//
//  Pair.swift
//  finalPproject
//
//  Created by Reva Choudha on 11/20/24.
//

struct Pair<A, B>{
    let first: A
    let second: B
    init(first: A, second: B) {
        self.first = first
        self.second = second
    }
}

extension Pair: Equatable where A: Equatable, B: Equatable{
    static func == (lhs: Pair<A, B>, rhs: Pair<A, B>) -> Bool {
        return lhs.first == rhs.first && lhs.second == rhs.second
    }
}

