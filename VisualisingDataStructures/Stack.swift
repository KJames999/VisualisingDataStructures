//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by James, Killian (NA) on 03/03/2022.
//

import Foundation

class Stack: ObservableObject {
    @Published var stack: [String] = [""]
    @Published var pushItem: String = "push"
    
    func peek() {
        if stack.count == 0 {
            print("Empty")
        } else {
            print("Top of stack: \(stack[0])")
        }
    }
    
    func view() {
        print(stack)
    }
    
    func push(pushItem: String) {
        stack.insert(pushItem, at: 0)
    }
    
    func pop() -> String {
        if stack.count != 0 {
            return stack.popLast()!
        } else {
            print("Cannot pop from an empty stack")
        }
        
        return "are you happy now because i'm not"
    }
    
}
